-- ============================================================================
-- GRADE 4 SCIENCE CURRICULUM EXPANSION
-- ============================================================================
-- This migration expands Grade 4 Science to align with comprehensive standards
-- Adding Energy, Waves, Earth's Features, and Life Science content
-- ============================================================================

-- ============================================================================
-- NEW UNITS FOR GRADE 4 SCIENCE
-- ============================================================================

-- Unit: Energy Transfer
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  4,
  'Energy Transfer',
  'Explore how energy moves and changes from one form to another',
  1,
  '⚡',
  '["Identify different forms of energy", "Trace energy transfer in systems", "Understand energy conversion", "Explore renewable and nonrenewable energy", "Apply energy concepts to everyday life"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Waves and Information
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  4,
  'Waves and Information',
  'Investigate light and sound waves and how they transfer information',
  2,
  '🌊',
  '["Describe wave properties", "Explore how light travels", "Investigate sound wave behavior", "Understand how waves transfer information", "Apply wave concepts to technology"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Plant and Animal Structure
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  4,
  'Plant and Animal Structure',
  'Explore how internal and external structures support survival',
  3,
  '🌿',
  '["Identify structures in plants and animals", "Connect structures to their functions", "Compare structures across organisms", "Explain how structures support survival", "Investigate how structures work as systems"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Senses and Information Processing
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  4,
  'Senses and Information Processing',
  'Understand how organisms sense and respond to their environment',
  4,
  '👁️',
  '["Describe sensory organs and their functions", "Explain how brain processes sensory information", "Explore animal senses and behaviors", "Connect senses to survival", "Investigate memory and learning"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Earth's Changing Surface
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  4,
  'Earth''s Changing Surface',
  'Investigate processes that shape Earth''s surface over time',
  5,
  '🏔️',
  '["Identify weathering and erosion processes", "Explain deposition and landform creation", "Explore rock types and the rock cycle", "Understand rapid vs slow Earth changes", "Analyze evidence of past changes"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Earth's Resources
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  4,
  'Earth''s Resources',
  'Explore natural resources and how humans use and impact them',
  6,
  '💎',
  '["Classify renewable and nonrenewable resources", "Describe how resources are obtained", "Evaluate human impact on resources", "Explore conservation strategies", "Generate solutions for resource problems"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Natural Hazards
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  4,
  'Natural Hazards',
  'Understand natural hazards and design solutions to reduce their impact',
  7,
  '🌋',
  '["Identify types of natural hazards", "Explain causes of earthquakes and volcanoes", "Analyze patterns in hazard occurrence", "Evaluate hazard prediction and warning", "Design solutions to reduce hazard impacts"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Engineering Design Process
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  4,
  'Engineering Design Process',
  'Apply systematic engineering design to solve complex problems',
  8,
  '🔧',
  '["Apply the full engineering design cycle", "Define problems with criteria and constraints", "Develop and compare multiple solutions", "Optimize designs based on testing", "Communicate design solutions effectively"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- NEW TOPICS FOR GRADE 4 SCIENCE
-- ============================================================================

