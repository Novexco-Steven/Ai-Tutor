import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

async function main() {
  // Check specific topic
  const { data, error } = await supabase
    .from('topics')
    .select('id, name, grade_level_min')
    .eq('name', 'Prehistoric Humans')
    .eq('grade_level_min', 10);

  console.log('Exact match for "Prehistoric Humans" grade 10:');
  console.log(data);

  // Check with ilike
  const { data: data2 } = await supabase
    .from('topics')
    .select('id, name, grade_level_min')
    .ilike('name', '%prehistoric%');

  console.log('\nPartial match for "prehistoric":');
  console.log(data2);

  // Check a topic we know was inserted
  const { data: data3 } = await supabase
    .from('prompt_templates')
    .select('id, name, topic_id')
    .ilike('name', '%Prehistoric%')
    .limit(5);

  console.log('\nPrompt templates with "Prehistoric":');
  console.log(data3);
}

main().catch(console.error);
