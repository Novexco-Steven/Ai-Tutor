/**
 * Fill ALL gaps - create prompts for every topic that doesn't have one
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

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

function getGradeBandApproach(grade) {
  if (grade <= 2) return 'Use simple language, concrete examples, lots of visuals, hands-on activities. Keep explanations short. Celebrate every success. Songs, rhymes, movement.';
  if (grade <= 5) return 'Balance concrete and abstract. Build vocabulary explicitly. Use multiple representations and real-world connections. Encourage multiple solution strategies.';
  if (grade <= 8) return 'Develop abstract thinking. Use Socratic questioning. Connect to adolescent interests and future relevance. Formal notation. Collaborative problem-solving.';
  return 'Use sophisticated academic language. Emphasize analysis and argumentation. Connect to college and career readiness. Primary sources. Independent inquiry.';
}

function generatePrompt(topic, subjectName, unitName) {
  const gradeLabel = topic.grade_level_min === 0 ? 'Kindergarten' : `Grade ${topic.grade_level_min}`;
  const approach = SUBJECT_APPROACHES[subjectName] || SUBJECT_APPROACHES['Math'];
  const gradeBandApproach = getGradeBandApproach(topic.grade_level_min);

  return `${topic.name.toUpperCase()} - COMPREHENSIVE TEACHING GUIDE (${gradeLabel})

SUBJECT: ${subjectName}
UNIT: ${unitName || 'General'}
GRADE: ${gradeLabel}
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
${gradeBandApproach}

SUBJECT-SPECIFIC METHODOLOGY:
${approach.philosophy} ${approach.approach} Key strategies: ${approach.strategies}.

COMMON MISCONCEPTIONS:
- Watch for procedural learning without conceptual understanding
- Address overgeneralized rules that don't apply in all cases
- Correct misunderstandings before they become ingrained
- Use errors as learning opportunities, not failures

TEACHING SEQUENCE:
1. ENGAGE (5 min): Hook students with a compelling question, problem, or phenomenon
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
Connect ${topic.name.toLowerCase()} to students' lives, interests, and future learning. Show why this matters beyond the classroom.

CONNECTION TO FUTURE LEARNING:
This topic builds foundation for upcoming concepts. Explicitly connect to the learning progression and help students see the bigger picture.`;
}

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

async function main() {
  console.log('Loading data...');
  const subjects = await getAllWithPagination('subjects', 'id, name');
  const units = await getAllWithPagination('units', 'id, name, subject_id');
  const topics = await getAllWithPagination('topics', 'id, name, description, grade_level_min, difficulty_level, estimated_time, subject_id, unit_id');
  const prompts = await getAllWithPagination('prompt_templates', 'id, topic_id');

  const subjectMap = new Map(subjects.map(s => [s.id, s.name]));
  const unitMap = new Map(units.map(u => [u.id, u.name]));
  const coveredTopicIds = new Set(prompts.filter(p => p.topic_id).map(p => p.topic_id));

  console.log(`  Topics: ${topics.length}`);
  console.log(`  Already covered: ${coveredTopicIds.size}`);

  // Find uncovered topics
  const uncovered = topics.filter(t => !coveredTopicIds.has(t.id));
  console.log(`  Uncovered: ${uncovered.length}\n`);

  if (uncovered.length === 0) {
    console.log('✓ 100% COVERAGE - All topics have prompts!');
    return;
  }

  // Sort by grade then subject
  uncovered.sort((a, b) => {
    if (a.grade_level_min !== b.grade_level_min) return a.grade_level_min - b.grade_level_min;
    return (subjectMap.get(a.subject_id) || '').localeCompare(subjectMap.get(b.subject_id) || '');
  });

  let created = 0;
  let errors = 0;
  let currentGrade = null;

  for (const topic of uncovered) {
    const subjectName = subjectMap.get(topic.subject_id) || 'General';
    const unitName = unitMap.get(topic.unit_id) || 'General';
    const gradeLabel = topic.grade_level_min === 0 ? 'K' : topic.grade_level_min;

    if (topic.grade_level_min !== currentGrade) {
      currentGrade = topic.grade_level_min;
      console.log(`\n=== GRADE ${gradeLabel} ===`);
    }

    const promptContent = generatePrompt(topic, subjectName, unitName);
    const promptName = `${topic.name} (Grade ${gradeLabel}) Topic Guide`;

    try {
      const { error } = await supabase
        .from('prompt_templates')
        .insert({
          prompt_type: 'topic_global',
          subject_id: topic.subject_id,
          topic_id: topic.id,
          unit_id: topic.unit_id,
          name: promptName,
          description: `Comprehensive teaching guide for ${topic.name}`,
          prompt_content: promptContent,
          priority: 20,
          is_active: true
        });

      if (error) {
        if (error.code === '23505') {
          console.log(`  - ${topic.name} (exists)`);
        } else {
          console.log(`  ✗ ${topic.name}: ${error.message}`);
          errors++;
        }
      } else {
        console.log(`  ✓ ${topic.name}`);
        created++;
      }
    } catch (err) {
      console.log(`  ✗ ${topic.name}: ${err.message}`);
      errors++;
    }
  }

  console.log(`\n${'='.repeat(50)}`);
  console.log(`Created: ${created}`);
  console.log(`Errors: ${errors}`);

  // Final check
  const { count: finalCovered } = await supabase
    .from('prompt_templates')
    .select('*', { count: 'exact', head: true })
    .eq('prompt_type', 'topic_global')
    .not('topic_id', 'is', null);

  const coverage = ((finalCovered || 0) / topics.length * 100).toFixed(1);
  console.log(`\nFinal coverage: ${finalCovered}/${topics.length} (${coverage}%)`);

  if (coverage === '100.0') {
    console.log('\n✓ 100% COVERAGE ACHIEVED!');
  }
}

main().catch(console.error);
