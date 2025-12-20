-- Migration: Seed Kindergarten through Grade 2 Curriculum
-- Based on Common Core State Standards, NGSS, and NCSS Framework
-- ============================================================================

-- ============================================================================
-- KINDERGARTEN CURRICULUM
-- ============================================================================

-- KINDERGARTEN MATH
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 0, 'Counting and Cardinality',
   'Learn to count objects and understand that numbers represent quantities',
   1, '🔢',
   '["Count to 100 by ones and tens", "Count objects and tell how many", "Compare numbers and identify which is more or less", "Write numbers 0-20"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 0, 'Operations and Algebraic Thinking',
   'Understand addition as putting together and subtraction as taking apart',
   2, '➕',
   '["Understand addition means putting together", "Understand subtraction means taking apart", "Add and subtract within 5 fluently", "Solve simple word problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 0, 'Numbers and Base Ten',
   'Work with numbers 11-19 to understand place value foundations',
   3, '🔟',
   '["Compose numbers 11-19 from ten ones and extra ones", "Understand teen numbers have one ten", "Decompose teen numbers"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 0, 'Measurement and Data',
   'Describe and compare measurable attributes of objects',
   4, '📏',
   '["Describe measurable attributes like length and weight", "Compare two objects by size", "Classify and count objects"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 0, 'Geometry',
   'Identify and describe shapes in the environment',
   5, '🔷',
   '["Identify circles, squares, triangles, rectangles", "Describe shapes by attributes", "Identify shapes in the real world", "Build shapes using materials"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Kindergarten Math Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Counting and Cardinality' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Counting to 20', 'Count objects from 1 to 20 and say the number names in order', 1, 1, 15),
  ('Counting to 100', 'Count to 100 by ones and by tens', 2, 2, 20),
  ('Counting Objects', 'Count objects and tell how many there are', 2, 3, 15),
  ('Comparing Numbers', 'Compare two groups and tell which has more, less, or the same', 2, 4, 15),
  ('Writing Numbers', 'Write numbers from 0 to 20', 2, 5, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Operations and Algebraic Thinking' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Addition Concepts', 'Understand addition as putting together and adding to', 2, 1, 20),
  ('Subtraction Concepts', 'Understand subtraction as taking apart and taking from', 2, 2, 20),
  ('Adding Within 5', 'Add numbers with sums up to 5', 2, 3, 15),
  ('Subtracting Within 5', 'Subtract numbers within 5', 2, 4, 15),
  ('Word Problems', 'Solve simple addition and subtraction word problems', 3, 5, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Numbers and Base Ten' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Teen Numbers', 'Understand numbers 11-19 as ten ones and some more ones', 2, 1, 20),
  ('Making Ten', 'Learn different ways to make ten', 2, 2, 15),
  ('Composing Teen Numbers', 'Build teen numbers using tens and ones', 3, 3, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement and Data' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Comparing Sizes', 'Compare objects by length, height, and weight', 1, 1, 15),
  ('Sorting and Classifying', 'Sort objects into categories and count them', 2, 2, 15),
  ('Describing Attributes', 'Describe measurable attributes of objects', 2, 3, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('2D Shapes', 'Identify circles, squares, triangles, and rectangles', 1, 1, 15),
  ('3D Shapes', 'Identify spheres, cubes, cylinders, and cones', 2, 2, 15),
  ('Shapes in Our World', 'Find and describe shapes in the environment', 2, 3, 15),
  ('Building Shapes', 'Use materials to build and draw shapes', 2, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- KINDERGARTEN SCIENCE (Based on NGSS)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 0, 'Weather and Seasons',
   'Observe and describe daily weather and seasonal patterns',
   1, '🌤️',
   '["Observe daily weather conditions", "Describe weather patterns", "Understand how seasons change", "Dress appropriately for weather"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 0, 'Plants and Animals',
   'Learn what living things need to survive',
   2, '🌱',
   '["Identify what plants need to grow", "Identify what animals need to survive", "Observe how living things change", "Compare plants and animals"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 0, 'Pushes and Pulls',
   'Explore how forces make things move',
   3, '🏃',
   '["Understand pushes and pulls make things move", "Compare different strengths of forces", "Predict motion based on forces"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 0, 'Our Five Senses',
   'Use senses to observe and describe the world',
   4, '👀',
   '["Use sight to observe", "Use hearing to identify sounds", "Use touch to describe textures", "Use smell and taste safely"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Kindergarten Science Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Weather and Seasons' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Daily Weather', 'Observe and describe what the weather is like each day', 1, 1, 15),
  ('Weather Tools', 'Learn about thermometers, rain gauges, and wind vanes', 2, 2, 20),
  ('The Four Seasons', 'Understand spring, summer, fall, and winter', 2, 3, 20),
  ('Dressing for Weather', 'Choose appropriate clothing for different weather', 1, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Plants and Animals' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What Plants Need', 'Plants need water, sunlight, and air to grow', 1, 1, 15),
  ('What Animals Need', 'Animals need food, water, air, and shelter', 1, 2, 15),
  ('Living vs Non-Living', 'Tell the difference between living and non-living things', 2, 3, 20),
  ('Plant and Animal Babies', 'Learn how plants and animals have babies', 2, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Pushes and Pulls' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What is a Push?', 'A push moves things away from you', 1, 1, 15),
  ('What is a Pull?', 'A pull moves things toward you', 1, 2, 15),
  ('Making Things Move', 'Use pushes and pulls to make objects move', 2, 3, 20),
  ('Fast and Slow', 'Different forces make things move fast or slow', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Our Five Senses' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Sight', 'Use your eyes to see colors, shapes, and sizes', 1, 1, 15),
  ('Hearing', 'Use your ears to hear sounds all around you', 1, 2, 15),
  ('Touch', 'Use your hands to feel textures and temperatures', 1, 3, 15),
  ('Smell and Taste', 'Use your nose and tongue to smell and taste safely', 1, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- KINDERGARTEN READING/ELA
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 0, 'Letter Recognition',
   'Learn to identify and name all uppercase and lowercase letters',
   1, '🔤',
   '["Recognize uppercase letters A-Z", "Recognize lowercase letters a-z", "Match uppercase to lowercase letters", "Name letters in your own name"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 0, 'Phonics Foundations',
   'Learn the sounds that letters make',
   2, '🗣️',
   '["Learn consonant sounds", "Learn short vowel sounds", "Blend sounds to read simple words", "Identify beginning sounds in words"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 0, 'Reading Comprehension',
   'Understand and retell simple stories',
   3, '📖',
   '["Identify characters in a story", "Retell story events in order", "Understand what happens in a story", "Make predictions about stories"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 0, 'Writing Basics',
   'Learn to write letters and simple words',
   4, '✏️',
   '["Write uppercase letters", "Write lowercase letters", "Write your own name", "Draw and write about pictures"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Kindergarten Reading Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Letter Recognition' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Uppercase Letters A-M', 'Recognize and name uppercase letters A through M', 1, 1, 20),
  ('Uppercase Letters N-Z', 'Recognize and name uppercase letters N through Z', 1, 2, 20),
  ('Lowercase Letters a-m', 'Recognize and name lowercase letters a through m', 2, 3, 20),
  ('Lowercase Letters n-z', 'Recognize and name lowercase letters n through z', 2, 4, 20),
  ('Letter Matching', 'Match uppercase letters to their lowercase partners', 2, 5, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Phonics Foundations' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Beginning Sounds', 'Identify the first sound in spoken words', 2, 1, 20),
  ('Consonant Sounds', 'Learn the sounds consonant letters make', 2, 2, 25),
  ('Short Vowel Sounds', 'Learn the short sounds of A, E, I, O, U', 3, 3, 25),
  ('Rhyming Words', 'Recognize and produce rhyming words', 2, 4, 15),
  ('Blending Sounds', 'Blend sounds together to read simple CVC words', 3, 5, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Comprehension' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Story Characters', 'Identify who is in a story', 1, 1, 15),
  ('Story Events', 'Tell what happens in a story in order', 2, 2, 20),
  ('Making Predictions', 'Guess what will happen next in a story', 2, 3, 15),
  ('Asking Questions', 'Ask and answer questions about stories', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing Basics' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Writing Your Name', 'Practice writing your first and last name', 1, 1, 15),
  ('Writing Letters', 'Practice forming uppercase and lowercase letters', 2, 2, 20),
  ('Drawing and Writing', 'Draw a picture and write about it', 2, 3, 20),
  ('Writing Simple Words', 'Write simple CVC words you can sound out', 3, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- KINDERGARTEN SOCIAL STUDIES/HISTORY
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 0, 'Myself and My Family',
   'Learn about yourself, your family, and your community',
   1, '👨‍👩‍👧‍👦',
   '["Describe yourself and your family", "Understand family roles", "Learn about your community", "Understand rules at home and school"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 0, 'My School and Community',
   'Explore your school and the people who help in your community',
   2, '🏫',
   '["Learn school rules and routines", "Identify community helpers", "Understand why rules are important", "Learn about different jobs"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 0, 'Maps and Places',
   'Begin to understand maps and where we live',
   3, '🗺️',
   '["Understand maps show places from above", "Identify land and water on maps", "Learn about your neighborhood", "Describe where things are located"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 0, 'American Symbols',
   'Learn about symbols that represent our country',
   4, '🇺🇸',
   '["Recognize the American flag", "Learn about the Pledge of Allegiance", "Know important holidays", "Identify the Statue of Liberty and other symbols"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Kindergarten History Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Myself and My Family' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('All About Me', 'Describe yourself - your name, age, and what you like', 1, 1, 15),
  ('My Family', 'Talk about your family members and what makes families special', 1, 2, 15),
  ('Family Traditions', 'Learn about special things families do together', 2, 3, 15),
  ('Rules at Home', 'Understand why families have rules', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'My School and Community' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('School Rules', 'Learn the rules that help school be safe and fun', 1, 1, 15),
  ('Community Helpers', 'Meet firefighters, police officers, doctors, and teachers', 1, 2, 20),
  ('Jobs in Our Community', 'Learn about different jobs people do', 2, 3, 20),
  ('Being a Good Citizen', 'Learn how to help others and be kind', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Maps and Places' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What is a Map?', 'Learn that maps show places from above like a bird sees', 1, 1, 15),
  ('Land and Water', 'Find land and water on maps and globes', 2, 2, 15),
  ('My Neighborhood', 'Describe places in your neighborhood', 2, 3, 15),
  ('Giving Directions', 'Use words like near, far, left, and right', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'American Symbols' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The American Flag', 'Learn about our flag and what the colors mean', 1, 1, 15),
  ('The Pledge of Allegiance', 'Learn the Pledge and what it means', 2, 2, 15),
  ('National Holidays', 'Learn about Thanksgiving, Independence Day, and more', 2, 3, 20),
  ('Famous Symbols', 'Recognize the Statue of Liberty, bald eagle, and White House', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 1 CURRICULUM
-- ============================================================================

-- GRADE 1 MATH
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 1, 'Addition and Subtraction',
   'Develop fluency with addition and subtraction within 20',
   1, '➕',
   '["Add within 20 using strategies", "Subtract within 20", "Understand subtraction as finding the unknown addend", "Solve word problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 1, 'Place Value',
   'Understand place value for two-digit numbers',
   2, '🔟',
   '["Understand tens and ones", "Count to 120 starting from any number", "Compare two-digit numbers", "Add and subtract multiples of 10"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 1, 'Measurement',
   'Measure lengths and tell time',
   3, '📏',
   '["Measure length using non-standard units", "Compare lengths of objects", "Tell time to the hour and half hour", "Organize and interpret data"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 1, 'Geometry',
   'Reason about shapes and their attributes',
   4, '🔷',
   '["Distinguish between defining attributes of shapes", "Compose and decompose shapes", "Partition shapes into halves and fourths", "Build and draw shapes"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 1 Math Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Addition and Subtraction' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Addition Strategies', 'Use counting on, making ten, and doubles to add', 2, 1, 20),
  ('Subtraction Strategies', 'Use counting back and related facts to subtract', 2, 2, 20),
  ('Fact Families', 'Understand how addition and subtraction are related', 3, 3, 20),
  ('Word Problems', 'Solve addition and subtraction word problems', 3, 4, 25),
  ('Fluency Within 10', 'Know addition and subtraction facts within 10 by heart', 2, 5, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Place Value' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Tens and Ones', 'Understand that two-digit numbers are made of tens and ones', 2, 1, 20),
  ('Counting to 120', 'Count to 120, starting at any number', 2, 2, 20),
  ('Comparing Numbers', 'Compare two-digit numbers using greater than and less than', 3, 3, 20),
  ('Adding Tens', 'Add 10 to a two-digit number mentally', 3, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Measuring Length', 'Measure objects using paper clips, cubes, and other units', 2, 1, 20),
  ('Comparing Lengths', 'Compare the lengths of two objects', 2, 2, 15),
  ('Telling Time', 'Tell time to the hour and half hour using analog clocks', 3, 3, 25),
  ('Reading Data', 'Organize and read data from charts and graphs', 2, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Shape Attributes', 'Describe shapes by their sides and corners', 2, 1, 20),
  ('Composing Shapes', 'Put shapes together to make new shapes', 2, 2, 20),
  ('Halves and Fourths', 'Divide shapes into two and four equal parts', 3, 3, 20),
  ('3D Shapes', 'Identify cubes, cones, cylinders, and spheres', 2, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 1 SCIENCE
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 1, 'Light and Sound',
   'Explore how light and sound travel and affect what we see and hear',
   1, '💡',
   '["Understand light helps us see", "Learn that sound comes from vibrations", "Explore how materials affect light", "Design solutions using light and sound"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 1, 'Plants and Animals',
   'Learn how plants and animals use their parts to survive',
   2, '🦋',
   '["Identify plant parts and their functions", "Learn how animals use body parts to survive", "Understand animal behaviors for survival", "Compare parents and offspring"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 1, 'Sky Patterns',
   'Observe patterns in the sky including the sun, moon, and stars',
   3, '🌙',
   '["Observe changes in daylight throughout the year", "Learn about the sun and its movement", "Observe moon phases", "Identify star patterns"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 1 Science Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Light and Sound' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Light Sources', 'Learn about natural and artificial light sources', 2, 1, 20),
  ('How Light Travels', 'Understand that light travels in straight lines', 2, 2, 20),
  ('Shadows', 'Explore how objects block light to make shadows', 2, 3, 20),
  ('Sound and Vibrations', 'Learn that sounds come from vibrating objects', 2, 4, 20),
  ('Loud and Soft Sounds', 'Explore how to make different sounds', 2, 5, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Plants and Animals' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Plant Parts', 'Learn about roots, stems, leaves, and flowers', 2, 1, 20),
  ('How Plants Grow', 'Understand what plants need to grow', 2, 2, 20),
  ('Animal Body Parts', 'Learn how animals use their parts to eat, move, and stay safe', 2, 3, 20),
  ('Animal Behaviors', 'Explore how animals act to survive', 3, 4, 20),
  ('Parents and Babies', 'Compare how baby animals are like their parents', 2, 5, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Sky Patterns' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Sun', 'Learn about the sun and how it seems to move across the sky', 2, 1, 20),
  ('Day and Night', 'Understand why we have day and night', 2, 2, 20),
  ('The Moon', 'Observe how the moon changes shape', 3, 3, 20),
  ('Seasons and Daylight', 'Learn why days are longer in summer and shorter in winter', 3, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 1 READING/ELA
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 1, 'Phonics and Word Recognition',
   'Decode words using phonics patterns',
   1, '📚',
   '["Read words with short and long vowels", "Read words with consonant blends", "Read words with digraphs", "Read common sight words"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 1, 'Reading Fluency',
   'Read with accuracy and appropriate speed',
   2, '📖',
   '["Read grade-level text accurately", "Read with expression", "Self-correct when reading", "Reread for understanding"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 1, 'Comprehension Strategies',
   'Understand and analyze what you read',
   3, '🧠',
   '["Identify main idea and details", "Retell stories in sequence", "Compare and contrast characters", "Make connections to self and world"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 1, 'Writing',
   'Write narratives, opinions, and informational texts',
   4, '✍️',
   '["Write complete sentences", "Write simple stories", "Write opinion pieces", "Write informational texts"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 1 Reading Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Phonics and Word Recognition' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Short Vowel Words', 'Read CVC words with short vowels (cat, bed, sit)', 2, 1, 20),
  ('Long Vowel Words', 'Read words with silent e and vowel teams', 3, 2, 25),
  ('Consonant Blends', 'Read words with blends like bl, cr, st, tr', 3, 3, 25),
  ('Digraphs', 'Read words with ch, sh, th, wh', 3, 4, 20),
  ('Sight Words', 'Read common words that don''t follow phonics rules', 2, 5, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Fluency' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Reading Accuracy', 'Read words correctly without guessing', 2, 1, 20),
  ('Reading Smoothly', 'Read sentences without stopping at each word', 3, 2, 20),
  ('Reading with Expression', 'Use your voice to make reading interesting', 3, 3, 20),
  ('Rereading', 'Read text again to understand it better', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Comprehension Strategies' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Main Idea', 'Find what a story or text is mostly about', 3, 1, 20),
  ('Story Sequence', 'Tell what happened first, next, and last', 2, 2, 20),
  ('Comparing Characters', 'Find how characters are alike and different', 3, 3, 20),
  ('Making Connections', 'Connect stories to your own life and other books', 3, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Writing Sentences', 'Write complete sentences with capitals and periods', 2, 1, 20),
  ('Narrative Writing', 'Write stories with a beginning, middle, and end', 3, 2, 25),
  ('Opinion Writing', 'Write your opinion and give a reason why', 3, 3, 25),
  ('Informational Writing', 'Write facts about a topic', 3, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 1 SOCIAL STUDIES/HISTORY
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 1, 'Families Then and Now',
   'Compare families from the past to families today',
   1, '👪',
   '["Compare how children lived long ago to today", "Learn about family histories", "Understand how daily life has changed", "Explore family traditions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 1, 'Community and Citizenship',
   'Learn what it means to be a good citizen',
   2, '🏘️',
   '["Understand the role of government", "Learn rights and responsibilities", "Identify community leaders", "Practice good citizenship"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 1, 'American Heroes',
   'Learn about people who made a difference in America',
   3, '🎖️',
   '["Learn about George Washington", "Learn about Abraham Lincoln", "Learn about Martin Luther King Jr.", "Understand what makes a hero"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 1, 'Geography Basics',
   'Learn to use maps and understand where we live',
   4, '🌎',
   '["Read simple maps", "Identify continents and oceans", "Understand map symbols", "Locate your community on a map"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 1 History Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Families Then and Now' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Life Long Ago', 'Learn how people lived without electricity and cars', 2, 1, 20),
  ('Schools Then and Now', 'Compare old schools to modern schools', 2, 2, 20),
  ('Family History', 'Learn about your family''s past', 2, 3, 20),
  ('How Things Change', 'Understand that communities change over time', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Community and Citizenship' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What is Government?', 'Learn why communities have rules and leaders', 2, 1, 20),
  ('Rights and Responsibilities', 'Understand what you can do and should do as a citizen', 2, 2, 20),
  ('Community Leaders', 'Learn about mayors, police chiefs, and other leaders', 2, 3, 20),
  ('Being a Good Citizen', 'Practice helping others and following rules', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'American Heroes' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('George Washington', 'Learn about America''s first president', 2, 1, 20),
  ('Abraham Lincoln', 'Learn about the president who freed the slaves', 2, 2, 20),
  ('Martin Luther King Jr.', 'Learn about the leader who fought for equal rights', 2, 3, 20),
  ('What Makes a Hero', 'Understand qualities that make someone a hero', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Geography Basics' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Reading Maps', 'Learn to read simple maps and find locations', 2, 1, 20),
  ('Map Symbols', 'Understand symbols and keys on maps', 2, 2, 20),
  ('Continents and Oceans', 'Identify the seven continents and major oceans', 3, 3, 20),
  ('Where I Live', 'Find your community, state, and country on a map', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 2 CURRICULUM
-- ============================================================================

-- GRADE 2 MATH
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 2, 'Addition and Subtraction Fluency',
   'Master addition and subtraction within 100 and solve two-step word problems',
   1, '🧮',
   '["Add and subtract fluently within 100", "Solve two-step word problems", "Use mental math strategies", "Understand place value to add and subtract"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 2, 'Place Value to 1000',
   'Understand three-digit numbers and their place value',
   2, '🔢',
   '["Read and write numbers to 1000", "Understand hundreds, tens, and ones", "Compare three-digit numbers", "Skip count by 5s, 10s, and 100s"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 2, 'Measurement',
   'Measure length using standard units and work with time and money',
   3, '📐',
   '["Measure in inches, feet, centimeters, and meters", "Tell time to the nearest 5 minutes", "Solve problems with money", "Create and read line plots"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 2, 'Introduction to Multiplication',
   'Build foundations for multiplication with equal groups and arrays',
   4, '✖️',
   '["Work with equal groups", "Understand arrays", "Add equal groups repeatedly", "Write equations for arrays"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 2, 'Geometry',
   'Recognize and draw shapes with specific attributes',
   5, '📐',
   '["Identify shapes by attributes", "Partition rectangles into rows and columns", "Divide shapes into equal parts", "Recognize and draw shapes"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 2 Math Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Addition and Subtraction Fluency' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Adding Within 100', 'Add two-digit numbers using place value strategies', 3, 1, 25),
  ('Subtracting Within 100', 'Subtract two-digit numbers with and without regrouping', 3, 2, 25),
  ('Two-Step Word Problems', 'Solve word problems with two steps', 4, 3, 25),
  ('Mental Math', 'Add and subtract in your head using strategies', 3, 4, 20),
  ('Addition and Subtraction Fluency', 'Know addition and subtraction facts within 20 quickly', 3, 5, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Place Value to 1000' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Hundreds', 'Learn that 100 is made of 10 tens', 3, 1, 20),
  ('Reading and Writing Numbers', 'Read and write three-digit numbers', 3, 2, 20),
  ('Comparing Numbers', 'Compare three-digit numbers using < > and =', 3, 3, 20),
  ('Skip Counting', 'Skip count by 5s, 10s, and 100s to 1000', 2, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Measuring with Rulers', 'Measure objects in inches and centimeters', 3, 1, 25),
  ('Comparing Lengths', 'Find how much longer one object is than another', 3, 2, 20),
  ('Telling Time', 'Tell time to the nearest five minutes', 3, 3, 25),
  ('Counting Money', 'Count coins and bills and solve money problems', 3, 4, 25),
  ('Line Plots', 'Create and read line plots with measurement data', 3, 5, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Introduction to Multiplication' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Equal Groups', 'Understand and count equal groups of objects', 3, 1, 20),
  ('Arrays', 'Arrange objects in rows and columns', 3, 2, 20),
  ('Repeated Addition', 'Add equal groups using repeated addition', 3, 3, 20),
  ('Even and Odd Numbers', 'Determine if a number is even or odd', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Shape Attributes', 'Identify shapes by their sides and angles', 3, 1, 20),
  ('Quadrilaterals', 'Learn about squares, rectangles, and other four-sided shapes', 3, 2, 20),
  ('Partitioning Shapes', 'Divide shapes into halves, thirds, and fourths', 3, 3, 20),
  ('Drawing Shapes', 'Draw shapes with specific attributes', 3, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 2 SCIENCE
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 2, 'Matter and Materials',
   'Explore properties of matter and how materials can change',
   1, '🧊',
   '["Classify objects by properties", "Observe how heating and cooling change matter", "Test materials for different purposes", "Plan investigations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 2, 'Landforms and Water',
   'Explore Earth''s surface features and where water is found',
   2, '🏔️',
   '["Identify different landforms", "Understand where water is found on Earth", "Learn how wind and water change land", "Explore maps of land and water"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 2, 'Plant and Animal Habitats',
   'Learn how living things depend on their environments',
   3, '🌿',
   '["Identify different habitats", "Learn how plants and animals are suited to their habitat", "Understand food chains", "Explore how habitats can change"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 2, 'Biodiversity',
   'Explore the variety of life in different environments',
   4, '🦎',
   '["Compare life in different habitats", "Understand why diversity is important", "Learn about endangered species", "Explore local plants and animals"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 2 Science Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Matter and Materials' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Properties of Matter', 'Describe objects by color, texture, size, and shape', 2, 1, 20),
  ('Solids, Liquids, and Gases', 'Identify the three states of matter', 3, 2, 25),
  ('Heating and Cooling', 'Observe how temperature changes matter', 3, 3, 25),
  ('Choosing Materials', 'Select the best material for a purpose', 3, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Landforms and Water' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Types of Landforms', 'Identify mountains, valleys, plains, and more', 2, 1, 20),
  ('Bodies of Water', 'Learn about oceans, rivers, lakes, and streams', 2, 2, 20),
  ('Erosion and Weathering', 'See how wind and water shape the land', 3, 3, 25),
  ('Maps of Earth', 'Use maps to find land and water features', 3, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Plant and Animal Habitats' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What is a Habitat?', 'Learn that habitats provide food, water, and shelter', 2, 1, 20),
  ('Forest Habitats', 'Explore plants and animals that live in forests', 3, 2, 20),
  ('Desert Habitats', 'Learn how living things survive in deserts', 3, 3, 20),
  ('Ocean Habitats', 'Discover life in the ocean', 3, 4, 20),
  ('Food Chains', 'Understand how energy moves from plants to animals', 3, 5, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Biodiversity' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Variety of Life', 'Explore the many different plants and animals on Earth', 2, 1, 20),
  ('Why Diversity Matters', 'Learn why it''s important to have many species', 3, 2, 20),
  ('Protecting Wildlife', 'Understand how we can help endangered species', 3, 3, 20),
  ('Local Nature', 'Observe plants and animals in your neighborhood', 2, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 2 READING/ELA
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 2, 'Advanced Phonics',
   'Decode longer words using advanced phonics patterns',
   1, '📖',
   '["Read words with vowel teams", "Read words with r-controlled vowels", "Decode multisyllabic words", "Read words with common prefixes and suffixes"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 2, 'Reading Comprehension',
   'Understand and analyze increasingly complex texts',
   2, '📚',
   '["Identify main idea and key details", "Understand story elements", "Compare and contrast texts", "Ask and answer questions about texts"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 2, 'Vocabulary Development',
   'Expand vocabulary through reading and word study',
   3, '📝',
   '["Use context clues to find word meanings", "Understand word relationships", "Learn root words and affixes", "Use new vocabulary in speaking and writing"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 2, 'Writing',
   'Write longer, more developed texts in various genres',
   4, '✏️',
   '["Write narratives with sequence and details", "Write informational texts with facts", "Write opinion pieces with reasons", "Revise and edit writing"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 2 Reading Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Advanced Phonics' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Vowel Teams', 'Read words with vowel teams like ea, oa, ai, ee', 3, 1, 25),
  ('R-Controlled Vowels', 'Read words with ar, er, ir, or, ur', 3, 2, 25),
  ('Syllable Types', 'Divide words into syllables to read them', 4, 3, 25),
  ('Prefixes and Suffixes', 'Read words with un-, re-, -ed, -ing, -ly', 4, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Comprehension' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Main Idea and Details', 'Find the main idea and supporting details', 3, 1, 25),
  ('Story Elements', 'Identify characters, setting, problem, and solution', 3, 2, 25),
  ('Comparing Texts', 'Compare and contrast two versions of a story', 4, 3, 25),
  ('Asking Questions', 'Ask who, what, where, when, why, and how questions', 3, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Vocabulary Development' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Context Clues', 'Use nearby words to figure out unknown words', 3, 1, 20),
  ('Word Relationships', 'Understand synonyms, antonyms, and categories', 3, 2, 20),
  ('Root Words', 'Find the root word in longer words', 3, 3, 20),
  ('Using New Words', 'Use new vocabulary in your speaking and writing', 3, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Narrative Writing', 'Write stories with a clear beginning, middle, and end', 3, 1, 30),
  ('Informational Writing', 'Write about a topic with facts and details', 4, 2, 30),
  ('Opinion Writing', 'Write opinions with supporting reasons', 4, 3, 30),
  ('Revising and Editing', 'Make your writing better by revising and fixing errors', 3, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 2 SOCIAL STUDIES/HISTORY
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 2, 'Communities Around the World',
   'Compare urban, suburban, and rural communities',
   1, '🏙️',
   '["Compare city, suburb, and country life", "Understand why people live in different places", "Learn how communities meet needs", "Explore communities around the world"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 2, 'Geography Skills',
   'Develop map reading skills and understand geographic features',
   2, '🗺️',
   '["Use cardinal directions on maps", "Identify the equator and hemispheres", "Read different types of maps", "Locate countries and continents"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 2, 'Government and Laws',
   'Understand the purpose of government and laws',
   3, '⚖️',
   '["Learn why we have laws", "Understand local government", "Learn about voting and elections", "Know the responsibilities of citizens"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 2, 'American History',
   'Learn about important events and people in American history',
   4, '🗽',
   '["Learn about Native Americans", "Understand the first Thanksgiving", "Study pioneers and westward expansion", "Celebrate American holidays"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 2 History Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Communities Around the World' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Urban Communities', 'Learn about life in cities', 2, 1, 20),
  ('Suburban Communities', 'Learn about life in suburbs near cities', 2, 2, 20),
  ('Rural Communities', 'Learn about life in the country and on farms', 2, 3, 20),
  ('Communities Worldwide', 'Explore how people live in other countries', 3, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Geography Skills' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Cardinal Directions', 'Use north, south, east, and west on maps', 2, 1, 20),
  ('Continents and Oceans', 'Name and locate the seven continents and five oceans', 3, 2, 25),
  ('Reading Different Maps', 'Use physical, political, and thematic maps', 3, 3, 25),
  ('The Globe', 'Understand latitude, longitude, and the equator', 4, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Government and Laws' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Why We Have Laws', 'Understand that laws keep communities safe and fair', 2, 1, 20),
  ('Local Government', 'Learn about mayors and city councils', 3, 2, 20),
  ('Voting', 'Understand how voting works in a democracy', 3, 3, 20),
  ('Being a Good Citizen', 'Learn how to contribute to your community', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'American History' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Native Americans', 'Learn about the first people to live in America', 3, 1, 25),
  ('The First Thanksgiving', 'Learn about Pilgrims and the Wampanoag people', 3, 2, 25),
  ('Pioneers', 'Learn about people who moved west across America', 3, 3, 25),
  ('American Holidays', 'Celebrate and understand important holidays', 2, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: K-2 Curriculum
-- ============================================================================
-- Kindergarten: 17 units, ~70 topics
-- Grade 1: 16 units, ~65 topics
-- Grade 2: 17 units, ~70 topics
-- Total: 50 units, ~205 topics across K-2
-- ============================================================================
