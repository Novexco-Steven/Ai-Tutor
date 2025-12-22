-- Migration: Expand Grade 10 Math Curriculum (Geometry)
-- Adding missing IXL-aligned skills for grade_level = 10
-- ============================================================================

-- ============================================================================
-- NEW GRADE 10 MATH UNITS
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Foundations of Geometry',
   'Understand geometric foundations and reasoning',
   6, '📐',
   '["Define geometric terms", "Understand postulates and theorems", "Write geometric proofs", "Apply logical reasoning"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Parallel and Perpendicular Lines',
   'Analyze relationships with parallel and perpendicular lines',
   7, '⫽',
   '["Identify angle pairs", "Prove lines parallel", "Write equations of parallel/perpendicular lines", "Apply in coordinate plane"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Triangle Relationships',
   'Explore triangle properties and relationships',
   8, '△',
   '["Classify triangles", "Apply triangle inequalities", "Use congruence criteria", "Prove triangles congruent"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Congruent Triangles',
   'Prove and apply triangle congruence',
   9, '≅',
   '["Use SSS, SAS, ASA, AAS", "Write congruence proofs", "Apply CPCTC", "Solve problems with congruence"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Quadrilaterals',
   'Analyze properties of quadrilaterals',
   10, '◇',
   '["Classify quadrilaterals", "Apply properties", "Prove quadrilateral relationships", "Solve quadrilateral problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Similarity',
   'Understand and apply similarity',
   11, '∽',
   '["Use similarity criteria", "Find missing measures", "Apply similarity in proofs", "Solve proportion problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Right Triangles and Trigonometry',
   'Apply trigonometry in right triangles',
   12, '📏',
   '["Use Pythagorean theorem", "Define trig ratios", "Solve right triangles", "Apply to real situations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Circles',
   'Analyze circle properties and relationships',
   13, '⭕',
   '["Identify circle parts", "Apply arc and angle relationships", "Find circumference and area", "Write circle equations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Area and Perimeter',
   'Calculate area and perimeter of polygons',
   14, '□',
   '["Find perimeter of polygons", "Calculate area of polygons", "Apply coordinate geometry", "Solve composite figure problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Surface Area and Volume',
   'Calculate surface area and volume of solids',
   15, '📦',
   '["Find surface area of prisms and pyramids", "Calculate volume of solids", "Apply to cylinders, cones, spheres", "Solve real-world problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Transformations',
   'Perform and analyze geometric transformations',
   16, '🔄',
   '["Perform translations, reflections, rotations", "Identify transformation types", "Use coordinate rules", "Prove congruence with transformations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Probability and Statistics',
   'Apply probability and analyze data',
   17, '📊',
   '["Calculate probability", "Use permutations and combinations", "Analyze geometric probability", "Interpret data"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- FOUNDATIONS OF GEOMETRY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Foundations of Geometry' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Points Lines Planes', 'Identify and name basic geometric terms', 1, 1, 20),
  ('Segments and Rays', 'Identify segments, rays, and their properties', 2, 2, 20),
  ('Segment Addition Postulate', 'Apply segment addition', 2, 3, 25),
  ('Measuring Segments', 'Calculate segment lengths', 2, 4, 25),
  ('Midpoint and Distance', 'Find midpoints and distances', 2, 5, 30),
  ('Angle Basics', 'Classify and name angles', 2, 6, 25),
  ('Angle Addition Postulate', 'Apply angle addition', 2, 7, 25),
  ('Angle Bisectors', 'Construct and use angle bisectors', 2, 8, 25),
  ('Inductive Reasoning', 'Make conjectures using patterns', 2, 9, 25),
  ('Conditional Statements', 'Write and analyze conditionals', 2, 10, 25),
  ('Deductive Reasoning', 'Apply logical reasoning', 3, 11, 30),
  ('Two-Column Proofs Introduction', 'Write basic geometric proofs', 3, 12, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PARALLEL AND PERPENDICULAR LINES TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Parallel and Perpendicular Lines' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Parallel Lines and Transversals', 'Identify angle relationships', 2, 1, 25),
  ('Corresponding Angles', 'Find and use corresponding angles', 2, 2, 25),
  ('Alternate Interior Angles', 'Apply alternate interior angles theorem', 2, 3, 25),
  ('Alternate Exterior Angles', 'Apply alternate exterior angles theorem', 2, 4, 25),
  ('Same-Side Interior Angles', 'Use consecutive interior angles', 2, 5, 25),
  ('Proving Lines Parallel', 'Use converses to prove parallelism', 3, 6, 35),
  ('Perpendicular Lines', 'Identify and construct perpendicular lines', 2, 7, 25),
  ('Slope and Parallel Lines', 'Use slope to identify parallel lines', 2, 8, 30),
  ('Slope and Perpendicular Lines', 'Use slope for perpendicular lines', 2, 9, 30),
  ('Writing Parallel and Perpendicular Equations', 'Write equations of lines', 3, 10, 35),
  ('Distance from Point to Line', 'Calculate perpendicular distance', 3, 11, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TRIANGLE RELATIONSHIPS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Triangle Relationships' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Classifying Triangles', 'Classify by sides and angles', 2, 1, 20),
  ('Triangle Sum Theorem', 'Apply 180° angle sum', 2, 2, 25),
  ('Exterior Angle Theorem', 'Find exterior angle measures', 2, 3, 25),
  ('Isosceles Triangle Theorem', 'Apply isosceles properties', 2, 4, 30),
  ('Equilateral Triangle Properties', 'Use equilateral triangle properties', 2, 5, 25),
  ('Triangle Inequality Theorem', 'Determine if sides form triangle', 2, 6, 25),
  ('Side-Angle Relationships', 'Compare sides and opposite angles', 2, 7, 25),
  ('Midsegment Theorem', 'Apply triangle midsegment theorem', 3, 8, 30),
  ('Perpendicular Bisectors', 'Apply perpendicular bisector theorem', 3, 9, 30),
  ('Angle Bisectors in Triangles', 'Use angle bisector theorem', 3, 10, 30),
  ('Medians and Centroids', 'Find centroid and use medians', 3, 11, 35),
  ('Altitudes and Orthocenters', 'Construct and use altitudes', 3, 12, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CONGRUENT TRIANGLES TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Congruent Triangles' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Congruence and Rigid Motions', 'Define congruence using transformations', 2, 1, 25),
  ('SSS Congruence', 'Apply Side-Side-Side criterion', 2, 2, 30),
  ('SAS Congruence', 'Apply Side-Angle-Side criterion', 2, 3, 30),
  ('ASA Congruence', 'Apply Angle-Side-Angle criterion', 2, 4, 30),
  ('AAS Congruence', 'Apply Angle-Angle-Side criterion', 2, 5, 30),
  ('HL Congruence', 'Apply Hypotenuse-Leg criterion', 2, 6, 25),
  ('CPCTC', 'Use corresponding parts of congruent triangles', 3, 7, 35),
  ('Two-Column Proofs with Triangles', 'Write congruence proofs', 3, 8, 40),
  ('Paragraph Proofs', 'Write informal proofs', 3, 9, 35),
  ('Coordinate Proofs', 'Prove congruence using coordinates', 3, 10, 35),
  ('Congruence Problem Solving', 'Apply congruence to problems', 3, 11, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- QUADRILATERALS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Quadrilaterals' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Quadrilateral Classification', 'Classify quadrilaterals', 2, 1, 25),
  ('Properties of Parallelograms', 'Apply parallelogram properties', 2, 2, 30),
  ('Proving Parallelograms', 'Prove a quadrilateral is a parallelogram', 3, 3, 35),
  ('Rectangles', 'Apply rectangle properties', 2, 4, 25),
  ('Rhombi', 'Apply rhombus properties', 2, 5, 25),
  ('Squares', 'Apply square properties', 2, 6, 25),
  ('Trapezoids', 'Apply trapezoid properties', 2, 7, 30),
  ('Isosceles Trapezoids', 'Use isosceles trapezoid properties', 2, 8, 25),
  ('Kites', 'Apply kite properties', 2, 9, 25),
  ('Quadrilateral Proofs', 'Prove quadrilateral properties', 3, 10, 40),
  ('Coordinate Proofs Quadrilaterals', 'Prove using coordinates', 3, 11, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SIMILARITY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Similarity' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Ratios and Proportions Review', 'Solve proportions', 2, 1, 20),
  ('Similar Polygons', 'Identify similar polygons', 2, 2, 25),
  ('AA Similarity', 'Apply Angle-Angle similarity', 2, 3, 30),
  ('SSS Similarity', 'Apply Side-Side-Side similarity', 2, 4, 30),
  ('SAS Similarity', 'Apply Side-Angle-Side similarity', 2, 5, 30),
  ('Triangle Proportionality Theorem', 'Apply to parallel lines in triangles', 3, 6, 35),
  ('Using Similar Triangles', 'Find missing measures', 2, 7, 30),
  ('Similarity Proofs', 'Write similarity proofs', 3, 8, 40),
  ('Indirect Measurement', 'Apply similarity to real situations', 2, 9, 30),
  ('Perimeter and Area of Similar Figures', 'Calculate perimeter and area ratios', 3, 10, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- RIGHT TRIANGLES AND TRIGONOMETRY TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Right Triangles and Trigonometry' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Pythagorean Theorem Review', 'Apply Pythagorean theorem', 2, 1, 25),
  ('Pythagorean Theorem Converse', 'Determine if triangle is right', 2, 2, 25),
  ('Special Right Triangles 45-45-90', 'Apply 45-45-90 relationships', 2, 3, 30),
  ('Special Right Triangles 30-60-90', 'Apply 30-60-90 relationships', 2, 4, 30),
  ('Trigonometric Ratios', 'Define sine, cosine, tangent', 2, 5, 30),
  ('Finding Trig Ratios', 'Calculate trig ratios in right triangles', 2, 6, 30),
  ('Using Trig to Find Sides', 'Solve for missing sides', 2, 7, 35),
  ('Using Trig to Find Angles', 'Solve for missing angles', 2, 8, 35),
  ('Inverse Trigonometric Functions', 'Use inverse trig functions', 2, 9, 30),
  ('Angles of Elevation and Depression', 'Apply to real situations', 3, 10, 35),
  ('Solving Right Triangles', 'Find all sides and angles', 3, 11, 35),
  ('Area Using Trigonometry', 'Calculate area with trig', 3, 12, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CIRCLES TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Circles' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Circle Vocabulary', 'Identify parts of circles', 1, 1, 20),
  ('Central Angles', 'Find central angle measures', 2, 2, 25),
  ('Arc Measures', 'Calculate arc measures', 2, 3, 25),
  ('Arc Length', 'Calculate arc length', 2, 4, 30),
  ('Inscribed Angles', 'Apply inscribed angle theorem', 2, 5, 30),
  ('Inscribed Angle Corollaries', 'Use inscribed angle corollaries', 3, 6, 30),
  ('Tangent Lines', 'Apply tangent properties', 2, 7, 30),
  ('Secant Lines', 'Apply secant properties', 3, 8, 30),
  ('Chord Properties', 'Use chord relationships', 2, 9, 25),
  ('Segments in Circles', 'Apply segment relationships', 3, 10, 35),
  ('Equation of a Circle', 'Write circle equations', 2, 11, 35),
  ('Graphing Circles', 'Graph circles from equations', 2, 12, 30),
  ('Sector Area', 'Calculate sector area', 2, 13, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- AREA AND PERIMETER TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Area and Perimeter' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Perimeter of Polygons', 'Calculate perimeter', 2, 1, 20),
  ('Area of Triangles', 'Calculate triangle area', 2, 2, 25),
  ('Area of Parallelograms', 'Calculate parallelogram area', 2, 3, 25),
  ('Area of Trapezoids', 'Calculate trapezoid area', 2, 4, 25),
  ('Area of Rhombi and Kites', 'Calculate using diagonals', 2, 5, 30),
  ('Area of Regular Polygons', 'Calculate using apothem', 3, 6, 35),
  ('Area of Composite Figures', 'Break into simpler shapes', 3, 7, 30),
  ('Perimeter and Area on Coordinate Plane', 'Use coordinates for calculations', 3, 8, 35),
  ('Effects of Changing Dimensions', 'Analyze how changes affect area/perimeter', 3, 9, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SURFACE AREA AND VOLUME TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Surface Area and Volume' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Cross-Sections of Solids', 'Identify cross-sections', 2, 1, 25),
  ('Surface Area of Prisms', 'Calculate prism surface area', 2, 2, 30),
  ('Surface Area of Cylinders', 'Calculate cylinder surface area', 2, 3, 30),
  ('Surface Area of Pyramids', 'Calculate pyramid surface area', 3, 4, 35),
  ('Surface Area of Cones', 'Calculate cone surface area', 3, 5, 35),
  ('Surface Area of Spheres', 'Calculate sphere surface area', 2, 6, 25),
  ('Volume of Prisms', 'Calculate prism volume', 2, 7, 25),
  ('Volume of Cylinders', 'Calculate cylinder volume', 2, 8, 25),
  ('Volume of Pyramids', 'Calculate pyramid volume', 2, 9, 30),
  ('Volume of Cones', 'Calculate cone volume', 2, 10, 30),
  ('Volume of Spheres', 'Calculate sphere volume', 2, 11, 25),
  ('Cavalieri Principle', 'Apply Cavalieri''s principle', 3, 12, 35),
  ('Similar Solids', 'Apply ratios to similar solids', 3, 13, 35),
  ('Composite Solids', 'Calculate for combined shapes', 3, 14, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TRANSFORMATIONS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Transformations' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Translations', 'Perform and describe translations', 2, 1, 25),
  ('Reflections', 'Perform and describe reflections', 2, 2, 30),
  ('Rotations', 'Perform and describe rotations', 2, 3, 30),
  ('Compositions of Transformations', 'Perform multiple transformations', 3, 4, 35),
  ('Glide Reflections', 'Perform and identify glide reflections', 3, 5, 30),
  ('Symmetry', 'Identify line and rotational symmetry', 2, 6, 25),
  ('Dilations', 'Perform and describe dilations', 2, 7, 30),
  ('Similarity Transformations', 'Use dilations for similarity', 3, 8, 30),
  ('Transformations and Congruence', 'Prove congruence with transformations', 3, 9, 35),
  ('Transformations in Coordinate Plane', 'Apply coordinate rules', 2, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PROBABILITY AND STATISTICS TOPICS
-- ============================================================================

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Probability and Statistics' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Basic Probability', 'Calculate probability of events', 2, 1, 25),
  ('Compound Events', 'Find probability of compound events', 2, 2, 30),
  ('Geometric Probability', 'Calculate probability using area/length', 3, 3, 35),
  ('Permutations', 'Calculate and apply permutations', 2, 4, 30),
  ('Combinations', 'Calculate and apply combinations', 2, 5, 30),
  ('Independent and Dependent Events', 'Distinguish and calculate', 3, 6, 30),
  ('Conditional Probability', 'Calculate conditional probability', 3, 7, 35),
  ('Two-Way Tables', 'Analyze data in two-way tables', 2, 8, 25),
  ('Probability Distributions', 'Create and interpret distributions', 3, 9, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Grade 10 Math Expansion
-- ============================================================================
-- Added 12 new units: Foundations of Geometry, Parallel and Perpendicular Lines,
--                     Triangle Relationships, Congruent Triangles, Quadrilaterals,
--                     Similarity, Right Triangles and Trigonometry, Circles,
--                     Area and Perimeter, Surface Area and Volume, Transformations,
--                     Probability and Statistics
-- Added 128 new topics total
-- New total: 17 units, ~143 topics (up from 5 units, ~15 topics)
-- ============================================================================
