-- Migration: Expand Grade 6 Math Curriculum
-- Adding missing IXL-aligned skills for grade_level = 6
-- ============================================================================

-- ============================================================================
-- NEW GRADE 6 MATH UNITS
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 6, 'Ratios and Rates',
   'Understand and apply ratios and unit rates',
   6, '⚖️',
   '["Write and interpret ratios", "Calculate unit rates", "Solve ratio problems", "Use ratio reasoning"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 6, 'Percent Applications',
   'Apply percents to real-world situations',
   7, '%',
   '["Find percent of a number", "Calculate percent increase/decrease", "Solve discount and tax problems", "Convert between forms"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 6, 'Rational Numbers',
   'Work with positive and negative rational numbers',
   8, '±',
   '["Compare and order integers", "Operate with integers", "Work with rational numbers", "Apply absolute value"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 6, 'Expressions and Equations',
   'Write and solve algebraic expressions and equations',
   9, 'x=',
   '["Evaluate expressions", "Write equivalent expressions", "Solve one-step equations", "Solve inequalities"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 6, 'Coordinate Plane',
   'Graph and analyze on the coordinate plane',
   10, '📍',
   '["Plot points in all quadrants", "Find distances", "Solve problems with coordinates", "Graph relationships"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 6, 'Area and Surface Area',
   'Calculate area and surface area of various shapes',
   11, '📐',
   '["Find area of polygons", "Calculate surface area of prisms", "Use nets for surface area", "Solve real-world problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 6, 'Statistics',
   'Analyze and display statistical data',
   12, '📊',
   '["Calculate measures of center", "Find measures of variability", "Create and interpret displays", "Summarize data distributions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 6, 'Probability',
   'Understand and calculate probability',
   13, '🎲',
   '["Find theoretical probability", "Conduct experiments", "Use probability models", "Understand independent events"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- RATIOS AND RATES TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Ratios and Rates' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Ratios', 'Write ratios to compare quantities', 2, 1, 20),
  ('Equivalent Ratios', 'Generate equivalent ratios', 2, 2, 25),
  ('Ratio Tables', 'Use tables to find equivalent ratios', 2, 3, 25),
  ('Tape Diagrams for Ratios', 'Use tape diagrams to solve ratio problems', 3, 4, 25),
  ('Unit Rate', 'Find and use unit rates', 2, 5, 25),
  ('Unit Price', 'Calculate and compare unit prices', 2, 6, 25),
  ('Rate Problems', 'Solve problems involving rates', 3, 7, 30),
  ('Graphing Ratios', 'Represent ratios on coordinate plane', 3, 8, 25),
  ('Proportional Relationships Introduction', 'Identify proportional relationships', 3, 9, 25),
  ('Solving Proportions', 'Use cross multiplication to solve proportions', 3, 10, 30),
  ('Scale Drawings', 'Use scale factors in drawings', 3, 11, 30),
  ('Ratio and Rate Word Problems', 'Solve complex ratio problems', 3, 12, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PERCENT APPLICATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Percent Applications' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Percent Review', 'Review percent concepts and conversions', 1, 1, 20),
  ('Percent of a Number', 'Calculate percent of any number', 2, 2, 25),
  ('Finding the Whole', 'Find the whole given percent and part', 3, 3, 25),
  ('Finding the Percent', 'Find what percent one number is of another', 3, 4, 25),
  ('Percent Equation', 'Use percent equation to solve problems', 3, 5, 25),
  ('Percent Increase', 'Calculate percent increase', 3, 6, 30),
  ('Percent Decrease', 'Calculate percent decrease', 3, 7, 30),
  ('Discount and Sale Price', 'Calculate discounts and final prices', 2, 8, 25),
  ('Sales Tax', 'Calculate sales tax and total cost', 2, 9, 25),
  ('Tips and Gratuity', 'Calculate tips at restaurants', 2, 10, 20),
  ('Commission', 'Calculate sales commission', 3, 11, 25),
  ('Simple Interest', 'Calculate simple interest', 3, 12, 30),
  ('Percent Word Problems', 'Solve multi-step percent problems', 3, 13, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- RATIONAL NUMBERS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Rational Numbers' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Integers on Number Line', 'Plot integers on number lines', 2, 1, 20),
  ('Comparing Integers', 'Compare and order integers', 2, 2, 20),
  ('Absolute Value', 'Find and interpret absolute value', 2, 3, 25),
  ('Opposite Numbers', 'Understand opposites and zero', 2, 4, 20),
  ('Adding Integers', 'Add integers using rules', 2, 5, 25),
  ('Subtracting Integers', 'Subtract integers using rules', 3, 6, 30),
  ('Multiplying Integers', 'Multiply positive and negative numbers', 2, 7, 25),
  ('Dividing Integers', 'Divide positive and negative numbers', 2, 8, 25),
  ('Rational Numbers on Number Lines', 'Plot fractions and decimals on number lines', 2, 9, 25),
  ('Comparing Rational Numbers', 'Compare fractions, decimals, and integers', 2, 10, 25),
  ('Operations with Rational Numbers', 'Perform operations with rational numbers', 3, 11, 30),
  ('Rational Number Word Problems', 'Solve problems with positive/negative numbers', 3, 12, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPRESSIONS AND EQUATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Expressions and Equations' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Writing Algebraic Expressions', 'Translate words to expressions', 2, 1, 25),
  ('Evaluating Expressions', 'Substitute values and evaluate', 2, 2, 25),
  ('Properties of Operations', 'Apply commutative, associative, distributive', 2, 3, 25),
  ('Combining Like Terms', 'Simplify expressions with like terms', 2, 4, 25),
  ('Distributive Property', 'Expand expressions using distribution', 2, 5, 25),
  ('Factoring Expressions', 'Factor expressions using GCF', 3, 6, 30),
  ('Equivalent Expressions', 'Identify and write equivalent expressions', 2, 7, 25),
  ('Writing Equations', 'Write equations from situations', 2, 8, 25),
  ('Solving Addition Equations', 'Solve equations like x + 5 = 12', 2, 9, 25),
  ('Solving Subtraction Equations', 'Solve equations like x - 3 = 8', 2, 10, 25),
  ('Solving Multiplication Equations', 'Solve equations like 4x = 24', 2, 11, 25),
  ('Solving Division Equations', 'Solve equations like x/5 = 7', 2, 12, 25),
  ('Two-Step Equations', 'Solve equations with two operations', 3, 13, 30),
  ('Writing Inequalities', 'Translate situations to inequalities', 2, 14, 25),
  ('Solving Inequalities', 'Solve and graph one-step inequalities', 3, 15, 30),
  ('Equations and Inequalities Word Problems', 'Solve real-world problems', 3, 16, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- COORDINATE PLANE TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Coordinate Plane' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Four Quadrants Review', 'Identify and plot in all quadrants', 2, 1, 20),
  ('Reflecting Points', 'Reflect points across axes', 2, 2, 25),
  ('Distance on Coordinate Plane', 'Calculate horizontal and vertical distances', 2, 3, 25),
  ('Absolute Value and Distance', 'Use absolute value to find distance', 2, 4, 25),
  ('Polygons on Coordinate Plane', 'Identify and draw polygons using coordinates', 3, 5, 30),
  ('Perimeter on Coordinate Plane', 'Calculate perimeter using coordinates', 3, 6, 30),
  ('Area on Coordinate Plane', 'Calculate area using coordinates', 3, 7, 30),
  ('Graphing Equations', 'Graph linear equations', 3, 8, 30),
  ('Coordinate Plane Word Problems', 'Solve real-world coordinate problems', 3, 9, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- AREA AND SURFACE AREA TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Area and Surface Area' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Area of Parallelograms', 'Use A = b × h for parallelograms', 2, 1, 25),
  ('Area of Triangles', 'Use A = 1/2 × b × h for triangles', 2, 2, 25),
  ('Area of Trapezoids', 'Use formula for trapezoid area', 3, 3, 30),
  ('Area of Composite Figures', 'Break complex shapes into simpler ones', 3, 4, 30),
  ('Area on Coordinate Plane', 'Find area using coordinate points', 3, 5, 30),
  ('Understanding Nets', 'Identify nets of 3D figures', 2, 6, 25),
  ('Surface Area of Rectangular Prisms', 'Calculate surface area using nets', 2, 7, 30),
  ('Surface Area of Triangular Prisms', 'Calculate surface area of triangular prisms', 3, 8, 30),
  ('Surface Area of Pyramids', 'Calculate surface area of pyramids', 3, 9, 35),
  ('Surface Area Word Problems', 'Solve real-world surface area problems', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- STATISTICS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Statistics' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Statistical Questions', 'Identify statistical questions', 1, 1, 20),
  ('Mean', 'Calculate mean of data sets', 2, 2, 25),
  ('Median', 'Find median of data sets', 2, 3, 25),
  ('Mode', 'Identify mode in data sets', 2, 4, 20),
  ('Range', 'Calculate range of data', 1, 5, 15),
  ('Choosing Measures of Center', 'Select appropriate measure', 2, 6, 25),
  ('Mean Absolute Deviation', 'Calculate MAD', 3, 7, 35),
  ('Interquartile Range', 'Find IQR of data sets', 3, 8, 30),
  ('Dot Plots', 'Create and interpret dot plots', 2, 9, 25),
  ('Histograms', 'Create and interpret histograms', 2, 10, 30),
  ('Box Plots', 'Create and interpret box-and-whisker plots', 3, 11, 35),
  ('Comparing Data Displays', 'Choose appropriate data displays', 2, 12, 25),
  ('Describing Distributions', 'Describe shape, center, spread', 3, 13, 30),
  ('Outliers', 'Identify and understand outliers', 3, 14, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PROBABILITY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Probability' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Probability Basics', 'Understand probability as a ratio', 2, 1, 20),
  ('Theoretical Probability', 'Calculate probability of simple events', 2, 2, 25),
  ('Probability as Fraction Decimal Percent', 'Express probability in different forms', 2, 3, 20),
  ('Experimental Probability', 'Find probability from experiments', 2, 4, 30),
  ('Comparing Theoretical and Experimental', 'Compare types of probability', 3, 5, 25),
  ('Sample Space', 'List all possible outcomes', 2, 6, 25),
  ('Tree Diagrams', 'Use tree diagrams for compound events', 3, 7, 30),
  ('Compound Events', 'Find probability of compound events', 3, 8, 30),
  ('Independent Events', 'Understand and calculate independent probability', 3, 9, 30),
  ('Simulations', 'Design and use probability simulations', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPAND EXISTING TOPICS
-- ============================================================================

-- Expand Fractions and Decimals
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Fractions' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Dividing Fractions by Fractions', 'Divide fraction by fraction', 3, 6, 30),
  ('Dividing Mixed Numbers', 'Divide mixed numbers', 3, 7, 30),
  ('Fraction Division Word Problems', 'Solve division word problems', 3, 8, 30),
  ('Complex Fractions', 'Simplify complex fractions', 3, 9, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Expand Geometry
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Volume of Rectangular Prisms', 'Use V = l × w × h', 2, 5, 25),
  ('Volume with Fractional Dimensions', 'Calculate volume with fractions', 3, 6, 30),
  ('Volume of Composite Figures', 'Find volume of combined shapes', 3, 7, 30),
  ('3D Figures from Nets', 'Identify 3D shapes from nets', 2, 8, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Grade 6 Math Expansion
-- ============================================================================
-- Added 8 new units: Ratios and Rates, Percent Applications, Rational Numbers,
--                    Expressions and Equations, Coordinate Plane,
--                    Area and Surface Area, Statistics, Probability
-- Added 106 new topics total
-- New total: 13 units, ~121 topics (up from 5 units, ~15 topics)
-- ============================================================================
