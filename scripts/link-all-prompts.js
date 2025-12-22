/**
 * Link ALL prompts to their topics
 * Handles multiple naming formats
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
  console.log('Loading data...');
  const topics = await getAllWithPagination('topics', 'id, name, grade_level_min');
  const prompts = await getAllWithPagination('prompt_templates', 'id, name, topic_id, prompt_type');

  console.log(`  Topics: ${topics.length}`);
  console.log(`  Prompts: ${prompts.length}`);

  // Build topic lookup maps
  const topicByNameGrade = new Map();
  const topicByName = new Map();

  for (const t of topics) {
    const key = `${t.name.toLowerCase()}|${t.grade_level_min}`;
    topicByNameGrade.set(key, t);

    // Also index by just name (for prompts without grade)
    if (!topicByName.has(t.name.toLowerCase())) {
      topicByName.set(t.name.toLowerCase(), []);
    }
    topicByName.get(t.name.toLowerCase()).push(t);
  }

  // Find prompts that need linking
  const unlinkedPrompts = prompts.filter(p =>
    p.topic_id === null &&
    p.prompt_type === 'topic_global'
  );

  console.log(`\nUnlinked topic_global prompts: ${unlinkedPrompts.length}\n`);

  let linked = 0;
  let notFound = 0;

  for (const prompt of unlinkedPrompts) {
    // Try multiple name extraction patterns
    let topicName = null;
    let grade = null;

    // Pattern 1: "Topic Name (Grade X) Topic Guide"
    let match = prompt.name.match(/^(.+?)\s*\(Grade\s*([K\d]+)\)\s*Topic Guide$/i);
    if (match) {
      topicName = match[1].trim();
      grade = match[2] === 'K' ? 0 : parseInt(match[2]);
    }

    // Pattern 2: "Topic Name Topic Guide" (no grade)
    if (!topicName) {
      match = prompt.name.match(/^(.+?)\s*Topic Guide$/i);
      if (match) {
        topicName = match[1].trim();
      }
    }

    // Pattern 3: "Topic Name Teaching Guide"
    if (!topicName) {
      match = prompt.name.match(/^(.+?)\s*Teaching Guide$/i);
      if (match) {
        topicName = match[1].trim();
      }
    }

    // Pattern 4: Just the topic name (exact match)
    if (!topicName) {
      topicName = prompt.name;
    }

    // Try to find matching topic
    let topic = null;

    // First try exact name + grade match
    if (grade !== null) {
      const key = `${topicName.toLowerCase()}|${grade}`;
      topic = topicByNameGrade.get(key);
    }

    // If not found, try just by name
    if (!topic) {
      const matches = topicByName.get(topicName.toLowerCase()) || [];
      if (matches.length === 1) {
        topic = matches[0];
      } else if (matches.length > 1 && grade !== null) {
        // Multiple matches, try to find one with matching grade
        topic = matches.find(t => t.grade_level_min === grade);
      }
    }

    if (!topic) {
      console.log(`Not found: "${prompt.name}"`);
      notFound++;
      continue;
    }

    // Update the prompt with topic_id
    const { error } = await supabase
      .from('prompt_templates')
      .update({ topic_id: topic.id })
      .eq('id', prompt.id);

    if (error) {
      console.log(`Error updating ${prompt.name}: ${error.message}`);
      notFound++;
    } else {
      linked++;
    }
  }

  console.log(`\nLinked: ${linked}`);
  console.log(`Not found: ${notFound}`);

  // Final coverage check
  const { count: totalTopics } = await supabase
    .from('topics')
    .select('*', { count: 'exact', head: true });

  const { count: linkedPrompts } = await supabase
    .from('prompt_templates')
    .select('*', { count: 'exact', head: true })
    .eq('prompt_type', 'topic_global')
    .not('topic_id', 'is', null);

  const coverage = ((linkedPrompts || 0) / (totalTopics || 1) * 100).toFixed(1);
  console.log(`\nFinal coverage: ${linkedPrompts}/${totalTopics} topics (${coverage}%)`);
}

main().catch(console.error);
