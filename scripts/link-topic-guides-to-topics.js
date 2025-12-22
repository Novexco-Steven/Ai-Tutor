/**
 * Link "Topic Guide" prompts to their corresponding topics
 * Pattern: "[Topic Name] Topic Guide" -> topic named "[Topic Name]"
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

const isDryRun = process.argv.includes('--dry-run');

async function main() {
  console.log('='.repeat(60));
  console.log('LINK TOPIC GUIDES TO TOPICS');
  console.log('='.repeat(60));

  if (isDryRun) {
    console.log('\n*** DRY RUN MODE - No changes will be made ***\n');
  }

  // Get subjects
  const { data: subjects } = await supabase.from('subjects').select('id, name');
  const subjectMap = new Map(subjects.map(s => [s.id, s.name]));

  // 1. Find topic_global prompts with null topic_id
  console.log('\n1. Finding topic_global prompts without topic_id...');

  let page = 0;
  const PAGE_SIZE = 1000;
  let orphanedPrompts = [];

  while (true) {
    const { data, error } = await supabase
      .from('prompt_templates')
      .select('id, name, subject_id, unit_id')
      .eq('prompt_type', 'topic_global')
      .is('topic_id', null)
      .range(page * PAGE_SIZE, (page + 1) * PAGE_SIZE - 1);

    if (error) {
      console.error('Error:', error);
      return;
    }

    if (!data || data.length === 0) break;
    orphanedPrompts = orphanedPrompts.concat(data);
    if (data.length < PAGE_SIZE) break;
    page++;
  }

  console.log(`   Found ${orphanedPrompts.length} topic_global prompts without topic_id`);

  // 2. Get all topics
  console.log('\n2. Loading all topics...');

  page = 0;
  let allTopics = [];

  while (true) {
    const { data, error } = await supabase
      .from('topics')
      .select('id, name, subject_id, grade_level_min, unit_id')
      .range(page * PAGE_SIZE, (page + 1) * PAGE_SIZE - 1);

    if (error) {
      console.error('Error:', error);
      return;
    }

    if (!data || data.length === 0) break;
    allTopics = allTopics.concat(data);
    if (data.length < PAGE_SIZE) break;
    page++;
  }

  console.log(`   Loaded ${allTopics.length} topics`);

  // Build lookup map by name + subject_id
  const topicLookup = new Map();
  for (const t of allTopics) {
    const key = `${t.name.toLowerCase()}|${t.subject_id}`;
    if (!topicLookup.has(key)) topicLookup.set(key, []);
    topicLookup.get(key).push(t);
  }

  // 3. Match prompts to topics
  console.log('\n3. Matching prompts to topics...');

  const toUpdate = [];
  const notFound = [];

  for (const prompt of orphanedPrompts) {
    // Extract topic name from prompt name
    // Pattern: "[Topic Name] Topic Guide" -> "[Topic Name]"
    const match = prompt.name.match(/^(.+)\s+Topic Guide$/i);
    if (!match) {
      notFound.push({ prompt, reason: 'Does not match pattern' });
      continue;
    }

    const topicName = match[1].trim();
    const key = `${topicName.toLowerCase()}|${prompt.subject_id}`;
    const candidates = topicLookup.get(key) || [];

    if (candidates.length === 0) {
      notFound.push({ prompt, reason: `No topic named "${topicName}"` });
      continue;
    }

    // If prompt has unit_id, prefer topic in same unit
    let matchedTopic = null;
    if (prompt.unit_id) {
      matchedTopic = candidates.find(t => t.unit_id === prompt.unit_id);
    }

    // Otherwise, take first matching topic
    if (!matchedTopic) {
      matchedTopic = candidates[0];
    }

    toUpdate.push({
      promptId: prompt.id,
      promptName: prompt.name,
      topicId: matchedTopic.id,
      topicName: matchedTopic.name,
      unitId: matchedTopic.unit_id
    });
  }

  console.log(`   Matched: ${toUpdate.length}`);
  console.log(`   Not found: ${notFound.length}`);

  if (notFound.length > 0) {
    console.log('\n   Sample unmatched prompts:');
    for (const { prompt, reason } of notFound.slice(0, 10)) {
      console.log(`     - ${prompt.name}: ${reason}`);
    }
  }

  if (isDryRun) {
    console.log('\n4. DRY RUN - Would update:');
    console.log(`   ${toUpdate.length} prompts with topic_id and unit_id`);
    return;
  }

  // 4. Apply updates
  console.log('\n4. Applying updates...');

  let success = 0;
  let errors = 0;

  for (const { promptId, topicId, unitId } of toUpdate) {
    const { error } = await supabase
      .from('prompt_templates')
      .update({ topic_id: topicId, unit_id: unitId })
      .eq('id', promptId);

    if (error) {
      errors++;
      if (errors <= 5) console.error(`   Error updating ${promptId}:`, error.message);
    } else {
      success++;
    }
  }

  console.log(`   Success: ${success}, Errors: ${errors}`);

  console.log('\n' + '='.repeat(60));
  console.log('DONE');
  console.log('='.repeat(60));
}

main().catch(console.error);
