import { GoogleGenerativeAI } from '@google/generative-ai';
import { db } from './supabase';
import { promptComposer } from './promptComposer';
import type {
  AIGenerateLessonRequest,
  AIGenerateExampleRequest,
  AIGenerateQuestionsRequest,
  AIAssessAnswerRequest,
  AIAssessAnswerResponse,
  AISimplifyRequest,
  AIGenerateTopicOutlineRequest,
  AIGenerateTopicOutlineResponse,
  AIGenerateCustomLessonRequest,
  AIChatRequest,
  AIChatResponse,
  AISocraticGuidanceRequest,
  AISocraticGuidanceResponse,
  AIDiveDeeperRequest,
  AIDiveDeeperResponse,
  AIScanSolveRequest,
  AIScanSolveResponse,
  CurriculumChatRequest,
  CurriculumChatResponse,
  LessonContent,
  Question,
  LessonSection,
  PromptCompositionContext,
  PromptCompositionOptions,
} from '@/types';

const apiKey = import.meta.env.VITE_GEMINI_API_KEY;

if (!apiKey) {
  console.warn('Missing Gemini API key. AI features will not work.');
}

const genAI = new GoogleGenerativeAI(apiKey || 'dummy-key');

// Models
const textModel = genAI.getGenerativeModel({ model: 'gemini-2.0-flash-exp' });
const visionModel = genAI.getGenerativeModel({ model: 'gemini-2.0-flash-exp' }); // Supports vision

/**
 * Build a composition context for the prompt composer
 */
async function buildCompositionContext(
  params: {
    userId: string;
    gradeLevel: number;
    difficultyLevel: number;
    interestTheme: string;
    topicId?: string;
    topicName?: string;
    topicDescription?: string;
    subjectId?: string;
    subjectName?: string;
    unitId?: string;
    unitName?: string;
    requestType: 'lesson' | 'questions' | 'feedback' | 'chat' | 'simplify' | 'socratic' | 'dive_deeper';
  }
): Promise<PromptCompositionContext> {
  // Try to get topic/subject info from database if we have a topicId
  let topicInfo = {
    name: params.topicName,
    description: params.topicDescription,
    subjectId: params.subjectId,
    subjectName: params.subjectName,
    unitId: params.unitId,
    unitName: params.unitName,
  };

  if (params.topicId && !params.topicName) {
    try {
      const { data: topic } = await db.supabase
        .from('topics')
        .select(`
          id, name, description, subject_id, unit_id,
          subject:subjects(id, name),
          unit:units(id, name)
        `)
        .eq('id', params.topicId)
        .single();

      if (topic) {
        topicInfo = {
          name: topic.name,
          description: topic.description,
          subjectId: topic.subject_id,
          subjectName: (topic.subject as any)?.name,
          unitId: topic.unit_id,
          unitName: (topic.unit as any)?.name,
        };
      }
    } catch (error) {
      console.warn('Failed to fetch topic info for prompt context:', error);
    }
  }

  // Try to get user location from profile
  let countryCode: string | undefined;
  let provinceState: string | undefined;

  try {
    const { data: user } = await db.supabase
      .from('users')
      .select('country, province_state')
      .eq('id', params.userId)
      .single();

    if (user) {
      countryCode = user.country;
      provinceState = user.province_state;
    }
  } catch (error) {
    // Ignore - location is optional
  }

  return {
    userId: params.userId,
    gradeLevel: params.gradeLevel,
    difficultyLevel: params.difficultyLevel,
    interestTheme: params.interestTheme,
    topicId: params.topicId,
    topicName: topicInfo.name,
    topicDescription: topicInfo.description,
    subjectId: topicInfo.subjectId,
    subjectName: topicInfo.subjectName,
    unitId: topicInfo.unitId,
    unitName: topicInfo.unitName,
    countryCode,
    provinceState,
    requestType: params.requestType,
  };
}

/**
 * Get composed prompt with fallback to basic prompt
 */
async function getComposedPromptOrFallback(
  context: PromptCompositionContext,
  options: PromptCompositionOptions,
  fallbackPrompt: string
): Promise<string> {
  try {
    const composed = await promptComposer.composePrompt(context, options);
    // If we have meaningful layers beyond just user_profile, use the composed prompt
    if (composed.layers.length > 1 || composed.layers.some(l => l.source === 'database')) {
      return composed.finalPrompt;
    }
    // Fall back to the original prompt if no database prompts were found
    return fallbackPrompt;
  } catch (error) {
    console.warn('Failed to compose prompt, using fallback:', error);
    return fallbackPrompt;
  }
}

/**
 * Generate a personalized lesson based on user interests
 * Uses cache-first strategy: checks library, re-themes if needed, or generates new
 */
