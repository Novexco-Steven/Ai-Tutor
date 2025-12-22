-- Migration: Expand Grade 1 Math Curriculum
-- Adding missing IXL-aligned skills for grade_level = 1
-- ============================================================================

-- ============================================================================
-- NEW GRADE 1 MATH UNITS
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 1, 'Counting and Number Patterns',
   'Extend counting skills and recognize number patterns',
   5, '🔢',
   '["Count to 120 from any number", "Skip count by 2s, 5s, and 10s", "Identify even and odd numbers", "Recognize number patterns"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 1, 'Time and Money',
   'Tell time and count money',
   6, '💰',
   '["Tell time to the hour and half hour", "Identify coins and their values", "Count collections of coins", "Solve simple money problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 1, 'Fractions Introduction',
   'Understand halves and fourths as equal parts',
   7, '🍕',
   '["Understand equal parts", "Identify halves", "Identify fourths", "Partition shapes into equal parts"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 1, 'Data and Graphs',
   'Organize and interpret data using graphs',
   8, '📊',
   '["Collect and organize data", "Read pictographs", "Read bar graphs", "Ask and answer questions about data"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- EXPAND EXISTING GRADE 1 TOPICS
-- ============================================================================

-- Add more Addition and Subtraction topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Addition and Subtraction' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Adding Within 20', 'Add two numbers with sums up to 20', 3, 6, 20),
  ('Subtracting Within 20', 'Subtract numbers within 20', 3, 7, 20),
  ('Addition Facts to 10', 'Master addition facts within 10', 2, 8, 15),
  ('Subtraction Facts to 10', 'Master subtraction facts within 10', 2, 9, 15),
  ('Doubles Facts', 'Learn doubles addition facts (2+2, 3+3, etc.)', 2, 10, 15),
  ('Doubles Plus One', 'Use doubles to solve near-doubles (2+3, 3+4)', 3, 11, 20),
  ('Making Ten Strategy', 'Break apart numbers to make ten when adding', 3, 12, 20),
  ('Missing Addends', 'Find the missing number in addition equations', 3, 13, 20),
  ('Three Addends', 'Add three numbers together', 3, 14, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Add more Place Value topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Place Value' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Representing Numbers to 100', 'Show numbers using base-ten blocks and drawings', 3, 5, 20),
  ('Number Words to 100', 'Read and write number words to one hundred', 3, 6, 20),
  ('Ordering Numbers', 'Put numbers in order from least to greatest', 3, 7, 20),
  ('Number Patterns to 120', 'Identify and continue number patterns', 3, 8, 20),
  ('10 More and 10 Less', 'Find 10 more and 10 less than a number', 3, 9, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- COUNTING AND NUMBER PATTERNS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Counting and Number Patterns' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Skip Counting by 2s', 'Count by 2s to 100', 2, 1, 15),
  ('Skip Counting by 5s', 'Count by 5s to 100', 2, 2, 15),
  ('Skip Counting by 10s to 120', 'Count by 10s to 120', 2, 3, 15),
  ('Even and Odd Numbers', 'Identify whether a number is even or odd', 2, 4, 20),
  ('Number Line Counting', 'Use number lines to count and find numbers', 2, 5, 20),
  ('Before After Between', 'Find numbers before, after, and between', 2, 6, 15),
  ('Growing Number Patterns', 'Identify and extend growing patterns', 3, 7, 20),
  ('Shrinking Number Patterns', 'Identify and extend decreasing patterns', 3, 8, 20),
  ('Counting Forward and Backward', 'Count forward and backward from any number', 2, 9, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TIME AND MONEY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Time and Money' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Time to the Hour', 'Tell and write time to the hour', 2, 1, 20),
  ('Time to the Half Hour', 'Tell and write time to the half hour', 3, 2, 20),
  ('Digital and Analog Clocks', 'Read time on both types of clocks', 2, 3, 15),
  ('Elapsed Time in Hours', 'Find how many hours have passed', 3, 4, 20),
  ('Coin Values', 'Know the value of pennies, nickels, dimes, quarters', 2, 5, 15),
  ('Counting Like Coins', 'Count groups of the same coin', 2, 6, 20),
  ('Counting Mixed Coins', 'Count collections of different coins', 3, 7, 25),
  ('Dollar Introduction', 'Understand that 100 cents equals one dollar', 2, 8, 15),
  ('Money Word Problems', 'Solve problems involving coins', 3, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- FRACTIONS INTRODUCTION TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Fractions Introduction' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Equal Parts', 'Understand that fractions are equal-sized parts', 2, 1, 15),
  ('Halves', 'Identify and create halves of shapes and groups', 2, 2, 20),
  ('Fourths', 'Identify and create fourths of shapes', 2, 3, 20),
  ('Half vs Fourth', 'Compare halves and fourths', 3, 4, 20),
  ('Partitioning Shapes', 'Divide shapes into equal parts', 2, 5, 20),
  ('Fair Shares', 'Divide objects into equal groups', 2, 6, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DATA AND GRAPHS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Data and Graphs' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Tally Charts', 'Make and read tally charts', 2, 1, 15),
  ('Reading Pictographs', 'Read and interpret pictographs', 2, 2, 20),
  ('Making Pictographs', 'Create pictographs from data', 3, 3, 25),
  ('Reading Bar Graphs', 'Read and interpret bar graphs', 3, 4, 20),
  ('Making Bar Graphs', 'Create bar graphs from data', 3, 5, 25),
  ('Comparing Data', 'Compare information in graphs', 3, 6, 20),
  ('Asking Questions About Data', 'Ask and answer questions using graphs', 3, 7, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPAND MEASUREMENT TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Measuring with Nonstandard Units', 'Measure length using paper clips, cubes, etc.', 2, 5, 20),
  ('Ordering by Length', 'Put objects in order from shortest to longest', 2, 6, 15),
  ('Indirect Comparison', 'Compare lengths using a third object', 3, 7, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPAND GEOMETRY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Defining Attributes', 'Describe shapes by sides, corners, and curves', 2, 5, 20),
  ('Non-Defining Attributes', 'Understand color and size don''t define shapes', 2, 6, 15),
  ('Combining Shapes', 'Use shapes to build larger shapes', 2, 7, 20),
  ('Partitioning Rectangles', 'Divide rectangles into rows and columns', 3, 8, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Grade 1 Math Expansion
-- ============================================================================
-- Added 4 new units: Counting and Number Patterns, Time and Money,
--                    Fractions Introduction, Data and Graphs
-- Added 51 new topics total
-- New total: 8 units, ~68 topics (up from 4 units, ~18 topics)
-- ============================================================================
