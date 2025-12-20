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