export async function generateLesson(
  request: AIGenerateLessonRequest
): Promise<LessonContent> {
  const normalizedDifficulty = Math.round(request.difficultyLevel);

  // 1. Check content library for cached lesson
  try {
    const cached = await db.getLibraryContent(
      request.topicId,
      request.gradeLevel,
      normalizedDifficulty,
      'lesson'
    );

    if (cached?.content) {
      console.log('Found cached lesson, re-theming for:', request.interestTheme);
      // Re-theme the cached content for the user's interest
      const themedLesson = await rethemeLessonContent(
        cached.content as LessonContent,
        request.interestTheme
      );
      // Track usage
      await db.incrementLibraryUsage(cached.id);
      return themedLesson;
    }
  } catch (error) {
    console.warn('Cache lookup failed, generating fresh:', error);
  }

  // 2. Generate new lesson from AI
  console.log('Generating new lesson for:', request.topicId);
  const lesson = await generateLessonFromAI(request);

  // 3. Save to library (fire and forget - don't block on this)
  db.saveLibraryContent(
    request.topicId,
    request.gradeLevel,
    normalizedDifficulty,
    'lesson',
    lesson as unknown as Record<string, unknown>
  ).catch(err => console.warn('Failed to cache lesson:', err));

  return lesson;
}

/**
 * Internal function to generate lesson from AI (no caching)
 * Uses the prompt composer for layered, database-driven prompts
 */
async function generateLessonFromAI(
  request: AIGenerateLessonRequest
): Promise<LessonContent> {
  // Build composition context
  const context = await buildCompositionContext({
    userId: request.userId,
    gradeLevel: request.gradeLevel,
    difficultyLevel: request.difficultyLevel,
    interestTheme: request.interestTheme,
    topicId: request.topicId,
    requestType: 'lesson',
  });

  // Fallback prompt (original behavior)
  const fallbackPrompt = `You are a friendly, encouraging AI tutor for a grade ${request.gradeLevel} student who loves ${request.interestTheme}.

Create a lesson teaching about the topic provided by the user.

Requirements:
- Use "${request.interestTheme}" as examples throughout
- Appropriate vocabulary for grade ${request.gradeLevel}
- Break into 3-5 digestible sections
- Include specific examples the student can visualize
- Encourage curiosity and effort
- Be warm and supportive

Difficulty level: ${request.difficultyLevel}/10`;

  // Get composed prompt with fallback
  const basePrompt = await getComposedPromptOrFallback(
    context,
    { includeTeacherPersona: true, includeTeachingMethod: true },
    fallbackPrompt
  );

  // Add JSON format instructions
  const prompt = `${basePrompt}

Format your response as valid JSON with this structure:
{
  "sections": [
    {
      "title": "Section title",
      "explanation": "Clear explanation using interest-based examples",
      "examples": ["Example 1", "Example 2"],
      "visualPrompt": "Description for an image that would help visualize this concept"
    }
  ],
  "keyPoints": ["Key takeaway 1", "Key takeaway 2"],
  "vocabulary": [
    {"term": "Important term", "definition": "Simple definition"}
  ]
}

IMPORTANT: Return ONLY valid JSON, no markdown formatting or extra text.`;

  const result = await textModel.generateContent(prompt);
  const response = await result.response;
  const text = response.text();

  // Clean up the response (remove markdown code blocks if present)
  const cleanedText = text.replace(/```json\n?/g, '').replace(/```\n?/g, '').trim();

  try {
    return JSON.parse(cleanedText) as LessonContent;
  } catch (error) {
    console.error('Failed to parse lesson content:', cleanedText);
    throw new Error('Failed to generate lesson content');
  }
}

/**
 * Generate a new example with a specific interest theme
 */
export async function generateExample(
  request: AIGenerateExampleRequest
): Promise<string> {
  const previousContext = request.previousExamples?.length
    ? `\n\nPrevious examples used (make yours different):\n${request.previousExamples.join('\n')}`
    : '';

  const prompt = `Generate a new, engaging example explaining "${request.concept}" using "${request.interestTheme}" as the theme.

Difficulty level: ${request.difficultyLevel}/10
${previousContext}

Requirements:
- One clear, concise paragraph
- Use ${request.interestTheme} in a natural, relevant way
- Make it different from any previous examples
- Make it relatable and fun

Return ONLY the example text, no extra formatting.`;

  const result = await textModel.generateContent(prompt);
  const response = await result.response;
  return response.text().trim();
}

/**
 * Simplify an explanation to a lower grade level
 */
export async function simplifyExplanation(
  request: AISimplifyRequest
): Promise<string> {
  const prompt = `Simplify this explanation for a grade ${request.targetGradeLevel} student:

"${request.originalText}"

Requirements:
- Use simpler words and shorter sentences
- Use concrete examples instead of abstract concepts
- Keep it accurate but easier to understand
- Maintain a friendly, encouraging tone

Return ONLY the simplified text, no extra formatting.`;

  const result = await textModel.generateContent(prompt);
  const response = await result.response;
  return response.text().trim();
}

