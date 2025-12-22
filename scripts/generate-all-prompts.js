/**
 * Generate ALL Missing Prompts
 * Ensures 100% coverage: Grade > Subject > Unit > Topic
 * Saves each prompt immediately to database
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

// ============================================
// PROMPT TEMPLATES BY SUBJECT
// ============================================

const SUBJECT_APPROACHES = {
  'Math': {
    philosophy: 'Mathematics is about understanding relationships, patterns, and logical structures.',
    approach: 'Conceptual before procedural. Use concrete-pictorial-abstract progression.',
    strategies: 'Multiple representations, productive struggle, mathematical communication'
  },
  'Science': {
    philosophy: 'Science is knowing through observation, questioning, and investigation.',
    approach: 'Phenomenon-based inquiry using the 5E model.',
    strategies: 'Hands-on investigation, evidence-based reasoning, scientific vocabulary'
  },
  'Reading': {
    philosophy: 'Literacy is the foundation for learning and participation in society.',
    approach: 'Balanced literacy integrating reading, writing, speaking, listening.',
    strategies: 'Before/during/after reading, text evidence, comprehension strategies'
  },
  'History': {
    philosophy: 'Social studies helps students understand human experience and become informed citizens.',
    approach: 'Inquiry-based with primary source analysis and multiple perspectives.',
    strategies: 'Historical thinking, source analysis, connecting past to present'
  }
};

const GRADE_BANDS = {
  'K-2': {
    range: [0, 1, 2],
    description: 'Early Elementary',
    approach: 'Use simple language, concrete examples, lots of visuals, hands-on activities. Keep explanations short (5-8 words). Celebrate every success. Songs, rhymes, movement. Attention span 5-15 minutes.'
  },
  '3-5': {
    range: [3, 4, 5],
    description: 'Upper Elementary',
    approach: 'Balance concrete and abstract. Build vocabulary explicitly. Use multiple representations and real-world connections. Attention span 15-25 minutes. Encourage multiple solution strategies.'
  },
  '6-8': {
    range: [6, 7, 8],
    description: 'Middle School',
    approach: 'Develop abstract thinking. Use Socratic questioning. Connect to adolescent interests and future relevance. Formal notation. Collaborative problem-solving.'
  },
  '9-12': {
    range: [9, 10, 11, 12],
    description: 'High School',
    approach: 'Use sophisticated academic language. Emphasize analysis and argumentation. Connect to college and career readiness. Primary sources. Independent inquiry.'
  }
};

function getGradeBand(grade) {
  for (const [band, info] of Object.entries(GRADE_BANDS)) {
    if (info.range.includes(grade)) return { band, ...info };
  }
  return GRADE_BANDS['9-12'];
}

function generateTopicPrompt(topic, subject, unit) {
  const gradeBand = getGradeBand(topic.grade_level_min);
  const subjectApproach = SUBJECT_APPROACHES[subject.name] || SUBJECT_APPROACHES['Math'];
  const gradeLabel = topic.grade_level_min === 0 ? 'Kindergarten' : `Grade ${topic.grade_level_min}`;

  return `${topic.name.toUpperCase()} - COMPREHENSIVE TEACHING GUIDE (${gradeLabel})

SUBJECT: ${subject.name}
UNIT: ${unit?.name || 'General'}
GRADE BAND: ${gradeBand.description} (${gradeBand.band})
DIFFICULTY: ${topic.difficulty_level}/10
ESTIMATED TIME: ${topic.estimated_time || 30} minutes

PREREQUISITES:
Students should have foundational understanding of prior concepts in this unit. Review prerequisite skills before introducing new material. Assess readiness through quick formative checks.

LEARNING OBJECTIVES:
By the end of this lesson, students will be able to:
- Demonstrate understanding of ${topic.name.toLowerCase()} concepts
- Apply learned skills to solve problems independently
- Explain their reasoning using appropriate vocabulary
- Connect this topic to prior knowledge and real-world applications

KEY CONCEPTS:
${topic.description || `Core concepts related to ${topic.name}`}. Focus on building deep understanding rather than surface-level memorization. Emphasize the "why" behind procedures and concepts.

GRADE-APPROPRIATE APPROACH:
${gradeBand.approach}

SUBJECT-SPECIFIC METHODOLOGY:
${subjectApproach.philosophy} ${subjectApproach.approach} Key strategies: ${subjectApproach.strategies}.

COMMON MISCONCEPTIONS:
- Watch for procedural learning without conceptual understanding
- Address overgeneralized rules that don't apply in all cases
- Correct misunderstandings before they become ingrained
- Use errors as learning opportunities, not failures

TEACHING SEQUENCE:
1. ENGAGE (5 min): Hook students with a compelling question, problem, or phenomenon related to ${topic.name.toLowerCase()}
2. EXPLORE (10 min): Guided discovery where students investigate the concept
3. EXPLAIN (10 min): Direct instruction building on student discoveries
4. ELABORATE (10 min): Application to new contexts and deeper problems
5. EVALUATE (5 min): Check for understanding through formative assessment

DIFFERENTIATION:
For struggling learners: Provide additional scaffolding, visual supports, manipulatives, extended time, and simplified examples. Break tasks into smaller steps.
For advanced learners: Offer extension problems, open-ended challenges, cross-curricular connections, and opportunities for peer teaching.

VOCABULARY:
Key terms for ${topic.name} should be explicitly taught with clear definitions, examples, and non-examples. Use word walls, graphic organizers, and repeated exposure in context.

ASSESSMENT INDICATORS:
- Can students explain the concept in their own words?
- Can they apply it to new situations?
- Do they recognize when to use this skill?
- Can they identify and correct errors?

REAL-WORLD CONNECTIONS:
Connect ${topic.name.toLowerCase()} to students' lives, interests, and future learning. Show why this matters beyond the classroom. Use relevant, age-appropriate examples.

CONNECTION TO FUTURE LEARNING:
This topic builds foundation for upcoming concepts in ${unit?.name || 'this subject'}. Explicitly connect to the learning progression and help students see the bigger picture.`;
}

// ============================================
// DATABASE FUNCTIONS
// ============================================

async function getAllWithPagination(table, select) {
  let allData = [];
  let page = 0;
  const pageSize = 1000;

  while (true) {
    const { data, error } = await supabase
      .from(table)
      .select(select)
      .range(page * pageSize, (page + 1) * pageSize - 1);

    if (error) throw error;
    if (!data || data.length === 0) break;
    allData = allData.concat(data);
    if (data.length < pageSize) break;
    page++;
  }

  return allData;
}

async function savePrompt(prompt) {
  const { error } = await supabase
    .from('prompt_templates')
    .insert(prompt);

  if (error) {
    if (error.code === '23505') return 'exists';
    throw error;
  }
  return 'created';
}

// ============================================
// MAIN
// ============================================

async function main() {
  console.log('='.repeat(60));
  console.log('COMPREHENSIVE PROMPT GENERATOR - 100% COVERAGE');
  console.log('='.repeat(60));
  console.log('');

  // Load all data
  console.log('Loading database...');
  const subjects = await getAllWithPagination('subjects', 'id, name');
  const units = await getAllWithPagination('units', 'id, name, grade_level, subject_id');
  const topics = await getAllWithPagination('topics', 'id, name, description, grade_level_min, grade_level_max, difficulty_level, estimated_time, subject_id, unit_id');
  const existingPrompts = await getAllWithPagination('prompt_templates', 'id, name, topic_id');

  console.log(`  Subjects: ${subjects.length}`);
  console.log(`  Units: ${units.length}`);
  console.log(`  Topics: ${topics.length}`);
  console.log(`  Existing prompts: ${existingPrompts.length}`);
  console.log('');

  // Create lookup maps
  const subjectMap = new Map(subjects.map(s => [s.id, s]));
  const unitMap = new Map(units.map(u => [u.id, u]));
  const existingTopicIds = new Set(existingPrompts.filter(p => p.topic_id).map(p => p.topic_id));
  const existingNames = new Set(existingPrompts.map(p => p.name.toLowerCase()));

  // Find topics without prompts
  const missingTopics = topics.filter(t => {
    const hasById = existingTopicIds.has(t.id);
    const promptName = `${t.name} (Grade ${t.grade_level_min === 0 ? 'K' : t.grade_level_min}) Topic Guide`.toLowerCase();
    const hasByName = existingNames.has(promptName);
    return !hasById && !hasByName;
  });

  console.log(`Topics missing prompts: ${missingTopics.length}`);
  console.log('');

  if (missingTopics.length === 0) {
    console.log('✓ 100% COVERAGE ACHIEVED!');
    return;
  }

  // Sort by grade, then subject, then unit
  missingTopics.sort((a, b) => {
    if (a.grade_level_min !== b.grade_level_min) return a.grade_level_min - b.grade_level_min;
    const subjectA = subjectMap.get(a.subject_id)?.name || '';
    const subjectB = subjectMap.get(b.subject_id)?.name || '';
    if (subjectA !== subjectB) return subjectA.localeCompare(subjectB);
    return (a.name || '').localeCompare(b.name || '');
  });

  // Generate and save prompts
  let created = 0;
  let skipped = 0;
  let errors = 0;
  let currentGrade = null;
  let currentSubject = null;

  for (const topic of missingTopics) {
    const subject = subjectMap.get(topic.subject_id);
    const unit = unitMap.get(topic.unit_id);
    const gradeLabel = topic.grade_level_min === 0 ? 'K' : topic.grade_level_min;

    // Log progress
    if (topic.grade_level_min !== currentGrade) {
      currentGrade = topic.grade_level_min;
      console.log(`\n=== GRADE ${gradeLabel} ===`);
    }

    if (subject?.name !== currentSubject) {
      currentSubject = subject?.name;
      console.log(`\n  ${currentSubject || 'Unknown Subject'}:`);
    }

    // Generate prompt content
    const promptContent = generateTopicPrompt(topic, subject || { name: 'General' }, unit);
    const promptName = `${topic.name} (Grade ${gradeLabel}) Topic Guide`;

    // Save to database
    try {
      const prompt = {
        prompt_type: 'topic_global',
        subject_id: topic.subject_id,
        topic_id: topic.id,
        unit_id: topic.unit_id,
        name: promptName,
        description: `Comprehensive teaching guide for ${topic.name}`,
        prompt_content: promptContent,
        priority: 20,
        is_active: true
      };

      const result = await savePrompt(prompt);

      if (result === 'created') {
        console.log(`    ✓ ${topic.name}`);
        created++;
      } else {
        console.log(`    - ${topic.name} (already exists)`);
        skipped++;
      }
    } catch (err) {
      console.log(`    ✗ ${topic.name}: ${err.message}`);
      errors++;
    }
  }

  // Summary
  console.log('\n' + '='.repeat(60));
  console.log('SUMMARY');
  console.log('='.repeat(60));
  console.log(`Created: ${created}`);
  console.log(`Skipped: ${skipped}`);
  console.log(`Errors: ${errors}`);

  // Final count
  const { count } = await supabase
    .from('prompt_templates')
    .select('*', { count: 'exact', head: true });

  console.log(`\nTotal prompts in database: ${count}`);

  // Check coverage
  const topicPrompts = await supabase
    .from('prompt_templates')
    .select('topic_id', { count: 'exact' })
    .eq('prompt_type', 'topic_global')
    .not('topic_id', 'is', null);

  const coverage = ((topicPrompts.count || 0) / topics.length * 100).toFixed(1);
  console.log(`Topic coverage: ${topicPrompts.count}/${topics.length} (${coverage}%)`);

  if (coverage === '100.0') {
    console.log('\n✓ 100% COVERAGE ACHIEVED!');
  } else {
    console.log(`\nRemaining topics to cover: ${topics.length - (topicPrompts.count || 0)}`);
  }
}

main().catch(err => {
  console.error('Fatal error:', err);
  process.exit(1);
});
