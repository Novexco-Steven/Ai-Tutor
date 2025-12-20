/**
 * Prompt Seeder Script
 *
 * Seeds all prompt templates from SQL files into the database.
 * Executes files in the correct dependency order.
 *
 * Usage:
 *   node scripts/seed-prompts.js [options]
 *
 * Options:
 *   --core-only       Seed only core prompts (grades, subjects, user profiles)
 *   --units-only      Seed only unit prompts
 *   --topics-only     Seed only topic prompts
 *   --subject <name>  Seed only prompts for specific subject
 *   --grade <number>  Seed only prompts for specific grade
 *   --dry-run         Show what would be seeded without executing
 *   --clear           Clear existing prompts before seeding
 *
 * Requirements:
 *   - SUPABASE_URL and SUPABASE_ANON_KEY environment variables
 *   - Or VITE_ prefixed versions for Vite projects
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

// Load environment variables
dotenv.config();

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Configuration
const CONFIG = {
  promptsDir: path.join(__dirname, '..', 'supabase', 'seeds', 'prompts'),
  coreFiles: [
    '00_grade_prompts.sql',
    '01_subject_prompts.sql',
    '02_user_profile_prompts.sql',
  ],
  unitsDir: 'units',
  topicsDir: 'topics',
};

// Initialize Supabase client
const supabaseUrl = process.env.VITE_SUPABASE_URL || process.env.SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY ||
                    process.env.VITE_SUPABASE_ANON_KEY ||
                    process.env.SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('Missing Supabase credentials.');
  console.error('Set VITE_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY (or VITE_SUPABASE_ANON_KEY)');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

// ============================================================================
// SQL Parsing Functions
// ============================================================================

/**
 * Parse SQL values list handling nested quotes and parentheses
 */
function parseValues(valuesStr) {
  const values = [];
  let current = '';
  let inString = false;
  let depth = 0;

  for (let i = 0; i < valuesStr.length; i++) {
    const char = valuesStr[i];

    // Handle string boundaries
    if (char === "'" && !inString) {
      inString = true;
      continue;
    }

    // Handle escaped quotes ('' in SQL)
    if (inString && char === "'" && valuesStr[i+1] === "'") {
      current += "'";
      i++;
      continue;
    }

    // End of string
    if (inString && char === "'") {
      inString = false;
      continue;
    }

    // Track parentheses depth (for nested expressions)
    if (!inString && char === '(') depth++;
    if (!inString && char === ')') depth--;

    // Comma separator (only at depth 0, not in string)
    if (!inString && depth === 0 && char === ',') {
      values.push(current.trim());
      current = '';
      continue;
    }

    current += char;
  }

  if (current.trim()) {
    values.push(current.trim());
  }

  return values.map(v => {
    v = v.trim();
    if (v.toUpperCase() === 'NULL') return null;
    if (!isNaN(v) && v !== '') return Number(v);
    return v;
  });
}

/**
 * Parse INSERT statement and extract data
 */
function parseInsert(statement) {
  // Match the columns
  const columnsMatch = statement.match(/INSERT INTO prompt_templates\s*\(\s*([^)]+)\s*\)/i);
  if (!columnsMatch) return null;

  const columns = columnsMatch[1].split(',').map(c => c.trim());

  // Check if it's a VALUES or SELECT style insert
  if (statement.includes('VALUES')) {
    const valuesMatch = statement.match(/VALUES\s*\(\s*([\s\S]*?)\s*\)\s*ON CONFLICT/i);
    if (!valuesMatch) return null;

    const values = parseValues(valuesMatch[1]);
    const data = {};

    for (let i = 0; i < columns.length; i++) {
      if (values[i] !== null && values[i] !== undefined) {
        data[columns[i]] = values[i];
      }
    }

    return { type: 'values', data };
  }

  // SELECT-based insert (needs subjects/units/topics lookup)
  if (statement.match(/SELECT.*FROM\s+(subjects|units|topics)/i)) {
    return { type: 'select', statement };
  }

  return null;
}

// ============================================================================
// Database Functions
// ============================================================================

/**
 * Insert a prompt template
 */
async function insertPrompt(data) {
  // Handle subject_id lookup from SELECT
  if (data.subject_id && data.subject_id.includes('SELECT')) {
    return { skipped: true, reason: 'Dynamic subject lookup not supported' };
  }

  const { error } = await supabase
    .from('prompt_templates')
    .upsert(data, {
      onConflict: 'id',
      ignoreDuplicates: true
    });

  if (error) {
    // Ignore unique constraint violations
    if (error.code === '23505') {
      return { skipped: true, reason: 'Already exists' };
    }
    throw error;
  }

  return { inserted: true };
}

/**
 * Process SQL file and execute INSERT statements
 */
