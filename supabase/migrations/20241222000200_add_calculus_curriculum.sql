-- Migration: Seed Calculus Curriculum
-- Based on IXL Calculus Skills and AP Calculus Standards
-- Grade Level: 13 (Post-High School / Advanced Course)
-- ============================================================================

-- ============================================================================
-- CALCULUS MATH CURRICULUM
-- ============================================================================

-- CALCULUS UNITS (10 units, 40+ topics)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 13, 'Functions Review',
   'Review essential function concepts for calculus success',
   1, 'f(x)',
   '["Evaluate functions from graphs and equations", "Understand function composition", "Find inverse functions", "Analyze domain and range"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 13, 'Introduction to Limits',
   'Explore the fundamental concept of limits',
   2, 'lim',
   '["Understand limit notation", "Find limits graphically", "Evaluate one-sided limits", "Determine when limits do not exist"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 13, 'Calculate Limits',
   'Master algebraic techniques for evaluating limits',
   3, '->',
   '["Apply limit laws", "Evaluate polynomial and rational limits", "Find trigonometric limits", "Resolve indeterminate forms"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 13, 'Continuity',
   'Understand continuous functions and their properties',
   4, '---',
   '["Define continuity at a point", "Identify types of discontinuities", "Analyze piecewise function continuity", "Apply the Intermediate Value Theorem"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 13, 'Introduction to Derivatives',
   'Discover the derivative as rate of change and slope',
   5, 'dy/dx',
   '["Calculate average rate of change", "Understand instantaneous rate of change", "Find tangent line equations", "Define derivative as a limit"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 13, 'Derivative Rules',
   'Master the rules for efficient differentiation',
   6, 'd/dx',
   '["Apply sum and difference rules", "Use the product rule", "Apply the quotient rule", "Master the chain rule"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 13, 'Applications of Derivatives',
   'Apply derivatives to solve real-world problems',
   7, 'max',
   '["Analyze motion with derivatives", "Solve related rates problems", "Find absolute and relative extrema", "Apply optimization techniques"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 13, 'Introduction to Integration',
   'Explore integration as the reverse of differentiation',
   8, 'int',
   '["Understand Riemann sums", "Interpret definite integrals as area", "Apply properties of integrals", "Connect derivatives and integrals"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 13, 'Antiderivatives',
   'Find antiderivatives using various techniques',
   9, 'F(x)',
   '["Apply power rule for antiderivatives", "Find antiderivatives of trig functions", "Integrate exponential functions", "Solve initial value problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 13, 'Applications of Integration',
   'Apply integration to solve problems',
   10, 'Area',
   '["Calculate area under curves", "Find area between curves", "Calculate average value of functions", "Solve accumulation problems"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- CALCULUS TOPICS
-- ============================================================================

