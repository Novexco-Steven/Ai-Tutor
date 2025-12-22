/**
 * Find name mismatches between SQL files and database
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

dotenv.config();

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY;
const supabase = createClient(supabaseUrl, supabaseKey);

async function main() {
  // Get all topics from database
  const { data: dbTopics } = await supabase.from('topics').select('name, grade_level_min');
  const { data: dbUnits } = await supabase.from('units').select('name, grade_level');

  // Create lookup maps
  const topicMap = new Map();
  dbTopics.forEach(t => topicMap.set(`${t.name.toLowerCase()}|${t.grade_level_min}`, t));

  const unitMap = new Map();
  dbUnits.forEach(u => unitMap.set(`${u.name.toLowerCase()}|${u.grade_level}`, u));

  // Read SQL files and find mismatches
  const promptsDir = path.join(__dirname, '..', 'supabase', 'seeds', 'prompts');

  console.log('=== UNIT MISMATCHES ===\n');

  // Check unit files
  const unitsDir = path.join(promptsDir, 'units');
  const unitFiles = fs.readdirSync(unitsDir).filter(f => f.endsWith('.sql'));

  for (const file of unitFiles) {
    const content = fs.readFileSync(path.join(unitsDir, file), 'utf8');
    const unitMatches = content.matchAll(/FROM\s+units\s+WHERE\s+name\s*=\s*'([^']+)'[^)]*grade_level\s*=\s*(\d+)/gi);

    for (const match of unitMatches) {
      const name = match[1];
      const grade = parseInt(match[2]);
      const key = `${name.toLowerCase()}|${grade}`;

      if (!unitMap.has(key)) {
        console.log(`${file}: "${name}" grade ${grade} - NOT FOUND`);

        // Find similar names
        const similar = dbUnits.filter(u =>
          u.grade_level === grade &&
          (u.name.toLowerCase().includes(name.toLowerCase().split(' ')[0]) ||
           name.toLowerCase().includes(u.name.toLowerCase().split(' ')[0]))
        );
        if (similar.length > 0) {
          console.log(`  Possible matches: ${similar.map(s => s.name).join(', ')}`);
        }
      }
    }
  }

  console.log('\n=== TOPIC MISMATCHES ===\n');

  // Check topic files
  const topicsDir = path.join(promptsDir, 'topics');
  const subjects = fs.readdirSync(topicsDir).filter(f =>
    fs.statSync(path.join(topicsDir, f)).isDirectory()
  );

  for (const subject of subjects) {
    const subjectDir = path.join(topicsDir, subject);
    const topicFiles = fs.readdirSync(subjectDir).filter(f => f.endsWith('.sql'));

    for (const file of topicFiles) {
      const content = fs.readFileSync(path.join(subjectDir, file), 'utf8');
      const topicMatches = content.matchAll(/FROM\s+topics\s+WHERE\s+name\s*=\s*'([^']+)'[^)]*grade_level_min\s*=\s*(\d+)/gi);

      for (const match of topicMatches) {
        const name = match[1];
        const grade = parseInt(match[2]);
        const key = `${name.toLowerCase()}|${grade}`;

        if (!topicMap.has(key)) {
          console.log(`${subject}/${file}: "${name}" grade ${grade} - NOT FOUND`);

          // Find similar names at same grade
          const similar = dbTopics.filter(t =>
            t.grade_level_min === grade &&
            (t.name.toLowerCase().includes(name.toLowerCase().split(' ')[0]) ||
             name.toLowerCase().includes(t.name.toLowerCase().split(' ')[0]))
          );
          if (similar.length > 0) {
            console.log(`  Possible matches: ${similar.map(s => s.name).join(', ')}`);
          }
        }
      }
    }
  }
}

main().catch(console.error);
