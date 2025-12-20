-- ============================================================================
-- FIX: Grade 11-12 Missing Topics
-- Run this in Supabase SQL Editor to add the 130 missing high school topics
-- ============================================================================

-- Grade 11 Math Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Polynomial and Rational Functions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Polynomial Operations', 'Adding, subtracting, multiplying polynomials', 3, 1, 35),
  ('Factoring Polynomials', 'Factoring techniques for higher degree', 3, 2, 40),
  ('Polynomial Functions', 'Graphs, zeros, and end behavior', 3, 3, 45),
  ('Rational Expressions', 'Simplifying and operations', 3, 4, 40),
  ('Rational Equations', 'Solving equations with rational expressions', 3, 5, 40)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Quadratic Functions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Quadratic Functions and Graphs', 'Vertex form, transformations, analysis', 3, 1, 40),
  ('Solving by Factoring', 'Factoring quadratics to find solutions', 2, 2, 35),
  ('Completing the Square', 'Method for solving and converting forms', 3, 3, 40),
  ('Quadratic Formula', 'Derivation and application', 3, 4, 35),
  ('Complex Numbers', 'Introduction to i and complex solutions', 3, 5, 45)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Exponential and Logarithmic Functions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Exponential Functions', 'Graphs, transformations, and e', 3, 1, 40),
  ('Introduction to Logarithms', 'Definition and basic properties', 3, 2, 40),
  ('Properties of Logarithms', 'Product, quotient, and power rules', 3, 3, 40),
  ('Solving Exponential Equations', 'Using logarithms to solve', 3, 4, 40),
  ('Exponential and Log Models', 'Growth, decay, and real applications', 3, 5, 40)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Sequences, Series, and Probability' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Arithmetic Sequences and Series', 'Formulas and applications', 3, 1, 35),
  ('Geometric Sequences and Series', 'Formulas including infinite series', 3, 2, 40),
  ('Permutations', 'Counting ordered arrangements', 3, 3, 35),
  ('Combinations', 'Counting unordered selections', 3, 4, 35),
  ('Probability', 'Fundamental probability concepts', 3, 5, 40)
) AS v(name, description, difficulty, order_idx, time);


-- GRADE 11 SCIENCE UNITS (Chemistry)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 11, 'Atomic Structure and Periodicity',
   'Understanding atoms and the periodic table', 1, '⚛️',
   '["Describe atomic structure and electron configuration", "Apply periodic trends", "Understand quantum mechanics basics", "Predict chemical behavior from position"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 11, 'Chemical Bonding',
   'How atoms bond to form compounds', 2, '🔗',
   '["Draw Lewis structures", "Predict molecular shapes using VSEPR", "Distinguish bond types", "Understand intermolecular forces"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 11, 'Chemical Reactions and Stoichiometry',
   'Quantitative relationships in reactions', 3, '⚖️',
   '["Balance chemical equations", "Perform stoichiometric calculations", "Identify limiting reagents", "Calculate percent yield"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 11, 'Solutions and Thermochemistry',
   'Mixtures and energy changes', 4, '🧪',
   '["Calculate concentration", "Apply colligative properties", "Calculate enthalpy changes", "Interpret heating curves"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 11 Science Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Atomic Structure and Periodicity' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Atomic Structure', 'Subatomic particles, isotopes, ions', 2, 1, 35),
  ('Electron Configuration', 'Aufbau principle, orbitals, notation', 3, 2, 45),
  ('Periodic Table Organization', 'Groups, periods, and blocks', 2, 3, 35),
  ('Periodic Trends', 'Atomic radius, ionization energy, electronegativity', 3, 4, 40)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Chemical Bonding' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Ionic Bonding', 'Formation of ionic compounds', 2, 1, 35),
  ('Covalent Bonding', 'Sharing electrons in molecules', 3, 2, 40),
  ('Lewis Structures', 'Drawing electron dot diagrams', 3, 3, 45),
  ('VSEPR Theory', 'Predicting molecular geometry', 3, 4, 45),
  ('Intermolecular Forces', 'Van der Waals, dipole-dipole, hydrogen bonding', 3, 5, 40)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Chemical Reactions and Stoichiometry' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Writing and Balancing Equations', 'Representing reactions symbolically', 2, 1, 40),
  ('Types of Reactions', 'Synthesis, decomposition, combustion', 2, 2, 40),
  ('The Mole Concept', 'Avogadro''s number and molar mass', 3, 3, 45),
  ('Stoichiometry', 'Mole-to-mole and mass-to-mass calculations', 3, 4, 50),
  ('Limiting Reactant', 'Identifying and calculating with limiting reagent', 3, 5, 45)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Solutions and Thermochemistry' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Solutions and Solubility', 'Factors affecting solubility', 2, 1, 35),
  ('Concentration', 'Molarity, molality, and percent composition', 3, 2, 45),
  ('Colligative Properties', 'Boiling point, freezing point, osmotic pressure', 3, 3, 40),
  ('Thermochemistry', 'Heat, enthalpy, and calorimetry', 3, 4, 45)
) AS v(name, description, difficulty, order_idx, time);