async function processSQLFile(filepath, options = {}) {
  if (!fs.existsSync(filepath)) {
    return { total: 0, success: 0, skipped: 0, errors: 0 };
  }

  const content = fs.readFileSync(filepath, 'utf8');

  // Extract INSERT statements
  const insertRegex = /INSERT INTO prompt_templates[\s\S]*?ON CONFLICT[^;]*;/gi;
  const statements = content.match(insertRegex) || [];

  if (statements.length === 0) {
    return { total: 0, success: 0, skipped: 0, errors: 0 };
  }

  let success = 0;
  let skipped = 0;
  let errors = 0;

  for (const statement of statements) {
    if (options.dryRun) {
      success++;
      continue;
    }

    try {
      const parsed = parseInsert(statement);

      if (!parsed) {
        skipped++;
        continue;
      }

      if (parsed.type === 'values') {
        const result = await insertPrompt(parsed.data);
        if (result.inserted) {
          success++;
        } else {
          skipped++;
        }
      } else {
        // SELECT-based inserts require raw SQL execution
        // These are typically handled by running the SQL directly in psql
        skipped++;
      }
    } catch (err) {
      console.error(`    Error: ${err.message}`);
      errors++;
    }
  }

  return { total: statements.length, success, skipped, errors };
}

// ============================================================================
// File Discovery Functions
// ============================================================================

function findSQLFiles(dir) {
  const files = [];

  if (!fs.existsSync(dir)) {
    return files;
  }

  const entries = fs.readdirSync(dir, { withFileTypes: true });

  for (const entry of entries) {
    const fullPath = path.join(dir, entry.name);

    if (entry.isDirectory()) {
      files.push(...findSQLFiles(fullPath));
    } else if (entry.isFile() && entry.name.endsWith('.sql')) {
      files.push(fullPath);
    }
  }

  return files.sort();
}

// ============================================================================
// Main Seeding Functions
// ============================================================================

async function seedCorePrompts(options = {}) {
  console.log('\nSeeding core prompts...');

  let totalSuccess = 0;
  let totalSkipped = 0;
  let totalErrors = 0;

  for (const file of CONFIG.coreFiles) {
    const filepath = path.join(CONFIG.promptsDir, file);

    if (!fs.existsSync(filepath)) {
      console.log(`  Skipping ${file} (not found)`);
      continue;
    }

    console.log(`  Processing ${file}...`);
    const result = await processSQLFile(filepath, options);

    console.log(`    Success: ${result.success}, Skipped: ${result.skipped}, Errors: ${result.errors}`);
    totalSuccess += result.success;
    totalSkipped += result.skipped;
    totalErrors += result.errors;
  }

  return { success: totalSuccess, skipped: totalSkipped, errors: totalErrors };
}

async function seedUnitPrompts(options = {}) {
  console.log('\nSeeding unit prompts...');

  const unitsDir = path.join(CONFIG.promptsDir, CONFIG.unitsDir);
  const files = findSQLFiles(unitsDir);

  if (files.length === 0) {
    console.log('  No unit prompt files found');
    console.log('  Run "node scripts/generate-prompt-seeds.js --type units" to generate');
    return { success: 0, skipped: 0, errors: 0 };
  }

  let totalSuccess = 0;
  let totalSkipped = 0;
  let totalErrors = 0;

  for (const filepath of files) {
    const filename = path.basename(filepath);

    // Filter by subject if specified
    if (options.subject) {
      if (!filename.toLowerCase().includes(options.subject.toLowerCase())) {
        continue;
      }
    }

    console.log(`  Processing ${filename}...`);
    const result = await processSQLFile(filepath, options);

    console.log(`    Success: ${result.success}, Skipped: ${result.skipped}, Errors: ${result.errors}`);
    totalSuccess += result.success;
    totalSkipped += result.skipped;
    totalErrors += result.errors;
  }

  return { success: totalSuccess, skipped: totalSkipped, errors: totalErrors };
}

async function seedTopicPrompts(options = {}) {
  console.log('\nSeeding topic prompts...');

  const topicsDir = path.join(CONFIG.promptsDir, CONFIG.topicsDir);
  const files = findSQLFiles(topicsDir);

  if (files.length === 0) {
    console.log('  No topic prompt files found');
    console.log('  Run "node scripts/generate-prompt-seeds.js --type topics" to generate');
    return { success: 0, skipped: 0, errors: 0 };
  }

  let totalSuccess = 0;
  let totalSkipped = 0;
  let totalErrors = 0;

  for (const filepath of files) {
    const relativePath = path.relative(topicsDir, filepath);
    const filename = path.basename(filepath);

    // Filter by subject if specified
    if (options.subject) {
      if (!relativePath.toLowerCase().includes(options.subject.toLowerCase())) {
        continue;
      }
    }

    // Filter by grade if specified
    if (options.grade !== undefined) {
      const gradePattern = new RegExp(`^${options.grade === 0 ? 'k' : options.grade}_`);
      if (!gradePattern.test(filename.toLowerCase())) {
        continue;
      }
    }

    console.log(`  Processing ${relativePath}...`);
    const result = await processSQLFile(filepath, options);

    console.log(`    Success: ${result.success}, Skipped: ${result.skipped}, Errors: ${result.errors}`);
    totalSuccess += result.success;
    totalSkipped += result.skipped;
    totalErrors += result.errors;
  }

  return { success: totalSuccess, skipped: totalSkipped, errors: totalErrors };
}

