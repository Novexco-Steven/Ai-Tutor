/**
 * Run a SQL migration file against Supabase
 * Usage: node scripts/run-migration.js <path-to-sql-file>
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
import fs from 'fs';

dotenv.config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

const filePath = process.argv[2];

if (!filePath) {
  console.error('Usage: node scripts/run-migration.js <path-to-sql-file>');
  process.exit(1);
}

async function main() {
  console.log(`Running migration: ${filePath}`);

  const sql = fs.readFileSync(filePath, 'utf8');

  // Split into individual statements (separated by semicolon followed by newline)
  const statements = sql
    .split(/;\s*\n/)
    .map(s => s.trim())
    .filter(s => s.length > 0 && !s.startsWith('--'));

  console.log(`Found ${statements.length} statements\n`);

  let success = 0;
  let errors = 0;

  for (let i = 0; i < statements.length; i++) {
    const stmt = statements[i];

    // Skip comment-only statements
    if (stmt.split('\n').every(line => line.trim().startsWith('--') || line.trim() === '')) {
      continue;
    }

    try {
      const { error } = await supabase.rpc('exec_sql', { sql_query: stmt + ';' });

      if (error) {
        // Try direct insert if exec_sql not available
        if (error.message.includes('function') || error.message.includes('does not exist')) {
          // For INSERT statements, parse and use the client
          console.log(`Statement ${i + 1}: RPC not available, skipping advanced SQL`);
          errors++;
        } else {
          console.log(`Statement ${i + 1}: Error - ${error.message}`);
          errors++;
        }
      } else {
        success++;
        process.stdout.write(`\rProgress: ${success} success, ${errors} errors`);
      }
    } catch (err) {
      console.log(`Statement ${i + 1}: Exception - ${err.message}`);
      errors++;
    }
  }

  console.log(`\n\nDone: ${success} success, ${errors} errors`);
}

main().catch(console.error);
