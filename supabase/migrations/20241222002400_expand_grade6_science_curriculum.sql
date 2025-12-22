-- ============================================================================
-- GRADE 6 SCIENCE CURRICULUM EXPANSION
-- ============================================================================
-- This migration expands Grade 6 Science for middle school level
-- Focusing on cells, ecology, plate tectonics, and space science
-- ============================================================================

-- ============================================================================
-- NEW UNITS FOR GRADE 6 SCIENCE
-- ============================================================================

-- Unit: Cells and Life
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  6,
  'Cells and Life',
  'Explore cells as the basic units of life and cell processes',
  1,
  '🔬',
  '["Identify cell structures and functions", "Compare plant and animal cells", "Understand cell theory", "Explore cell division basics", "Investigate unicellular and multicellular organisms"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Ecosystems and Biomes
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  6,
  'Ecosystems and Biomes',
  'Study the organization of life and interactions in ecosystems',
  2,
  '🌲',
  '["Describe levels of ecological organization", "Characterize major biomes", "Analyze ecosystem interactions", "Model energy and matter flow", "Evaluate human impacts on ecosystems"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Plate Tectonics
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  6,
  'Plate Tectonics',
  'Investigate Earth''s moving plates and their effects',
  3,
  '🌍',
  '["Describe Earth''s layers", "Explain plate movement", "Connect plates to earthquakes and volcanoes", "Analyze evidence for plate tectonics", "Predict geological events"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Weather and Atmosphere
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  6,
  'Weather and Atmosphere',
  'Investigate atmospheric conditions and weather patterns',
  4,
  '🌤️',
  '["Describe atmosphere layers and composition", "Explain weather phenomena", "Analyze weather data and maps", "Understand air pressure and wind", "Connect weather to climate patterns"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Space Systems
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  6,
  'Space Systems',
  'Explore Earth-Moon-Sun system and beyond',
  5,
  '🌙',
  '["Model Earth-Moon-Sun system", "Explain seasons and eclipses", "Describe lunar phases", "Explore our galaxy", "Analyze space exploration data"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Energy in Physical Systems
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  6,
  'Energy in Physical Systems',
  'Investigate energy forms, transformations, and conservation',
  6,
  '⚡',
  '["Calculate kinetic and potential energy", "Trace energy transformations", "Apply conservation of energy", "Investigate work and machines", "Design energy-efficient solutions"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- NEW TOPICS FOR GRADE 6 SCIENCE
-- ============================================================================

