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
