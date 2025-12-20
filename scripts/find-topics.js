import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.VITE_SUPABASE_URL || 'https://yrobckylfnvmkkpbygge.supabase.co';
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlyb2Jja3lsZm52bWtrcGJ5Z2dlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYwOTI2OTAsImV4cCI6MjA4MTY2ODY5MH0.EmmmLEYRVmxTvohY0_MEsgiRyubMmybExgoZP_olOI8';

const supabase = createClient(supabaseUrl, supabaseKey);

async function findTopics() {
  // Search for specific topic names that should be in Grade 11
  const searchTerms = ['Polynomial Operations', 'Factoring Polynomials', 'Quadratic Formula', 'Stoichiometry'];

  console.log('\n🔍 Searching for specific topic names...\n');

  for (const term of searchTerms) {
    const { data, error } = await supabase
      .from('topics')
      .select('name, grade_level_min, grade_level_max, unit_id')
      .ilike('name', `%${term}%`);

    if (error) {
      console.log(`❌ Error searching for "${term}": ${error.message}`);
    } else if (data.length === 0) {
      console.log(`❌ "${term}" - NOT FOUND`);
    } else {
      console.log(`✅ "${term}" - Found ${data.length} match(es):`);
      data.forEach(t => {
        console.log(`   Grade ${t.grade_level_min}: ${t.name} (unit: ${t.unit_id ? 'linked' : 'none'})`);
      });
    }
  }

  // Also check total count
  const { count } = await supabase.from('topics').select('*', { count: 'exact', head: true });
  console.log(`\nTotal topics in database: ${count}`);
}

findTopics().catch(console.error);
