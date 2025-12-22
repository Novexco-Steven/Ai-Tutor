/**
 * Add missing topics for orphaned Topic Guide prompts
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

const missingTopics = [
  // Math K-1
  { name: 'Number Recognition', subject: 'Math', grade: 0, description: 'Recognizing and identifying numbers' },
  { name: 'Counting to 10', subject: 'Math', grade: 0, description: 'Counting from 1 to 10' },
  { name: 'Counting On', subject: 'Math', grade: 1, description: 'Counting on from a given number' },
  { name: 'Addition Stories', subject: 'Math', grade: 1, description: 'Word problems involving addition' },
  { name: 'Subtraction Stories', subject: 'Math', grade: 1, description: 'Word problems involving subtraction' },
  { name: 'Comparing Numbers to 100', subject: 'Math', grade: 1, description: 'Comparing two-digit numbers' },

  // Math 9-12
  { name: 'Polynomial Equations', subject: 'Math', grade: 9, description: 'Solving polynomial equations' },
  { name: 'Quadratic Formula and Discriminant', subject: 'Math', grade: 9, description: 'Using the quadratic formula' },
  { name: 'Logarithms', subject: 'Math', grade: 10, description: 'Understanding and working with logarithms' },
  { name: 'Exponential and Logarithmic Equations', subject: 'Math', grade: 10, description: 'Solving exponential and logarithmic equations' },
  { name: 'Probability Concepts', subject: 'Math', grade: 10, description: 'Fundamental probability concepts' },
  { name: 'Combinations and Permutations', subject: 'Math', grade: 10, description: 'Counting techniques' },
  { name: 'Trigonometric Functions', subject: 'Math', grade: 11, description: 'Understanding trigonometric functions' },
  { name: 'Ellipses and Hyperbolas', subject: 'Math', grade: 11, description: 'Conic sections: ellipses and hyperbolas' },
  { name: 'Parametric Equations', subject: 'Math', grade: 11, description: 'Working with parametric equations' },
  { name: 'Rate of Change and Derivatives', subject: 'Math', grade: 12, description: 'Understanding derivatives as rates of change' },

  // History
  { name: 'Native Americans', subject: 'History', grade: 2, description: 'Learning about Native American peoples and cultures' },
  { name: 'Constitutional Rights', subject: 'History', grade: 12, description: 'Understanding constitutional rights and freedoms' },
  { name: 'The U.S. Constitution', subject: 'History', grade: 12, description: 'Structure and principles of the U.S. Constitution' },
  { name: 'Types of Government', subject: 'History', grade: 12, description: 'Different forms and systems of government' },
  { name: 'Elections and Voting', subject: 'History', grade: 12, description: 'Electoral processes and voting rights' },
  { name: 'Political Parties', subject: 'History', grade: 12, description: 'Role and function of political parties' },
  { name: 'Interest Groups', subject: 'History', grade: 12, description: 'Role of interest groups in politics' },
  { name: 'Public Policy', subject: 'History', grade: 12, description: 'How public policy is created and implemented' },
  { name: 'Supply and Demand', subject: 'History', grade: 12, description: 'Economic principles of supply and demand' },
  { name: 'Market Structures', subject: 'History', grade: 12, description: 'Different types of market structures' },
  { name: 'Scarcity and Choice', subject: 'History', grade: 12, description: 'Economic concepts of scarcity and opportunity cost' },
  { name: 'Money and Banking', subject: 'History', grade: 12, description: 'Functions of money and the banking system' },
  { name: 'The Federal Reserve', subject: 'History', grade: 12, description: 'Role and functions of the Federal Reserve' },
  { name: 'Fiscal Policy', subject: 'History', grade: 12, description: 'Government fiscal policy and its effects' },
  { name: 'Economic Indicators', subject: 'History', grade: 12, description: 'Understanding GDP, inflation, unemployment' },
  { name: 'International Trade', subject: 'History', grade: 12, description: 'Global trade and international economics' },
  { name: 'Personal Finance', subject: 'History', grade: 12, description: 'Personal financial planning and money management' },

  // Science
  { name: 'Weather vs Climate', subject: 'Science', grade: 7, description: 'Understanding the difference between weather and climate' },
];

async function main() {
  console.log('='.repeat(60));
  console.log('ADD MISSING TOPICS');
  console.log('='.repeat(60));

  // Get subjects
  const { data: subjects } = await supabase.from('subjects').select('id, name');
  const subjectMap = new Map(subjects.map(s => [s.name, s.id]));

  // Get units (for linking)
  const { data: units } = await supabase.from('units').select('id, subject_id, grade_level');

  console.log(`\nLoaded ${subjects.length} subjects, ${units.length} units`);

  let created = 0;
  let skipped = 0;
  let errors = 0;

  for (const topic of missingTopics) {
    const subjectId = subjectMap.get(topic.subject);
    if (!subjectId) {
      console.log(`  ✗ Subject not found: ${topic.subject}`);
      errors++;
      continue;
    }

    // Find unit for this subject/grade
    const unit = units.find(u => u.subject_id === subjectId && u.grade_level === topic.grade);
    const unitId = unit?.id || null;

    // Check if topic already exists
    const { data: existing } = await supabase
      .from('topics')
      .select('id')
      .eq('name', topic.name)
      .eq('subject_id', subjectId)
      .eq('grade_level_min', topic.grade)
      .single();

    if (existing) {
      skipped++;
      continue;
    }

    // Calculate difficulty level based on grade (K-2=2, 3-5=3, 6-8=4, 9-10=5, 11-12=6)
    let difficultyLevel = 2;
    if (topic.grade >= 3 && topic.grade <= 5) difficultyLevel = 3;
    else if (topic.grade >= 6 && topic.grade <= 8) difficultyLevel = 4;
    else if (topic.grade >= 9 && topic.grade <= 10) difficultyLevel = 5;
    else if (topic.grade >= 11) difficultyLevel = 6;

    // Get max order_index for this unit
    const { data: maxOrder } = await supabase
      .from('topics')
      .select('order_index')
      .eq('unit_id', unitId)
      .order('order_index', { ascending: false })
      .limit(1)
      .single();

    const orderIndex = (maxOrder?.order_index || 0) + 1;

    // Insert topic
    const { error } = await supabase
      .from('topics')
      .insert({
        name: topic.name,
        subject_id: subjectId,
        grade_level_min: topic.grade,
        grade_level_max: topic.grade,
        unit_id: unitId,
        description: topic.description,
        difficulty_level: difficultyLevel,
        order_index: orderIndex,
      });

    if (error) {
      console.log(`  ✗ Error creating "${topic.name}": ${error.message}`);
      errors++;
    } else {
      created++;
      console.log(`  ✓ Created: ${topic.name} (${topic.subject}, Grade ${topic.grade})`);
    }
  }

  console.log(`\n${'='.repeat(60)}`);
  console.log(`Created: ${created}, Skipped (existing): ${skipped}, Errors: ${errors}`);
  console.log('='.repeat(60));
}

main().catch(console.error);
