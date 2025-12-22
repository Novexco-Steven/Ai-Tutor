/**
 * SQL Seed Runner
 *
 * Runs all prompt SQL seed files against Supabase by:
 * 1. Parsing INSERT statements
 * 2. Looking up subject_id, unit_id, topic_id via API
 * 3. Inserting records via Supabase client
 *
 * Usage: node scripts/run-sql-seeds.js
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

dotenv.config();

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Use service role key for full access
const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('Missing Supabase credentials');
  console.error('Set VITE_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

// Cache for lookups
const cache = {
  subjects: null,
  units: null,
  topics: null
};

// ============================================
// LOOKUP FUNCTIONS
// ============================================

async function getSubjects() {
  if (!cache.subjects) {
    const { data, error } = await supabase.from('subjects').select('id, name');
    if (error) throw error;
    cache.subjects = data || [];
  }
  return cache.subjects;
}

async function getUnits() {
  if (!cache.units) {
    const { data, error } = await supabase.from('units').select('id, name, grade_level, subject_id');
    if (error) throw error;
    cache.units = data || [];
  }
  return cache.units;
}

async function getTopics() {
  if (!cache.topics) {
    // Paginate to get all topics (more than 1000)
    let allTopics = [];
    let page = 0;
    const pageSize = 1000;

    while (true) {
      const { data, error } = await supabase
        .from('topics')
        .select('id, name, grade_level_min, subject_id, unit_id')
        .range(page * pageSize, (page + 1) * pageSize - 1);

      if (error) throw error;
      if (!data || data.length === 0) break;
      allTopics = allTopics.concat(data);
      if (data.length < pageSize) break;
      page++;
    }

    cache.topics = allTopics;
  }
  return cache.topics;
}

async function findSubjectId(subjectName) {
  const subjects = await getSubjects();
  const subject = subjects.find(s => s.name.toLowerCase() === subjectName.toLowerCase());
  return subject?.id || null;
}

async function findUnitId(unitName, gradeLevel) {
  const units = await getUnits();
  const unit = units.find(u =>
    u.name.toLowerCase() === unitName.toLowerCase() &&
    u.grade_level === gradeLevel
  );
  return unit?.id || null;
}

async function findTopicId(topicName, gradeLevel) {
  const topics = await getTopics();
  const topic = topics.find(t =>
    t.name.toLowerCase() === topicName.toLowerCase() &&
    t.grade_level_min === gradeLevel
  );
  return topic?.id || null;
}

// ============================================
// SQL PARSING FUNCTIONS
// ============================================

function extractQuotedString(sql, startMarker) {
  const idx = sql.indexOf(startMarker);
  if (idx === -1) return null;

  // Find the opening quote after the marker
  let pos = idx + startMarker.length;
  while (pos < sql.length && sql[pos] !== "'") pos++;
  if (pos >= sql.length) return null;

  // Extract until closing quote (handling escaped quotes)
  let result = '';
  pos++; // skip opening quote
  while (pos < sql.length) {
    if (sql[pos] === "'" && sql[pos + 1] === "'") {
      result += "'";
      pos += 2;
    } else if (sql[pos] === "'") {
      break;
    } else {
      result += sql[pos];
      pos++;
    }
  }
  return result;
}

function parseValuesInsert(sql) {
  // Parse VALUES-based INSERT: (prompt_type, name, description, prompt_content, priority)
  // VALUES ('type', 'name', 'desc', 'content', priority)

  // Extract column list
  const columnsMatch = sql.match(/INSERT INTO prompt_templates\s*\(\s*([^)]+)\s*\)\s*VALUES/i);
  if (!columnsMatch) return null;

  const columns = columnsMatch[1].split(',').map(c => c.trim());

  // Find VALUES section
  const valuesStart = sql.indexOf('VALUES');
  if (valuesStart === -1) return null;

  // Parse values starting after VALUES (
  let pos = sql.indexOf('(', valuesStart) + 1;
  const values = [];
  let current = '';
  let inString = false;
  let depth = 0;

  while (pos < sql.length) {
    const char = sql[pos];

    if (!inString && char === '(') depth++;
    if (!inString && char === ')') {
      if (depth === 0) break;
      depth--;
    }

    if (char === "'" && !inString) {
      inString = true;
      pos++;
      continue;
    }

    if (inString && char === "'" && sql[pos + 1] === "'") {
      current += "'";
      pos += 2;
      continue;
    }

    if (inString && char === "'") {
      inString = false;
      pos++;
      continue;
    }

    if (!inString && char === ',') {
      values.push(current.trim());
      current = '';
      pos++;
      continue;
    }

    current += char;
    pos++;
  }
  if (current.trim()) values.push(current.trim());

  // Map columns to values
  const result = { promptType: null, name: null, description: null, promptContent: null, priority: 50 };

  for (let i = 0; i < columns.length && i < values.length; i++) {
    const col = columns[i].toLowerCase();
    const val = values[i];

    if (col === 'prompt_type') result.promptType = val;
    else if (col === 'name') result.name = val;
    else if (col === 'description') result.description = val;
    else if (col === 'prompt_content') result.promptContent = val;
    else if (col === 'priority') result.priority = parseInt(val) || 50;
  }

  return result;
}

function parseInsertStatement(sql) {
  // Check if it's a VALUES-based insert
  if (sql.includes('VALUES') && !sql.includes('SELECT')) {
    return parseValuesInsert(sql);
  }

  // Extract prompt_type from SELECT
  const promptTypeMatch = sql.match(/SELECT\s+'([^']+)'/);
  if (!promptTypeMatch) return null;

  const promptType = promptTypeMatch[1];

  // Extract subject name from subquery
  let subjectName = null;
  const subjectMatch = sql.match(/FROM\s+subjects\s+WHERE\s+name\s*=\s*'([^']+)'/i);
  if (subjectMatch) {
    subjectName = subjectMatch[1];
  }

  // Extract topic name and grade from subquery
  let topicName = null;
  let gradeLevel = null;
  const topicMatch = sql.match(/FROM\s+topics\s+WHERE\s+name\s*=\s*'([^']+)'(?:[^)]*grade_level_min\s*=\s*(\d+))?/i);
  if (topicMatch) {
    topicName = topicMatch[1];
    gradeLevel = topicMatch[2] ? parseInt(topicMatch[2]) : null;
  }

  // Extract unit name and grade from subquery
  let unitName = null;
  const unitMatch = sql.match(/FROM\s+units\s+WHERE\s+name\s*=\s*'([^']+)'(?:[^)]*grade_level\s*=\s*(\d+))?/i);
  if (unitMatch) {
    unitName = unitMatch[1];
    if (!gradeLevel && unitMatch[2]) {
      gradeLevel = parseInt(unitMatch[2]);
    }
  }

  // Extract the actual values after subject/topic/unit subqueries
  // Pattern: prompt_type, subject_id, topic_id, name, description, prompt_content, priority

  // Find the name field (after the subqueries)
  const parts = sql.split(/\(SELECT id FROM (?:subjects|units|topics)[^)]+\)/gi);

  // Get the trailing part after all subqueries
  let trailingPart = parts[parts.length - 1] || '';

  // Extract values from trailing part
  // Should be: 'name', 'description', 'prompt_content', priority
  const valuesMatch = trailingPart.match(/,\s*'([^']+)',\s*'([^']+)',\s*'([\s\S]*?)',\s*(\d+)/);

  let name = null, description = null, promptContent = null, priority = 20;

  if (valuesMatch) {
    name = valuesMatch[1];
    description = valuesMatch[2];
    promptContent = valuesMatch[3].replace(/''/g, "'"); // Unescape quotes
    priority = parseInt(valuesMatch[4]);
  } else {
    // Try alternative pattern for the full prompt content
    // Look for the name in the SQL
    const nameMatch = sql.match(/,\s*\n?\s*'([^']{10,100}(?:Topic Guide|Teaching Guide|Prompts?)[^']*)',/i);
    if (nameMatch) {
      name = nameMatch[1];
    }

    // Find the prompt_content (the big text blob)
    const contentMatch = sql.match(/'(COMPREHENSIVE TEACHING GUIDE[\s\S]*?)'\s*,\s*\d+\s*(?:FROM|$)/i) ||
                         sql.match(/'([A-Z]{3,}\s+TEACHING GUIDE[\s\S]*?)'\s*,\s*\d+\s*(?:FROM|$)/i) ||
                         sql.match(/'([A-Z\s]{5,}METHODOLOGY[\s\S]*?)'\s*,\s*\d+\s*(?:FROM|$)/i);
    if (contentMatch) {
      promptContent = contentMatch[1].replace(/''/g, "'");
    }
  }

  return {
    promptType,
    subjectName,
    unitName,
    topicName,
    gradeLevel,
    name,
    description,
    promptContent,
    priority
  };
}

// ============================================
// FILE PROCESSING
// ============================================

async function processFile(filepath) {
  const content = fs.readFileSync(filepath, 'utf8');

  // Match both SELECT-based and VALUES-based INSERT statements
  const selectInsertRegex = /INSERT INTO prompt_templates\s*\([^)]+\)\s*SELECT[\s\S]*?ON CONFLICT[^;]*;/gi;
  const valuesInsertRegex = /INSERT INTO prompt_templates\s*\([^)]+\)\s*VALUES\s*\([\s\S]*?\)\s*ON CONFLICT[^;]*;/gi;

  const selectStatements = content.match(selectInsertRegex) || [];
  const valuesStatements = content.match(valuesInsertRegex) || [];
  const statements = [...selectStatements, ...valuesStatements];

  let success = 0, skipped = 0, errors = 0;

  for (const statement of statements) {
    try {
      const parsed = parseInsertStatement(statement);

      if (!parsed || !parsed.name || !parsed.promptContent) {
        skipped++;
        continue;
      }

      // Build the record
      const record = {
        prompt_type: parsed.promptType,
        name: parsed.name,
        description: parsed.description || `Guide for ${parsed.name}`,
        prompt_content: parsed.promptContent,
        priority: parsed.priority || 20,
        is_active: true
      };

      // Look up IDs
      if (parsed.subjectName) {
        record.subject_id = await findSubjectId(parsed.subjectName);
      }

      if (parsed.topicName && parsed.gradeLevel !== null) {
        record.topic_id = await findTopicId(parsed.topicName, parsed.gradeLevel);
      }

      if (parsed.unitName && parsed.gradeLevel !== null) {
        record.unit_id = await findUnitId(parsed.unitName, parsed.gradeLevel);
      }

      // Check if exists first
      const { data: existing } = await supabase
        .from('prompt_templates')
        .select('id')
        .eq('name', parsed.name)
        .single();

      if (existing) {
        skipped++;
        continue;
      }

      // Insert new record
      const { error } = await supabase
        .from('prompt_templates')
        .insert(record);

      if (error) {
        if (error.code === '23505') {
          skipped++;
        } else {
          console.error(`    Error inserting ${parsed.name}: ${error.message}`);
          errors++;
        }
      } else {
        success++;
      }

    } catch (err) {
      console.error(`    Parse error: ${err.message}`);
      errors++;
    }
  }

  return { total: statements.length, success, skipped, errors };
}

// ============================================
// MAIN
// ============================================

async function main() {
  console.log('SQL Seed Runner');
  console.log('================\n');

  const promptsDir = path.join(__dirname, '..', 'supabase', 'seeds', 'prompts');

  // Pre-fetch all lookups
  console.log('Loading reference data...');
  await getSubjects();
  await getUnits();
  await getTopics();
  console.log(`  Subjects: ${cache.subjects.length}`);
  console.log(`  Units: ${cache.units.length}`);
  console.log(`  Topics: ${cache.topics.length}\n`);

  let totalSuccess = 0, totalSkipped = 0, totalErrors = 0;

  // 1. Core prompts
  const coreFiles = ['00_grade_prompts.sql', '01_subject_prompts.sql', '02_user_profile_prompts.sql'];
  console.log('Core prompts:');
  for (const file of coreFiles) {
    const filepath = path.join(promptsDir, file);
    if (fs.existsSync(filepath)) {
      process.stdout.write(`  ${file}...`);
      const result = await processFile(filepath);
      console.log(` ${result.success}/${result.total}`);
      totalSuccess += result.success;
      totalSkipped += result.skipped;
      totalErrors += result.errors;
    }
  }

  // 2. Unit prompts
  console.log('\nUnit prompts:');
  const unitsDir = path.join(promptsDir, 'units');
  if (fs.existsSync(unitsDir)) {
    const unitFiles = fs.readdirSync(unitsDir).filter(f => f.endsWith('.sql')).sort();
    for (const file of unitFiles) {
      process.stdout.write(`  ${file}...`);
      const result = await processFile(path.join(unitsDir, file));
      console.log(` ${result.success}/${result.total}`);
      totalSuccess += result.success;
      totalSkipped += result.skipped;
      totalErrors += result.errors;
    }
  }

  // 3. Topic prompts
  console.log('\nTopic prompts:');
  const topicsDir = path.join(promptsDir, 'topics');
  if (fs.existsSync(topicsDir)) {
    const subjects = fs.readdirSync(topicsDir).filter(f =>
      fs.statSync(path.join(topicsDir, f)).isDirectory()
    ).sort();

    for (const subject of subjects) {
      console.log(`  ${subject}/`);
      const subjectDir = path.join(topicsDir, subject);
      const topicFiles = fs.readdirSync(subjectDir).filter(f => f.endsWith('.sql')).sort();

      for (const file of topicFiles) {
        process.stdout.write(`    ${file}...`);
        const result = await processFile(path.join(subjectDir, file));
        console.log(` ${result.success}/${result.total}`);
        totalSuccess += result.success;
        totalSkipped += result.skipped;
        totalErrors += result.errors;
      }
    }
  }

  // Summary
  console.log('\n================');
  console.log('Summary');
  console.log('================');
  console.log(`Inserted: ${totalSuccess}`);
  console.log(`Skipped:  ${totalSkipped}`);
  console.log(`Errors:   ${totalErrors}`);

  // Final count
  const { count } = await supabase
    .from('prompt_templates')
    .select('*', { count: 'exact', head: true });

  console.log(`\nTotal prompts in database: ${count}`);
}

main().catch(err => {
  console.error('Fatal error:', err);
  process.exit(1);
});
