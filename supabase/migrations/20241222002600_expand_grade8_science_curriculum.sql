-- ============================================================================
-- GRADE 8 SCIENCE CURRICULUM EXPANSION
-- ============================================================================
-- This migration expands Grade 8 Science for middle school
-- Focusing on physics, genetics, Earth science, and engineering
-- ============================================================================

-- ============================================================================
-- NEW UNITS FOR GRADE 8 SCIENCE
-- ============================================================================

-- Unit: Motion and Forces
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  8,
  'Motion and Forces',
  'Investigate motion, forces, and Newton''s laws',
  1,
  '🚀',
  '["Calculate speed, velocity, and acceleration", "Apply Newton''s three laws", "Analyze force interactions", "Draw and interpret force diagrams", "Solve motion problems"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Waves and Energy
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  8,
  'Waves and Energy',
  'Explore wave properties, types, and applications',
  2,
  '🌊',
  '["Describe wave properties mathematically", "Compare mechanical and electromagnetic waves", "Investigate the electromagnetic spectrum", "Analyze wave interactions", "Apply wave concepts to technology"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Genetics and Heredity
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  8,
  'Genetics and Heredity',
  'Study DNA, genes, and how traits are inherited',
  3,
  '🧬',
  '["Describe DNA structure and function", "Apply Mendelian genetics", "Use Punnett squares", "Analyze genetic variation", "Explore genetic technology"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Evolution and Natural Selection
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  8,
  'Evolution and Natural Selection',
  'Understand how species change over time',
  4,
  '🦎',
  '["Explain natural selection mechanism", "Analyze evidence for evolution", "Understand speciation", "Connect genetics to evolution", "Evaluate evolutionary claims"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Earth and Space Science
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  8,
  'Earth and Space Science',
  'Study Earth''s place in the solar system and universe',
  5,
  '🌌',
  '["Model Earth-Sun-Moon system", "Analyze solar system formation", "Explore stellar life cycles", "Investigate cosmology basics", "Apply space science concepts"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Weather and Climate
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  8,
  'Weather and Climate Science',
  'Investigate weather systems and climate change',
  6,
  '🌡️',
  '["Analyze weather data and patterns", "Distinguish weather from climate", "Understand climate factors", "Investigate climate change", "Evaluate climate solutions"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Engineering and Technology
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  8,
  'Engineering and Technology',
  'Apply science and math to solve real-world problems',
  7,
  '🔧',
  '["Follow engineering design process", "Apply scientific principles to design", "Optimize solutions systematically", "Evaluate trade-offs", "Communicate technical solutions"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- NEW TOPICS FOR GRADE 8 SCIENCE
-- ============================================================================

