-- Migration: Expand Grade 7 Math Curriculum
-- Adding missing IXL-aligned skills for grade_level = 7
-- ============================================================================

-- ============================================================================
-- NEW GRADE 7 MATH UNITS
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Proportional Relationships',
   'Analyze and represent proportional relationships',
   6, '⚖️',
   '["Identify proportional relationships", "Calculate constant of proportionality", "Write equations for proportions", "Graph proportional relationships"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Percent Problems',
   'Solve complex percent problems',
   7, '%',
   '["Solve percent change problems", "Calculate markup and markdown", "Apply percent to real situations", "Use proportional reasoning"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Rational Number Operations',
   'Perform all operations with rational numbers',
   8, '±',
   '["Add and subtract rational numbers", "Multiply and divide rational numbers", "Solve complex rational number problems", "Apply to real-world contexts"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Expressions and Equations',
   'Write and solve multi-step equations',
   9, 'x=',
   '["Simplify complex expressions", "Solve multi-step equations", "Solve inequalities", "Model with equations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Angle Relationships',
   'Understand and apply angle relationships',
   10, '📐',
   '["Find supplementary and complementary angles", "Use vertical angles", "Solve angle problems", "Apply triangle angle properties"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Scale Drawings',
   'Create and interpret scale drawings',
   11, '📏',
   '["Understand scale factor", "Create scale drawings", "Calculate actual measurements", "Solve scale problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Circles',
   'Calculate circumference and area of circles',
   12, '⭕',
   '["Find circumference using pi", "Calculate area of circles", "Solve circle problems", "Understand pi"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Surface Area and Volume',
   'Calculate surface area and volume of 3D figures',
   13, '📦',
   '["Find surface area of prisms", "Calculate volume of prisms and pyramids", "Solve composite figure problems", "Apply to real situations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Probability',
   'Calculate probability of compound events',
   14, '🎲',
   '["Find probability of compound events", "Use simulations", "Understand independent and dependent events", "Calculate expected outcomes"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Statistics',
   'Compare and analyze data distributions',
   15, '📊',
   '["Compare data sets", "Make inferences from samples", "Understand sampling methods", "Analyze variability"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- PROPORTIONAL RELATIONSHIPS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Proportional Relationships' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Identifying Proportional Relationships', 'Determine if relationships are proportional', 2, 1, 25),
  ('Proportional Relationships in Tables', 'Find proportional relationships in tables', 2, 2, 25),
  ('Constant of Proportionality', 'Calculate and interpret k', 2, 3, 25),
  ('Proportional Relationships in Graphs', 'Graph proportional relationships', 2, 4, 30),
  ('Equations for Proportional Relationships', 'Write y = kx equations', 2, 5, 25),
  ('Comparing Proportional Relationships', 'Compare different representations', 3, 6, 30),
  ('Unit Rate as Slope', 'Connect unit rate to slope', 3, 7, 30),
  ('Proportional Relationship Word Problems', 'Solve real-world problems', 3, 8, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PERCENT PROBLEMS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Percent Problems' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Percent Increase', 'Calculate percent increase', 2, 1, 25),
  ('Percent Decrease', 'Calculate percent decrease', 2, 2, 25),
  ('Percent Error', 'Calculate percent error', 3, 3, 30),
  ('Markup', 'Calculate retail markup', 2, 4, 25),
  ('Markdown and Discount', 'Calculate markdowns and discounts', 2, 5, 25),
  ('Sales Tax and Total Cost', 'Calculate tax and totals', 2, 6, 25),
  ('Tips and Gratuity', 'Calculate appropriate tips', 2, 7, 20),
  ('Commission', 'Calculate sales commission', 2, 8, 25),
  ('Simple Interest', 'Calculate simple interest', 3, 9, 30),
  ('Compound Interest Introduction', 'Understand compound interest', 3, 10, 35),
  ('Multi-Step Percent Problems', 'Solve complex percent problems', 3, 11, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- RATIONAL NUMBER OPERATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Rational Number Operations' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Adding Rational Numbers', 'Add fractions, decimals, integers', 2, 1, 25),
  ('Subtracting Rational Numbers', 'Subtract rational numbers', 2, 2, 25),
  ('Properties of Addition', 'Apply commutative and associative properties', 2, 3, 20),
  ('Multiplying Rational Numbers', 'Multiply positive and negative rationals', 2, 4, 25),
  ('Dividing Rational Numbers', 'Divide positive and negative rationals', 2, 5, 25),
  ('Converting Rational to Decimal', 'Convert fractions to decimals', 2, 6, 20),
  ('Converting Decimal to Rational', 'Convert decimals to fractions', 2, 7, 25),
  ('Operations with Mixed Numbers', 'Perform operations with mixed numbers', 3, 8, 30),
  ('Order of Operations with Rationals', 'Apply order of operations', 3, 9, 30),
  ('Real-World Rational Number Problems', 'Solve practical problems', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPRESSIONS AND EQUATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Expressions and Equations' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Simplifying Expressions', 'Combine like terms and simplify', 2, 1, 25),
  ('Expanding Expressions', 'Use distributive property to expand', 2, 2, 25),
  ('Factoring Expressions', 'Factor using GCF', 3, 3, 30),
  ('Adding and Subtracting Linear Expressions', 'Combine linear expressions', 2, 4, 25),
  ('Writing Two-Step Equations', 'Write equations from situations', 2, 5, 25),
  ('Solving Two-Step Equations', 'Solve ax + b = c equations', 2, 6, 30),
  ('Equations with Rational Coefficients', 'Solve equations with fractions/decimals', 3, 7, 30),
  ('Equations with Variables on Both Sides', 'Solve when variable appears twice', 3, 8, 35),
  ('Writing Inequalities', 'Write inequalities from situations', 2, 9, 25),
  ('Solving Two-Step Inequalities', 'Solve and graph inequalities', 3, 10, 30),
  ('Graphing Inequalities on Number Lines', 'Graph solutions on number lines', 2, 11, 25),
  ('Modeling with Equations', 'Create and solve equations from scenarios', 3, 12, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ANGLE RELATIONSHIPS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Angle Relationships' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Complementary Angles', 'Find complementary angle measures', 2, 1, 20),
  ('Supplementary Angles', 'Find supplementary angle measures', 2, 2, 20),
  ('Vertical Angles', 'Identify and use vertical angles', 2, 3, 25),
  ('Adjacent Angles', 'Understand and use adjacent angles', 2, 4, 20),
  ('Angles in Triangle', 'Use 180° triangle sum', 2, 5, 25),
  ('Exterior Angles of Triangles', 'Calculate exterior angle measures', 3, 6, 30),
  ('Angles with Parallel Lines', 'Find angles with transversals', 3, 7, 35),
  ('Corresponding Angles', 'Identify corresponding angles', 3, 8, 25),
  ('Alternate Interior Angles', 'Use alternate interior angles', 3, 9, 25),
  ('Angle Problem Solving', 'Solve multi-step angle problems', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SCALE DRAWINGS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Scale Drawings' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Scale', 'Interpret scale ratios', 2, 1, 20),
  ('Reading Scale Drawings', 'Find actual dimensions from drawings', 2, 2, 25),
  ('Creating Scale Drawings', 'Create scale drawings', 3, 3, 35),
  ('Scale Factor', 'Calculate and use scale factor', 2, 4, 25),
  ('Scale Factor and Area', 'Relate scale factor to area', 3, 5, 30),
  ('Scale Factor and Volume', 'Relate scale factor to volume', 3, 6, 30),
  ('Map Scales', 'Calculate distances using map scales', 2, 7, 25),
  ('Blueprints and Floor Plans', 'Read and interpret blueprints', 3, 8, 30),
  ('Scale Drawing Word Problems', 'Solve real-world scale problems', 3, 9, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CIRCLES TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Circles' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Parts of a Circle', 'Identify radius, diameter, chord', 1, 1, 20),
  ('Understanding Pi', 'Explore the relationship of C to d', 2, 2, 25),
  ('Circumference from Diameter', 'Calculate C = πd', 2, 3, 25),
  ('Circumference from Radius', 'Calculate C = 2πr', 2, 4, 25),
  ('Finding Diameter from Circumference', 'Solve for diameter given C', 2, 5, 25),
  ('Area of Circles', 'Calculate A = πr²', 2, 6, 30),
  ('Finding Radius from Area', 'Solve for radius given area', 3, 7, 30),
  ('Semicircles and Quarter Circles', 'Find perimeter and area of partial circles', 3, 8, 30),
  ('Composite Figures with Circles', 'Calculate area of shapes with circles', 3, 9, 35),
  ('Circle Word Problems', 'Solve real-world circle problems', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SURFACE AREA AND VOLUME TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Surface Area and Volume' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Cross-Sections of 3D Figures', 'Identify cross-sections', 2, 1, 25),
  ('Surface Area of Prisms', 'Calculate SA using formulas', 2, 2, 30),
  ('Surface Area of Pyramids', 'Calculate SA of pyramids', 3, 3, 35),
  ('Volume of Prisms', 'Calculate V = Bh', 2, 4, 25),
  ('Volume of Pyramids', 'Calculate V = 1/3 Bh', 3, 5, 30),
  ('Surface Area of Cylinders', 'Calculate SA of cylinders', 3, 6, 35),
  ('Volume of Cylinders', 'Calculate V = πr²h', 2, 7, 30),
  ('Surface Area of Cones', 'Calculate SA of cones', 3, 8, 35),
  ('Volume of Cones', 'Calculate V = 1/3 πr²h', 3, 9, 30),
  ('Volume of Spheres', 'Calculate V = 4/3 πr³', 3, 10, 30),
  ('Composite 3D Figures', 'Find volume of combined shapes', 3, 11, 35),
  ('3D Figure Word Problems', 'Solve real-world problems', 3, 12, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PROBABILITY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Probability' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Probability Review', 'Review basic probability concepts', 1, 1, 20),
  ('Sample Space', 'List all possible outcomes', 2, 2, 25),
  ('Probability of Compound Events', 'Calculate P(A and B), P(A or B)', 3, 3, 30),
  ('Independent Events', 'Calculate probability of independent events', 3, 4, 30),
  ('Dependent Events', 'Calculate probability of dependent events', 3, 5, 35),
  ('Tree Diagrams', 'Use tree diagrams for compound events', 2, 6, 30),
  ('Organized Lists', 'Create systematic lists of outcomes', 2, 7, 25),
  ('Two-Way Tables', 'Use two-way frequency tables', 3, 8, 30),
  ('Simulations', 'Design probability simulations', 3, 9, 35),
  ('Experimental vs Theoretical', 'Compare types of probability', 2, 10, 25),
  ('Expected Value', 'Calculate expected value', 3, 11, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- STATISTICS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Statistics' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Populations and Samples', 'Distinguish populations from samples', 2, 1, 20),
  ('Random Sampling', 'Understand random sampling methods', 2, 2, 25),
  ('Valid Samples', 'Identify valid representative samples', 2, 3, 25),
  ('Making Inferences', 'Make inferences from sample data', 3, 4, 30),
  ('Comparing Two Populations', 'Compare data from two groups', 3, 5, 30),
  ('Measures of Center Comparison', 'Compare means and medians', 2, 6, 25),
  ('Measures of Variability', 'Compare MAD and IQR', 3, 7, 30),
  ('Visual Overlap of Distributions', 'Analyze distribution overlap', 3, 8, 30),
  ('Drawing Conclusions from Data', 'Make evidence-based conclusions', 3, 9, 30),
  ('Misleading Statistics', 'Identify misleading statistics', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Grade 7 Math Expansion
-- ============================================================================
-- Added 10 new units: Proportional Relationships, Percent Problems,
--                     Rational Number Operations, Expressions and Equations,
--                     Angle Relationships, Scale Drawings, Circles,
--                     Surface Area and Volume, Probability, Statistics
-- Added 103 new topics total
-- New total: 15 units, ~121 topics (up from 5 units, ~18 topics)
-- ============================================================================
