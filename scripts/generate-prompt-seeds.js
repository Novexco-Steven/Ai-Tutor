/**
 * AI-Assisted Prompt Generator
 *
 * This script uses the Anthropic Claude API to generate comprehensive
 * teaching prompts for all units and topics in the curriculum.
 *
 * Usage:
 *   node scripts/generate-prompt-seeds.js [options]
 *
 * Options:
 *   --subject <name>   Generate prompts for specific subject (Math, Science, Reading, History)
 *   --grade <number>   Generate prompts for specific grade level (0-12, 0=K)
 *   --type <type>      Generate only units or topics (units, topics)
 *   --limit <number>   Limit number of prompts to generate
 *   --dry-run          Show what would be generated without calling API
 *
 * Requirements:
 *   - ANTHROPIC_API_KEY environment variable
 *   - SUPABASE_URL and SUPABASE_ANON_KEY environment variables
 */

require('dotenv').config();
const fs = require('fs');
const path = require('path');
const Anthropic = require('@anthropic-ai/sdk');
const { createClient } = require('@supabase/supabase-js');

// Configuration
const CONFIG = {
  outputDir: path.join(__dirname, '..', 'supabase', 'seeds', 'prompts'),
  batchSize: 5,
  delayBetweenBatches: 2000, // ms
  maxRetries: 3,
  retryDelay: 5000, // ms
};

// Initialize clients
const anthropic = new Anthropic.default({
  apiKey: process.env.ANTHROPIC_API_KEY,
});

const supabase = createClient(
  process.env.VITE_SUPABASE_URL || process.env.SUPABASE_URL,
  process.env.VITE_SUPABASE_ANON_KEY || process.env.SUPABASE_ANON_KEY
);

// ============================================================================
// Prompt Templates
// ============================================================================

const UNIT_PROMPT_TEMPLATE = `You are an expert curriculum designer and master teacher. Generate a comprehensive teaching guide prompt for this unit.

UNIT DETAILS:
- Subject: {{subject}}
- Grade Level: {{gradeLevel}}
- Unit Name: {{unitName}}
- Unit Description: {{unitDescription}}

Generate a 400-500 word teaching prompt that includes:

1. UNIT OBJECTIVES (3-5 specific, measurable learning objectives)

2. KEY CONCEPTS (the big ideas students should understand)

3. PREREQUISITE KNOWLEDGE (what students should already know)

4. TEACHING APPROACH (how to introduce and develop the unit)

5. COMMON CHALLENGES (what students typically struggle with)

6. ASSESSMENT INDICATORS (how to know if students understand)

7. CROSS-CURRICULAR CONNECTIONS (links to other subjects)

8. REAL-WORLD APPLICATIONS (why this unit matters)

Write in second person, addressing the AI tutor that will use this prompt.
Be specific to this unit, grade level, and subject area.
Do not include generic advice - make it detailed and actionable.`;

const TOPIC_PROMPT_TEMPLATE = `You are an expert curriculum designer and master teacher. Generate a comprehensive teaching guide prompt for this specific topic.

TOPIC DETAILS:
- Subject: {{subject}}
- Grade Level: {{gradeLevel}}
- Unit: {{unitName}}
- Topic Name: {{topicName}}
- Topic Description: {{topicDescription}}
- Difficulty Level: {{difficultyLevel}}/10
- Estimated Time: {{estimatedTime}} minutes

Generate a 500-600 word teaching prompt that includes:

1. PREREQUISITES
What specific skills and knowledge should the student already have?

2. LEARNING OBJECTIVES
3-4 specific, measurable outcomes for this topic.

3. KEY CONCEPTS
The core ideas and relationships students must understand.

4. COMMON MISCONCEPTIONS
Specific errors and misunderstandings to watch for and address.

5. TEACHING SEQUENCE
- Hook/Engagement: How to capture interest
- Direct Instruction: Key points to explain
- Guided Practice: Activities with support
- Independent Application: Solo practice ideas

6. DIFFERENTIATION
- For struggling learners: scaffolds and supports
- For advanced learners: extensions and challenges

7. ASSESSMENT INDICATORS
Observable behaviors that show understanding.

8. REAL-WORLD CONNECTIONS
Authentic applications that make the topic relevant.

9. KEY VOCABULARY
Essential terms with student-friendly definitions.

10. EXAMPLE PROBLEMS/ACTIVITIES
2-3 concrete examples appropriate for this grade level.

Write in second person, addressing the AI tutor that will use this prompt.
Be specific to this topic - do not include generic teaching advice.
Every element should be tailored to {{topicName}} at the {{gradeLevel}} level.`;

