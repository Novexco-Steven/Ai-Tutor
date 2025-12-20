import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.VITE_SUPABASE_URL || 'https://yrobckylfnvmkkpbygge.supabase.co';
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlyb2Jja3lsZm52bWtrcGJ5Z2dlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYwOTI2OTAsImV4cCI6MjA4MTY2ODY5MH0.EmmmLEYRVmxTvohY0_MEsgiRyubMmybExgoZP_olOI8';

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkUnits() {
  console.log('\n📦 Grade 11-12 Units Check\n');

  const { data: units, error } = await supabase
    .from('units')
    .select('grade_level, name, subject_id')
    .in('grade_level', [11, 12])
    .order('grade_level')
    .order('name');

  if (error) {
    console.error('Error:', error.message);
    return;
  }

  console.log(`Found ${units.length} units for grades 11-12:\n`);

  let currentGrade = null;
  units.forEach(u => {
    if (u.grade_level !== currentGrade) {
      currentGrade = u.grade_level;
      console.log(`\nGrade ${currentGrade}:`);
    }
    console.log(`  - ${u.name}`);
  });

  // Check if specific units exist
  console.log('\n\nChecking for expected Math units...');
  const expectedMathUnits = [
    'Polynomial and Rational Functions',
    'Quadratic Functions',
    'Exponential and Logarithmic Functions',
    'Sequences, Series, and Probability',
    'Functions and Their Graphs',
    'Trigonometric Functions',
    'Analytic Geometry',
    'Limits and Introduction to Calculus'
  ];

  for (const unitName of expectedMathUnits) {
    const found = units.find(u => u.name === unitName);
    console.log(`  ${found ? '✅' : '❌'} ${unitName}`);
  }
}

checkUnits().catch(console.error);
