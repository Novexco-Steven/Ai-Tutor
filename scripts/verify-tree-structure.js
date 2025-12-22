/**
 * Verify tree structure is correct
 * Subject → Unit → Topic → Prompt
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

async function verify() {
  console.log('='.repeat(60));
  console.log('FINAL STATE VERIFICATION');
  console.log('='.repeat(60));

  // 1. Check for topic_global prompts without unit_id
  const { data: topicPromptsNoUnit, count: topicNoUnitCount } = await supabase
    .from('prompt_templates')
    .select('id, name, topic_id', { count: 'exact' })
    .eq('prompt_type', 'topic_global')
    .is('unit_id', null);

  console.log(`\nTopic prompts (topic_global) without unit_id: ${topicNoUnitCount || 0}`);
  if (topicPromptsNoUnit && topicPromptsNoUnit.length > 0) {
    for (const p of topicPromptsNoUnit.slice(0, 5)) {
      console.log(`  - ${p.name} (topic_id: ${p.topic_id})`);
    }
  }

  // 2. Check topics without unit_id
  const { count: topicsNoUnit } = await supabase
    .from('topics')
    .select('id', { count: 'exact', head: true })
    .is('unit_id', null);

  console.log(`\nTopics without unit_id: ${topicsNoUnit || 0}`);

  // 3. Check for duplicate topics
  const { data: allTopics } = await supabase
    .from('topics')
    .select('id, name, subject_id, grade_level_min');

  const groups = new Map();
  for (const t of allTopics || []) {
    const key = `${t.name}|${t.subject_id}|${t.grade_level_min}`;
    if (!groups.has(key)) groups.set(key, []);
    groups.get(key).push(t);
  }

  const duplicateCount = [...groups.values()].filter(g => g.length > 1).length;
  console.log(`\nDuplicate topic groups: ${duplicateCount}`);

  // 4. Overall stats
  const { count: totalPrompts } = await supabase
    .from('prompt_templates')
    .select('id', { count: 'exact', head: true });

  const { count: totalTopics } = await supabase
    .from('topics')
    .select('id', { count: 'exact', head: true });

  const { count: totalUnits } = await supabase
    .from('units')
    .select('id', { count: 'exact', head: true });

  console.log(`\n--- Database Stats ---`);
  console.log(`Total prompts: ${totalPrompts}`);
  console.log(`Total topics: ${totalTopics}`);
  console.log(`Total units: ${totalUnits}`);

  console.log('\n' + '='.repeat(60));
  if ((topicNoUnitCount || 0) === 0 && (topicsNoUnit || 0) === 0 && duplicateCount === 0) {
    console.log('✅ ALL ISSUES RESOLVED');
  } else {
    console.log('⚠ Issues remain');
  }
  console.log('='.repeat(60));
}

verify().catch(console.error);