// ============================================================================
// Database Functions
// ============================================================================

async function fetchSubjects() {
  const { data, error } = await supabase
    .from('subjects')
    .select('*')
    .order('name');

  if (error) throw error;
  return data;
}

async function fetchUnits(filters = {}) {
  let query = supabase
    .from('units')
    .select(`
      *,
      subjects!inner(id, name)
    `)
    .order('grade_level')
    .order('order_index');

  if (filters.subjectId) {
    query = query.eq('subject_id', filters.subjectId);
  }
  if (filters.gradeLevel !== undefined) {
    query = query.eq('grade_level', filters.gradeLevel);
  }

  const { data, error } = await query;
  if (error) throw error;
  return data;
}

async function fetchTopics(filters = {}) {
  let query = supabase
    .from('topics')
    .select(`
      *,
      subjects!inner(id, name),
      units(id, name, grade_level)
    `)
    .order('order_index');

  if (filters.subjectId) {
    query = query.eq('subject_id', filters.subjectId);
  }
  if (filters.gradeLevel !== undefined) {
    query = query.gte('grade_level_min', filters.gradeLevel)
                .lte('grade_level_max', filters.gradeLevel);
  }
  if (filters.unitId) {
    query = query.eq('unit_id', filters.unitId);
  }

  const { data, error } = await query;
  if (error) throw error;
  return data;
}

// ============================================================================
// AI Generation Functions
// ============================================================================

async function generatePrompt(template, variables, retries = CONFIG.maxRetries) {
  // Replace template variables
  let prompt = template;
  for (const [key, value] of Object.entries(variables)) {
    prompt = prompt.replace(new RegExp(`{{${key}}}`, 'g'), value || 'Not specified');
  }

  try {
    const response = await anthropic.messages.create({
      model: 'claude-sonnet-4-20250514',
      max_tokens: 1500,
      messages: [
        {
          role: 'user',
          content: prompt
        }
      ]
    });

    return response.content[0].text;
  } catch (error) {
    if (retries > 0 && (error.status === 429 || error.status >= 500)) {
      console.log(`  Retrying in ${CONFIG.retryDelay/1000}s... (${retries} retries left)`);
      await sleep(CONFIG.retryDelay);
      return generatePrompt(template, variables, retries - 1);
    }
    throw error;
  }
}

// ============================================================================
// SQL Generation Functions
// ============================================================================

