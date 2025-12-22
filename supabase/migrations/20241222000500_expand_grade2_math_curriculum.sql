-- Migration: Expand Grade 2 Math Curriculum
-- Adding missing IXL-aligned skills for grade_level = 2
-- ============================================================================

-- ============================================================================
-- NEW GRADE 2 MATH UNITS
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 2, 'Skip Counting and Patterns',
   'Extend skip counting and identify number patterns',
   6, '🔢',
   '["Skip count by 2s, 3s, 4s, 5s, and 10s", "Identify even and odd numbers", "Recognize number patterns", "Extend growing patterns"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 2, 'Time',
   'Tell time and understand elapsed time',
   7, '⏰',
   '["Tell time to 5 minutes", "Understand a.m. and p.m.", "Calculate elapsed time", "Read digital and analog clocks"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 2, 'Money',
   'Count money and solve money problems',
   8, '💵',
   '["Count coins and bills", "Make equivalent amounts", "Compare money amounts", "Solve money word problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 2, 'Fractions',
   'Understand fractions as equal parts',
   9, '🍕',
   '["Understand halves, thirds, and fourths", "Partition shapes into equal parts", "Identify fractions of a whole", "Compare simple fractions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 2, 'Data and Graphs',
   'Collect, organize, and interpret data',
   10, '📊',
   '["Read and create pictographs", "Read and create bar graphs", "Analyze data in graphs", "Solve problems using data"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- EXPAND EXISTING GRADE 2 TOPICS
-- ============================================================================

