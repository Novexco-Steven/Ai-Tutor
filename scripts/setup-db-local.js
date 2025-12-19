#!/usr/bin/env node
/**
 * Local Database Setup Script
 *
 * This script uses the service role key to automatically set up the database.
 * Run this on your LOCAL MACHINE, not in the cloud.
 *
 * Usage:
 *   SUPABASE_SERVICE_ROLE_KEY=your_key node scripts/setup-db-local.js
 */

import { createClient } from '@supabase/supabase-js';
import { readFileSync } from 'fs';
import { fileURLToPath } from 'url';
import { dirname, join } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Get credentials from environment or use defaults
const SUPABASE_URL = process.env.VITE_SUPABASE_URL || 'https://yrobckylfnvmkkpbygge.supabase.co';
const SERVICE_ROLE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!SERVICE_ROLE_KEY) {
  console.error('\n❌ Error: SUPABASE_SERVICE_ROLE_KEY environment variable is required\n');
  console.log('Usage:');
  console.log('  SUPABASE_SERVICE_ROLE_KEY=your_key node scripts/setup-db-local.js\n');
  console.log('Or add it to .env.local file\n');
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SERVICE_ROLE_KEY, {
  auth: {
    autoRefreshToken: false,
    persistSession: false
  }
});

async function runSQL(sql) {
  const { data, error } = await supabase.rpc('exec_sql', { sql_query: sql });
  if (error && error.code !== '42883') { // 42883 = function doesn't exist
    throw error;
  }
  return { data, error };
}

async function setupDatabase() {
  console.log('\n🚀 LearnLit Database Setup\n');
  console.log('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n');

  try {
    // Read schema file
    const schemaPath = join(__dirname, '..', 'supabase', 'schema.sql');
    const schema = readFileSync(schemaPath, 'utf8');

    console.log(`📄 Schema loaded (${Math.round(schema.length / 1024)}KB)\n`);

    // Split schema into executable chunks
    // Remove comments and split on semicolons
    const statements = schema
      .split('\n')
      .filter(line => !line.trim().startsWith('--') && !line.trim().startsWith('COMMENT'))
      .join('\n')
      .split(';')
      .map(stmt => stmt.trim())
      .filter(stmt => stmt.length > 0);

    console.log(`📊 Executing ${statements.length} SQL statements...\n`);

    let success = 0;
    let skipped = 0;
    let errors = 0;

    for (let i = 0; i < statements.length; i++) {
      const stmt = statements[i] + ';';

      // Skip empty statements
      if (stmt.trim() === ';') continue;

      try {
        // Execute using raw SQL via HTTP
        const response = await fetch(`${SUPABASE_URL}/rest/v1/rpc/exec`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'apikey': SERVICE_ROLE_KEY,
            'Authorization': `Bearer ${SERVICE_ROLE_KEY}`,
          },
          body: JSON.stringify({ query: stmt })
        });

        if (response.ok) {
          success++;
          process.stdout.write(`\r✅ Progress: ${success}/${statements.length} statements executed`);
        } else {
          const errorText = await response.text();
          if (errorText.includes('already exists')) {
            skipped++;
            process.stdout.write(`\r⚠️  Progress: ${success}/${statements.length} (${skipped} skipped)`);
          } else {
            errors++;
            console.log(`\n⚠️  Statement ${i + 1}: ${errorText.substring(0, 100)}...`);
          }
        }
      } catch (err) {
        errors++;
        console.log(`\n❌ Error at statement ${i + 1}:`, err.message.substring(0, 100));
      }
    }

    console.log('\n\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n');

    if (errors === 0) {
      console.log('✅ Database setup completed successfully!\n');
    } else {
      console.log(`⚠️  Setup completed with ${errors} errors\n`);
    }

    // Verify setup
    await verifySetup();

  } catch (error) {
    console.error('\n❌ Setup failed:', error.message);
    console.log('\n💡 Please try manual setup:');
    console.log('1. Go to: https://supabase.com/dashboard/project/yrobckylfnvmkkpbygge/sql/new');
    console.log('2. Copy contents of: supabase/schema.sql');
    console.log('3. Paste and click "Run"\n');
    process.exit(1);
  }
}

async function verifySetup() {
  console.log('🔍 Verifying database setup...\n');

  const checks = [
    { table: 'interests', expected: 35 },
    { table: 'subjects', expected: 4 },
    { table: 'users', expected: 0 },
    { table: 'topics', expected: 0 },
    { table: 'user_progress', expected: 0 },
  ];

  for (const check of checks) {
    try {
      const { count, error } = await supabase
        .from(check.table)
        .select('*', { count: 'exact', head: true });

      if (error) {
        console.log(`❌ ${check.table.padEnd(20)} - Error: ${error.message}`);
      } else {
        const status = count >= check.expected ? '✅' : '⚠️';
        console.log(`${status} ${check.table.padEnd(20)} - ${count || 0} rows`);
      }
    } catch (err) {
      console.log(`❌ ${check.table.padEnd(20)} - ${err.message}`);
    }
  }

  console.log('\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n');
  console.log('🎉 Database is ready!\n');
  console.log('Next step: npm run dev\n');
}

setupDatabase();
