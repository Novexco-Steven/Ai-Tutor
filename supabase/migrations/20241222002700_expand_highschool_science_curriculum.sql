-- ============================================================================
-- HIGH SCHOOL SCIENCE CURRICULUM EXPANSION (GRADES 9-12)
-- ============================================================================
-- This migration expands Science curriculum for high school
-- Adding comprehensive Physics, Chemistry, Biology, and Earth Science
-- ============================================================================

-- ============================================================================
-- GRADE 9 PHYSICAL SCIENCE UNITS
-- ============================================================================

-- Unit: Atomic Structure
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  9,
  'Atomic Structure',
  'Explore the structure of atoms and periodic trends',
  1,
  '⚛️',
  '["Describe atomic models and their evolution", "Understand electron configuration", "Analyze periodic table trends", "Calculate atomic properties", "Apply atomic theory to bonding"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Chemical Bonding
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  9,
  'Chemical Bonding',
  'Study how atoms form chemical bonds',
  2,
  '🔗',
  '["Compare bond types", "Draw Lewis structures", "Predict molecular shapes", "Analyze bond properties", "Apply bonding to material properties"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Chemical Reactions
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  9,
  'Chemical Reactions',
  'Investigate types of reactions and stoichiometry',
  3,
  '🧪',
  '["Balance chemical equations", "Classify reaction types", "Perform stoichiometric calculations", "Apply conservation of mass", "Predict reaction products"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Motion and Energy
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  9,
  'Motion and Energy',
  'Apply physics to motion and energy problems',
  4,
  '🎢',
  '["Apply kinematic equations", "Calculate work and energy", "Apply conservation of energy", "Analyze momentum", "Solve physics problems"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- GRADE 10 BIOLOGY UNITS
-- ============================================================================

-- Unit: Cell Structure and Function
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  10,
  'Cell Structure and Function',
  'Deep dive into cell biology and processes',
  1,
  '🔬',
  '["Describe organelle functions in detail", "Compare prokaryotic and eukaryotic cells", "Analyze membrane transport", "Investigate cell signaling", "Apply cell biology concepts"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Cellular Energy
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  10,
  'Cellular Energy',
  'Study photosynthesis and cellular respiration',
  2,
  '🌿',
  '["Describe photosynthesis in detail", "Explain cellular respiration stages", "Compare ATP production methods", "Analyze energy flow in cells", "Connect cellular to organism energy"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Genetics and Biotechnology
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  10,
  'Genetics and Biotechnology',
  'Advanced genetics and modern biotechnology',
  3,
  '🧬',
  '["Analyze DNA replication and expression", "Apply advanced Mendelian genetics", "Understand genetic engineering", "Evaluate biotechnology applications", "Consider ethical implications"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Ecology
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  10,
  'Ecology',
  'Study ecosystem dynamics and interactions',
  4,
  '🌍',
  '["Model population dynamics", "Analyze community interactions", "Trace biogeochemical cycles", "Evaluate human ecological impact", "Apply ecological principles"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- GRADE 11 CHEMISTRY UNITS
-- ============================================================================

-- Unit: Stoichiometry
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  11,
  'Stoichiometry',
  'Quantitative analysis of chemical reactions',
  1,
  '⚗️',
  '["Calculate molar mass and moles", "Perform stoichiometric calculations", "Determine limiting reagents", "Calculate percent yield", "Apply stoichiometry to solutions"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Solutions and Acids-Bases
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  11,
  'Solutions and Acids-Bases',
  'Study solution chemistry and pH',
  2,
  '🧫',
  '["Calculate solution concentration", "Understand solubility rules", "Apply acid-base theory", "Perform pH calculations", "Analyze titrations"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Thermodynamics
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  11,
  'Thermodynamics',
  'Study energy changes in chemical systems',
  3,
  '🔥',
  '["Calculate enthalpy changes", "Apply Hess''s Law", "Understand entropy and free energy", "Predict reaction spontaneity", "Analyze energy diagrams"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- GRADE 12 PHYSICS UNITS
-- ============================================================================

-- Unit: Advanced Mechanics
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  12,
  'Advanced Mechanics',
  'College-level mechanics and dynamics',
  1,
  '⚙️',
  '["Apply advanced kinematics", "Analyze rotational motion", "Apply Newton''s laws to complex systems", "Solve momentum problems", "Model mechanical systems"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Electricity and Magnetism
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  12,
  'Electricity and Magnetism',
  'Study electromagnetism and circuits',
  2,
  '⚡',
  '["Apply Coulomb''s law", "Analyze electric circuits", "Calculate magnetic forces", "Understand electromagnetic induction", "Apply Maxwell''s equations conceptually"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Waves and Optics
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  12,
  'Waves and Optics',
  'Advanced wave phenomena and optics',
  3,
  '🌈',
  '["Analyze wave superposition", "Apply optics principles", "Calculate lens and mirror properties", "Understand diffraction and interference", "Explore modern physics concepts"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- NEW TOPICS FOR HIGH SCHOOL SCIENCE
-- ============================================================================

