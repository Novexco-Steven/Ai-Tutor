-- ============================================================================
-- KINDERGARTEN AND GRADE 1 SCIENCE CURRICULUM EXPANSION
-- ============================================================================
-- This migration expands K-1 Science with additional foundational topics
-- ============================================================================

-- ============================================================================
-- KINDERGARTEN SCIENCE ADDITIONS
-- ============================================================================

-- Unit: Science Skills (NEW for K)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  0,
  'Science Skills',
  'Learn how to observe, ask questions, and explore like a scientist',
  1,
  '🔍',
  '["Use senses to observe", "Ask questions about the world", "Make simple comparisons", "Sort and classify objects", "Share discoveries with others"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: My Body (NEW for K)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  0,
  'My Body',
  'Explore the human body and how to keep healthy',
  6,
  '🧒',
  '["Name body parts and their uses", "Describe how senses help us", "Explain basic needs for health", "Practice healthy habits", "Understand safety basics"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Day and Night (NEW for K)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  0,
  'Day and Night',
  'Observe patterns in the day and night sky',
  7,
  '🌙',
  '["Describe differences between day and night", "Observe the sun safely", "Notice the moon and stars", "Describe daily patterns", "Connect sky to time of day"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Kindergarten Science Skills Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Science Skills' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Using Our Senses', 'See, hear, touch, smell, and taste to learn', 1, 1, 15),
  ('Asking Questions', 'Wonder about the world around us', 1, 2, 15),
  ('Looking Closely', 'Observe carefully with our eyes', 1, 3, 15),
  ('Comparing Things', 'Find what is the same and different', 1, 4, 15),
  ('Sorting and Grouping', 'Put similar things together', 1, 5, 15),
  ('Measuring', 'Use words like bigger, smaller, longer', 1, 6, 15),
  ('Recording What We See', 'Draw and describe observations', 1, 7, 15),
  ('Sharing Discoveries', 'Tell others what we learned', 1, 8, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Kindergarten My Body Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'My Body' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Body Parts', 'Name and point to body parts', 1, 1, 15),
  ('How I Move', 'Arms, legs, and how our body moves', 1, 2, 15),
  ('My Senses at Work', 'Using all five senses', 1, 3, 15),
  ('Growing Up', 'How we grow and change', 1, 4, 15),
  ('Staying Healthy', 'Food, sleep, and exercise', 1, 5, 15),
  ('Keeping Clean', 'Washing hands and hygiene', 1, 6, 15),
  ('Staying Safe', 'Rules that keep us safe', 1, 7, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Kindergarten Day and Night Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Day and Night' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Daytime', 'What we see during the day', 1, 1, 15),
  ('The Sun', 'The sun gives us light and warmth', 1, 2, 15),
  ('Shadows', 'Shadows happen when light is blocked', 1, 3, 15),
  ('Nighttime', 'What is different at night', 1, 4, 15),
  ('The Moon', 'Our neighbor in space', 1, 5, 15),
  ('Stars', 'Twinkling lights in the night sky', 1, 6, 15),
  ('Daily Patterns', 'Morning, afternoon, evening, night', 1, 7, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Additional Kindergarten Weather Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Weather and Seasons' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What is Weather?', 'Weather is what it is like outside', 1, 5, 15),
  ('Cloudy Days', 'Different types of clouds', 1, 6, 15),
  ('Windy Days', 'When the air moves fast', 1, 7, 15),
  ('Rainy Days', 'Water falling from clouds', 1, 8, 15),
  ('Snowy Days', 'Frozen precipitation', 1, 9, 15),
  ('Weather Clothes', 'Dressing for the weather', 1, 10, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 1 SCIENCE ADDITIONS
-- ============================================================================

-- Unit: Scientific Exploration (NEW for Grade 1)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  1,
  'Scientific Exploration',
  'Develop skills for investigating the world around us',
  1,
  '🔬',
  '["Ask questions that can be tested", "Make predictions", "Conduct simple experiments", "Record observations", "Compare results to predictions"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Materials and Objects (NEW for Grade 1)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  1,
  'Materials and Objects',
  'Explore properties of different materials',
  5,
  '🧱',
  '["Describe objects by properties", "Compare and sort materials", "Predict material behaviors", "Test materials for different uses", "Understand that materials can change"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Patterns in Nature (NEW for Grade 1)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  1,
  'Patterns in Nature',
  'Discover repeating patterns in the natural world',
  6,
  '🌀',
  '["Notice patterns in plants and animals", "Observe seasonal patterns", "Find patterns in the sky", "Use patterns to make predictions", "Create patterns based on observations"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Plants (Expanded for Grade 1)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  1,
  'Plants',
  'Learn about plants and how they live and grow',
  7,
  '🌱',
  '["Identify parts of plants", "Describe what plants need", "Observe plant growth", "Compare different plants", "Understand plants as living things"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 1 Scientific Exploration Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Scientific Exploration' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What is Science?', 'Science is learning about the world', 1, 1, 15),
  ('Asking Good Questions', 'Questions we can investigate', 1, 2, 15),
  ('Making Predictions', 'Guessing what will happen', 1, 3, 15),
  ('Planning Investigations', 'Deciding how to test our ideas', 1, 4, 20),
  ('Using Tools', 'Tools help us measure and observe', 1, 5, 20),
  ('Recording Observations', 'Writing and drawing what we see', 1, 6, 20),
  ('Comparing Results', 'Was our prediction right?', 2, 7, 20),
  ('Sharing What We Learned', 'Explaining our discoveries', 1, 8, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 1 Materials and Objects Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Materials and Objects' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Describing Objects', 'Color, shape, size, and texture', 1, 1, 15),
  ('Comparing Properties', 'Heavy or light? Hard or soft?', 1, 2, 20),
  ('Sorting Materials', 'Grouping by properties', 1, 3, 20),
  ('What Floats and Sinks?', 'Testing objects in water', 1, 4, 20),
  ('Stretchy and Bendy', 'Flexible materials', 1, 5, 15),
  ('Magnetic Materials', 'What sticks to magnets?', 1, 6, 20),
  ('Changing Materials', 'Cutting, folding, melting', 2, 7, 20),
  ('Materials for a Purpose', 'Choosing the right material', 2, 8, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 1 Patterns in Nature Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Patterns in Nature' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What is a Pattern?', 'Things that repeat', 1, 1, 15),
  ('Patterns in Plants', 'Leaves, petals, and more', 1, 2, 15),
  ('Patterns in Animals', 'Stripes, spots, and symmetry', 1, 3, 15),
  ('Seasons Pattern', 'Spring, summer, fall, winter', 1, 4, 20),
  ('Day and Night Pattern', 'The daily cycle', 1, 5, 15),
  ('Moon Patterns', 'The moon changes shape', 2, 6, 20),
  ('Using Patterns to Predict', 'What comes next?', 2, 7, 20),
  ('Creating Pattern Art', 'Making our own patterns', 1, 8, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 1 Plants Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Plants' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Parts of a Plant', 'Roots, stem, leaves, flowers', 1, 1, 20),
  ('What Plants Need', 'Water, light, air, and soil', 1, 2, 20),
  ('How Seeds Grow', 'Planting and watching seeds', 1, 3, 25),
  ('Roots and Stems', 'Getting water and standing tall', 1, 4, 20),
  ('Leaves and Sunlight', 'Making food from light', 2, 5, 20),
  ('Flowers and Fruits', 'Making seeds', 1, 6, 20),
  ('Types of Plants', 'Trees, flowers, vegetables', 1, 7, 15),
  ('Plants in Our Lives', 'How we use plants', 1, 8, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Additional Grade 1 Light and Sound Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Light and Sound' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Sources of Light', 'Where does light come from?', 1, 7, 15),
  ('Light and Dark', 'What happens without light', 1, 8, 15),
  ('See-Through Materials', 'Transparent and opaque', 1, 9, 20),
  ('Making Sounds', 'Different ways to make sounds', 1, 10, 15),
  ('Loud and Soft', 'Volume of sounds', 1, 11, 15),
  ('High and Low', 'Pitch of sounds', 1, 12, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Kindergarten New Units: 3 (Science Skills, My Body, Day and Night)
-- Kindergarten New Topics: ~28
--
-- Grade 1 New Units: 4 (Scientific Exploration, Materials, Patterns, Plants)
-- Grade 1 New Topics: ~38
--
-- Total New Topics: ~66
-- ============================================================================
