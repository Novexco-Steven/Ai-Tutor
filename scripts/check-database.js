import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.VITE_SUPABASE_URL || 'https://yrobckylfnvmkkpbygge.supabase.co';
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlyb2Jja3lsZm52bWtrcGJ5Z2dlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYwOTI2OTAsImV4cCI6MjA4MTY2ODY5MH0.EmmmLEYRVmxTvohY0_MEsgiRyubMmybExgoZP_olOI8';

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkDatabase() {
  console.log('\n🔍 LearnLit Database Status Check\n');
  console.log('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n');

  const checks = [
    { table: 'interests', description: 'Interests', expectedCount: 35 },
    { table: 'subjects', description: 'Subjects', expectedCount: 4 },
    { table: 'users', description: 'Users', expectedCount: null },
    { table: 'topics', description: 'Topics', expectedCount: null },
    { table: 'user_progress', description: 'User Progress', expectedCount: null },
    { table: 'session_logs', description: 'Session Logs', expectedCount: null },
  ];

  let allGood = true;
  let setupNeeded = false;

  for (const check of checks) {
    try {
      const { data, error, count } = await supabase
        .from(check.table)
        .select('*', { count: 'exact', head: true });

      if (error) {
        if (error.code === '42P01') {
          console.log(`❌ ${check.description.padEnd(20)} - Table does not exist`);
          allGood = false;
          setupNeeded = true;
        } else {
          console.log(`⚠️  ${check.description.padEnd(20)} - Error: ${error.message}`);
          allGood = false;
        }
      } else {
        const countStr = count !== null ? `(${count} rows)` : '';
        if (check.expectedCount && count < check.expectedCount) {
          console.log(`⚠️  ${check.description.padEnd(20)} - Exists but missing data ${countStr}`);
          setupNeeded = true;
        } else {
          console.log(`✅ ${check.description.padEnd(20)} - Ready ${countStr}`);
        }
      }
    } catch (err) {
      console.log(`❌ ${check.description.padEnd(20)} - Error: ${err.message}`);
      allGood = false;
    }
  }

  console.log('\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n');

  if (allGood && !setupNeeded) {
    console.log('🎉 Database is fully set up and ready!\n');
    console.log('✅ You can now run: npm run dev\n');
    return true;
  } else if (setupNeeded) {
    console.log('⚠️  Database exists but needs seed data!\n');
    console.log('📋 To fix this:\n');
    console.log('1. Go to: https://supabase.com/dashboard/project/yrobckylfnvmkkpbygge/sql/new');
    console.log('2. Copy the contents of: supabase/schema.sql');
    console.log('3. Paste and click "Run"\n');
    return false;
  } else {
    console.log('❌ Database setup required!\n');
    console.log('📋 Next Steps:\n');
    console.log('1. Open: https://supabase.com/dashboard/project/yrobckylfnvmkkpbygge/sql/new');
    console.log('2. Copy ALL contents from: supabase/schema.sql');
    console.log('3. Paste into SQL Editor');
    console.log('4. Click "Run" (or Cmd/Ctrl + Enter)');
    console.log('5. Wait for success message (5-10 seconds)');
    console.log('6. Run this script again to verify\n');
    console.log('💡 The schema creates all tables and loads 35+ interests!\n');
    return false;
  }
}

checkDatabase().then(ready => {
  process.exit(ready ? 0 : 1);
}).catch(err => {
  console.error('\n❌ Connection Error:', err.message);
  console.log('\n💡 Make sure your Supabase project is running and accessible.\n');
  process.exit(1);
});
