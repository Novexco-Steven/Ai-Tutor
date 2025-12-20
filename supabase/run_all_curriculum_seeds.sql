-- Migration: Seed Grade 7 Curriculum Data
-- Comprehensive curriculum for Math, Science, English/Reading, and History

-- ============================================================================
-- GRADE 7 MATHEMATICS CURRICULUM
-- Based on Common Core / State Standards
-- ============================================================================

-- Math Units
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'The Number System',
   'Master operations with integers and rational numbers, including negative numbers and conversions',
   1, '🔢',
   '["Add and subtract integers fluently", "Multiply and divide rational numbers", "Convert between fractions, decimals, and percents", "Understand absolute value and distance from zero"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Ratios and Proportional Relationships',
   'Analyze proportional relationships and use them to solve real-world problems',
   2, '⚖️',
   '["Compute unit rates with complex fractions", "Determine proportional relationships from tables and graphs", "Apply proportions to scale drawings", "Solve multi-step percent problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Expressions and Equations',
   'Use algebra to write, simplify, and solve expressions and equations',
   3, '🧮',
   '["Simplify expressions using distributive property", "Solve two-step linear equations", "Write and solve inequalities", "Model real-world situations with algebra"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Geometry',
   'Explore properties of geometric figures including circles, angles, and 3D shapes',
   4, '📐',
   '["Calculate circumference and area of circles", "Solve angle relationship problems", "Find surface area and volume of prisms", "Perform geometric transformations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Statistics and Probability',
   'Analyze data distributions and develop probability models',
   5, '📊',
   '["Calculate and interpret mean, median, mode", "Draw inferences from random samples", "Find theoretical and experimental probability", "Create and analyze data displays"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 7, 'Financial Literacy',
   'Apply mathematical concepts to personal finance and budgeting',
   6, '💰',
   '["Create and manage budgets", "Calculate simple interest", "Compare financial options", "Understand income and expenses"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Math Topics