-- Energy Transfer Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Energy Transfer' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Forms of Energy', 'Identify kinetic, potential, thermal, electrical, and more', 2, 1, 25),
  ('Energy in Motion', 'Understand kinetic energy and moving objects', 2, 2, 25),
  ('Stored Energy', 'Explore potential energy in objects and positions', 2, 3, 25),
  ('Heat Energy', 'Investigate thermal energy and temperature', 2, 4, 25),
  ('Energy Transfer', 'Trace how energy moves from one object to another', 2, 5, 25),
  ('Energy Conversion', 'Explore how energy changes forms', 2, 6, 30),
  ('Energy in Collisions', 'Investigate energy transfer when objects collide', 2, 7, 25),
  ('Renewable Energy', 'Explore solar, wind, water, and other renewable sources', 2, 8, 25),
  ('Nonrenewable Energy', 'Understand fossil fuels and their limitations', 2, 9, 25),
  ('Energy Conservation', 'Learn ways to use less energy', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Waves and Information Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Waves and Information' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What Are Waves?', 'Understand waves as patterns of motion that transfer energy', 2, 1, 25),
  ('Wave Properties', 'Explore amplitude, wavelength, and frequency', 2, 2, 25),
  ('Light Waves', 'Investigate how light travels and behaves', 2, 3, 25),
  ('Light Reflection', 'Explore how light bounces off surfaces', 2, 4, 25),
  ('Light Refraction', 'See how light bends when passing through materials', 2, 5, 25),
  ('Sound Waves', 'Understand how sound travels through matter', 2, 6, 25),
  ('Sound and Vibration', 'Connect sound to vibrating objects', 2, 7, 25),
  ('Pitch and Volume', 'Explore high/low sounds and loud/soft sounds', 2, 8, 25),
  ('Waves Transfer Information', 'How we use waves for communication', 2, 9, 25),
  ('Digital Information', 'Introduction to how technology uses waves', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Plant and Animal Structure Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Plant and Animal Structure' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Plant Parts and Functions', 'Identify roots, stems, leaves, and their jobs', 1, 1, 25),
  ('Plant Transport Systems', 'How water and nutrients move through plants', 2, 2, 25),
  ('Photosynthesis Basics', 'Understand how plants make food from sunlight', 2, 3, 30),
  ('Plant Reproduction', 'How plants make seeds and new plants', 2, 4, 25),
  ('Animal Body Systems', 'Introduction to organs and body systems', 2, 5, 25),
  ('Skeletal System', 'Bones and support structures', 2, 6, 25),
  ('Muscular System', 'How muscles help animals move', 2, 7, 25),
  ('Digestive System', 'How animals break down food', 2, 8, 25),
  ('Circulatory System', 'Heart and blood vessel basics', 2, 9, 25),
  ('Respiratory System', 'How animals breathe and use oxygen', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Senses and Information Processing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Senses and Information Processing' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Five Senses', 'Review of sight, hearing, touch, taste, and smell', 1, 1, 20),
  ('How Eyes Work', 'Understand the structure and function of eyes', 2, 2, 25),
  ('How Ears Work', 'Explore ear structure and hearing process', 2, 3, 25),
  ('How the Brain Processes Information', 'Introduction to nervous system', 2, 4, 30),
  ('Sensory Receptors', 'How body detects different stimuli', 2, 5, 25),
  ('Animal Senses', 'Explore special senses in different animals', 2, 6, 25),
  ('Senses and Survival', 'How senses help animals survive', 2, 7, 25),
  ('Memory and Learning', 'How brains store and use information', 2, 8, 25),
  ('Reflexes and Responses', 'Quick reactions without thinking', 2, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Earth's Changing Surface Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Earth''s Changing Surface' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Weathering', 'How rocks break down into smaller pieces', 2, 1, 25),
  ('Physical Weathering', 'Breaking rocks without changing chemistry', 2, 2, 25),
  ('Chemical Weathering', 'Rocks changed by chemical reactions', 2, 3, 25),
  ('Erosion by Water', 'How moving water shapes the land', 2, 4, 25),
  ('Erosion by Wind', 'How wind transports particles', 2, 5, 25),
  ('Erosion by Ice', 'Glaciers and their effects', 2, 6, 25),
  ('Deposition', 'Where eroded materials settle', 2, 7, 25),
  ('The Rock Cycle', 'How rocks change from one type to another', 2, 8, 30),
  ('Types of Rocks', 'Igneous, sedimentary, and metamorphic rocks', 2, 9, 25),
  ('Rapid Changes', 'Earthquakes, volcanoes, and landslides', 2, 10, 25),
  ('Evidence of Past Changes', 'Reading the land for Earth history', 3, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Earth's Resources Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Earth''s Resources' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What Are Natural Resources?', 'Identify materials from nature that we use', 1, 1, 20),
  ('Renewable Resources', 'Resources that can be replaced naturally', 2, 2, 25),
  ('Nonrenewable Resources', 'Resources that cannot be replaced quickly', 2, 3, 25),
  ('Water as a Resource', 'Freshwater supply and usage', 2, 4, 25),
  ('Soil as a Resource', 'How soil supports life and agriculture', 2, 5, 25),
  ('Mineral Resources', 'Mining and using Earth''s minerals', 2, 6, 25),
  ('Fossil Fuels', 'Coal, oil, and natural gas', 2, 7, 25),
  ('Human Impact on Resources', 'How we change and use resources', 2, 8, 25),
  ('Conservation', 'Protecting and managing resources', 2, 9, 25),
  ('Sustainable Practices', 'Meeting needs without harming future', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Natural Hazards Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Natural Hazards' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What Are Natural Hazards?', 'Events that pose risk to people and property', 1, 1, 20),
  ('Earthquakes', 'Why and how the ground shakes', 2, 2, 25),
  ('Volcanoes', 'Why and how volcanoes erupt', 2, 3, 25),
  ('Tsunamis', 'Giant ocean waves from underwater events', 2, 4, 25),
  ('Floods', 'Causes and effects of flooding', 2, 5, 25),
  ('Hazard Patterns', 'Where and when hazards are most likely', 2, 6, 25),
  ('Predicting Hazards', 'How scientists forecast natural events', 2, 7, 25),
  ('Warning Systems', 'Technologies that alert people to danger', 2, 8, 25),
  ('Reducing Hazard Impacts', 'Engineering and planning for safety', 3, 9, 30),
  ('Emergency Preparedness', 'How to prepare for natural disasters', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Engineering Design Process Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Engineering Design Process' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Engineering Design Process', 'Overview of steps engineers follow', 2, 1, 25),
  ('Identifying a Need', 'Recognizing problems that need solutions', 2, 2, 25),
  ('Defining Criteria', 'What the solution must do to succeed', 2, 3, 25),
  ('Understanding Constraints', 'Limitations on materials, time, and cost', 2, 4, 25),
  ('Brainstorming Solutions', 'Generating many possible ideas', 2, 5, 25),
  ('Evaluating Options', 'Comparing solutions against criteria', 2, 6, 25),
  ('Building Prototypes', 'Creating models to test ideas', 2, 7, 30),
  ('Testing and Collecting Data', 'Systematically evaluating designs', 2, 8, 30),
  ('Optimizing Designs', 'Improving based on test results', 2, 9, 25),
  ('Communicating Solutions', 'Presenting designs to others', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- New Units Added: 8
--   - Energy Transfer (10 topics)
--   - Waves and Information (10 topics)
--   - Plant and Animal Structure (10 topics)
--   - Senses and Information Processing (9 topics)
--   - Earth's Changing Surface (11 topics)
--   - Earth's Resources (10 topics)
--   - Natural Hazards (10 topics)
--   - Engineering Design Process (10 topics)
--
-- Total New Topics: 80
-- New Total for Grade 4 Science: ~8+ units, ~80+ topics
-- ============================================================================