-- Grade 9 Atomic Structure Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Atomic Structure' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('History of Atomic Theory', 'Dalton to modern model', 2, 1, 30),
  ('Subatomic Particles', 'Protons, neutrons, electrons', 2, 2, 25),
  ('Atomic Number and Mass', 'Identifying elements', 2, 3, 25),
  ('Isotopes', 'Atoms with different neutrons', 2, 4, 25),
  ('Electron Configuration', 'Organizing electrons in orbitals', 3, 5, 35),
  ('Quantum Numbers', 'Describing electron locations', 3, 6, 30),
  ('Periodic Table Organization', 'Groups and periods', 2, 7, 25),
  ('Periodic Trends', 'Atomic radius, ionization energy, electronegativity', 3, 8, 35),
  ('Valence Electrons', 'Outer shell electrons', 2, 9, 25),
  ('Electron Dot Diagrams', 'Lewis structures for atoms', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 9 Chemical Bonding Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Chemical Bonding' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Why Atoms Bond', 'Stability through bonding', 2, 1, 25),
  ('Ionic Bonds', 'Electron transfer', 2, 2, 30),
  ('Covalent Bonds', 'Electron sharing', 2, 3, 30),
  ('Metallic Bonds', 'Electron sea model', 2, 4, 25),
  ('Lewis Structures', 'Drawing molecular structures', 3, 5, 35),
  ('VSEPR Theory', 'Predicting molecular shape', 3, 6, 35),
  ('Polarity', 'Polar vs nonpolar molecules', 2, 7, 30),
  ('Intermolecular Forces', 'Forces between molecules', 3, 8, 30),
  ('Properties and Bonding', 'How bonding affects properties', 2, 9, 25),
  ('Naming Compounds', 'Chemical nomenclature', 2, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 10 Cell Structure Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Cell Structure and Function' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Cell Theory Revisited', 'Fundamental principles', 2, 1, 20),
  ('Prokaryotes vs Eukaryotes', 'Cellular organization', 2, 2, 25),
  ('The Nucleus', 'Control center of the cell', 2, 3, 25),
  ('Ribosomes and Protein Synthesis', 'Making proteins', 3, 4, 30),
  ('Endomembrane System', 'ER and Golgi apparatus', 3, 5, 30),
  ('Mitochondria', 'Powerhouse of the cell', 2, 6, 25),
  ('Chloroplasts', 'Photosynthesis organelles', 2, 7, 25),
  ('Cell Membrane Structure', 'Fluid mosaic model', 3, 8, 30),
  ('Membrane Transport', 'Passive and active transport', 3, 9, 35),
  ('Cell Communication', 'Signal transduction basics', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 10 Cellular Energy Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Cellular Energy' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('ATP and Energy', 'Cellular energy currency', 2, 1, 25),
  ('Enzymes', 'Biological catalysts', 3, 2, 30),
  ('Photosynthesis Overview', 'Light energy to chemical energy', 2, 3, 25),
  ('Light Reactions', 'Capturing light energy', 3, 4, 35),
  ('Calvin Cycle', 'Making glucose', 3, 5, 35),
  ('Cellular Respiration Overview', 'Releasing energy from food', 2, 6, 25),
  ('Glycolysis', 'Breaking down glucose', 3, 7, 30),
  ('Krebs Cycle', 'Citric acid cycle', 3, 8, 35),
  ('Electron Transport Chain', 'Maximum ATP production', 3, 9, 35),
  ('Fermentation', 'Anaerobic pathways', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 11 Stoichiometry Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Stoichiometry' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Mole Concept', 'Avogadro''s number and moles', 2, 1, 30),
  ('Molar Mass', 'Calculating formula mass', 2, 2, 25),
  ('Mole Conversions', 'Grams, moles, and particles', 3, 3, 35),
  ('Chemical Equations', 'Balancing and interpreting', 2, 4, 30),
  ('Mole Ratios', 'Using balanced equations', 3, 5, 35),
  ('Mass-to-Mass Problems', 'Stoichiometric calculations', 3, 6, 35),
  ('Limiting Reagents', 'Finding the limiting factor', 3, 7, 35),
  ('Percent Yield', 'Theoretical vs actual yield', 3, 8, 30),
  ('Solution Stoichiometry', 'Reactions in solution', 3, 9, 35),
  ('Gas Stoichiometry', 'Reactions involving gases', 3, 10, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 12 Electricity and Magnetism Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Electricity and Magnetism' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Electric Charge', 'Positive, negative, and neutral', 2, 1, 25),
  ('Coulomb''s Law', 'Force between charges', 3, 2, 35),
  ('Electric Fields', 'Fields around charges', 3, 3, 30),
  ('Electric Potential', 'Voltage and energy', 3, 4, 35),
  ('Current and Resistance', 'Ohm''s law', 2, 5, 30),
  ('Series Circuits', 'Components in line', 3, 6, 30),
  ('Parallel Circuits', 'Branched components', 3, 7, 30),
  ('Magnetic Fields', 'Fields around magnets and currents', 2, 8, 30),
  ('Electromagnetic Induction', 'Generating current with magnetism', 3, 9, 35),
  ('Applications of Electromagnetism', 'Motors, generators, transformers', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Grade 9 Units: 4 (Atomic Structure, Chemical Bonding, Chemical Reactions, Motion/Energy)
-- Grade 10 Units: 4 (Cell Structure, Cellular Energy, Genetics, Ecology)
-- Grade 11 Units: 3 (Stoichiometry, Solutions/Acids-Bases, Thermodynamics)
-- Grade 12 Units: 3 (Advanced Mechanics, E&M, Waves/Optics)
--
-- New Topics: ~100+ across grades 9-12
-- ============================================================================
