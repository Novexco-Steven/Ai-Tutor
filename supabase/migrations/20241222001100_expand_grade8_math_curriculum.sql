-- Migration: Expand Grade 8 Math Curriculum
-- Adding missing IXL-aligned skills for grade_level = 8
-- ============================================================================

-- ============================================================================
-- NEW GRADE 8 MATH UNITS
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Real Numbers',
   'Understand rational and irrational numbers',
   6, '√',
   '["Classify real numbers", "Estimate square roots", "Compare irrational numbers", "Approximate irrational numbers"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Exponents and Scientific Notation',
   'Work with integer exponents and scientific notation',
   7, '10^',
   '["Apply exponent rules", "Use scientific notation", "Perform operations with scientific notation", "Compare numbers in scientific notation"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Linear Equations',
   'Solve and graph linear equations',
   8, 'y=mx+b',
   '["Solve multi-step equations", "Understand slope", "Write equations of lines", "Graph linear equations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Systems of Equations',
   'Solve systems of linear equations',
   9, '⟂',
   '["Solve systems graphically", "Solve by substitution", "Solve by elimination", "Interpret solutions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Functions',
   'Understand and work with functions',
   10, 'f(x)',
   '["Define functions", "Identify function types", "Compare functions", "Analyze function behavior"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Linear Functions',
   'Analyze and graph linear functions',
   11, '📈',
   '["Find slope from various representations", "Write linear equations", "Graph linear functions", "Interpret slope and intercept"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Transformations',
   'Understand and perform geometric transformations',
   12, '🔄',
   '["Perform translations", "Perform reflections", "Perform rotations", "Describe transformations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Congruence and Similarity',
   'Understand congruent and similar figures',
   13, '≅',
   '["Identify congruent figures", "Identify similar figures", "Calculate scale factor", "Solve problems with similar figures"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Pythagorean Theorem',
   'Apply the Pythagorean theorem',
   14, 'a²+b²=c²',
   '["Understand the theorem", "Find missing side lengths", "Apply to real situations", "Use in coordinate plane"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Volume',
   'Calculate volume of cylinders, cones, and spheres',
   15, '📦',
   '["Find volume of cylinders", "Find volume of cones", "Find volume of spheres", "Solve volume problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Statistics and Probability',
   'Analyze bivariate data and scatter plots',
   16, '📊',
   '["Create scatter plots", "Describe associations", "Use line of best fit", "Interpret two-way tables"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- REAL NUMBERS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Real Numbers' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Rational Numbers Review', 'Review rational number concepts', 1, 1, 20),
  ('Irrational Numbers', 'Identify and understand irrational numbers', 2, 2, 25),
  ('Real Number Classification', 'Classify numbers as rational or irrational', 2, 3, 25),
  ('Square Roots', 'Find square roots of perfect squares', 2, 4, 20),
  ('Estimating Square Roots', 'Estimate square roots of non-perfect squares', 2, 5, 25),
  ('Cube Roots', 'Find cube roots', 2, 6, 25),
  ('Comparing Irrational Numbers', 'Compare and order irrational numbers', 3, 7, 30),
  ('Approximating Irrational Numbers', 'Approximate using decimals', 2, 8, 25),
  ('Real Numbers on Number Line', 'Plot real numbers on number line', 2, 9, 20),
  ('Operations with Real Numbers', 'Perform operations with real numbers', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPONENTS AND SCIENTIFIC NOTATION TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Exponents and Scientific Notation' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Integer Exponents', 'Understand positive and negative exponents', 2, 1, 25),
  ('Zero Exponent', 'Understand why a⁰ = 1', 2, 2, 20),
  ('Negative Exponents', 'Convert between negative exponents and fractions', 2, 3, 25),
  ('Product Rule', 'Multiply expressions with same base', 2, 4, 25),
  ('Quotient Rule', 'Divide expressions with same base', 2, 5, 25),
  ('Power Rule', 'Raise a power to a power', 2, 6, 25),
  ('Combined Exponent Rules', 'Apply multiple exponent rules', 3, 7, 30),
  ('Scientific Notation', 'Write numbers in scientific notation', 2, 8, 25),
  ('Converting Scientific Notation', 'Convert between forms', 2, 9, 20),
  ('Comparing in Scientific Notation', 'Compare numbers in scientific notation', 2, 10, 25),
  ('Multiplying in Scientific Notation', 'Multiply numbers in scientific notation', 3, 11, 30),
  ('Dividing in Scientific Notation', 'Divide numbers in scientific notation', 3, 12, 30),
  ('Adding in Scientific Notation', 'Add numbers in scientific notation', 3, 13, 30),
  ('Scientific Notation Applications', 'Apply to real-world problems', 3, 14, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- LINEAR EQUATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Linear Equations' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('One-Step Equations Review', 'Review solving one-step equations', 1, 1, 20),
  ('Two-Step Equations Review', 'Review solving two-step equations', 2, 2, 25),
  ('Multi-Step Equations', 'Solve equations with multiple steps', 2, 3, 30),
  ('Equations with Distributive Property', 'Solve equations requiring distribution', 2, 4, 30),
  ('Variables on Both Sides', 'Solve when variable appears twice', 3, 5, 35),
  ('Equations with Rational Coefficients', 'Solve equations with fractions/decimals', 3, 6, 30),
  ('Special Cases', 'Identify no solution and infinite solutions', 3, 7, 30),
  ('Absolute Value Equations', 'Solve simple absolute value equations', 3, 8, 35),
  ('Linear Inequalities', 'Solve multi-step inequalities', 2, 9, 30),
  ('Compound Inequalities', 'Solve and graph compound inequalities', 3, 10, 35),
  ('Absolute Value Inequalities', 'Solve absolute value inequalities', 3, 11, 35),
  ('Equation Word Problems', 'Write and solve equations from situations', 3, 12, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SYSTEMS OF EQUATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Systems of Equations' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Introduction to Systems', 'Understand what systems of equations are', 2, 1, 25),
  ('Graphing Systems', 'Solve systems by graphing', 2, 2, 35),
  ('Types of Solutions', 'Identify one solution, no solution, infinite solutions', 2, 3, 30),
  ('Substitution Method', 'Solve systems using substitution', 3, 4, 35),
  ('Elimination Method Addition', 'Solve systems by adding equations', 3, 5, 35),
  ('Elimination Method Subtraction', 'Solve systems by subtracting equations', 3, 6, 35),
  ('Elimination with Multiplication', 'Multiply to eliminate variables', 3, 7, 40),
  ('Choosing a Method', 'Select appropriate solving method', 2, 8, 25),
  ('Systems Word Problems', 'Write and solve systems from situations', 3, 9, 40),
  ('Systems and Break-Even', 'Apply systems to business problems', 3, 10, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Functions' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Relations', 'Identify domain and range', 2, 1, 25),
  ('Definition of Function', 'Determine if a relation is a function', 2, 2, 25),
  ('Vertical Line Test', 'Use vertical line test for functions', 2, 3, 20),
  ('Function Notation', 'Use and interpret f(x) notation', 2, 4, 25),
  ('Evaluating Functions', 'Find function values for given inputs', 2, 5, 25),
  ('Functions from Tables', 'Represent functions with tables', 2, 6, 25),
  ('Functions from Graphs', 'Interpret functions from graphs', 2, 7, 25),
  ('Functions from Equations', 'Write function rules as equations', 2, 8, 25),
  ('Comparing Functions', 'Compare functions in different forms', 3, 9, 30),
  ('Linear vs Non-Linear', 'Distinguish linear from non-linear functions', 2, 10, 25),
  ('Increasing and Decreasing', 'Identify where functions increase/decrease', 2, 11, 25),
  ('Function Applications', 'Apply functions to real situations', 3, 12, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- LINEAR FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Linear Functions' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Slope from Graph', 'Find slope from a graph', 2, 1, 25),
  ('Slope from Two Points', 'Calculate slope using rise over run', 2, 2, 25),
  ('Slope from Table', 'Find slope from a table of values', 2, 3, 25),
  ('Slope from Equation', 'Identify slope from an equation', 2, 4, 20),
  ('Interpreting Slope', 'Interpret slope as rate of change', 2, 5, 25),
  ('Y-Intercept', 'Find and interpret y-intercept', 2, 6, 25),
  ('Slope-Intercept Form', 'Write equations in y = mx + b', 2, 7, 25),
  ('Graphing Slope-Intercept', 'Graph using slope and intercept', 2, 8, 30),
  ('Standard Form', 'Write and convert to standard form', 2, 9, 25),
  ('Point-Slope Form', 'Write equations in point-slope form', 3, 10, 30),
  ('Writing Equations from Graphs', 'Write equation of a graphed line', 2, 11, 25),
  ('Writing Equations from Points', 'Write equation through two points', 3, 12, 30),
  ('Parallel Lines', 'Identify and write equations of parallel lines', 3, 13, 30),
  ('Perpendicular Lines', 'Identify and write equations of perpendicular lines', 3, 14, 35),
  ('Linear Function Applications', 'Apply linear functions to real situations', 3, 15, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TRANSFORMATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Transformations' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Introduction to Transformations', 'Understand rigid and non-rigid transformations', 2, 1, 20),
  ('Translations', 'Perform and describe translations', 2, 2, 25),
  ('Translations on Coordinate Plane', 'Translate using coordinate rules', 2, 3, 30),
  ('Reflections', 'Reflect figures over lines', 2, 4, 30),
  ('Reflections over Axes', 'Reflect over x-axis and y-axis', 2, 5, 25),
  ('Reflections over Other Lines', 'Reflect over y = x and other lines', 3, 6, 35),
  ('Rotations', 'Rotate figures around a point', 3, 7, 35),
  ('Rotations on Coordinate Plane', 'Rotate 90°, 180°, 270°', 3, 8, 35),
  ('Describing Transformations', 'Describe single transformations', 2, 9, 25),
  ('Sequence of Transformations', 'Perform multiple transformations', 3, 10, 35),
  ('Dilations', 'Perform dilations with scale factor', 2, 11, 30),
  ('Dilations on Coordinate Plane', 'Dilate using coordinate rules', 3, 12, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CONGRUENCE AND SIMILARITY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Congruence and Similarity' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Congruent Figures', 'Identify congruent figures', 2, 1, 25),
  ('Congruence Transformations', 'Use transformations to show congruence', 2, 2, 30),
  ('Angle-Angle Similarity', 'Use AA criterion for similarity', 2, 3, 30),
  ('Similar Triangles', 'Identify similar triangles', 2, 4, 25),
  ('Similarity Transformations', 'Use dilations for similarity', 3, 5, 30),
  ('Scale Factor', 'Find and use scale factor', 2, 6, 25),
  ('Finding Missing Sides', 'Use similarity to find missing measurements', 3, 7, 30),
  ('Similarity and Proportions', 'Set up and solve proportions', 2, 8, 25),
  ('Similarity Word Problems', 'Apply similarity to real situations', 3, 9, 30),
  ('Indirect Measurement', 'Use similar triangles for indirect measurement', 3, 10, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PYTHAGOREAN THEOREM TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Pythagorean Theorem' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding the Pythagorean Theorem', 'Explore a² + b² = c²', 2, 1, 25),
  ('Finding the Hypotenuse', 'Calculate the longest side', 2, 2, 25),
  ('Finding a Leg', 'Calculate a shorter side', 2, 3, 25),
  ('Pythagorean Triples', 'Identify common Pythagorean triples', 2, 4, 20),
  ('Converse of Pythagorean Theorem', 'Determine if a triangle is right', 2, 5, 25),
  ('Pythagorean Theorem on Coordinate Plane', 'Find distances using theorem', 3, 6, 30),
  ('3D Pythagorean Theorem', 'Apply theorem in three dimensions', 3, 7, 35),
  ('Pythagorean Theorem Applications', 'Solve real-world problems', 3, 8, 30),
  ('Distance Formula', 'Connect to distance formula', 3, 9, 30),
  ('Pythagorean Theorem Word Problems', 'Solve multi-step problems', 3, 10, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VOLUME TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Volume' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Volume of Cylinders', 'Use V = πr²h', 2, 1, 25),
  ('Finding Height of Cylinder', 'Solve for height given volume', 3, 2, 25),
  ('Finding Radius of Cylinder', 'Solve for radius given volume', 3, 3, 30),
  ('Volume of Cones', 'Use V = 1/3 πr²h', 2, 4, 25),
  ('Comparing Cylinders and Cones', 'Understand the relationship', 2, 5, 25),
  ('Volume of Spheres', 'Use V = 4/3 πr³', 2, 6, 30),
  ('Finding Radius of Sphere', 'Solve for radius given volume', 3, 7, 30),
  ('Volume of Hemispheres', 'Calculate half-sphere volume', 3, 8, 25),
  ('Composite 3D Figures', 'Find volume of combined shapes', 3, 9, 35),
  ('Volume Word Problems', 'Solve real-world volume problems', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- STATISTICS AND PROBABILITY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Statistics and Probability' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Scatter Plots', 'Create and interpret scatter plots', 2, 1, 30),
  ('Patterns in Scatter Plots', 'Identify positive, negative, no association', 2, 2, 25),
  ('Linear vs Non-Linear Associations', 'Distinguish association types', 2, 3, 25),
  ('Clusters and Outliers', 'Identify clusters and outliers', 2, 4, 25),
  ('Line of Best Fit', 'Draw informal line of best fit', 3, 5, 30),
  ('Equation of Line of Best Fit', 'Write equation for trend line', 3, 6, 35),
  ('Making Predictions', 'Use line of best fit for predictions', 3, 7, 30),
  ('Two-Way Tables', 'Organize categorical data', 2, 8, 25),
  ('Relative Frequency Tables', 'Create relative frequency tables', 3, 9, 30),
  ('Interpreting Two-Way Tables', 'Analyze associations in data', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Grade 8 Math Expansion
-- ============================================================================
-- Added 11 new units: Real Numbers, Exponents and Scientific Notation,
--                     Linear Equations, Systems of Equations, Functions,
--                     Linear Functions, Transformations, Congruence and Similarity,
--                     Pythagorean Theorem, Volume, Statistics and Probability
-- Added 125 new topics total
-- New total: 16 units, ~140 topics (up from 5 units, ~15 topics)
-- ============================================================================