function escapeSQL(str) {
  if (!str) return '';
  return str.replace(/'/g, "''");
}

function generateUnitSQL(unit, promptContent) {
  return `
INSERT INTO prompt_templates (
  prompt_type, unit_id, name, description, prompt_content, priority
) VALUES (
  'unit_global',
  '${unit.id}',
  '${escapeSQL(unit.name)} Teaching Guide',
  'Comprehensive teaching approach for ${escapeSQL(unit.name)} in Grade ${unit.grade_level}',
  '${escapeSQL(promptContent)}',
  50
) ON CONFLICT DO NOTHING;
`;
}

function generateTopicSQL(topic, promptContent) {
  const gradeLevel = topic.units?.grade_level || topic.grade_level_min;
  return `
INSERT INTO prompt_templates (
  prompt_type, topic_id, name, description, prompt_content, priority
) VALUES (
  'topic_global',
  '${topic.id}',
  '${escapeSQL(topic.name)} Teaching Guide',
  'Comprehensive teaching methodology for ${escapeSQL(topic.name)}',
  '${escapeSQL(promptContent)}',
  50
) ON CONFLICT DO NOTHING;
`;
}

// ============================================================================
// Main Generation Functions
// ============================================================================

async function generateUnitPrompts(units, options = {}) {
  const results = [];
  const bySubject = {};

  // Group by subject
  for (const unit of units) {
    const subjectName = unit.subjects?.name || 'Unknown';
    if (!bySubject[subjectName]) {
      bySubject[subjectName] = [];
    }
    bySubject[subjectName].push(unit);
  }

  for (const [subject, subjectUnits] of Object.entries(bySubject)) {
    console.log(`\nGenerating unit prompts for ${subject}...`);

    let sql = `-- ============================================
-- ${subject.toUpperCase()} UNIT PROMPTS
-- ============================================
-- Generated by AI-assisted prompt generator
-- Total units: ${subjectUnits.length}
-- ============================================

`;

    for (let i = 0; i < subjectUnits.length; i += CONFIG.batchSize) {
      const batch = subjectUnits.slice(i, i + CONFIG.batchSize);

      for (const unit of batch) {
        console.log(`  [${i + batch.indexOf(unit) + 1}/${subjectUnits.length}] ${unit.name} (Grade ${unit.grade_level})`);

        if (options.dryRun) {
          sql += `-- Would generate prompt for: ${unit.name}\n`;
          continue;
        }

        try {
          const promptContent = await generatePrompt(UNIT_PROMPT_TEMPLATE, {
            subject,
            gradeLevel: `Grade ${unit.grade_level === 0 ? 'K' : unit.grade_level}`,
            unitName: unit.name,
            unitDescription: unit.description || 'No description available',
          });

          sql += generateUnitSQL(unit, promptContent);
          results.push({ type: 'unit', name: unit.name, status: 'success' });
        } catch (error) {
          console.error(`    Error: ${error.message}`);
          sql += `-- ERROR generating prompt for: ${unit.name}\n`;
          results.push({ type: 'unit', name: unit.name, status: 'error', error: error.message });
        }
      }

      if (i + CONFIG.batchSize < subjectUnits.length && !options.dryRun) {
        console.log(`  Waiting ${CONFIG.delayBetweenBatches/1000}s before next batch...`);
        await sleep(CONFIG.delayBetweenBatches);
      }
    }

    // Write SQL file
    const filename = `${subject.toLowerCase()}_units.sql`;
    const filepath = path.join(CONFIG.outputDir, 'units', filename);
    fs.writeFileSync(filepath, sql);
    console.log(`  Written to: ${filepath}`);
  }

  return results;
}

async function generateTopicPrompts(topics, options = {}) {
  const results = [];
  const bySubjectAndGrade = {};

  // Group by subject and grade
  for (const topic of topics) {
    const subjectName = topic.subjects?.name || 'Unknown';
    const gradeLevel = topic.units?.grade_level || topic.grade_level_min;
    const key = `${subjectName}|${gradeLevel}`;

    if (!bySubjectAndGrade[key]) {
      bySubjectAndGrade[key] = {
        subject: subjectName,
        grade: gradeLevel,
        topics: []
      };
    }
    bySubjectAndGrade[key].topics.push(topic);
  }

  for (const [key, group] of Object.entries(bySubjectAndGrade)) {
    const { subject, grade, topics: gradeTopics } = group;
    const gradeLabel = grade === 0 ? 'k' : grade;

    console.log(`\nGenerating topic prompts for ${subject} Grade ${gradeLabel}...`);

    let sql = `-- ============================================
-- ${subject.toUpperCase()} GRADE ${gradeLabel.toString().toUpperCase()} TOPIC PROMPTS
-- ============================================
-- Generated by AI-assisted prompt generator
-- Total topics: ${gradeTopics.length}
-- ============================================

`;

    for (let i = 0; i < gradeTopics.length; i += CONFIG.batchSize) {
      const batch = gradeTopics.slice(i, i + CONFIG.batchSize);

      for (const topic of batch) {
        console.log(`  [${i + batch.indexOf(topic) + 1}/${gradeTopics.length}] ${topic.name}`);

        if (options.dryRun) {
          sql += `-- Would generate prompt for: ${topic.name}\n`;
          continue;
        }

        try {
          const promptContent = await generatePrompt(TOPIC_PROMPT_TEMPLATE, {
            subject,
            gradeLevel: `Grade ${grade === 0 ? 'K' : grade}`,
            unitName: topic.units?.name || 'General',
            topicName: topic.name,
            topicDescription: topic.description || 'No description available',
            difficultyLevel: topic.difficulty_level || 5,
            estimatedTime: topic.estimated_time || 30,
          });

          sql += generateTopicSQL(topic, promptContent);
          results.push({ type: 'topic', name: topic.name, status: 'success' });
        } catch (error) {
          console.error(`    Error: ${error.message}`);
          sql += `-- ERROR generating prompt for: ${topic.name}\n`;
          results.push({ type: 'topic', name: topic.name, status: 'error', error: error.message });
        }
      }

      if (i + CONFIG.batchSize < gradeTopics.length && !options.dryRun) {
        console.log(`  Waiting ${CONFIG.delayBetweenBatches/1000}s before next batch...`);
        await sleep(CONFIG.delayBetweenBatches);
      }
    }

    // Write SQL file
    const filename = `${gradeLabel}_${subject.toLowerCase()}_topics.sql`;
    const filepath = path.join(CONFIG.outputDir, 'topics', subject.toLowerCase(), filename);

    // Ensure directory exists
    fs.mkdirSync(path.dirname(filepath), { recursive: true });
    fs.writeFileSync(filepath, sql);
    console.log(`  Written to: ${filepath}`);
  }

  return results;
}

// ============================================================================
// Utility Functions
// ============================================================================

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

function parseArgs() {
  const args = process.argv.slice(2);
  const options = {};

  for (let i = 0; i < args.length; i++) {
    if (args[i] === '--subject' && args[i+1]) {
      options.subject = args[++i];
    } else if (args[i] === '--grade' && args[i+1]) {
      options.grade = parseInt(args[++i], 10);
    } else if (args[i] === '--type' && args[i+1]) {
      options.type = args[++i];
    } else if (args[i] === '--limit' && args[i+1]) {
      options.limit = parseInt(args[++i], 10);
    } else if (args[i] === '--dry-run') {
      options.dryRun = true;
    } else if (args[i] === '--help') {
      console.log(`
AI-Assisted Prompt Generator

Usage: node scripts/generate-prompt-seeds.js [options]

Options:
  --subject <name>   Generate for specific subject (Math, Science, Reading, History)
  --grade <number>   Generate for specific grade (0-12, 0=Kindergarten)
  --type <type>      Generate only 'units' or 'topics'
  --limit <number>   Limit number of items to process
  --dry-run          Show what would be generated without API calls
  --help             Show this help message

Examples:
  node scripts/generate-prompt-seeds.js --subject Math --type topics
  node scripts/generate-prompt-seeds.js --grade 3 --dry-run
  node scripts/generate-prompt-seeds.js --limit 10
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

  console.log('AI-Assisted Prompt Generator');
  console.log('============================');

  if (!process.env.ANTHROPIC_API_KEY && !options.dryRun) {
    console.error('Error: ANTHROPIC_API_KEY environment variable is required');
    process.exit(1);
  }

  try {
    // Fetch subjects
    const subjects = await fetchSubjects();
    console.log(`Found ${subjects.length} subjects`);

    // Filter by subject if specified
    let subjectFilter = {};
    if (options.subject) {
      const subject = subjects.find(s =>
        s.name.toLowerCase() === options.subject.toLowerCase()
      );
      if (!subject) {
        console.error(`Subject not found: ${options.subject}`);
        process.exit(1);
      }
      subjectFilter.subjectId = subject.id;
      console.log(`Filtering by subject: ${subject.name}`);
    }

    // Add grade filter if specified
    if (options.grade !== undefined) {
      subjectFilter.gradeLevel = options.grade;
      console.log(`Filtering by grade: ${options.grade === 0 ? 'K' : options.grade}`);
    }

    const results = [];

    // Generate unit prompts
    if (!options.type || options.type === 'units') {
      let units = await fetchUnits(subjectFilter);
      if (options.limit) {
        units = units.slice(0, options.limit);
      }
      console.log(`\nGenerating prompts for ${units.length} units...`);
      const unitResults = await generateUnitPrompts(units, options);
      results.push(...unitResults);
    }

    // Generate topic prompts
    if (!options.type || options.type === 'topics') {
      let topics = await fetchTopics(subjectFilter);
      if (options.limit) {
        topics = topics.slice(0, options.limit);
      }
      console.log(`\nGenerating prompts for ${topics.length} topics...`);
      const topicResults = await generateTopicPrompts(topics, options);
      results.push(...topicResults);
    }

    // Summary
    console.log('\n============================');
    console.log('Generation Summary');
    console.log('============================');

    const successful = results.filter(r => r.status === 'success').length;
    const failed = results.filter(r => r.status === 'error').length;

    console.log(`Total processed: ${results.length}`);
    console.log(`Successful: ${successful}`);
    console.log(`Failed: ${failed}`);

    if (options.dryRun) {
      console.log('\nDry run complete. No API calls were made.');
    } else {
      console.log('\nPrompt files generated. Run seed-prompts.js to insert into database.');
    }

  } catch (error) {
    console.error('Fatal error:', error);
    process.exit(1);
  }
}

main();
