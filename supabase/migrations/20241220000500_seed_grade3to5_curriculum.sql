-- Migration: Seed Grades 3-5 Curriculum
-- Based on Common Core State Standards, NGSS, and NCSS Framework
-- ============================================================================

-- ============================================================================
-- GRADE 3 CURRICULUM
-- ============================================================================

-- GRADE 3 MATH
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Multiplication and Division',
   'Develop understanding of multiplication and division and strategies within 100',
   1, '✖️',
   '["Understand multiplication as equal groups", "Understand division as sharing equally", "Apply properties of multiplication", "Fluently multiply and divide within 100"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Introduction to Fractions',
   'Develop understanding of fractions as numbers',
   2, '🥧',
   '["Understand fractions as parts of a whole", "Represent fractions on a number line", "Understand equivalent fractions", "Compare fractions with same numerator or denominator"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Multi-Digit Arithmetic',
   'Develop fluency with multi-digit addition and subtraction',
   3, '🔢',
   '["Round whole numbers to nearest 10 or 100", "Add and subtract within 1000", "Multiply one-digit numbers by multiples of 10", "Use place value understanding"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Measurement and Data',
   'Solve problems involving measurement, time, and data',
   4, '📏',
   '["Tell time to the minute", "Measure and estimate liquid volumes and masses", "Solve word problems with measurement", "Create and read scaled graphs"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Area and Perimeter',
   'Develop understanding of area and perimeter',
   5, '📐',
   '["Measure area by counting unit squares", "Relate area to multiplication", "Calculate perimeter", "Distinguish between area and perimeter"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 3, 'Geometry',
   'Reason with shapes and their attributes',
   6, '🔷',
   '["Categorize shapes by attributes", "Recognize rhombuses, rectangles, and squares", "Partition shapes into equal parts", "Understand area as additive"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 3 Math Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Multiplication and Division' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Multiplication', 'Learn multiplication as equal groups and repeated addition', 3, 1, 25),
  ('Multiplication Facts to 5', 'Master multiplication facts for 0-5', 3, 2, 25),
  ('Multiplication Facts 6-10', 'Master multiplication facts for 6-10', 4, 3, 30),
  ('Understanding Division', 'Learn division as equal sharing and grouping', 4, 4, 25),
  ('Division Facts', 'Master division facts related to multiplication', 4, 5, 25),
  ('Properties of Multiplication', 'Use commutative, associative, and distributive properties', 4, 6, 25),
  ('Word Problems', 'Solve multiplication and division word problems', 4, 7, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Introduction to Fractions' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('What is a Fraction?', 'Understand fractions as equal parts of a whole', 3, 1, 25),
  ('Fractions on a Number Line', 'Place fractions on a number line', 4, 2, 25),
  ('Equivalent Fractions', 'Find fractions that are equal to each other', 4, 3, 30),
  ('Comparing Fractions', 'Compare fractions with same numerator or denominator', 4, 4, 25),
  ('Fractions of a Set', 'Find fractions of a group of objects', 4, 5, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Multi-Digit Arithmetic' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Rounding Numbers', 'Round whole numbers to the nearest 10 or 100', 3, 1, 20),
  ('Adding Within 1000', 'Add numbers up to 1000 using strategies and algorithms', 4, 2, 30),
  ('Subtracting Within 1000', 'Subtract numbers within 1000 with regrouping', 4, 3, 30),
  ('Multiplying by 10', 'Multiply one-digit numbers by multiples of 10', 3, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement and Data' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Telling Time', 'Tell and write time to the nearest minute', 3, 1, 25),
  ('Elapsed Time', 'Solve problems involving elapsed time', 4, 2, 30),
  ('Liquid Volume and Mass', 'Measure and estimate liters, grams, and kilograms', 4, 3, 25),
  ('Picture Graphs and Bar Graphs', 'Create and read scaled graphs', 3, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Area and Perimeter' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Area', 'Measure area by counting unit squares', 3, 1, 25),
  ('Area and Multiplication', 'Calculate area using length times width', 4, 2, 25),
  ('Understanding Perimeter', 'Find the distance around a shape', 4, 3, 25),
  ('Area vs Perimeter', 'Understand the difference between area and perimeter', 4, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Classifying Quadrilaterals', 'Categorize squares, rectangles, and rhombuses', 3, 1, 25),
  ('Attributes of Shapes', 'Describe shapes by sides, angles, and other attributes', 4, 2, 25),
  ('Partitioning Shapes', 'Divide shapes into parts with equal areas', 4, 3, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 3 SCIENCE (NGSS)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 3, 'Forces and Motion',
   'Investigate how forces affect the motion of objects',
   1, '🏃',
   '["Understand balanced and unbalanced forces", "Investigate how forces affect motion", "Predict motion patterns", "Design solutions using magnets"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 3, 'Life Cycles',
   'Explore how organisms grow, develop, and reproduce',
   2, '🦋',
   '["Describe animal life cycles", "Describe plant life cycles", "Compare life cycles", "Understand inheritance of traits"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 3, 'Ecosystems',
   'Understand how organisms interact with each other and their environment',
   3, '🌲',
   '["Identify producers, consumers, and decomposers", "Understand food chains and webs", "Explore adaptations", "Analyze ecosystem changes"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 3, 'Weather and Climate',
   'Collect and analyze weather data to describe climate',
   4, '🌦️',
   '["Record and graph weather data", "Describe climate patterns", "Predict weather", "Understand severe weather safety"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 3 Science Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Forces and Motion' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Balanced and Unbalanced Forces', 'Learn how forces affect objects at rest and in motion', 4, 1, 30),
  ('Friction', 'Explore how friction affects motion', 4, 2, 25),
  ('Gravity', 'Understand how gravity pulls objects toward Earth', 4, 3, 25),
  ('Magnets', 'Investigate magnetic forces and design solutions', 4, 4, 30),
  ('Predicting Motion', 'Use patterns to predict future motion', 4, 5, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Life Cycles' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Animal Life Cycles', 'Explore how animals grow and change through life stages', 3, 1, 25),
  ('Metamorphosis', 'Learn about butterflies, frogs, and other animals that transform', 4, 2, 30),
  ('Plant Life Cycles', 'Study how plants grow from seeds to adults', 3, 3, 25),
  ('Inherited Traits', 'Understand how traits pass from parents to offspring', 4, 4, 30),
  ('Variations', 'Learn why organisms of the same species look different', 4, 5, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Ecosystems' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Producers and Consumers', 'Identify organisms that make food and organisms that eat', 3, 1, 25),
  ('Food Chains', 'Trace the flow of energy from sun to plants to animals', 4, 2, 30),
  ('Food Webs', 'Understand complex feeding relationships in ecosystems', 4, 3, 30),
  ('Adaptations', 'Learn how organisms are suited to their environments', 4, 4, 30),
  ('Ecosystem Changes', 'Explore how changes affect living things', 4, 5, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Weather and Climate' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Measuring Weather', 'Use tools to measure temperature, wind, and precipitation', 3, 1, 25),
  ('Weather Patterns', 'Identify patterns in weather data', 4, 2, 25),
  ('Climate Zones', 'Compare weather patterns in different regions', 4, 3, 30),
  ('Severe Weather', 'Understand hurricanes, tornadoes, and how to stay safe', 4, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 3 READING/ELA
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 3, 'Reading Literature',
   'Analyze literary texts including stories, dramas, and poetry',
   1, '📖',
   '["Determine central message or lesson", "Describe character traits", "Distinguish point of view", "Compare and contrast themes"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 3, 'Reading Informational Text',
   'Comprehend and analyze nonfiction texts',
   2, '📰',
   '["Determine main idea and key details", "Use text features effectively", "Describe cause and effect", "Compare and contrast information"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 3, 'Language and Vocabulary',
   'Expand vocabulary and master language conventions',
   3, '📝',
   '["Use context clues for word meanings", "Use root words and affixes", "Use reference materials", "Apply grammar rules"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 3, 'Writing',
   'Write opinion, informational, and narrative texts',
   4, '✍️',
   '["Write organized opinion pieces", "Write informational texts with facts", "Write narratives with dialogue", "Research and cite sources"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 3 Reading Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Central Message and Theme', 'Determine the lesson or moral of a story', 4, 1, 30),
  ('Character Traits', 'Describe characters by their actions, thoughts, and words', 4, 2, 30),
  ('Point of View', 'Distinguish your point of view from the narrator or characters', 4, 3, 25),
  ('Comparing Stories', 'Compare themes, settings, and plots across texts', 5, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Main Idea and Details', 'Identify the main idea and supporting details', 4, 1, 30),
  ('Text Features', 'Use headings, glossaries, and indexes effectively', 3, 2, 25),
  ('Cause and Effect', 'Describe the relationship between events in a text', 4, 3, 30),
  ('Comparing Texts', 'Compare information from different texts on the same topic', 5, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Language and Vocabulary' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Context Clues', 'Use sentence context to determine word meaning', 4, 1, 25),
  ('Roots and Affixes', 'Use prefixes, suffixes, and root words', 4, 2, 30),
  ('Using a Dictionary', 'Use print and digital dictionaries and glossaries', 3, 3, 20),
  ('Grammar Skills', 'Use nouns, verbs, adjectives, and adverbs correctly', 4, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Opinion Writing', 'Write opinions with reasons organized logically', 4, 1, 35),
  ('Informative Writing', 'Write texts that examine a topic with facts and details', 4, 2, 35),
  ('Narrative Writing', 'Write stories with dialogue and descriptive details', 4, 3, 35),
  ('Research Projects', 'Conduct short research projects and take notes', 5, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 3 SOCIAL STUDIES/HISTORY
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 3, 'Communities Through Time',
   'Compare communities from different time periods',
   1, '🏛️',
   '["Understand how communities change over time", "Study primary and secondary sources", "Compare past and present", "Learn about historical events"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 3, 'Geography and Resources',
   'Understand how geography affects communities',
   2, '🌍',
   '["Identify geographic regions", "Understand natural resources", "Learn how people adapt to environments", "Study how resources affect communities"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 3, 'Economy and Trade',
   'Learn about goods, services, and trade',
   3, '💰',
   '["Distinguish goods from services", "Understand supply and demand", "Learn about trade", "Understand economic choices"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 3, 'Government and Civic Responsibility',
   'Understand local, state, and national government',
   4, '🗳️',
   '["Learn about branches of government", "Understand civic responsibilities", "Learn about laws and their purpose", "Study local government"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 3 History Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Communities Through Time' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Reading Primary Sources', 'Learn to read letters, diaries, and photographs from history', 4, 1, 30),
  ('How Communities Change', 'Compare a community from long ago to today', 4, 2, 30),
  ('Important Historical Events', 'Study events that shaped communities', 4, 3, 30),
  ('Timelines', 'Create and read timelines of events', 3, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Geography and Resources' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Geographic Regions', 'Identify and describe different regions of the United States', 4, 1, 30),
  ('Natural Resources', 'Understand renewable and nonrenewable resources', 4, 2, 30),
  ('Adapting to Environments', 'Learn how people live in different climates', 4, 3, 25),
  ('Human Impact on Environment', 'Study how people change the land', 4, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Economy and Trade' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Goods and Services', 'Learn the difference between goods and services', 3, 1, 25),
  ('Supply and Demand', 'Understand how prices are affected by supply and demand', 4, 2, 30),
  ('Trade', 'Learn why communities trade with each other', 4, 3, 25),
  ('Making Choices', 'Understand opportunity cost and scarcity', 4, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Government and Civic Responsibility' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Three Branches of Government', 'Learn about legislative, executive, and judicial branches', 4, 1, 30),
  ('Local Government', 'Understand how your city or county is governed', 4, 2, 25),
  ('Laws and Rules', 'Learn why laws exist and how they are made', 4, 3, 25),
  ('Being a Responsible Citizen', 'Understand rights and responsibilities of citizens', 3, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 4 CURRICULUM
-- ============================================================================

-- GRADE 4 MATH
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Multi-Digit Multiplication',
   'Multiply multi-digit numbers using strategies and the standard algorithm',
   1, '✖️',
   '["Multiply whole numbers up to four digits", "Use area models for multiplication", "Apply the standard algorithm", "Solve multi-step word problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Multi-Digit Division',
   'Develop understanding of division with multi-digit dividends',
   2, '➗',
   '["Find quotients and remainders", "Use strategies for division", "Understand division as finding missing factors", "Solve word problems with division"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Fractions and Decimals',
   'Extend understanding of fractions and introduce decimals',
   3, '🔢',
   '["Understand equivalent fractions", "Add and subtract fractions with like denominators", "Multiply fractions by whole numbers", "Understand decimal notation for fractions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Factors and Multiples',
   'Develop understanding of factors, multiples, and prime numbers',
   4, '🔣',
   '["Find factor pairs of numbers", "Determine if numbers are prime or composite", "Generate multiples of numbers", "Identify common factors and multiples"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Measurement',
   'Solve problems with measurement and convert units',
   5, '📐',
   '["Convert between measurement units", "Solve area and perimeter problems", "Understand angle measurement", "Use formulas for area and perimeter"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 4, 'Geometry',
   'Draw and identify lines, angles, and shapes',
   6, '📏',
   '["Draw and identify points, lines, and rays", "Classify angles by measure", "Identify parallel and perpendicular lines", "Recognize line symmetry"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 4 Math Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Multi-Digit Multiplication' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Multiplying by 10, 100, 1000', 'Use place value patterns when multiplying by powers of 10', 4, 1, 25),
  ('Area Model Multiplication', 'Use area models to multiply two-digit numbers', 5, 2, 30),
  ('Standard Algorithm', 'Use the standard algorithm for multi-digit multiplication', 5, 3, 35),
  ('Multi-Step Word Problems', 'Solve problems using multiplication with other operations', 5, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Multi-Digit Division' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Division with Remainders', 'Divide and interpret remainders in context', 5, 1, 30),
  ('Partial Quotients', 'Use partial quotients strategy for division', 5, 2, 30),
  ('Long Division', 'Use the standard algorithm for division', 6, 3, 35),
  ('Division Word Problems', 'Solve word problems involving division', 5, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Fractions and Decimals' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Equivalent Fractions', 'Generate and recognize equivalent fractions', 5, 1, 30),
  ('Adding Fractions', 'Add fractions with like denominators', 5, 2, 30),
  ('Subtracting Fractions', 'Subtract fractions with like denominators', 5, 3, 30),
  ('Multiplying Fractions', 'Multiply a fraction by a whole number', 5, 4, 30),
  ('Decimal Notation', 'Write fractions with denominators of 10 or 100 as decimals', 5, 5, 30),
  ('Comparing Decimals', 'Compare decimals to the hundredths place', 5, 6, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Factors and Multiples' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Factor Pairs', 'Find all factor pairs for numbers 1-100', 4, 1, 25),
  ('Prime and Composite', 'Identify prime and composite numbers', 5, 2, 25),
  ('Multiples', 'Find multiples of numbers 1-12', 4, 3, 20),
  ('Common Factors and Multiples', 'Find common factors and multiples of two numbers', 5, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Unit Conversion', 'Convert between units within the same measurement system', 5, 1, 30),
  ('Area and Perimeter Formulas', 'Apply formulas for rectangles and squares', 5, 2, 30),
  ('Angle Measurement', 'Measure and draw angles using a protractor', 5, 3, 30),
  ('Angles in Problems', 'Solve addition and subtraction problems with angles', 5, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Points, Lines, and Rays', 'Identify and draw geometric figures', 4, 1, 25),
  ('Classifying Angles', 'Identify acute, right, obtuse, and straight angles', 5, 2, 25),
  ('Parallel and Perpendicular Lines', 'Identify and draw parallel and perpendicular lines', 5, 3, 25),
  ('Line Symmetry', 'Identify and draw lines of symmetry', 4, 4, 25),
  ('Classifying Triangles', 'Classify triangles by sides and angles', 5, 5, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 4 SCIENCE (NGSS)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 4, 'Energy',
   'Explore how energy is transferred and transformed',
   1, '⚡',
   '["Identify different forms of energy", "Understand energy transfer", "Explore energy transformation", "Design systems that convert energy"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 4, 'Waves',
   'Investigate the properties of waves including light and sound',
   2, '🌊',
   '["Describe wave properties", "Understand how waves transfer energy", "Explore light waves", "Design communication devices using waves"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 4, 'Earth''s Changing Surface',
   'Study how Earth''s surface changes over time',
   3, '🏔️',
   '["Understand weathering and erosion", "Study rock formation", "Identify landforms", "Analyze effects of natural hazards"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 4, 'Structure and Function',
   'Learn how structure relates to function in living things',
   4, '🦴',
   '["Understand body systems", "Learn how structures help survival", "Compare plant structures", "Design solutions mimicking nature"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 4 Science Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Energy' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Forms of Energy', 'Identify kinetic, potential, thermal, electrical, and light energy', 4, 1, 30),
  ('Energy Transfer', 'Understand how energy moves from one object to another', 5, 2, 30),
  ('Energy Transformation', 'Learn how energy changes from one form to another', 5, 3, 30),
  ('Designing Energy Systems', 'Create devices that transfer or transform energy', 5, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Waves' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Wave Properties', 'Learn about wavelength, amplitude, and frequency', 5, 1, 30),
  ('Sound Waves', 'Understand how sound travels through matter', 5, 2, 30),
  ('Light Waves', 'Explore reflection, refraction, and absorption', 5, 3, 35),
  ('Waves in Communication', 'Design devices that use waves to send information', 5, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Earth''s Changing Surface' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Weathering', 'Learn how rock breaks down through weathering', 4, 1, 30),
  ('Erosion and Deposition', 'Understand how water, wind, and ice move sediment', 5, 2, 30),
  ('The Rock Cycle', 'Trace how rocks transform over time', 5, 3, 35),
  ('Natural Hazards', 'Study earthquakes, volcanoes, and floods', 5, 4, 35),
  ('Fossils', 'Learn how fossils form and what they tell us', 5, 5, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Structure and Function' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Body Systems', 'Learn how organ systems work together', 5, 1, 35),
  ('Plant Structures', 'Understand how plant parts help survival', 4, 2, 30),
  ('Animal Adaptations', 'Study structures that help animals survive', 5, 3, 30),
  ('Biomimicry', 'Design solutions inspired by nature', 5, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 4 READING/ELA
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 4, 'Reading Literature',
   'Analyze literary texts with increasing depth',
   1, '📖',
   '["Determine theme using story details", "Compare first and third person narration", "Analyze story structure", "Compare treatments of similar themes"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 4, 'Reading Informational Text',
   'Comprehend and evaluate complex nonfiction',
   2, '📰',
   '["Explain events and ideas in historical texts", "Describe text structure", "Integrate information from two texts", "Interpret information from visuals"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 4, 'Language Skills',
   'Master grammar, vocabulary, and conventions',
   3, '📝',
   '["Use relative pronouns and adverbs", "Form and use progressive verb tenses", "Use context clues and word parts", "Consult reference materials"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 4, 'Writing',
   'Produce clear writing for different purposes',
   4, '✍️',
   '["Write opinion pieces with supporting reasons", "Write informative texts with organization", "Write narratives with developed events", "Use technology to produce writing"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 4 Reading Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Theme Development', 'Determine theme and summarize the text', 5, 1, 35),
  ('Character and Setting', 'Describe characters, settings, and events in depth', 5, 2, 30),
  ('First vs Third Person', 'Compare first and third person points of view', 5, 3, 30),
  ('Comparing Themes', 'Compare themes across different texts', 6, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Explaining Historical Events', 'Explain events and concepts in historical texts', 5, 1, 35),
  ('Text Structure', 'Identify chronological, cause/effect, problem/solution structure', 5, 2, 35),
  ('Integrating Information', 'Combine information from multiple texts on a topic', 6, 3, 35),
  ('Visuals and Text', 'Interpret charts, graphs, diagrams, and timelines', 5, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Language Skills' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Pronouns', 'Use relative pronouns (who, whose, whom, which, that)', 5, 1, 25),
  ('Verb Tenses', 'Use progressive verb tenses correctly', 5, 2, 30),
  ('Context Clues', 'Use context to determine word and phrase meanings', 5, 3, 30),
  ('Reference Materials', 'Use glossaries and dictionaries to find meanings', 4, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Opinion Writing', 'Write organized opinions with supporting reasons', 5, 1, 40),
  ('Informative Writing', 'Write informational texts with clear organization', 5, 2, 40),
  ('Narrative Writing', 'Write narratives with character development and dialogue', 5, 3, 40),
  ('Research Writing', 'Conduct research and take notes from print and digital sources', 5, 4, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 4 SOCIAL STUDIES/HISTORY
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 4, 'State History',
   'Study the history of your state and region',
   1, '🏛️',
   '["Learn about Native American tribes in your region", "Study explorers and early settlers", "Understand state government", "Learn important events in state history"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 4, 'US Regions',
   'Compare the geographic regions of the United States',
   2, '🗺️',
   '["Identify the five US regions", "Compare landforms and climate", "Understand regional resources", "Study how geography affects communities"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 4, 'American Revolution',
   'Learn about the founding of the United States',
   3, '🔔',
   '["Understand causes of the Revolution", "Study key events and battles", "Learn about founding fathers", "Understand the Declaration of Independence"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 4, 'Economic Concepts',
   'Understand economics in the context of history',
   4, '💵',
   '["Understand specialization and trade", "Learn about economic regions", "Study how technology affects economy", "Understand economic systems"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 4 History Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'State History' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Native Americans in Your Region', 'Learn about the first peoples of your area', 4, 1, 35),
  ('Explorers and Settlement', 'Study how Europeans explored and settled your region', 5, 2, 35),
  ('State Government', 'Learn about your state''s government structure', 5, 3, 30),
  ('Important State Events', 'Study key events that shaped your state', 5, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'US Regions' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Northeast Region', 'Study the geography and culture of the Northeast', 4, 1, 30),
  ('Southeast Region', 'Study the geography and culture of the Southeast', 4, 2, 30),
  ('Midwest Region', 'Study the geography and culture of the Midwest', 4, 3, 30),
  ('Southwest Region', 'Study the geography and culture of the Southwest', 4, 4, 30),
  ('West Region', 'Study the geography and culture of the West', 4, 5, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'American Revolution' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Causes of the Revolution', 'Understand why colonists wanted independence', 5, 1, 35),
  ('Key Battles', 'Learn about Lexington, Concord, and other battles', 5, 2, 35),
  ('Founding Fathers', 'Study Washington, Jefferson, Franklin, and others', 5, 3, 35),
  ('Declaration of Independence', 'Understand the meaning of the Declaration', 5, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Economic Concepts' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Specialization', 'Understand why people and regions specialize', 4, 1, 25),
  ('Trade and Interdependence', 'Learn how regions depend on each other', 5, 2, 30),
  ('Technology and Economy', 'Study how inventions change economies', 5, 3, 30),
  ('Economic Systems', 'Compare market and command economies', 5, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 5 CURRICULUM
-- ============================================================================

-- GRADE 5 MATH
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Place Value and Decimals',
   'Understand the place value system and perform operations with decimals',
   1, '🔢',
   '["Understand place value to thousandths", "Read, write, and compare decimals", "Round decimals", "Add, subtract, multiply, and divide decimals"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Fraction Operations',
   'Add, subtract, multiply, and divide fractions',
   2, '🥧',
   '["Add and subtract fractions with unlike denominators", "Multiply fractions and mixed numbers", "Divide unit fractions and whole numbers", "Solve word problems with fractions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Algebraic Thinking',
   'Write and interpret numerical expressions and patterns',
   3, '📊',
   '["Write and evaluate expressions with parentheses", "Analyze patterns and relationships", "Graph ordered pairs", "Understand numerical patterns"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Measurement and Volume',
   'Understand concepts of volume and convert measurement units',
   4, '📦',
   '["Understand volume as attribute of solids", "Measure volume using unit cubes", "Find volume using formulas", "Convert measurement units"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Coordinate Plane',
   'Graph points and analyze patterns on the coordinate plane',
   5, '📈',
   '["Understand coordinate system", "Plot points on coordinate plane", "Represent real-world problems", "Identify patterns in coordinates"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 5, 'Geometry',
   'Classify two-dimensional figures by their properties',
   6, '📐',
   '["Classify quadrilaterals", "Understand hierarchy of shapes", "Use attributes to classify triangles", "Understand properties of 2D shapes"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 5 Math Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Place Value and Decimals' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Place Value Patterns', 'Understand that a digit is 10 times what it represents in the place to its right', 5, 1, 30),
  ('Reading and Writing Decimals', 'Read and write decimals to thousandths', 5, 2, 25),
  ('Comparing Decimals', 'Compare decimals to the thousandths place', 5, 3, 25),
  ('Adding and Subtracting Decimals', 'Add and subtract decimals to hundredths', 5, 4, 35),
  ('Multiplying Decimals', 'Multiply decimals using strategies', 6, 5, 35),
  ('Dividing Decimals', 'Divide decimals by whole numbers', 6, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Fraction Operations' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Adding Unlike Fractions', 'Add fractions with different denominators', 6, 1, 35),
  ('Subtracting Unlike Fractions', 'Subtract fractions with different denominators', 6, 2, 35),
  ('Multiplying Fractions', 'Multiply fractions by fractions', 6, 3, 35),
  ('Multiplying Mixed Numbers', 'Multiply mixed numbers and whole numbers', 6, 4, 35),
  ('Dividing with Unit Fractions', 'Divide unit fractions by whole numbers and vice versa', 6, 5, 35),
  ('Fraction Word Problems', 'Solve real-world problems with fraction operations', 6, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Algebraic Thinking' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Order of Operations', 'Evaluate expressions using order of operations', 5, 1, 30),
  ('Writing Expressions', 'Write expressions to represent word problems', 5, 2, 30),
  ('Analyzing Patterns', 'Identify and extend numerical patterns', 5, 3, 30),
  ('Graphing Patterns', 'Generate two numerical patterns and graph them', 6, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement and Volume' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Volume', 'Understand volume as the space inside a 3D shape', 5, 1, 30),
  ('Measuring Volume', 'Count unit cubes to find volume', 5, 2, 30),
  ('Volume Formulas', 'Use V = l × w × h to find volume', 6, 3, 35),
  ('Unit Conversion', 'Convert within the metric and customary systems', 5, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Coordinate Plane' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Coordinate System', 'Understand the x-axis, y-axis, and origin', 5, 1, 30),
  ('Plotting Points', 'Plot ordered pairs on the coordinate plane', 5, 2, 30),
  ('Interpreting Graphs', 'Solve problems using coordinate plane data', 6, 3, 35),
  ('Patterns on Graphs', 'Identify relationships from graphed points', 6, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Classifying Quadrilaterals', 'Classify quadrilaterals based on properties', 5, 1, 30),
  ('Properties of Triangles', 'Classify triangles by sides and angles', 5, 2, 30),
  ('Shape Hierarchy', 'Understand how shapes relate to each other', 6, 3, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 5 SCIENCE (NGSS)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 5, 'Matter and Its Interactions',
   'Investigate the properties and changes of matter',
   1, '⚗️',
   '["Develop a model of particles of matter", "Measure and compare properties of matter", "Investigate physical and chemical changes", "Identify substances by properties"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 5, 'Earth''s Systems',
   'Understand the interactions among Earth''s systems',
   2, '🌊',
   '["Describe the hydrosphere, atmosphere, geosphere, biosphere", "Model water cycle", "Analyze human impact on Earth systems", "Study natural processes"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 5, 'Space Systems',
   'Explore patterns in the sky and Earth''s place in the universe',
   3, '🌌',
   '["Explain day and night patterns", "Analyze moon phase patterns", "Study Earth''s orbit and seasons", "Model the solar system"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 5, 'Ecosystems',
   'Explore how energy flows through ecosystems',
   4, '🌿',
   '["Trace energy from sun to organisms", "Model matter cycling in ecosystems", "Understand decomposition", "Analyze ecosystem interactions"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 5 Science Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Matter and Its Interactions' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Particle Model of Matter', 'Understand matter is made of tiny particles', 5, 1, 35),
  ('Properties of Matter', 'Identify matter by properties like density and solubility', 5, 2, 35),
  ('Physical Changes', 'Explore changes that don''t create new substances', 5, 3, 35),
  ('Chemical Changes', 'Investigate changes that create new substances', 6, 4, 40),
  ('Conservation of Matter', 'Learn that matter is conserved in reactions', 6, 5, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Earth''s Systems' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Earth''s Spheres', 'Learn about hydrosphere, atmosphere, geosphere, biosphere', 5, 1, 35),
  ('The Water Cycle', 'Model how water moves through Earth''s systems', 5, 2, 35),
  ('Interactions Between Systems', 'Study how Earth''s systems affect each other', 6, 3, 40),
  ('Human Impact', 'Analyze how people affect Earth''s systems', 6, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Space Systems' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Day and Night', 'Understand Earth''s rotation causes day and night', 5, 1, 30),
  ('Moon Phases', 'Explain the changing appearance of the moon', 5, 2, 35),
  ('Earth''s Seasons', 'Learn how Earth''s tilt causes seasons', 6, 3, 40),
  ('The Solar System', 'Explore the sun, planets, and other objects', 5, 4, 35),
  ('Gravity in Space', 'Understand how gravity affects objects in space', 6, 5, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Ecosystems' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Energy in Ecosystems', 'Trace energy from the sun through living things', 5, 1, 35),
  ('Food Webs', 'Model complex feeding relationships', 6, 2, 40),
  ('Matter Cycling', 'Understand how matter cycles through ecosystems', 6, 3, 40),
  ('Decomposers', 'Learn the role of decomposers in ecosystems', 5, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 5 READING/ELA
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 5, 'Reading Literature',
   'Analyze literary texts with sophistication',
   1, '📖',
   '["Quote accurately from text", "Determine theme from details", "Compare and contrast characters and settings", "Analyze how chapters contribute to structure"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 5, 'Reading Informational Text',
   'Analyze and evaluate complex nonfiction',
   2, '📰',
   '["Explain relationships in scientific texts", "Analyze multiple accounts of events", "Integrate information from several texts", "Explain author purpose and point of view"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 5, 'Language and Vocabulary',
   'Develop sophisticated vocabulary and language skills',
   3, '📝',
   '["Use perfect verb tenses", "Expand and combine sentences", "Use context and word parts for meaning", "Interpret figurative language"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 5, 'Writing',
   'Produce well-organized writing with strong support',
   4, '✍️',
   '["Write opinion pieces with logically ordered reasons", "Write informative texts with clear structure", "Write narratives with developed plot", "Use evidence from research"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 5 Reading Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Using Text Evidence', 'Quote accurately when explaining text', 5, 1, 30),
  ('Theme and Summary', 'Determine theme and summarize the text', 6, 2, 35),
  ('Comparing Characters', 'Compare and contrast characters across texts', 6, 3, 35),
  ('Story Structure', 'Analyze how chapters and scenes build on each other', 6, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Scientific and Historical Texts', 'Explain relationships and interactions in technical texts', 6, 1, 40),
  ('Multiple Accounts', 'Analyze multiple accounts of the same event', 6, 2, 35),
  ('Integrating Information', 'Combine information from multiple sources', 6, 3, 40),
  ('Author Point of View', 'Analyze how point of view influences text', 6, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Language and Vocabulary' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Perfect Verb Tenses', 'Use past, present, and future perfect tenses', 5, 1, 30),
  ('Sentence Combining', 'Expand and combine sentences for variety', 5, 2, 30),
  ('Context and Word Parts', 'Use context clues and word parts for meaning', 5, 3, 30),
  ('Figurative Language', 'Interpret similes, metaphors, and idioms', 6, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Opinion Essays', 'Write opinion pieces with logically grouped supporting points', 6, 1, 45),
  ('Informative Essays', 'Write informational texts with clear organization', 6, 2, 45),
  ('Narrative Writing', 'Write narratives with developed events and dialogue', 6, 3, 45),
  ('Research Projects', 'Conduct research using multiple sources', 6, 4, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 5 SOCIAL STUDIES/HISTORY
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 5, 'Colonization to Revolution',
   'Study the American colonies and path to independence',
   1, '⛵',
   '["Understand reasons for European colonization", "Compare colonial regions", "Analyze causes of the Revolution", "Study the Declaration of Independence"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 5, 'Building a New Nation',
   'Learn about the formation of the United States government',
   2, '📜',
   '["Understand the Constitution", "Learn about the Bill of Rights", "Study the three branches of government", "Analyze checks and balances"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 5, 'Westward Expansion',
   'Study how the United States expanded across the continent',
   3, '🤠',
   '["Understand Manifest Destiny", "Study the Louisiana Purchase", "Learn about pioneers and westward trails", "Analyze impact on Native Americans"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 5, 'Civil War and Reconstruction',
   'Learn about the causes and effects of the Civil War',
   4, '⚔️',
   '["Understand causes of the Civil War", "Study key events and battles", "Learn about Abraham Lincoln", "Analyze Reconstruction"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 5 History Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Colonization to Revolution' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('European Exploration', 'Study why Europeans explored and colonized the Americas', 5, 1, 35),
  ('The Thirteen Colonies', 'Compare New England, Middle, and Southern colonies', 5, 2, 40),
  ('Road to Revolution', 'Analyze events leading to the American Revolution', 6, 3, 40),
  ('The Declaration of Independence', 'Study the meaning and importance of the Declaration', 6, 4, 35),
  ('Revolutionary War', 'Learn about key battles and people', 6, 5, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Building a New Nation' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Constitution', 'Learn about the creation and structure of the Constitution', 6, 1, 40),
  ('The Bill of Rights', 'Study the first ten amendments', 6, 2, 35),
  ('Three Branches', 'Understand legislative, executive, and judicial branches', 6, 3, 40),
  ('Checks and Balances', 'Analyze how branches limit each other''s power', 6, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Westward Expansion' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Manifest Destiny', 'Understand the belief in expanding across the continent', 5, 1, 35),
  ('Louisiana Purchase', 'Study how the US doubled in size', 5, 2, 35),
  ('Pioneer Life', 'Learn about pioneers and westward trails', 5, 3, 35),
  ('Impact on Native Americans', 'Analyze the effects of expansion on indigenous peoples', 6, 4, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Civil War and Reconstruction' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Causes of the Civil War', 'Understand slavery, states'' rights, and sectional differences', 6, 1, 40),
  ('Key Battles and Leaders', 'Study Gettysburg, Sherman''s March, and military leaders', 6, 2, 40),
  ('Abraham Lincoln', 'Learn about Lincoln and the Emancipation Proclamation', 6, 3, 35),
  ('Reconstruction', 'Analyze the post-war period and its challenges', 6, 4, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Grades 3-5 Curriculum
-- ============================================================================
-- Grade 3: 18 units, ~85 topics
-- Grade 4: 18 units, ~90 topics
-- Grade 5: 18 units, ~90 topics
-- Total: 54 units, ~265 topics across Grades 3-5
-- ============================================================================
