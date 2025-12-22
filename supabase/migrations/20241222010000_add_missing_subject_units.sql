-- Migration: Add missing units for French, Social Studies, Arts
-- Also links orphaned topics to appropriate units
-- ============================================================================

-- ============================================================================
-- FRENCH UNITS (K-11)
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  -- Kindergarten French
  ((SELECT id FROM subjects WHERE name = 'French'), 0, 'French Foundations',
   'Introduction to French language through songs, greetings, and basic vocabulary',
   1, '🇫🇷',
   '["Learn basic French greetings", "Count to 10 in French", "Identify colors in French", "Sing simple French songs"]'::jsonb),

  -- Grade 1 French
  ((SELECT id FROM subjects WHERE name = 'French'), 1, 'French Vocabulary Building',
   'Expand French vocabulary with everyday words and phrases',
   1, '📚',
   '["Learn vocabulary for family, animals, and food", "Use simple phrases", "Follow basic instructions in French"]'::jsonb),

  -- Grade 2 French
  ((SELECT id FROM subjects WHERE name = 'French'), 2, 'Basic French Communication',
   'Build basic sentence structures and conversational skills',
   1, '💬',
   '["Form simple French sentences", "Ask and answer basic questions", "Describe oneself in French"]'::jsonb),

  -- Grade 3 French
  ((SELECT id FROM subjects WHERE name = 'French'), 3, 'French Reading and Speaking',
   'Develop reading comprehension and oral communication skills',
   1, '📖',
   '["Read simple French texts", "Engage in basic conversations", "Understand French stories"]'::jsonb),

  -- Grade 4 French
  ((SELECT id FROM subjects WHERE name = 'French'), 4, 'French Grammar Foundations',
   'Learn fundamental French grammar including verb conjugations',
   1, '📝',
   '["Conjugate regular verbs", "Use articles and adjectives correctly", "Form negative sentences"]'::jsonb),

  -- Grade 5 French
  ((SELECT id FROM subjects WHERE name = 'French'), 5, 'French Writing Skills',
   'Develop written expression in French',
   1, '✍️',
   '["Write paragraphs in French", "Use proper punctuation", "Express ideas in writing"]'::jsonb),

  -- Grade 6 French
  ((SELECT id FROM subjects WHERE name = 'French'), 6, 'French Comprehension',
   'Strengthen reading and listening comprehension',
   1, '🎧',
   '["Understand spoken French", "Analyze French texts", "Expand vocabulary"]'::jsonb),

  -- Grade 7 French
  ((SELECT id FROM subjects WHERE name = 'French'), 7, 'Intermediate French Grammar',
   'Master intermediate grammar concepts including complex tenses',
   1, '📋',
   '["Use past and future tenses", "Master pronouns", "Understand subjunctive mood basics"]'::jsonb),

  -- Grade 8 French
  ((SELECT id FROM subjects WHERE name = 'French'), 8, 'French Literature',
   'Introduction to French literature and cultural texts',
   1, '📕',
   '["Read French literature excerpts", "Analyze literary elements", "Understand French culture through texts"]'::jsonb),

  -- Grade 9 French
  ((SELECT id FROM subjects WHERE name = 'French'), 9, 'Advanced French Writing',
   'Develop advanced writing and composition skills',
   1, '🖊️',
   '["Write essays in French", "Use complex sentence structures", "Develop arguments in French"]'::jsonb),

  -- Grade 10 French
  ((SELECT id FROM subjects WHERE name = 'French'), 10, 'French Culture and Society',
   'Explore Francophone cultures and contemporary issues',
   1, '🌍',
   '["Understand Francophone cultures", "Discuss current events in French", "Compare French and Canadian perspectives"]'::jsonb),

  -- Grade 11 French
  ((SELECT id FROM subjects WHERE name = 'French'), 11, 'Academic and Business French',
   'Prepare for academic and professional French use',
   1, '💼',
   '["Use formal French register", "Write business correspondence", "Present academic topics in French"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- SOCIAL STUDIES UNITS (K-10)
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  -- Kindergarten Social Studies
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 0, 'My Community',
   'Understanding family, community, and basic citizenship',
   1, '👨‍👩‍👧‍👦',
   '["Identify family members and roles", "Understand community helpers", "Learn basic rules and responsibilities"]'::jsonb),

  -- Grade 1 Social Studies
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 1, 'Neighborhoods and Communities',
   'Exploring different types of communities and how they work',
   1, '🏘️',
   '["Compare urban, suburban, and rural communities", "Understand community needs", "Identify community resources"]'::jsonb),

  -- Grade 2 Social Studies
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 2, 'Maps and Communities',
   'Introduction to maps and understanding Canadian communities',
   1, '🗺️',
   '["Read and create simple maps", "Understand map symbols", "Learn about Canadian communities"]'::jsonb),

  -- Grade 3 Social Studies
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 3, 'Canadian Geography',
   'Learning about Canadian provinces, territories, and regions',
   1, '🍁',
   '["Identify provinces and territories", "Understand regional differences", "Learn about Canadian symbols"]'::jsonb),

  -- Grade 4 Social Studies
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 4, 'Government and Citizenship',
   'Understanding democracy, government, and civic responsibility',
   1, '🏛️',
   '["Understand levels of government", "Learn about democratic processes", "Explore rights and responsibilities"]'::jsonb),

  -- Grade 5 Social Studies
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 5, 'Canadian Citizenship',
   'Deepening understanding of Canadian citizenship and identity',
   1, '🎖️',
   '["Understand citizenship rights", "Learn about multiculturalism", "Explore Canadian identity"]'::jsonb),

  -- Grade 6 Social Studies
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 6, 'World Geography and Economics',
   'Introduction to world geography and basic economic concepts',
   1, '🌎',
   '["Identify continents and major countries", "Understand basic economics", "Learn about global connections"]'::jsonb),

  -- Grade 7 Social Studies
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 7, 'Financial Literacy',
   'Understanding money management and financial responsibility',
   1, '💰',
   '["Understand budgeting basics", "Learn about saving and spending", "Explore financial decision-making"]'::jsonb),

  -- Grade 8 Social Studies
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 8, 'Global Citizenship',
   'Understanding global issues and responsible citizenship',
   1, '🌐',
   '["Explore global issues", "Understand human rights", "Learn about sustainable development"]'::jsonb),

  -- Grade 9 Social Studies
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 9, 'Contemporary World',
   'Analyzing contemporary world issues and events',
   1, '📰',
   '["Analyze current events", "Understand geopolitical issues", "Develop critical thinking about world affairs"]'::jsonb),

  -- Grade 10 Social Studies
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 10, 'Civics and Economics',
   'Advanced study of government, civics, and economics',
   1, '⚖️',
   '["Understand political systems", "Learn about entrepreneurship", "Explore economic principles"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- ARTS UNITS (K-10)
