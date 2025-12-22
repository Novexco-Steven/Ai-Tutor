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