-- GRADE 11 READING UNITS (American Literature)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 11, 'Colonial and Revolutionary Literature',
   'America''s literary beginnings', 1, '🦅',
   '["Analyze Puritan literature", "Examine founding documents", "Understand early American identity", "Connect historical context to literature"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 11, 'American Romanticism and Transcendentalism',
   '19th century literary movements', 2, '🍂',
   '["Analyze Romantic and Transcendentalist themes", "Examine Gothic literature", "Understand American identity development", "Analyze poetry of the period"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 11, 'Realism to Modernism',
   'American literature from Civil War to mid-20th century', 3, '📚',
   '["Analyze Realist literature", "Understand Naturalism", "Examine Modernist techniques", "Analyze the Harlem Renaissance"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 11, 'Contemporary American Literature',
   'Mid-20th century to present', 4, '📖',
   '["Analyze postmodern techniques", "Examine diverse American voices", "Connect literature to social movements", "Develop critical perspectives"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 11 Reading Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Colonial and Revolutionary Literature' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Puritan Literature', 'Sermons, diaries, and religious writings', 3, 1, 40),
  ('Revolutionary Writers', 'Franklin, Paine, Jefferson', 3, 2, 45),
  ('Persuasive Techniques', 'Rhetoric in founding documents', 3, 3, 40)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'American Romanticism and Transcendentalism' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Transcendentalism', 'Emerson, Thoreau, and self-reliance', 3, 1, 45),
  ('American Gothic', 'Poe and dark romanticism', 3, 2, 40),
  ('Walt Whitman', 'Free verse and the American voice', 3, 3, 40),
  ('Emily Dickinson', 'Innovation in form and theme', 3, 4, 40)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Realism to Modernism' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Realism', 'Twain, James, and regional writers', 3, 1, 45),
  ('The Harlem Renaissance', 'Hughes, Hurston, and African American voices', 3, 2, 45),
  ('Modernism', 'Fitzgerald, Hemingway, and the Lost Generation', 3, 3, 50)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Contemporary American Literature' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Postwar Literature', 'Salinger, Kerouac, and the Beats', 3, 1, 40),
  ('Civil Rights Literature', 'Baldwin, Angelou, and protest literature', 3, 2, 40),
  ('Multicultural Voices', 'Asian American, Latinx, Native American writers', 2, 3, 40)
) AS v(name, description, difficulty, order_idx, time);


