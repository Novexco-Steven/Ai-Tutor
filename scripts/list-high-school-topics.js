import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

async function main() {
  const { data: subjects } = await supabase.from('subjects').select('id, name');
  const subjectMap = Object.fromEntries(subjects.map(s => [s.id, s.name]));

  const { data: topics } = await supabase
    .from('topics')
    .select('name, grade_level_min, subject_id')
    .gte('grade_level_min', 9)
    .order('grade_level_min')
    .order('subject_id');

  console.log('=== GRADES 9-12 TOPICS IN DATABASE ===\n');

  let currentGrade = null;
  let currentSubject = null;

  for (const topic of topics) {
    const subjectName = subjectMap[topic.subject_id] || 'Unknown';

    if (topic.grade_level_min !== currentGrade) {
      currentGrade = topic.grade_level_min;
      console.log(`\n=== GRADE ${currentGrade} ===`);
      currentSubject = null;
    }

    if (subjectName !== currentSubject) {
      currentSubject = subjectName;
      console.log(`\n${subjectName}:`);
    }

    console.log(`  - ${topic.name}`);
  }

  console.log(`\n\nTotal high school topics: ${topics.length}`);
}

main().catch(console.error);
