import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

async function main() {
  const { data: topics } = await supabase.from('topics').select('id, name, grade_level_min');

  console.log('Total topics loaded:', topics.length);

  // Check for Prehistoric Humans
  const ph = topics.filter(t => t.name.includes('Prehistoric'));
  console.log('\nTopics with "Prehistoric":', ph);

  // Check if find works
  const found = topics.find(t =>
    t.name.toLowerCase() === 'prehistoric humans' &&
    t.grade_level_min === 10
  );
  console.log('\nFound via find():', found);

  // Check grade 10 history topics
  const g10 = topics.filter(t => t.grade_level_min === 10);
  console.log('\nGrade 10 topic count:', g10.length);
  console.log('First 10:', g10.slice(0, 10).map(t => t.name));
}

main().catch(console.error);