-- ============================================================================

INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives) VALUES
  -- Kindergarten Arts
  ((SELECT id FROM subjects WHERE name = 'Arts'), 0, 'Art and Music Exploration',
   'Introduction to visual arts and music through play and exploration',
   1, '🎨',
   '["Explore colors and shapes in art", "Experience rhythm and music", "Express creativity through art"]'::jsonb),

  -- Grade 1 Arts
  ((SELECT id FROM subjects WHERE name = 'Arts'), 1, 'Creative Expression',
   'Developing basic art and movement skills',
   1, '🖍️',
   '["Learn drawing and painting basics", "Explore movement and dance", "Express ideas through art"]'::jsonb),

  -- Grade 2 Arts
  ((SELECT id FROM subjects WHERE name = 'Arts'), 2, 'Music and Drama',
   'Introduction to musical instruments and dramatic arts',
   1, '🎭',
   '["Identify musical instruments", "Participate in drama activities", "Tell stories through performance"]'::jsonb),

  -- Grade 3 Arts
  ((SELECT id FROM subjects WHERE name = 'Arts'), 3, 'Art Elements',
   'Learning the fundamental elements and principles of art',
   1, '🖼️',
   '["Understand line, shape, color, texture", "Apply art principles", "Create artwork using elements"]'::jsonb),

  -- Grade 4 Arts
  ((SELECT id FROM subjects WHERE name = 'Arts'), 4, 'Music Foundations',
   'Building music reading and notation skills',
   1, '🎵',
   '["Read basic musical notation", "Understand rhythm and tempo", "Play simple melodies"]'::jsonb),

  -- Grade 5 Arts
  ((SELECT id FROM subjects WHERE name = 'Arts'), 5, 'Art History and Theatre',
   'Introduction to art history and theatrical performance',
   1, '🎪',
   '["Learn about famous artists", "Understand art movements", "Participate in theatre productions"]'::jsonb),

  -- Grade 6 Arts
  ((SELECT id FROM subjects WHERE name = 'Arts'), 6, 'Visual Arts Techniques',
   'Developing advanced visual arts skills and techniques',
   1, '🖌️',
   '["Master various art techniques", "Experiment with different media", "Develop personal artistic style"]'::jsonb),

  -- Grade 7 Arts
  ((SELECT id FROM subjects WHERE name = 'Arts'), 7, 'Music Theory',
   'Understanding music theory and composition basics',
   1, '🎼',
   '["Understand scales and keys", "Learn chord progressions", "Compose simple melodies"]'::jsonb),

  -- Grade 8 Arts
  ((SELECT id FROM subjects WHERE name = 'Arts'), 8, 'Art Movements and Performance',
   'Exploring art history movements and performance arts',
   1, '🎭',
   '["Study major art movements", "Develop performance skills", "Analyze artistic works"]'::jsonb),

  -- Grade 10 Arts
  ((SELECT id FROM subjects WHERE name = 'Arts'), 10, 'Digital and Contemporary Arts',
   'Exploring digital arts, media, and contemporary music',
   1, '💻',
   '["Create digital artwork", "Explore music composition software", "Understand contemporary art forms"]'::jsonb)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  icon = EXCLUDED.icon,
  learning_objectives = EXCLUDED.learning_objectives;

