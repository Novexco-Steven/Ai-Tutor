-- ============================================================================
-- GRADE 7 SCIENCE CURRICULUM EXPANSION
-- ============================================================================
-- This migration expands Grade 7 Science for middle school
-- Focusing on chemistry basics, life science, and Earth science
-- ============================================================================

-- ============================================================================
-- NEW UNITS FOR GRADE 7 SCIENCE
-- ============================================================================

-- Unit: Atoms and Elements
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  7,
  'Atoms and Elements',
  'Explore atomic structure and the periodic table',
  1,
  '⚛️',
  '["Describe atomic structure", "Read the periodic table", "Identify element families", "Distinguish atoms, molecules, and compounds", "Model atomic interactions"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Chemical Reactions
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  7,
  'Chemical Reactions',
  'Investigate chemical changes and reaction types',
  2,
  '🧪',
  '["Write and balance simple equations", "Classify reaction types", "Apply conservation of mass", "Investigate factors affecting reactions", "Design reaction experiments"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Body Systems
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  7,
  'Body Systems',
  'Study human body systems and their interactions',
  3,
  '🫁',
  '["Describe major body system functions", "Explain system interactions", "Analyze homeostasis", "Investigate health and disease", "Apply body system concepts"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Cells and Organisms
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  7,
  'Cells and Organisms',
  'Explore cell organization and organism classification',
  4,
  '🦠',
  '["Describe levels of organization", "Classify organisms", "Investigate cell specialization", "Compare organism characteristics", "Understand taxonomy basics"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Ecology and Environment
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  7,
  'Ecology and Environment',
  'Study ecosystem dynamics and environmental science',
  5,
  '🌿',
  '["Analyze ecosystem dynamics", "Investigate biogeochemical cycles", "Evaluate environmental issues", "Model population changes", "Design conservation solutions"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Earth's History
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  7,
  'Earth''s History',
  'Explore Earth''s geologic history and fossil record',
  6,
  '🦕',
  '["Read the geologic time scale", "Interpret fossil evidence", "Understand relative and absolute dating", "Trace Earth''s history", "Connect past to present"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Natural Resources
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Science'),
  7,
  'Natural Resources',
  'Investigate Earth''s resources and sustainability',
  7,
  '⛏️',
  '["Classify natural resources", "Evaluate resource use", "Analyze environmental impacts", "Investigate sustainability", "Design resource management solutions"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- NEW TOPICS FOR GRADE 7 SCIENCE
-- ============================================================================

