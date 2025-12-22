/**
 * Fix prompt_templates unit_id population
 *
 * This script populates the unit_id column in prompt_templates
 * for records that have a topic_id but missing unit_id.
 *
 * The unit_id is derived from the topic's unit_id in the topics table.
 *
 * Usage: node scripts/fix-prompt-template-unit-ids.js [--dry-run]
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('Missing Supabase credentials');
  console.error('Set VITE_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);
const isDryRun = process.argv.includes('--dry-run');

async function main() {
  console.log('='.repeat(60));
  console.log('FIX PROMPT_TEMPLATES UNIT_ID POPULATION');
  console.log('='.repeat(60));

  if (isDryRun) {
    console.log('\n*** DRY RUN MODE - No changes will be made ***\n');
  }

  // Step 1: Find ALL prompt_templates with topic_id but no unit_id (paginated)
  console.log('\n1. Finding prompt_templates with topic_id but missing unit_id...');

  let missingUnitId = [];
  let page = 0;
  const PAGE_SIZE = 1000;

  while (true) {
    const { data, error: fetchError } = await supabase
      .from('prompt_templates')
      .select('id, name, topic_id, unit_id, prompt_type')
      .not('topic_id', 'is', null)
      .is('unit_id', null)
      .range(page * PAGE_SIZE, (page + 1) * PAGE_SIZE - 1);

    if (fetchError) {
      console.error('Error fetching prompt_templates:', fetchError);
      process.exit(1);
    }

    if (!data || data.length === 0) break;

    missingUnitId = missingUnitId.concat(data);
    console.log(`   Fetched page ${page + 1}: ${data.length} records (total: ${missingUnitId.length})`);

    if (data.length < PAGE_SIZE) break;
    page++;
  }

  console.log(`   Found ${missingUnitId.length} total records with topic_id but no unit_id`);

  if (!missingUnitId || missingUnitId.length === 0) {
    console.log('\n✓ All prompt_templates with topic_id already have unit_id populated!');
    return;
  }

  // Step 2: Get unique topic_ids
  const uniqueTopicIds = [...new Set(missingUnitId.map(r => r.topic_id))];
  console.log(`\n2. Looking up unit_id for ${uniqueTopicIds.length} unique topics...`);

  // Step 3: Fetch topics with their unit_id (in batches to avoid URL length limits)
  const topicToUnit = new Map();
  let topicsWithUnit = 0;
  let topicsWithoutUnit = 0;
  const BATCH_SIZE = 100;

  for (let i = 0; i < uniqueTopicIds.length; i += BATCH_SIZE) {
    const batch = uniqueTopicIds.slice(i, i + BATCH_SIZE);
    const { data: topics, error: topicsError } = await supabase
      .from('topics')
      .select('id, name, unit_id')
      .in('id', batch);

    if (topicsError) {
      console.error('Error fetching topics batch:', topicsError);
      process.exit(1);
    }

    for (const topic of topics || []) {
      topicToUnit.set(topic.id, topic.unit_id);
      if (topic.unit_id) {
        topicsWithUnit++;
      } else {
        topicsWithoutUnit++;
      }
    }
  }

  console.log(`   Topics with unit_id: ${topicsWithUnit}`);
  console.log(`   Topics without unit_id: ${topicsWithoutUnit}`);

  // Step 4: Prepare updates
  const updates = [];
  const noUnitAvailable = [];

  for (const record of missingUnitId) {
    const unitId = topicToUnit.get(record.topic_id);
    if (unitId) {
      updates.push({
        id: record.id,
        unit_id: unitId,
        name: record.name
      });
    } else {
      noUnitAvailable.push(record);
    }
  }

  console.log(`\n3. Update summary:`);
  console.log(`   Records to update with unit_id: ${updates.length}`);
  console.log(`   Records where topic has no unit_id: ${noUnitAvailable.length}`);

  if (noUnitAvailable.length > 0) {
    console.log('\n   Records with topics that have no unit_id (cannot be fixed):');
    for (const record of noUnitAvailable.slice(0, 10)) {
      console.log(`   - ${record.name} (prompt_type: ${record.prompt_type})`);
    }
    if (noUnitAvailable.length > 10) {
      console.log(`   ... and ${noUnitAvailable.length - 10} more`);
    }
  }

  // Step 5: Apply updates
  if (updates.length > 0 && !isDryRun) {
    console.log(`\n4. Applying ${updates.length} updates...`);

    let successCount = 0;
    let errorCount = 0;

    for (const update of updates) {
      const { error: updateError } = await supabase
        .from('prompt_templates')
        .update({ unit_id: update.unit_id })
        .eq('id', update.id);

      if (updateError) {
        console.error(`   Error updating "${update.name}":`, updateError.message);
        errorCount++;
      } else {
        successCount++;
      }
    }

    console.log(`\n   ✓ Successfully updated: ${successCount}`);
    if (errorCount > 0) {
      console.log(`   ✗ Errors: ${errorCount}`);
    }
  } else if (isDryRun && updates.length > 0) {
    console.log('\n4. DRY RUN - Would update these records:');
    for (const update of updates.slice(0, 20)) {
      console.log(`   - ${update.name}`);
    }
    if (updates.length > 20) {
      console.log(`   ... and ${updates.length - 20} more`);
    }
  }

  // Step 6: Final verification
  if (!isDryRun) {
    console.log('\n5. Verifying results...');

    const { data: stillMissing, error: verifyError } = await supabase
      .from('prompt_templates')
      .select('id, name, topic_id, unit_id')
      .not('topic_id', 'is', null)
      .is('unit_id', null);

    if (verifyError) {
      console.error('Error verifying:', verifyError);
    } else {
      const fixableRemaining = stillMissing?.filter(r => {
        const unitId = topicToUnit.get(r.topic_id);
        return unitId != null;
      }).length || 0;

      console.log(`   Records still missing unit_id: ${stillMissing?.length || 0}`);
      console.log(`   (${fixableRemaining} fixable, ${(stillMissing?.length || 0) - fixableRemaining} topics have no unit)`);
    }
  }

  console.log('\n' + '='.repeat(60));
  console.log('DONE');
  console.log('='.repeat(60));
}

main().catch(console.error);