-- ============================================================================
-- LINK FRENCH TOPICS TO UNITS
-- ============================================================================

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'French Foundations' AND grade_level = 0 AND subject_id = (SELECT id FROM subjects WHERE name = 'French'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'French') AND grade_level_min = 0 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'French Vocabulary Building' AND grade_level = 1 AND subject_id = (SELECT id FROM subjects WHERE name = 'French'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'French') AND grade_level_min = 1 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Basic French Communication' AND grade_level = 2 AND subject_id = (SELECT id FROM subjects WHERE name = 'French'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'French') AND grade_level_min = 2 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'French Reading and Speaking' AND grade_level = 3 AND subject_id = (SELECT id FROM subjects WHERE name = 'French'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'French') AND grade_level_min = 3 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'French Grammar Foundations' AND grade_level = 4 AND subject_id = (SELECT id FROM subjects WHERE name = 'French'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'French') AND grade_level_min = 4 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'French Writing Skills' AND grade_level = 5 AND subject_id = (SELECT id FROM subjects WHERE name = 'French'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'French') AND grade_level_min = 5 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'French Comprehension' AND grade_level = 6 AND subject_id = (SELECT id FROM subjects WHERE name = 'French'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'French') AND grade_level_min = 6 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Intermediate French Grammar' AND grade_level = 7 AND subject_id = (SELECT id FROM subjects WHERE name = 'French'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'French') AND grade_level_min = 7 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'French Literature' AND grade_level = 8 AND subject_id = (SELECT id FROM subjects WHERE name = 'French'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'French') AND grade_level_min = 8 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Advanced French Writing' AND grade_level = 9 AND subject_id = (SELECT id FROM subjects WHERE name = 'French'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'French') AND grade_level_min = 9 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'French Culture and Society' AND grade_level = 10 AND subject_id = (SELECT id FROM subjects WHERE name = 'French'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'French') AND grade_level_min = 10 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Academic and Business French' AND grade_level = 11 AND subject_id = (SELECT id FROM subjects WHERE name = 'French'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'French') AND grade_level_min = 11 AND unit_id IS NULL;

-- ============================================================================
-- LINK SOCIAL STUDIES TOPICS TO UNITS
-- ============================================================================

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'My Community' AND grade_level = 0 AND subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies') AND grade_level_min = 0 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Neighborhoods and Communities' AND grade_level = 1 AND subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies') AND grade_level_min = 1 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Maps and Communities' AND grade_level = 2 AND subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies') AND grade_level_min = 2 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Canadian Geography' AND grade_level = 3 AND subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies') AND grade_level_min = 3 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Government and Citizenship' AND grade_level = 4 AND subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies') AND grade_level_min = 4 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Canadian Citizenship' AND grade_level = 5 AND subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies') AND grade_level_min = 5 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'World Geography and Economics' AND grade_level = 6 AND subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies') AND grade_level_min = 6 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Financial Literacy' AND grade_level = 7 AND subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies') AND grade_level_min = 7 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Global Citizenship' AND grade_level = 8 AND subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies') AND grade_level_min = 8 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Contemporary World' AND grade_level = 9 AND subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies') AND grade_level_min = 9 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Civics and Economics' AND grade_level = 10 AND subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies') AND grade_level_min = 10 AND unit_id IS NULL;

-- ============================================================================
-- LINK ARTS TOPICS TO UNITS
-- ============================================================================

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Art and Music Exploration' AND grade_level = 0 AND subject_id = (SELECT id FROM subjects WHERE name = 'Arts'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Arts') AND grade_level_min = 0 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Creative Expression' AND grade_level = 1 AND subject_id = (SELECT id FROM subjects WHERE name = 'Arts'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Arts') AND grade_level_min = 1 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Music and Drama' AND grade_level = 2 AND subject_id = (SELECT id FROM subjects WHERE name = 'Arts'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Arts') AND grade_level_min = 2 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Art Elements' AND grade_level = 3 AND subject_id = (SELECT id FROM subjects WHERE name = 'Arts'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Arts') AND grade_level_min = 3 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Music Foundations' AND grade_level = 4 AND subject_id = (SELECT id FROM subjects WHERE name = 'Arts'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Arts') AND grade_level_min = 4 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Art History and Theatre' AND grade_level = 5 AND subject_id = (SELECT id FROM subjects WHERE name = 'Arts'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Arts') AND grade_level_min = 5 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Visual Arts Techniques' AND grade_level = 6 AND subject_id = (SELECT id FROM subjects WHERE name = 'Arts'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Arts') AND grade_level_min = 6 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Music Theory' AND grade_level = 7 AND subject_id = (SELECT id FROM subjects WHERE name = 'Arts'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Arts') AND grade_level_min = 7 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Art Movements and Performance' AND grade_level = 8 AND subject_id = (SELECT id FROM subjects WHERE name = 'Arts'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Arts') AND grade_level_min = 8 AND unit_id IS NULL;

UPDATE topics SET unit_id = (SELECT id FROM units WHERE name = 'Digital and Contemporary Arts' AND grade_level = 10 AND subject_id = (SELECT id FROM subjects WHERE name = 'Arts'))
WHERE subject_id = (SELECT id FROM subjects WHERE name = 'Arts') AND grade_level_min = 10 AND unit_id IS NULL;
