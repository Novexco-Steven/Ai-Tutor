-- Migration: Expand Grade 5 Math Curriculum
-- Adding missing IXL-aligned skills for grade_level = 5
-- MAJOR EXPANSION - IXL has 463 skills for Grade 5
-- ============================================================================

-- ============================================================================
-- NEW GRADE 5 MATH UNITS
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Operations with Decimals',
   'Perform all four operations with decimals',
   6, '0.00',
   '["Add and subtract decimals", "Multiply decimals", "Divide decimals", "Solve decimal word problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Fraction Operations',
   'Add, subtract, multiply, and divide fractions',
   7, '🔢',
   '["Add fractions with unlike denominators", "Subtract fractions with unlike denominators", "Multiply fractions", "Divide fractions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Exponents and Powers',
   'Understand exponents and powers of 10',
   8, '²',
   '["Understand exponent notation", "Evaluate powers", "Multiply and divide by powers of 10", "Use scientific notation"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Order of Operations',
   'Apply order of operations to solve expressions',
   9, 'PEMDAS',
   '["Understand order of operations", "Evaluate expressions with parentheses", "Apply PEMDAS/BODMAS", "Write expressions from words"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Coordinate Graphing',
   'Graph points and analyze relationships on coordinate plane',
   10, '📍',
   '["Plot points in all quadrants", "Graph relationships", "Interpret graphs", "Identify patterns in coordinates"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Volume',
   'Calculate volume of rectangular prisms',
   11, '📦',
   '["Understand volume as 3D measurement", "Use unit cubes to find volume", "Apply volume formulas", "Solve volume word problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Data Analysis',
   'Analyze and interpret data using various representations',
   12, '📊',
   '["Create and interpret graphs", "Find mean, median, mode, range", "Analyze data sets", "Make predictions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Ratios and Proportions Introduction',
   'Understand ratios and proportional relationships',
   13, '⚖️',
   '["Understand ratio notation", "Write ratios", "Find equivalent ratios", "Solve ratio problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Percents',
   'Understand and calculate percents',
   14, '%',
   '["Understand percent as per 100", "Convert between fractions, decimals, percents", "Find percent of a number", "Solve percent problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Integers Introduction',
   'Understand positive and negative numbers',
   15, '±',
   '["Understand negative numbers", "Compare integers", "Plot integers on number lines", "Add and subtract integers"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Algebraic Expressions',
   'Write and evaluate algebraic expressions',
   16, 'x',
   '["Write expressions from situations", "Evaluate expressions", "Simplify expressions", "Understand properties of operations"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- EXPAND EXISTING GRADE 5 TOPICS
-- ============================================================================

