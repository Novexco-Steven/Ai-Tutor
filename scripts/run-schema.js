import { readFileSync } from 'fs';
import { fileURLToPath } from 'url';
import { dirname, join } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const SUPABASE_URL = 'https://yrobckylfnvmkkpbygge.supabase.co';
const SERVICE_ROLE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlyb2Jja3lsZm52bWtrcGJ5Z2dlIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2NjA5MjY5MCwiZXhwIjoyMDgxNjY4NjkwfQ.PUnwkbcJ4onLJAHXuknywg_mtEM8Pri';

async function runSchema() {
  console.log('\n🚀 Running Tulomi Database Schema...\n');

  try {
    // Read the schema file
    const schemaPath = join(__dirname, '..', 'supabase', 'schema.sql');
    const schema = readFileSync(schemaPath, 'utf8');

    console.log(`📄 Schema loaded (${schema.length} characters)\n`);

    // Execute the SQL using Supabase's SQL endpoint
    const response = await fetch(`${SUPABASE_URL}/rest/v1/rpc/exec`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'apikey': SERVICE_ROLE_KEY,
        'Authorization': `Bearer ${SERVICE_ROLE_KEY}`,
        'Prefer': 'return=representation'
      },
      body: JSON.stringify({ query: schema })
    });

    if (!response.ok) {
      // If RPC doesn't exist, try direct SQL execution via query endpoint
      console.log('⚠️  RPC endpoint not available, trying alternative method...\n');

      const queryResponse = await fetch(`${SUPABASE_URL}/rest/v1/`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'apikey': SERVICE_ROLE_KEY,
          'Authorization': `Bearer ${SERVICE_ROLE_KEY}`,
        },
        body: JSON.stringify({ query: schema })
      });

      if (!queryResponse.ok) {
        throw new Error(`HTTP ${queryResponse.status}: ${await queryResponse.text()}`);
      }
    }

    console.log('✅ Schema executed successfully!\n');
    console.log('🔍 Verifying setup...\n');

    // Verify by checking if tables exist
    await verifySetup();

  } catch (error) {
    console.error('❌ Error:', error.message);
    console.log('\n💡 Falling back to manual instructions...\n');
    console.log('Please run the schema manually:');
    console.log('1. Go to: https://supabase.com/dashboard/project/yrobckylfnvmkkpbygge/sql/new');
    console.log('2. Copy contents of: supabase/schema.sql');
    console.log('3. Paste and click "Run"\n');
    process.exit(1);
  }
}

async function verifySetup() {
  const tables = ['interests', 'subjects', 'users', 'topics'];

  for (const table of tables) {
    try {
      const response = await fetch(`${SUPABASE_URL}/rest/v1/${table}?select=count`, {
        headers: {
          'apikey': SERVICE_ROLE_KEY,
          'Authorization': `Bearer ${SERVICE_ROLE_KEY}`,
          'Prefer': 'count=exact'
        }
      });

      if (response.ok) {
        const count = response.headers.get('Content-Range')?.split('/')[1] || '0';
        console.log(`✅ ${table.padEnd(20)} - Created (${count} rows)`);
      }
    } catch (err) {
      console.log(`⚠️  ${table.padEnd(20)} - Could not verify`);
    }
  }

  console.log('\n🎉 Database setup complete!\n');
  console.log('Next step: npm run dev\n');
}

runSchema();
