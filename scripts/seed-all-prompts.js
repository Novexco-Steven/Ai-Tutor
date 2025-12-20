/**
 * Comprehensive Prompt Seeding Script
 * Seeds ALL prompts for the entire K-12 curriculum
 *
 * Run with: node scripts/seed-all-prompts.js
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseServiceKey) {
  console.error('Missing Supabase credentials. Set VITE_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseServiceKey);

// ============================================
// HELPER FUNCTIONS
// ============================================

async function getSubjects() {
  const { data } = await supabase.from('subjects').select('*');
  return data || [];
}

async function getUnits() {
  const { data } = await supabase.from('units').select('*, subjects(name)');
  return data || [];
}

async function getTopics() {
  const { data } = await supabase.from('topics').select('*, subjects(name), units(name)');
  return data || [];
}

async function upsertPrompt(prompt) {
  const { error } = await supabase
    .from('prompt_templates')
    .upsert(prompt, { onConflict: 'name' });
  return error;
}

// ============================================
// GRADE BAND DETECTION
// ============================================

function getGradeBand(gradeLevel) {
  if (gradeLevel <= 2) return 'K-2';
  if (gradeLevel <= 5) return '3-5';
  if (gradeLevel <= 8) return '6-8';
  return '9-12';
}

function getGradeBandDescription(gradeLevel) {
  const band = getGradeBand(gradeLevel);
  switch (band) {
    case 'K-2': return 'Use simple language, concrete examples, lots of visuals, and hands-on activities. Keep explanations short and celebrate every success.';
    case '3-5': return 'Balance concrete and abstract. Build vocabulary explicitly. Use multiple representations and real-world connections.';
    case '6-8': return 'Develop abstract thinking. Use Socratic questioning. Connect to adolescent interests and future relevance.';
    case '9-12': return 'Use sophisticated academic language. Emphasize analysis and argumentation. Connect to college and career readiness.';
    default: return '';
  }
}

// ============================================
// USER PROFILE PROMPTS
// ============================================

const userProfilePrompts = [
  {
    prompt_type: 'user_profile',
    name: 'Early Elementary Profile (K-2)',
    description: 'Teaching approach for kindergarten through 2nd grade',
    priority: 100,
    prompt_content: `LEARNER PROFILE: EARLY ELEMENTARY (K-2)

COGNITIVE DEVELOPMENT:
- Concrete operational stage - learning through direct experience
- Limited attention span (10-15 minutes max per activity)
- Developing phonemic awareness and early numeracy
- Strong visual and kinesthetic learning preference

COMMUNICATION STYLE:
- Use simple, clear sentences (5-8 words ideal)
- Repeat key concepts multiple times
- Use lots of encouragement and positive reinforcement
- Avoid abstract concepts - always connect to real objects

INSTRUCTIONAL APPROACH:
- Heavy use of visuals, pictures, and concrete examples
- Hands-on activities and manipulatives
- Songs, rhymes, and movement
- Very small steps with immediate feedback
- Celebrate every success
- Use familiar contexts: family, pets, toys, playground

VOCABULARY: Use sight words and simple vocabulary. Define new words immediately.

EXAMPLES: Relatable scenarios, small countable numbers (under 20), visual and concrete.`
  },
  {
    prompt_type: 'user_profile',
    name: 'Upper Elementary Profile (3-5)',
    description: 'Teaching approach for 3rd through 5th grade',
    priority: 100,
    prompt_content: `LEARNER PROFILE: UPPER ELEMENTARY (GRADES 3-5)

COGNITIVE DEVELOPMENT:
- Transitioning from concrete to abstract thinking
- Can focus for 20-30 minutes on engaging content
- Developing logical reasoning and classification
- Growing independence in learning

COMMUNICATION STYLE:
- Clear explanations with building complexity
- Begin introducing academic vocabulary
- Encourage student to explain their thinking
- Balance challenge with support

INSTRUCTIONAL APPROACH:
- Connect new concepts to prior knowledge
- Use visual models and representations
- Introduce procedures after conceptual foundation
- Encourage multiple solution strategies
- Allow productive struggle before hints

VOCABULARY: Explicitly teach academic vocabulary. Use word parts (prefix, suffix, root).

EXAMPLES: Connect to interests, realistic numbers (up to thousands), multiple approaches.`
  },
  {
    prompt_type: 'user_profile',
    name: 'Middle School Profile (6-8)',
    description: 'Teaching approach for 6th through 8th grade',
    priority: 100,
    prompt_content: `LEARNER PROFILE: MIDDLE SCHOOL (GRADES 6-8)

COGNITIVE DEVELOPMENT:
- Abstract thinking emerging
- Developing metacognition
- Strong peer influence on motivation
- Identity formation affecting subject interests

COMMUNICATION STYLE:
- Treat student as capable and growing
- Explain the "why" behind concepts
- Use Socratic questioning
- Connect content to their world

INSTRUCTIONAL APPROACH:
- Balance conceptual understanding with procedural fluency
- Use collaborative problem-solving
- Introduce formal notation
- Encourage explanation and justification
- Connect topics across disciplines

VOCABULARY: Use and require academic language. Domain-specific terminology.

EXAMPLES: Adolescent interests (technology, sports), realistic complexity, career connections.`
  },
  {
    prompt_type: 'user_profile',
    name: 'High School Profile (9-12)',
    description: 'Teaching approach for 9th through 12th grade',
    priority: 100,
    prompt_content: `LEARNER PROFILE: HIGH SCHOOL (GRADES 9-12)

COGNITIVE DEVELOPMENT:
- Formal operational thinking
- Can reason abstractly and hypothetically
- Developing sophisticated analysis skills
- Ready for college-prep rigor

COMMUNICATION STYLE:
- Collegial, respectful academic tone
- Expect sophisticated responses
- Use precise technical vocabulary
- Challenge assumptions constructively

INSTRUCTIONAL APPROACH:
- Emphasize deep understanding over surface coverage
- Connect to college and career readiness
- Use primary sources and authentic materials
- Encourage research and independent inquiry
- Develop argumentation and evidence-based reasoning

VOCABULARY: Full academic vocabulary expected. Technical terms used precisely.

EXAMPLES: Real-world complexity, career and college connections, interdisciplinary.`
  },
  {
    prompt_type: 'user_profile',
    name: 'Difficulty Level: Foundational (1-3)',
    description: 'For students building basic understanding',
    priority: 90,
    prompt_content: `DIFFICULTY: FOUNDATIONAL (Level 1-3)

PACING: Slow down significantly. Break into smallest steps. 3-5 examples before practice.

SCAFFOLDING: Provide templates for everything. Think-alouds for all reasoning. Multiple hints.

CONTENT: One concept at a time. Simpler examples. Basic patterns only. Review prerequisites.

FEEDBACK: Immediate and encouraging. Focus on effort. Celebrate partial understanding.`
  },
  {
    prompt_type: 'user_profile',
    name: 'Difficulty Level: Developing (4-5)',
    description: 'For students developing proficiency',
    priority: 90,
    prompt_content: `DIFFICULTY: DEVELOPING (Level 4-5)

PACING: Moderate pace with understanding checks. Balance guided and independent practice.

SCAFFOLDING: Gradually reduce support. Ask guiding questions. Encourage self-correction.

CONTENT: Standard grade-level. Mix of straightforward and challenging. Some multi-step problems.

FEEDBACK: Specific and constructive. Ask student to explain thinking.`
  },
  {
    prompt_type: 'user_profile',
    name: 'Difficulty Level: Proficient (6-7)',
    description: 'For students with solid understanding',
    priority: 90,
    prompt_content: `DIFFICULTY: PROFICIENT (Level 6-7)

PACING: Efficient pace. Quick prerequisite review. More time on application.

SCAFFOLDING: Minimal scaffolding. Encourage independence. Hints only when stuck.

CONTENT: Include challenging applications. Multi-step problems. Cross-topic connections.

FEEDBACK: Focus on deepening understanding. Probing questions. Suggest extensions.`
  },
  {
    prompt_type: 'user_profile',
    name: 'Difficulty Level: Advanced (8-10)',
    description: 'For students ready for challenge',
    priority: 90,
    prompt_content: `DIFFICULTY: ADVANCED (Level 8-10)

PACING: Rapid through fundamentals. Focus on depth and complexity.

SCAFFOLDING: Minimal instruction. Challenge-based learning. Self-directed inquiry.

CONTENT: Above grade-level. Open-ended problems. Cross-curricular. Advanced concepts.

FEEDBACK: Focus on sophistication. Challenge assumptions. Encourage alternatives.`
  }
];

// ============================================
// SUBJECT GLOBAL PROMPTS
// ============================================

const subjectPrompts = {
  'Math': {
    name: 'Mathematics Teaching Approach',
    content: `MATHEMATICS INSTRUCTION

PHILOSOPHY: Mathematics is about understanding relationships, patterns, and logical structures. Every student can develop mathematical thinking.

CORE PRINCIPLES:
1. CONCEPTUAL BEFORE PROCEDURAL: Build WHY before HOW. Concrete → Pictorial → Abstract.
2. MULTIPLE REPRESENTATIONS: Visual, symbolic, verbal, real-world, tables/patterns.
3. PRODUCTIVE STRUGGLE: Allow thinking time. Guiding questions, not answers. Normalize mistakes.
4. MATHEMATICAL COMMUNICATION: Require explanations. Precise vocabulary. Multiple strategies.

APPROACH:
- Start with compelling problems
- Build on prior knowledge
- Worked examples before practice
- Immediate, specific feedback
- Estimation for number sense
- Connect abstract to concrete

COMMON MISCONCEPTIONS:
- = means "same as" not "answer coming"
- Multiplication doesn't always make bigger
- Larger denominator = smaller pieces`
  },
  'Science': {
    name: 'Science Teaching Approach',
    content: `SCIENCE INSTRUCTION

PHILOSOPHY: Science is knowing through observation, questioning, and investigation. Every student can think like a scientist.

CORE PRINCIPLES:
1. PHENOMENON-BASED: Start with intriguing, observable phenomena. Let questions emerge.
2. PRACTICES: Questioning, modeling, investigating, analyzing, explaining, arguing from evidence.
3. CROSSCUTTING: Patterns, cause/effect, scale, systems, energy/matter, structure/function.
4. CORE IDEAS: Deep understanding of foundational concepts across domains.

5E MODEL: Engage → Explore → Explain → Elaborate → Evaluate

APPROACH:
- Begin with hands-on or thought experiments
- Prediction before explanation
- Age-appropriate scientific vocabulary
- Connect micro to observable
- Discuss uncertainty and limitations

COMMON MISCONCEPTIONS:
- Theories are well-tested explanations, not guesses
- Seasons from tilt, not distance
- Heat and temperature are different`
  },
  'Reading': {
    name: 'English Language Arts Teaching Approach',
    content: `ENGLISH LANGUAGE ARTS INSTRUCTION

PHILOSOPHY: Literacy is foundation for learning and participation. Reading opens worlds; writing empowers voice.

CORE PRINCIPLES:
1. BALANCED LITERACY: Integrate reading, writing, speaking, listening.
2. TEXT COMPLEXITY: Appropriately challenging texts, diverse genres and perspectives.
3. EVIDENCE-BASED: Ground analysis in text. Close reading strategies. Citations required.
4. WRITING AS PROCESS: Prewrite, draft, revise, edit, publish.

READING APPROACH:
Before: Preview, activate knowledge, set purpose, predict
During: Monitor, fix-up strategies, question, annotate
After: Summarize, analyze craft, connect, respond

WRITING APPROACH:
- Mentor texts to model
- Genre-specific conventions
- Organization, evidence, voice
- Conference and revision`
  },
  'History': {
    name: 'Social Studies Teaching Approach',
    content: `SOCIAL STUDIES INSTRUCTION

PHILOSOPHY: Social studies helps students understand the human story and prepares informed citizens. History is analysis of human experience.

CORE PRINCIPLES:
1. HISTORICAL THINKING: Source analysis, perspective, cause/effect, change/continuity.
2. MULTIPLE PERSPECTIVES: Various viewpoints, marginalized voices, complexity.
3. CIVIC ENGAGEMENT: Connect to present, rights/responsibilities, civil discourse.
4. GEOGRAPHIC LITERACY: Maps, human-environment interaction.

APPROACH:
- Inquiry-based with compelling questions
- Primary source analysis
- Tell stories—history is about people
- Timelines and chronological thinking
- Connect to students' lives

SOURCE ANALYSIS:
- Who created it? When? Why?
- What perspective/bias?
- What does it reveal? What's missing?`
  }
};

// ============================================
// INTEREST THEMES
// ============================================

const interestThemes = [
  { name: 'Sports', keywords: 'statistics, physics of sports, athlete biographies, sports history, teamwork' },
  { name: 'Video Games', keywords: 'probability, game physics, game narratives, gaming history, levels/quests' },
  { name: 'Animals', keywords: 'animal biology, ecosystems, animal stories, domestication history' },
  { name: 'Space & Astronomy', keywords: 'large numbers, astronomy, space exploration, astronaut biographies' },
  { name: 'Art & Creativity', keywords: 'geometry in art, color science, artist biographies, art history' },
  { name: 'Music', keywords: 'fractions/rhythm, acoustics, song lyrics, music history' },
  { name: 'Technology & Coding', keywords: 'binary/logic, electronics, tech writing, computing history' },
  { name: 'Nature & Outdoors', keywords: 'measurement, ecology, nature writing, environmental movements' }
];

// ============================================
// GENERATE UNIT PROMPTS
// ============================================

function generateUnitPrompt(unit, subjectName) {
  const gradeBandDesc = getGradeBandDescription(unit.grade_level);

  const templates = {
    'Math': `${unit.name} TEACHING GUIDE (GRADE ${unit.grade_level})

UNIT OVERVIEW: ${unit.description || 'This unit covers ' + unit.name}

LEARNING OBJECTIVES: ${JSON.stringify(unit.learning_objectives || [])}

GRADE ADAPTATION: ${gradeBandDesc}

CONCEPTUAL APPROACH:
Build understanding of ${unit.name.toLowerCase()} through the concrete-pictorial-abstract progression. Ensure conceptual foundations before procedural fluency.

INSTRUCTIONAL SEQUENCE:
1. ENGAGE: Present a compelling problem or real-world situation
2. BUILD: Develop understanding using multiple representations
3. CONNECT: Link to prior knowledge
4. PRACTICE: Guided and independent practice with feedback
5. EXTEND: Apply to new contexts

REPRESENTATIONS: Physical manipulatives, diagrams, number lines, graphs, equations, real-world contexts

VOCABULARY: Develop precise mathematical language for ${unit.name.toLowerCase()}

COMMON CHALLENGES: Watch for procedural learning without conceptual understanding. Address misconceptions immediately.

DIFFERENTIATION: More scaffolding for struggling learners; extensions for advanced learners.`,

    'Science': `${unit.name} TEACHING GUIDE (GRADE ${unit.grade_level})

UNIT OVERVIEW: ${unit.description || 'This unit explores ' + unit.name}

LEARNING OBJECTIVES: ${JSON.stringify(unit.learning_objectives || [])}

GRADE ADAPTATION: ${gradeBandDesc}

PHENOMENON-BASED APPROACH:
Begin with an engaging, observable phenomenon related to ${unit.name.toLowerCase()}. Let student questions drive inquiry.

5E INSTRUCTION:
1. ENGAGE: Present puzzling phenomenon
2. EXPLORE: Hands-on investigation
3. EXPLAIN: Build understanding from evidence
4. ELABORATE: Apply to new situations
5. EVALUATE: Assess and address misconceptions

KEY CONCEPTS: Focus on disciplinary core ideas, crosscutting concepts, and science practices

INVESTIGATION: Include hands-on activities, virtual labs, or thought experiments

MISCONCEPTIONS: Be prepared to address common misconceptions using evidence

REAL-WORLD: Connect to everyday experiences, STEM careers, current events`,

    'Reading': `${unit.name} TEACHING GUIDE (GRADE ${unit.grade_level})

UNIT OVERVIEW: ${unit.description || 'This unit develops skills in ' + unit.name}

LEARNING OBJECTIVES: ${JSON.stringify(unit.learning_objectives || [])}

GRADE ADAPTATION: ${gradeBandDesc}

WORKSHOP STRUCTURE:
1. MINI-LESSON: Explicit instruction on a skill
2. MODELING: Teacher think-aloud demonstration
3. GUIDED PRACTICE: Practice with support
4. INDEPENDENT PRACTICE: Apply independently
5. SHARING: Discuss and reflect

TEXT SELECTION: Choose diverse, appropriately complex texts that allow skill practice

SKILLS FOCUS: Comprehension strategies, analysis, fluency, vocabulary, writing response

VOCABULARY: Pre-teach essential terms, use context clues, build word awareness

DIFFERENTIATION: Texts at various levels, scaffolds, extensions, flexible grouping`,

    'History': `${unit.name} TEACHING GUIDE (GRADE ${unit.grade_level})

UNIT OVERVIEW: ${unit.description || 'This unit examines ' + unit.name}

LEARNING OBJECTIVES: ${JSON.stringify(unit.learning_objectives || [])}

GRADE ADAPTATION: ${gradeBandDesc}

INQUIRY APPROACH:
Frame the unit around compelling questions. What makes ${unit.name.toLowerCase()} significant?

INSTRUCTION:
1. QUESTION: Compelling and supporting questions
2. INVESTIGATE: Examine primary and secondary sources
3. ANALYZE: Multiple perspectives and evidence
4. SYNTHESIZE: Evidence-based arguments
5. COMMUNICATE: Share conclusions

PRIMARY SOURCES: Use age-appropriate documents, images, artifacts, maps

MULTIPLE PERSPECTIVES: Present from various viewpoints including marginalized voices

CONNECTIONS: Link to current events, student lives, geography, civic responsibility`
  };

  return templates[subjectName] || templates['Math'];
}

// ============================================
// GENERATE TOPIC PROMPTS
// ============================================

function generateTopicPrompt(topic, subjectName) {
  const gradeBandDesc = getGradeBandDescription(topic.grade_level_min);
  const gradeRange = topic.grade_level_max !== topic.grade_level_min
    ? `${topic.grade_level_min}-${topic.grade_level_max}`
    : `${topic.grade_level_min}`;

  const templates = {
    'Math': `${topic.name} METHODOLOGY

OVERVIEW: ${topic.description || topic.name}
GRADE: ${gradeRange} | DIFFICULTY: ${topic.difficulty_level}/10 | TIME: ${topic.estimated_time} min

GRADE ADAPTATION: ${gradeBandDesc}

CONCEPTUAL FOUNDATION:
Before procedures, ensure understanding of WHAT ${topic.name.toLowerCase()} means:
- What is it and why does it matter?
- How does it connect to prior learning?
- What real situations use this?

BUILDING UNDERSTANDING:
1. Concrete examples and manipulatives
2. Visual representations and diagrams
3. Symbolic/abstract notation
4. Meaningful applications

REPRESENTATIONS: Physical models, pictorial diagrams, number lines, graphs, equations, words

VOCABULARY: Develop precise terminology for ${topic.name.toLowerCase()}

MISCONCEPTIONS: Watch for procedural errors from conceptual gaps, overgeneralized rules

PRACTICE: Guided → Collaborative → Independent → Application → Extension

REAL-WORLD: Connect to applications students care about`,

    'Science': `${topic.name} METHODOLOGY

OVERVIEW: ${topic.description || topic.name}
GRADE: ${gradeRange} | DIFFICULTY: ${topic.difficulty_level}/10 | TIME: ${topic.estimated_time} min

GRADE ADAPTATION: ${gradeBandDesc}

ANCHORING PHENOMENON:
Begin with observable phenomenon related to ${topic.name.toLowerCase()} that prompts questions.

ESSENTIAL QUESTIONS:
- What is happening and why?
- How can we investigate?
- What evidence supports our explanation?

KEY CONCEPTS: Disciplinary core ideas, crosscutting concepts, science practices

VOCABULARY: Define terms precisely, use consistently, connect to everyday language

INVESTIGATION:
1. Observe and question
2. Hypothesize and predict
3. Design investigation
4. Collect/analyze data
5. Construct explanation
6. Communicate findings

MISCONCEPTIONS: Identify common errors, use evidence to build correct understanding

MODELS: Physical models, diagrams, simulations, analogies

CONNECTIONS: Everyday experiences, current events, STEM careers`,

    'Reading': `${topic.name} METHODOLOGY

OVERVIEW: ${topic.description || topic.name}
GRADE: ${gradeRange} | DIFFICULTY: ${topic.difficulty_level}/10 | TIME: ${topic.estimated_time} min

GRADE ADAPTATION: ${gradeBandDesc}

SKILL FOCUS:
Build proficiency in ${topic.name.toLowerCase()} through explicit instruction and practice.

INSTRUCTIONAL APPROACH:
1. EXPLICIT INSTRUCTION: Teach the skill clearly
2. MODELING: Demonstrate with think-aloud
3. GUIDED PRACTICE: Practice with support
4. INDEPENDENT PRACTICE: Apply independently
5. REFLECTION: Discuss what was learned

TEXT SELECTION: Choose texts that allow practice, match levels, represent diversity

VOCABULARY: Pre-teach terms, context clues, word connections

READING STRATEGIES: Before/during/after reading strategies, fix-up when confused

WRITING CONNECTION: Written responses, analysis, creative application

DISCUSSION: Text-based questions, evidence-based responses`,

    'History': `${topic.name} METHODOLOGY

OVERVIEW: ${topic.description || topic.name}
GRADE: ${gradeRange} | DIFFICULTY: ${topic.difficulty_level}/10 | TIME: ${topic.estimated_time} min

GRADE ADAPTATION: ${gradeBandDesc}

COMPELLING QUESTION:
Frame ${topic.name.toLowerCase()} around inquiry: Why did this happen? What were the effects? How does it connect to today?

HISTORICAL CONTEXT:
- Time period and setting
- Key figures and groups
- Causes and effects
- Lasting legacy

PRIMARY SOURCES: Age-appropriate documents, images, artifacts, maps

SOURCE ANALYSIS:
- Who created it? When? Why?
- What perspective/bias?
- What does it reveal?
- How reliable?

MULTIPLE PERSPECTIVES: Various viewpoints, marginalized voices, complexity

VOCABULARY: Period-specific terms, historical concepts, analytical language

CONNECTIONS: Current events, student lives, geography, civic responsibility`
  };

  return templates[subjectName] || templates['Math'];
}

// ============================================
// MAIN SEEDING FUNCTION
// ============================================

async function seedAllPrompts() {
  console.log('Starting comprehensive prompt seeding...\n');

  // 1. Seed user profile prompts
  console.log('Seeding user profile prompts...');
  for (const prompt of userProfilePrompts) {
    const error = await upsertPrompt(prompt);
    if (error) {
      console.error(`  Error: ${prompt.name} - ${error.message}`);
    } else {
      console.log(`  ✓ ${prompt.name}`);
    }
  }

  // 2. Seed interest theme prompts
  console.log('\nSeeding interest theme prompts...');
  for (const theme of interestThemes) {
    const prompt = {
      prompt_type: 'user_profile',
      name: `Interest Theme: ${theme.name}`,
      description: `Adapt examples to ${theme.name.toLowerCase()} interests`,
      priority: 50,
      prompt_content: `INTEREST: ${theme.name.toUpperCase()}

The student loves ${theme.name.toUpperCase()}. Weave these contexts throughout:

CONNECTIONS: ${theme.keywords}

ENGAGEMENT:
- Use ${theme.name.toLowerCase()} examples in problems
- Reference popular ${theme.name.toLowerCase()} topics
- Frame challenges using ${theme.name.toLowerCase()} vocabulary
- Connect abstract concepts to ${theme.name.toLowerCase()} applications`
    };
    const error = await upsertPrompt(prompt);
    if (error) {
      console.error(`  Error: ${prompt.name} - ${error.message}`);
    } else {
      console.log(`  ✓ ${prompt.name}`);
    }
  }

  // 3. Seed subject global prompts
  console.log('\nSeeding subject global prompts...');
  const subjects = await getSubjects();
  for (const subject of subjects) {
    const template = subjectPrompts[subject.name];
    if (template) {
      const prompt = {
        prompt_type: 'subject_global',
        subject_id: subject.id,
        name: template.name,
        description: `Core methodology for ${subject.name}`,
        priority: 10,
        prompt_content: template.content
      };
      const error = await upsertPrompt(prompt);
      if (error) {
        console.error(`  Error: ${prompt.name} - ${error.message}`);
      } else {
        console.log(`  ✓ ${prompt.name}`);
      }
    }
  }

  // 4. Seed unit prompts for ALL units
  console.log('\nSeeding unit prompts...');
  const units = await getUnits();
  console.log(`  Found ${units.length} units`);

  let unitCount = 0;
  for (const unit of units) {
    const subjectName = unit.subjects?.name || 'Math';
    const content = generateUnitPrompt(unit, subjectName);

    const prompt = {
      prompt_type: 'unit_global',
      unit_id: unit.id,
      name: `${unit.name} Teaching Guide (Grade ${unit.grade_level})`,
      description: `Methodology for ${unit.name}`,
      priority: 15,
      prompt_content: content
    };

    const error = await upsertPrompt(prompt);
    if (error) {
      console.error(`  Error: ${prompt.name} - ${error.message}`);
    } else {
      unitCount++;
      if (unitCount % 50 === 0) {
        console.log(`  ✓ ${unitCount} units processed...`);
      }
    }
  }
  console.log(`  ✓ ${unitCount} unit prompts created`);

  // 5. Seed topic prompts for ALL topics
  console.log('\nSeeding topic prompts...');
  const topics = await getTopics();
  console.log(`  Found ${topics.length} topics`);

  let topicCount = 0;
  for (const topic of topics) {
    const subjectName = topic.subjects?.name || 'Math';
    const content = generateTopicPrompt(topic, subjectName);

    const prompt = {
      prompt_type: 'topic_global',
      topic_id: topic.id,
      name: `${topic.name} Teaching Guide`,
      description: `Methodology for ${topic.name}`,
      priority: 20,
      prompt_content: content
    };

    const error = await upsertPrompt(prompt);
    if (error) {
      console.error(`  Error: ${prompt.name} - ${error.message}`);
    } else {
      topicCount++;
      if (topicCount % 100 === 0) {
        console.log(`  ✓ ${topicCount} topics processed...`);
      }
    }
  }
  console.log(`  ✓ ${topicCount} topic prompts created`);

  // 6. Summary
  console.log('\n============================================');
  console.log('SEEDING COMPLETE');
  console.log('============================================');

  const { count: totalPrompts } = await supabase
    .from('prompt_templates')
    .select('*', { count: 'exact', head: true });

  const { data: typeCounts } = await supabase
    .from('prompt_templates')
    .select('prompt_type');

  const counts = {};
  typeCounts?.forEach(p => {
    counts[p.prompt_type] = (counts[p.prompt_type] || 0) + 1;
  });

  console.log(`\nTotal prompts: ${totalPrompts}`);
  console.log('\nBreakdown by type:');
  Object.entries(counts).sort().forEach(([type, count]) => {
    console.log(`  ${type}: ${count}`);
  });
}

// Run
seedAllPrompts().catch(console.error);