-- Motion and Forces Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Motion and Forces' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Position and Motion', 'Describing where objects are and how they move', 2, 1, 25),
  ('Speed and Velocity', 'Rate and direction of motion', 2, 2, 30),
  ('Acceleration', 'Change in velocity over time', 2, 3, 30),
  ('Motion Graphs', 'Distance-time and velocity-time graphs', 2, 4, 30),
  ('Newton''s First Law', 'Inertia and balanced forces', 2, 5, 30),
  ('Newton''s Second Law', 'Force equals mass times acceleration', 2, 6, 35),
  ('Newton''s Third Law', 'Action and reaction pairs', 2, 7, 25),
  ('Friction', 'Forces that oppose motion', 2, 8, 25),
  ('Gravity', 'Universal attraction', 2, 9, 30),
  ('Free Body Diagrams', 'Representing forces on objects', 3, 10, 30),
  ('Applying Newton''s Laws', 'Problem solving with forces', 3, 11, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Waves and Energy Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Waves and Energy' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Wave Properties', 'Amplitude, wavelength, frequency', 2, 1, 30),
  ('Wave Speed', 'Calculating wave velocity', 2, 2, 25),
  ('Transverse Waves', 'Perpendicular particle motion', 2, 3, 25),
  ('Longitudinal Waves', 'Parallel particle motion', 2, 4, 25),
  ('Sound Waves', 'Mechanical waves in matter', 2, 5, 25),
  ('Light as a Wave', 'Electromagnetic wave behavior', 2, 6, 25),
  ('The EM Spectrum', 'Radio to gamma rays', 2, 7, 30),
  ('Wave Reflection', 'Bouncing waves', 2, 8, 25),
  ('Wave Refraction', 'Bending waves', 2, 9, 25),
  ('Wave Interference', 'Waves meeting waves', 2, 10, 25),
  ('Waves in Technology', 'Applications in communication', 2, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Genetics and Heredity Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Genetics and Heredity' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('DNA Structure', 'Double helix and base pairs', 2, 1, 30),
  ('DNA Replication', 'Copying genetic information', 2, 2, 30),
  ('Genes and Chromosomes', 'Organization of genetic info', 2, 3, 25),
  ('Protein Synthesis', 'From DNA to proteins', 3, 4, 35),
  ('Mendelian Genetics', 'Dominant and recessive traits', 2, 5, 30),
  ('Punnett Squares', 'Predicting offspring traits', 2, 6, 30),
  ('Genotype and Phenotype', 'Genes and expressed traits', 2, 7, 25),
  ('Complex Inheritance', 'Beyond simple dominance', 3, 8, 30),
  ('Mutations', 'Changes in genetic code', 2, 9, 25),
  ('Genetic Technology', 'DNA testing and engineering', 2, 10, 30),
  ('Ethical Issues in Genetics', 'Responsibility with genetic power', 2, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Evolution and Natural Selection Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Evolution and Natural Selection' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Darwin''s Theory', 'Natural selection mechanism', 2, 1, 30),
  ('Evidence from Fossils', 'Fossil record and transitions', 2, 2, 25),
  ('Evidence from Anatomy', 'Homologous structures', 2, 3, 25),
  ('Evidence from DNA', 'Molecular evidence', 2, 4, 25),
  ('Adaptation', 'How organisms become suited to environments', 2, 5, 25),
  ('Natural Selection in Action', 'Modern examples', 2, 6, 30),
  ('Artificial Selection', 'Human-directed breeding', 2, 7, 25),
  ('Speciation', 'Formation of new species', 2, 8, 30),
  ('Coevolution', 'Species evolving together', 2, 9, 25),
  ('Common Ancestry', 'Tracing evolutionary relationships', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Earth and Space Science Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Earth and Space Science' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Solar System Formation', 'How our solar system formed', 2, 1, 25),
  ('Sun''s Properties', 'Structure and energy production', 2, 2, 25),
  ('Planets Compared', 'Characteristics of planets', 2, 3, 25),
  ('Moons and Other Objects', 'Small bodies in the solar system', 2, 4, 25),
  ('Stars and Stellar Evolution', 'Life cycle of stars', 2, 5, 30),
  ('Galaxies', 'Types and structure', 2, 6, 25),
  ('The Big Bang', 'Origin of the universe', 2, 7, 30),
  ('Scale of the Universe', 'Distances in space', 2, 8, 25),
  ('Search for Life', 'Astrobiology basics', 2, 9, 25),
  ('Space Technology', 'Telescopes and spacecraft', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Weather and Climate Science Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Weather and Climate Science' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Weather vs Climate', 'Distinguishing concepts', 2, 1, 20),
  ('Climate Factors', 'What determines climate', 2, 2, 25),
  ('Global Climate Zones', 'Patterns around the world', 2, 3, 25),
  ('Ocean and Atmosphere', 'Interactions and currents', 2, 4, 30),
  ('El Nino and La Nina', 'Climate patterns', 2, 5, 25),
  ('Climate History', 'Past climate changes', 2, 6, 25),
  ('Greenhouse Effect', 'How Earth stays warm', 2, 7, 25),
  ('Climate Change Evidence', 'Data and observations', 2, 8, 30),
  ('Climate Change Impacts', 'Effects on Earth systems', 2, 9, 25),
  ('Climate Solutions', 'Mitigation and adaptation', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Engineering and Technology Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Engineering and Technology' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Engineering Process Review', 'Steps in engineering design', 2, 1, 25),
  ('Problem Definition', 'Clearly stating the problem', 2, 2, 25),
  ('Research and Background', 'Learning from existing solutions', 2, 3, 25),
  ('Design Criteria', 'Requirements for success', 2, 4, 25),
  ('Design Constraints', 'Limitations and tradeoffs', 2, 5, 25),
  ('Prototype Development', 'Building testable models', 2, 6, 30),
  ('Testing and Data', 'Systematic evaluation', 2, 7, 30),
  ('Optimization', 'Improving through iteration', 3, 8, 30),
  ('Communication', 'Presenting solutions', 2, 9, 25),
  ('Real-World Engineering', 'Case studies of engineering success', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- New Units Added: 7
--   - Motion and Forces (11 topics)
--   - Waves and Energy (11 topics)
--   - Genetics and Heredity (11 topics)
--   - Evolution and Natural Selection (10 topics)
--   - Earth and Space Science (10 topics)
--   - Weather and Climate Science (10 topics)
--   - Engineering and Technology (10 topics)
--
-- Total New Topics: 73
-- New Total for Grade 8 Science: ~7+ units, ~73+ topics
-- ============================================================================
