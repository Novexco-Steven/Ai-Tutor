import { GoogleGenerativeAI } from '@google/generative-ai';
import type {
  AIGenerateLessonRequest,
  AIGenerateExampleRequest,
  AIGenerateQuestionsRequest,
  AIAssessAnswerRequest,
  AIAssessAnswerResponse,
  AISimplifyRequest,
  LessonContent,
  Question,
} from '@/types';

const apiKey = import.meta.env.VITE_GEMINI_API_KEY;

if (!apiKey) {
  console.warn('Missing Gemini API key. AI features will not work.');
}

const genAI = new GoogleGenerativeAI(apiKey || 'dummy-key');

// Models
const textModel = genAI.getGenerativeModel({ model: 'gemini-2.0-flash-exp' });
const imageModel = genAI.getGenerativeModel({ model: 'gemini-2.0-flash-exp' }); // Will use for image prompts

/**
 * Generate a personalized lesson based on user interests
 */
export async function generateLesson(
  request: AIGenerateLessonRequest
): Promise<LessonContent> {
  const prompt = `You are a friendly, encouraging AI tutor for a grade ${request.gradeLevel} student who loves ${request.interestTheme}.

Create a lesson teaching about the topic provided by the user.

Requirements:
- Use "${request.interestTheme}" as examples throughout
- Appropriate vocabulary for grade ${request.gradeLevel}
- Break into 3-5 digestible sections
- Include specific examples the student can visualize
- Encourage curiosity and effort
- Be warm and supportive

Difficulty level: ${request.difficultyLevel}/10

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

/**
 * Generate practice questions for a topic
 */
export async function generateQuestions(
  request: AIGenerateQuestionsRequest
): Promise<Question[]> {
  const prompt = `Create ${request.count} ${request.questionTypes.join(', ')} questions about: ${request.topicName}

Requirements:
- Grade ${request.gradeLevel} appropriate
- Use "${request.interestTheme}" in question contexts
- Difficulty: ${request.difficultyLevel}/10
- Test understanding of these concepts: ${request.concepts.join(', ')}
- Make questions engaging and relatable

Format as valid JSON array:
[
  {
    "question": "Question text",
    "type": "multiple_choice",
    "options": ["Option A", "Option B", "Option C", "Option D"],
    "correct_answer": "Option B",
    "concept": "What concept this tests",
    "difficulty_level": ${request.difficultyLevel},
    "explanation": "Why this answer is correct"
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
 * Placeholder for actual image generation
 * In production, this would call Google's Imagen API
 */
export async function generateImage(
  concept: string,
  interestTheme: string,
  ageGroup: string,
  style: 'cartoon' | 'realistic' | 'diagram' = 'cartoon'
): Promise<string> {
  // For MVP, we'll return a placeholder
  // In production, implement actual Imagen API call
  const prompt = generateImagePrompt(concept, interestTheme, ageGroup, style);

  // TODO: Implement actual Imagen API call
  // For now, return a placeholder image URL
  const placeholderUrl = `https://via.placeholder.com/800x600/6366f1/ffffff?text=${encodeURIComponent(concept)}`;

  console.log('Image generation prompt:', prompt);
  console.log('Using placeholder image for MVP');

  return placeholderUrl;
}

/**
 * Re-theme a lesson section with a different interest
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
