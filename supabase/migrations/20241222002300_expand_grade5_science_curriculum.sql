-- ============================================================================
-- GRADE 5 SCIENCE CURRICULUM EXPANSION
-- ============================================================================
-- This migration expands Grade 5 Science to align with comprehensive standards
-- Major expansion aligned with NGSS standards for upper elementary
-- ============================================================================

-- ============================================================================
-- NEW UNITS FOR GRADE 5 SCIENCE
-- ============================================================================

-- Unit: Properties of Matter (Deep dive)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  5,
  'Properties of Matter',
  'Investigate physical and chemical properties of matter at a deeper level',
  1,
  '⚗️',
  '["Measure properties like mass, volume, and density", "Distinguish physical from chemical properties", "Investigate particle models of matter", "Analyze conservation of matter in changes", "Design investigations of matter properties"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Chemical and Physical Changes
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  5,
  'Chemical and Physical Changes',
  'Explore how matter changes through chemical reactions and physical processes',
  2,
  '🧪',
  '["Identify signs of chemical reactions", "Distinguish chemical from physical changes", "Apply conservation of matter", "Investigate common reactions", "Design fair tests of changes"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Energy and Heat
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  5,
  'Energy and Heat',
  'Investigate thermal energy, heat transfer, and energy transformations',
  3,
  '🔥',
  '["Understand thermal energy and temperature", "Investigate heat transfer methods", "Explore insulators and conductors", "Apply energy transformation concepts", "Design solutions involving heat"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Food Webs and Energy
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  5,
  'Food Webs and Energy',
  'Trace energy and matter flow through ecosystems',
  4,
  '🕸️',
  '["Trace energy from sun through food webs", "Explain energy pyramids", "Model matter cycling in ecosystems", "Analyze effects of changes in food webs", "Understand decomposer roles"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Plant Growth and Reproduction
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  5,
  'Plant Growth and Reproduction',
  'Investigate plant processes and life cycle in detail',
  5,
  '🌱',
  '["Understand photosynthesis in detail", "Investigate factors affecting plant growth", "Explore plant reproduction methods", "Understand plant adaptations", "Design plant growth experiments"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Earth's Water
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  5,
  'Earth''s Water',
  'Investigate the water cycle and water resources in depth',
  6,
  '💧',
  '["Model the complete water cycle", "Understand groundwater and surface water", "Investigate water distribution on Earth", "Analyze human impact on water resources", "Design water conservation solutions"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Stars and Space
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  5,
  'Stars and Space',
  'Explore the solar system, stars, and space science',
  7,
  '🌟',
  '["Understand star properties and life cycles", "Compare planets in our solar system", "Explore gravity in space", "Investigate astronomical distance", "Analyze patterns in celestial objects"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Human Body Systems
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  5,
  'Human Body Systems',
  'Explore the major body systems and how they work together',
  8,
  '🫀',
  '["Identify major body systems", "Explain system functions", "Understand how systems interact", "Investigate health and body systems", "Apply body system knowledge"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- NEW TOPICS FOR GRADE 5 SCIENCE
-- ============================================================================

