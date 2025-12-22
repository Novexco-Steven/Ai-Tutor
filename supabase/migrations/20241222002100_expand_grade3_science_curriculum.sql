-- ============================================================================
-- GRADE 3 SCIENCE CURRICULUM EXPANSION
-- ============================================================================
-- This migration expands Grade 3 Science to align with comprehensive standards
-- Adding Forces, Life Science, Earth Science, and Engineering content
-- ============================================================================

-- ============================================================================
-- NEW UNITS FOR GRADE 3 SCIENCE
-- ============================================================================

-- Unit: Scientific Investigation (Expanding practices)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  3,
  'Scientific Investigation',
  'Develop skills for conducting fair tests and analyzing data',
  1,
  '🔬',
  '["Ask testable questions", "Plan fair test investigations", "Identify variables in experiments", "Collect and organize data", "Draw conclusions from evidence"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Forces and Interactions
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  3,
  'Forces and Interactions',
  'Investigate contact and non-contact forces and their effects on motion',
  2,
  '🧲',
  '["Identify forces in everyday situations", "Investigate balanced and unbalanced forces", "Explore magnetic forces", "Understand static electricity", "Predict effects of forces on objects"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Traits and Heredity
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  3,
  'Traits and Heredity',
  'Explore how traits are passed from parents to offspring',
  3,
  '🧬',
  '["Identify inherited traits", "Compare traits of parents and offspring", "Distinguish inherited from learned traits", "Understand variation within species", "Explore how environment affects traits"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Adaptations and Survival
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  3,
  'Adaptations and Survival',
  'Discover how plants and animals are adapted to survive in their environments',
  4,
  '🦎',
  '["Identify physical adaptations", "Identify behavioral adaptations", "Connect adaptations to survival", "Compare adaptations across species", "Explore camouflage and mimicry"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Fossils and Past Life
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  3,
  'Fossils and Past Life',
  'Learn about fossils and what they tell us about ancient life',
  5,
  '🦴',
  '["Understand what fossils are", "Explain how fossils form", "Use fossils as evidence of past life", "Compare ancient and modern organisms", "Explore how environments change over time"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Weather and Hazards
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  3,
  'Weather and Hazards',
  'Understand weather patterns and prepare for weather-related hazards',
  6,
  '🌪️',
  '["Describe climate and typical weather", "Identify severe weather types", "Understand weather hazards", "Evaluate solutions for weather hazards", "Use weather data to make predictions"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Environmental Changes
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  3,
  'Environmental Changes',
  'Explore how environments change and how organisms respond',
  7,
  '🌍',
  '["Identify causes of environmental change", "Describe how organisms respond to change", "Understand human impact on environments", "Explore solutions to environmental problems", "Connect changes to organism survival"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Engineering Solutions
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  3,
  'Engineering Solutions',
  'Apply engineering design to solve real-world problems',
  8,
  '🛠️',
  '["Define criteria and constraints", "Research existing solutions", "Design and prototype solutions", "Test and evaluate designs", "Iterate and improve solutions"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- NEW TOPICS FOR GRADE 3 SCIENCE
-- ============================================================================

