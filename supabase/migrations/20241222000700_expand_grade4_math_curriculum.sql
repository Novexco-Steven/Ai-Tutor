-- Migration: Expand Grade 4 Math Curriculum
-- Adding missing IXL-aligned skills for grade_level = 4
-- ============================================================================

-- ============================================================================
-- NEW GRADE 4 MATH UNITS
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Multi-Digit Multiplication',
   'Multiply multi-digit numbers using strategies and algorithms',
   6, '✖️',
   '["Multiply by multiples of 10", "Use area models", "Apply standard algorithm", "Solve multiplication word problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Multi-Digit Division',
   'Divide multi-digit numbers with and without remainders',
   7, '➗',
   '["Divide using place value", "Use partial quotients", "Apply standard algorithm", "Interpret remainders"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Factors and Multiples',
   'Understand factors, multiples, and prime numbers',
   8, '🔢',
   '["Find factors of numbers", "Identify multiples", "Understand prime and composite", "Find factor pairs"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Decimals',
   'Understand and operate with decimals to hundredths',
   9, '0.00',
   '["Read and write decimals", "Compare and order decimals", "Add and subtract decimals", "Connect decimals to fractions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Coordinate Plane Introduction',
   'Plot and identify points on a coordinate grid',
   10, '📍',
   '["Understand ordered pairs", "Plot points in first quadrant", "Read coordinates", "Graph patterns"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Data and Probability',
   'Collect, display, and analyze data',
   11, '📊',
   '["Create line plots", "Interpret graphs", "Find mean and median", "Understand probability"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Perimeter and Area',
   'Calculate perimeter and area of complex shapes',
   12, '📐',
   '["Find perimeter of polygons", "Calculate area of rectangles", "Solve composite shape problems", "Apply formulas"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Angles',
   'Measure and classify angles',
   13, '📏',
   '["Identify angle types", "Measure angles with protractor", "Find unknown angles", "Understand angle relationships"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Algebraic Thinking',
   'Use variables and solve equations',
   14, '🔤',
   '["Write expressions with variables", "Solve one-step equations", "Analyze patterns", "Use input-output tables"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- EXPAND EXISTING GRADE 4 TOPICS
-- ============================================================================