// Helper to check if a string is a valid UUID
function isValidUUID(str: string): boolean {
  const uuidRegex = /^[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i;
  return uuidRegex.test(str);
}

/**
 * Generate practice questions for a topic
 * Uses cache-first strategy: checks library, re-themes if needed, or generates new
 */
export async function generateQuestions(
  request: AIGenerateQuestionsRequest
): Promise<Question[]> {
  const normalizedDifficulty = Math.round(request.difficultyLevel);
  const canCache = isValidUUID(request.topicId);

  // 1. Check content library for cached questions (only for valid UUID topic IDs)
  if (canCache) {
    try {
      const cached = await db.getLibraryContent(
        request.topicId,
        request.gradeLevel,
        normalizedDifficulty,
        'questions'
      );

      if (cached?.content && Array.isArray(cached.content)) {
        console.log('Found cached questions, re-theming for:', request.interestTheme);
        // Re-theme the cached questions for the user's interest
        const themedQuestions = await rethemeQuestions(
          cached.content as Question[],
          request.interestTheme
        );
        // Track usage
        await db.incrementLibraryUsage(cached.id);
        // Return the requested count (shuffle and slice if needed)
        return shuffleArray(themedQuestions).slice(0, request.count);
      }
    } catch (error) {
      console.warn('Cache lookup failed, generating fresh:', error);
    }
  }

  // 2. Generate new questions from AI
  console.log('Generating new questions for:', request.topicId);
  const questions = await generateQuestionsFromAI(request);

  // 3. Save to library (fire and forget - don't block on this, only for valid UUIDs)
  if (canCache) {
    db.saveLibraryContent(
      request.topicId,
      request.gradeLevel,
      normalizedDifficulty,
      'questions',
      questions
    ).catch(err => console.warn('Failed to cache questions:', err));
  }

  return questions;
}

/**
 * Internal function to generate questions from AI (no caching)
 */
async function generateQuestionsFromAI(
  request: AIGenerateQuestionsRequest
): Promise<Question[]> {
  const prompt = `Create ${request.count} ${request.questionTypes.join(', ')} questions about: ${request.topicName}

Requirements:
- Grade ${request.gradeLevel} appropriate
- Use "${request.interestTheme}" in question contexts
- Difficulty: ${request.difficultyLevel}/10
- Test understanding of these concepts: ${request.concepts.join(', ')}
- Make questions engaging and relatable
- Include a helpful hint that guides without giving away the answer
- Include an image prompt that visually represents the EXACT scenario in the question

Format as valid JSON array:
[
  {
    "question": "Question text",
    "type": "multiple_choice",
    "options": ["Option A", "Option B", "Option C", "Option D"],
    "correct_answer": "Option B",
    "concept": "What concept this tests",
    "difficulty_level": ${request.difficultyLevel},
    "explanation": "A clear, detailed explanation of why this answer is correct and how to solve similar problems",
    "hint": "A helpful hint that guides the student toward the answer without giving it away",
    "imagePrompt": "A detailed scene illustrating the EXACT scenario described in the question. Show the specific characters, objects, and situation mentioned. For example: if the question is about a video game with points and monsters, describe a colorful cartoon scene showing a character defeating a monster with point values floating above. Make it visually represent the mathematical relationship or concept being tested."
  }
]

For fill_blank type: use "_____" for the blank
For true_false type: options should be ["True", "False"]

IMPORTANT: Return ONLY valid JSON array, no markdown formatting.`;

  const result = await textModel.generateContent(prompt);
  const response = await result.response;
  const text = response.text();

  const cleanedText = text.replace(/```json\n?/g, '').replace(/```\n?/g, '').trim();

  try {
    const questions = JSON.parse(cleanedText) as Question[];
    return questions.map(q => ({
      ...q,
      interest_theme: request.interestTheme
    }));
  } catch (error) {
    console.error('Failed to parse questions:', cleanedText);
    throw new Error('Failed to generate questions');
  }
}

/**
 * Shuffle array using Fisher-Yates algorithm
 */
function shuffleArray<T>(array: T[]): T[] {
  const shuffled = [...array];
  for (let i = shuffled.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]];
  }
  return shuffled;
}

/**
 * Assess a student's answer and provide feedback
 */
export async function assessAnswer(
  request: AIAssessAnswerRequest
): Promise<AIAssessAnswerResponse> {
  const prompt = `Evaluate this student's answer:

Question: ${request.question}
Student's answer: "${request.studentAnswer}"
Correct answer: "${request.correctAnswer}"
Concept being tested: ${request.concept}

Provide:
1. Whether the answer is correct (be lenient with spelling/phrasing if meaning is right)
2. Encouraging feedback
3. If incorrect: what concept gap exists
4. If incorrect: brief re-teaching suggestion

Format as valid JSON:
{
  "isCorrect": boolean,
  "feedback": "Encouraging message here",
  "conceptGap": "What they're missing (if incorrect)",
  "reteachingSuggestion": "Brief re-teaching (if incorrect)"
}

IMPORTANT: Return ONLY valid JSON, no markdown formatting.`;

  const result = await textModel.generateContent(prompt);
  const response = await result.response;
  const text = response.text();

  const cleanedText = text.replace(/```json\n?/g, '').replace(/```\n?/g, '').trim();

  try {
    return JSON.parse(cleanedText) as AIAssessAnswerResponse;
  } catch (error) {
    console.error('Failed to parse assessment:', cleanedText);
    throw new Error('Failed to assess answer');
  }
}