-- Scientific Investigation Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Scientific Investigation' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Asking Testable Questions', 'Learn to ask questions that can be answered through investigation', 1, 1, 20),
  ('Planning Fair Tests', 'Design experiments where only one thing changes', 2, 2, 25),
  ('Identifying Variables', 'Understand what you change, measure, and keep the same', 2, 3, 25),
  ('Using Scientific Tools', 'Practice using thermometers, rulers, balances, and more', 2, 4, 25),
  ('Collecting Data', 'Record observations and measurements accurately', 2, 5, 25),
  ('Organizing Data in Tables', 'Create tables to organize information', 2, 6, 25),
  ('Creating Graphs', 'Make bar graphs and picture graphs from data', 2, 7, 30),
  ('Drawing Conclusions', 'Use evidence to answer scientific questions', 2, 8, 25),
  ('Communicating Results', 'Share findings clearly with others', 2, 9, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Forces and Interactions Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Forces and Interactions' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What Are Forces?', 'Understand that forces are pushes and pulls', 1, 1, 20),
  ('Contact Forces', 'Explore forces that require objects to touch', 2, 2, 25),
  ('Forces at a Distance', 'Discover forces that work without touching', 2, 3, 25),
  ('Balanced Forces', 'Understand when forces cancel each other out', 2, 4, 25),
  ('Unbalanced Forces', 'Learn how unbalanced forces cause motion', 2, 5, 25),
  ('Magnetic Poles', 'Explore how magnets attract and repel', 2, 6, 25),
  ('Magnetic Strength', 'Investigate factors affecting magnet strength', 2, 7, 25),
  ('Static Electricity', 'Discover how objects become charged', 2, 8, 25),
  ('Electric Forces', 'Explore attraction and repulsion from static', 2, 9, 25),
  ('Predicting Force Effects', 'Use patterns to predict how forces affect motion', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Traits and Heredity Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Traits and Heredity' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What Are Traits?', 'Identify characteristics of living things', 1, 1, 20),
  ('Inherited Traits', 'Traits passed from parents to offspring', 2, 2, 25),
  ('Learned Behaviors', 'Skills and behaviors that are taught or learned', 2, 3, 25),
  ('Inherited vs Learned', 'Distinguish between inherited and learned traits', 2, 4, 25),
  ('Plant Traits', 'Explore traits passed in plants', 2, 5, 25),
  ('Animal Traits', 'Explore traits passed in animals', 2, 6, 25),
  ('Variation', 'Understand why individuals look different', 2, 7, 25),
  ('Environment and Traits', 'How environment affects how traits develop', 2, 8, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Adaptations and Survival Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Adaptations and Survival' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What Are Adaptations?', 'Understand how traits help organisms survive', 1, 1, 20),
  ('Physical Adaptations', 'Body parts that help survival like claws and fur', 2, 2, 25),
  ('Behavioral Adaptations', 'Actions that help survival like migration', 2, 3, 25),
  ('Adaptations for Food', 'How adaptations help get food', 2, 4, 25),
  ('Adaptations for Protection', 'How adaptations help avoid predators', 2, 5, 25),
  ('Camouflage', 'Blending in with the environment', 2, 6, 25),
  ('Mimicry', 'Looking like something else for protection', 2, 7, 25),
  ('Plant Adaptations', 'How plants are adapted to their environments', 2, 8, 25),
  ('Adaptations to Extreme Environments', 'Surviving in deserts, polar regions, and more', 3, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Fossils and Past Life Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Fossils and Past Life' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What Are Fossils?', 'Understand that fossils are remains of ancient life', 1, 1, 20),
  ('How Fossils Form', 'Learn the process of fossilization', 2, 2, 25),
  ('Types of Fossils', 'Explore body fossils, trace fossils, and more', 2, 3, 25),
  ('Fossil Evidence', 'Use fossils to learn about past organisms', 2, 4, 25),
  ('Comparing Past and Present', 'Compare ancient organisms to living ones', 2, 5, 25),
  ('Dinosaurs and Ancient Life', 'Learn about famous prehistoric organisms', 2, 6, 25),
  ('Changing Environments', 'Fossils show how environments have changed', 2, 7, 25),
  ('Scientists Who Study Fossils', 'Learn about paleontologists and their work', 2, 8, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Weather and Hazards Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Weather and Hazards' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Weather vs Climate', 'Distinguish daily weather from long-term climate', 2, 1, 25),
  ('Climate Patterns', 'Explore typical weather in different regions', 2, 2, 25),
  ('Collecting Weather Data', 'Use tools to gather weather information', 2, 3, 25),
  ('Analyzing Weather Data', 'Look for patterns in weather records', 2, 4, 25),
  ('Severe Weather', 'Learn about thunderstorms, tornadoes, and hurricanes', 2, 5, 25),
  ('Weather Hazards', 'Understand dangers from extreme weather', 2, 6, 25),
  ('Preparing for Severe Weather', 'Know how to stay safe in weather emergencies', 2, 7, 25),
  ('Weather Prediction', 'How scientists predict weather', 2, 8, 25),
  ('Reducing Weather Hazards', 'Engineering solutions for weather safety', 3, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Environmental Changes Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Environmental Changes' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Natural Changes', 'Changes caused by natural events like fires and floods', 2, 1, 25),
  ('Human-Caused Changes', 'Changes from building, farming, and pollution', 2, 2, 25),
  ('How Animals Respond', 'Ways animals react to environmental changes', 2, 3, 25),
  ('How Plants Respond', 'Ways plants react to environmental changes', 2, 4, 25),
  ('Migration and Hibernation', 'Seasonal responses to environmental change', 2, 5, 25),
  ('Extinction', 'When species cannot survive changes', 2, 6, 25),
  ('Protecting Environments', 'Ways to reduce harmful environmental changes', 2, 7, 25),
  ('Restoration', 'Helping damaged environments recover', 3, 8, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Engineering Solutions Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Engineering Solutions' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Defining the Problem', 'Clearly describe what needs to be solved', 2, 1, 25),
  ('Criteria and Constraints', 'Identify what success looks like and limitations', 2, 2, 25),
  ('Researching Solutions', 'Find out what solutions already exist', 2, 3, 25),
  ('Generating Ideas', 'Brainstorm multiple possible solutions', 2, 4, 25),
  ('Choosing a Solution', 'Evaluate and select the best approach', 2, 5, 25),
  ('Prototyping', 'Build a model to test your idea', 2, 6, 30),
  ('Testing and Evaluating', 'See how well your solution works', 2, 7, 30),
  ('Improving the Design', 'Use test results to make it better', 2, 8, 25),
  ('Communicating Solutions', 'Present your solution and explain how it works', 2, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- New Units Added: 8
--   - Scientific Investigation (9 topics)
--   - Forces and Interactions (10 topics)
--   - Traits and Heredity (8 topics)
--   - Adaptations and Survival (9 topics)
--   - Fossils and Past Life (8 topics)
--   - Weather and Hazards (9 topics)
--   - Environmental Changes (8 topics)
--   - Engineering Solutions (9 topics)
--
-- Total New Topics: 70
-- New Total for Grade 3 Science: ~8+ units, ~70+ topics
-- ============================================================================
