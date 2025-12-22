-- ============================================================================
-- GRADE 2 SCIENCE CURRICULUM EXPANSION
-- ============================================================================
-- This migration expands Grade 2 Science to align with comprehensive standards
-- Adding Scientific Practices, Engineering, and expanded content areas
-- ============================================================================

-- ============================================================================
-- NEW UNITS FOR GRADE 2 SCIENCE
-- ============================================================================

-- Unit: Scientific Practices (NEW - Critical addition)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  2,
  'Scientific Practices',
  'Learn how scientists observe, question, experiment, and learn about the world',
  1,
  '🔬',
  '["Ask questions about the natural world", "Make observations using senses", "Plan and conduct simple investigations", "Record and share observations", "Use tools safely for scientific inquiry"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Motion and Forces (NEW)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  2,
  'Motion and Forces',
  'Investigate how pushes and pulls affect the motion of objects',
  6,
  '⚡',
  '["Observe how forces make objects move", "Investigate speed and direction", "Explore how ramps affect motion", "Compare pushes and pulls", "Design ways to change motion"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Life Cycles (NEW)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  2,
  'Life Cycles',
  'Explore how plants and animals grow and change throughout their lives',
  7,
  '🦋',
  '["Observe stages in plant life cycles", "Observe stages in animal life cycles", "Compare different life cycles", "Understand that living things reproduce", "Describe growth and change patterns"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Weather and Climate (NEW - Expanding from K)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  2,
  'Weather and Climate',
  'Study weather patterns, weather tools, and how to prepare for weather',
  8,
  '🌤️',
  '["Describe daily and seasonal weather patterns", "Use tools to measure weather", "Read and interpret weather data", "Understand how to prepare for different weather", "Compare weather in different places"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Engineering Design (NEW - NGSS aligned)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  2,
  'Engineering Design',
  'Learn to design solutions to problems by asking, imagining, planning, creating, and improving',
  9,
  '🔧',
  '["Define a simple problem to be solved", "Generate possible solutions", "Build and test a solution", "Compare and improve designs", "Explain how your design works"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- NEW TOPICS FOR GRADE 2 SCIENCE
-- ============================================================================