/**
 * Generate image prompt for concept visualization
 * Note: This prepares the prompt. Actual image generation would use Imagen API
 */
export function generateImagePrompt(
  concept: string,
  interestTheme: string,
  ageGroup: string,
  style: 'cartoon' | 'realistic' | 'diagram' = 'cartoon'
): string {
  return `Create a ${style} illustration for ${ageGroup} showing: ${concept}

Theme: ${interestTheme}
Style: Colorful, friendly, educational
Safe for children: Yes
No text in image

Specific scene: A clear, simple visualization that helps understand ${concept} through the lens of ${interestTheme}`;
}

/**
 * Generate educational illustration using Pollinations.ai (free, no auth required)
 * Creates child-friendly educational images based on the concept and theme
 */
export async function generateImage(
  concept: string,
  interestTheme: string,
  ageGroup: string,
  style: 'cartoon' | 'realistic' | 'diagram' = 'cartoon'
): Promise<string> {
  // Use the structured prompt for logging/debugging
  const structuredPrompt = generateImagePrompt(concept, interestTheme, ageGroup, style);

  // Use Pollinations.ai - free AI image generation
  // Format: https://image.pollinations.ai/prompt/{encoded_prompt}
  const enhancedPrompt = `${style} style educational illustration for ${ageGroup}: ${concept} themed with ${interestTheme}, colorful, friendly, safe for kids, no text, clear visualization`;
  const encodedPrompt = encodeURIComponent(enhancedPrompt);

  // Add parameters for better quality and size
  const imageUrl = `https://image.pollinations.ai/prompt/${encodedPrompt}?width=800&height=400&nologo=true`;

  console.log('Structured prompt:', structuredPrompt);
  console.log('Generated image URL:', imageUrl);

  return imageUrl;
}

/**
 * Generate image URL for a quiz question based on its image prompt
 * Creates a horizontal banner-style image that depicts the exact scenario
 */
export function generateQuestionImageUrl(imagePrompt: string, concept: string): string {
  if (!imagePrompt) {
    // Fallback to concept-based placeholder with banner dimensions
    const encodedConcept = encodeURIComponent(concept);
    return `https://via.placeholder.com/800x300/1e293b/60a5fa?text=${encodedConcept}`;
  }

  // Use Pollinations.ai for AI-generated educational images
  // Enhanced prompt for scenario-specific, child-friendly illustrations
  const enhancedPrompt = `colorful cartoon illustration for children, horizontal banner format, depicting: ${imagePrompt}. Style: educational, friendly, vibrant colors, clear visualization of the scenario, no text in image`;
  const encodedPrompt = encodeURIComponent(enhancedPrompt);

  // Banner dimensions: 800x300 for a wide horizontal format
  return `https://image.pollinations.ai/prompt/${encodedPrompt}?width=800&height=300&nologo=true`;
}

/**
 * Re-theme a text content with a different interest
 */
export async function rethemeContent(
  originalContent: string,
  newTheme: string,
  concept: string
): Promise<string> {
  const prompt = `Rewrite this educational content using "${newTheme}" as the theme instead:

Original content:
"${originalContent}"

Concept being taught: ${concept}

Requirements:
- Keep the same educational content and accuracy
- Change all examples and analogies to use ${newTheme}
- Maintain the same difficulty level
- Keep it engaging and fun

Return ONLY the rewritten content, no extra formatting.`;

  const result = await textModel.generateContent(prompt);
  const response = await result.response;
  return response.text().trim();
}

/**
 * Re-theme an entire lesson with a different interest
 * Transforms all sections, examples, and visual prompts
 */
async function rethemeLessonContent(
  lesson: LessonContent,
  interestTheme: string
): Promise<LessonContent> {
  // Re-theme each section in parallel for efficiency
  const themedSections = await Promise.all(
    lesson.sections.map(async (section: LessonSection) => {
      // Re-theme explanation and examples in parallel
      const [themedExplanation, themedExamples] = await Promise.all([
        rethemeContent(section.explanation, interestTheme, section.title),
        Promise.all(
          section.examples.map(example =>
            rethemeContent(example, interestTheme, section.title)
          )
        )
      ]);

      return {
        ...section,
        explanation: themedExplanation,
        examples: themedExamples,
        visualPrompt: section.visualPrompt
          ? `${section.visualPrompt} - themed with ${interestTheme}`
          : undefined
      };
    })
  );

  return {
    ...lesson,
    sections: themedSections
  };
}

/**
 * Re-theme questions with a different interest
 * Updates question text, options (for story problems), and image prompts
 */
