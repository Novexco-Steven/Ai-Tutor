/**
 * Find prompt_templates that have no topic_id
 * These appear as "No Topic" in the UI tree
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

async function main() {
  console.log('='.repeat(60));
  console.log('FINDING ORPHANED PROMPT_TEMPLATES (no topic_id)');
  console.log('='.repeat(60));

  // Get subjects for display
  const { data: subjects } = await supabase.from('subjects').select('id, name');
  const subjectMap = new Map(subjects.map(s => [s.id, s.name]));

  // Find prompt_templates with unit_id but no topic_id
  const { data: orphaned, error } = await supabase
    .from('prompt_templates')
    .select('id, name, prompt_type, subject_id, unit_id, topic_id')
    .not('unit_id', 'is', null)
    .is('topic_id', null)
    .order('subject_id')
    .order('name');

  if (error) {
    console.error('Error:', error);
    return;
  }

  console.log(`\nFound ${orphaned?.length || 0} prompts with unit_id but NO topic_id\n`);

  if (!orphaned || orphaned.length === 0) return;

  // Group by subject
  const bySubject = {};
  for (const p of orphaned) {
    const subj = subjectMap.get(p.subject_id) || 'Unknown';
    if (!bySubject[subj]) bySubject[subj] = [];
    bySubject[subj].push(p);
  }

  for (const [subj, prompts] of Object.entries(bySubject)) {
    console.log(`\n${subj} (${prompts.length} orphaned):`);
    for (const p of prompts.slice(0, 10)) {
      console.log(`  - ${p.name} [${p.prompt_type}]`);
    }
    if (prompts.length > 10) {
      console.log(`  ... and ${prompts.length - 10} more`);
    }
  }

  // Also check: prompts where the topic_id references a non-existent topic
  console.log('\n' + '='.repeat(60));
  console.log('CHECKING FOR PROMPTS WITH INVALID topic_id');
  console.log('='.repeat(60));

  const { data: withTopicId } = await supabase
    .from('prompt_templates')
    .select('id, name, topic_id')
    .not('topic_id', 'is', null);

  const topicIds = [...new Set(withTopicId?.map(p => p.topic_id) || [])];

  // Batch check which topics exist
  const existingTopics = new Set();
  for (let i = 0; i < topicIds.length; i += 100) {
    const batch = topicIds.slice(i, i + 100);
    const { data: topics } = await supabase
      .from('topics')
      .select('id')
      .in('id', batch);
    for (const t of topics || []) {
      existingTopics.add(t.id);
    }
  }

  const invalidTopicPrompts = withTopicId?.filter(p => !existingTopics.has(p.topic_id)) || [];
  console.log(`\nFound ${invalidTopicPrompts.length} prompts with non-existent topic_id`);

  if (invalidTopicPrompts.length > 0) {
    for (const p of invalidTopicPrompts.slice(0, 10)) {
      console.log(`  - ${p.name}`);
    }
  }
}

main();
