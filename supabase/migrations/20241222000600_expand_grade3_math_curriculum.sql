-- Migration: Expand Grade 3 Math Curriculum
-- Adding missing IXL-aligned skills for grade_level = 3
-- MAJOR EXPANSION - IXL has 429 skills for Grade 3
-- ============================================================================

-- ============================================================================
-- NEW GRADE 3 MATH UNITS
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Multiplication Facts',
   'Master multiplication facts and strategies',
   6, '✖️',
   '["Multiply by 0-10", "Use multiplication strategies", "Master multiplication facts", "Solve multiplication word problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Division Facts',
   'Understand division and master division facts',
   7, '➗',
   '["Understand division as equal groups", "Divide by 1-10", "Connect multiplication and division", "Solve division word problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Time',
   'Tell time to the minute and calculate elapsed time',
   8, '⏰',
   '["Tell time to the minute", "Calculate elapsed time", "Solve time word problems", "Understand time intervals"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Money',
   'Solve multi-step money problems',
   9, '💵',
   '["Add and subtract money amounts", "Make change", "Solve money word problems", "Compare costs"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Decimals Introduction',
   'Understand decimals as parts of a whole',
   10, '0.5',
   '["Understand tenths", "Write decimals in different forms", "Compare decimals", "Connect decimals and fractions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Data and Probability',
   'Organize data and understand probability basics',
   11, '📊',
   '["Create and read graphs", "Analyze data sets", "Understand probability vocabulary", "Conduct probability experiments"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Perimeter and Area',
   'Calculate perimeter and area of shapes',
   12, '📐',
   '["Find perimeter of polygons", "Calculate area using unit squares", "Apply formulas for rectangles", "Solve real-world problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Patterns and Algebra',
   'Explore patterns and algebraic thinking',
   13, '🔢',
   '["Identify and extend patterns", "Write and solve equations", "Understand input-output tables", "Use variables"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- EXPAND EXISTING GRADE 3 TOPICS
-- ============================================================================