async function rethemeQuestions(
  questions: Question[],
  interestTheme: string
): Promise<Question[]> {
  return Promise.all(
    questions.map(async (q) => {
      // Only re-theme the question text, not the math/answer logic
      const themedQuestion = await rethemeContent(
        q.question,
        interestTheme,
        q.concept
      );

      // Generate a new image prompt for the themed question
      const themedImagePrompt = q.imagePrompt
        ? `${q.concept} illustrated using ${interestTheme} theme: ${themedQuestion}`
        : undefined;

      return {
        ...q,
        question: themedQuestion,
        imagePrompt: themedImagePrompt,
        interest_theme: interestTheme
      };
    })
  );
}

/**
 * Generate a structured topic outline from a user's custom prompt
 * This creates a preview before the user saves their custom topic
 */
export async function generateTopicOutline(
  request: AIGenerateTopicOutlineRequest
): Promise<AIGenerateTopicOutlineResponse> {
  const prompt = `You are an educational curriculum designer. A grade ${request.gradeLevel} student wants to learn about:

"${request.userPrompt}"

Create a structured topic outline suitable for their grade level.

Requirements:
- Break down into 3-5 logical sections that build upon each other
- Each section should have 2-3 clear learning objectives
- Identify key concepts the student will learn
- Suggest the most appropriate subject category from: Math, Science, Reading, History, or General
- Estimate difficulty level (1-10) based on grade level and topic complexity
- Estimate time needed in minutes (typically 15-45 minutes)
- Keep language and expectations appropriate for grade ${request.gradeLevel}

Format your response as valid JSON with this exact structure:
{
  "name": "Clear, concise topic name (5-10 words max)",
  "description": "2-3 sentence description of what the student will learn",
  "outline": {
    "sections": [
      {
        "title": "Section title",
        "summary": "Brief 1-2 sentence overview of this section",
        "learningObjectives": ["What the student will be able to do after this section"]
      }
    ],
    "keyPoints": ["Key takeaway 1", "Key takeaway 2", "Key takeaway 3"],
    "concepts": ["Core concept 1", "Core concept 2", "Core concept 3"]
  },
  "suggestedSubject": "Math|Science|Reading|History|General",
  "suggestedDifficulty": 5,
  "estimatedTime": 30
}

IMPORTANT: Return ONLY valid JSON, no markdown formatting or code blocks.`;

  try {
    const result = await textModel.generateContent(prompt);
    const response = await result.response;
    const text = response.text();

    // Clean the response - remove markdown code blocks if present
    const cleanedText = text
      .replace(/```json\n?/g, '')
      .replace(/```\n?/g, '')
      .trim();

    const parsed = JSON.parse(cleanedText) as AIGenerateTopicOutlineResponse;

    // Validate required fields
    if (!parsed.name || !parsed.outline || !parsed.outline.sections) {
      throw new Error('Invalid response structure');
    }

    // Apply difficulty override if provided
    if (request.difficultyLevel) {
      parsed.suggestedDifficulty = request.difficultyLevel;
    }

    return parsed;
  } catch (error) {
    console.error('Failed to parse topic outline:', error);
    throw new Error('Failed to generate topic outline. Please try again.');
  }
}

/**
 * Generate a lesson from a custom topic outline
 * Takes the pre-generated outline and creates full lesson content
 */
export async function generateCustomLesson(
  request: AIGenerateCustomLessonRequest
): Promise<LessonContent> {
  const sectionsContext = request.outline.sections
    .map((s, i) => `${i + 1}. ${s.title}: ${s.summary}\n   Learning objectives: ${s.learningObjectives.join(', ')}`)
    .join('\n');

  const prompt = `You are a friendly, encouraging AI tutor for a grade ${request.gradeLevel} student who loves ${request.interestTheme}.

Create a detailed lesson for this custom topic:

Topic: ${request.topicName}
Description: ${request.topicDescription}

Course Outline:
${sectionsContext}

Key Concepts to Cover: ${request.outline.concepts.join(', ')}

Requirements:
- Use "${request.interestTheme}" as examples throughout to make it engaging
- Appropriate vocabulary and explanations for grade ${request.gradeLevel}
- Create detailed content for each section in the outline
- Include specific, relatable examples the student can visualize
- Encourage curiosity and effort
- Be warm and supportive

Difficulty level: ${request.difficultyLevel}/10

Format your response as valid JSON with this structure:
{
  "sections": [
    {
      "title": "Section title (matching the outline)",
      "explanation": "Clear, detailed explanation using interest-based examples (2-3 paragraphs)",
      "examples": ["Concrete example 1", "Concrete example 2"],
      "visualPrompt": "Description for an image that would help visualize this concept"
    }
  ],
  "keyPoints": ["Key takeaway 1", "Key takeaway 2", "Key takeaway 3"],
  "vocabulary": [
    {"term": "Important term", "definition": "Simple, clear definition"}
  ]
}

IMPORTANT: Return ONLY valid JSON, no markdown formatting or extra text.`;

  const result = await textModel.generateContent(prompt);
  const response = await result.response;
  const text = response.text();

  // Clean up the response (remove markdown code blocks if present)
  const cleanedText = text.replace(/```json\n?/g, '').replace(/```\n?/g, '').trim();

  try {
    return JSON.parse(cleanedText) as LessonContent;
  } catch (error) {
    console.error('Failed to parse custom lesson content:', cleanedText);
    throw new Error('Failed to generate custom lesson content');
  }
}