-- Add more Place Value topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Place Value' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Numbers to Millions', 'Read and write numbers to millions', 2, 6, 25),
  ('Place Value Relationships', 'Understand 10 times and 1/10 relationships', 3, 7, 25),
  ('Comparing Large Numbers', 'Compare numbers to millions', 2, 8, 20),
  ('Ordering Large Numbers', 'Order numbers from least to greatest', 2, 9, 20),
  ('Rounding Large Numbers', 'Round to any place value', 2, 10, 20),
  ('Roman Numerals', 'Read and write Roman numerals to 100', 2, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MULTI-DIGIT MULTIPLICATION TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Multi-Digit Multiplication' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Multiplying by 10 100 1000', 'Use patterns for multiplying by powers of 10', 2, 1, 20),
  ('Multiplying by Multiples of 10', 'Multiply like 30 x 40', 2, 2, 20),
  ('Estimating Products', 'Estimate products using rounding', 2, 3, 20),
  ('Area Model Multiplication', 'Use area models for 2-digit by 2-digit', 3, 4, 30),
  ('Partial Products', 'Break apart numbers to multiply', 3, 5, 25),
  ('Multiply 2-Digit by 1-Digit', 'Standard algorithm with 2-digit numbers', 2, 6, 25),
  ('Multiply 3-Digit by 1-Digit', 'Extend algorithm to 3-digit numbers', 3, 7, 25),
  ('Multiply 4-Digit by 1-Digit', 'Extend to larger numbers', 3, 8, 25),
  ('Multiply 2-Digit by 2-Digit', 'Standard algorithm for 2 by 2 digit', 3, 9, 30),
  ('Multiply 3-Digit by 2-Digit', 'Extend to larger factors', 3, 10, 30),
  ('Multiplication Properties', 'Apply distributive property', 2, 11, 25),
  ('Multiplication Word Problems', 'Solve multi-step problems', 3, 12, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MULTI-DIGIT DIVISION TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Multi-Digit Division' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Dividing by 10 100 1000', 'Use patterns for dividing by powers of 10', 2, 1, 20),
  ('Estimating Quotients', 'Estimate quotients using compatible numbers', 2, 2, 20),
  ('Division with Remainders', 'Understand and interpret remainders', 2, 3, 25),
  ('Divide 2-Digit by 1-Digit', 'Divide with no remainder', 2, 4, 25),
  ('Divide 2-Digit with Remainder', 'Divide with remainders', 3, 5, 25),
  ('Divide 3-Digit by 1-Digit', 'Extend to 3-digit dividends', 3, 6, 25),
  ('Divide 4-Digit by 1-Digit', 'Extend to 4-digit dividends', 3, 7, 30),
  ('Partial Quotients Method', 'Use repeated subtraction strategy', 3, 8, 30),
  ('Divide by 2-Digit Divisors', 'Divide by numbers 10-99', 3, 9, 35),
  ('Interpreting Remainders', 'Decide how to use remainders', 3, 10, 25),
  ('Division Word Problems', 'Solve real-world division problems', 3, 11, 30),
  ('Connecting Multiplication and Division', 'Check division with multiplication', 2, 12, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- FACTORS AND MULTIPLES TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Factors and Multiples' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Factors', 'Find factors of a number', 2, 1, 20),
  ('Factor Pairs', 'Find all factor pairs of a number', 2, 2, 25),
  ('Divisibility Rules 2 5 10', 'Test divisibility by 2, 5, and 10', 2, 3, 20),
  ('Divisibility Rules 3 6 9', 'Test divisibility by 3, 6, and 9', 3, 4, 25),
  ('Divisibility Rules 4', 'Test divisibility by 4', 3, 5, 20),
  ('Prime Numbers', 'Identify prime numbers', 2, 6, 25),
  ('Composite Numbers', 'Identify composite numbers', 2, 7, 20),
  ('Prime Factorization', 'Write numbers as product of primes', 3, 8, 30),
  ('Understanding Multiples', 'Find multiples of a number', 2, 9, 20),
  ('Common Multiples', 'Find common multiples of two numbers', 3, 10, 25),
  ('Least Common Multiple', 'Find the LCM of two numbers', 3, 11, 25),
  ('Common Factors', 'Find common factors of two numbers', 2, 12, 25),
  ('Greatest Common Factor', 'Find the GCF of two numbers', 3, 13, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DECIMALS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Decimals' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Hundredths', 'Explore hundredths as parts of a whole', 2, 1, 20),
  ('Reading and Writing Decimals', 'Read and write decimals to hundredths', 2, 2, 20),
  ('Decimal Place Value', 'Understand tenths and hundredths places', 2, 3, 25),
  ('Decimals in Expanded Form', 'Write decimals in expanded form', 2, 4, 20),
  ('Decimals on Number Lines', 'Locate decimals on number lines', 2, 5, 25),
  ('Comparing Decimals', 'Compare decimals using place value', 2, 6, 25),
  ('Ordering Decimals', 'Order decimals from least to greatest', 2, 7, 20),
  ('Rounding Decimals', 'Round decimals to tenths or whole numbers', 2, 8, 25),
  ('Decimals and Fractions', 'Convert between decimals and fractions', 3, 9, 25),
  ('Adding Decimals', 'Add decimals using place value', 2, 10, 25),
  ('Subtracting Decimals', 'Subtract decimals using place value', 2, 11, 25),
  ('Decimal Word Problems', 'Solve problems with decimals', 3, 12, 30),
  ('Money and Decimals', 'Apply decimals to money problems', 2, 13, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- FRACTIONS TOPICS (EXPAND EXISTING)
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Fractions' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Equivalent Fractions', 'Generate equivalent fractions', 2, 6, 25),
  ('Simplifying Fractions', 'Reduce fractions to lowest terms', 3, 7, 25),
  ('Comparing Fractions Different Denominators', 'Compare fractions by finding common denominator', 3, 8, 30),
  ('Ordering Fractions', 'Order fractions from least to greatest', 3, 9, 25),
  ('Mixed Numbers and Improper Fractions', 'Convert between mixed and improper', 2, 10, 25),
  ('Adding Fractions Like Denominators', 'Add fractions with same denominator', 2, 11, 20),
  ('Subtracting Fractions Like Denominators', 'Subtract fractions with same denominator', 2, 12, 20),
  ('Adding Mixed Numbers', 'Add mixed numbers with like denominators', 3, 13, 25),
  ('Subtracting Mixed Numbers', 'Subtract mixed numbers with like denominators', 3, 14, 25),
  ('Multiplying Fractions by Whole Numbers', 'Multiply a fraction by a whole number', 3, 15, 25),
  ('Fraction Word Problems', 'Solve multi-step fraction problems', 3, 16, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- COORDINATE PLANE INTRODUCTION TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Coordinate Plane Introduction' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding the Coordinate Plane', 'Learn about axes, origin, and quadrant I', 2, 1, 20),
  ('Ordered Pairs', 'Understand ordered pairs (x, y)', 2, 2, 20),
  ('Plotting Points', 'Plot points in the first quadrant', 2, 3, 25),
  ('Reading Coordinates', 'Identify coordinates of plotted points', 2, 4, 20),
  ('Graphing from Tables', 'Plot points from a table of values', 2, 5, 25),
  ('Patterns on Coordinate Plane', 'Identify patterns in plotted points', 3, 6, 25),
  ('Distance on Coordinate Plane', 'Find horizontal and vertical distances', 3, 7, 25),
  ('Coordinate Graphing Applications', 'Use coordinates for maps and grids', 2, 8, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DATA AND PROBABILITY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Data and Probability' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Line Plots with Fractions', 'Create line plots with fractional data', 3, 1, 30),
  ('Interpreting Line Plots', 'Analyze data on line plots', 2, 2, 25),
  ('Stem and Leaf Plots', 'Create and read stem-and-leaf plots', 3, 3, 30),
  ('Finding Mean', 'Calculate average of a data set', 2, 4, 25),
  ('Finding Median', 'Find the middle value of a data set', 2, 5, 25),
  ('Finding Mode', 'Identify the most frequent value', 2, 6, 20),
  ('Finding Range', 'Calculate the range of a data set', 1, 7, 15),
  ('Comparing Data Sets', 'Compare two data sets using measures', 3, 8, 25),
  ('Probability Introduction', 'Understand probability as a fraction', 2, 9, 25),
  ('Experimental Probability', 'Conduct experiments and calculate probability', 3, 10, 30),
  ('Theoretical Probability', 'Calculate probability without experiment', 3, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PERIMETER AND AREA TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Perimeter and Area' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Perimeter of Rectangles', 'Use formula P = 2l + 2w', 2, 1, 20),
  ('Perimeter of Complex Shapes', 'Find perimeter of irregular polygons', 3, 2, 25),
  ('Unknown Side from Perimeter', 'Find missing side given perimeter', 3, 3, 25),
  ('Area of Rectangles', 'Use formula A = l × w', 2, 4, 20),
  ('Area of Squares', 'Use formula A = s²', 2, 5, 20),
  ('Area of Composite Shapes', 'Break shapes into rectangles', 3, 6, 30),
  ('Area and Perimeter Relationships', 'Explore how area and perimeter relate', 3, 7, 25),
  ('Same Area Different Perimeter', 'Find shapes with same area', 3, 8, 25),
  ('Word Problems with Area and Perimeter', 'Solve real-world problems', 3, 9, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ANGLES TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Angles' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Angles', 'Learn about rays, vertices, and angles', 1, 1, 20),
  ('Classifying Angles', 'Identify acute, right, obtuse, straight angles', 2, 2, 20),
  ('Measuring Angles', 'Use a protractor to measure angles', 2, 3, 30),
  ('Drawing Angles', 'Use a protractor to draw angles', 3, 4, 30),
  ('Estimating Angle Measures', 'Estimate angle size using benchmarks', 2, 5, 20),
  ('Angle Addition', 'Add adjacent angles', 2, 6, 25),
  ('Unknown Angle Measures', 'Find missing angles using addition', 3, 7, 25),
  ('Angles in Shapes', 'Find angles in triangles and quadrilaterals', 3, 8, 25),
  ('Reflex Angles', 'Understand angles greater than 180°', 3, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ALGEBRAIC THINKING TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Algebraic Thinking' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Variables in Expressions', 'Use variables to represent unknowns', 2, 1, 20),
  ('Writing Expressions', 'Translate words to algebraic expressions', 2, 2, 25),
  ('Evaluating Expressions', 'Substitute values for variables', 2, 3, 25),
  ('Addition Equations', 'Solve equations like x + 7 = 15', 2, 4, 25),
  ('Subtraction Equations', 'Solve equations like x - 4 = 10', 2, 5, 25),
  ('Multiplication Equations', 'Solve equations like 5x = 35', 3, 6, 25),
  ('Division Equations', 'Solve equations like x ÷ 3 = 8', 3, 7, 25),
  ('Two-Step Equations Introduction', 'Begin solving two-step equations', 3, 8, 30),
  ('Input-Output Tables', 'Find rules and complete tables', 2, 9, 25),
  ('Number Patterns', 'Analyze and extend complex patterns', 2, 10, 25),
  ('Graphing Patterns', 'Graph number patterns on coordinate plane', 3, 11, 30),
  ('Order of Operations Introduction', 'Begin understanding order of operations', 2, 12, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPAND GEOMETRY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Points Lines Rays', 'Identify and name points, lines, and rays', 2, 5, 20),
  ('Parallel and Perpendicular Lines', 'Identify and draw parallel/perpendicular lines', 2, 6, 25),
  ('Classifying Triangles', 'Classify by sides and angles', 2, 7, 25),
  ('Classifying Quadrilaterals', 'Identify types of quadrilaterals', 2, 8, 25),
  ('Line Symmetry', 'Draw and identify lines of symmetry', 2, 9, 20),
  ('Rotational Symmetry', 'Identify rotational symmetry', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPAND MEASUREMENT TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Converting Customary Length', 'Convert between inches, feet, yards, miles', 3, 5, 25),
  ('Converting Metric Length', 'Convert between mm, cm, m, km', 3, 6, 25),
  ('Converting Customary Weight', 'Convert ounces, pounds, tons', 3, 7, 25),
  ('Converting Metric Mass', 'Convert grams and kilograms', 3, 8, 25),
  ('Converting Customary Capacity', 'Convert cups, pints, quarts, gallons', 3, 9, 25),
  ('Converting Metric Capacity', 'Convert mL and L', 3, 10, 25),
  ('Time Conversions', 'Convert between time units', 2, 11, 20),
  ('Elapsed Time', 'Calculate elapsed time across hours', 3, 12, 25),
  ('Temperature', 'Read and compare temperatures', 2, 13, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Grade 4 Math Expansion
-- ============================================================================
-- Added 9 new units: Multi-Digit Multiplication, Multi-Digit Division,
--                    Factors and Multiples, Decimals, Coordinate Plane,
--                    Data and Probability, Perimeter and Area, Angles,
--                    Algebraic Thinking
-- Added 122 new topics total
-- New total: 14 units, ~137 topics (up from 5 units, ~15 topics)
-- ============================================================================