-- Scientific Practices Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Scientific Practices' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Asking Questions', 'Learn to ask questions about the world around you', 1, 1, 20),
  ('Making Observations', 'Use your senses to observe and describe things', 1, 2, 20),
  ('Scientific Tools', 'Learn about tools scientists use like rulers and magnifying glasses', 1, 3, 25),
  ('Recording Data', 'Draw, write, and chart what you observe', 2, 4, 25),
  ('Conducting Investigations', 'Plan and carry out simple experiments', 2, 5, 30),
  ('Comparing Results', 'Compare what you found with what you expected', 2, 6, 25),
  ('Sharing Findings', 'Explain your discoveries to others', 2, 7, 20),
  ('Lab Safety', 'Learn important rules for staying safe during experiments', 1, 8, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Motion and Forces Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Motion and Forces' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Pushes and Pulls', 'Explore how pushes and pulls make things move', 1, 1, 20),
  ('Speed and Direction', 'Observe how fast and which way objects move', 1, 2, 20),
  ('Changing Motion', 'Discover how to make objects speed up, slow down, or turn', 2, 3, 25),
  ('Ramps and Inclines', 'Investigate how ramps affect how objects move', 2, 4, 25),
  ('Friction', 'Learn why some surfaces are easier to slide on than others', 2, 5, 25),
  ('Magnetic Forces', 'Explore magnets and how they push and pull', 2, 6, 25),
  ('Gravity', 'Understand why objects fall down', 2, 7, 20),
  ('Designing Motion Solutions', 'Design ways to move objects using forces', 3, 8, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Life Cycles Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Life Cycles' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Plant Life Cycles', 'Learn the stages from seed to adult plant', 1, 1, 25),
  ('Seed Germination', 'Observe how seeds sprout and begin to grow', 1, 2, 25),
  ('Growing and Changing', 'Watch how plants grow bigger and develop', 1, 3, 20),
  ('Flowers, Fruits, and Seeds', 'Understand how plants make new seeds', 2, 4, 25),
  ('Butterfly Life Cycle', 'Explore the amazing transformation of butterflies', 2, 5, 25),
  ('Frog Life Cycle', 'Learn how tadpoles become frogs', 2, 6, 25),
  ('Comparing Animal Life Cycles', 'See how different animals grow and change', 2, 7, 25),
  ('Parents and Offspring', 'Understand that living things have babies like themselves', 2, 8, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Weather and Climate Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Weather and Climate' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Types of Weather', 'Identify and describe different kinds of weather', 1, 1, 20),
  ('Weather Tools', 'Learn about thermometers, rain gauges, and wind vanes', 1, 2, 25),
  ('Reading a Thermometer', 'Learn to read temperature from a thermometer', 2, 3, 25),
  ('Measuring Rainfall', 'Use a rain gauge to measure precipitation', 2, 4, 20),
  ('Tracking Wind', 'Observe wind direction and strength', 2, 5, 20),
  ('Weather Patterns', 'Notice patterns in daily and weekly weather', 2, 6, 25),
  ('Seasons and Weather', 'Connect seasonal changes to weather patterns', 2, 7, 25),
  ('Weather Safety', 'Know how to stay safe in different weather conditions', 2, 8, 25),
  ('Comparing Climates', 'Explore how weather differs in different places', 3, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Engineering Design Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Engineering Design' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What is Engineering?', 'Learn that engineers solve problems by designing things', 1, 1, 20),
  ('Identifying Problems', 'Practice finding problems that need solutions', 1, 2, 20),
  ('Brainstorming Solutions', 'Think of many different ways to solve a problem', 2, 3, 25),
  ('Planning Your Design', 'Draw and plan before you build', 2, 4, 25),
  ('Building and Testing', 'Create your design and see if it works', 2, 5, 30),
  ('Improving Your Design', 'Make your design better based on testing', 2, 6, 25),
  ('Comparing Designs', 'Look at different solutions and see which works best', 2, 7, 25),
  ('Sharing Your Design', 'Explain how your design solves the problem', 2, 8, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Additional Matter and Materials Topics (expanding existing unit)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Matter and Materials' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Comparing Materials', 'Compare properties of different materials', 1, 5, 20),
  ('Absorbent vs Waterproof', 'Test which materials soak up water or keep it out', 2, 6, 25),
  ('Strong and Flexible', 'Explore which materials bend and which break', 2, 7, 25),
  ('Transparent and Opaque', 'Discover which materials let light through', 2, 8, 20),
  ('Mixtures', 'Explore what happens when materials are mixed together', 2, 9, 25),
  ('Separating Mixtures', 'Learn ways to separate mixed materials', 3, 10, 30),
  ('Recycling Materials', 'Understand how materials can be reused', 2, 11, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Additional Living Things and Habitats Topics (expanding existing unit)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Living Things and Habitats' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Pond Habitats', 'Explore the plants and animals that live in ponds', 2, 6, 25),
  ('Grassland Habitats', 'Discover life on prairies and grasslands', 2, 7, 25),
  ('Arctic Habitats', 'Learn how animals survive in frozen places', 2, 8, 25),
  ('Microhabitats', 'Find tiny habitats like under logs and rocks', 2, 9, 25),
  ('Animals Need Food', 'Understand how animals find and get food', 1, 10, 20),
  ('Animals Need Water', 'Learn how animals find water in their habitats', 1, 11, 20),
  ('Animals Need Shelter', 'Explore different animal homes and shelters', 2, 12, 25),
  ('Nocturnal Animals', 'Discover animals that are active at night', 2, 13, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Additional Landforms and Water Topics (expanding existing unit)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Landforms and Water' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Islands and Peninsulas', 'Learn about land surrounded by water', 2, 5, 20),
  ('Caves and Canyons', 'Explore deep places in the Earth', 2, 6, 25),
  ('Glaciers and Ice', 'Discover frozen water on Earth', 2, 7, 20),
  ('Where Rivers Start', 'Learn about springs and sources of rivers', 2, 8, 25),
  ('Wetlands', 'Explore swamps, marshes, and other wet areas', 2, 9, 25),
  ('Fast and Slow Changes', 'Compare quick changes (earthquakes) to slow changes (erosion)', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- New Units Added: 5
--   - Scientific Practices (8 topics)
--   - Motion and Forces (8 topics)
--   - Life Cycles (8 topics)
--   - Weather and Climate (9 topics)
--   - Engineering Design (8 topics)
--
-- Topics Added to Existing Units:
--   - Matter and Materials: 7 new topics
--   - Living Things and Habitats: 8 new topics
--   - Landforms and Water: 6 new topics
--
-- Total New Topics: 62
-- New Total for Grade 2 Science: ~9 units, ~75+ topics
-- ============================================================================
