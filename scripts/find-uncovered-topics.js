/**
 * Find topics that still don't have prompts
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

async function getAllWithPagination(table, select) {
  let allData = [];
  let page = 0;
  const pageSize = 1000;

  while (true) {
    const { data, error } = await supabase
      .from(table)
      .select(select)
      .range(page * pageSize, (page + 1) * pageSize - 1);

    if (error) throw error;
    if (!data || data.length === 0) break;
    allData = allData.concat(data);
    if (data.length < pageSize) break;
    page++;
  }

  return allData;
}

async function main() {
  const subjects = await getAllWithPagination('subjects', 'id, name');
  const topics = await getAllWithPagination('topics', 'id, name, grade_level_min, subject_id');
  const prompts = await getAllWithPagination('prompt_templates', 'id, name, topic_id');

  const subjectMap = new Map(subjects.map(s => [s.id, s.name]));

  // Find topics with linked prompts
  const coveredTopicIds = new Set(prompts.filter(p => p.topic_id).map(p => p.topic_id));

  // Find uncovered topics
  const uncovered = topics.filter(t => !coveredTopicIds.has(t.id));

  console.log(`Total topics: ${topics.length}`);
  console.log(`Covered topics: ${coveredTopicIds.size}`);
  console.log(`Uncovered topics: ${uncovered.length}\n`);

  // Group by grade and subject
  const byGrade = {};
  for (const t of uncovered) {
    const grade = t.grade_level_min;
    const subject = subjectMap.get(t.subject_id) || 'Unknown';

    if (!byGrade[grade]) byGrade[grade] = {};
    if (!byGrade[grade][subject]) byGrade[grade][subject] = [];
    byGrade[grade][subject].push(t.name);
  }

  // Print
  for (const grade of Object.keys(byGrade).sort((a, b) => a - b)) {
    console.log(`\n=== GRADE ${grade === '0' ? 'K' : grade} ===`);
    for (const [subject, topics] of Object.entries(byGrade[grade]).sort()) {
      console.log(`  ${subject}: ${topics.length} topics`);
      topics.forEach(t => console.log(`    - ${t}`));
    }
  }

  // Check for prompts that might match by name but not linked
  console.log('\n\n=== PROMPTS WITHOUT TOPIC_ID ===\n');

  const unlinkedPrompts = prompts.filter(p =>
    p.topic_id === null &&
    p.name.includes('Topic Guide')
  );

  console.log(`Unlinked topic prompts: ${unlinkedPrompts.length}`);

  // Try to match
  const topicMap = new Map();
  topics.forEach(t => {
    const key = `${t.name.toLowerCase()}|${t.grade_level_min}`;
    topicMap.set(key, t);
  });

  let matchable = 0;
  for (const p of unlinkedPrompts) {
    // Try to extract topic name and grade from prompt name
    const match = p.name.match(/^(.+?)\s*\(Grade\s*([K\d]+)\)\s*Topic Guide$/i);
    if (match) {
      const topicName = match[1].trim();
      const grade = match[2] === 'K' ? 0 : parseInt(match[2]);
      const key = `${topicName.toLowerCase()}|${grade}`;

      if (topicMap.has(key)) {
        matchable++;
      }
    }
  }

  console.log(`Can be linked by name matching: ${matchable}`);
}

main().catch(console.error);
