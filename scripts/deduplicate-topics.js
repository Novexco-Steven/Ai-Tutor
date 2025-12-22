/**
 * Deduplicate topics table
 *
 * For topics with same (name, subject_id, grade_level_min):
 * 1. Keep the one with the most prompt_templates linked
 * 2. Re-link orphaned prompts to the kept topic
 * 3. Delete duplicate topics
 *
 * Usage: node scripts/deduplicate-topics.js [--dry-run]
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
  console.log('DEDUPLICATE TOPICS');
  console.log('='.repeat(60));

  if (isDryRun) {
    console.log('\n*** DRY RUN MODE - No changes will be made ***\n');
  }

  // Step 1: Find all topics grouped by name + subject + grade
  console.log('\n1. Finding duplicate topics...');

  // Paginate to get all topics (Supabase default limit is 1000)
  const PAGE_SIZE = 1000;
  let page = 0;
  let allTopics = [];

  while (true) {
    const { data, error: topicsError } = await supabase
      .from('topics')
      .select('id, name, subject_id, grade_level_min, unit_id')
      .order('name')
      .range(page * PAGE_SIZE, (page + 1) * PAGE_SIZE - 1);

    if (topicsError) {
      console.error('Error fetching topics:', topicsError);
      return;
    }

    if (!data || data.length === 0) break;
    allTopics = allTopics.concat(data);
    console.log(`   Fetched page ${page + 1}: ${data.length} topics (total: ${allTopics.length})`);
    if (data.length < PAGE_SIZE) break;
    page++;
  }

  // Group by key
  const groups = new Map();
  for (const t of allTopics) {
    const key = `${t.name}|${t.subject_id}|${t.grade_level_min}`;
    if (!groups.has(key)) {
      groups.set(key, []);
    }
    groups.get(key).push(t);
  }

  // Find groups with duplicates
  const duplicateGroups = [...groups.entries()].filter(([, topics]) => topics.length > 1);
  console.log(`   Found ${duplicateGroups.length} groups with duplicates`);
  console.log(`   Total duplicate topics: ${duplicateGroups.reduce((sum, [, t]) => sum + t.length - 1, 0)}`);

  if (duplicateGroups.length === 0) {
    console.log('\n✓ No duplicates found!');
    return;
  }

  // Step 2: For each group, determine which topic to keep
  console.log('\n2. Analyzing which topics to keep...');

  const toDelete = [];
  const toRelink = []; // { promptId, newTopicId }

  for (const [key, topics] of duplicateGroups) {
    // Get prompt counts for each topic
    const topicPromptCounts = await Promise.all(
      topics.map(async (t) => {
        const { count } = await supabase
          .from('prompt_templates')
          .select('id', { count: 'exact', head: true })
          .eq('topic_id', t.id);
        return { topic: t, promptCount: count || 0 };
      })
    );

    // Sort by prompt count (highest first), then by unit_id presence
    topicPromptCounts.sort((a, b) => {
      if (b.promptCount !== a.promptCount) return b.promptCount - a.promptCount;
      if (a.topic.unit_id && !b.topic.unit_id) return -1;
      if (!a.topic.unit_id && b.topic.unit_id) return 1;
      return 0;
    });

    const keeper = topicPromptCounts[0].topic;
    const duplicates = topicPromptCounts.slice(1);

    for (const { topic, promptCount } of duplicates) {
      toDelete.push(topic.id);

      // Find prompts linked to this duplicate and mark for relinking
      if (promptCount > 0) {
        const { data: prompts } = await supabase
          .from('prompt_templates')
          .select('id')
          .eq('topic_id', topic.id);

        for (const p of prompts || []) {
          toRelink.push({ promptId: p.id, newTopicId: keeper.id });
        }
      }
    }
  }

  console.log(`   Topics to delete: ${toDelete.length}`);
  console.log(`   Prompts to re-link: ${toRelink.length}`);

  if (isDryRun) {
    console.log('\n3. DRY RUN - Would perform:');
    console.log(`   - Re-link ${toRelink.length} prompts to their canonical topic`);
    console.log(`   - Delete ${toDelete.length} duplicate topics`);
    return;
  }

  // Step 3: Re-link prompts
  if (toRelink.length > 0) {
    console.log('\n3. Re-linking prompts...');
    let relinkSuccess = 0;
    let relinkError = 0;

    for (const { promptId, newTopicId } of toRelink) {
      const { error } = await supabase
        .from('prompt_templates')
        .update({ topic_id: newTopicId })
        .eq('id', promptId);

      if (error) {
        relinkError++;
      } else {
        relinkSuccess++;
      }
    }

    console.log(`   Re-linked: ${relinkSuccess}, Errors: ${relinkError}`);
  }

  // Step 4: Delete duplicates
  console.log('\n4. Deleting duplicate topics...');
  let deleteSuccess = 0;
  let deleteError = 0;

  // Delete in batches
  const BATCH_SIZE = 50;
  for (let i = 0; i < toDelete.length; i += BATCH_SIZE) {
    const batch = toDelete.slice(i, i + BATCH_SIZE);
    const { error } = await supabase
      .from('topics')
      .delete()
      .in('id', batch);

    if (error) {
      console.error('   Batch delete error:', error.message);
      deleteError += batch.length;
    } else {
      deleteSuccess += batch.length;
    }
  }

  console.log(`   Deleted: ${deleteSuccess}, Errors: ${deleteError}`);

  // Step 5: Verify
  console.log('\n5. Verifying...');

  let remainingTopics = [];
  page = 0;
  while (true) {
    const { data } = await supabase
      .from('topics')
      .select('id, name, subject_id, grade_level_min')
      .range(page * PAGE_SIZE, (page + 1) * PAGE_SIZE - 1);
    if (!data || data.length === 0) break;
    remainingTopics = remainingTopics.concat(data);
    if (data.length < PAGE_SIZE) break;
    page++;
  }

  const remainingGroups = new Map();
  for (const t of remainingTopics || []) {
    const key = `${t.name}|${t.subject_id}|${t.grade_level_min}`;
    if (!remainingGroups.has(key)) {
      remainingGroups.set(key, []);
    }
    remainingGroups.get(key).push(t);
  }

  const remainingDupes = [...remainingGroups.values()].filter(g => g.length > 1).length;
  console.log(`   Remaining duplicate groups: ${remainingDupes}`);

  console.log('\n' + '='.repeat(60));
  console.log('DONE');
  console.log('='.repeat(60));
}

main().catch(console.error);
