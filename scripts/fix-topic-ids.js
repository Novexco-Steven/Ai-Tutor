/**
 * Fix missing topic_ids in prompt_templates
 * Updates prompts that have null topic_id by matching the topic name from the prompt name
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

async function main() {
  // Get all topics (need to paginate to get more than 1000)
  let allTopics = [];
  let page = 0;
  const pageSize = 1000;

  while (true) {
    const { data: topics } = await supabase
      .from('topics')
      .select('id, name, grade_level_min')
      .range(page * pageSize, (page + 1) * pageSize - 1);

    if (!topics || topics.length === 0) break;
    allTopics = allTopics.concat(topics);
    if (topics.length < pageSize) break;
    page++;
  }

  const topics = allTopics;
  console.log(`Loaded ${topics.length} topics`);

  // Get prompts with null topic_id
  const { data: prompts } = await supabase
    .from('prompt_templates')
    .select('id, name, topic_id')
    .eq('prompt_type', 'topic_global')
    .is('topic_id', null);

  console.log(`Found ${prompts?.length || 0} prompts with null topic_id\n`);

  let fixed = 0;
  let notFound = 0;

  for (const prompt of prompts || []) {
    // Extract topic name and grade from prompt name
    // Format: "Topic Name (Grade X) Topic Guide"
    const match = prompt.name.match(/^(.+?)\s*\(Grade\s*(\d+)\)\s*Topic Guide$/i);

    if (!match) {
      console.log(`Could not parse: ${prompt.name}`);
      notFound++;
      continue;
    }

    const topicName = match[1].trim();
    const grade = parseInt(match[2]);

    // Find matching topic
    const topic = topics.find(t =>
      t.name.toLowerCase() === topicName.toLowerCase() &&
      t.grade_level_min === grade
    );

    if (!topic) {
      console.log(`Topic not found: "${topicName}" grade ${grade}`);
      notFound++;
      continue;
    }

    // Update the prompt
    const { error } = await supabase
      .from('prompt_templates')
      .update({ topic_id: topic.id })
      .eq('id', prompt.id);

    if (error) {
      console.log(`Error updating ${prompt.name}: ${error.message}`);
    } else {
      fixed++;
    }
  }

  console.log(`\nFixed: ${fixed}`);
  console.log(`Not found: ${notFound}`);
}

main().catch(console.error);
