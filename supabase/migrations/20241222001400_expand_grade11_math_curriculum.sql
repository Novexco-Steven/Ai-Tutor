-- Migration: Expand Grade 11 Math Curriculum (Algebra II)
-- Adding missing IXL-aligned skills for grade_level = 11
-- ============================================================================

-- ============================================================================
-- NEW GRADE 11 MATH UNITS
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Functions and Relations',
   'Analyze and represent functions',
   6, 'f(x)',
   '["Analyze function behavior", "Find domain and range", "Perform operations with functions", "Understand inverse functions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Linear and Absolute Value Functions',
   'Graph and analyze linear and absolute value functions',
   7, '|x|',
   '["Graph linear functions", "Transform absolute value functions", "Solve absolute value equations", "Model with linear functions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Systems of Equations',
   'Solve systems with multiple variables and types',
   8, '⟂',
   '["Solve linear systems", "Solve nonlinear systems", "Use matrices for systems", "Apply to real situations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Quadratic Functions',
   'Analyze and apply quadratic functions',
   9, '⌒',
   '["Graph and transform quadratics", "Solve quadratic equations", "Analyze key features", "Model with quadratics"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Polynomial Functions',
   'Analyze polynomial functions and their graphs',
   10, 'xⁿ',
   '["Factor polynomials", "Find zeros of polynomials", "Graph polynomial functions", "Apply remainder and factor theorems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Rational Functions',
   'Analyze and graph rational functions',
   11, 'P/Q',
   '["Simplify rational expressions", "Solve rational equations", "Graph rational functions", "Identify asymptotes"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Radical Functions',
   'Work with radical functions and equations',
   12, '√',
   '["Simplify radical expressions", "Solve radical equations", "Graph radical functions", "Apply rational exponents"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Exponential Functions',
   'Analyze exponential functions and applications',
   13, 'aˣ',
   '["Graph exponential functions", "Model growth and decay", "Solve exponential equations", "Apply to real situations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Logarithmic Functions',
   'Understand and apply logarithms',
   14, 'log',
   '["Define logarithms", "Apply logarithm properties", "Solve logarithmic equations", "Model with logarithms"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Sequences and Series',
   'Analyze arithmetic and geometric sequences',
   15, 'Σ',
   '["Find terms of sequences", "Write sequence formulas", "Calculate series sums", "Apply to real situations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Probability and Statistics',
   'Apply probability and analyze data',
   16, '📊',
   '["Calculate probability", "Use normal distribution", "Analyze data distributions", "Make inferences"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Trigonometry',
   'Apply trigonometry in various contexts',
   17, 'sin',
   '["Work with unit circle", "Graph trig functions", "Solve trig equations", "Apply identities"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- FUNCTIONS AND RELATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Functions and Relations' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Relations and Functions', 'Distinguish functions from relations', 2, 1, 25),
  ('Function Notation', 'Use and interpret function notation', 2, 2, 25),
  ('Domain and Range', 'Find domain and range from various forms', 2, 3, 30),
  ('Function Operations', 'Add, subtract, multiply, divide functions', 2, 4, 30),
  ('Composition of Functions', 'Compose functions and find composite values', 3, 5, 35),
  ('Inverse Functions', 'Find and verify inverse functions', 3, 6, 35),
  ('One-to-One Functions', 'Identify one-to-one functions', 2, 7, 25),
  ('Piecewise Functions', 'Graph and evaluate piecewise functions', 2, 8, 30),
  ('Parent Functions', 'Identify and graph parent functions', 2, 9, 25),
  ('Transformations of Functions', 'Apply transformations to functions', 2, 10, 35),
  ('Even and Odd Functions', 'Identify function symmetry', 2, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- LINEAR AND ABSOLUTE VALUE FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Linear and Absolute Value Functions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Linear Functions Review', 'Review linear function concepts', 1, 1, 20),
  ('Slope and Rate of Change', 'Calculate and interpret slope', 2, 2, 25),
  ('Writing Linear Equations', 'Write equations in multiple forms', 2, 3, 25),
  ('Parallel and Perpendicular Lines', 'Write equations of parallel/perpendicular lines', 2, 4, 30),
  ('Absolute Value Functions', 'Graph y = |x| and transformations', 2, 5, 30),
  ('Transforming Absolute Value Functions', 'Apply transformations', 2, 6, 30),
  ('Solving Absolute Value Equations', 'Solve equations with absolute value', 2, 7, 30),
  ('Absolute Value Inequalities', 'Solve and graph absolute value inequalities', 3, 8, 35),
  ('Piecewise Linear Functions', 'Graph piecewise linear functions', 2, 9, 30),
  ('Step Functions', 'Graph and apply step functions', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SYSTEMS OF EQUATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Systems of Equations' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Solving Systems Review', 'Review substitution and elimination', 2, 1, 25),
  ('Systems with Three Variables', 'Solve 3-variable systems', 3, 2, 45),
  ('Systems of Linear Inequalities', 'Graph systems of inequalities', 2, 3, 35),
  ('Linear Programming', 'Solve optimization problems', 3, 4, 45),
  ('Matrix Introduction', 'Represent data with matrices', 2, 5, 30),
  ('Matrix Operations', 'Add, subtract, multiply matrices', 2, 6, 35),
  ('Matrix Equations', 'Solve matrix equations', 3, 7, 40),
  ('Inverse Matrices', 'Find and use inverse matrices', 3, 8, 45),
  ('Solving Systems with Matrices', 'Use matrices to solve systems', 3, 9, 40),
  ('Nonlinear Systems', 'Solve systems with quadratics', 3, 10, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- QUADRATIC FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Quadratic Functions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Graphing Quadratics Standard Form', 'Graph in standard form', 2, 1, 30),
  ('Graphing Quadratics Vertex Form', 'Graph in vertex form', 2, 2, 30),
  ('Transformations of Quadratics', 'Apply transformations', 2, 3, 30),
  ('Finding Vertex and Axis', 'Find key features algebraically', 2, 4, 25),
  ('Factoring Quadratics Review', 'Factor quadratic expressions', 2, 5, 30),
  ('Completing the Square', 'Complete the square for any quadratic', 3, 6, 40),
  ('Quadratic Formula Review', 'Apply quadratic formula', 2, 7, 25),
  ('Discriminant and Nature of Roots', 'Analyze discriminant', 2, 8, 25),
  ('Complex Numbers Introduction', 'Understand imaginary and complex numbers', 2, 9, 35),
  ('Operations with Complex Numbers', 'Add, subtract, multiply complex numbers', 3, 10, 35),
  ('Quadratic Equations with Complex Solutions', 'Solve with complex solutions', 3, 11, 35),
  ('Quadratic Inequalities', 'Solve and graph quadratic inequalities', 3, 12, 35),
  ('Quadratic Modeling', 'Model with quadratic functions', 3, 13, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- POLYNOMIAL FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Polynomial Functions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Polynomial Functions Introduction', 'Identify polynomial functions', 2, 1, 25),
  ('End Behavior', 'Determine end behavior from degree and leading coefficient', 2, 2, 30),
  ('Graphing Polynomial Functions', 'Sketch polynomial graphs', 2, 3, 35),
  ('Factoring Polynomials Review', 'Factor various polynomial types', 2, 4, 30),
  ('Zeros and Multiplicity', 'Find zeros and determine multiplicity', 3, 5, 35),
  ('Polynomial Long Division', 'Divide polynomials using long division', 3, 6, 40),
  ('Synthetic Division', 'Use synthetic division', 2, 7, 30),
  ('Remainder Theorem', 'Apply remainder theorem', 2, 8, 25),
  ('Factor Theorem', 'Apply factor theorem to find factors', 3, 9, 30),
  ('Rational Root Theorem', 'Find potential rational zeros', 3, 10, 35),
  ('Finding All Zeros', 'Find all zeros of polynomials', 3, 11, 40),
  ('Writing Polynomial Equations', 'Write equations from zeros', 3, 12, 35),
  ('Polynomial Inequalities', 'Solve polynomial inequalities', 3, 13, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- RATIONAL FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Rational Functions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Simplifying Rational Expressions', 'Factor and simplify', 2, 1, 30),
  ('Multiplying Rational Expressions', 'Multiply and simplify', 2, 2, 30),
  ('Dividing Rational Expressions', 'Divide and simplify', 2, 3, 30),
  ('Adding Rational Expressions', 'Add with common and unlike denominators', 3, 4, 35),
  ('Subtracting Rational Expressions', 'Subtract with various denominators', 3, 5, 35),
  ('Complex Fractions', 'Simplify complex fractions', 3, 6, 35),
  ('Solving Rational Equations', 'Solve equations with rational expressions', 3, 7, 40),
  ('Extraneous Solutions', 'Identify and check for extraneous solutions', 2, 8, 25),
  ('Graphing Rational Functions', 'Graph rational functions', 3, 9, 45),
  ('Vertical Asymptotes', 'Find and interpret vertical asymptotes', 2, 10, 30),
  ('Horizontal Asymptotes', 'Find and interpret horizontal asymptotes', 2, 11, 30),
  ('Oblique Asymptotes', 'Find slant asymptotes', 3, 12, 35),
  ('Holes in Graphs', 'Identify and locate holes', 3, 13, 30),
  ('Rational Function Applications', 'Apply to real situations', 3, 14, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- RADICAL FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Radical Functions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Simplifying Radicals Review', 'Simplify radical expressions', 2, 1, 25),
  ('Rational Exponents', 'Convert between radicals and rational exponents', 2, 2, 30),
  ('Simplifying with Rational Exponents', 'Simplify expressions with rational exponents', 3, 3, 35),
  ('Operations with Radicals', 'Add, subtract, multiply, divide radicals', 2, 4, 30),
  ('Rationalizing Denominators', 'Rationalize with one and two terms', 3, 5, 30),
  ('Solving Radical Equations', 'Solve equations with radicals', 3, 6, 40),
  ('Solving Equations with Rational Exponents', 'Solve equations with fractional exponents', 3, 7, 35),
  ('Graphing Square Root Functions', 'Graph and transform square root functions', 2, 8, 35),
  ('Graphing Cube Root Functions', 'Graph and transform cube root functions', 2, 9, 30),
  ('Inverse Functions with Radicals', 'Find inverses involving radicals', 3, 10, 35),
  ('Radical Function Applications', 'Apply radical functions to real situations', 3, 11, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPONENTIAL FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Exponential Functions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Exponential Functions Review', 'Review exponential function concepts', 2, 1, 25),
  ('Graphing Exponential Functions', 'Graph and transform exponential functions', 2, 2, 35),
  ('The Natural Base e', 'Understand and use natural base', 2, 3, 30),
  ('Exponential Growth', 'Model exponential growth', 2, 4, 30),
  ('Exponential Decay', 'Model exponential decay', 2, 5, 30),
  ('Compound Interest', 'Apply compound interest formulas', 3, 6, 35),
  ('Continuous Compound Interest', 'Apply continuous compounding', 3, 7, 30),
  ('Solving Exponential Equations Using Same Base', 'Solve by rewriting with same base', 2, 8, 30),
  ('Solving Exponential Equations Using Logs', 'Solve using logarithms', 3, 9, 40),
  ('Exponential Modeling', 'Create and interpret exponential models', 3, 10, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- LOGARITHMIC FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Logarithmic Functions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Introduction to Logarithms', 'Define logarithms as inverses', 2, 1, 30),
  ('Converting Between Forms', 'Convert between exponential and log forms', 2, 2, 25),
  ('Common Logarithms', 'Work with base 10 logarithms', 2, 3, 25),
  ('Natural Logarithms', 'Work with base e logarithms', 2, 4, 25),
  ('Graphing Logarithmic Functions', 'Graph and transform log functions', 2, 5, 35),
  ('Product Rule for Logs', 'Apply log(ab) = log a + log b', 2, 6, 30),
  ('Quotient Rule for Logs', 'Apply log(a/b) = log a - log b', 2, 7, 30),
  ('Power Rule for Logs', 'Apply log(aⁿ) = n log a', 2, 8, 25),
  ('Expanding Logarithms', 'Expand using log properties', 2, 9, 30),
  ('Condensing Logarithms', 'Combine using log properties', 3, 10, 30),
  ('Change of Base Formula', 'Convert between bases', 2, 11, 25),
  ('Solving Logarithmic Equations', 'Solve equations with logarithms', 3, 12, 40),
  ('Logarithmic Models', 'Apply logarithms to real situations', 3, 13, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SEQUENCES AND SERIES TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Sequences and Series' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Introduction to Sequences', 'Understand sequence notation', 2, 1, 25),
  ('Arithmetic Sequences', 'Find terms of arithmetic sequences', 2, 2, 30),
  ('Arithmetic Series', 'Calculate sums of arithmetic series', 2, 3, 30),
  ('Geometric Sequences', 'Find terms of geometric sequences', 2, 4, 30),
  ('Geometric Series', 'Calculate sums of geometric series', 3, 5, 35),
  ('Infinite Geometric Series', 'Find sums of infinite series', 3, 6, 35),
  ('Recursive Formulas', 'Write and use recursive formulas', 2, 7, 30),
  ('Explicit Formulas', 'Write and use explicit formulas', 2, 8, 30),
  ('Sigma Notation', 'Use summation notation', 2, 9, 30),
  ('Sequences and Functions', 'Connect sequences to functions', 2, 10, 25),
  ('Sequence Applications', 'Apply sequences to real situations', 3, 11, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PROBABILITY AND STATISTICS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Probability and Statistics' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Permutations', 'Calculate permutations', 2, 1, 30),
  ('Combinations', 'Calculate combinations', 2, 2, 30),
  ('Probability with Permutations and Combinations', 'Apply counting to probability', 3, 3, 35),
  ('Binomial Probability', 'Calculate binomial probabilities', 3, 4, 40),
  ('Binomial Distribution', 'Analyze binomial distributions', 3, 5, 40),
  ('Normal Distribution Introduction', 'Understand normal distribution', 2, 6, 35),
  ('Standard Normal Distribution', 'Use z-scores', 3, 7, 40),
  ('Normal Distribution Applications', 'Apply normal distribution', 3, 8, 40),
  ('Sampling Distributions', 'Understand sampling distributions', 3, 9, 40),
  ('Confidence Intervals Introduction', 'Calculate confidence intervals', 3, 10, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TRIGONOMETRY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Trigonometry' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Angles in Standard Position', 'Understand angle measurement', 2, 1, 25),
  ('Radian Measure', 'Convert between degrees and radians', 2, 2, 30),
  ('Unit Circle Introduction', 'Learn the unit circle', 2, 3, 40),
  ('Trig Functions on Unit Circle', 'Find trig values from unit circle', 2, 4, 35),
  ('Reference Angles', 'Find reference angles', 2, 5, 25),
  ('Graphing Sine Functions', 'Graph y = sin x and transformations', 2, 6, 40),
  ('Graphing Cosine Functions', 'Graph y = cos x and transformations', 2, 7, 40),
  ('Graphing Tangent Functions', 'Graph y = tan x', 3, 8, 35),
  ('Amplitude and Period', 'Identify amplitude and period', 2, 9, 30),
  ('Phase Shift', 'Apply horizontal shifts', 3, 10, 30),
  ('Pythagorean Identities', 'Use Pythagorean identities', 2, 11, 30),
  ('Reciprocal Identities', 'Use reciprocal identities', 2, 12, 25),
  ('Solving Trig Equations', 'Solve basic trig equations', 3, 13, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Grade 11 Math Expansion
-- ============================================================================
-- Added 12 new units: Functions and Relations, Linear and Absolute Value Functions,
--                     Systems of Equations, Quadratic Functions, Polynomial Functions,
--                     Rational Functions, Radical Functions, Exponential Functions,
--                     Logarithmic Functions, Sequences and Series, Probability and Statistics,
--                     Trigonometry
-- Added 139 new topics total
-- New total: 17 units, ~154 topics (up from 5 units, ~15 topics)
-- ============================================================================