-- Unit 1: The Number System
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'The Number System' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Integer Operations', 'Add, subtract, multiply, and divide positive and negative integers', 5, 1, 25),
  ('Rational Number Operations', 'Perform operations with fractions and decimals, including negatives', 6, 2, 30),
  ('Fraction-Decimal-Percent Conversions', 'Convert fluently between fractions, decimals, and percentages', 5, 3, 20),
  ('Absolute Value', 'Understand absolute value as distance from zero on the number line', 5, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 2: Ratios and Proportional Relationships
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Ratios and Proportional Relationships' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Unit Rates', 'Calculate and compare unit rates, including complex fractions', 5, 1, 25),
  ('Proportions', 'Set up and solve proportion equations to find unknown values', 6, 2, 30),
  ('Scale Drawings', 'Use scale factors to find actual lengths and areas', 6, 3, 25),
  ('Percent Problems', 'Solve tax, tip, markup, discount, and percent change problems', 6, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 3: Expressions and Equations
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Expressions and Equations' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Simplifying Expressions', 'Combine like terms and use the distributive property', 5, 1, 25),
  ('Solving Two-Step Equations', 'Solve equations in the form px + q = r', 6, 2, 30),
  ('Writing Equations', 'Translate word problems into algebraic equations', 6, 3, 25),
  ('Solving Inequalities', 'Solve and graph one-step and two-step inequalities', 6, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 4: Geometry
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Circles: Circumference and Area', 'Calculate circumference and area using pi', 5, 1, 25),
  ('Angle Relationships', 'Solve for unknown angles using supplementary, complementary, and vertical angles', 6, 2, 30),
  ('Surface Area and Volume', 'Find surface area and volume of prisms and cylinders', 7, 3, 35),
  ('Geometric Transformations', 'Perform rotations, reflections, and translations on the coordinate plane', 6, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 5: Statistics and Probability
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Statistics and Probability' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Measures of Center', 'Calculate and compare mean, median, and mode', 5, 1, 25),
  ('Data Variability', 'Find range and understand how outliers affect data', 5, 2, 25),
  ('Probability Basics', 'Calculate theoretical and experimental probability', 6, 3, 30),
  ('Compound Events', 'Find probability of compound events using lists, tables, and tree diagrams', 7, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 6: Financial Literacy
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Financial Literacy' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Budgeting Basics', 'Create and balance a personal budget', 4, 1, 25),
  ('Simple Interest', 'Calculate interest earned and owed using I = prt', 5, 2, 25),
  ('Comparing Costs', 'Use unit prices and ratios to make smart purchasing decisions', 5, 3, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 7 SCIENCE CURRICULUM
-- ============================================================================

-- Science Units
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 7, 'Life Science: Cells and Organisms',
   'Explore the structure and function of cells, body systems, and ecosystems',
   1, '🧬',
   '["Identify cell structures and their functions", "Compare plant and animal cells", "Understand how body systems work together", "Analyze ecosystem interactions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 7, 'Earth Science: Our Dynamic Planet',
   'Study Earth''s structure, weather patterns, and natural resources',
   2, '🌍',
   '["Describe Earth''s layers and plate tectonics", "Explain weather and climate patterns", "Understand the rock cycle", "Evaluate natural resource use"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 7, 'Physical Science: Matter and Energy',
   'Investigate properties of matter, forces, motion, and energy transfer',
   3, '⚡',
   '["Classify matter by properties", "Describe chemical and physical changes", "Apply Newton''s laws of motion", "Trace energy transformations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 7, 'Scientific Inquiry',
   'Develop skills in the scientific method, experimentation, and data analysis',
   4, '🔬',
   '["Design controlled experiments", "Collect and analyze data", "Draw evidence-based conclusions", "Communicate findings effectively"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Science Topics
-- Unit 1: Life Science
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Life Science: Cells and Organisms' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Cell Structure and Function', 'Learn about organelles and their roles in plant and animal cells', 5, 1, 30),
  ('Cell Division', 'Understand mitosis, meiosis, and cell reproduction', 6, 2, 30),
  ('Human Body Systems', 'Explore how digestive, circulatory, and respiratory systems interact', 6, 3, 35),
  ('Ecosystems and Food Webs', 'Analyze energy flow and relationships in ecosystems', 5, 4, 30),
  ('Genetics Basics', 'Introduction to heredity, DNA, and traits', 6, 5, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 2: Earth Science
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Earth Science: Our Dynamic Planet' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Earth''s Structure', 'Explore the layers of Earth from crust to core', 5, 1, 25),
  ('Plate Tectonics', 'Understand how continental drift shapes our world', 6, 2, 30),
  ('Weather vs. Climate', 'Distinguish between weather patterns and long-term climate', 5, 3, 25),
  ('The Rock Cycle', 'Trace the formation of igneous, sedimentary, and metamorphic rocks', 5, 4, 25),
  ('Natural Resources', 'Evaluate renewable and non-renewable resources', 5, 5, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 3: Physical Science
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Physical Science: Matter and Energy' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Properties of Matter', 'Classify matter by physical and chemical properties', 5, 1, 25),
  ('Chemical Reactions', 'Identify signs of chemical change and balance simple equations', 6, 2, 30),
  ('Forces and Motion', 'Apply Newton''s three laws to real-world situations', 6, 3, 30),
  ('Energy Transformations', 'Trace how energy changes form in different systems', 6, 4, 30),
  ('Waves and Sound', 'Explore properties of mechanical and electromagnetic waves', 6, 5, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 4: Scientific Inquiry
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Scientific Inquiry' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Scientific Method', 'Design experiments with hypothesis, variables, and controls', 5, 1, 25),
  ('Data Collection and Analysis', 'Create tables, graphs, and interpret results', 5, 2, 25),
  ('Drawing Conclusions', 'Make evidence-based conclusions and identify sources of error', 5, 3, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 7 ENGLISH/READING CURRICULUM
-- ============================================================================

-- Reading Units
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 7, 'Literary Analysis',
   'Analyze literature for theme, character development, and author''s craft',
   1, '📖',
   '["Identify and analyze themes across texts", "Analyze character development and motivation", "Understand point of view and its effects", "Analyze figurative language and literary devices"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 7, 'Informational Text',
   'Comprehend and evaluate nonfiction texts, arguments, and evidence',
   2, '📰',
   '["Identify central ideas and supporting details", "Evaluate arguments and claims", "Analyze text structure and organization", "Synthesize information from multiple sources"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 7, 'Writing Skills',
   'Develop strong argumentative, narrative, and expository writing',
   3, '✍️',
   '["Write clear argumentative essays with evidence", "Craft engaging narratives with dialogue", "Conduct and cite research properly", "Revise for clarity and coherence"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 7, 'Language and Grammar',
   'Master grammar, vocabulary, and language conventions',
   4, '🔤',
   '["Use correct sentence structure and punctuation", "Expand vocabulary through context and roots", "Apply standard grammar conventions", "Choose precise words for audience and purpose"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Reading Topics
-- Unit 1: Literary Analysis
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Literary Analysis' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Theme and Central Idea', 'Identify themes and trace their development throughout a text', 5, 1, 30),
  ('Character Analysis', 'Analyze how characters change and what motivates them', 6, 2, 30),
  ('Point of View', 'Compare first-person, third-person limited, and omniscient narration', 5, 3, 25),
  ('Figurative Language', 'Identify and interpret similes, metaphors, personification, and more', 5, 4, 25),
  ('Plot Structure', 'Analyze exposition, rising action, climax, and resolution', 5, 5, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 2: Informational Text
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Informational Text' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Central Ideas and Details', 'Identify main ideas and supporting evidence in nonfiction', 5, 1, 25),
  ('Evaluating Arguments', 'Assess the strength of claims, reasons, and evidence', 6, 2, 30),
  ('Text Structure', 'Recognize cause/effect, compare/contrast, and problem/solution patterns', 5, 3, 25),
  ('Analyzing Media', 'Compare how different media present the same topic', 6, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 3: Writing Skills
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing Skills' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Argumentative Writing', 'Write persuasive essays with clear claims and evidence', 6, 1, 35),
  ('Narrative Writing', 'Craft stories with vivid details, dialogue, and pacing', 6, 2, 35),
  ('Research Skills', 'Find, evaluate, and cite sources properly', 6, 3, 30),
  ('Revision and Editing', 'Improve drafts for clarity, organization, and conventions', 5, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 4: Language and Grammar
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Language and Grammar' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Sentence Structure', 'Write varied sentence types: simple, compound, complex', 5, 1, 25),
  ('Punctuation Mastery', 'Use commas, semicolons, and dashes correctly', 5, 2, 25),
  ('Vocabulary in Context', 'Use context clues, roots, and affixes to determine meaning', 5, 3, 25),
  ('Word Choice', 'Select precise words for tone, audience, and purpose', 5, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 7 HISTORY/SOCIAL STUDIES CURRICULUM
-- ============================================================================

-- History Units
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 7, 'Ancient Civilizations',
   'Explore the rise and fall of major ancient civilizations',
   1, '🏛️',
   '["Trace human development from early humans to agricultural societies", "Analyze ancient Egyptian achievements", "Compare Greek democracy and Roman republic", "Evaluate contributions of ancient civilizations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 7, 'Medieval World',
   'Study the Middle Ages, feudalism, and the path to the Renaissance',
   2, '⚔️',
   '["Understand the structure of feudal society", "Analyze the role of the Church in medieval life", "Trace the causes and effects of the Crusades", "Explain the transition to the Renaissance"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 7, 'Geography and Culture',
   'Develop geographic literacy and understand human-environment interaction',
   3, '🗺️',
   '["Read and interpret various types of maps", "Analyze how geography shapes civilizations", "Understand cultural diffusion and exchange", "Evaluate economic systems and trade"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 7, 'Civics and Government',
   'Learn about government systems, citizenship, and civic participation',
   4, '🏛️',
   '["Compare different forms of government", "Understand rights and responsibilities of citizens", "Analyze the role of laws in society", "Evaluate civic participation methods"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- History Topics
-- Unit 1: Ancient Civilizations
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Ancient Civilizations' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Early Humans', 'Trace human migration and the development of early societies', 5, 1, 25),
  ('Ancient Mesopotamia', 'Explore the cradle of civilization and early innovations', 5, 2, 30),
  ('Ancient Egypt', 'Study the Nile civilization, pharaohs, and pyramids', 5, 3, 30),
  ('Ancient Greece', 'Analyze Greek democracy, philosophy, and achievements', 6, 4, 35),
  ('Ancient Rome', 'Understand the Roman Republic, Empire, and legacy', 6, 5, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 2: Medieval World
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Medieval World' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Fall of Rome', 'Analyze the causes and effects of Rome''s decline', 6, 1, 25),
  ('Feudalism', 'Understand the social hierarchy of medieval Europe', 5, 2, 30),
  ('The Medieval Church', 'Explore the role of religion in medieval society', 5, 3, 25),
  ('The Crusades', 'Examine causes, events, and effects of the Crusades', 6, 4, 30),
  ('The Renaissance', 'Discover the rebirth of art, learning, and humanism', 6, 5, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 3: Geography and Culture
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Geography and Culture' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Map Skills', 'Read and interpret political, physical, and thematic maps', 4, 1, 25),
  ('Geography and Civilization', 'Analyze how geography shaped ancient societies', 5, 2, 25),
  ('Trade Routes', 'Trace the Silk Road and other major trade networks', 5, 3, 30),
  ('Cultural Exchange', 'Understand how ideas and innovations spread between cultures', 5, 4, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Unit 4: Civics and Government
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Civics and Government' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Forms of Government', 'Compare democracy, monarchy, oligarchy, and tyranny', 5, 1, 25),
  ('Rights and Responsibilities', 'Understand the duties and privileges of citizenship', 5, 2, 25),
  ('Laws and Justice', 'Explore how legal systems develop and function', 5, 3, 25),
  ('Civic Participation', 'Learn ways citizens can participate in government', 4, 4, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Grade 7 Curriculum now includes:
--
-- MATH (6 units, 19 topics):
--   - The Number System (4 topics)
--   - Ratios and Proportional Relationships (4 topics)
--   - Expressions and Equations (4 topics)
--   - Geometry (4 topics)
--   - Statistics and Probability (4 topics)
--   - Financial Literacy (3 topics)
--
-- SCIENCE (4 units, 18 topics):
--   - Life Science: Cells and Organisms (5 topics)
--   - Earth Science: Our Dynamic Planet (5 topics)
--   - Physical Science: Matter and Energy (5 topics)
--   - Scientific Inquiry (3 topics)
--
-- READING/ENGLISH (4 units, 17 topics):
--   - Literary Analysis (5 topics)
--   - Informational Text (4 topics)
--   - Writing Skills (4 topics)
--   - Language and Grammar (4 topics)
--
-- HISTORY (4 units, 18 topics):
--   - Ancient Civilizations (5 topics)
--   - Medieval World (5 topics)
--   - Geography and Culture (4 topics)
--   - Civics and Government (4 topics)
--
-- TOTAL: 18 units, 72 topics
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
-- ============================================================================
-- GRADE 6-8 MIDDLE SCHOOL CURRICULUM SEED DATA
-- Based on Common Core State Standards, NGSS, and NCSS Frameworks
-- Note: Grade 7 curriculum already exists in 20241219_seed_grade7_curriculum.sql
-- ============================================================================

-- ============================================================================
-- GRADE 6 CURRICULUM
-- ============================================================================

-- GRADE 6 MATH UNITS
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 6, 'Ratios and Proportional Relationships',
   'Understanding ratios and using ratio reasoning to solve problems', 1, '📊',
   '["Understand ratio concepts and use ratio language", "Use ratio reasoning to solve real-world problems", "Find unit rates associated with ratios", "Use tables and graphs to analyze proportional relationships"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 6, 'The Number System',
   'Extending number operations to include fractions and negative numbers', 2, '🔢',
   '["Divide fractions by fractions", "Compute fluently with multi-digit numbers and decimals", "Apply operations with positive and negative numbers", "Find greatest common factor and least common multiple"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 6, 'Expressions and Equations',
   'Writing and evaluating expressions, solving one-step equations', 3, '✖️',
   '["Write and evaluate numerical expressions with exponents", "Write and evaluate algebraic expressions", "Generate equivalent expressions", "Solve one-variable equations and inequalities"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 6, 'Geometry',
   'Area, surface area, and volume of geometric shapes', 4, '📐',
   '["Find area of triangles, quadrilaterals, and polygons", "Find volume with fractional edge lengths", "Draw polygons in the coordinate plane", "Represent 3D figures using nets"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 6, 'Statistics and Probability',
   'Statistical variability and summarizing data distributions', 5, '📈',
   '["Recognize statistical questions", "Describe data distributions using center, spread, and shape", "Display data in dot plots, histograms, and box plots", "Summarize numerical data sets"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 6 Math Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Ratios and Proportional Relationships' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Understanding Ratios', 'Learn what ratios are and how to express them in different forms', 1, 1, 25),
  ('Equivalent Ratios', 'Find and create equivalent ratios using tables and multiplication', 1, 2, 25),
  ('Unit Rates', 'Calculate unit rates and use them to solve problems', 2, 3, 30),
  ('Ratio Tables and Graphs', 'Represent ratio relationships using tables and coordinate graphs', 2, 4, 30),
  ('Percent as a Rate', 'Understand percent as a rate per 100', 2, 5, 25),
  ('Solving Percent Problems', 'Find the whole given a part and the percent', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'The Number System' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Dividing Fractions', 'Divide fractions by fractions using visual models and algorithms', 2, 1, 35),
  ('Multi-Digit Division', 'Use standard algorithm for multi-digit division', 2, 2, 30),
  ('Decimal Operations', 'Add, subtract, multiply, and divide decimals fluently', 2, 3, 35),
  ('Greatest Common Factor', 'Find GCF using factor trees and listing', 2, 4, 25),
  ('Least Common Multiple', 'Find LCM and apply to real-world problems', 2, 5, 25),
  ('Introduction to Integers', 'Understand positive and negative numbers on a number line', 1, 6, 25),
  ('Ordering and Comparing Integers', 'Order and compare rational numbers including negatives', 2, 7, 25),
  ('Absolute Value', 'Understand and interpret absolute value', 2, 8, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Expressions and Equations' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Exponents', 'Write and evaluate expressions involving whole-number exponents', 2, 1, 25),
  ('Order of Operations', 'Evaluate expressions using the correct order of operations', 2, 2, 30),
  ('Writing Algebraic Expressions', 'Translate verbal phrases into algebraic expressions', 2, 3, 25),
  ('Evaluating Expressions', 'Substitute values and evaluate algebraic expressions', 2, 4, 25),
  ('Equivalent Expressions', 'Apply properties to generate equivalent expressions', 2, 5, 30),
  ('Solving Addition and Subtraction Equations', 'Solve one-step equations using inverse operations', 2, 6, 30),
  ('Solving Multiplication and Division Equations', 'Solve one-step equations with multiplication and division', 2, 7, 30),
  ('Writing and Graphing Inequalities', 'Represent constraints using inequalities and number lines', 2, 8, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Area of Triangles', 'Find area of triangles using base and height', 2, 1, 25),
  ('Area of Quadrilaterals', 'Find area of parallelograms, trapezoids, and other quadrilaterals', 2, 2, 30),
  ('Area of Composite Figures', 'Decompose figures to find total area', 2, 3, 30),
  ('Polygons in the Coordinate Plane', 'Draw and find perimeter of polygons using coordinates', 2, 4, 30),
  ('Nets and Surface Area', 'Represent 3D figures with nets and find surface area', 2, 5, 35),
  ('Volume of Rectangular Prisms', 'Find volume of prisms with fractional dimensions', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Statistics and Probability' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Statistical Questions', 'Recognize and write statistical questions', 1, 1, 20),
  ('Measures of Center', 'Calculate mean, median, and mode', 2, 2, 30),
  ('Measures of Variability', 'Calculate range, interquartile range, and MAD', 2, 3, 30),
  ('Dot Plots and Histograms', 'Create and interpret dot plots and histograms', 2, 4, 30),
  ('Box Plots', 'Create and interpret box plots', 2, 5, 30),
  ('Describing Data Distributions', 'Describe overall shape and summarize data sets', 2, 6, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 6 SCIENCE UNITS
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 6, 'Earth''s Systems',
   'Understanding Earth''s interconnected systems and processes', 1, '🌍',
   '["Explain the role of water in Earth''s surface processes", "Describe the cycling of matter in Earth''s systems", "Analyze weather and climate patterns", "Understand the effects of global climate change"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 6, 'Structure and Properties of Matter',
   'Understanding atoms, molecules, and states of matter', 2, '⚛️',
   '["Develop models to describe atomic structure", "Distinguish between elements, compounds, and mixtures", "Explain properties of solids, liquids, and gases", "Analyze how temperature affects particle motion"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 6, 'Ecosystems and Interactions',
   'How organisms interact with each other and their environment', 3, '🌿',
   '["Analyze roles of organisms in food webs", "Trace matter and energy through ecosystems", "Evaluate effects of resource availability", "Predict ecosystem changes from environmental disruptions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 6, 'Space Systems',
   'Earth''s place in the solar system and universe', 4, '🚀',
   '["Develop models of the Earth-Sun-Moon system", "Analyze data on Earth''s seasons and Moon phases", "Describe the scale of the solar system", "Explain gravity''s role in celestial motion"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 6 Science Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Earth''s Systems' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Water Cycle', 'How water moves through Earth''s systems', 1, 1, 30),
  ('Weathering and Erosion', 'How Earth''s surface changes over time', 2, 2, 35),
  ('Rock Cycle', 'Formation and transformation of different rock types', 2, 3, 35),
  ('Atmosphere and Weather', 'How atmospheric conditions create weather', 2, 4, 35),
  ('Climate Zones', 'Major climate regions and what determines them', 2, 5, 30),
  ('Human Impact on Earth Systems', 'How human activities affect Earth''s processes', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Structure and Properties of Matter' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Atoms and Molecules', 'Building blocks of all matter', 2, 1, 35),
  ('Elements and the Periodic Table', 'Organization of elements and their properties', 2, 2, 35),
  ('Compounds and Mixtures', 'How substances combine in different ways', 2, 3, 30),
  ('States of Matter', 'Solids, liquids, gases, and their properties', 2, 4, 30),
  ('Phase Changes', 'How matter changes from one state to another', 2, 5, 30),
  ('Physical vs Chemical Changes', 'Distinguishing between types of changes in matter', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Ecosystems and Interactions' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Food Chains and Food Webs', 'How energy flows through ecosystems', 1, 1, 30),
  ('Producers, Consumers, and Decomposers', 'Roles of different organisms in ecosystems', 2, 2, 30),
  ('Energy Pyramids', 'How energy decreases through trophic levels', 2, 3, 30),
  ('Cycles in Nature', 'Carbon, nitrogen, and other biogeochemical cycles', 2, 4, 35),
  ('Biodiversity', 'Importance of species diversity in ecosystems', 2, 5, 30),
  ('Ecosystem Disruptions', 'How changes affect ecosystem balance', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Space Systems' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Solar System', 'Structure and components of our solar system', 1, 1, 35),
  ('Earth''s Rotation and Revolution', 'How Earth''s movements create days and years', 2, 2, 30),
  ('Seasons', 'Why Earth experiences different seasons', 2, 3, 30),
  ('Moon Phases and Eclipses', 'Lunar cycles and eclipse phenomena', 2, 4, 35),
  ('Gravity and Orbits', 'How gravity keeps objects in orbit', 2, 5, 30),
  ('Stars and Galaxies', 'Our Sun, other stars, and the Milky Way', 2, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 6 READING/ELA UNITS
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 6, 'Reading Literature',
   'Analyzing and understanding literary texts', 1, '📖',
   '["Cite textual evidence to support analysis", "Determine theme and how it develops", "Describe how plot unfolds and characters respond", "Analyze how point of view creates effects"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 6, 'Reading Informational Text',
   'Comprehending and analyzing nonfiction texts', 2, '📰',
   '["Determine central ideas and summarize", "Analyze how key individuals or ideas are developed", "Determine meaning of academic vocabulary", "Trace and evaluate arguments and claims"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 6, 'Writing',
   'Developing different types of written compositions', 3, '✍️',
   '["Write arguments with clear claims and evidence", "Write informative texts to examine topics", "Write narratives with effective techniques", "Use technology to produce and publish writing"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 6, 'Language and Grammar',
   'Mastering conventions of standard English', 4, '🔤',
   '["Use pronouns correctly in case and number", "Recognize and correct inappropriate shifts in pronoun", "Use punctuation to set off nonrestrictive elements", "Maintain consistent style and tone"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 6 Reading Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Citing Textual Evidence', 'Using evidence from text to support analysis', 2, 1, 30),
  ('Theme Development', 'Identifying and tracing themes in stories', 2, 2, 35),
  ('Plot Structure', 'Understanding exposition, rising action, climax, and resolution', 2, 3, 30),
  ('Character Analysis', 'Analyzing character traits, motivations, and changes', 2, 4, 30),
  ('Point of View', 'First person, third person, and their effects', 2, 5, 30),
  ('Figurative Language', 'Understanding metaphors, similes, and personification', 2, 6, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Central Ideas and Summaries', 'Finding main ideas and summarizing texts', 2, 1, 30),
  ('Text Structure', 'Chronological, compare/contrast, cause/effect patterns', 2, 2, 30),
  ('Author''s Purpose', 'Identifying why authors write texts', 2, 3, 25),
  ('Analyzing Arguments', 'Evaluating claims, evidence, and reasoning', 2, 4, 35),
  ('Integrating Information', 'Combining information from multiple sources', 2, 5, 30),
  ('Academic Vocabulary', 'Understanding domain-specific words and phrases', 2, 6, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Argumentative Writing', 'Writing persuasive essays with claims and evidence', 2, 1, 40),
  ('Informative Writing', 'Explaining topics clearly with facts and details', 2, 2, 40),
  ('Narrative Writing', 'Writing stories with plot, characters, and dialogue', 2, 3, 40),
  ('Research Skills', 'Gathering and organizing information from sources', 2, 4, 35),
  ('Revising and Editing', 'Improving writing through revision', 2, 5, 30),
  ('Using Evidence', 'Incorporating quotes and paraphrasing effectively', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Language and Grammar' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Pronouns', 'Subject, object, possessive, and relative pronouns', 2, 1, 25),
  ('Intensive Pronouns', 'Using myself, yourself, and other intensive pronouns', 2, 2, 20),
  ('Sentence Variety', 'Writing simple, compound, and complex sentences', 2, 3, 30),
  ('Punctuation', 'Commas, semicolons, and dashes for clarity', 2, 4, 30),
  ('Spelling Patterns', 'Common spelling rules and exceptions', 1, 5, 25),
  ('Style and Tone', 'Choosing words to match purpose and audience', 2, 6, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 6 HISTORY/SOCIAL STUDIES UNITS
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 6, 'Ancient Civilizations',
   'Exploring the earliest human societies and their achievements', 1, '🏛️',
   '["Analyze the development of early civilizations", "Compare and contrast ancient societies", "Evaluate contributions of ancient peoples to modern life", "Understand the impact of geography on civilization"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 6, 'Classical Greece and Rome',
   'The foundations of Western civilization', 2, '🏺',
   '["Analyze the development of democracy in Athens", "Compare Greek city-states", "Trace the rise and fall of the Roman Empire", "Evaluate lasting Greek and Roman contributions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 6, 'World Religions',
   'Understanding major belief systems and their impact', 3, '🕊️',
   '["Compare the origins and beliefs of major religions", "Analyze how religions spread across regions", "Evaluate the influence of religion on culture and society", "Understand religious tolerance and diversity"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 6, 'Geography Skills',
   'Understanding maps, regions, and human-environment interaction', 4, '🗺️',
   '["Use geographic tools and technology", "Analyze physical and political maps", "Understand regions and their characteristics", "Evaluate human impact on the environment"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 6 History Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Ancient Civilizations' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Early Humans and Agriculture', 'From hunters to farmers - the Neolithic Revolution', 1, 1, 30),
  ('Mesopotamia', 'The cradle of civilization between two rivers', 2, 2, 35),
  ('Ancient Egypt', 'Pharaohs, pyramids, and the Nile River', 2, 3, 35),
  ('Ancient India', 'Indus Valley civilization and early Indian culture', 2, 4, 35),
  ('Ancient China', 'Dynasties, philosophies, and inventions', 2, 5, 35),
  ('Ancient Americas', 'Maya, Aztec, and Inca civilizations', 2, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Classical Greece and Rome' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Geography of Ancient Greece', 'How mountains and seas shaped Greek civilization', 1, 1, 25),
  ('Athens and Democracy', 'Birth of democratic government', 2, 2, 35),
  ('Sparta', 'The warrior city-state', 2, 3, 30),
  ('Greek Philosophy and Culture', 'Socrates, Plato, Aristotle, and Greek arts', 2, 4, 35),
  ('Roman Republic', 'From monarchy to republic', 2, 5, 35),
  ('Roman Empire', 'Expansion, achievements, and eventual decline', 2, 6, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'World Religions' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Judaism', 'Origins, beliefs, and historical importance', 2, 1, 30),
  ('Christianity', 'From Jesus to a world religion', 2, 2, 30),
  ('Islam', 'The life of Muhammad and Islamic civilization', 2, 3, 30),
  ('Hinduism', 'Ancient traditions of India', 2, 4, 30),
  ('Buddhism', 'The Buddha and the spread of Buddhism', 2, 5, 30),
  ('Religious Interactions', 'Trade, conflict, and cultural exchange', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Geography Skills' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Map Skills', 'Reading and interpreting different types of maps', 1, 1, 30),
  ('Latitude and Longitude', 'Using coordinates to locate places', 2, 2, 25),
  ('World Regions', 'Physical and cultural regions of the world', 2, 3, 35),
  ('Physical Geography', 'Landforms, climate, and natural resources', 2, 4, 30),
  ('Human Geography', 'Population, culture, and economic activities', 2, 5, 30),
  ('Environmental Issues', 'Conservation and sustainability', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 8 CURRICULUM
-- ============================================================================

-- GRADE 8 MATH UNITS
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'The Number System',
   'Understanding irrational numbers and the real number system', 1, '🔢',
   '["Know that numbers that are not rational are irrational", "Approximate irrational numbers", "Use rational approximations to compare numbers", "Classify real numbers"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Expressions and Equations',
   'Working with exponents, radicals, and linear equations', 2, '✖️',
   '["Apply integer exponent properties", "Use square and cube roots", "Understand scientific notation", "Solve linear equations in one variable"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Functions',
   'Understanding functions and their representations', 3, '📊',
   '["Understand that a function is a rule", "Compare properties of functions", "Interpret equations as functions", "Analyze functions from multiple representations"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Geometry',
   'Transformations, congruence, similarity, and the Pythagorean theorem', 4, '📐',
   '["Understand congruence through transformations", "Understand similarity through transformations", "Apply the Pythagorean theorem", "Solve problems involving volume of cylinders, cones, and spheres"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 8, 'Statistics and Probability',
   'Bivariate data, scatter plots, and two-way tables', 5, '📈',
   '["Construct and interpret scatter plots", "Use equations of linear models", "Understand patterns of association in bivariate data", "Interpret two-way frequency tables"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 8 Math Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'The Number System' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Rational Numbers', 'Understanding and working with rational numbers', 2, 1, 25),
  ('Irrational Numbers', 'Introduction to numbers like pi and square roots', 2, 2, 30),
  ('The Real Number System', 'Classifying numbers as rational or irrational', 2, 3, 25),
  ('Approximating Square Roots', 'Estimating square roots of non-perfect squares', 2, 4, 30),
  ('Comparing Real Numbers', 'Ordering and comparing rational and irrational numbers', 2, 5, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Expressions and Equations' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Integer Exponents', 'Properties of exponents with integer powers', 2, 1, 30),
  ('Square Roots and Cube Roots', 'Understanding and evaluating roots', 2, 2, 30),
  ('Scientific Notation', 'Writing very large and small numbers', 2, 3, 30),
  ('Operations with Scientific Notation', 'Computing with numbers in scientific notation', 2, 4, 30),
  ('Solving Linear Equations', 'Multi-step equations with variables on both sides', 3, 5, 35),
  ('Equations with Special Solutions', 'Equations with no solution or infinite solutions', 3, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Functions' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Introduction to Functions', 'What makes a relation a function', 2, 1, 30),
  ('Function Notation', 'Using f(x) notation', 2, 2, 25),
  ('Linear Functions', 'Understanding y = mx + b', 2, 3, 35),
  ('Rate of Change and Slope', 'Finding and interpreting slope', 2, 4, 35),
  ('Comparing Functions', 'Comparing functions in different forms', 3, 5, 30),
  ('Nonlinear Functions', 'Introduction to quadratic and exponential patterns', 3, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Transformations', 'Translations, reflections, and rotations', 2, 1, 35),
  ('Congruence', 'Understanding congruent figures through transformations', 2, 2, 30),
  ('Dilations and Similarity', 'Scale factors and similar figures', 2, 3, 35),
  ('Angle Relationships', 'Parallel lines, transversals, and angle sums', 2, 4, 30),
  ('Pythagorean Theorem', 'Understanding and applying a² + b² = c²', 2, 5, 40),
  ('Distance and Midpoint', 'Finding distances in the coordinate plane', 3, 6, 30),
  ('Volume of 3D Shapes', 'Cylinders, cones, and spheres', 2, 7, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Statistics and Probability' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Scatter Plots', 'Creating and interpreting scatter plots', 2, 1, 30),
  ('Trend Lines', 'Drawing and using lines of best fit', 2, 2, 30),
  ('Linear Models', 'Using equations to model data relationships', 3, 3, 35),
  ('Two-Way Tables', 'Organizing and analyzing categorical data', 2, 4, 30),
  ('Associations in Data', 'Identifying patterns in bivariate data', 2, 5, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 8 SCIENCE UNITS
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 8, 'Forces and Motion',
   'Understanding Newton''s laws and motion concepts', 1, '🎯',
   '["Apply Newton''s laws to predict motion", "Plan investigations using speed and velocity", "Analyze factors affecting gravitational force", "Design solutions using principles of motion"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 8, 'Energy',
   'Forms of energy, energy transfer, and conservation', 2, '⚡',
   '["Calculate kinetic and potential energy", "Apply conservation of energy", "Analyze energy transformations", "Evaluate efficiency of energy systems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 8, 'Waves and Electromagnetic Spectrum',
   'Properties of waves and light', 3, '🌊',
   '["Use mathematical representations of wave properties", "Develop models of wave behavior", "Integrate information about the EM spectrum", "Evaluate technologies that use waves"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 8, 'Heredity and Genetics',
   'Understanding inheritance and genetic variation', 4, '🧬',
   '["Develop models of chromosome inheritance", "Analyze data on trait distributions", "Make predictions about inherited traits", "Explain sources of genetic variation"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 8 Science Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Forces and Motion' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Speed and Velocity', 'Calculating speed and understanding velocity', 2, 1, 35),
  ('Acceleration', 'Understanding changes in velocity over time', 2, 2, 35),
  ('Newton''s First Law', 'Inertia and balanced forces', 2, 3, 30),
  ('Newton''s Second Law', 'Force equals mass times acceleration', 2, 4, 35),
  ('Newton''s Third Law', 'Action and reaction forces', 2, 5, 30),
  ('Gravity and Weight', 'Gravitational force and its effects', 2, 6, 30),
  ('Friction', 'Types of friction and their effects', 2, 7, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Energy' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Kinetic Energy', 'Energy of motion', 2, 1, 30),
  ('Potential Energy', 'Stored energy - gravitational and elastic', 2, 2, 30),
  ('Conservation of Energy', 'Energy cannot be created or destroyed', 2, 3, 35),
  ('Energy Transformations', 'How energy changes form', 2, 4, 30),
  ('Heat Transfer', 'Conduction, convection, and radiation', 2, 5, 35),
  ('Renewable and Nonrenewable Energy', 'Energy sources and sustainability', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Waves and Electromagnetic Spectrum' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Wave Properties', 'Amplitude, wavelength, and frequency', 2, 1, 35),
  ('Types of Waves', 'Mechanical vs electromagnetic, transverse vs longitudinal', 2, 2, 30),
  ('Sound Waves', 'How sound travels and its properties', 2, 3, 30),
  ('Light and the EM Spectrum', 'The electromagnetic spectrum explained', 2, 4, 35),
  ('Reflection and Refraction', 'How waves bounce and bend', 2, 5, 30),
  ('Wave Technologies', 'Applications of waves in technology', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Heredity and Genetics' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('DNA Structure', 'The double helix and genetic information', 2, 1, 35),
  ('Genes and Chromosomes', 'How genetic information is organized', 2, 2, 30),
  ('Cell Division', 'Mitosis and meiosis', 3, 3, 40),
  ('Mendelian Genetics', 'Dominant, recessive, and Punnett squares', 2, 4, 35),
  ('Genetic Variation', 'Mutations and sources of diversity', 2, 5, 35),
  ('Biotechnology', 'Genetic engineering and its applications', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 8 READING/ELA UNITS
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 8, 'Reading Literature',
   'Advanced literary analysis and interpretation', 1, '📖',
   '["Analyze how dialogue propels action", "Compare modern works to traditional themes", "Analyze point of view and irony", "Evaluate multiple interpretations of a text"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 8, 'Reading Informational Text',
   'Critical analysis of nonfiction and arguments', 2, '📰',
   '["Analyze structure of paragraphs and sections", "Determine author''s point of view and purpose", "Evaluate reasoning and evidence in arguments", "Analyze conflicting information from sources"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 8, 'Writing',
   'Developing sophisticated written arguments and narratives', 3, '✍️',
   '["Write arguments with counterarguments", "Write informative texts with complex ideas", "Develop narratives with multiple plot lines", "Conduct short research projects"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 8, 'Language and Grammar',
   'Advanced grammar and vocabulary development', 4, '🔤',
   '["Use verbs in active and passive voice", "Recognize and correct inappropriate shifts", "Use punctuation for effect", "Understand word relationships and nuances"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 8 Reading Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Dialogue and Pacing', 'How dialogue and incidents propel action', 2, 1, 35),
  ('Comparing Traditional and Modern Texts', 'Allusions and adaptations of classic works', 3, 2, 40),
  ('Dramatic Irony and Suspense', 'How authors create tension through perspective', 2, 3, 35),
  ('Analyzing Film Adaptations', 'Comparing written works to film versions', 2, 4, 35),
  ('Multiple Interpretations', 'Different readings of the same text', 3, 5, 35),
  ('Theme Across Genres', 'How themes appear in different text types', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Analyzing Text Structure', 'How paragraphs and sections develop ideas', 2, 1, 30),
  ('Author''s Point of View', 'Identifying and analyzing author''s perspective', 2, 2, 30),
  ('Evaluating Arguments', 'Assessing claims, evidence, and reasoning', 3, 3, 35),
  ('Conflicting Sources', 'Analyzing disagreements between sources', 3, 4, 35),
  ('Primary and Secondary Sources', 'Distinguishing and using different source types', 2, 5, 30),
  ('Media Literacy', 'Evaluating information in digital media', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Advanced Argumentative Writing', 'Addressing counterarguments and rebuttals', 3, 1, 45),
  ('Research Papers', 'Extended research and synthesis', 3, 2, 50),
  ('Complex Narratives', 'Multiple plot lines and character development', 3, 3, 45),
  ('Synthesizing Sources', 'Combining information from multiple sources', 3, 4, 40),
  ('Writing Style', 'Developing voice and sophisticated style', 2, 5, 35),
  ('Peer Review', 'Giving and receiving constructive feedback', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Language and Grammar' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Active and Passive Voice', 'Understanding and using voice effectively', 2, 1, 25),
  ('Verbals', 'Gerunds, participles, and infinitives', 3, 2, 30),
  ('Mood and Conditional Sentences', 'Indicative, imperative, interrogative, conditional', 3, 3, 30),
  ('Advanced Punctuation', 'Ellipsis, dash, and other advanced punctuation', 2, 4, 25),
  ('Word Relationships', 'Analogies, connotations, and denotations', 2, 5, 25),
  ('Domain-Specific Vocabulary', 'Academic and technical vocabulary', 2, 6, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 8 HISTORY/SOCIAL STUDIES UNITS
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 8, 'American Revolution and New Nation',
   'The birth of the United States', 1, '🗽',
   '["Analyze causes of the American Revolution", "Evaluate key documents of the founding era", "Compare perspectives of different groups", "Understand the creation of the Constitution"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 8, 'Growth and Expansion',
   'The young nation grows and changes', 2, '🌎',
   '["Trace westward expansion and its effects", "Analyze the impact of the Industrial Revolution", "Evaluate reform movements of the era", "Understand sectionalism and its causes"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 8, 'Civil War and Reconstruction',
   'America''s greatest crisis and its aftermath', 3, '⚔️',
   '["Analyze causes and effects of the Civil War", "Evaluate military and political leadership", "Understand Reconstruction policies and their impact", "Assess the long-term effects of the war"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 8, 'Civics and Government',
   'Understanding American government and citizenship', 4, '🏛️',
   '["Explain the structure of federal government", "Analyze the system of checks and balances", "Understand rights and responsibilities of citizens", "Evaluate the role of citizens in democracy"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 8 History Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'American Revolution and New Nation' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Causes of the Revolution', 'Taxes, representation, and colonial grievances', 2, 1, 35),
  ('Declaration of Independence', 'Ideas of natural rights and self-government', 2, 2, 35),
  ('Revolutionary War', 'Key battles and turning points', 2, 3, 40),
  ('Articles of Confederation', 'First attempt at government and its weaknesses', 2, 4, 30),
  ('Constitutional Convention', 'Compromises and debates in creating the Constitution', 3, 5, 40),
  ('The Bill of Rights', 'Protecting individual freedoms', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Growth and Expansion' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Westward Expansion', 'Louisiana Purchase, Lewis and Clark, Manifest Destiny', 2, 1, 40),
  ('Industrial Revolution', 'Factories, inventions, and changing economy', 2, 2, 35),
  ('Immigration', 'New Americans and their contributions', 2, 3, 30),
  ('Reform Movements', 'Abolition, women''s rights, education reform', 2, 4, 35),
  ('Native American Removal', 'Trail of Tears and displacement policies', 2, 5, 35),
  ('Sectionalism', 'Growing differences between North and South', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Civil War and Reconstruction' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Causes of the Civil War', 'Slavery, states'' rights, and secession', 2, 1, 40),
  ('North vs South', 'Comparing resources, strategies, and advantages', 2, 2, 35),
  ('Key Battles', 'Gettysburg, Antietam, and other turning points', 2, 3, 40),
  ('Emancipation Proclamation', 'Freeing the enslaved and changing the war', 2, 4, 35),
  ('Reconstruction Plans', 'Lincoln, Johnson, and Congressional Reconstruction', 3, 5, 35),
  ('End of Reconstruction', 'Jim Crow and the unfulfilled promises', 3, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Civics and Government' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Three Branches of Government', 'Executive, legislative, and judicial branches', 2, 1, 35),
  ('Checks and Balances', 'How branches limit each other''s power', 2, 2, 30),
  ('Federalism', 'Division of power between federal and state government', 2, 3, 30),
  ('Constitutional Amendments', 'How the Constitution changes over time', 2, 4, 35),
  ('Rights and Responsibilities', 'Civic duties and citizen participation', 2, 5, 30),
  ('Elections and Voting', 'The democratic process and voter participation', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;
-- ============================================================================
-- GRADE 9-12 HIGH SCHOOL CURRICULUM SEED DATA
-- Based on Common Core State Standards and typical high school course sequences
-- Grade 9: Algebra I, Physical Science, English 9, World Geography
-- Grade 10: Geometry, Biology, English 10, World History
-- Grade 11: Algebra II, Chemistry, American Literature, U.S. History
-- Grade 12: Pre-Calculus, Physics, British Literature, Government/Economics
-- ============================================================================

-- ============================================================================
-- GRADE 9 CURRICULUM
-- ============================================================================

-- GRADE 9 MATH UNITS (Algebra I)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Relationships Between Quantities',
   'Understanding units, quantities, and algebraic reasoning', 1, '📐',
   '["Interpret structure of expressions", "Create equations to describe relationships", "Use units as a way to understand problems", "Choose and interpret units consistently"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Linear Equations and Inequalities',
   'Solving and graphing linear equations and inequalities', 2, '📊',
   '["Solve linear equations in one variable", "Solve linear inequalities", "Solve compound inequalities", "Apply equations to real-world problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Linear Functions and Their Graphs',
   'Understanding and graphing linear relationships', 3, '📈',
   '["Graph linear functions", "Write equations in slope-intercept and point-slope form", "Interpret slope and intercepts in context", "Model with linear functions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Systems of Equations',
   'Solving systems of linear equations', 4, '🔗',
   '["Solve systems by graphing", "Solve systems by substitution", "Solve systems by elimination", "Apply systems to real-world problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 9, 'Exponential Functions and Sequences',
   'Understanding exponential growth and decay', 5, '📉',
   '["Recognize exponential patterns", "Write and evaluate exponential functions", "Compare linear and exponential growth", "Model real-world exponential situations"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 9 Math Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Relationships Between Quantities' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Units and Dimensional Analysis', 'Using units to guide problem solving', 2, 1, 30),
  ('Algebraic Expressions', 'Parts of expressions and their meanings', 2, 2, 30),
  ('Creating Equations', 'Translating real-world situations into equations', 2, 3, 35),
  ('Formulas and Literal Equations', 'Rearranging formulas to solve for variables', 3, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Linear Equations and Inequalities' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Multi-Step Equations', 'Solving equations with variables on both sides', 2, 1, 35),
  ('Equations with Special Cases', 'No solution, infinite solutions, and identity equations', 3, 2, 30),
  ('Solving Linear Inequalities', 'Solving and graphing one-variable inequalities', 2, 3, 35),
  ('Compound Inequalities', 'Solving and graphing compound inequalities', 3, 4, 35),
  ('Absolute Value Equations', 'Solving equations with absolute value', 3, 5, 35),
  ('Absolute Value Inequalities', 'Solving inequalities with absolute value', 3, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Linear Functions and Their Graphs' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Introduction to Functions', 'Domain, range, and function notation', 2, 1, 35),
  ('Graphing Linear Equations', 'Plotting points and drawing lines', 2, 2, 30),
  ('Slope', 'Finding and interpreting slope', 2, 3, 35),
  ('Slope-Intercept Form', 'y = mx + b and its applications', 2, 4, 35),
  ('Point-Slope Form', 'Writing equations through points', 3, 5, 30),
  ('Standard Form', 'Ax + By = C and conversions', 2, 6, 30),
  ('Parallel and Perpendicular Lines', 'Relationships between line slopes', 3, 7, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Systems of Equations' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Introduction to Systems', 'What systems of equations represent', 2, 1, 25),
  ('Solving by Graphing', 'Finding intersection points graphically', 2, 2, 35),
  ('Solving by Substitution', 'Algebraic method using substitution', 3, 3, 40),
  ('Solving by Elimination', 'Algebraic method using elimination', 3, 4, 40),
  ('Special Systems', 'No solution and infinite solutions', 3, 5, 30),
  ('Systems Word Problems', 'Applying systems to real situations', 3, 6, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Exponential Functions and Sequences' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Arithmetic Sequences', 'Patterns with common differences', 2, 1, 30),
  ('Geometric Sequences', 'Patterns with common ratios', 2, 2, 30),
  ('Exponential Functions', 'Understanding f(x) = a * b^x', 3, 3, 35),
  ('Exponential Growth', 'Population, compound interest, appreciation', 3, 4, 35),
  ('Exponential Decay', 'Depreciation, half-life, decay models', 3, 5, 35),
  ('Linear vs Exponential', 'Comparing growth patterns', 3, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 9 SCIENCE UNITS (Physical Science)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 9, 'Matter and Its Properties',
   'Understanding the structure and properties of matter', 1, '⚗️',
   '["Distinguish between physical and chemical properties", "Classify matter as elements, compounds, or mixtures", "Use the periodic table to predict properties", "Explain atomic structure"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 9, 'Chemical Reactions',
   'Understanding how substances change chemically', 2, '🧪',
   '["Balance chemical equations", "Identify types of chemical reactions", "Predict products of reactions", "Apply conservation of mass"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 9, 'Forces and Motion',
   'Understanding Newton''s laws and motion', 3, '🚀',
   '["Calculate speed, velocity, and acceleration", "Apply Newton''s three laws", "Analyze forces in equilibrium", "Solve problems involving momentum"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 9, 'Energy',
   'Forms of energy and energy transformations', 4, '⚡',
   '["Calculate kinetic and potential energy", "Apply conservation of energy", "Analyze work and power", "Understand thermal energy and heat transfer"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 9 Science Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Matter and Its Properties' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Classification of Matter', 'Elements, compounds, mixtures, and solutions', 2, 1, 35),
  ('Atomic Structure', 'Protons, neutrons, electrons, and atomic models', 2, 2, 40),
  ('The Periodic Table', 'Organization and trends in the periodic table', 2, 3, 40),
  ('Chemical Bonding', 'Ionic, covalent, and metallic bonds', 3, 4, 45),
  ('Physical Properties', 'Density, melting point, boiling point', 2, 5, 35),
  ('Chemical Properties', 'Reactivity and chemical changes', 2, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Chemical Reactions' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Evidence of Chemical Reactions', 'Signs that a reaction has occurred', 2, 1, 30),
  ('Writing Chemical Equations', 'Representing reactions symbolically', 2, 2, 35),
  ('Balancing Equations', 'Applying conservation of mass', 3, 3, 40),
  ('Types of Reactions', 'Synthesis, decomposition, single/double replacement', 3, 4, 40),
  ('Acids and Bases', 'pH, neutralization, and applications', 2, 5, 35),
  ('Reaction Rates', 'Factors affecting how fast reactions occur', 2, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Forces and Motion' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Describing Motion', 'Position, distance, displacement, and speed', 2, 1, 35),
  ('Velocity and Acceleration', 'Vector quantities and rate of change', 3, 2, 40),
  ('Newton''s Laws', 'Inertia, F=ma, action-reaction', 3, 3, 45),
  ('Types of Forces', 'Gravity, friction, normal, tension', 3, 4, 35),
  ('Free Body Diagrams', 'Representing forces graphically', 3, 5, 35),
  ('Momentum and Collisions', 'Conservation of momentum', 3, 6, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Energy' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Work and Power', 'Calculating work and power', 3, 1, 35),
  ('Kinetic Energy', 'Energy of motion and its calculations', 3, 2, 35),
  ('Potential Energy', 'Gravitational and elastic potential energy', 3, 3, 35),
  ('Conservation of Energy', 'Energy transformations and conservation', 3, 4, 40),
  ('Simple Machines', 'Mechanical advantage and efficiency', 2, 5, 35),
  ('Thermal Energy', 'Heat transfer and temperature', 2, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 9 READING/ELA UNITS (English 9)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 9, 'Literary Analysis',
   'Analyzing literature through critical reading', 1, '📚',
   '["Analyze how authors develop themes", "Analyze complex characters", "Determine the impact of word choices", "Analyze structure and point of view"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 9, 'Informational Text',
   'Critical reading of nonfiction', 2, '📰',
   '["Analyze seminal U.S. documents", "Delineate and evaluate arguments", "Analyze purpose and rhetoric", "Integrate multiple sources of information"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 9, 'Writing',
   'Developing essay writing skills', 3, '✍️',
   '["Write arguments with valid reasoning", "Write informative/explanatory texts", "Write narratives", "Conduct research and cite sources"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 9, 'Language Skills',
   'Mastering grammar, usage, and vocabulary', 4, '🔤',
   '["Use parallel structure", "Use various types of phrases and clauses", "Determine meaning of unknown words", "Interpret figures of speech"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 9 Reading Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Literary Analysis' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Theme Analysis', 'Identifying and analyzing themes in literature', 3, 1, 40),
  ('Character Development', 'Analyzing how characters change and grow', 2, 2, 35),
  ('Literary Devices', 'Symbolism, imagery, irony, and their effects', 3, 3, 40),
  ('Point of View Analysis', 'How perspective shapes narrative', 2, 4, 35),
  ('Analyzing Poetry', 'Form, structure, and meaning in poems', 3, 5, 40),
  ('Drama and Plays', 'Analyzing dramatic texts and performances', 2, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Informational Text' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Analyzing Arguments', 'Identifying claims, evidence, and reasoning', 3, 1, 40),
  ('Rhetorical Analysis', 'Ethos, pathos, logos in speeches and essays', 3, 2, 45),
  ('Foundational Documents', 'Analyzing historical American texts', 3, 3, 40),
  ('Comparing Sources', 'Synthesizing information from multiple texts', 3, 4, 40),
  ('Author''s Purpose and Bias', 'Recognizing intent and perspective', 2, 5, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Writing Process', 'Prewriting, drafting, revising, editing', 2, 1, 35),
  ('Argumentative Essays', 'Building logical arguments with evidence', 3, 2, 50),
  ('Literary Analysis Essays', 'Writing about literature effectively', 3, 3, 50),
  ('Research Writing', 'Conducting research and integrating sources', 3, 4, 50),
  ('Narrative Writing', 'Developing engaging narratives', 2, 5, 40),
  ('MLA Citation', 'Properly citing sources in MLA format', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Language Skills' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Sentence Structure', 'Complex and compound-complex sentences', 2, 1, 30),
  ('Phrases and Clauses', 'Using phrases and clauses effectively', 3, 2, 35),
  ('Parallel Structure', 'Creating balanced and effective sentences', 2, 3, 30),
  ('Vocabulary Strategies', 'Context clues, roots, and word analysis', 2, 4, 30),
  ('Figurative Language', 'Analyzing and using figurative language', 2, 5, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 9 HISTORY UNITS (World Geography)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 9, 'Physical Geography',
   'Understanding Earth''s physical features and systems', 1, '🌍',
   '["Analyze physical processes that shape Earth", "Interpret different types of maps", "Understand climate systems", "Evaluate human-environment interaction"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 9, 'Human Geography',
   'Understanding human systems and cultures', 2, '👥',
   '["Analyze population patterns and migration", "Compare cultural characteristics", "Evaluate economic systems", "Understand urbanization"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 9, 'World Regions',
   'Studying major world regions', 3, '🗺️',
   '["Compare physical and human characteristics of regions", "Analyze regional conflicts and cooperation", "Evaluate globalization''s impact", "Understand regional interdependence"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 9, 'Global Issues',
   'Understanding worldwide challenges', 4, '🌐',
   '["Analyze causes and effects of globalization", "Evaluate sustainable development", "Understand global conflicts", "Assess international cooperation"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 9 History Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Physical Geography' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Map Skills and Tools', 'GIS, GPS, and geographic tools', 2, 1, 35),
  ('Landforms and Processes', 'Plate tectonics, erosion, and landform creation', 2, 2, 40),
  ('Climate and Weather', 'Climate zones and weather patterns', 2, 3, 35),
  ('Natural Resources', 'Types of resources and their distribution', 2, 4, 35),
  ('Environmental Issues', 'Climate change, pollution, conservation', 2, 5, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Human Geography' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Population Geography', 'Demographics, migration, and population patterns', 2, 1, 40),
  ('Cultural Geography', 'Language, religion, and cultural diffusion', 2, 2, 40),
  ('Economic Geography', 'Economic systems and development', 2, 3, 35),
  ('Political Geography', 'Borders, nations, and political systems', 2, 4, 35),
  ('Urban Geography', 'Cities, urbanization, and development', 2, 5, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'World Regions' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('North America', 'Geography, culture, and economy', 2, 1, 40),
  ('Latin America', 'Diversity and development in Central/South America', 2, 2, 40),
  ('Europe', 'Historical and modern Europe', 2, 3, 40),
  ('Africa', 'African geography, cultures, and challenges', 2, 4, 40),
  ('Asia', 'The world''s largest and most diverse continent', 2, 5, 45),
  ('Oceania', 'Australia, New Zealand, and Pacific islands', 2, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Global Issues' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Globalization', 'Interconnectedness of the modern world', 2, 1, 35),
  ('Sustainable Development', 'Balancing growth and environment', 2, 2, 35),
  ('Global Conflicts', 'Causes and effects of international conflicts', 3, 3, 40),
  ('International Organizations', 'UN, NATO, and other global bodies', 2, 4, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 10 CURRICULUM
-- ============================================================================

-- GRADE 10 MATH UNITS (Geometry)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Foundations of Geometry',
   'Basic concepts and reasoning in geometry', 1, '📐',
   '["Use geometric definitions and postulates", "Make conjectures and write proofs", "Understand parallel and perpendicular lines", "Apply angle relationships"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Triangle Congruence',
   'Proving triangles congruent', 2, '🔺',
   '["Apply triangle congruence criteria (SSS, SAS, ASA, AAS)", "Use CPCTC in proofs", "Prove properties of isosceles triangles", "Apply triangle inequalities"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Similarity',
   'Understanding and applying similarity', 3, '📏',
   '["Apply similarity criteria (AA, SAS~, SSS~)", "Use proportions with similar figures", "Apply properties of dilations", "Use similarity in real-world problems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Right Triangles and Trigonometry',
   'Pythagorean theorem and trigonometric ratios', 4, '📊',
   '["Apply the Pythagorean theorem", "Define and use trigonometric ratios", "Solve problems using trig", "Apply the Laws of Sines and Cosines"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 10, 'Circles and Measurement',
   'Properties of circles and 3D measurement', 5, '⭕',
   '["Apply circle theorems", "Find arc lengths and sector areas", "Calculate surface area and volume", "Apply geometric modeling"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 10 Math Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Foundations of Geometry' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Points, Lines, and Planes', 'Basic geometric terms and notation', 2, 1, 30),
  ('Measuring Segments and Angles', 'Using rulers and protractors, angle types', 2, 2, 30),
  ('Inductive and Deductive Reasoning', 'Making conjectures and logical arguments', 3, 3, 35),
  ('Introduction to Proofs', 'Two-column and paragraph proofs', 3, 4, 40),
  ('Parallel Lines and Transversals', 'Angle relationships with parallel lines', 2, 5, 35),
  ('Proving Lines Parallel', 'Using angle relationships to prove parallelism', 3, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Triangle Congruence' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Classifying Triangles', 'By sides and angles', 2, 1, 25),
  ('Triangle Sum Theorem', 'Interior and exterior angle relationships', 2, 2, 30),
  ('SSS and SAS Congruence', 'Proving congruence with sides and angles', 3, 3, 40),
  ('ASA and AAS Congruence', 'Additional triangle congruence criteria', 3, 4, 40),
  ('CPCTC', 'Corresponding Parts of Congruent Triangles', 3, 5, 35),
  ('Isosceles and Equilateral Triangles', 'Special triangle properties', 2, 6, 35),
  ('Triangle Inequality', 'Relationships between sides and angles', 2, 7, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Similarity' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Ratios and Proportions', 'Solving proportions and using ratios', 2, 1, 30),
  ('Similar Polygons', 'Properties of similar figures', 2, 2, 35),
  ('AA Similarity', 'Proving triangles similar using angles', 3, 3, 35),
  ('SSS and SAS Similarity', 'Additional similarity criteria', 3, 4, 35),
  ('Dilations', 'Scale factors and dilations', 3, 5, 35),
  ('Similarity in Right Triangles', 'Geometric mean relationships', 3, 6, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Right Triangles and Trigonometry' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Pythagorean Theorem', 'Applications and proofs of a² + b² = c²', 2, 1, 35),
  ('Pythagorean Theorem Converse', 'Determining right triangles', 2, 2, 30),
  ('Special Right Triangles', '45-45-90 and 30-60-90 triangles', 3, 3, 40),
  ('Trigonometric Ratios', 'Sine, cosine, and tangent', 3, 4, 45),
  ('Solving Right Triangles', 'Finding missing sides and angles', 3, 5, 40),
  ('Angles of Elevation and Depression', 'Real-world trig applications', 3, 6, 35),
  ('Law of Sines', 'Solving oblique triangles', 3, 7, 40),
  ('Law of Cosines', 'Solving oblique triangles when SSS or SAS', 3, 8, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Circles and Measurement' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Parts of a Circle', 'Chords, secants, tangents, arcs', 2, 1, 30),
  ('Circle Theorems', 'Inscribed angles, central angles, chords', 3, 2, 40),
  ('Arc Length and Sector Area', 'Calculating parts of circles', 3, 3, 35),
  ('Equations of Circles', 'Standard form and graphing circles', 3, 4, 35),
  ('Surface Area', 'Prisms, cylinders, pyramids, cones, spheres', 3, 5, 45),
  ('Volume', 'Volume formulas for 3D shapes', 3, 6, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 10 SCIENCE UNITS (Biology)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 10, 'Cell Biology',
   'Structure and function of cells', 1, '🔬',
   '["Compare prokaryotic and eukaryotic cells", "Explain cell organelle functions", "Describe cell membrane structure", "Understand cell communication"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 10, 'Metabolism',
   'Energy and biochemical reactions in cells', 2, '⚡',
   '["Explain enzyme function", "Describe photosynthesis", "Explain cellular respiration", "Compare aerobic and anaerobic processes"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 10, 'Genetics',
   'DNA, genes, and inheritance', 3, '🧬',
   '["Describe DNA structure and replication", "Explain protein synthesis", "Apply Mendelian genetics", "Understand genetic engineering"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 10, 'Evolution',
   'The theory of evolution and evidence', 4, '🦎',
   '["Explain Darwin''s theory of natural selection", "Analyze evidence for evolution", "Understand speciation", "Apply population genetics"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 10, 'Ecology',
   'Organisms and their environments', 5, '🌿',
   '["Analyze ecosystem structure", "Explain energy flow and nutrient cycles", "Understand population dynamics", "Evaluate human environmental impact"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 10 Science Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Cell Biology' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Cell Theory and Discovery', 'History and principles of cell biology', 2, 1, 30),
  ('Prokaryotic vs Eukaryotic Cells', 'Comparing cell types', 2, 2, 35),
  ('Cell Organelles', 'Structure and function of organelles', 2, 3, 45),
  ('Cell Membrane', 'Fluid mosaic model and transport', 3, 4, 40),
  ('Cellular Transport', 'Passive and active transport mechanisms', 3, 5, 40),
  ('Cell Communication', 'How cells signal each other', 3, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Metabolism' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Enzymes', 'Biological catalysts and how they work', 3, 1, 40),
  ('ATP and Energy', 'The energy currency of cells', 3, 2, 35),
  ('Photosynthesis Overview', 'Light and Calvin cycle', 3, 3, 45),
  ('Cellular Respiration Overview', 'Glycolysis, Krebs cycle, ETC', 3, 4, 50),
  ('Fermentation', 'Anaerobic energy production', 2, 5, 35),
  ('Energy Flow in Ecosystems', 'How energy moves through life', 2, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Genetics' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('DNA Structure and Replication', 'Double helix and copying DNA', 3, 1, 45),
  ('RNA and Transcription', 'Making RNA from DNA', 3, 2, 40),
  ('Translation and Proteins', 'Making proteins from RNA', 3, 3, 40),
  ('Mutations', 'Types and effects of genetic changes', 2, 4, 35),
  ('Mendelian Genetics', 'Laws of inheritance and Punnett squares', 2, 5, 40),
  ('Complex Inheritance', 'Codominance, incomplete dominance, polygenic', 3, 6, 40),
  ('Genetic Engineering', 'DNA technology and applications', 3, 7, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Evolution' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Darwin and Natural Selection', 'Theory of evolution by natural selection', 2, 1, 40),
  ('Evidence for Evolution', 'Fossils, anatomy, molecules, biogeography', 2, 2, 45),
  ('Population Genetics', 'Gene pools and Hardy-Weinberg', 3, 3, 45),
  ('Mechanisms of Evolution', 'Genetic drift, gene flow, mutations', 3, 4, 40),
  ('Speciation', 'How new species form', 3, 5, 40),
  ('Human Evolution', 'Our evolutionary history', 2, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Ecology' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Levels of Organization', 'From individuals to the biosphere', 2, 1, 30),
  ('Energy Flow', 'Food webs and trophic levels', 2, 2, 35),
  ('Biogeochemical Cycles', 'Carbon, nitrogen, water cycles', 3, 3, 40),
  ('Population Ecology', 'Growth, regulation, and dynamics', 3, 4, 40),
  ('Community Ecology', 'Species interactions and succession', 2, 5, 35),
  ('Conservation Biology', 'Biodiversity and conservation efforts', 2, 6, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 10 READING/ELA UNITS (English 10 - World Literature)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 10, 'World Literature',
   'Exploring literature from around the world', 1, '🌍',
   '["Analyze themes across cultures", "Compare literary traditions", "Understand historical context", "Analyze archetypal patterns"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 10, 'Rhetoric and Argumentation',
   'Understanding and using persuasion', 2, '💬',
   '["Analyze rhetorical strategies", "Evaluate logical fallacies", "Construct sound arguments", "Analyze seminal speeches"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 10, 'Writing',
   'Advanced composition skills', 3, '✍️',
   '["Write synthesis essays", "Develop research projects", "Write literary criticism", "Master academic writing conventions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 10, 'Language',
   'Advanced language skills and vocabulary', 4, '🔤',
   '["Master complex sentence structures", "Expand academic vocabulary", "Understand language conventions", "Apply style guides"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 10 Reading Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'World Literature' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Epic Literature', 'Analyzing epics from various cultures', 3, 1, 45),
  ('Greek Drama', 'Tragedy and comedy in ancient Greece', 3, 2, 40),
  ('Shakespeare', 'Introduction to Shakespearean drama', 3, 3, 50),
  ('Global Perspectives', 'Literature from Africa, Asia, Latin America', 2, 4, 40),
  ('Archetypal Criticism', 'Universal patterns in literature', 3, 5, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Rhetoric and Argumentation' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Rhetorical Appeals', 'Ethos, pathos, logos in depth', 3, 1, 40),
  ('Logical Fallacies', 'Identifying flawed reasoning', 3, 2, 40),
  ('Analyzing Speeches', 'Famous speeches and their techniques', 3, 3, 40),
  ('Debate and Discussion', 'Formal argumentation skills', 3, 4, 35),
  ('Media Literacy', 'Analyzing persuasion in media', 2, 5, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Synthesis Writing', 'Combining multiple sources', 3, 1, 50),
  ('Research Papers', 'Extended research and writing', 3, 2, 60),
  ('Literary Criticism', 'Applying critical lenses to texts', 3, 3, 45),
  ('Comparative Essays', 'Comparing works across cultures', 3, 4, 45),
  ('Personal Narrative', 'Memoir and personal essay writing', 2, 5, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Language' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Complex Sentences', 'Advanced sentence construction', 3, 1, 30),
  ('Academic Vocabulary', 'Greek and Latin roots, academic terms', 2, 2, 30),
  ('Style and Tone', 'Adapting writing for audience and purpose', 2, 3, 30),
  ('Citation Formats', 'MLA and APA styles', 2, 4, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 10 HISTORY UNITS (World History)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 10, 'Foundations of Civilization',
   'Early civilizations and classical empires', 1, '🏛️',
   '["Analyze early human civilizations", "Compare classical empires", "Evaluate cultural achievements", "Understand rise and fall of empires"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 10, 'Medieval Period',
   'The Middle Ages across the world', 2, '🏰',
   '["Analyze feudal systems", "Understand religious influence on society", "Trace the rise of Islam", "Compare medieval civilizations globally"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 10, 'Early Modern Period',
   'Renaissance, Reformation, and global exploration', 3, '🗺️',
   '["Analyze the Renaissance and Reformation", "Evaluate effects of exploration", "Understand the Scientific Revolution", "Trace the development of nation-states"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 10, 'Modern Period',
   'Revolutions and the modern world', 4, '🌐',
   '["Analyze political and industrial revolutions", "Evaluate imperialism and nationalism", "Understand world wars and their effects", "Assess global developments since 1945"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 10 History Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Foundations of Civilization' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Prehistoric Humans', 'Human origins and early societies', 2, 1, 35),
  ('River Valley Civilizations', 'Mesopotamia, Egypt, India, China', 2, 2, 45),
  ('Classical Greece', 'Democracy, philosophy, and culture', 2, 3, 40),
  ('Roman Republic and Empire', 'Rise, achievements, and fall of Rome', 2, 4, 45),
  ('Classical India and China', 'Maurya, Gupta, Han, and Tang dynasties', 2, 5, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Medieval Period' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Feudal Europe', 'Feudalism, manorialism, and medieval society', 2, 1, 40),
  ('The Church in Medieval Europe', 'Power and influence of the Church', 2, 2, 35),
  ('Byzantine Empire', 'Eastern Rome and its legacy', 2, 3, 35),
  ('Rise of Islam', 'Muhammad, Islamic civilization, and expansion', 2, 4, 40),
  ('African Kingdoms', 'Mali, Songhai, Zimbabwe, and others', 2, 5, 35),
  ('Asian Civilizations', 'Mongols, Japanese feudalism, Southeast Asia', 2, 6, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Early Modern Period' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Renaissance', 'Rebirth of learning and culture', 2, 1, 40),
  ('The Reformation', 'Religious reform movements', 2, 2, 40),
  ('Age of Exploration', 'European exploration and its consequences', 2, 3, 45),
  ('Scientific Revolution', 'New ways of thinking about the natural world', 3, 4, 40),
  ('Absolute Monarchies', 'Centralized power in Europe', 2, 5, 35),
  ('The Enlightenment', 'Age of reason and new ideas about government', 3, 6, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Modern Period' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('French Revolution', 'Causes, events, and effects', 3, 1, 45),
  ('Industrial Revolution', 'Economic and social transformation', 2, 2, 40),
  ('Imperialism', 'European expansion and colonialism', 3, 3, 45),
  ('World War I', 'Causes, events, and aftermath', 3, 4, 45),
  ('World War II and Holocaust', 'Global conflict and genocide', 3, 5, 50),
  ('Cold War and Decolonization', 'Post-war world order', 3, 6, 40),
  ('Contemporary Issues', 'Globalization, terrorism, technology', 2, 7, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 11 CURRICULUM (Abbreviated - Key Units Only)
-- ============================================================================

-- GRADE 11 MATH UNITS (Algebra II)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Polynomial and Rational Functions',
   'Advanced work with polynomials and rationals', 1, '📊',
   '["Perform operations on polynomials", "Factor and solve polynomial equations", "Analyze polynomial functions", "Simplify and solve rational expressions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Quadratic Functions',
   'In-depth study of quadratic relationships', 2, '📈',
   '["Graph and analyze quadratic functions", "Solve quadratic equations multiple ways", "Use complex numbers", "Model with quadratic functions"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Exponential and Logarithmic Functions',
   'Inverse relationships and applications', 3, '📉',
   '["Graph exponential and logarithmic functions", "Apply properties of logarithms", "Solve exponential and logarithmic equations", "Model real-world phenomena"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 11, 'Sequences, Series, and Probability',
   'Patterns and counting principles', 4, '🎲',
   '["Use sequence formulas", "Calculate series sums", "Apply counting principles", "Calculate probabilities"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 11 Math Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Polynomial and Rational Functions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Polynomial Operations', 'Adding, subtracting, multiplying polynomials', 3, 1, 35),
  ('Factoring Polynomials', 'Factoring techniques for higher degree', 3, 2, 40),
  ('Polynomial Functions', 'Graphs, zeros, and end behavior', 3, 3, 45),
  ('Rational Expressions', 'Simplifying and operations', 3, 4, 40),
  ('Rational Equations', 'Solving equations with rational expressions', 3, 5, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Quadratic Functions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Quadratic Functions and Graphs', 'Vertex form, transformations, analysis', 3, 1, 40),
  ('Solving by Factoring', 'Factoring quadratics to find solutions', 2, 2, 35),
  ('Completing the Square', 'Method for solving and converting forms', 3, 3, 40),
  ('Quadratic Formula', 'Derivation and application', 3, 4, 35),
  ('Complex Numbers', 'Introduction to i and complex solutions', 3, 5, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Exponential and Logarithmic Functions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Exponential Functions', 'Graphs, transformations, and e', 3, 1, 40),
  ('Introduction to Logarithms', 'Definition and basic properties', 3, 2, 40),
  ('Properties of Logarithms', 'Product, quotient, and power rules', 3, 3, 40),
  ('Solving Exponential Equations', 'Using logarithms to solve', 3, 4, 40),
  ('Exponential and Log Models', 'Growth, decay, and real applications', 3, 5, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Sequences, Series, and Probability' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Arithmetic Sequences and Series', 'Formulas and applications', 3, 1, 35),
  ('Geometric Sequences and Series', 'Formulas including infinite series', 3, 2, 40),
  ('Permutations', 'Counting ordered arrangements', 3, 3, 35),
  ('Combinations', 'Counting unordered selections', 3, 4, 35),
  ('Probability', 'Fundamental probability concepts', 3, 5, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 11 SCIENCE UNITS (Chemistry)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 11, 'Atomic Structure and Periodicity',
   'Understanding atoms and the periodic table', 1, '⚛️',
   '["Describe atomic structure and electron configuration", "Apply periodic trends", "Understand quantum mechanics basics", "Predict chemical behavior from position"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 11, 'Chemical Bonding',
   'How atoms bond to form compounds', 2, '🔗',
   '["Draw Lewis structures", "Predict molecular shapes using VSEPR", "Distinguish bond types", "Understand intermolecular forces"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 11, 'Chemical Reactions and Stoichiometry',
   'Quantitative relationships in reactions', 3, '⚖️',
   '["Balance chemical equations", "Perform stoichiometric calculations", "Identify limiting reagents", "Calculate percent yield"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 11, 'Solutions and Thermochemistry',
   'Mixtures and energy changes', 4, '🧪',
   '["Calculate concentration", "Apply colligative properties", "Calculate enthalpy changes", "Interpret heating curves"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 11 Science Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Atomic Structure and Periodicity' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Atomic Structure', 'Subatomic particles, isotopes, ions', 2, 1, 35),
  ('Electron Configuration', 'Aufbau principle, orbitals, notation', 3, 2, 45),
  ('Periodic Table Organization', 'Groups, periods, and blocks', 2, 3, 35),
  ('Periodic Trends', 'Atomic radius, ionization energy, electronegativity', 3, 4, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Chemical Bonding' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Ionic Bonding', 'Formation of ionic compounds', 2, 1, 35),
  ('Covalent Bonding', 'Sharing electrons in molecules', 3, 2, 40),
  ('Lewis Structures', 'Drawing electron dot diagrams', 3, 3, 45),
  ('VSEPR Theory', 'Predicting molecular geometry', 3, 4, 45),
  ('Intermolecular Forces', 'Van der Waals, dipole-dipole, hydrogen bonding', 3, 5, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Chemical Reactions and Stoichiometry' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Writing and Balancing Equations', 'Representing reactions symbolically', 2, 1, 40),
  ('Types of Reactions', 'Synthesis, decomposition, combustion', 2, 2, 40),
  ('The Mole Concept', 'Avogadro''s number and molar mass', 3, 3, 45),
  ('Stoichiometry', 'Mole-to-mole and mass-to-mass calculations', 3, 4, 50),
  ('Limiting Reactant', 'Identifying and calculating with limiting reagent', 3, 5, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Solutions and Thermochemistry' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Solutions and Solubility', 'Factors affecting solubility', 2, 1, 35),
  ('Concentration', 'Molarity, molality, and percent composition', 3, 2, 45),
  ('Colligative Properties', 'Boiling point, freezing point, osmotic pressure', 3, 3, 40),
  ('Thermochemistry', 'Heat, enthalpy, and calorimetry', 3, 4, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 11 READING UNITS (American Literature)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 11, 'Colonial and Revolutionary Literature',
   'America''s literary beginnings', 1, '🦅',
   '["Analyze Puritan literature", "Examine founding documents", "Understand early American identity", "Connect historical context to literature"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 11, 'American Romanticism and Transcendentalism',
   '19th century literary movements', 2, '🍂',
   '["Analyze Romantic and Transcendentalist themes", "Examine Gothic literature", "Understand American identity development", "Analyze poetry of the period"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 11, 'Realism to Modernism',
   'American literature from Civil War to mid-20th century', 3, '📚',
   '["Analyze Realist literature", "Understand Naturalism", "Examine Modernist techniques", "Analyze the Harlem Renaissance"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 11, 'Contemporary American Literature',
   'Mid-20th century to present', 4, '📖',
   '["Analyze postmodern techniques", "Examine diverse American voices", "Connect literature to social movements", "Develop critical perspectives"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 11 Reading Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Colonial and Revolutionary Literature' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Puritan Literature', 'Sermons, diaries, and religious writings', 3, 1, 40),
  ('Revolutionary Writers', 'Franklin, Paine, Jefferson', 3, 2, 45),
  ('Persuasive Techniques', 'Rhetoric in founding documents', 3, 3, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'American Romanticism and Transcendentalism' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Transcendentalism', 'Emerson, Thoreau, and self-reliance', 3, 1, 45),
  ('American Gothic', 'Poe and dark romanticism', 3, 2, 40),
  ('Walt Whitman', 'Free verse and the American voice', 3, 3, 40),
  ('Emily Dickinson', 'Innovation in form and theme', 3, 4, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Realism to Modernism' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Realism', 'Twain, James, and regional writers', 3, 1, 45),
  ('The Harlem Renaissance', 'Hughes, Hurston, and African American voices', 3, 2, 45),
  ('Modernism', 'Fitzgerald, Hemingway, and the Lost Generation', 3, 3, 50)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Contemporary American Literature' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Postwar Literature', 'Salinger, Kerouac, and the Beats', 3, 1, 40),
  ('Civil Rights Literature', 'Baldwin, Angelou, and protest literature', 3, 2, 40),
  ('Multicultural Voices', 'Asian American, Latinx, Native American writers', 2, 3, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 11 HISTORY UNITS (U.S. History)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 11, 'Early America to Civil War',
   'Founding through national crisis', 1, '🗽',
   '["Analyze causes and effects of revolution", "Evaluate Constitutional debates", "Trace westward expansion", "Analyze causes of Civil War"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 11, 'Reconstruction to WWI',
   'Rebuilding and industrializing America', 2, '🏭',
   '["Evaluate Reconstruction policies", "Analyze industrialization effects", "Understand Progressive reforms", "Analyze causes of WWI entry"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 11, '1920s to WWII',
   'Boom, bust, and global conflict', 3, '🌎',
   '["Analyze the Roaring Twenties", "Evaluate causes and effects of Depression", "Analyze New Deal policies", "Understand WWII causes and effects"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 11, 'Cold War to Present',
   'America as a superpower', 4, '🇺🇸',
   '["Analyze Cold War policies", "Evaluate civil rights movements", "Understand Vietnam War impact", "Analyze contemporary issues"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 11 History Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Early America to Civil War' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Constitutional Era', 'Creating and ratifying the Constitution', 3, 1, 45),
  ('Manifest Destiny', 'Expansion and the Mexican-American War', 2, 2, 40),
  ('Road to Civil War', 'Slavery, sectionalism, and secession', 3, 3, 45),
  ('Civil War', 'Battles, leaders, and turning points', 3, 4, 50)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Reconstruction to WWI' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Reconstruction', 'Rebuilding the South and its failures', 3, 1, 45),
  ('Gilded Age', 'Industry, immigration, and inequality', 2, 2, 40),
  ('Progressive Era', 'Reform movements and their leaders', 2, 3, 40),
  ('World War I', 'America in the Great War', 3, 4, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = '1920s to WWII' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('The Roaring Twenties', 'Culture, conflict, and change', 2, 1, 40),
  ('Great Depression', 'Causes, effects, and experience', 3, 2, 45),
  ('The New Deal', 'FDR''s response to economic crisis', 3, 3, 45),
  ('World War II', 'Battles, strategy, and Holocaust', 3, 4, 50)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Cold War to Present' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Cold War Beginnings', 'Origins, containment, McCarthyism', 3, 1, 45),
  ('Civil Rights Movement', 'Struggle for equality', 3, 2, 50),
  ('Vietnam War', 'Involvement, protest, and legacy', 3, 3, 45),
  ('Contemporary America', '9/11 and modern challenges', 2, 4, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 12 CURRICULUM (Abbreviated - Key Units Only)
-- ============================================================================

-- GRADE 12 MATH UNITS (Pre-Calculus)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Functions and Their Graphs',
   'Advanced function analysis', 1, '📊',
   '["Analyze function properties", "Transform functions", "Compose and decompose functions", "Apply function concepts"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Trigonometric Functions',
   'In-depth study of trigonometry', 2, '📐',
   '["Work with radian measure", "Graph all trigonometric functions", "Use inverse trig functions", "Verify trigonometric identities"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Analytic Geometry',
   'Conic sections and parametric equations', 3, '🔵',
   '["Analyze conic sections", "Write equations of conics", "Work with parametric equations", "Apply polar coordinates"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Math'), 12, 'Limits and Introduction to Calculus',
   'Preparation for calculus', 4, '∞',
   '["Evaluate limits graphically and algebraically", "Understand continuity", "Find derivatives using limits", "Apply calculus concepts"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 12 Math Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Functions and Their Graphs' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Function Fundamentals', 'Domain, range, and evaluation', 3, 1, 35),
  ('Analyzing Functions', 'Increasing, decreasing, extrema', 3, 2, 40),
  ('Function Transformations', 'Shifts, reflections, stretches', 3, 3, 40),
  ('Inverse Functions', 'Finding and graphing inverses', 3, 4, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Trigonometric Functions' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Angles and Radian Measure', 'Converting and applications', 3, 1, 35),
  ('Unit Circle', 'Trig values from the unit circle', 3, 2, 45),
  ('Graphing Trig Functions', 'Sine, cosine, and transformations', 3, 3, 45),
  ('Trig Identities', 'Fundamental and Pythagorean identities', 3, 4, 45),
  ('Solving Trig Equations', 'Finding all solutions', 3, 5, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Analytic Geometry' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Parabolas', 'Focus, directrix, and equations', 3, 1, 40),
  ('Ellipses', 'Properties and equations', 3, 2, 45),
  ('Hyperbolas', 'Properties and equations', 3, 3, 45),
  ('Polar Coordinates', 'Converting and graphing', 3, 4, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Limits and Introduction to Calculus' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Introduction to Limits', 'Concept and graphical analysis', 3, 1, 40),
  ('Evaluating Limits', 'Algebraic techniques', 3, 2, 45),
  ('Continuity', 'Definition and types of discontinuity', 3, 3, 40),
  ('The Derivative', 'Definition and basic rules', 3, 4, 50)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 12 SCIENCE UNITS (Physics)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 12, 'Mechanics',
   'Motion, forces, and energy', 1, '🎯',
   '["Apply kinematic equations", "Analyze forces and Newton''s laws", "Calculate work and energy", "Apply conservation laws"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 12, 'Waves and Optics',
   'Wave behavior and light', 2, '🌊',
   '["Analyze wave properties", "Apply wave equations", "Understand interference and diffraction", "Apply optics principles"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 12, 'Electricity and Magnetism',
   'Electric circuits and magnetic fields', 3, '⚡',
   '["Apply Coulomb''s law", "Analyze electric circuits", "Understand magnetic fields", "Explain electromagnetic induction"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Science'), 12, 'Modern Physics',
   'Relativity and quantum mechanics', 4, '⚛️',
   '["Understand special relativity", "Apply quantum concepts", "Explain atomic structure", "Understand nuclear physics"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 12 Science Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Mechanics' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Kinematics in 1D', 'Motion in one dimension', 3, 1, 45),
  ('Kinematics in 2D', 'Projectile motion and vectors', 3, 2, 50),
  ('Newton''s Laws', 'Force analysis and applications', 3, 3, 50),
  ('Work and Energy', 'Work, power, and efficiency', 3, 4, 45),
  ('Momentum', 'Impulse and conservation of momentum', 3, 5, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Waves and Optics' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Wave Properties', 'Frequency, wavelength, and speed', 2, 1, 40),
  ('Sound Waves', 'Sound, Doppler effect, resonance', 3, 2, 45),
  ('Reflection and Refraction', 'Laws and applications', 3, 3, 45),
  ('Mirrors and Lenses', 'Image formation and equations', 3, 4, 50)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Electricity and Magnetism' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Electric Charge and Force', 'Coulomb''s law and electric fields', 3, 1, 45),
  ('Electric Potential', 'Voltage and potential energy', 3, 2, 45),
  ('DC Circuits', 'Ohm''s law, series, and parallel', 3, 3, 50),
  ('Magnetic Fields', 'Magnetism and moving charges', 3, 4, 45),
  ('Electromagnetic Induction', 'Faraday''s law and applications', 3, 5, 50)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Modern Physics' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Special Relativity', 'Time dilation and length contraction', 3, 1, 50),
  ('Quantum Theory', 'Photons, wave-particle duality', 3, 2, 50),
  ('Atomic Models', 'Bohr model to quantum mechanics', 3, 3, 45),
  ('Nuclear Physics', 'Radioactivity and nuclear reactions', 3, 4, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 12 READING UNITS (British Literature)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 12, 'Anglo-Saxon and Medieval Literature',
   'Britain''s literary origins', 1, '⚔️',
   '["Analyze epic conventions", "Understand medieval values", "Examine allegory and symbolism", "Connect literature to historical context"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 12, 'Renaissance and Restoration',
   '16th-17th century British literature', 2, '🎭',
   '["Analyze Shakespearean drama in depth", "Examine metaphysical poetry", "Understand Paradise Lost", "Connect literature to religious/political change"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 12, 'Romantic and Victorian Literature',
   '19th century British literature', 3, '🌹',
   '["Analyze Romantic poetry", "Examine Victorian novels", "Understand literary movements", "Connect literature to social change"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'Reading'), 12, 'Modern British Literature',
   '20th century to present', 4, '📖',
   '["Analyze modernist techniques", "Examine postcolonial literature", "Understand contemporary British voices", "Apply advanced critical analysis"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 12 Reading Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Anglo-Saxon and Medieval Literature' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Beowulf', 'Anglo-Saxon epic tradition', 3, 1, 50),
  ('Chaucer', 'The Canterbury Tales and medieval society', 3, 2, 50)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Renaissance and Restoration' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Shakespeare: Tragedies', 'Hamlet, Macbeth, or King Lear', 3, 1, 60),
  ('Metaphysical Poetry', 'Donne, Herbert, and complex imagery', 3, 2, 45),
  ('Milton', 'Paradise Lost and religious epic', 3, 3, 50)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Romantic and Victorian Literature' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Romantic Poetry', 'Blake, Wordsworth, Keats, Shelley', 3, 1, 50),
  ('Gothic Literature', 'Frankenstein and the Gothic tradition', 3, 2, 45),
  ('Victorian Novel', 'Dickens, Bronte, Hardy', 3, 3, 50)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Modern British Literature' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Modernism', 'Woolf, Joyce, Eliot', 3, 1, 50),
  ('War Literature', 'WWI poets and WWII fiction', 3, 2, 45),
  ('Postcolonial Literature', 'Voices from former colonies', 3, 3, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- GRADE 12 HISTORY UNITS (Government and Economics)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 12, 'Foundations of Government',
   'Political philosophy and systems', 1, '🏛️',
   '["Analyze political philosophies", "Compare government systems", "Evaluate democratic principles", "Understand constitutional framework"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 12, 'Political Processes',
   'How government and politics work', 2, '🗳️',
   '["Analyze electoral systems", "Understand political parties", "Evaluate interest groups and media", "Assess policy making process"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 12, 'Economic Principles',
   'Fundamental concepts of economics', 3, '💰',
   '["Apply supply and demand", "Understand market structures", "Analyze economic indicators", "Evaluate economic systems"]'::jsonb),

  ((SELECT id FROM subjects WHERE name = 'History'), 12, 'Money, Banking, and Finance',
   'Financial systems and policy', 4, '🏦',
   '["Understand monetary policy", "Analyze fiscal policy", "Evaluate personal finance", "Understand global economics"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 12 History Topics (abbreviated)
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Foundations of Government' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Political Philosophy', 'Locke, Montesquieu, Rousseau', 3, 1, 45),
  ('Types of Government', 'Democracy, authoritarianism, and more', 2, 2, 40),
  ('The U.S. Constitution', 'Structure and principles', 3, 3, 50),
  ('Constitutional Rights', 'Bill of Rights and civil liberties', 3, 4, 45)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Political Processes' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Elections and Voting', 'Electoral systems and participation', 2, 1, 40),
  ('Political Parties', 'Party systems and functions', 2, 2, 35),
  ('Interest Groups', 'Lobbying and influence', 3, 3, 40),
  ('Public Policy', 'How policies are made and implemented', 3, 4, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Economic Principles' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Scarcity and Choice', 'Fundamental economic problem', 2, 1, 35),
  ('Supply and Demand', 'Market equilibrium', 3, 2, 45),
  ('Market Structures', 'Competition and monopoly', 3, 3, 40),
  ('Economic Indicators', 'GDP, inflation, unemployment', 3, 4, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Money, Banking, and Finance' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Money and Banking', 'Functions of money and banking system', 2, 1, 40),
  ('The Federal Reserve', 'Monetary policy and tools', 3, 2, 45),
  ('Fiscal Policy', 'Government taxing and spending', 3, 3, 40),
  ('Personal Finance', 'Budgeting, saving, investing', 2, 4, 40),
  ('International Trade', 'Global economic connections', 3, 5, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;
