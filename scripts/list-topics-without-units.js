/**
 * List topics without unit_id grouped by subject and grade
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

async function main() {
  // Get subjects
  const { data: subjects } = await supabase.from('subjects').select('id, name');
  console.log('Subjects:', subjects.map(s => s.name).join(', '));

  // Get topics without unit_id grouped by subject and grade
  const { data: topics } = await supabase
    .from('topics')
    .select('id, name, subject_id, grade_level_min')
    .is('unit_id', null)
    .order('subject_id')
    .order('grade_level_min');

  // Group by subject
  const bySubject = {};
  for (const t of topics) {
    const subj = subjects.find(s => s.id === t.subject_id)?.name || 'Unknown';
    if (!bySubject[subj]) bySubject[subj] = {};
    if (!bySubject[subj][t.grade_level_min]) bySubject[subj][t.grade_level_min] = [];
    bySubject[subj][t.grade_level_min].push(t.name);
  }

  console.log('\nTopics without unit_id by subject/grade:');
  for (const [subj, grades] of Object.entries(bySubject)) {
    console.log('\n' + subj + ':');
    for (const [grade, names] of Object.entries(grades)) {
      console.log('  Grade ' + grade + ': ' + names.join(', '));
    }
  }
}
main();