-- Atoms and Elements Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Atoms and Elements' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Atomic Structure', 'Protons, neutrons, and electrons', 2, 1, 25),
  ('Atomic Number and Mass', 'Identifying elements', 2, 2, 25),
  ('The Periodic Table', 'Organization and patterns', 2, 3, 30),
  ('Periodic Trends', 'Properties across periods and groups', 2, 4, 25),
  ('Element Families', 'Metals, nonmetals, metalloids', 2, 5, 25),
  ('Valence Electrons', 'Outer shell electrons and bonding', 2, 6, 25),
  ('Atoms vs Molecules', 'Distinguishing particles', 2, 7, 20),
  ('Ionic Bonding', 'Transfer of electrons', 2, 8, 30),
  ('Covalent Bonding', 'Sharing of electrons', 2, 9, 30),
  ('Chemical Formulas', 'Reading and writing formulas', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Chemical Reactions Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Chemical Reactions' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Signs of Chemical Reactions', 'Evidence of reactions', 2, 1, 25),
  ('Chemical Equations', 'Writing reactions', 2, 2, 30),
  ('Balancing Equations', 'Conservation of atoms', 3, 3, 35),
  ('Types of Reactions', 'Synthesis, decomposition, and more', 2, 4, 30),
  ('Exothermic Reactions', 'Energy released', 2, 5, 25),
  ('Endothermic Reactions', 'Energy absorbed', 2, 6, 25),
  ('Factors Affecting Rate', 'Temperature, concentration, and more', 2, 7, 25),
  ('Catalysts', 'Speeding up reactions', 2, 8, 25),
  ('Acids and Bases', 'pH and neutralization', 2, 9, 30),
  ('Real-World Reactions', 'Chemistry in everyday life', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Body Systems Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Body Systems' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Circulatory System', 'Heart, blood, and vessels', 2, 1, 30),
  ('Respiratory System', 'Lungs and gas exchange', 2, 2, 30),
  ('Digestive System', 'Breaking down food', 2, 3, 30),
  ('Nervous System', 'Brain, spinal cord, and nerves', 2, 4, 30),
  ('Endocrine System', 'Hormones and regulation', 2, 5, 30),
  ('Muscular System', 'Muscles and movement', 2, 6, 25),
  ('Skeletal System', 'Bones and support', 2, 7, 25),
  ('Immune System', 'Defense against disease', 2, 8, 30),
  ('Reproductive System', 'Human reproduction', 2, 9, 30),
  ('Homeostasis', 'Maintaining internal balance', 3, 10, 30),
  ('Disease and Health', 'How systems can malfunction', 2, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Cells and Organisms Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Cells and Organisms' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Cell to Organism', 'Levels of organization', 2, 1, 25),
  ('Specialized Cells', 'Different cells for different jobs', 2, 2, 25),
  ('Tissues', 'Groups of similar cells', 2, 3, 25),
  ('Organs', 'Tissues working together', 2, 4, 25),
  ('Organ Systems', 'Organs with shared function', 2, 5, 25),
  ('Classification Systems', 'Organizing life', 2, 6, 25),
  ('Domains and Kingdoms', 'Major divisions of life', 2, 7, 30),
  ('Bacteria and Archaea', 'Prokaryotic life', 2, 8, 25),
  ('Protists and Fungi', 'Diverse eukaryotes', 2, 9, 25),
  ('Plants and Animals', 'Complex multicellular life', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Ecology and Environment Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Ecology and Environment' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Ecosystem Dynamics', 'How ecosystems function', 2, 1, 25),
  ('Energy Flow', 'Sun to producers to consumers', 2, 2, 25),
  ('Carbon Cycle', 'Carbon moving through systems', 2, 3, 30),
  ('Nitrogen Cycle', 'Nitrogen in ecosystems', 2, 4, 30),
  ('Water Cycle', 'Water movement on Earth', 2, 5, 25),
  ('Population Ecology', 'How populations change', 2, 6, 25),
  ('Community Interactions', 'Species relationships', 2, 7, 25),
  ('Biodiversity', 'Variety of life', 2, 8, 25),
  ('Environmental Issues', 'Pollution, climate change', 2, 9, 30),
  ('Conservation Strategies', 'Protecting environments', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Earth's History Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Earth''s History' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Geologic Time Scale', 'Dividing Earth''s history', 2, 1, 30),
  ('Eons, Eras, and Periods', 'Time divisions', 2, 2, 25),
  ('Relative Dating', 'Ordering events by position', 2, 3, 25),
  ('Absolute Dating', 'Finding actual ages', 3, 4, 30),
  ('Fossils as Evidence', 'What fossils tell us', 2, 5, 25),
  ('Mass Extinctions', 'Major die-offs in history', 2, 6, 25),
  ('Early Earth', 'Formation and early conditions', 2, 7, 25),
  ('Origin of Life', 'How life began', 2, 8, 25),
  ('Evolution of Life', 'Changes over geologic time', 2, 9, 30),
  ('Recent Geologic History', 'Ice ages and human evolution', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Natural Resources Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Natural Resources' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Renewable vs Nonrenewable', 'Types of resources', 2, 1, 25),
  ('Fossil Fuels', 'Formation and use', 2, 2, 25),
  ('Alternative Energy', 'Solar, wind, and more', 2, 3, 30),
  ('Water Resources', 'Freshwater availability', 2, 4, 25),
  ('Mineral Resources', 'Mining and use', 2, 5, 25),
  ('Soil Resources', 'Soil formation and conservation', 2, 6, 25),
  ('Forest Resources', 'Sustainable forestry', 2, 7, 25),
  ('Resource Extraction', 'Environmental impacts', 2, 8, 25),
  ('Sustainability', 'Meeting needs without depleting', 2, 9, 25),
  ('Resource Management', 'Planning for the future', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- New Units Added: 7
--   - Atoms and Elements (10 topics)
--   - Chemical Reactions (10 topics)
--   - Body Systems (11 topics)
--   - Cells and Organisms (10 topics)
--   - Ecology and Environment (10 topics)
--   - Earth's History (10 topics)
--   - Natural Resources (10 topics)
--
-- Total New Topics: 71
-- New Total for Grade 7 Science: ~7+ units, ~71+ topics
-- ============================================================================