-- GRADE 11 HISTORY UNITS (U.S. History)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 11, 'Early America to Civil War',
   'Founding through national crisis', 1, '🗽',
   '["Analyze causes and effects of revolution", "Evaluate Constitutional debates", "Trace westward expansion", "Analyze causes of Civil War"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 11, 'Reconstruction to WWI',
   'Rebuilding and industrializing America', 2, '🏭',
   '["Evaluate Reconstruction policies", "Analyze industrialization effects", "Understand Progressive reforms", "Analyze causes of WWI entry"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 11, '1920s to WWII',
   'Boom, bust, and global conflict', 3, '🌎',
   '["Analyze the Roaring Twenties", "Evaluate causes and effects of Depression", "Analyze New Deal policies", "Understand WWII causes and effects"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 11, 'Cold War to Present',
   'America as a superpower', 4, '🇺🇸',
   '["Analyze Cold War policies", "Evaluate civil rights movements", "Understand Vietnam War impact", "Analyze contemporary issues"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 11 History Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Early America to Civil War' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Constitutional Era', 'Creating and ratifying the Constitution', 3, 1, 45),
  ('Manifest Destiny', 'Expansion and the Mexican-American War', 2, 2, 40),
  ('Road to Civil War', 'Slavery, sectionalism, and secession', 3, 3, 45),
  ('Civil War', 'Battles, leaders, and turning points', 3, 4, 50)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Reconstruction to WWI' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Reconstruction', 'Rebuilding the South and its failures', 3, 1, 45),
  ('Gilded Age', 'Industry, immigration, and inequality', 2, 2, 40),
  ('Progressive Era', 'Reform movements and their leaders', 2, 3, 40),
  ('World War I', 'America in the Great War', 3, 4, 45)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = '1920s to WWII' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Roaring Twenties', 'Culture, conflict, and change', 2, 1, 40),
  ('Great Depression', 'Causes, effects, and experience', 3, 2, 45),
  ('The New Deal', 'FDR''s response to economic crisis', 3, 3, 45),
  ('World War II', 'Battles, strategy, and Holocaust', 3, 4, 50)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Cold War to Present' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Cold War Beginnings', 'Origins, containment, McCarthyism', 3, 1, 45),
  ('Civil Rights Movement', 'Struggle for equality', 3, 2, 50),
  ('Vietnam War', 'Involvement, protest, and legacy', 3, 3, 45),
  ('Contemporary America', '9/11 and modern challenges', 2, 4, 40)
) AS v(name, description, difficulty, order_idx, time);


-- ============================================================================
-- GRADE 12 CURRICULUM (Abbreviated - Key Units Only)
-- ============================================================================

-- GRADE 12 MATH UNITS (Pre-Calculus)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Functions and Their Graphs',
   'Advanced function analysis', 1, '📊',
   '["Analyze function properties", "Transform functions", "Compose and decompose functions", "Apply function concepts"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Trigonometric Functions',
   'In-depth study of trigonometry', 2, '📐',
   '["Work with radian measure", "Graph all trigonometric functions", "Use inverse trig functions", "Verify trigonometric identities"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Analytic Geometry',
   'Conic sections and parametric equations', 3, '🔵',
   '["Analyze conic sections", "Write equations of conics", "Work with parametric equations", "Apply polar coordinates"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Limits and Introduction to Calculus',
   'Preparation for calculus', 4, '∞',
   '["Evaluate limits graphically and algebraically", "Understand continuity", "Find derivatives using limits", "Apply calculus concepts"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 12 Math Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Functions and Their Graphs' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Function Fundamentals', 'Domain, range, and evaluation', 3, 1, 35),
  ('Analyzing Functions', 'Increasing, decreasing, extrema', 3, 2, 40),
  ('Function Transformations', 'Shifts, reflections, stretches', 3, 3, 40),
  ('Inverse Functions', 'Finding and graphing inverses', 3, 4, 40)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Trigonometric Functions' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Angles and Radian Measure', 'Converting and applications', 3, 1, 35),
  ('Unit Circle', 'Trig values from the unit circle', 3, 2, 45),
  ('Graphing Trig Functions', 'Sine, cosine, and transformations', 3, 3, 45),
  ('Trig Identities', 'Fundamental and Pythagorean identities', 3, 4, 45),
  ('Solving Trig Equations', 'Finding all solutions', 3, 5, 45)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Analytic Geometry' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Parabolas', 'Focus, directrix, and equations', 3, 1, 40),
  ('Ellipses', 'Properties and equations', 3, 2, 45),
  ('Hyperbolas', 'Properties and equations', 3, 3, 45),
  ('Polar Coordinates', 'Converting and graphing', 3, 4, 45)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Limits and Introduction to Calculus' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Introduction to Limits', 'Concept and graphical analysis', 3, 1, 40),
  ('Evaluating Limits', 'Algebraic techniques', 3, 2, 45),
  ('Continuity', 'Definition and types of discontinuity', 3, 3, 40),
  ('The Derivative', 'Definition and basic rules', 3, 4, 50)
) AS v(name, description, difficulty, order_idx, time);


