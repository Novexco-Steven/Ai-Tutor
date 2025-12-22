// Generate comprehensive teaching prompts for high school math topics
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Read migration files to extract topics
function extractTopicsFromMigration(filename, grade) {
  const content = fs.readFileSync(filename, 'utf8');
  const topics = [];

  // Extract unit names and topic names
  const topicMatches = content.matchAll(/\('([^']+)',\s*'([^']+)',\s*(\d+),\s*(\d+),\s*(\d+)\)/g);

  for (const match of topicMatches) {
    const [_, name, description, difficulty, order_idx, time] = match;
    topics.push({
      name,
      description,
      difficulty: parseInt(difficulty),
      grade,
      estimatedTime: parseInt(time)
    });
  }

  return topics;
}

// Generate comprehensive teaching prompt
function generatePrompt(topic) {
  const { name, description, difficulty, grade, estimatedTime } = topic;

  // Determine difficulty-appropriate content
  const difficultyDescriptors = {
    1: { level: 'introductory', depth: 'foundational', practice: 'scaffolded' },
    2: { level: 'standard', depth: 'core', practice: 'guided' },
    3: { level: 'advanced', depth: 'sophisticated', practice: 'independent' }
  };

  const desc = difficultyDescriptors[difficulty] || difficultyDescriptors[2];

  return `-- ${name}
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = '${name}' AND grade_level_min = ${grade}),
  '${name} Topic Guide', '${description}',
  '${name.toUpperCase()} - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade ${grade} ${desc.level} mathematics
- Foundational understanding of related concepts
- Readiness for ${desc.depth} mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to ${name.toLowerCase()}
2. Apply ${desc.depth} techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect ${name.toLowerCase()} to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of ${name.toLowerCase()}
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning ${name.toLowerCase()}
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (${Math.ceil(estimatedTime * 0.15)} minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about ${name.toLowerCase()}

2. DIRECT INSTRUCTION (${Math.ceil(estimatedTime * 0.35)} minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (${Math.ceil(estimatedTime * 0.30)} minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (${Math.ceil(estimatedTime * 0.20)} minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving ${name.toLowerCase()}
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates ${desc.depth} understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = '${name}' AND grade_level_min = ${grade})
ON CONFLICT DO NOTHING;

`;
}

// Generate file for a grade
function generateGradeFile(grade, migrationFile, outputFile) {
  console.log(`Generating prompts for Grade ${grade}...`);

  const topics = extractTopicsFromMigration(migrationFile, grade);
  console.log(`Found ${topics.length} topics for Grade ${grade}`);

  let content = `-- Grade ${grade} Math Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade ${grade} Math topics
-- ============================================================================

`;

  // Group topics by their appearance order (representing units)
  let currentSection = '';

  topics.forEach((topic, index) => {
    // Add section header every 10-15 topics (approximate unit grouping)
    if (index % 12 === 0) {
      content += `-- ============================================================================
-- SECTION ${Math.floor(index / 12) + 1}
-- ============================================================================

`;
    }

    content += generatePrompt(topic);
  });

  fs.writeFileSync(outputFile, content);
  console.log(`Generated ${outputFile} with ${topics.length} topics`);
}

// Generate all four grade files
const basePath = 'c:\\Users\\stevenla\\Documents\\GitHub\\Ai-Tutor';
const migrations = path.join(basePath, 'supabase', 'migrations');
const output = path.join(basePath, 'supabase', 'seeds', 'prompts', 'topics', 'math');

const grades = [
  { grade: 9, migration: path.join(migrations, '20241222001200_expand_grade9_math_curriculum.sql'), output: path.join(output, '9_math_expanded_prompts.sql') },
  { grade: 10, migration: path.join(migrations, '20241222001300_expand_grade10_math_curriculum.sql'), output: path.join(output, '10_math_expanded_prompts.sql') },
  { grade: 11, migration: path.join(migrations, '20241222001400_expand_grade11_math_curriculum.sql'), output: path.join(output, '11_math_expanded_prompts.sql') },
  { grade: 12, migration: path.join(migrations, '20241222001500_expand_grade12_math_curriculum.sql'), output: path.join(output, '12_math_expanded_prompts.sql') }
];

grades.forEach(({ grade, migration, output: outputPath }) => {
  try {
    generateGradeFile(grade, migration, outputPath);
  } catch (error) {
    console.error(`Error generating Grade ${grade}:`, error.message);
  }
});

console.log('All prompt files generated successfully!');