/**
 * AI Chat Tutor - Conversational Q&A about current learning content
 * Allows students to ask questions during lessons or practice
 */
export async function chatWithTutor(
  request: AIChatRequest
): Promise<AIChatResponse> {
  const { message, context, conversationHistory } = request;

  // Build context about what the student is learning
  let lessonContext = '';
  if (context.lessonContent) {
    const sectionTitles = context.lessonContent.sections.map(s => s.title).join(', ');
    const keyPoints = context.lessonContent.keyPoints.join('; ');
    lessonContext = `
CURRENT LESSON CONTENT:
- Sections covered: ${sectionTitles}
- Key points: ${keyPoints}`;
  }

  let questionContext = '';
  if (context.currentQuestion) {
    questionContext = `
CURRENT PRACTICE QUESTION:
- Question: ${context.currentQuestion.question}
- Concept being tested: ${context.currentQuestion.concept}
- Hint available: ${context.currentQuestion.hint || 'None'}

IMPORTANT: Do NOT give away the answer directly. Help the student understand the concept and guide them toward finding the answer themselves.`;
  }

  // Build conversation history
  const historyText = conversationHistory.length > 0
    ? conversationHistory.slice(-6).map(msg => `${msg.role === 'user' ? 'Student' : 'Tutor'}: ${msg.content}`).join('\n')
    : 'No previous messages.';

  const prompt = `You are a friendly, encouraging AI tutor helping a grade ${context.gradeLevel} student learn about "${context.topicName}" in ${context.subjectName}.

STUDENT PROFILE:
- Grade Level: ${context.gradeLevel}
- Current Topic: ${context.topicName}${context.topicDescription ? ` - ${context.topicDescription}` : ''}
- Subject: ${context.subjectName}
- Difficulty Level: ${context.difficultyLevel}/10
- Interest Theme: ${context.interestTheme} (use this in examples when helpful!)
${lessonContext}
${questionContext}

CONVERSATION HISTORY:
${historyText}

STUDENT'S NEW MESSAGE:
"${message}"

YOUR ROLE:
- Be warm, supportive, and encouraging like a favorite teacher
- Use simple language appropriate for grade ${context.gradeLevel}
- When possible, connect explanations to their interest in ${context.interestTheme}
- If they're stuck on a practice question, guide them with hints - don't give direct answers
- Celebrate curiosity and effort
- Keep responses concise but helpful (2-4 sentences for simple questions, more for complex ones)
- Use analogies and real-world examples they can relate to
- If they ask something off-topic, gently bring them back to the lesson

Respond naturally as a tutor would. Do NOT include any JSON formatting - just reply conversationally.`;

  try {
    const result = await textModel.generateContent(prompt);
    const response = await result.response;
    const tutorResponse = response.text().trim();

    // Generate a follow-up suggestion based on the conversation
    const followUpPrompt = `Based on this tutoring exchange about "${context.topicName}":
Student asked: "${message}"
Tutor answered: "${tutorResponse}"

Suggest ONE short follow-up question the student might want to ask next (or leave empty if the topic seems complete).
Return ONLY the follow-up question text, nothing else. Keep it under 10 words.`;

    let suggestedFollowUp: string | undefined;
    try {
      const followUpResult = await textModel.generateContent(followUpPrompt);
      const followUpText = followUpResult.response.text().trim();
      if (followUpText && followUpText.length < 100 && followUpText.length > 5) {
        suggestedFollowUp = followUpText;
      }
    } catch {
      // Follow-up suggestion is optional, don't fail if it errors
    }

    return {
      response: tutorResponse,
      suggestedFollowUp
    };
  } catch (error) {
    console.error('Chat tutor error:', error);
    throw new Error('I had trouble thinking of a response. Can you try asking again?');
  }
}

/**
 * Dive Deeper - Generate expanded content about a concept
 * Provides fun facts, real-world connections, and deeper exploration
 */