-- Add more Addition and Subtraction topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Addition and Subtraction' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Adding Within 100', 'Add two-digit numbers with regrouping', 3, 6, 25),
  ('Subtracting Within 100', 'Subtract two-digit numbers with regrouping', 3, 7, 25),
  ('Addition Strategies', 'Use strategies like breaking apart and compensation', 3, 8, 20),
  ('Subtraction Strategies', 'Use strategies like counting up and decomposing', 3, 9, 20),
  ('Adding Three Numbers', 'Add three two-digit numbers', 3, 10, 25),
  ('Estimation with Addition', 'Estimate sums to the nearest ten', 2, 11, 20),
  ('Estimation with Subtraction', 'Estimate differences to the nearest ten', 2, 12, 20),
  ('Fact Families', 'Understand related addition and subtraction facts', 2, 13, 20),
  ('Missing Numbers in Equations', 'Find missing addends and subtrahends', 3, 14, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Add more Place Value topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Place Value' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Numbers to 1000', 'Read, write, and represent numbers to 1000', 3, 6, 25),
  ('Expanded Form to 1000', 'Write numbers in expanded form', 3, 7, 20),
  ('Comparing Three-Digit Numbers', 'Compare numbers using place value', 3, 8, 20),
  ('Ordering Numbers to 1000', 'Order numbers from least to greatest', 3, 9, 20),
  ('100 More and 100 Less', 'Find 100 more and 100 less than a number', 2, 10, 20),
  ('Counting by 100s', 'Skip count by 100s to 1000', 2, 11, 15),
  ('Number Patterns to 1000', 'Identify and extend number patterns', 3, 12, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SKIP COUNTING AND PATTERNS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Skip Counting and Patterns' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Skip Counting by 2s to 100', 'Count by 2s starting from any even number', 2, 1, 15),
  ('Skip Counting by 3s', 'Count by 3s to at least 36', 2, 2, 20),
  ('Skip Counting by 4s', 'Count by 4s to at least 48', 2, 3, 20),
  ('Skip Counting by 5s to 100', 'Count by 5s from any multiple of 5', 2, 4, 15),
  ('Skip Counting by 10s to 1000', 'Count by 10s starting from any number', 2, 5, 15),
  ('Even Numbers', 'Identify even numbers and their properties', 2, 6, 20),
  ('Odd Numbers', 'Identify odd numbers and their properties', 2, 7, 20),
  ('Even or Odd Sums', 'Predict if a sum will be even or odd', 3, 8, 20),
  ('Growing Number Patterns', 'Identify and extend growing patterns', 2, 9, 20),
  ('Shrinking Number Patterns', 'Identify and extend decreasing patterns', 2, 10, 20),
  ('Pattern Rules', 'Describe the rule for a number pattern', 3, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TIME TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Time' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Time to the Hour and Half Hour', 'Review telling time to the hour and half hour', 1, 1, 15),
  ('Time to the Quarter Hour', 'Tell time to quarter past and quarter to', 2, 2, 20),
  ('Time to Five Minutes', 'Tell time to the nearest five minutes', 3, 3, 25),
  ('Reading Digital Clocks', 'Read time on digital clocks', 2, 4, 15),
  ('Matching Analog and Digital', 'Match times on both clock types', 2, 5, 20),
  ('A.M. and P.M.', 'Understand morning and afternoon/evening time', 2, 6, 20),
  ('Elapsed Time in Hours', 'Calculate time that has passed in hours', 3, 7, 25),
  ('Elapsed Time in Half Hours', 'Calculate elapsed time in half hours', 3, 8, 25),
  ('Days Weeks and Months', 'Understand relationships between time units', 2, 9, 20),
  ('Reading Calendars', 'Use calendars to find dates and solve problems', 2, 10, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MONEY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Money' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Coin Values Review', 'Review penny, nickel, dime, and quarter values', 1, 1, 15),
  ('Counting Mixed Coins', 'Count collections of different coins', 2, 2, 20),
  ('Counting Coins to a Dollar', 'Count coin collections up to $1.00', 3, 3, 25),
  ('Dollar Bills', 'Identify and count dollar bills', 2, 4, 15),
  ('Dollars and Cents Notation', 'Write money amounts using $ and decimal', 2, 5, 20),
  ('Comparing Money Amounts', 'Compare money amounts using symbols', 2, 6, 20),
  ('Making Change', 'Find how much change is owed', 3, 7, 25),
  ('Equivalent Amounts', 'Show the same amount with different coins', 3, 8, 25),
  ('Money Word Problems', 'Solve addition and subtraction money problems', 3, 9, 25),
  ('Making Purchases', 'Determine if there is enough money to buy items', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- FRACTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Fractions' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Equal Parts', 'Identify shapes divided into equal parts', 1, 1, 15),
  ('Halves of Shapes', 'Identify and shade halves of shapes', 2, 2, 20),
  ('Thirds of Shapes', 'Identify and shade thirds of shapes', 2, 3, 20),
  ('Fourths of Shapes', 'Identify and shade fourths of shapes', 2, 4, 20),
  ('Halves of Groups', 'Find half of a group of objects', 2, 5, 20),
  ('Thirds of Groups', 'Find one-third of a group of objects', 3, 6, 20),
  ('Fourths of Groups', 'Find one-fourth of a group of objects', 3, 7, 20),
  ('Naming Fractions', 'Name fractions using numerator and denominator', 2, 8, 20),
  ('Comparing Unit Fractions', 'Compare 1/2, 1/3, and 1/4', 3, 9, 25),
  ('Fractions on Number Lines', 'Locate fractions on a number line', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DATA AND GRAPHS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Data and Graphs' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Tally Charts', 'Create and read tally charts', 2, 1, 20),
  ('Reading Pictographs', 'Interpret pictographs where each symbol = 1', 2, 2, 20),
  ('Pictographs with Keys', 'Read pictographs where symbols = 2 or more', 3, 3, 25),
  ('Creating Pictographs', 'Make pictographs from collected data', 3, 4, 25),
  ('Reading Bar Graphs', 'Interpret horizontal and vertical bar graphs', 2, 5, 20),
  ('Creating Bar Graphs', 'Create bar graphs from data sets', 3, 6, 25),
  ('Line Plots', 'Read and create line plots with whole numbers', 3, 7, 25),
  ('Comparing Data in Graphs', 'Answer comparison questions using graphs', 3, 8, 20),
  ('Survey Questions', 'Design and conduct simple surveys', 2, 9, 25),
  ('Drawing Conclusions', 'Make conclusions based on data', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPAND MEASUREMENT TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Measuring in Inches', 'Measure length to the nearest inch', 2, 5, 20),
  ('Measuring in Centimeters', 'Measure length to the nearest centimeter', 2, 6, 20),
  ('Choosing Appropriate Units', 'Decide between inches, feet, centimeters, meters', 2, 7, 20),
  ('Comparing Lengths', 'Compare and order objects by length', 2, 8, 20),
  ('Adding and Subtracting Lengths', 'Solve problems involving length', 3, 9, 25),
  ('Estimating Length', 'Estimate lengths before measuring', 2, 10, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPAND GEOMETRY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Identifying Polygons', 'Recognize and name polygons by sides', 2, 5, 20),
  ('Quadrilaterals', 'Identify and describe quadrilaterals', 2, 6, 20),
  ('Lines of Symmetry', 'Find lines of symmetry in shapes', 2, 7, 20),
  ('Partitioning Rectangles', 'Divide rectangles into equal rows and columns', 2, 8, 20),
  ('Area Introduction', 'Count unit squares to find area', 3, 9, 25),
  ('Combining Shapes', 'Create larger shapes from smaller shapes', 2, 10, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ADD MULTIPLICATION INTRODUCTION UNIT
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 2, 'Multiplication Introduction',
   'Build foundation for multiplication through equal groups',
   11, '✖️',
   '["Understand equal groups", "Use repeated addition", "Create arrays", "Begin to understand multiplication"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Multiplication Introduction' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Equal Groups', 'Understand and identify equal groups', 2, 1, 20),
  ('Counting Equal Groups', 'Count objects in equal groups', 2, 2, 20),
  ('Repeated Addition', 'Use repeated addition for equal groups', 2, 3, 25),
  ('Arrays Introduction', 'Arrange objects in rows and columns', 2, 4, 20),
  ('Counting with Arrays', 'Count objects arranged in arrays', 2, 5, 20),
  ('Describing Arrays', 'Describe arrays using rows and columns', 2, 6, 20),
  ('Addition and Arrays', 'Connect repeated addition to arrays', 3, 7, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Grade 2 Math Expansion
-- ============================================================================
-- Added 6 new units: Skip Counting and Patterns, Time, Money, Fractions,
--                    Data and Graphs, Multiplication Introduction
-- Added 66 new topics total
-- New total: 11 units, ~86 topics (up from 5 units, ~20 topics)
-- ============================================================================
