import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.VITE_SUPABASE_URL || 'https://yrobckylfnvmkkpbygge.supabase.co';
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlyb2Jja3lsZm52bWtrcGJ5Z2dlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYwOTI2OTAsImV4cCI6MjA4MTY2ODY5MH0.EmmmLEYRVmxTvohY0_MEsgiRyubMmybExgoZP_olOI8';

const supabase = createClient(supabaseUrl, supabaseKey);

async function validateCurriculum() {
  console.log('\n📊 K-12 Curriculum Validation Report\n');
  console.log('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n');

  // Check subjects
  const { data: subjects, error: subjectError } = await supabase
    .from('subjects')
    .select('id, name');

  if (subjectError) {
    console.error('Error fetching subjects:', subjectError.message);
    return;
  }

  console.log(`📚 Subjects: ${subjects.length}`);
  subjects.forEach(s => console.log(`   - ${s.name}`));
  console.log();

  // Check units by grade
  const { data: units, error: unitError } = await supabase
    .from('units')
    .select('id, grade_level, name, subject_id');

  if (unitError) {
    console.error('Error fetching units:', unitError.message);
  } else {
    console.log(`📦 Units: ${units.length} total`);

    // Group by grade
    const unitsByGrade = {};
    units.forEach(u => {
      if (!unitsByGrade[u.grade_level]) unitsByGrade[u.grade_level] = 0;
      unitsByGrade[u.grade_level]++;
    });

    const grades = Object.keys(unitsByGrade).sort((a, b) => a - b);
    if (grades.length > 0) {
      grades.forEach(g => {
        console.log(`   Grade ${g}: ${unitsByGrade[g]} units`);
      });
    } else {
      console.log('   ⚠️  No units found - curriculum seeds may need to be run');
    }
  }
  console.log();

  // Check topics by grade (increase limit to get all rows - default is 1000)
  const { count: topicCount } = await supabase
    .from('topics')
    .select('*', { count: 'exact', head: true });

  // Fetch all topics using pagination to overcome 1000 row limit
  let allTopics = [];
  let offset = 0;
  const pageSize = 1000;

  while (true) {
    const { data: page, error } = await supabase
      .from('topics')
      .select('id, grade_level_min, grade_level_max, unit_id, name')
      .range(offset, offset + pageSize - 1);

    if (error) {
      console.error('Error fetching topics:', error.message);
      break;
    }

    allTopics = allTopics.concat(page);
    if (page.length < pageSize) break;
    offset += pageSize;
  }

  const topics = allTopics;
  const topicError = null;

  if (topicError) {
    console.error('Error fetching topics:', topicError.message);
  } else {
    console.log(`📝 Topics: ${topicCount} total (fetched ${topics.length})`);

    // Group by grade_level_min
    const topicsByGrade = {};
    let withUnit = 0;
    let withoutUnit = 0;

    topics.forEach(t => {
      if (!topicsByGrade[t.grade_level_min]) topicsByGrade[t.grade_level_min] = 0;
      topicsByGrade[t.grade_level_min]++;
      if (t.unit_id) withUnit++;
      else withoutUnit++;
    });

    const grades = Object.keys(topicsByGrade).sort((a, b) => a - b);
    grades.forEach(g => {
      console.log(`   Grade ${g}: ${topicsByGrade[g]} topics`);
    });

    console.log();
    console.log(`   📎 Topics with unit_id: ${withUnit}`);
    console.log(`   📭 Topics without unit_id: ${withoutUnit}`);

    // Sample some unit_ids to see if they look valid
    const sampleUnitIds = topics.filter(t => t.unit_id).slice(0, 5).map(t => t.unit_id);
    if (sampleUnitIds.length > 0) {
      console.log();
      console.log('   Sample unit_ids from topics:');
      sampleUnitIds.forEach(id => console.log(`   - ${id}`));
    }
  }

  // Check Grade 11-12 topics specifically
  const grade11_12 = topics.filter(t => t.grade_level_min >= 11);
  if (grade11_12.length > 0) {
    console.log('📋 Grade 11-12 Topics Detail:');
    grade11_12.forEach(t => {
      console.log(`   - [G${t.grade_level_min}] ${t.name} (unit: ${t.unit_id ? 'linked' : 'none'})`);
    });
    console.log();
  }

  console.log('\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n');

  // Summary
  const hasUnits = units && units.length > 0;
  const hasTopics = topics && topics.length > 0;
  const topicsLinked = topics && topics.some(t => t.unit_id);

  if (hasUnits && hasTopics && topicsLinked) {
    console.log('✅ Curriculum is fully set up with units and topics linked!\n');
  } else if (hasTopics && !hasUnits) {
    console.log('⚠️  Topics exist but no units - run the curriculum seed SQL files\n');
    console.log('   1. Go to Supabase SQL Editor');
    console.log('   2. Run: supabase/run_all_curriculum_seeds.sql\n');
  } else if (!hasTopics) {
    console.log('❌ No curriculum data found - run the full schema and seeds\n');
  }
}

validateCurriculum().catch(err => {
  console.error('Error:', err.message);
  process.exit(1);
});
