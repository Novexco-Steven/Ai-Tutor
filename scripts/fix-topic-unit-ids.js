/**
 * Fix topics with missing unit_id
 *
 * This script:
 * 1. Finds topics that have no unit_id
 * 2. Attempts to match them to appropriate units by subject and grade level
 * 3. Updates topics with matched unit_id
 *
 * Usage: node scripts/fix-topic-unit-ids.js [--dry-run] [--analyze]
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
const analyzeOnly = process.argv.includes('--analyze');

async function main() {
  console.log('='.repeat(60));
  console.log('FIX TOPICS WITH MISSING UNIT_ID');
  console.log('='.repeat(60));

  if (analyzeOnly) {
    console.log('\n*** ANALYZE MODE - Only showing analysis ***\n');
  } else if (isDryRun) {
    console.log('\n*** DRY RUN MODE - No changes will be made ***\n');
  }

  // Step 1: Find topics without unit_id
  console.log('\n1. Finding topics without unit_id...');

  const { data: topicsWithoutUnit, error: topicsError } = await supabase
    .from('topics')
    .select('id, name, subject_id, grade_level_min, grade_level_max')
    .is('unit_id', null)
    .order('subject_id')
    .order('grade_level_min');

  if (topicsError) {
    console.error('Error fetching topics:', topicsError);
    process.exit(1);
  }

  console.log(`   Found ${topicsWithoutUnit?.length || 0} topics without unit_id`);

  if (!topicsWithoutUnit || topicsWithoutUnit.length === 0) {
    console.log('\n✓ All topics have unit_id!');
    return;
  }

  // Step 2: Get all subjects
  const { data: subjects, error: subjectsError } = await supabase
    .from('subjects')
    .select('id, name');

  if (subjectsError) {
    console.error('Error fetching subjects:', subjectsError);
    process.exit(1);
  }

  const subjectMap = new Map(subjects.map(s => [s.id, s.name]));

  // Step 3: Get all units
  console.log('\n2. Fetching all units...');

  const { data: allUnits, error: unitsError } = await supabase
    .from('units')
    .select('id, name, subject_id, grade_level')
    .order('subject_id')
    .order('grade_level');

  if (unitsError) {
    console.error('Error fetching units:', unitsError);
    process.exit(1);
  }

  console.log(`   Found ${allUnits?.length || 0} units`);

  // Group units by subject and grade
  const unitsBySubjectGrade = new Map();
  for (const unit of allUnits || []) {
    const key = `${unit.subject_id}-${unit.grade_level}`;
    if (!unitsBySubjectGrade.has(key)) {
      unitsBySubjectGrade.set(key, []);
    }
    unitsBySubjectGrade.get(key).push(unit);
  }

  // Step 4: Analyze topics by subject and grade
  console.log('\n3. Analyzing topics by subject and grade...');

  const bySubjectGrade = new Map();
  for (const topic of topicsWithoutUnit) {
    const subjectName = subjectMap.get(topic.subject_id) || 'Unknown';
    const key = `${subjectName} - Grade ${topic.grade_level_min}`;

    if (!bySubjectGrade.has(key)) {
      bySubjectGrade.set(key, []);
    }
    bySubjectGrade.get(key).push(topic);
  }

  // Sort and display
  const sortedKeys = [...bySubjectGrade.keys()].sort();
  console.log('\n   Topics missing unit_id by subject/grade:');
  console.log('   ' + '-'.repeat(50));

  for (const key of sortedKeys) {
    const topics = bySubjectGrade.get(key);
    console.log(`   ${key}: ${topics.length} topics`);
    if (analyzeOnly) {
      for (const topic of topics.slice(0, 5)) {
        console.log(`     - ${topic.name}`);
      }
      if (topics.length > 5) {
        console.log(`     ... and ${topics.length - 5} more`);
      }
    }
  }

  // Step 5: Try to match topics to units
  console.log('\n4. Attempting to match topics to units...');

  const matches = [];
  const noMatch = [];
  const multipleMatches = [];

  for (const topic of topicsWithoutUnit) {
    const gradeLevel = topic.grade_level_min;
    const key = `${topic.subject_id}-${gradeLevel}`;
    const availableUnits = unitsBySubjectGrade.get(key) || [];

    if (availableUnits.length === 0) {
      noMatch.push({
        topic,
        reason: 'No units for this subject/grade'
      });
    } else if (availableUnits.length === 1) {
      // Only one unit for this subject/grade, auto-assign
      matches.push({
        topic,
        unit: availableUnits[0],
        confidence: 'high'
      });
    } else {
      // Multiple units - try to find best match by name similarity
      const topicWords = topic.name.toLowerCase().split(/\s+/);
      let bestMatch = null;
      let bestScore = 0;

      for (const unit of availableUnits) {
        const unitWords = unit.name.toLowerCase().split(/\s+/);
        const score = topicWords.filter(w => unitWords.some(uw => uw.includes(w) || w.includes(uw))).length;

        if (score > bestScore) {
          bestScore = score;
          bestMatch = unit;
        }
      }

      if (bestMatch && bestScore > 0) {
        matches.push({
          topic,
          unit: bestMatch,
          confidence: bestScore >= 2 ? 'high' : 'medium'
        });
      } else {
        multipleMatches.push({
          topic,
          units: availableUnits,
          reason: 'Multiple units available, could not determine best match'
        });
      }
    }
  }

  console.log(`   Matches found: ${matches.length}`);
  console.log(`   - High confidence: ${matches.filter(m => m.confidence === 'high').length}`);
  console.log(`   - Medium confidence: ${matches.filter(m => m.confidence === 'medium').length}`);
  console.log(`   No match (no units exist): ${noMatch.length}`);
  console.log(`   Ambiguous (multiple units): ${multipleMatches.length}`);

  // Step 6: Show details for no-match cases
  if (noMatch.length > 0) {
    console.log('\n5. Topics with no available unit (need units created first):');
    console.log('   ' + '-'.repeat(50));

    const noMatchBySubjectGrade = new Map();
    for (const { topic } of noMatch) {
      const subjectName = subjectMap.get(topic.subject_id) || 'Unknown';
      const key = `${subjectName} - Grade ${topic.grade_level_min}`;
      if (!noMatchBySubjectGrade.has(key)) {
        noMatchBySubjectGrade.set(key, []);
      }
      noMatchBySubjectGrade.get(key).push(topic.name);
    }

    for (const [key, topicNames] of noMatchBySubjectGrade) {
      console.log(`\n   ${key}: ${topicNames.length} topics`);
      for (const name of topicNames.slice(0, 3)) {
        console.log(`     - ${name}`);
      }
      if (topicNames.length > 3) {
        console.log(`     ... and ${topicNames.length - 3} more`);
      }
    }
  }

  // Step 7: Apply matches
  if (!analyzeOnly && matches.length > 0) {
    if (isDryRun) {
      console.log('\n6. DRY RUN - Would apply these matches:');
      for (const { topic, unit, confidence } of matches.slice(0, 20)) {
        const subjectName = subjectMap.get(topic.subject_id) || 'Unknown';
        console.log(`   [${confidence}] "${topic.name}" -> Unit "${unit.name}" (${subjectName} G${topic.grade_level_min})`);
      }
      if (matches.length > 20) {
        console.log(`   ... and ${matches.length - 20} more`);
      }
    } else {
      console.log(`\n6. Applying ${matches.length} unit assignments...`);

      let successCount = 0;
      let errorCount = 0;

      for (const { topic, unit } of matches) {
        const { error: updateError } = await supabase
          .from('topics')
          .update({ unit_id: unit.id })
          .eq('id', topic.id);

        if (updateError) {
          console.error(`   Error updating "${topic.name}":`, updateError.message);
          errorCount++;
        } else {
          successCount++;
        }
      }

      console.log(`\n   ✓ Successfully updated: ${successCount}`);
      if (errorCount > 0) {
        console.log(`   ✗ Errors: ${errorCount}`);
      }
    }
  }

  // Step 8: Summary
  console.log('\n' + '='.repeat(60));
  console.log('SUMMARY');
  console.log('='.repeat(60));
  console.log(`Total topics without unit_id: ${topicsWithoutUnit.length}`);
  console.log(`Can be auto-matched: ${matches.length}`);
  console.log(`Need manual review (ambiguous): ${multipleMatches.length}`);
  console.log(`Need units created first: ${noMatch.length}`);

  if (noMatch.length > 0) {
    console.log('\n⚠️  ACTION NEEDED: Create units for subjects/grades that have topics but no units');
  }

  console.log('='.repeat(60));
}

main().catch(console.error);
