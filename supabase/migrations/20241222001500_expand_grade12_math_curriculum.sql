-- Migration: Expand Grade 12 Math Curriculum (Pre-Calculus)
-- Adding missing IXL-aligned skills for grade_level = 12
-- ============================================================================

-- ============================================================================
-- NEW GRADE 12 MATH UNITS
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Functions Review',
   'Review and extend function concepts',
   6, 'f(x)',
   '["Analyze all function types", "Find inverses", "Compose functions", "Transform functions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Polynomial and Rational Functions',
   'Analyze advanced polynomial and rational functions',
   7, 'P(x)/Q(x)',
   '["Graph polynomial functions", "Analyze rational functions", "Find zeros and asymptotes", "Solve polynomial and rational inequalities"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Exponential and Logarithmic Functions',
   'Apply exponential and logarithmic functions',
   8, 'eˣ',
   '["Model with exponential functions", "Apply logarithm properties", "Solve equations", "Analyze real-world applications"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Trigonometric Functions',
   'Master trigonometric functions and identities',
   9, 'sin θ',
   '["Use unit circle", "Graph all trig functions", "Apply identities", "Solve trig equations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Trigonometric Identities',
   'Prove and apply trigonometric identities',
   10, '≡',
   '["Verify identities", "Use sum and difference formulas", "Apply double and half-angle formulas", "Prove identities"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Applications of Trigonometry',
   'Apply trigonometry to various situations',
   11, '△',
   '["Apply law of sines", "Apply law of cosines", "Solve oblique triangles", "Find area of triangles"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Polar Coordinates and Complex Numbers',
   'Work with polar coordinates and complex numbers',
   12, 'r,θ',
   '["Graph in polar coordinates", "Convert between rectangular and polar", "Operate with complex numbers", "Apply DeMoivre''s theorem"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Vectors',
   'Understand and apply vectors',
   13, '→',
   '["Represent vectors", "Perform vector operations", "Find dot products", "Apply vectors to real situations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Conic Sections',
   'Analyze parabolas, ellipses, and hyperbolas',
   14, '◯',
   '["Graph conic sections", "Write equations of conics", "Identify conic sections", "Apply to real situations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Sequences and Series',
   'Extend sequence and series concepts',
   15, 'Σ',
   '["Analyze sequences", "Calculate series sums", "Apply to real situations", "Understand limits of sequences"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Introduction to Limits',
   'Prepare for calculus with limit concepts',
   16, 'lim',
   '["Understand limit concept", "Evaluate limits graphically", "Calculate limits algebraically", "Understand continuity"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Probability and Statistics',
   'Advanced probability and statistical analysis',
   17, '📊',
   '["Calculate probability", "Apply distributions", "Analyze data", "Make inferences"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- FUNCTIONS REVIEW TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Functions Review' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Function Families', 'Review all function types', 2, 1, 25),
  ('Domain and Range', 'Find domain and range of all function types', 2, 2, 25),
  ('Function Transformations', 'Apply translations, reflections, stretches', 2, 3, 30),
  ('Function Operations', 'Perform operations with functions', 2, 4, 25),
  ('Composition of Functions', 'Compose functions', 2, 5, 30),
  ('Inverse Functions', 'Find inverses algebraically and graphically', 2, 6, 30),
  ('Verifying Inverses', 'Verify inverse using composition', 2, 7, 25),
  ('Piecewise Functions', 'Graph and evaluate piecewise functions', 2, 8, 30),
  ('Even and Odd Functions', 'Identify function symmetry', 2, 9, 20),
  ('End Behavior', 'Analyze end behavior of functions', 2, 10, 25),
  ('Rates of Change', 'Calculate and interpret rates of change', 2, 11, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- POLYNOMIAL AND RATIONAL FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Polynomial and Rational Functions' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Polynomial Functions Review', 'Review polynomial concepts', 2, 1, 25),
  ('Zeros and Multiplicity', 'Analyze zeros and their multiplicity', 2, 2, 30),
  ('Graphing Polynomials', 'Sketch polynomial graphs', 2, 3, 35),
  ('Polynomial Division', 'Perform long and synthetic division', 2, 4, 30),
  ('Remainder and Factor Theorems', 'Apply theorems to find zeros', 2, 5, 30),
  ('Complex Zeros', 'Find complex zeros of polynomials', 3, 6, 40),
  ('Fundamental Theorem of Algebra', 'Apply fundamental theorem', 2, 7, 25),
  ('Rational Functions Review', 'Review rational function concepts', 2, 8, 25),
  ('Asymptotes', 'Find all types of asymptotes', 2, 9, 35),
  ('Graphing Rational Functions', 'Graph with asymptotes and intercepts', 3, 10, 40),
  ('Polynomial Inequalities', 'Solve polynomial inequalities', 3, 11, 35),
  ('Rational Inequalities', 'Solve rational inequalities', 3, 12, 40),
  ('Partial Fraction Decomposition', 'Decompose rational expressions', 3, 13, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPONENTIAL AND LOGARITHMIC FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Exponential and Logarithmic Functions' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Exponential Functions Review', 'Review exponential function concepts', 2, 1, 25),
  ('Natural Exponential Function', 'Work with e and natural exponential', 2, 2, 30),
  ('Logarithmic Functions Review', 'Review logarithm concepts', 2, 3, 25),
  ('Natural Logarithm', 'Work with ln', 2, 4, 25),
  ('Properties of Logarithms', 'Apply all log properties', 2, 5, 30),
  ('Expanding and Condensing Logs', 'Rewrite using properties', 2, 6, 30),
  ('Change of Base', 'Apply change of base formula', 2, 7, 25),
  ('Exponential Equations', 'Solve using logs', 3, 8, 35),
  ('Logarithmic Equations', 'Solve equations with logs', 3, 9, 35),
  ('Exponential Growth and Decay', 'Model real situations', 2, 10, 35),
  ('Logistic Growth', 'Model with logistic functions', 3, 11, 40),
  ('Compound Interest Applications', 'Apply to financial problems', 2, 12, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TRIGONOMETRIC FUNCTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Trigonometric Functions' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Angle Measure', 'Work with degrees and radians', 2, 1, 25),
  ('Unit Circle', 'Master the unit circle', 2, 2, 35),
  ('Trigonometric Functions of Any Angle', 'Find trig values for any angle', 2, 3, 30),
  ('Reference Angles', 'Use reference angles effectively', 2, 4, 25),
  ('Graphing Sine and Cosine', 'Graph with transformations', 2, 5, 40),
  ('Graphing Tangent and Cotangent', 'Graph tan and cot functions', 3, 6, 35),
  ('Graphing Secant and Cosecant', 'Graph sec and csc functions', 3, 7, 35),
  ('Inverse Trigonometric Functions', 'Evaluate inverse trig functions', 2, 8, 35),
  ('Graphing Inverse Trig Functions', 'Graph arcsin, arccos, arctan', 3, 9, 35),
  ('Composition with Inverse Trig', 'Evaluate composite expressions', 3, 10, 35),
  ('Applications of Trig Functions', 'Model periodic behavior', 3, 11, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TRIGONOMETRIC IDENTITIES TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Trigonometric Identities' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Fundamental Identities', 'Use reciprocal and quotient identities', 2, 1, 30),
  ('Pythagorean Identities', 'Apply Pythagorean identities', 2, 2, 30),
  ('Verifying Identities', 'Prove trigonometric identities', 3, 3, 45),
  ('Sum and Difference Formulas Sine', 'Apply sin(A ± B)', 2, 4, 35),
  ('Sum and Difference Formulas Cosine', 'Apply cos(A ± B)', 2, 5, 35),
  ('Sum and Difference Formulas Tangent', 'Apply tan(A ± B)', 3, 6, 35),
  ('Double-Angle Formulas', 'Apply double-angle identities', 2, 7, 35),
  ('Half-Angle Formulas', 'Apply half-angle identities', 3, 8, 40),
  ('Power-Reducing Formulas', 'Use power-reducing identities', 3, 9, 35),
  ('Product-to-Sum Formulas', 'Convert products to sums', 3, 10, 35),
  ('Sum-to-Product Formulas', 'Convert sums to products', 3, 11, 35),
  ('Solving Trig Equations', 'Solve equations using identities', 3, 12, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- APPLICATIONS OF TRIGONOMETRY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Applications of Trigonometry' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Law of Sines', 'Apply law of sines', 2, 1, 35),
  ('Ambiguous Case', 'Analyze ambiguous case (SSA)', 3, 2, 40),
  ('Law of Cosines', 'Apply law of cosines', 2, 3, 35),
  ('Choosing Law of Sines or Cosines', 'Select appropriate law', 2, 4, 25),
  ('Solving Oblique Triangles', 'Solve any triangle', 3, 5, 40),
  ('Area of Triangles', 'Find area using trig', 2, 6, 30),
  ('Heron''s Formula', 'Apply Heron''s formula', 2, 7, 30),
  ('Navigation Problems', 'Apply to navigation', 3, 8, 40),
  ('Surveying Problems', 'Apply to surveying', 3, 9, 40),
  ('Simple Harmonic Motion', 'Model harmonic motion', 3, 10, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- POLAR COORDINATES AND COMPLEX NUMBERS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Polar Coordinates and Complex Numbers' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Polar Coordinate System', 'Understand polar coordinates', 2, 1, 30),
  ('Plotting Polar Points', 'Plot points in polar form', 2, 2, 25),
  ('Converting Rectangular to Polar', 'Convert coordinates', 2, 3, 30),
  ('Converting Polar to Rectangular', 'Convert coordinates', 2, 4, 30),
  ('Polar Equations', 'Graph polar equations', 3, 5, 40),
  ('Polar Graphs Types', 'Identify roses, limacons, cardioids', 3, 6, 40),
  ('Complex Numbers Review', 'Review complex number operations', 2, 7, 25),
  ('Complex Plane', 'Plot complex numbers', 2, 8, 25),
  ('Polar Form of Complex Numbers', 'Write in polar/trigonometric form', 2, 9, 35),
  ('Products and Quotients in Polar Form', 'Multiply and divide in polar form', 3, 10, 35),
  ('DeMoivre''s Theorem', 'Find powers of complex numbers', 3, 11, 40),
  ('Roots of Complex Numbers', 'Find nth roots', 3, 12, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VECTORS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Vectors' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Introduction to Vectors', 'Understand vector concepts', 2, 1, 25),
  ('Vector Notation', 'Use component and unit vector notation', 2, 2, 25),
  ('Vector Addition and Subtraction', 'Add and subtract vectors', 2, 3, 30),
  ('Scalar Multiplication', 'Multiply vectors by scalars', 2, 4, 25),
  ('Vector Magnitude', 'Find magnitude of vectors', 2, 5, 25),
  ('Unit Vectors', 'Find and use unit vectors', 2, 6, 30),
  ('Direction Angles', 'Find direction angles', 2, 7, 30),
  ('Dot Product', 'Calculate dot products', 2, 8, 35),
  ('Angle Between Vectors', 'Find angle using dot product', 3, 9, 35),
  ('Orthogonal Vectors', 'Identify perpendicular vectors', 2, 10, 25),
  ('Vector Projections', 'Find projections of vectors', 3, 11, 40),
  ('Applications of Vectors', 'Apply to physics problems', 3, 12, 40),
  ('Vectors in 3D', 'Extend to three dimensions', 3, 13, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CONIC SECTIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Conic Sections' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Introduction to Conics', 'Understand conic sections', 2, 1, 25),
  ('Parabolas Vertex at Origin', 'Graph and write parabola equations', 2, 2, 35),
  ('Parabolas Vertex Not at Origin', 'Graph translated parabolas', 3, 3, 40),
  ('Circles Review', 'Review circle equations', 2, 4, 25),
  ('Ellipses Center at Origin', 'Graph and write ellipse equations', 2, 5, 40),
  ('Ellipses Center Not at Origin', 'Graph translated ellipses', 3, 6, 45),
  ('Hyperbolas Center at Origin', 'Graph and write hyperbola equations', 3, 7, 45),
  ('Hyperbolas Center Not at Origin', 'Graph translated hyperbolas', 3, 8, 45),
  ('Identifying Conic Sections', 'Identify from general form', 2, 9, 30),
  ('Eccentricity', 'Calculate and interpret eccentricity', 3, 10, 35),
  ('Parametric Equations Introduction', 'Graph parametric equations', 3, 11, 40),
  ('Conic Applications', 'Apply to real situations', 3, 12, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SEQUENCES AND SERIES TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Sequences and Series' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Sequences Review', 'Review sequence concepts', 2, 1, 25),
  ('Arithmetic Sequences and Series', 'Work with arithmetic sequences', 2, 2, 30),
  ('Geometric Sequences and Series', 'Work with geometric sequences', 2, 3, 30),
  ('Infinite Geometric Series', 'Find sums of convergent series', 2, 4, 30),
  ('Sigma Notation', 'Use and evaluate sigma notation', 2, 5, 30),
  ('Mathematical Induction', 'Prove statements by induction', 3, 6, 50),
  ('Binomial Theorem', 'Expand binomials', 3, 7, 40),
  ('Pascal''s Triangle', 'Use Pascal''s triangle for expansion', 2, 8, 30),
  ('Finding Specific Terms', 'Find specific terms in expansions', 3, 9, 35),
  ('Sequences and Limits', 'Understand limits of sequences', 3, 10, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- INTRODUCTION TO LIMITS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Introduction to Limits' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Limits', 'Conceptual understanding of limits', 2, 1, 30),
  ('Limits from Graphs', 'Find limits graphically', 2, 2, 25),
  ('Limits from Tables', 'Find limits numerically', 2, 3, 25),
  ('One-Sided Limits', 'Evaluate left and right limits', 2, 4, 30),
  ('Limits That Do Not Exist', 'Identify when limits fail to exist', 2, 5, 25),
  ('Limits at Infinity', 'Evaluate limits as x → ∞', 3, 6, 35),
  ('Evaluating Limits Algebraically', 'Use algebra to find limits', 2, 7, 35),
  ('Indeterminate Forms', 'Recognize 0/0 and other forms', 3, 8, 35),
  ('Continuity', 'Determine if functions are continuous', 2, 9, 30),
  ('Types of Discontinuity', 'Identify types of discontinuity', 3, 10, 30),
  ('Introduction to Derivatives', 'Preview derivative concept', 3, 11, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PROBABILITY AND STATISTICS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Probability and Statistics' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Permutations and Combinations Review', 'Review counting principles', 2, 1, 25),
  ('Probability Rules', 'Apply probability rules', 2, 2, 30),
  ('Conditional Probability', 'Calculate conditional probability', 3, 3, 35),
  ('Independent and Dependent Events', 'Distinguish and calculate', 2, 4, 30),
  ('Binomial Distribution', 'Apply binomial distribution', 3, 5, 40),
  ('Normal Distribution', 'Apply normal distribution', 3, 6, 40),
  ('Standard Normal Distribution', 'Use z-scores and tables', 3, 7, 40),
  ('Sampling Distributions', 'Understand sampling distributions', 3, 8, 45),
  ('Confidence Intervals', 'Calculate confidence intervals', 3, 9, 45),
  ('Hypothesis Testing Introduction', 'Understand hypothesis testing', 3, 10, 50),
  ('Expected Value', 'Calculate and interpret expected value', 2, 11, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Grade 12 Math Expansion
-- ============================================================================
-- Added 12 new units: Functions Review, Polynomial and Rational Functions,
--                     Exponential and Logarithmic Functions, Trigonometric Functions,
--                     Trigonometric Identities, Applications of Trigonometry,
--                     Polar Coordinates and Complex Numbers, Vectors, Conic Sections,
--                     Sequences and Series, Introduction to Limits, Probability and Statistics
-- Added 136 new topics total
-- New total: 17 units, ~151 topics (up from 5 units, ~15 topics)
-- ============================================================================
