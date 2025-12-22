-- Migration: Expand Kindergarten Math Curriculum
-- Adding missing IXL-aligned skills for grade_level = 0
-- ============================================================================

-- ============================================================================
-- NEW KINDERGARTEN MATH UNITS
-- ============================================================================

-- Add new units for Kindergarten
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 0, 'Skip Counting',
   'Learn to count by 2s, 5s, and 10s to develop number pattern recognition',
   6, '🔄',
   '["Skip count by 2s to 20", "Skip count by 5s to 50", "Skip count by 10s to 100", "Recognize counting patterns"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 0, 'Time and Calendar',
   'Understand clocks, days of the week, and basic calendar concepts',
   7, '🕐',
   '["Tell time to the hour", "Name days of the week", "Identify months of the year", "Understand seasons"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 0, 'Money Basics',
   'Identify coins and understand their values',
   8, '🪙',
   '["Identify penny, nickel, dime, quarter", "Know coin values", "Count small amounts of money", "Understand money is used to buy things"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 0, 'Patterns and Positions',
   'Recognize patterns and describe positions of objects',
   9, '🎯',
   '["Identify and extend patterns", "Use position words", "Describe location of objects", "Understand ordinal numbers"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 0, 'Data and Probability',
   'Collect data, create simple graphs, and understand chance',
   10, '📊',
   '["Collect and organize data", "Read simple pictographs", "Create graphs", "Understand likely and unlikely"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- EXPAND EXISTING KINDERGARTEN TOPICS
-- ============================================================================

-- Add more topics to Counting and Cardinality unit
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Counting and Cardinality' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Ordinal Numbers', 'Understand first, second, third through tenth position', 2, 6, 15),
  ('One More and One Less', 'Find the number that is one more or one less', 2, 7, 15),
  ('Number Sequences', 'Fill in missing numbers in a sequence', 2, 8, 20),
  ('Counting by Ones to 100', 'Count forward from any number to 100', 3, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Add more topics to Operations unit
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Operations and Algebraic Thinking' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Number Bonds to 5', 'Learn ways to make 5 using two numbers', 2, 6, 15),
  ('Number Bonds to 10', 'Learn ways to make 10 using two numbers', 3, 7, 20),
  ('Missing Addends', 'Find the missing number in an addition problem', 3, 8, 20),
  ('Comparing Sums', 'Compare addition results to determine greater or less', 3, 9, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SKIP COUNTING TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Skip Counting' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Skip Counting by 2s', 'Count by 2s: 2, 4, 6, 8, 10 and beyond', 2, 1, 15),
  ('Skip Counting by 5s', 'Count by 5s: 5, 10, 15, 20 and beyond', 2, 2, 15),
  ('Skip Counting by 10s', 'Count by 10s: 10, 20, 30 up to 100', 1, 3, 15),
  ('Skip Counting Patterns', 'Recognize and continue skip counting patterns', 2, 4, 20),
  ('Skip Counting on Number Lines', 'Use number lines to skip count', 2, 5, 20),
  ('Skip Counting Backwards', 'Count backwards by 2s, 5s, and 10s', 3, 6, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TIME AND CALENDAR TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Time and Calendar' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Clock Parts', 'Learn about hour hand, minute hand, and clock face', 1, 1, 15),
  ('Time to the Hour', 'Tell time when the minute hand is on 12', 2, 2, 20),
  ('Time to the Half Hour', 'Tell time when the minute hand is on 6', 3, 3, 20),
  ('Days of the Week', 'Name and order the seven days of the week', 1, 4, 15),
  ('Months of the Year', 'Name and order the twelve months', 2, 5, 20),
  ('Reading a Calendar', 'Find dates and special days on a calendar', 2, 6, 20),
  ('Yesterday Today Tomorrow', 'Understand time words for days', 1, 7, 15),
  ('Morning Afternoon Evening', 'Distinguish parts of the day', 1, 8, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MONEY BASICS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Money Basics' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Identifying Coins', 'Recognize penny, nickel, dime, and quarter', 1, 1, 15),
  ('Penny Value', 'Understand a penny is worth 1 cent', 1, 2, 15),
  ('Nickel Value', 'Understand a nickel is worth 5 cents', 2, 3, 15),
  ('Dime Value', 'Understand a dime is worth 10 cents', 2, 4, 15),
  ('Quarter Value', 'Understand a quarter is worth 25 cents', 2, 5, 15),
  ('Counting Pennies', 'Count groups of pennies up to 10 cents', 2, 6, 20),
  ('Counting Mixed Coins', 'Count small groups of mixed coins', 3, 7, 25),
  ('Dollar Introduction', 'Recognize a dollar bill and understand 100 cents = 1 dollar', 2, 8, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PATTERNS AND POSITIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Patterns and Positions' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Color Patterns', 'Identify and extend patterns using colors', 1, 1, 15),
  ('Shape Patterns', 'Identify and extend patterns using shapes', 2, 2, 15),
  ('Size Patterns', 'Identify and extend patterns using sizes', 2, 3, 15),
  ('Creating Patterns', 'Make your own AB, ABC, and ABB patterns', 2, 4, 20),
  ('Position Words', 'Use above, below, beside, in front, behind', 1, 5, 15),
  ('Left and Right', 'Distinguish left from right', 2, 6, 15),
  ('Inside and Outside', 'Identify objects inside or outside a space', 1, 7, 15),
  ('Near and Far', 'Compare distances using near and far', 1, 8, 15),
  ('First Second Third', 'Use ordinal words to describe position', 2, 9, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DATA AND PROBABILITY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Data and Probability' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Collecting Data', 'Gather information by asking questions and observing', 1, 1, 15),
  ('Sorting Data', 'Organize data into groups', 2, 2, 15),
  ('Reading Pictographs', 'Read simple picture graphs', 2, 3, 20),
  ('Creating Pictographs', 'Make simple picture graphs with data', 3, 4, 25),
  ('Bar Graphs Introduction', 'Read simple bar graphs', 3, 5, 20),
  ('Certain Possible Impossible', 'Understand what might happen or cannot happen', 2, 6, 20),
  ('More Likely Less Likely', 'Compare chances of events happening', 2, 7, 20),
  ('Predicting Outcomes', 'Make predictions about simple experiments', 3, 8, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ADD MORE GEOMETRY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Corners and Sides', 'Count corners and sides of shapes', 2, 5, 15),
  ('Comparing Shapes', 'Describe how shapes are alike and different', 2, 6, 15),
  ('Shape Puzzles', 'Put shapes together to make pictures', 2, 7, 20),
  ('Symmetry Introduction', 'Find shapes that are the same on both sides', 3, 8, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ADD MORE MEASUREMENT TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement and Data' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Comparing Weights', 'Compare objects using heavy and light', 2, 4, 15),
  ('Comparing Capacity', 'Compare containers using full and empty', 2, 5, 15),
  ('Measuring with Objects', 'Measure length using paper clips or cubes', 2, 6, 20),
  ('Ordering by Size', 'Put objects in order from smallest to largest', 2, 7, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Kindergarten Math Expansion
-- ============================================================================
-- Added 5 new units: Skip Counting, Time and Calendar, Money Basics,
--                    Patterns and Positions, Data and Probability
-- Added 47 new topics total
-- New total: 10 units, ~67 topics (up from 5 units, 20 topics)
-- ============================================================================