async function clearPrompts(options = {}) {
  if (options.dryRun) {
    console.log('\n[DRY RUN] Would clear all existing prompts');
    return;
  }

  console.log('\nClearing existing prompts...');

  const { error } = await supabase
    .from('prompt_templates')
    .delete()
    .neq('id', '00000000-0000-0000-0000-000000000000');

  if (error) {
    console.error('Error clearing prompts:', error);
    throw error;
  }

  console.log('  Prompts cleared');
}

// ============================================================================
// CLI Parsing
// ============================================================================

function parseArgs() {
  const args = process.argv.slice(2);
  const options = {};

  for (let i = 0; i < args.length; i++) {
    if (args[i] === '--core-only') {
      options.coreOnly = true;
    } else if (args[i] === '--units-only') {
      options.unitsOnly = true;
    } else if (args[i] === '--topics-only') {
      options.topicsOnly = true;
    } else if (args[i] === '--subject' && args[i+1]) {
      options.subject = args[++i];
    } else if (args[i] === '--grade' && args[i+1]) {
      options.grade = parseInt(args[++i], 10);
    } else if (args[i] === '--dry-run') {
      options.dryRun = true;
    } else if (args[i] === '--clear') {
      options.clear = true;
    } else if (args[i] === '--help') {
      console.log(`
Prompt Seeder Script

Usage: node scripts/seed-prompts.js [options]

Options:
  --core-only       Seed only core prompts (grades, subjects, user profiles)
  --units-only      Seed only unit prompts
  --topics-only     Seed only topic prompts
  --subject <name>  Seed only prompts for specific subject
  --grade <number>  Seed only prompts for specific grade (0=K)
  --dry-run         Show what would be seeded without executing
  --clear           Clear existing prompts before seeding
  --help            Show this help message

Examples:
  node scripts/seed-prompts.js --core-only
  node scripts/seed-prompts.js --subject Math --topics-only
  node scripts/seed-prompts.js --clear --dry-run
      `);
      process.exit(0);
    }
  }

  return options;
}

// ============================================================================
// Main Entry Point
// ============================================================================

async function main() {
  const options = parseArgs();

  console.log('Prompt Seeder');
  console.log('=============');

  if (options.dryRun) {
    console.log('Running in DRY RUN mode - no changes will be made');
  }

  try {
    // Clear if requested
    if (options.clear) {
      await clearPrompts(options);
    }

    const results = {
      core: { success: 0, skipped: 0, errors: 0 },
      units: { success: 0, skipped: 0, errors: 0 },
      topics: { success: 0, skipped: 0, errors: 0 },
    };

    // Determine what to seed
    const seedAll = !options.coreOnly && !options.unitsOnly && !options.topicsOnly;

    if (seedAll || options.coreOnly) {
      results.core = await seedCorePrompts(options);
    }

    if (seedAll || options.unitsOnly) {
      results.units = await seedUnitPrompts(options);
    }

    if (seedAll || options.topicsOnly) {
      results.topics = await seedTopicPrompts(options);
    }

    // Summary
    console.log('\n=============');
    console.log('Summary');
    console.log('=============');

    const totalSuccess = results.core.success + results.units.success + results.topics.success;
    const totalSkipped = results.core.skipped + results.units.skipped + results.topics.skipped;
    const totalErrors = results.core.errors + results.units.errors + results.topics.errors;

    console.log(`Core prompts:  ${results.core.success} inserted, ${results.core.skipped} skipped, ${results.core.errors} errors`);
    console.log(`Unit prompts:  ${results.units.success} inserted, ${results.units.skipped} skipped, ${results.units.errors} errors`);
    console.log(`Topic prompts: ${results.topics.success} inserted, ${results.topics.skipped} skipped, ${results.topics.errors} errors`);
    console.log(`--------------`);
    console.log(`Total:         ${totalSuccess} inserted, ${totalSkipped} skipped, ${totalErrors} errors`);

    if (totalErrors > 0) {
      process.exit(1);
    }

  } catch (error) {
    console.error('\nFatal error:', error);
    process.exit(1);
  }
}

main();