-- GRADE 12 SCIENCE UNITS (Physics)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 12, 'Mechanics',
   'Motion, forces, and energy', 1, '🎯',
   '["Apply kinematic equations", "Analyze forces and Newton''s laws", "Calculate work and energy", "Apply conservation laws"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 12, 'Waves and Optics',
   'Wave behavior and light', 2, '🌊',
   '["Analyze wave properties", "Apply wave equations", "Understand interference and diffraction", "Apply optics principles"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 12, 'Electricity and Magnetism',
   'Electric circuits and magnetic fields', 3, '⚡',
   '["Apply Coulomb''s law", "Analyze electric circuits", "Understand magnetic fields", "Explain electromagnetic induction"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 12, 'Modern Physics',
   'Relativity and quantum mechanics', 4, '⚛️',
   '["Understand special relativity", "Apply quantum concepts", "Explain atomic structure", "Understand nuclear physics"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 12 Science Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Mechanics' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Kinematics in 1D', 'Motion in one dimension', 3, 1, 45),
  ('Kinematics in 2D', 'Projectile motion and vectors', 3, 2, 50),
  ('Newton''s Laws', 'Force analysis and applications', 3, 3, 50),
  ('Work and Energy', 'Work, power, and efficiency', 3, 4, 45),
  ('Momentum', 'Impulse and conservation of momentum', 3, 5, 45)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Waves and Optics' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Wave Properties', 'Frequency, wavelength, and speed', 2, 1, 40),
  ('Sound Waves', 'Sound, Doppler effect, resonance', 3, 2, 45),
  ('Reflection and Refraction', 'Laws and applications', 3, 3, 45),
  ('Mirrors and Lenses', 'Image formation and equations', 3, 4, 50)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Electricity and Magnetism' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Electric Charge and Force', 'Coulomb''s law and electric fields', 3, 1, 45),
  ('Electric Potential', 'Voltage and potential energy', 3, 2, 45),
  ('DC Circuits', 'Ohm''s law, series, and parallel', 3, 3, 50),
  ('Magnetic Fields', 'Magnetism and moving charges', 3, 4, 45),
  ('Electromagnetic Induction', 'Faraday''s law and applications', 3, 5, 50)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Modern Physics' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Special Relativity', 'Time dilation and length contraction', 3, 1, 50),
  ('Quantum Theory', 'Photons, wave-particle duality', 3, 2, 50),
  ('Atomic Models', 'Bohr model to quantum mechanics', 3, 3, 45),
  ('Nuclear Physics', 'Radioactivity and nuclear reactions', 3, 4, 45)
) AS v(name, description, difficulty, order_idx, time);