-- Calculus Topics: Functions Review
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Functions Review' AND grade_level = 13),
  v.name, v.description, 13, 13, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Function Values from Graphs', 'Read function values and find inputs from graphs', 1, 1, 20),
  ('Function Operations', 'Add, subtract, multiply, and divide functions', 2, 2, 25),
  ('Function Composition', 'Compose functions and evaluate composite functions', 2, 3, 25),
  ('Inverse Functions', 'Find inverse functions algebraically and graphically', 3, 4, 30),
  ('Domain and Range', 'Determine domain and range of various function types', 2, 5, 25),
  ('Families of Functions', 'Identify and analyze polynomial, rational, and transcendental functions', 2, 6, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Calculus Topics: Introduction to Limits
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Introduction to Limits' AND grade_level = 13),
  v.name, v.description, 13, 13, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Graphical Limits', 'Find limits by analyzing graphs of functions', 1, 1, 20),
  ('One-Sided Limits', 'Evaluate left-hand and right-hand limits', 2, 2, 25),
  ('Limit Notation', 'Understand and use proper limit notation', 1, 3, 20),
  ('When Limits Do Not Exist', 'Identify cases where limits fail to exist', 2, 4, 25),
  ('Limits at Infinity', 'Evaluate limits as x approaches positive or negative infinity', 3, 5, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Calculus Topics: Calculate Limits
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Calculate Limits' AND grade_level = 13),
  v.name, v.description, 13, 13, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Limit Laws', 'Apply sum, difference, product, quotient, and power laws for limits', 2, 1, 25),
  ('Polynomial Limits', 'Evaluate limits of polynomial functions', 1, 2, 20),
  ('Rational Function Limits', 'Find limits of rational functions, including at points of discontinuity', 2, 3, 30),
  ('Trigonometric Limits', 'Evaluate fundamental trig limits including sin(x)/x', 3, 4, 30),
  ('Indeterminate Forms', 'Recognize and resolve 0/0 and other indeterminate forms', 3, 5, 35),
  ('Squeeze Theorem', 'Apply the Squeeze Theorem to evaluate difficult limits', 3, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Calculus Topics: Continuity
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Continuity' AND grade_level = 13),
  v.name, v.description, 13, 13, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Continuity at a Point', 'Determine if a function is continuous at a specific point', 2, 1, 25),
  ('Types of Discontinuities', 'Identify removable, jump, and infinite discontinuities', 2, 2, 25),
  ('Piecewise Function Continuity', 'Analyze continuity of piecewise-defined functions', 3, 3, 30),
  ('Intermediate Value Theorem', 'Apply IVT to prove existence of roots', 3, 4, 30),
  ('Continuous Functions', 'Identify intervals of continuity for various function types', 2, 5, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Calculus Topics: Introduction to Derivatives
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Introduction to Derivatives' AND grade_level = 13),
  v.name, v.description, 13, 13, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Average Rate of Change', 'Calculate average rate of change between two points', 1, 1, 20),
  ('Instantaneous Rate of Change', 'Understand derivative as instantaneous rate of change', 2, 2, 25),
  ('Tangent Lines', 'Find equations of tangent lines to curves', 2, 3, 25),
  ('Derivative as a Limit', 'Define derivative using the limit definition', 3, 4, 30),
  ('Differentiability', 'Determine where functions are differentiable', 3, 5, 30),
  ('Derivative Notation', 'Use and interpret various derivative notations (dy/dx, f''(x), Df)', 1, 6, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Calculus Topics: Derivative Rules
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Derivative Rules' AND grade_level = 13),
  v.name, v.description, 13, 13, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Power Rule', 'Apply the power rule to differentiate polynomial terms', 1, 1, 20),
  ('Sum and Difference Rules', 'Differentiate sums and differences of functions', 1, 2, 20),
  ('Product Rule', 'Apply the product rule to differentiate products of functions', 2, 3, 30),
  ('Quotient Rule', 'Apply the quotient rule to differentiate quotients', 2, 4, 30),
  ('Chain Rule', 'Master the chain rule for composite functions', 3, 5, 35),
  ('Trigonometric Derivatives', 'Differentiate sine, cosine, tangent, and other trig functions', 2, 6, 25),
  ('Exponential Derivatives', 'Find derivatives of exponential functions including e^x', 2, 7, 25),
  ('Logarithmic Derivatives', 'Differentiate natural and general logarithmic functions', 2, 8, 25),
  ('Implicit Differentiation', 'Differentiate implicitly defined functions', 3, 9, 35),
  ('Higher Order Derivatives', 'Find second, third, and higher derivatives', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Calculus Topics: Applications of Derivatives
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Applications of Derivatives' AND grade_level = 13),
  v.name, v.description, 13, 13, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Position Velocity Acceleration', 'Analyze motion using derivatives', 2, 1, 30),
  ('Related Rates', 'Solve problems involving rates of related quantities', 3, 2, 40),
  ('Mean Value Theorem', 'Apply and interpret the Mean Value Theorem', 3, 3, 35),
  ('First Derivative Test', 'Find relative extrema using the first derivative', 2, 4, 30),
  ('Second Derivative Test', 'Analyze concavity and find inflection points', 2, 5, 30),
  ('Absolute Extrema', 'Find absolute maximum and minimum values', 2, 6, 30),
  ('Optimization Problems', 'Solve real-world optimization problems', 3, 7, 45),
  ('L''Hopital''s Rule', 'Evaluate limits using L''Hopital''s Rule', 3, 8, 30),
  ('Linear Approximation', 'Use tangent lines to approximate function values', 2, 9, 25),
  ('Curve Sketching', 'Sketch curves using derivative information', 3, 10, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Calculus Topics: Introduction to Integration
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Introduction to Integration' AND grade_level = 13),
  v.name, v.description, 13, 13, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Riemann Sums', 'Approximate area using left, right, and midpoint sums', 2, 1, 30),
  ('Definite Integrals', 'Understand definite integrals as limits of Riemann sums', 2, 2, 30),
  ('Properties of Integrals', 'Apply properties of definite integrals', 2, 3, 25),
  ('Fundamental Theorem Part 1', 'Apply FTC Part 1 to evaluate derivatives of integrals', 3, 4, 35),
  ('Fundamental Theorem Part 2', 'Use FTC Part 2 to evaluate definite integrals', 2, 5, 30),
  ('Integral Notation', 'Understand and use integral notation correctly', 1, 6, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Calculus Topics: Antiderivatives
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Antiderivatives' AND grade_level = 13),
  v.name, v.description, 13, 13, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Power Rule for Antiderivatives', 'Find antiderivatives using the reverse power rule', 1, 1, 20),
  ('Antiderivatives of Trig Functions', 'Integrate basic trigonometric functions', 2, 2, 25),
  ('Exponential Antiderivatives', 'Integrate exponential functions', 2, 3, 25),
  ('Logarithmic Antiderivatives', 'Recognize integrals that produce logarithms', 2, 4, 25),
  ('Initial Value Problems', 'Solve differential equations with initial conditions', 2, 5, 30),
  ('U-Substitution', 'Apply u-substitution for integration', 3, 6, 35),
  ('Integration by Parts', 'Use integration by parts technique', 3, 7, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Calculus Topics: Applications of Integration
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Applications of Integration' AND grade_level = 13),
  v.name, v.description, 13, 13, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Area Under Curves', 'Calculate area between a curve and the x-axis', 2, 1, 30),
  ('Area Between Curves', 'Find area enclosed between two curves', 3, 2, 35),
  ('Average Value of Functions', 'Calculate average value using definite integrals', 2, 3, 25),
  ('Net Change', 'Apply integrals to find net change in quantities', 2, 4, 25),
  ('Accumulation Functions', 'Analyze functions defined by integrals', 3, 5, 30),
  ('Volume by Cross Sections', 'Calculate volume using known cross sections', 3, 6, 40),
  ('Volumes of Revolution', 'Find volumes using disk and washer methods', 3, 7, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Calculus Curriculum
-- ============================================================================
-- Math: 10 units, 62 topics
-- Total: 10 units, 62 topics
-- ============================================================================