-- Add more Place Value topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Place Value' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Numbers to Billions', 'Read and write numbers to billions', 2, 6, 25),
  ('Decimal Place Value to Thousandths', 'Understand thousandths place', 2, 7, 25),
  ('Comparing Decimals to Thousandths', 'Compare decimals with precision', 2, 8, 20),
  ('Rounding Decimals', 'Round decimals to any place', 2, 9, 20),
  ('Powers of 10 Patterns', 'Multiply and divide by powers of 10', 2, 10, 25),
  ('Place Value Relationships', 'Understand 10x and 1/10 relationships', 3, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- OPERATIONS WITH DECIMALS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Operations with Decimals' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Adding Decimals to Hundredths', 'Add decimals with two decimal places', 2, 1, 20),
  ('Adding Decimals to Thousandths', 'Add decimals with three decimal places', 2, 2, 25),
  ('Subtracting Decimals to Hundredths', 'Subtract decimals with two decimal places', 2, 3, 20),
  ('Subtracting Decimals to Thousandths', 'Subtract decimals with three decimal places', 2, 4, 25),
  ('Estimating with Decimals', 'Estimate sums and differences', 2, 5, 20),
  ('Multiplying Decimals by Whole Numbers', 'Multiply decimal by whole number', 2, 6, 25),
  ('Multiplying Decimals by Decimals', 'Multiply two decimal numbers', 3, 7, 30),
  ('Estimating Products with Decimals', 'Estimate products involving decimals', 2, 8, 20),
  ('Dividing Decimals by Whole Numbers', 'Divide decimal by whole number', 2, 9, 25),
  ('Dividing Whole Numbers by Decimals', 'Divide whole number by decimal', 3, 10, 30),
  ('Dividing Decimals by Decimals', 'Divide two decimal numbers', 3, 11, 30),
  ('Decimal Word Problems', 'Solve multi-step decimal problems', 3, 12, 30),
  ('Money Problems with Operations', 'Apply decimal operations to money', 2, 13, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- FRACTION OPERATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Fraction Operations' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Adding Unlike Fractions', 'Add fractions with different denominators', 3, 1, 30),
  ('Subtracting Unlike Fractions', 'Subtract fractions with different denominators', 3, 2, 30),
  ('Adding Mixed Numbers Unlike Denominators', 'Add mixed numbers with unlike denominators', 3, 3, 30),
  ('Subtracting Mixed Numbers Unlike Denominators', 'Subtract mixed numbers with unlike denominators', 3, 4, 30),
  ('Regrouping with Mixed Numbers', 'Subtract when regrouping is needed', 3, 5, 30),
  ('Multiplying Fractions by Fractions', 'Multiply two fractions', 2, 6, 25),
  ('Multiplying Fractions by Whole Numbers', 'Multiply fraction by whole number', 2, 7, 25),
  ('Multiplying Mixed Numbers', 'Multiply mixed numbers', 3, 8, 30),
  ('Area Model Multiplication', 'Use area models for fraction multiplication', 2, 9, 25),
  ('Dividing Fractions Conceptually', 'Understand division of fractions', 2, 10, 25),
  ('Dividing Fractions by Whole Numbers', 'Divide a fraction by a whole number', 2, 11, 25),
  ('Dividing Whole Numbers by Fractions', 'Divide a whole number by a fraction', 3, 12, 30),
  ('Dividing Fractions by Fractions', 'Divide a fraction by a fraction', 3, 13, 30),
  ('Fraction Word Problems All Operations', 'Solve problems with fraction operations', 3, 14, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPONENTS AND POWERS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Exponents and Powers' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Exponents', 'Learn exponent notation and terminology', 2, 1, 20),
  ('Evaluating Powers', 'Calculate values of expressions with exponents', 2, 2, 25),
  ('Squares and Square Roots', 'Understand perfect squares and roots', 2, 3, 25),
  ('Cubes', 'Calculate cubes of numbers', 2, 4, 20),
  ('Powers of 10', 'Evaluate powers of 10', 2, 5, 20),
  ('Multiplying by Powers of 10', 'Use exponents to multiply by 10, 100, 1000', 2, 6, 25),
  ('Dividing by Powers of 10', 'Use exponents to divide by 10, 100, 1000', 2, 7, 25),
  ('Scientific Notation Introduction', 'Write large numbers in scientific notation', 3, 8, 30),
  ('Comparing Numbers in Scientific Notation', 'Compare numbers written in scientific notation', 3, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ORDER OF OPERATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Order of Operations' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Order of Operations', 'Learn PEMDAS/BODMAS rules', 2, 1, 25),
  ('Parentheses First', 'Evaluate expressions with parentheses', 2, 2, 25),
  ('Exponents in Expressions', 'Evaluate expressions with exponents', 2, 3, 25),
  ('Multiplication and Division Left to Right', 'Apply left-to-right rule', 2, 4, 25),
  ('Addition and Subtraction Left to Right', 'Complete order of operations', 2, 5, 25),
  ('Multi-Step Expressions', 'Evaluate complex expressions', 3, 6, 30),
  ('Expressions with Brackets', 'Use brackets and parentheses', 3, 7, 25),
  ('Writing Expressions from Words', 'Translate verbal expressions to numerical', 2, 8, 25),
  ('Inserting Parentheses', 'Place parentheses to make equations true', 3, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- COORDINATE GRAPHING TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Coordinate Graphing' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Coordinate Plane Review', 'Review axes, quadrants, and origin', 1, 1, 15),
  ('Plotting in First Quadrant', 'Plot points with positive coordinates', 2, 2, 20),
  ('Introduction to Four Quadrants', 'Understand all four quadrants', 2, 3, 25),
  ('Plotting Negative Coordinates', 'Plot points with negative values', 2, 4, 25),
  ('Identifying Quadrants', 'Determine which quadrant contains a point', 2, 5, 20),
  ('Reflections on Coordinate Plane', 'Reflect points across axes', 3, 6, 25),
  ('Distance Between Points', 'Find horizontal and vertical distances', 3, 7, 25),
  ('Graphing Relationships', 'Graph points from two-variable relationships', 2, 8, 25),
  ('Interpreting Coordinate Graphs', 'Analyze real-world coordinate graphs', 3, 9, 30),
  ('Patterns in Coordinates', 'Identify numerical patterns in coordinates', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VOLUME TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Volume' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Volume', 'Define volume as space inside a 3D shape', 1, 1, 20),
  ('Counting Unit Cubes', 'Find volume by counting unit cubes', 2, 2, 20),
  ('Volume of Rectangular Prisms', 'Use formula V = l × w × h', 2, 3, 25),
  ('Volume with Base Area', 'Use formula V = B × h', 2, 4, 25),
  ('Finding Missing Dimensions', 'Find length, width, or height from volume', 3, 5, 25),
  ('Volume of Composite Shapes', 'Find volume of L-shaped prisms', 3, 6, 30),
  ('Volume Word Problems', 'Solve real-world volume problems', 3, 7, 30),
  ('Comparing Volumes', 'Compare volumes of different prisms', 2, 8, 25),
  ('Volume and Capacity', 'Connect volume to liquid capacity', 2, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DATA ANALYSIS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Data Analysis' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Line Plots with Fractions', 'Create and interpret line plots with fractions', 3, 1, 30),
  ('Histograms', 'Read and create histograms', 3, 2, 30),
  ('Double Bar Graphs', 'Compare data using double bar graphs', 3, 3, 25),
  ('Line Graphs', 'Read and create line graphs showing change', 2, 4, 25),
  ('Calculating Mean', 'Find the average of a data set', 2, 5, 25),
  ('Calculating Median', 'Find the middle value', 2, 6, 20),
  ('Mode and Range', 'Find mode and range', 2, 7, 20),
  ('Choosing Measures of Center', 'Decide which measure best represents data', 3, 8, 25),
  ('Outliers and Their Effect', 'Understand how outliers affect measures', 3, 9, 25),
  ('Making Predictions from Data', 'Use data to make predictions', 3, 10, 25),
  ('Misleading Graphs', 'Identify misleading data displays', 3, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- RATIOS AND PROPORTIONS INTRODUCTION TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Ratios and Proportions Introduction' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Ratios', 'Learn what ratios represent', 2, 1, 20),
  ('Writing Ratios', 'Write ratios in different forms', 2, 2, 20),
  ('Part-to-Part Ratios', 'Compare parts of a whole', 2, 3, 25),
  ('Part-to-Whole Ratios', 'Compare part to total', 2, 4, 25),
  ('Equivalent Ratios', 'Find equivalent ratios', 2, 5, 25),
  ('Ratio Tables', 'Use tables to find equivalent ratios', 2, 6, 25),
  ('Simplifying Ratios', 'Write ratios in simplest form', 2, 7, 20),
  ('Unit Rates Introduction', 'Understand unit rates', 3, 8, 25),
  ('Comparing Ratios', 'Compare two ratios', 3, 9, 25),
  ('Ratio Word Problems', 'Solve problems using ratios', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PERCENTS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Percents' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Percent', 'Learn percent means per 100', 2, 1, 20),
  ('Percent of a Whole', 'Visualize percent with grids', 2, 2, 20),
  ('Percent to Fraction', 'Convert percent to fraction', 2, 3, 20),
  ('Fraction to Percent', 'Convert fraction to percent', 2, 4, 25),
  ('Percent to Decimal', 'Convert percent to decimal', 2, 5, 20),
  ('Decimal to Percent', 'Convert decimal to percent', 2, 6, 20),
  ('Common Percent Benchmarks', 'Know 10%, 25%, 50%, 75%, 100%', 2, 7, 20),
  ('Finding Percent of a Number', 'Calculate percent of a number', 3, 8, 25),
  ('Finding What Percent', 'Determine what percent one number is of another', 3, 9, 25),
  ('Percent Word Problems', 'Solve real-world percent problems', 3, 10, 30),
  ('Discounts and Sales Tax', 'Calculate discounts and tax', 3, 11, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- INTEGERS INTRODUCTION TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Integers Introduction' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Negative Numbers', 'Learn what negative numbers mean', 2, 1, 20),
  ('Integers on Number Lines', 'Plot integers on number lines', 2, 2, 20),
  ('Comparing Integers', 'Compare positive and negative integers', 2, 3, 25),
  ('Ordering Integers', 'Order integers from least to greatest', 2, 4, 20),
  ('Opposite Numbers', 'Understand opposites and zero pairs', 2, 5, 20),
  ('Absolute Value', 'Find absolute value of integers', 2, 6, 25),
  ('Adding Integers Same Sign', 'Add integers with same sign', 2, 7, 25),
  ('Adding Integers Different Signs', 'Add integers with different signs', 3, 8, 30),
  ('Subtracting Integers', 'Subtract positive and negative integers', 3, 9, 30),
  ('Real-World Integer Problems', 'Apply integers to temperature, elevation, etc.', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ALGEBRAIC EXPRESSIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Algebraic Expressions' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Variables and Constants', 'Identify variables and constants', 1, 1, 15),
  ('Writing Expressions Addition', 'Write addition expressions from words', 2, 2, 20),
  ('Writing Expressions Subtraction', 'Write subtraction expressions', 2, 3, 20),
  ('Writing Expressions Multiplication', 'Write multiplication expressions', 2, 4, 20),
  ('Writing Expressions Division', 'Write division expressions', 2, 5, 20),
  ('Evaluating Expressions One Variable', 'Substitute and evaluate', 2, 6, 25),
  ('Evaluating Expressions Two Variables', 'Evaluate with two variables', 3, 7, 25),
  ('Combining Like Terms', 'Simplify expressions with like terms', 3, 8, 25),
  ('Distributive Property', 'Apply distributive property', 3, 9, 30),
  ('Writing Equations from Situations', 'Model situations with equations', 2, 10, 25),
  ('Solving One-Step Equations', 'Solve equations using inverse operations', 2, 11, 25),
  ('Solving Two-Step Equations Introduction', 'Begin solving two-step equations', 3, 12, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPAND GEOMETRY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Classifying Triangles Review', 'Classify triangles by sides and angles', 2, 5, 20),
  ('Classifying Quadrilaterals Review', 'Identify quadrilateral types', 2, 6, 20),
  ('Hierarchy of Quadrilaterals', 'Understand relationships between quadrilaterals', 3, 7, 25),
  ('Properties of Regular Polygons', 'Identify regular polygon properties', 2, 8, 20),
  ('Coordinate Geometry', 'Use coordinates to describe shapes', 3, 9, 25),
  ('Transformations Introduction', 'Understand slides, flips, turns', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPAND MEASUREMENT TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Customary Length Conversions', 'Convert between in, ft, yd, mi', 2, 5, 25),
  ('Metric Length Conversions', 'Convert between mm, cm, m, km', 2, 6, 25),
  ('Customary Capacity Conversions', 'Convert cups, pints, quarts, gallons', 2, 7, 25),
  ('Metric Capacity Conversions', 'Convert mL and L', 2, 8, 25),
  ('Customary Weight Conversions', 'Convert oz, lb, tons', 2, 9, 25),
  ('Metric Mass Conversions', 'Convert g and kg', 2, 10, 25),
  ('Multi-Step Conversion Problems', 'Solve problems with conversions', 3, 11, 30),
  ('Area of Rectangles and Squares', 'Calculate area using formulas', 2, 12, 20),
  ('Area of Triangles', 'Find area using A = 1/2 × b × h', 3, 13, 25),
  ('Area of Parallelograms', 'Find area using A = b × h', 3, 14, 25),
  ('Perimeter of Complex Shapes', 'Find perimeter of irregular shapes', 3, 15, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Grade 5 Math Expansion
-- ============================================================================
-- Added 11 new units: Operations with Decimals, Fraction Operations,
--                     Exponents and Powers, Order of Operations,
--                     Coordinate Graphing, Volume, Data Analysis,
--                     Ratios and Proportions Introduction, Percents,
--                     Integers Introduction, Algebraic Expressions
-- Added 135 new topics total
-- New total: 16 units, ~153 topics (up from 5 units, ~18 topics)
-- ============================================================================