-- GRADE 12 READING UNITS (British Literature)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 12, 'Anglo-Saxon and Medieval Literature',
   'Britain''s literary origins', 1, '⚔️',
   '["Analyze epic conventions", "Understand medieval values", "Examine allegory and symbolism", "Connect literature to historical context"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 12, 'Renaissance and Restoration',
   '16th-17th century British literature', 2, '🎭',
   '["Analyze Shakespearean drama in depth", "Examine metaphysical poetry", "Understand Paradise Lost", "Connect literature to religious/political change"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 12, 'Romantic and Victorian Literature',
   '19th century British literature', 3, '🌹',
   '["Analyze Romantic poetry", "Examine Victorian novels", "Understand literary movements", "Connect literature to social change"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 12, 'Modern British Literature',
   '20th century to present', 4, '📖',
   '["Analyze modernist techniques", "Examine postcolonial literature", "Understand contemporary British voices", "Apply advanced critical analysis"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 12 Reading Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Anglo-Saxon and Medieval Literature' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Beowulf', 'Anglo-Saxon epic tradition', 3, 1, 50),
  ('Chaucer', 'The Canterbury Tales and medieval society', 3, 2, 50)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Renaissance and Restoration' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Shakespeare: Tragedies', 'Hamlet, Macbeth, or King Lear', 3, 1, 60),
  ('Metaphysical Poetry', 'Donne, Herbert, and complex imagery', 3, 2, 45),
  ('Milton', 'Paradise Lost and religious epic', 3, 3, 50)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Romantic and Victorian Literature' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Romantic Poetry', 'Blake, Wordsworth, Keats, Shelley', 3, 1, 50),
  ('Gothic Literature', 'Frankenstein and the Gothic tradition', 3, 2, 45),
  ('Victorian Novel', 'Dickens, Bronte, Hardy', 3, 3, 50)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Modern British Literature' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Modernism', 'Woolf, Joyce, Eliot', 3, 1, 50),
  ('War Literature', 'WWI poets and WWII fiction', 3, 2, 45),
  ('Postcolonial Literature', 'Voices from former colonies', 3, 3, 45)
) AS v(name, description, difficulty, order_idx, time);


-- GRADE 12 HISTORY UNITS (Government and Economics)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 12, 'Foundations of Government',
   'Political philosophy and systems', 1, '🏛️',
   '["Analyze political philosophies", "Compare government systems", "Evaluate democratic principles", "Understand constitutional framework"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 12, 'Political Processes',
   'How government and politics work', 2, '🗳️',
   '["Analyze electoral systems", "Understand political parties", "Evaluate interest groups and media", "Assess policy making process"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 12, 'Economic Principles',
   'Fundamental concepts of economics', 3, '💰',
   '["Apply supply and demand", "Understand market structures", "Analyze economic indicators", "Evaluate economic systems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 12, 'Money, Banking, and Finance',
   'Financial systems and policy', 4, '🏦',
   '["Understand monetary policy", "Analyze fiscal policy", "Evaluate personal finance", "Understand global economics"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 12 History Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Foundations of Government' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Political Philosophy', 'Locke, Montesquieu, Rousseau', 3, 1, 45),
  ('Types of Government', 'Democracy, authoritarianism, and more', 2, 2, 40),
  ('The U.S. Constitution', 'Structure and principles', 3, 3, 50),
  ('Constitutional Rights', 'Bill of Rights and civil liberties', 3, 4, 45)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Political Processes' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Elections and Voting', 'Electoral systems and participation', 2, 1, 40),
  ('Political Parties', 'Party systems and functions', 2, 2, 35),
  ('Interest Groups', 'Lobbying and influence', 3, 3, 40),
  ('Public Policy', 'How policies are made and implemented', 3, 4, 40)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Economic Principles' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Scarcity and Choice', 'Fundamental economic problem', 2, 1, 35),
  ('Supply and Demand', 'Market equilibrium', 3, 2, 45),
  ('Market Structures', 'Competition and monopoly', 3, 3, 40),
  ('Economic Indicators', 'GDP, inflation, unemployment', 3, 4, 40)
) AS v(name, description, difficulty, order_idx, time);


INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Money, Banking, and Finance' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Money and Banking', 'Functions of money and banking system', 2, 1, 40),
  ('The Federal Reserve', 'Monetary policy and tools', 3, 2, 45),
  ('Fiscal Policy', 'Government taxing and spending', 3, 3, 40),
  ('Personal Finance', 'Budgeting, saving, investing', 2, 4, 40),
  ('International Trade', 'Global economic connections', 3, 5, 40)
) AS v(name, description, difficulty, order_idx, time);