export async function diveDeeper(
  request: AIDiveDeeperRequest
): Promise<AIDiveDeeperResponse> {
  const { concept, currentExplanation, gradeLevel, difficultyLevel, interestTheme } = request;

  const prompt = `You are an enthusiastic educator helping a grade ${gradeLevel} student explore a concept more deeply.

CONCEPT: ${concept}
CURRENT EXPLANATION (what they already learned):
"${currentExplanation}"

STUDENT PROFILE:
- Grade Level: ${gradeLevel}
- Difficulty Level: ${difficultyLevel}/10
- Interest Theme: ${interestTheme} (connect examples to this when possible!)

Generate expanded content that goes BEYOND what they already learned. Make it exciting and engaging!

Requirements:
- Use vocabulary appropriate for grade ${gradeLevel}
- Connect to their interest in ${interestTheme} where relevant
- Make it feel like an exciting discovery, not more homework
- Include surprising or cool facts that will wow them

Format your response as valid JSON with this exact structure:
{
  "deeperExplanation": "A fascinating deeper look at this concept that builds on what they learned (2-3 paragraphs)",
  "funFacts": ["Wow factor fact 1", "Amazing fact 2", "Cool fact 3"],
  "realWorldConnections": ["How this shows up in real life 1", "Real world example 2"],
  "whyItMatters": "An inspiring explanation of why understanding this concept is valuable in their life",
  "relatedConcepts": ["Related topic they might want to explore 1", "Related topic 2"]
}

IMPORTANT: Return ONLY valid JSON, no markdown formatting or code blocks.`;

  try {
    const result = await textModel.generateContent(prompt);
    const response = await result.response;
    const text = response.text();

    const cleanedText = text.replace(/```json\n?/g, '').replace(/```\n?/g, '').trim();

    return JSON.parse(cleanedText) as AIDiveDeeperResponse;
  } catch (error) {
    console.error('Dive deeper error:', error);
    throw new Error('Failed to generate deeper content. Please try again!');
  }
}

/**
 * Socratic Guidance - Guide students with questions instead of direct answers
 * Uses the Socratic method to help students discover answers themselves
 */
export async function provideSocraticGuidance(
  request: AISocraticGuidanceRequest
): Promise<AISocraticGuidanceResponse> {
  const { question, studentAnswer, correctAnswer, concept, gradeLevel, interestTheme, previousHints } = request;

  const hintContext = previousHints?.length
    ? `\n\nPrevious hints given (make your guidance different and more helpful):\n${previousHints.join('\n')}`
    : '';

  const prompt = `You are a Socratic tutor helping a grade ${gradeLevel} student think through a problem. Instead of telling them if they're right or wrong, guide them with thoughtful questions.

QUESTION: ${question}
STUDENT'S ANSWER: "${studentAnswer}"
CORRECT ANSWER: "${correctAnswer}"
CONCEPT BEING TESTED: ${concept}
STUDENT'S INTEREST: ${interestTheme}
${hintContext}

Your job is to:
1. First, determine if the answer is correct (be lenient with spelling/phrasing)
2. If CORRECT: Celebrate their thinking and ask a follow-up question to deepen understanding
3. If INCORRECT: Ask a guiding question that leads them toward the right answer WITHOUT revealing it

Remember:
- Never directly say "wrong" or give away the answer
- Use their interest (${interestTheme}) in your examples when possible
- Keep language appropriate for grade ${gradeLevel}
- Be warm, curious, and encouraging

Format your response as valid JSON:
{
  "isCorrect": boolean,
  "guidingQuestion": "A thoughtful question to guide their thinking (e.g., 'What if we thought about it this way...?' or 'Have you considered...?')",
  "thinkingPrompt": "A specific thing for them to think about or try (e.g., 'Try breaking this into smaller parts' or 'Think about what happens when...')",
  "encouragement": "A warm, encouraging statement about their effort or thinking process",
  "hintLevel": 1
}

For hintLevel:
- 1 = Very subtle guidance (just nudge their thinking)
- 2 = More direct guidance (point to a specific area to reconsider)
- 3 = Strong guidance (almost reveal the approach needed, but not the answer)

IMPORTANT: Return ONLY valid JSON, no markdown formatting.`;

  try {
    const result = await textModel.generateContent(prompt);
    const response = await result.response;
    const text = response.text();

    const cleanedText = text.replace(/```json\n?/g, '').replace(/```\n?/g, '').trim();

    return JSON.parse(cleanedText) as AISocraticGuidanceResponse;
  } catch (error) {
    console.error('Socratic guidance error:', error);
    throw new Error('Let me think about how to help you with this...');
  }
}

/**
 * Scan-to-Solve - Analyze an image of a problem and provide step-by-step solution
 * Uses vision model to read and understand handwritten or printed problems
 */
