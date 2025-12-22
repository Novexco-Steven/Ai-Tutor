-- Migration: Expand Grade 9 Math Curriculum (Algebra I)
-- Adding missing IXL-aligned skills for grade_level = 9
-- ============================================================================

-- ============================================================================
-- NEW GRADE 9 MATH UNITS
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Real Numbers and Operations',
   'Work with the real number system',
   6, '√',
   '["Classify real numbers", "Simplify radical expressions", "Perform operations with radicals", "Apply properties of real numbers"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Expressions and Equations',
   'Manipulate algebraic expressions and solve equations',
   7, 'x=',
   '["Simplify expressions", "Solve multi-step equations", "Solve literal equations", "Model with equations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Linear Functions',
   'Analyze and graph linear functions',
   8, '📈',
   '["Write linear equations", "Graph linear functions", "Interpret slope and intercept", "Apply to real situations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Systems of Equations',
   'Solve and apply systems of equations',
   9, '⟂',
   '["Solve systems graphically", "Solve by substitution and elimination", "Interpret solutions", "Model with systems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Inequalities',
   'Solve and graph linear inequalities',
   10, '≤',
   '["Solve compound inequalities", "Graph inequalities", "Solve systems of inequalities", "Apply to real situations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Polynomials',
   'Perform operations with polynomials',
   11, 'x²',
   '["Add and subtract polynomials", "Multiply polynomials", "Factor polynomials", "Divide polynomials"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Quadratic Functions',
   'Analyze and solve quadratic functions',
   12, '⌒',
   '["Graph quadratic functions", "Solve by factoring", "Use the quadratic formula", "Analyze key features"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Exponential Functions',
   'Understand and apply exponential functions',
   13, 'aˣ',
   '["Identify exponential functions", "Graph exponential functions", "Model growth and decay", "Compare linear and exponential"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Radical Expressions',
   'Simplify and operate with radicals',
   14, '√',
   '["Simplify radicals", "Add and subtract radicals", "Multiply and divide radicals", "Solve radical equations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Data and Statistics',
   'Analyze and interpret data',
   15, '📊',
   '["Represent data graphically", "Calculate statistics", "Analyze distributions", "Make predictions"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- REAL NUMBERS AND OPERATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Real Numbers and Operations' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Real Number System', 'Classify numbers in the real number system', 2, 1, 25),
  ('Properties of Real Numbers', 'Apply commutative, associative, distributive properties', 2, 2, 25),
  ('Absolute Value', 'Evaluate and interpret absolute value', 2, 3, 20),
  ('Square Roots', 'Simplify square roots', 2, 4, 25),
  ('Cube Roots', 'Simplify cube roots', 2, 5, 25),
  ('nth Roots', 'Work with higher roots', 3, 6, 30),
  ('Rational Exponents', 'Convert between radicals and exponents', 3, 7, 35),
  ('Simplifying Radicals', 'Simplify radical expressions', 2, 8, 25),
  ('Operations with Radicals', 'Add, subtract, multiply, divide radicals', 3, 9, 30),
  ('Rationalizing Denominators', 'Rationalize denominators', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPRESSIONS AND EQUATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Expressions and Equations' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Algebraic Expressions Review', 'Simplify and evaluate expressions', 1, 1, 20),
  ('Distributive Property', 'Apply distributive property', 2, 2, 25),
  ('Combining Like Terms', 'Simplify by combining like terms', 2, 3, 20),
  ('Multi-Step Equations', 'Solve equations with multiple steps', 2, 4, 30),
  ('Equations with Variables on Both Sides', 'Solve complex linear equations', 2, 5, 30),
  ('Equations with Fractions', 'Solve equations with rational coefficients', 3, 6, 30),
  ('Literal Equations', 'Solve for a specified variable', 3, 7, 30),
  ('Absolute Value Equations', 'Solve equations with absolute value', 3, 8, 35),
  ('Writing Equations', 'Model situations with equations', 2, 9, 25),
  ('Proportions and Cross Multiplication', 'Solve proportions', 2, 10, 25),
  ('Direct Variation', 'Understand and apply direct variation', 2, 11, 25),
  ('Inverse Variation', 'Understand and apply inverse variation', 3, 12, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- LINEAR FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Linear Functions' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Functions and Relations', 'Distinguish functions from relations', 2, 1, 25),
  ('Function Notation', 'Use and interpret f(x) notation', 2, 2, 25),
  ('Domain and Range', 'Find domain and range of functions', 2, 3, 25),
  ('Slope Review', 'Calculate and interpret slope', 2, 4, 25),
  ('Slope-Intercept Form', 'Write and graph y = mx + b', 2, 5, 30),
  ('Point-Slope Form', 'Write equations in point-slope form', 2, 6, 30),
  ('Standard Form', 'Convert between forms of linear equations', 2, 7, 25),
  ('Parallel and Perpendicular Lines', 'Write equations of parallel/perpendicular lines', 3, 8, 35),
  ('Linear Regression', 'Find line of best fit', 3, 9, 35),
  ('Arithmetic Sequences', 'Connect sequences to linear functions', 2, 10, 30),
  ('Piecewise Functions', 'Graph and interpret piecewise functions', 3, 11, 35),
  ('Step Functions', 'Understand and graph step functions', 3, 12, 30),
  ('Linear Function Applications', 'Model real situations with linear functions', 3, 13, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SYSTEMS OF EQUATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Systems of Equations' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Solving by Graphing', 'Solve systems by graphing', 2, 1, 30),
  ('Solving by Substitution', 'Use substitution method', 2, 2, 35),
  ('Solving by Elimination', 'Use elimination method', 2, 3, 35),
  ('Special Systems', 'Identify no solution and infinite solutions', 2, 4, 25),
  ('Choosing a Method', 'Select appropriate solving method', 2, 5, 25),
  ('Systems with Three Variables Introduction', 'Solve simple 3-variable systems', 3, 6, 40),
  ('Systems of Inequalities', 'Graph systems of linear inequalities', 3, 7, 35),
  ('Linear Programming Introduction', 'Solve optimization problems', 3, 8, 40),
  ('Systems Word Problems', 'Model situations with systems', 3, 9, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- INEQUALITIES TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Inequalities' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('One-Step Inequalities', 'Solve and graph simple inequalities', 2, 1, 25),
  ('Multi-Step Inequalities', 'Solve inequalities with multiple steps', 2, 2, 30),
  ('Compound Inequalities And', 'Solve and graph "and" inequalities', 2, 3, 30),
  ('Compound Inequalities Or', 'Solve and graph "or" inequalities', 2, 4, 30),
  ('Absolute Value Inequalities', 'Solve absolute value inequalities', 3, 5, 35),
  ('Graphing Linear Inequalities', 'Graph inequalities in two variables', 2, 6, 30),
  ('Systems of Linear Inequalities', 'Graph systems of inequalities', 3, 7, 35),
  ('Feasible Regions', 'Identify and describe feasible regions', 3, 8, 30),
  ('Inequality Word Problems', 'Model with inequalities', 3, 9, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- POLYNOMIALS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Polynomials' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Polynomial Vocabulary', 'Classify and name polynomials', 1, 1, 20),
  ('Adding Polynomials', 'Add polynomials', 2, 2, 25),
  ('Subtracting Polynomials', 'Subtract polynomials', 2, 3, 25),
  ('Multiplying Monomials', 'Multiply monomials', 2, 4, 25),
  ('Multiplying by Monomials', 'Multiply polynomial by monomial', 2, 5, 25),
  ('Multiplying Binomials', 'Use FOIL method', 2, 6, 30),
  ('Special Products', 'Square binomials and difference of squares', 2, 7, 30),
  ('Multiplying Polynomials', 'Multiply polynomials of any degree', 3, 8, 35),
  ('Factoring GCF', 'Factor out greatest common factor', 2, 9, 25),
  ('Factoring Trinomials x²+bx+c', 'Factor when a = 1', 2, 10, 35),
  ('Factoring Trinomials ax²+bx+c', 'Factor when a ≠ 1', 3, 11, 40),
  ('Factoring Special Products', 'Factor difference of squares, perfect squares', 2, 12, 30),
  ('Factoring by Grouping', 'Factor four-term polynomials', 3, 13, 35),
  ('Dividing Polynomials', 'Divide polynomials by monomials', 2, 14, 25),
  ('Long Division of Polynomials', 'Perform polynomial long division', 3, 15, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- QUADRATIC FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Quadratic Functions' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Quadratic Functions Introduction', 'Identify quadratic functions', 2, 1, 25),
  ('Graphing Quadratics in Standard Form', 'Graph f(x) = ax² + bx + c', 2, 2, 35),
  ('Vertex and Axis of Symmetry', 'Find vertex and axis of symmetry', 2, 3, 30),
  ('Graphing Quadratics in Vertex Form', 'Graph f(x) = a(x - h)² + k', 2, 4, 30),
  ('Converting Between Forms', 'Convert between standard and vertex form', 3, 5, 35),
  ('Solving by Graphing', 'Find zeros from graphs', 2, 6, 25),
  ('Solving by Factoring', 'Solve quadratics by factoring', 2, 7, 35),
  ('Zero Product Property', 'Apply zero product property', 2, 8, 25),
  ('Square Root Method', 'Solve by taking square roots', 2, 9, 25),
  ('Completing the Square', 'Solve by completing the square', 3, 10, 40),
  ('Quadratic Formula', 'Apply the quadratic formula', 2, 11, 35),
  ('Discriminant', 'Use discriminant to predict solutions', 2, 12, 25),
  ('Choosing a Method', 'Select appropriate solving method', 2, 13, 20),
  ('Quadratic Word Problems', 'Model with quadratic functions', 3, 14, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPONENTIAL FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Exponential Functions' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Exponential Functions Introduction', 'Identify exponential functions', 2, 1, 25),
  ('Graphing Exponential Functions', 'Graph y = abˣ', 2, 2, 30),
  ('Exponential Growth', 'Model exponential growth', 2, 3, 30),
  ('Exponential Decay', 'Model exponential decay', 2, 4, 30),
  ('Growth and Decay Rate', 'Find and interpret growth/decay rate', 2, 5, 25),
  ('Compound Interest', 'Apply compound interest formula', 3, 6, 35),
  ('Comparing Linear and Exponential', 'Distinguish linear from exponential', 2, 7, 30),
  ('Geometric Sequences', 'Connect sequences to exponential functions', 2, 8, 30),
  ('Exponential Models', 'Create and interpret exponential models', 3, 9, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- RADICAL EXPRESSIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Radical Expressions' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Simplifying Square Roots', 'Simplify radical expressions', 2, 1, 25),
  ('Simplifying Higher Roots', 'Simplify cube roots and beyond', 3, 2, 30),
  ('Adding and Subtracting Radicals', 'Combine like radicals', 2, 3, 25),
  ('Multiplying Radicals', 'Multiply radical expressions', 2, 4, 30),
  ('Dividing Radicals', 'Divide radical expressions', 2, 5, 30),
  ('Rationalizing Denominators', 'Rationalize single and binomial denominators', 3, 6, 35),
  ('Solving Radical Equations', 'Solve equations with radicals', 3, 7, 40),
  ('Extraneous Solutions', 'Identify extraneous solutions', 3, 8, 30),
  ('Radical Functions', 'Graph and analyze radical functions', 3, 9, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DATA AND STATISTICS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Data and Statistics' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Measures of Center', 'Calculate mean, median, mode', 2, 1, 25),
  ('Measures of Spread', 'Calculate range, IQR, standard deviation', 2, 2, 30),
  ('Box Plots', 'Create and interpret box-and-whisker plots', 2, 3, 30),
  ('Histograms', 'Create and interpret histograms', 2, 4, 25),
  ('Comparing Data Sets', 'Compare distributions', 2, 5, 25),
  ('Scatter Plots Review', 'Create and interpret scatter plots', 2, 6, 25),
  ('Linear Regression', 'Find and use line of best fit', 3, 7, 35),
  ('Correlation', 'Describe and interpret correlation', 2, 8, 25),
  ('Residuals', 'Calculate and interpret residuals', 3, 9, 35),
  ('Two-Way Frequency Tables', 'Analyze categorical data', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Grade 9 Math Expansion
-- ============================================================================
-- Added 10 new units: Real Numbers and Operations, Expressions and Equations,
--                     Linear Functions, Systems of Equations, Inequalities,
--                     Polynomials, Quadratic Functions, Exponential Functions,
--                     Radical Expressions, Data and Statistics
-- Added 113 new topics total
-- New total: 15 units, ~128 topics (up from 5 units, ~15 topics)
-- ============================================================================
