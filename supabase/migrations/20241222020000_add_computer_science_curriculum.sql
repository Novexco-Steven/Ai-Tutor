-- Migration: Add Computer Science curriculum units (K-12)
-- Also links Computer Science topics to units
-- ============================================================================

-- ============================================================================
-- COMPUTER SCIENCE UNITS (K-12)
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  -- Kindergarten Computer Science
  ((SELECT id FROM subjects WHERE name = 'Computer Science'), 0, 'Digital Literacy Foundation',
   'Introduction to using technology safely and following instructions',
   1, '💻',
   '["Learn to use basic devices", "Understand digital citizenship basics", "Follow step-by-step instructions"]'::jsonb),

  -- Grade 1 Computer Science
  ((SELECT id FROM subjects WHERE name = 'Computer Science'), 1, 'Computer Basics',
   'Building foundational computer skills and online safety awareness',
   1, '🖥️',
   '["Use keyboard and mouse effectively", "Navigate the internet safely", "Understand passwords and privacy"]'::jsonb),

  -- Grade 2 Computer Science
  ((SELECT id FROM subjects WHERE name = 'Computer Science'), 2, 'Digital Tools',
   'Learning to use digital tools for creativity and communication',
   1, '🖱️',
   '["Manage files and folders", "Use creative digital tools", "Communicate safely online"]'::jsonb),

  -- Grade 3 Computer Science
  ((SELECT id FROM subjects WHERE name = 'Computer Science'), 3, 'Introduction to Coding',
   'Beginning computational thinking and block-based programming',
   1, '🧩',
   '["Develop typing skills", "Understand sequences and patterns", "Create simple block-based programs"]'::jsonb),

  -- Grade 4 Computer Science
  ((SELECT id FROM subjects WHERE name = 'Computer Science'), 4, 'Algorithms and Logic',
   'Developing algorithmic thinking and visual programming skills',
   1, '🔢',
   '["Research effectively online", "Design algorithms", "Build block-based projects"]'::jsonb),

  -- Grade 5 Computer Science
  ((SELECT id FROM subjects WHERE name = 'Computer Science'), 5, 'Data and Debugging',
   'Understanding data concepts and problem-solving through debugging',
   1, '🔍',
   '["Work with data and information", "Debug programs systematically", "Collaborate on coding projects"]'::jsonb),

  -- Grade 6 Computer Science
  ((SELECT id FROM subjects WHERE name = 'Computer Science'), 6, 'Web and Data Basics',
   'Introduction to web technologies and cybersecurity concepts',
   1, '🌐',
   '["Understand HTML basics", "Learn about variables and data types", "Practice cybersecurity awareness"]'::jsonb),

  -- Grade 7 Computer Science
  ((SELECT id FROM subjects WHERE name = 'Computer Science'), 7, 'Programming Foundations',
   'Building core programming concepts with conditionals and loops',
   1, '🔄',
   '["Use conditionals and loops", "Decompose complex problems", "Understand data representation"]'::jsonb),

  -- Grade 8 Computer Science
  ((SELECT id FROM subjects WHERE name = 'Computer Science'), 8, 'Functions and Databases',
   'Learning modular programming and data storage concepts',
   1, '📊',
   '["Write and use functions", "Create interactive programs", "Understand databases basics"]'::jsonb),

  -- Grade 9 Computer Science
  ((SELECT id FROM subjects WHERE name = 'Computer Science'), 9, 'Programming Fundamentals',
   'Text-based programming and software development practices',
   1, '🐍',
   '["Program in a text-based language", "Understand software development lifecycle", "Use version control"]'::jsonb),

  -- Grade 10 Computer Science
  ((SELECT id FROM subjects WHERE name = 'Computer Science'), 10, 'Object-Oriented Programming',
   'Advanced programming concepts and networked systems',
   1, '🔗',
   '["Apply OOP concepts", "Work with APIs", "Understand networks and internet"]'::jsonb),

  -- Grade 11 Computer Science
  ((SELECT id FROM subjects WHERE name = 'Computer Science'), 11, 'Data Structures and AI',
   'Advanced data structures, algorithms, and AI concepts',
   1, '🤖',
   '["Implement data structures", "Analyze algorithm efficiency", "Explore AI and machine learning basics"]'::jsonb),

  -- Grade 12 Computer Science
  ((SELECT id FROM subjects WHERE name = 'Computer Science'), 12, 'Software Engineering',
   'Complete software projects and explore computer science careers',
   1, '🎓',
   '["Design and build complete applications", "Understand computer ethics", "Explore CS career pathways"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- LINK COMPUTER SCIENCE TOPICS TO UNITS
-- ============================================================================

-- K-2: Digital Literacy Foundation
UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Digital Literacy Foundation' AND grade_level = 0 AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science') AND grade_level_min = 0 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Computer Basics' AND grade_level = 1 AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science') AND grade_level_min = 1 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Digital Tools' AND grade_level = 2 AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science') AND grade_level_min = 2 AND unit_id IS NULL;

-- 3-5: Introduction to CS
UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Introduction to Coding' AND grade_level = 3 AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science') AND grade_level_min = 3 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Algorithms and Logic' AND grade_level = 4 AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science') AND grade_level_min = 4 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Data and Debugging' AND grade_level = 5 AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science') AND grade_level_min = 5 AND unit_id IS NULL;

-- 6-8: Foundations
UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Web and Data Basics' AND grade_level = 6 AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science') AND grade_level_min = 6 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Programming Foundations' AND grade_level = 7 AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science') AND grade_level_min = 7 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Functions and Databases' AND grade_level = 8 AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science') AND grade_level_min = 8 AND unit_id IS NULL;

-- 9-10: Programming
UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Programming Fundamentals' AND grade_level = 9 AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science') AND grade_level_min = 9 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Object-Oriented Programming' AND grade_level = 10 AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science') AND grade_level_min = 10 AND unit_id IS NULL;

-- 11-12: Advanced
UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Data Structures and AI' AND grade_level = 11 AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science') AND grade_level_min = 11 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Software Engineering' AND grade_level = 12 AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science') AND grade_level_min >= 11 AND unit_id IS NULL;

-- Verification
SELECT 'Computer Science units created' as status, COUNT(*) as count
FROM units WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science');