-- Cells and Life Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Cells and Life' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Cell Theory', 'All living things are made of cells', 2, 1, 25),
  ('Cell Structure', 'Parts of cells and their functions', 2, 2, 30),
  ('Plant vs Animal Cells', 'Comparing cell types', 2, 3, 25),
  ('Cell Membrane', 'How the cell membrane works', 2, 4, 25),
  ('Nucleus and DNA', 'Control center of the cell', 2, 5, 25),
  ('Organelles', 'Mitochondria, chloroplasts, and more', 2, 6, 30),
  ('Unicellular Organisms', 'Life as a single cell', 2, 7, 25),
  ('Multicellular Organisms', 'Cells working together', 2, 8, 25),
  ('Cell Division', 'How cells reproduce', 3, 9, 30),
  ('Using Microscopes', 'Viewing cells under magnification', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Ecosystems and Biomes Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Ecosystems and Biomes' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Levels of Organization', 'Individual to biosphere', 2, 1, 25),
  ('Biotic and Abiotic Factors', 'Living and nonliving ecosystem parts', 2, 2, 25),
  ('Habitat and Niche', 'Where organisms live and what they do', 2, 3, 25),
  ('Terrestrial Biomes', 'Major land ecosystems', 2, 4, 30),
  ('Aquatic Biomes', 'Freshwater and marine ecosystems', 2, 5, 30),
  ('Ecosystem Interactions', 'Competition, predation, symbiosis', 2, 6, 30),
  ('Population Dynamics', 'How populations change over time', 2, 7, 25),
  ('Carrying Capacity', 'Limits on population growth', 2, 8, 25),
  ('Ecological Succession', 'How ecosystems change over time', 3, 9, 25),
  ('Human Impact on Ecosystems', 'Our effects on natural systems', 2, 10, 25),
  ('Conservation Biology', 'Protecting ecosystems and species', 3, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Plate Tectonics Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Plate Tectonics' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Earth''s Layers', 'Crust, mantle, and core', 2, 1, 25),
  ('Continental Drift', 'Wegener''s hypothesis', 2, 2, 25),
  ('Evidence for Plate Tectonics', 'Fossils, rock patterns, and fit', 2, 3, 30),
  ('Tectonic Plates', 'Major plates and their boundaries', 2, 4, 25),
  ('Plate Boundaries', 'Divergent, convergent, transform', 2, 5, 30),
  ('Convection Currents', 'What moves the plates', 2, 6, 25),
  ('Earthquakes', 'Causes and effects of seismic activity', 2, 7, 30),
  ('Volcanoes', 'Types and formation', 2, 8, 30),
  ('Mountain Building', 'How mountains form', 2, 9, 25),
  ('Seafloor Spreading', 'New ocean floor at ridges', 2, 10, 25),
  ('Ring of Fire', 'Volcanic and seismic activity patterns', 2, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Weather and Atmosphere Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Weather and Atmosphere' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Atmosphere Layers', 'Troposphere to exosphere', 2, 1, 25),
  ('Composition of Air', 'Gases in the atmosphere', 2, 2, 20),
  ('Air Pressure', 'What causes air pressure', 2, 3, 25),
  ('Wind', 'Air movement from pressure differences', 2, 4, 25),
  ('Global Wind Patterns', 'Trade winds, westerlies, and more', 2, 5, 25),
  ('Humidity and Clouds', 'Water vapor and cloud formation', 2, 6, 25),
  ('Types of Clouds', 'Cumulus, stratus, cirrus', 2, 7, 20),
  ('Precipitation', 'How rain, snow, and hail form', 2, 8, 25),
  ('Air Masses and Fronts', 'Large-scale weather systems', 2, 9, 30),
  ('Severe Weather', 'Thunderstorms, tornadoes, hurricanes', 2, 10, 30),
  ('Weather Maps and Forecasting', 'Reading and predicting weather', 2, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Space Systems Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Space Systems' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Earth-Moon-Sun System', 'How the three bodies interact', 2, 1, 25),
  ('Earth''s Rotation', 'Day and night', 2, 2, 25),
  ('Earth''s Revolution', 'Year and seasons', 2, 3, 25),
  ('Seasons Explained', 'Tilt and its effects', 2, 4, 30),
  ('Moon Phases', 'Why the moon appears to change', 2, 5, 25),
  ('Tides', 'Moon''s gravity and ocean tides', 2, 6, 25),
  ('Solar Eclipses', 'When the moon blocks the sun', 2, 7, 25),
  ('Lunar Eclipses', 'When Earth''s shadow falls on the moon', 2, 8, 25),
  ('The Milky Way Galaxy', 'Our cosmic home', 2, 9, 25),
  ('Other Galaxies and the Universe', 'Beyond our galaxy', 3, 10, 25),
  ('Space Exploration Technology', 'Satellites, rovers, and telescopes', 2, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Energy in Physical Systems Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Energy in Physical Systems' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Forms of Energy Review', 'Types of energy in systems', 2, 1, 25),
  ('Kinetic Energy', 'Energy of motion', 2, 2, 25),
  ('Potential Energy', 'Stored energy', 2, 3, 25),
  ('Calculating Energy', 'Using formulas for KE and PE', 3, 4, 30),
  ('Energy Transformations', 'How energy changes form', 2, 5, 25),
  ('Conservation of Energy', 'Energy cannot be created or destroyed', 2, 6, 30),
  ('Work and Force', 'Work as energy transfer', 2, 7, 25),
  ('Simple Machines', 'Levers, pulleys, and more', 2, 8, 30),
  ('Mechanical Advantage', 'How machines multiply force', 2, 9, 25),
  ('Efficiency', 'Useful energy output vs input', 2, 10, 25),
  ('Designing Energy Systems', 'Engineering with energy concepts', 3, 11, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- New Units Added: 6
--   - Cells and Life (10 topics)
--   - Ecosystems and Biomes (11 topics)
--   - Plate Tectonics (11 topics)
--   - Weather and Atmosphere (11 topics)
--   - Space Systems (11 topics)
--   - Energy in Physical Systems (11 topics)
--
-- Total New Topics: 65
-- New Total for Grade 6 Science: ~8+ units, ~80+ topics
-- ============================================================================