-- Add more Place Value topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Place Value' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Reading Numbers to 10000', 'Read and write numbers to ten thousand', 2, 6, 20),
  ('Writing Numbers in Words', 'Write numbers in word form', 2, 7, 20),
  ('Expanded Form to 10000', 'Write numbers in expanded form', 2, 8, 20),
  ('Comparing Four-Digit Numbers', 'Compare using place value understanding', 2, 9, 20),
  ('Ordering Large Numbers', 'Order numbers from least to greatest', 2, 10, 20),
  ('Rounding to Nearest 10', 'Round numbers to the nearest ten', 2, 11, 20),
  ('Rounding to Nearest 100', 'Round numbers to the nearest hundred', 2, 12, 20),
  ('Rounding to Nearest 1000', 'Round numbers to the nearest thousand', 3, 13, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Add more Addition and Subtraction topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Addition and Subtraction' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Adding Three-Digit Numbers', 'Add with regrouping across places', 2, 6, 25),
  ('Subtracting Three-Digit Numbers', 'Subtract with regrouping', 3, 7, 25),
  ('Adding Four-Digit Numbers', 'Add numbers in the thousands', 3, 8, 25),
  ('Subtracting Four-Digit Numbers', 'Subtract numbers in the thousands', 3, 9, 25),
  ('Estimating Sums', 'Use rounding to estimate sums', 2, 10, 20),
  ('Estimating Differences', 'Use rounding to estimate differences', 2, 11, 20),
  ('Addition Properties', 'Apply commutative and associative properties', 2, 12, 20),
  ('Mental Math Strategies', 'Use mental math for addition and subtraction', 2, 13, 20),
  ('Multi-Step Word Problems', 'Solve problems with multiple steps', 3, 14, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MULTIPLICATION FACTS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Multiplication Facts' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Multiplication Concepts', 'Understand multiplication as repeated addition', 1, 1, 20),
  ('Multiply by 0 and 1', 'Learn identity and zero properties', 1, 2, 15),
  ('Multiply by 2', 'Master multiplication facts for 2', 2, 3, 20),
  ('Multiply by 3', 'Master multiplication facts for 3', 2, 4, 20),
  ('Multiply by 4', 'Master multiplication facts for 4', 2, 5, 20),
  ('Multiply by 5', 'Master multiplication facts for 5', 2, 6, 20),
  ('Multiply by 6', 'Master multiplication facts for 6', 2, 7, 20),
  ('Multiply by 7', 'Master multiplication facts for 7', 3, 8, 25),
  ('Multiply by 8', 'Master multiplication facts for 8', 3, 9, 25),
  ('Multiply by 9', 'Master multiplication facts for 9 with patterns', 2, 10, 20),
  ('Multiply by 10', 'Multiply by 10 using place value', 1, 11, 15),
  ('Mixed Multiplication Facts', 'Practice all multiplication facts to 10', 3, 12, 25),
  ('Multiplication Strategies', 'Use doubling, skip counting, and known facts', 2, 13, 25),
  ('Commutative Property', 'Understand that order does not change the product', 2, 14, 20),
  ('Associative Property', 'Group factors in different ways', 2, 15, 20),
  ('Arrays and Multiplication', 'Connect arrays to multiplication equations', 2, 16, 20),
  ('Multiplication Word Problems', 'Solve real-world multiplication problems', 3, 17, 25),
  ('Missing Factors', 'Find the missing factor in multiplication', 3, 18, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DIVISION FACTS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Division Facts' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Division Concepts', 'Understand division as equal sharing', 1, 1, 20),
  ('Division as Repeated Subtraction', 'Connect subtraction to division', 2, 2, 20),
  ('Division with Arrays', 'Use arrays to understand division', 2, 3, 20),
  ('Divide by 1', 'Understand dividing by 1', 1, 4, 15),
  ('Divide by 2', 'Master division facts for 2', 2, 5, 20),
  ('Divide by 3', 'Master division facts for 3', 2, 6, 20),
  ('Divide by 4', 'Master division facts for 4', 2, 7, 20),
  ('Divide by 5', 'Master division facts for 5', 2, 8, 20),
  ('Divide by 6', 'Master division facts for 6', 3, 9, 25),
  ('Divide by 7', 'Master division facts for 7', 3, 10, 25),
  ('Divide by 8', 'Master division facts for 8', 3, 11, 25),
  ('Divide by 9', 'Master division facts for 9', 3, 12, 25),
  ('Divide by 10', 'Divide by 10 using place value', 2, 13, 20),
  ('Mixed Division Facts', 'Practice all division facts to 10', 3, 14, 25),
  ('Fact Families', 'Connect multiplication and division in fact families', 2, 15, 20),
  ('Division Word Problems', 'Solve real-world division problems', 3, 16, 25),
  ('Division with Remainders Introduction', 'Understand remainders in division', 3, 17, 25),
  ('Interpreting Remainders', 'Decide what to do with remainders', 3, 18, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TIME TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Time' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Time to the Minute', 'Tell time to the nearest minute', 2, 1, 20),
  ('Time Before and After Hour', 'Express time as before or after the hour', 2, 2, 20),
  ('Converting Time Units', 'Convert between hours, minutes, seconds', 2, 3, 25),
  ('Elapsed Time Minutes', 'Find elapsed time in minutes', 3, 4, 25),
  ('Elapsed Time Hours and Minutes', 'Calculate elapsed time with mixed units', 3, 5, 30),
  ('Time Word Problems', 'Solve real-world time problems', 3, 6, 25),
  ('Schedules and Timelines', 'Read and create schedules', 2, 7, 25),
  ('Start and End Times', 'Find start or end time given elapsed time', 3, 8, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MONEY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Money' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Counting Money Review', 'Count combinations of coins and bills', 1, 1, 15),
  ('Adding Money', 'Add money amounts with decimals', 2, 2, 20),
  ('Subtracting Money', 'Subtract money amounts with decimals', 2, 3, 20),
  ('Making Change', 'Calculate change from purchases', 3, 4, 25),
  ('Comparing Prices', 'Compare costs and find better deals', 2, 5, 20),
  ('Multi-Step Money Problems', 'Solve problems with multiple purchases', 3, 6, 30),
  ('Estimating Costs', 'Round to estimate total costs', 2, 7, 20),
  ('Budgeting Basics', 'Plan spending within a budget', 3, 8, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- FRACTIONS TOPICS (EXPAND EXISTING)
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Fractions' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Fractions on Number Lines', 'Locate fractions on a number line', 2, 6, 25),
  ('Fractions Greater Than 1', 'Understand improper fractions and mixed numbers', 3, 7, 25),
  ('Equivalent Fractions with Models', 'Use models to find equivalent fractions', 2, 8, 25),
  ('Equivalent Fractions with Numbers', 'Find equivalent fractions by multiplying', 3, 9, 25),
  ('Comparing Fractions Same Denominator', 'Compare fractions with like denominators', 2, 10, 20),
  ('Comparing Fractions Same Numerator', 'Compare fractions with like numerators', 2, 11, 20),
  ('Comparing Fractions to Benchmarks', 'Compare fractions to 0, 1/2, and 1', 3, 12, 25),
  ('Ordering Fractions', 'Order fractions from least to greatest', 3, 13, 25),
  ('Adding Fractions Same Denominator', 'Add fractions with like denominators', 2, 14, 20),
  ('Subtracting Fractions Same Denominator', 'Subtract fractions with like denominators', 2, 15, 20),
  ('Fraction Word Problems', 'Solve word problems involving fractions', 3, 16, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DECIMALS INTRODUCTION TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Decimals Introduction' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Tenths', 'Explore tenths as parts of a whole', 2, 1, 20),
  ('Writing Tenths as Decimals', 'Write fractions as decimals', 2, 2, 20),
  ('Decimals on Number Lines', 'Locate decimals on number lines', 2, 3, 25),
  ('Comparing Tenths', 'Compare decimal numbers in tenths', 2, 4, 20),
  ('Ordering Decimals', 'Order decimals from least to greatest', 2, 5, 20),
  ('Decimals and Fractions', 'Convert between decimals and fractions', 3, 6, 25),
  ('Decimals and Money', 'Connect decimals to dollars and cents', 2, 7, 20),
  ('Adding Tenths', 'Add decimal numbers in tenths', 3, 8, 25),
  ('Subtracting Tenths', 'Subtract decimal numbers in tenths', 3, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DATA AND PROBABILITY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Data and Probability' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Reading Pictographs', 'Interpret pictographs with scaled symbols', 2, 1, 20),
  ('Creating Pictographs', 'Create pictographs with appropriate scales', 3, 2, 25),
  ('Reading Bar Graphs', 'Interpret scaled bar graphs', 2, 3, 20),
  ('Creating Bar Graphs', 'Create bar graphs from data', 3, 4, 25),
  ('Line Plots', 'Create and interpret line plots', 2, 5, 25),
  ('Frequency Tables', 'Organize data in frequency tables', 2, 6, 20),
  ('Interpreting Data', 'Answer questions about data sets', 2, 7, 20),
  ('Probability Vocabulary', 'Use certain, likely, unlikely, impossible', 2, 8, 20),
  ('Simple Probability', 'Describe probability of simple events', 3, 9, 25),
  ('Probability Experiments', 'Conduct and record probability experiments', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PERIMETER AND AREA TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Perimeter and Area' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Perimeter', 'Define perimeter as distance around', 1, 1, 15),
  ('Finding Perimeter by Counting', 'Count units around a shape', 2, 2, 20),
  ('Perimeter of Polygons', 'Add side lengths to find perimeter', 2, 3, 20),
  ('Perimeter of Rectangles', 'Use formula for rectangle perimeter', 2, 4, 20),
  ('Missing Side Lengths', 'Find unknown sides given perimeter', 3, 5, 25),
  ('Understanding Area', 'Define area as space inside a shape', 1, 6, 15),
  ('Finding Area by Counting', 'Count unit squares to find area', 2, 7, 20),
  ('Area of Rectangles', 'Use length times width formula', 2, 8, 20),
  ('Area and Multiplication', 'Connect area to multiplication', 2, 9, 20),
  ('Area of Composite Shapes', 'Find area of L-shaped figures', 3, 10, 30),
  ('Perimeter vs Area', 'Distinguish between perimeter and area', 2, 11, 20),
  ('Same Perimeter Different Area', 'Explore shapes with same perimeter', 3, 12, 25),
  ('Real-World Perimeter and Area', 'Solve practical problems', 3, 13, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PATTERNS AND ALGEBRA TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Patterns and Algebra' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Number Patterns', 'Identify and extend number patterns', 2, 1, 20),
  ('Pattern Rules', 'Describe rules for patterns', 2, 2, 20),
  ('Growing Patterns', 'Analyze patterns that increase', 2, 3, 20),
  ('Shrinking Patterns', 'Analyze patterns that decrease', 2, 4, 20),
  ('Input-Output Tables', 'Find rules from input-output tables', 3, 5, 25),
  ('Creating Patterns', 'Create patterns given a rule', 2, 6, 20),
  ('Variables Introduction', 'Use letters to represent unknowns', 2, 7, 20),
  ('One-Step Equations Addition', 'Solve equations like x + 5 = 12', 2, 8, 25),
  ('One-Step Equations Subtraction', 'Solve equations like x - 3 = 7', 2, 9, 25),
  ('One-Step Equations Multiplication', 'Solve equations like 4x = 20', 3, 10, 25),
  ('Word Problems with Equations', 'Write and solve equations from words', 3, 11, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPAND GEOMETRY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Classifying Polygons', 'Classify polygons by number of sides', 2, 5, 20),
  ('Types of Triangles by Sides', 'Identify equilateral, isosceles, scalene', 2, 6, 20),
  ('Types of Triangles by Angles', 'Identify acute, right, obtuse triangles', 2, 7, 20),
  ('Types of Quadrilaterals', 'Identify squares, rectangles, rhombi, trapezoids', 2, 8, 25),
  ('Lines and Line Segments', 'Distinguish lines, segments, and rays', 2, 9, 20),
  ('Parallel and Perpendicular Lines', 'Identify parallel and perpendicular lines', 2, 10, 20),
  ('Angles Introduction', 'Understand angles as turns', 2, 11, 20),
  ('Right Angles', 'Identify right angles in shapes', 2, 12, 20),
  ('Symmetry', 'Find lines of symmetry', 2, 13, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPAND MEASUREMENT TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Measuring to Quarter Inch', 'Measure to the nearest quarter inch', 3, 5, 25),
  ('Measuring to Half Inch', 'Measure to the nearest half inch', 2, 6, 20),
  ('Converting Length Units', 'Convert between inches, feet, yards', 3, 7, 25),
  ('Metric Length Conversions', 'Convert between cm, m, km', 3, 8, 25),
  ('Liquid Volume', 'Measure using liters and milliliters', 2, 9, 20),
  ('Mass and Weight', 'Measure using grams, kilograms, ounces, pounds', 2, 10, 25),
  ('Estimating Measurements', 'Estimate length, volume, and mass', 2, 11, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Grade 3 Math Expansion
-- ============================================================================
-- Added 8 new units: Multiplication Facts, Division Facts, Time, Money,
--                    Decimals Introduction, Data and Probability,
--                    Perimeter and Area, Patterns and Algebra
-- Added 123 new topics total
-- New total: 13 units, ~141 topics (up from 5 units, ~18 topics)
-- ============================================================================
