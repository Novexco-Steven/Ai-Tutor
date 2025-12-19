import { createClient } from '@supabase/supabase-js';
import { readFileSync } from 'fs';
import { fileURLToPath } from 'url';
import { dirname, join } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const supabaseUrl = 'https://yrobckylfnvmkkpbygge.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlyb2Jja3lsZm52bWtrcGJ5Z2dlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYwOTI2OTAsImV4cCI6MjA4MTY2ODY5MH0.EmmmLEYRVmxTvohY0_MEsgiRyubMmybExgoZP_olOI8';

const supabase = createClient(supabaseUrl, supabaseKey);

async function setupDatabase() {
  console.log('🚀 Starting database setup...\n');

  try {
    // Read the schema file
    const schemaPath = join(__dirname, '..', 'supabase', 'schema.sql');
    const schema = readFileSync(schemaPath, 'utf8');

    console.log('📄 Schema file loaded');
    console.log(`📊 Schema size: ${schema.length} characters\n`);

    // Note: The anon key typically doesn't have DDL permissions
    // We'll try to execute via RPC or suggest manual execution
    console.log('⚠️  Note: DDL operations require elevated permissions.');
    console.log('The anon key may not have permission to create tables.\n');

    // Try to check if we can at least connect
    const { data, error } = await supabase.from('_test').select('*').limit(1);

    if (error && error.code !== 'PGRST204' && error.code !== '42P01') {
      console.error('❌ Connection error:', error.message);
      console.log('\n💡 You need to run the schema manually in Supabase SQL Editor:');
      console.log('   https://supabase.com/dashboard/project/yrobckylfnvmkkpbygge/sql/new');
      return;
    }

    console.log('✅ Connected to Supabase successfully!\n');
    console.log('📋 Please run the schema manually using one of these methods:\n');
    console.log('Method 1: Supabase Dashboard (Recommended)');
    console.log('  1. Go to: https://supabase.com/dashboard/project/yrobckylfnvmkkpbygge/sql/new');
    console.log('  2. Copy contents of: supabase/schema.sql');
    console.log('  3. Paste and click "Run"\n');

    console.log('Method 2: Supabase CLI (if installed)');
    console.log('  supabase db push\n');

    // Check if tables already exist
    console.log('🔍 Checking if database is already set up...\n');

    const checks = [
      { table: 'interests', description: 'Interests table' },
      { table: 'subjects', description: 'Subjects table' },
      { table: 'users', description: 'Users table' },
    ];

    for (const check of checks) {
      const { data, error } = await supabase.from(check.table).select('id').limit(1);

      if (error) {
        if (error.code === '42P01') {
          console.log(`❌ ${check.description} - Not found`);
        } else {
          console.log(`⚠️  ${check.description} - ${error.message}`);
        }
      } else {
        console.log(`✅ ${check.description} - Already exists`);
      }
    }

  } catch (error) {
    console.error('\n❌ Error:', error.message);
  }
}

setupDatabase();