export async function solveProblemFromImage(
  request: AIScanSolveRequest
): Promise<AIScanSolveResponse> {
  const { imageBase64, gradeLevel, subject } = request;

  const prompt = `You are a helpful tutor for a grade ${gradeLevel} student. Analyze this image of a problem and help the student understand how to solve it.

${subject ? `The student is working on ${subject}.` : ''}

Your task:
1. First, identify and transcribe the problem from the image
2. Determine what subject/type of problem it is (math, science, or other)
3. Provide a clear, step-by-step solution appropriate for grade ${gradeLevel}
4. Explain each step in simple terms
5. Give helpful tips for similar problems

IMPORTANT TEACHING APPROACH:
- Don't just give the answer - explain the thinking process
- Use language appropriate for grade ${gradeLevel}
- Break complex problems into smaller, manageable steps
- Encourage understanding over memorization

Format your response as valid JSON:
{
  "problemDetected": "The exact problem text/equation you see in the image",
  "subject": "math|science|other",
  "solution": "The final answer to the problem",
  "steps": [
    {"stepNumber": 1, "description": "Clear explanation of what to do first", "result": "The result after this step (if applicable)"},
    {"stepNumber": 2, "description": "Next step explanation", "result": "Result"}
  ],
  "explanation": "A friendly, educational summary explaining WHY this approach works (2-3 sentences)",
  "tips": ["Helpful tip 1 for similar problems", "Tip 2"]
}

IMPORTANT: Return ONLY valid JSON, no markdown formatting.`;

  try {
    // Prepare the image for the vision model
    const imagePart = {
      inlineData: {
        data: imageBase64.replace(/^data:image\/\w+;base64,/, ''),
        mimeType: 'image/jpeg'
      }
    };

    const result = await visionModel.generateContent([prompt, imagePart]);
    const response = await result.response;
    const text = response.text();

    const cleanedText = text.replace(/```json\n?/g, '').replace(/```\n?/g, '').trim();

    return JSON.parse(cleanedText) as AIScanSolveResponse;
  } catch (error) {
    console.error('Scan-to-solve error:', error);
    throw new Error('I had trouble reading that image. Please try again with a clearer photo.');
  }
}

/**
 * Curriculum Chat Assistant - Helps students navigate and find content
 * Identifies relevant units/topics or redirects to other subjects
 */
export async function chatWithCurriculumAssistant(
  request: CurriculumChatRequest
): Promise<CurriculumChatResponse> {
  const { message, context, conversationHistory } = request;

  // Build curriculum structure for the AI
  const curriculumStructure = context.units.map(unit => ({
    unitId: unit.id,
    unitName: unit.name,
    unitDescription: unit.description,
    topics: unit.topics.map(t => ({
      topicId: t.id,
      topicName: t.name,
      topicDescription: t.description
    }))
  }));

  // Build conversation history
  const historyText = conversationHistory.length > 0
    ? conversationHistory.slice(-4).map(msg => `${msg.role === 'user' ? 'Student' : 'Assistant'}: ${msg.content}`).join('\n')
    : '';

  const prompt = `You are a helpful curriculum navigation assistant for a grade ${context.gradeLevel} student studying ${context.subjectName}.

CURRENT SUBJECT: ${context.subjectName} (ID: ${context.subjectId})

AVAILABLE UNITS AND TOPICS IN THIS SUBJECT:
${JSON.stringify(curriculumStructure, null, 2)}

OTHER AVAILABLE SUBJECTS:
${context.allSubjects.filter(s => s.id !== context.subjectId).map(s => `- ${s.name} (ID: ${s.id})`).join('\n')}

${historyText ? `CONVERSATION HISTORY:\n${historyText}\n` : ''}
STUDENT'S QUESTION: "${message}"

YOUR TASK:
1. If the student is asking about content within ${context.subjectName}, help them find the relevant unit(s) or topic(s)
2. If the student is asking about content that belongs to a DIFFERENT subject (like asking about biology while in Math), identify the correct subject and suggest redirecting
3. If the student asks general questions like "what should I learn first?" or "where do I start?", recommend based on the curriculum order

IMPORTANT RULES:
- Only match units/topics that are actually relevant to the student's question
- If the question is about a different subject, you MUST set redirectSubject
- Keep responses friendly and helpful, appropriate for grade ${context.gradeLevel}
- Be concise - this is a navigation helper, not a full tutor

Respond with valid JSON in this exact format:
{
  "response": "Your helpful message to the student",
  "matchedUnits": ["unit-id-1", "unit-id-2"],
  "matchedTopics": ["topic-id-1", "topic-id-2"],
  "redirectSubject": null,
  "suggestedFollowUp": "Optional follow-up question"
}

If redirecting to another subject, use this format for redirectSubject:
{
  "id": "subject-id",
  "name": "Subject Name",
  "prefillQuestion": "The student's original question to pre-fill"
}

IMPORTANT: Return ONLY valid JSON, no markdown formatting or code blocks.`;

  try {
    const result = await textModel.generateContent(prompt);
    const response = await result.response;
    const text = response.text();

    const cleanedText = text.replace(/```json\n?/g, '').replace(/```\n?/g, '').trim();
    const parsed = JSON.parse(cleanedText);

    return {
      response: parsed.response || "I can help you find what you're looking for!",
      matchedUnits: parsed.matchedUnits?.filter((id: string) => id) || [],
      matchedTopics: parsed.matchedTopics?.filter((id: string) => id) || [],
      redirectSubject: parsed.redirectSubject || undefined,
      suggestedFollowUp: parsed.suggestedFollowUp || undefined
    };
  } catch (error) {
    console.error('Curriculum chat error:', error);
    return {
      response: "I'm having trouble understanding that. Could you try asking in a different way?",
      matchedUnits: [],
      matchedTopics: []
    };
  }
}
