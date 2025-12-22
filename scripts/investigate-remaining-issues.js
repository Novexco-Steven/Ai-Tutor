/**
 * Investigate remaining issues with prompts and topics
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

async function investigate() {
  console.log('='.repeat(60));
  console.log('INVESTIGATING REMAINING ISSUES');
  console.log('='.repeat(60));

  // 1. Find topic_global prompts with null topic_id
  console.log('\n1. Topic prompts with NULL topic_id:');
  const { data: nullTopicPrompts } = await supabase
    .from('prompt_templates')
    .select('id, name, subject_id, unit_id, prompt_type')
    .eq('prompt_type', 'topic_global')
    .is('topic_id', null)
    .order('name')
    .limit(50);

  // Get subjects
  const { data: subjects } = await supabase.from('subjects').select('id, name');
  const subjectMap = new Map(subjects.map(s => [s.id, s.name]));

  const bySubject = {};
  for (const p of nullTopicPrompts || []) {
    const subj = subjectMap.get(p.subject_id) || 'Unknown';
    if (!bySubject[subj]) bySubject[subj] = [];
    bySubject[subj].push(p);
  }

  for (const [subj, prompts] of Object.entries(bySubject)) {
    console.log(`\n  ${subj} (${prompts.length}):`);
    for (const p of prompts.slice(0, 5)) {
      console.log(`    - ${p.name}`);
    }
    if (prompts.length > 5) console.log(`    ... and ${prompts.length - 5} more`);
  }

  // 2. Find duplicate topics
  console.log('\n\n2. Duplicate topic groups:');
  const { data: allTopics } = await supabase
    .from('topics')
    .select('id, name, subject_id, grade_level_min, unit_id');

  const groups = new Map();
  for (const t of allTopics || []) {
    const key = `${t.name}|${t.subject_id}|${t.grade_level_min}`;
    if (!groups.has(key)) groups.set(key, []);
    groups.get(key).push(t);
  }

  const duplicateGroups = [...groups.entries()].filter(([, topics]) => topics.length > 1);

  for (const [key, topics] of duplicateGroups) {
    const [name, subjId, grade] = key.split('|');
    const subj = subjectMap.get(subjId) || 'Unknown';
    console.log(`\n  "${name}" (${subj}, Grade ${grade}):`);
    for (const t of topics) {
      // Count linked prompts
      const { count } = await supabase
        .from('prompt_templates')
        .select('id', { count: 'exact', head: true })
        .eq('topic_id', t.id);
      console.log(`    - ID: ${t.id}, unit_id: ${t.unit_id}, prompts: ${count}`);
    }
  }

  // 3. Sample topic_global prompts to understand naming pattern
  console.log('\n\n3. Sample topic_global prompt names (to understand pattern):');
  const { data: samplePrompts } = await supabase
    .from('prompt_templates')
    .select('name')
    .eq('prompt_type', 'topic_global')
    .is('topic_id', null)
    .limit(20);

  for (const p of samplePrompts || []) {
    console.log(`  - ${p.name}`);
  }

  console.log('\n' + '='.repeat(60));
}

investigate().catch(console.error);