-- Properties of Matter Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Properties of Matter' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Measuring Mass', 'Use balances to accurately measure mass', 2, 1, 25),
  ('Measuring Volume', 'Calculate volume of regular and irregular objects', 2, 2, 25),
  ('Calculating Density', 'Find density using mass and volume', 2, 3, 30),
  ('Density and Floating', 'Predict floating and sinking using density', 2, 4, 25),
  ('Physical Properties', 'Properties observable without changing substance', 2, 5, 25),
  ('Chemical Properties', 'Properties that describe how substance reacts', 2, 6, 25),
  ('Particle Model of Matter', 'Understand matter is made of tiny particles', 2, 7, 30),
  ('States of Matter Revisited', 'Explain states using particle model', 2, 8, 25),
  ('Identifying Substances', 'Use properties to identify unknowns', 2, 9, 25),
  ('Designing Property Investigations', 'Plan experiments to test properties', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Chemical and Physical Changes Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Chemical and Physical Changes' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Reviewing Physical Changes', 'Changes in form but not composition', 1, 1, 20),
  ('Reviewing Chemical Changes', 'Changes that create new substances', 1, 2, 20),
  ('Evidence of Chemical Reactions', 'Signs that a reaction occurred', 2, 3, 25),
  ('Conservation of Matter', 'Matter is neither created nor destroyed', 2, 4, 30),
  ('Measuring Mass in Reactions', 'Verify conservation by weighing', 2, 5, 30),
  ('Combustion Reactions', 'Burning and its products', 2, 6, 25),
  ('Rusting and Oxidation', 'Slow reactions with oxygen', 2, 7, 25),
  ('Acid-Base Reactions', 'Introduction to acids and bases', 2, 8, 30),
  ('Mixing and Separating', 'Create and separate mixtures', 2, 9, 25),
  ('Designing Reaction Experiments', 'Test variables in chemical changes', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Energy and Heat Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Energy and Heat' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Thermal Energy', 'Energy from particle motion', 2, 1, 25),
  ('Temperature vs Heat', 'Distinguish temperature from heat transfer', 2, 2, 25),
  ('Heat Conduction', 'Heat transfer through direct contact', 2, 3, 25),
  ('Heat Convection', 'Heat transfer through fluid movement', 2, 4, 25),
  ('Heat Radiation', 'Heat transfer through waves', 2, 5, 25),
  ('Conductors and Insulators', 'Materials that transfer or block heat', 2, 6, 25),
  ('Insulation Design', 'Engineering with thermal properties', 2, 7, 30),
  ('Energy Transformations', 'Energy changing from one form to another', 2, 8, 25),
  ('Energy in Food', 'How organisms use food energy', 2, 9, 25),
  ('Renewable Energy Systems', 'Designing with renewable energy', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Food Webs and Energy Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Food Webs and Energy' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Energy from the Sun', 'Sun as ultimate energy source for life', 1, 1, 20),
  ('Producers and Photosynthesis', 'How plants capture sun''s energy', 2, 2, 25),
  ('Energy Transfer in Food Chains', 'Energy moving from organism to organism', 2, 3, 25),
  ('Food Webs', 'Interconnected food chains', 2, 4, 25),
  ('Energy Pyramids', 'Energy decreases at each level', 2, 5, 30),
  ('The 10% Rule', 'Why energy is lost at each transfer', 2, 6, 25),
  ('Decomposers and Nutrient Cycling', 'Breaking down dead matter', 2, 7, 25),
  ('Carbon and Nitrogen Cycles', 'How matter cycles through ecosystems', 3, 8, 30),
  ('Changes in Food Webs', 'Effects when organisms are removed', 2, 9, 25),
  ('Human Impact on Food Webs', 'How we affect ecosystem energy flow', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Plant Growth and Reproduction Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Plant Growth and Reproduction' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What Plants Need', 'Requirements for plant growth', 1, 1, 20),
  ('Photosynthesis in Depth', 'How plants make food from light', 2, 2, 30),
  ('Inputs and Outputs', 'Materials used and produced in photosynthesis', 2, 3, 25),
  ('Factors Affecting Growth', 'Light, water, nutrients, temperature', 2, 4, 25),
  ('Plant Growth Experiments', 'Testing variables that affect plants', 2, 5, 30),
  ('Flower Structure', 'Parts of flowers and their functions', 2, 6, 25),
  ('Pollination', 'How pollen moves between flowers', 2, 7, 25),
  ('Seed Dispersal', 'How seeds spread to new locations', 2, 8, 25),
  ('Asexual Reproduction', 'Plants reproducing without seeds', 2, 9, 25),
  ('Plant Adaptations for Reproduction', 'Special features for making offspring', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Earth's Water Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Earth''s Water' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Distribution of Water', 'Where water is found on Earth', 2, 1, 25),
  ('The Water Cycle in Detail', 'Complete water cycle processes', 2, 2, 30),
  ('Evaporation and Condensation', 'State changes in the water cycle', 2, 3, 25),
  ('Precipitation Types', 'Rain, snow, sleet, and hail', 2, 4, 20),
  ('Groundwater', 'Water stored underground', 2, 5, 25),
  ('Surface Water', 'Rivers, lakes, and streams', 2, 6, 25),
  ('Oceans and Ice', 'Saltwater and frozen water storage', 2, 7, 25),
  ('Human Water Use', 'How we use freshwater', 2, 8, 25),
  ('Water Pollution', 'Causes and effects of water pollution', 2, 9, 25),
  ('Water Conservation', 'Protecting and saving water resources', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Stars and Space Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Stars and Space' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Sun as a Star', 'Understanding our nearest star', 2, 1, 25),
  ('Star Brightness and Distance', 'Why stars appear different brightnesses', 2, 2, 25),
  ('Star Color and Temperature', 'What star colors tell us', 2, 3, 25),
  ('Constellations', 'Patterns of stars in the sky', 2, 4, 25),
  ('The Solar System Overview', 'Sun, planets, and other objects', 2, 5, 25),
  ('Inner Planets', 'Mercury, Venus, Earth, and Mars', 2, 6, 25),
  ('Outer Planets', 'Jupiter, Saturn, Uranus, and Neptune', 2, 7, 25),
  ('Gravity in the Solar System', 'How gravity holds the solar system together', 2, 8, 25),
  ('Moons, Asteroids, and Comets', 'Other solar system objects', 2, 9, 25),
  ('Space Exploration', 'How we study space', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Human Body Systems Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Human Body Systems' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Body System Overview', 'Introduction to major body systems', 1, 1, 25),
  ('Circulatory System', 'Heart, blood, and blood vessels', 2, 2, 30),
  ('Respiratory System', 'Lungs and gas exchange', 2, 3, 30),
  ('Digestive System', 'Breaking down and absorbing food', 2, 4, 30),
  ('Muscular and Skeletal Systems', 'Movement and support', 2, 5, 25),
  ('Nervous System', 'Brain, nerves, and signals', 2, 6, 30),
  ('Excretory System', 'Removing waste from the body', 2, 7, 25),
  ('Immune System', 'Fighting disease and infection', 2, 8, 25),
  ('Systems Working Together', 'How body systems interact', 3, 9, 30),
  ('Keeping Body Systems Healthy', 'Nutrition, exercise, and wellness', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- New Units Added: 8 (plus existing units)
--   - Properties of Matter (10 topics)
--   - Chemical and Physical Changes (10 topics)
--   - Energy and Heat (10 topics)
--   - Food Webs and Energy (10 topics)
--   - Plant Growth and Reproduction (10 topics)
--   - Earth's Water (10 topics)
--   - Stars and Space (10 topics)
--   - Human Body Systems (10 topics)
--
-- Total New Topics: 80
-- New Total for Grade 5 Science: ~12+ units, ~100+ topics
-- ============================================================================
