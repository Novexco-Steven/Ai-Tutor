-- Migration: Add missing topics for orphaned Topic Guide prompts
-- ============================================================================

-- ============================================================================
-- MATH TOPICS - Basic (K-1)
-- ============================================================================

-- Kindergarten Math topics
INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Number Recognition',
  s.id,
  0, 0,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 0 ORDER BY u.order_index LIMIT 1),
  'Recognizing and identifying numbers'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Counting to 10',
  s.id,
  0, 0,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 0 ORDER BY u.order_index LIMIT 1),
  'Counting from 1 to 10'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

-- Grade 1 Math topics
INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Counting On',
  s.id,
  1, 1,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 1 ORDER BY u.order_index LIMIT 1),
  'Counting on from a given number'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Addition Stories',
  s.id,
  1, 1,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 1 ORDER BY u.order_index LIMIT 1),
  'Word problems involving addition'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Subtraction Stories',
  s.id,
  1, 1,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 1 ORDER BY u.order_index LIMIT 1),
  'Word problems involving subtraction'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Comparing Numbers to 100',
  s.id,
  1, 1,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 1 ORDER BY u.order_index LIMIT 1),
  'Comparing two-digit numbers using greater than, less than, equal to'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

-- ============================================================================
-- MATH TOPICS - Advanced (9-12)
-- ============================================================================

-- Grade 9 Math topics (Algebra)
INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Polynomial Equations',
  s.id,
  9, 9,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 9 ORDER BY u.order_index LIMIT 1),
  'Solving polynomial equations'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Quadratic Formula and Discriminant',
  s.id,
  9, 9,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 9 ORDER BY u.order_index LIMIT 1),
  'Using the quadratic formula and understanding the discriminant'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

-- Grade 10 Math topics (Algebra II / Statistics)
INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Logarithms',
  s.id,
  10, 10,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 10 ORDER BY u.order_index LIMIT 1),
  'Understanding and working with logarithms'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Exponential and Logarithmic Equations',
  s.id,
  10, 10,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 10 ORDER BY u.order_index LIMIT 1),
  'Solving exponential and logarithmic equations'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Probability Concepts',
  s.id,
  10, 10,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 10 ORDER BY u.order_index LIMIT 1),
  'Fundamental probability concepts and calculations'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Combinations and Permutations',
  s.id,
  10, 10,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 10 ORDER BY u.order_index LIMIT 1),
  'Counting techniques using combinations and permutations'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

-- Grade 11 Math topics (Pre-Calculus)
INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Trigonometric Functions',
  s.id,
  11, 11,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 11 ORDER BY u.order_index LIMIT 1),
  'Understanding and graphing trigonometric functions'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Ellipses and Hyperbolas',
  s.id,
  11, 11,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 11 ORDER BY u.order_index LIMIT 1),
  'Conic sections: ellipses and hyperbolas'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Parametric Equations',
  s.id,
  11, 11,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 11 ORDER BY u.order_index LIMIT 1),
  'Working with parametric equations'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

-- Grade 12 Math topics (Calculus)
INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Rate of Change and Derivatives',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Understanding derivatives as rates of change'
FROM subjects s WHERE s.name = 'Math'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

-- ============================================================================
-- HISTORY TOPICS - Grade 2
-- ============================================================================

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Native Americans',
  s.id,
  2, 2,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 2 ORDER BY u.order_index LIMIT 1),
  'Learning about Native American peoples and cultures'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

-- ============================================================================
-- HISTORY TOPICS - Grade 12 (Government & Economics)
-- ============================================================================

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Constitutional Rights',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Understanding constitutional rights and freedoms'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'The U.S. Constitution',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Structure and principles of the U.S. Constitution'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Types of Government',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Different forms and systems of government'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Elections and Voting',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Electoral processes and voting rights'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Political Parties',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Role and function of political parties'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Interest Groups',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Role of interest groups in politics'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Public Policy',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'How public policy is created and implemented'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Supply and Demand',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Economic principles of supply and demand'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Market Structures',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Different types of market structures'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Scarcity and Choice',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Economic concepts of scarcity and opportunity cost'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Money and Banking',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Functions of money and the banking system'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'The Federal Reserve',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Role and functions of the Federal Reserve'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Fiscal Policy',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Government fiscal policy and its effects'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Economic Indicators',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Understanding GDP, inflation, unemployment and other indicators'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'International Trade',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Global trade and international economics'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Personal Finance',
  s.id,
  12, 12,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 12 ORDER BY u.order_index LIMIT 1),
  'Personal financial planning and money management'
FROM subjects s WHERE s.name = 'History'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;

-- ============================================================================
-- SCIENCE TOPICS - Grade 7
-- ============================================================================

INSERT INTO topics (name, subject_id, grade_level_min, grade_level_max, unit_id, description)
SELECT
  'Weather vs Climate',
  s.id,
  7, 7,
  (SELECT u.id FROM units u WHERE u.subject_id = s.id AND u.grade_level = 7 ORDER BY u.order_index LIMIT 1),
  'Understanding the difference between weather and climate'
FROM subjects s WHERE s.name = 'Science'
ON CONFLICT (name, subject_id, grade_level_min) DO NOTHING;
