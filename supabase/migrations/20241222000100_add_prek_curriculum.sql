-- Migration: Seed Pre-Kindergarten (Junior Kindergarten) Curriculum
-- Based on Early Learning Standards and IXL JK Curriculum
-- Grade Level: -1 (Pre-K)
-- ============================================================================

-- ============================================================================
-- PRE-KINDERGARTEN MATH CURRICULUM
-- ============================================================================

-- PRE-K MATH UNITS (12 units, 44 topics)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), -1, 'Count to 3',
   'Begin counting journey with numbers 1, 2, and 3',
   1, '1️⃣',
   '["Recognize numbers 1, 2, and 3", "Count objects up to 3", "Understand that numbers represent quantities", "Use ten frames with small numbers"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), -1, 'Count to 5',
   'Extend counting skills to include numbers 4 and 5',
   2, '✋',
   '["Recognize numbers 1 through 5", "Count objects up to 5", "Understand one more", "Identify what number comes next"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), -1, 'Count to 10',
   'Master counting to 10 with confidence',
   3, '🔟',
   '["Recognize numbers 1 through 10", "Count objects up to 10", "Use ten frames to organize counting", "Understand one more and one less"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), -1, 'Count to 20',
   'Extend number recognition and counting to 20',
   4, '🔢',
   '["Count objects up to 20", "Recognize teen numbers", "Use ten frames to organize larger numbers", "Identify number patterns"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), -1, 'Comparing',
   'Compare quantities using more, fewer, and same',
   5, '⚖️',
   '["Compare two groups of objects", "Identify which group has more", "Identify which group has fewer", "Recognize when groups are the same"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), -1, 'Positions',
   'Learn position words to describe where things are',
   6, '📍',
   '["Use inside and outside correctly", "Understand above and below", "Use left and right", "Describe positions using spatial vocabulary"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), -1, 'Classify and Sort',
   'Group objects by their attributes',
   7, '🎨',
   '["Identify objects that are the same", "Identify objects that are different", "Sort objects by color", "Sort objects by shape"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), -1, 'Patterns',
   'Recognize and continue simple patterns',
   8, '🔄',
   '["Identify color patterns", "Identify shape patterns", "Continue a pattern", "Create simple patterns"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), -1, 'Size and Measurement',
   'Compare objects by size and other attributes',
   9, '📏',
   '["Compare objects by length", "Compare objects by height", "Compare objects by weight", "Use comparison vocabulary"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), -1, 'Money Introduction',
   'Begin to recognize common coins',
   10, '💰',
   '["Recognize pennies, nickels, and dimes", "Understand that coins have value", "Sort coins by type"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), -1, 'Flat Shapes',
   'Identify basic 2D shapes',
   11, '🔷',
   '["Identify circles", "Identify squares", "Identify triangles", "Identify rectangles"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), -1, 'Solid Shapes',
   'Identify basic 3D shapes',
   12, '🧊',
   '["Distinguish between flat and solid shapes", "Identify spheres and cubes", "Identify cones and cylinders", "Find shapes in the real world"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Pre-K Math Topics: Count to 3
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Count to 3' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Number Recognition to 3', 'Learn to recognize and name numbers 1, 2, and 3', 1, 1, 10),
  ('Counting Objects to 3', 'Count 1, 2, or 3 objects and say how many', 1, 2, 10),
  ('Ten Frame Basics', 'Begin using a ten frame with small numbers', 1, 3, 10),
  ('Representing Numbers to 3', 'Show numbers 1, 2, and 3 in different ways', 1, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Pre-K Math Topics: Count to 5
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Count to 5' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Number Recognition to 5', 'Learn to recognize and name numbers 1 through 5', 1, 1, 10),
  ('Counting Objects to 5', 'Count up to 5 objects and say how many', 1, 2, 10),
  ('Ten Frames to 5', 'Use ten frames to show numbers up to 5', 1, 3, 10),
  ('What Comes Next to 5', 'Identify what number comes after 1, 2, 3, or 4', 1, 4, 10),
  ('Number Sequencing', 'Put numbers 1-5 in the correct order', 2, 5, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Pre-K Math Topics: Count to 10
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Count to 10' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Number Recognition to 10', 'Learn to recognize and name numbers 1 through 10', 1, 1, 15),
  ('Counting Objects to 10', 'Count up to 10 objects and say how many', 1, 2, 15),
  ('Ten Frames to 10', 'Use ten frames to show numbers up to 10', 2, 3, 15),
  ('One More and One Less', 'Find one more or one less than a number', 2, 4, 15),
  ('Number Order to 10', 'Put numbers 1-10 in the correct order', 2, 5, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Pre-K Math Topics: Count to 20
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Count to 20' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Counting Objects to 20', 'Count up to 20 objects and say how many', 2, 1, 15),
  ('Ten Frames to 20', 'Use two ten frames to show numbers up to 20', 2, 2, 15),
  ('Representing Teen Numbers', 'Understand that teen numbers have a ten and some ones', 2, 3, 15),
  ('Number Patterns to 20', 'Recognize patterns when counting to 20', 2, 4, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Pre-K Math Topics: Comparing
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Comparing' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('More and Fewer', 'Compare groups and tell which has more or fewer', 1, 1, 10),
  ('Are There Enough', 'Determine if there are enough objects for everyone', 1, 2, 10),
  ('Comparing Groups', 'Compare two groups and describe the difference', 2, 3, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Pre-K Math Topics: Positions
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Positions' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Inside and Outside', 'Identify objects inside or outside a container or boundary', 1, 1, 10),
  ('Above and Below', 'Describe positions using above and below', 1, 2, 10),
  ('Left and Right', 'Learn to identify left and right sides', 2, 3, 10),
  ('Position Words', 'Use beside, next to, between, and other position words', 2, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Pre-K Math Topics: Classify and Sort
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Classify and Sort' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Same and Different', 'Identify objects that are the same or different', 1, 1, 10),
  ('Sorting by Color', 'Group objects by their color', 1, 2, 10),
  ('Sorting by Shape', 'Group objects by their shape', 1, 3, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Pre-K Math Topics: Patterns
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Patterns' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Color Patterns', 'Recognize and continue patterns made with colors', 1, 1, 10),
  ('Shape Patterns', 'Recognize and continue patterns made with shapes', 1, 2, 10),
  ('What Comes Next', 'Predict what comes next in a pattern', 2, 3, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Pre-K Math Topics: Size and Measurement
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Size and Measurement' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Long and Short', 'Compare objects by length - which is longer or shorter', 1, 1, 10),
  ('Tall and Short', 'Compare objects by height - which is taller or shorter', 1, 2, 10),
  ('Light and Heavy', 'Compare objects by weight - which is lighter or heavier', 1, 3, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Pre-K Math Topics: Money Introduction
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Money Introduction' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Coin Recognition', 'Learn to recognize pennies, nickels, dimes, and quarters', 1, 1, 10),
  ('Coin Values', 'Begin to understand that different coins have different values', 2, 2, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Pre-K Math Topics: Flat Shapes
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Flat Shapes' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Circles', 'Identify and describe circles - round shapes with no corners', 1, 1, 10),
  ('Squares', 'Identify and describe squares - four equal sides and four corners', 1, 2, 10),
  ('Triangles', 'Identify and describe triangles - three sides and three corners', 1, 3, 10),
  ('Rectangles', 'Identify and describe rectangles - four sides and four corners', 2, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Pre-K Math Topics: Solid Shapes
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Solid Shapes' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Spheres and Cubes', 'Identify spheres (balls) and cubes (boxes)', 1, 1, 10),
  ('Cones and Cylinders', 'Identify cones (ice cream cones) and cylinders (cans)', 2, 2, 10),
  ('Flat vs Solid', 'Understand the difference between 2D and 3D shapes', 2, 3, 10),
  ('Shapes in Our World', 'Find and identify shapes in everyday objects', 2, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PRE-KINDERGARTEN SCIENCE CURRICULUM
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), -1, 'My Five Senses',
   'Explore the world using sight, hearing, touch, smell, and taste',
   1, '👁️',
   '["Name the five senses", "Identify body parts for each sense", "Use senses to explore objects", "Describe observations using senses"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), -1, 'Weather Watching',
   'Observe and describe daily weather',
   2, '☀️',
   '["Describe today''s weather", "Identify sunny, cloudy, rainy, and snowy days", "Dress appropriately for weather", "Notice weather changes"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), -1, 'Living Things',
   'Discover what makes something alive',
   3, '🌱',
   '["Tell if something is living or not", "Identify plants and animals", "Know that living things grow", "Know that living things need food and water"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), -1, 'Movement and Motion',
   'Explore how things move',
   4, '🚗',
   '["Describe how objects move", "Push and pull objects", "Notice fast and slow movement", "Explore rolling and sliding"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Pre-K Science Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'My Five Senses' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Sight', 'Use your eyes to see colors, shapes, and sizes', 1, 1, 10),
  ('Hearing', 'Use your ears to hear sounds - loud, soft, high, low', 1, 2, 10),
  ('Touch', 'Use your hands to feel - soft, hard, rough, smooth', 1, 3, 10),
  ('Smell and Taste', 'Use your nose to smell and tongue to taste safely', 1, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Weather Watching' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Sunny Days', 'Recognize and describe sunny weather', 1, 1, 10),
  ('Cloudy and Rainy', 'Recognize clouds and rain', 1, 2, 10),
  ('Windy Days', 'Notice and describe wind', 1, 3, 10),
  ('Dressing for Weather', 'Choose what to wear based on weather', 1, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Living Things' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Living or Not Living', 'Decide if something is alive or not alive', 1, 1, 10),
  ('Plants Are Living', 'Learn that plants are living things that grow', 1, 2, 10),
  ('Animals Are Living', 'Learn that animals are living things that move and grow', 1, 3, 10),
  ('What Living Things Need', 'Know that living things need food, water, and air', 1, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Movement and Motion' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Pushing Things', 'Explore how pushing makes things move away', 1, 1, 10),
  ('Pulling Things', 'Explore how pulling brings things closer', 1, 2, 10),
  ('Fast and Slow', 'Compare fast and slow movement', 1, 3, 10),
  ('Rolling and Sliding', 'Explore how objects roll and slide', 2, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PRE-KINDERGARTEN READING/ELA CURRICULUM
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), -1, 'Letter Awareness',
   'Begin to recognize letters of the alphabet',
   1, '🔤',
   '["Recognize some uppercase letters", "Understand that letters have names", "Begin to recognize letters in your name", "Understand that letters make up words"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), -1, 'Listening and Speaking',
   'Develop listening skills and spoken language',
   2, '👂',
   '["Listen to stories being read aloud", "Answer simple questions about a story", "Speak in complete sentences", "Share ideas and experiences"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), -1, 'Phonological Awareness',
   'Hear and play with the sounds in words',
   3, '🎵',
   '["Recognize rhyming words", "Clap syllables in words", "Identify beginning sounds", "Play with sounds in words"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), -1, 'Print Concepts',
   'Understand how books and print work',
   4, '📚',
   '["Hold a book correctly", "Turn pages from front to back", "Understand we read left to right", "Know the difference between pictures and words"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Pre-K Reading Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Letter Awareness' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Letters in My Name', 'Recognize the letters in your own name', 1, 1, 10),
  ('Uppercase Letters', 'Begin to recognize uppercase letters', 1, 2, 10),
  ('Letters Are Everywhere', 'Find letters in signs, books, and the environment', 1, 3, 10),
  ('Letter Names', 'Learn the names of familiar letters', 1, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Listening and Speaking' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Listening to Stories', 'Sit and listen as stories are read aloud', 1, 1, 10),
  ('Talking About Stories', 'Answer questions about stories you hear', 1, 2, 10),
  ('Speaking in Sentences', 'Use complete sentences when talking', 1, 3, 10),
  ('Sharing Ideas', 'Tell others about your experiences and ideas', 1, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Phonological Awareness' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Rhyming Words', 'Recognize words that rhyme - cat, hat, bat', 1, 1, 10),
  ('Syllables', 'Clap the parts (syllables) in words', 1, 2, 10),
  ('Beginning Sounds', 'Identify the first sound in a word', 2, 3, 10),
  ('Playing with Sounds', 'Have fun making different sounds with words', 1, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Print Concepts' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Holding Books', 'Hold a book right-side up and turn pages correctly', 1, 1, 10),
  ('Pictures and Words', 'Know that pictures are different from words', 1, 2, 10),
  ('Reading Direction', 'Understand we read from left to right', 1, 3, 10),
  ('Parts of a Book', 'Identify the cover, title, and pages of a book', 1, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PRE-KINDERGARTEN SOCIAL STUDIES/HISTORY CURRICULUM
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), -1, 'All About Me',
   'Learn about yourself and what makes you special',
   1, '👤',
   '["Know your name and age", "Describe yourself", "Identify your favorites", "Understand you are unique"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), -1, 'My Family',
   'Learn about families and the people who care for you',
   2, '👨‍👩‍👧',
   '["Identify family members", "Understand family roles", "Know that families are different", "Share about your family"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), -1, 'My School',
   'Learn about school and the people who work there',
   3, '🏫',
   '["Know your teacher''s name", "Follow classroom rules", "Identify school helpers", "Be a good friend"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), -1, 'My Community',
   'Begin to understand your neighborhood and community',
   4, '🏘️',
   '["Know where you live", "Identify community places", "Recognize community helpers", "Understand rules keep us safe"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Pre-K History Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'All About Me' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('My Name', 'Know and say your first and last name', 1, 1, 10),
  ('How Old Am I', 'Know your age and when your birthday is', 1, 2, 10),
  ('My Favorites', 'Share your favorite color, food, and activities', 1, 3, 10),
  ('What Makes Me Special', 'Understand that everyone is unique and special', 1, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'My Family' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Family Members', 'Name the people in your family', 1, 1, 10),
  ('Family Helpers', 'Know that family members help each other', 1, 2, 10),
  ('Different Families', 'Understand that families come in different sizes and types', 1, 3, 10),
  ('Family Love', 'Know that families love and care for each other', 1, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'My School' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('My Teacher', 'Know your teacher''s name and how they help you', 1, 1, 10),
  ('Classroom Rules', 'Follow rules that help everyone learn and be safe', 1, 2, 10),
  ('School Helpers', 'Identify people who help at school - principal, nurse, custodian', 1, 3, 10),
  ('Making Friends', 'Learn how to be a good friend at school', 1, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'My Community' AND grade_level = -1),
  v.name, v.description, -1, -1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Where I Live', 'Know your address and describe your home', 1, 1, 10),
  ('Places in My Neighborhood', 'Identify places like the park, store, and library', 1, 2, 10),
  ('Community Helpers', 'Learn about firefighters, police officers, and doctors', 1, 3, 10),
  ('Following Rules', 'Understand that rules keep everyone safe', 1, 4, 10)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Pre-K Curriculum
-- ============================================================================
-- Math: 12 units, 44 topics
-- Science: 4 units, 16 topics
-- Reading: 4 units, 16 topics
-- History: 4 units, 16 topics
-- Total: 24 units, 92 topics
-- ============================================================================
