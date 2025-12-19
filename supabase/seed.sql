-- LearnLit Seed Data
-- Run this in Supabase SQL Editor to populate reference tables

-- Insert default interests
INSERT INTO interests (name, category) VALUES
  -- Animals
  ('Dogs', 'Animals'),
  ('Cats', 'Animals'),
  ('Dinosaurs', 'Animals'),
  ('Ocean Animals', 'Animals'),
  ('Birds', 'Animals'),
  ('Insects', 'Animals'),

  -- Entertainment
  ('Video Games', 'Entertainment'),
  ('Anime', 'Entertainment'),
  ('Movies', 'Entertainment'),
  ('Music', 'Entertainment'),
  ('Dancing', 'Entertainment'),

  -- Sports & Activities
  ('Soccer', 'Sports'),
  ('Basketball', 'Sports'),
  ('Baseball', 'Sports'),
  ('Skateboarding', 'Sports'),
  ('Swimming', 'Sports'),
  ('Martial Arts', 'Sports'),

  -- Science & Nature
  ('Space', 'Science'),
  ('Robots', 'Science'),
  ('Chemistry', 'Science'),
  ('Weather', 'Science'),
  ('Plants', 'Science'),

  -- Creative & Arts
  ('Art', 'Creative'),
  ('Cooking', 'Creative'),
  ('Building', 'Creative'),
  ('Fashion', 'Creative'),
  ('Photography', 'Creative'),

  -- Vehicles
  ('Cars', 'Vehicles'),
  ('Trucks', 'Vehicles'),
  ('Planes', 'Vehicles'),
  ('Trains', 'Vehicles'),
  ('Boats', 'Vehicles'),

  -- Fantasy
  ('Superheroes', 'Fantasy'),
  ('Magic', 'Fantasy'),
  ('Princesses', 'Fantasy'),
  ('Dragons', 'Fantasy'),
  ('Unicorns', 'Fantasy')
ON CONFLICT (name) DO NOTHING;

-- Insert subjects
INSERT INTO subjects (name, description, icon, color) VALUES
  ('Math', 'Numbers, calculations, and problem solving', '🔢', '#3b82f6'),
  ('Science', 'Exploring how the world works', '🔬', '#10b981'),
  ('Reading', 'Stories, comprehension, and vocabulary', '📚', '#f59e0b'),
  ('History', 'Learning about the past', '🏛️', '#8b5cf6'),
  ('Arts', 'Creative expression through visual arts, music, drama, and dance', '🎨', '#ec4899'),
  ('French', 'French language learning and francophone culture', '🇫🇷', '#ef4444'),
  ('Social Studies', 'Citizenship, geography, economics, and civic responsibility', '🌎', '#06b6d4')
ON CONFLICT (name) DO NOTHING;

-- Insert Math topics (K-12 comprehensive)
INSERT INTO topics (subject_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time) VALUES
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Counting & Numbers', 'Learn to count objects and recognize numbers 1-100', 0, 1, 1, 1, 15),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Basic Addition', 'Add single and double digit numbers', 0, 2, 2, 2, 20),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Basic Subtraction', 'Subtract single and double digit numbers', 0, 2, 2, 3, 20),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Place Value', 'Understand ones, tens, hundreds, and thousands places', 1, 3, 3, 4, 20),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Telling Time', 'Read analog and digital clocks', 1, 3, 3, 5, 20),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Money & Coins', 'Count money and make change', 1, 3, 3, 6, 20),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Multiplication', 'Multiply numbers and learn times tables', 2, 4, 4, 7, 25),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Division', 'Divide numbers and understand remainders', 3, 5, 5, 8, 25),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Fractions', 'Understand parts of a whole and equivalent fractions', 3, 6, 5, 9, 30),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Decimals', 'Work with decimal numbers and place values', 4, 6, 5, 10, 25),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Geometry Basics', 'Identify shapes, angles, and basic measurements', 3, 6, 5, 11, 25),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Ratios & Proportions', 'Compare quantities and solve proportion problems', 6, 8, 6, 12, 30),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Percentages', 'Calculate percentages and convert between forms', 6, 8, 6, 13, 25),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Integers', 'Work with positive and negative numbers', 6, 8, 6, 14, 25),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Pre-Algebra', 'Introduction to variables and simple equations', 7, 9, 7, 15, 35),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Linear Equations', 'Solve single and multi-step equations', 8, 10, 7, 16, 35),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Algebra I', 'Polynomials, factoring, and quadratic equations', 8, 10, 8, 17, 40),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Geometry', 'Proofs, theorems, and geometric calculations', 9, 11, 8, 18, 40),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Algebra II', 'Advanced functions, logarithms, and sequences', 10, 12, 9, 19, 45),
  ((SELECT id FROM subjects WHERE name = 'Math'), 'Pre-Calculus', 'Trigonometry, limits, and function analysis', 11, 12, 10, 20, 45)
ON CONFLICT DO NOTHING;

-- Insert Science topics (K-12 comprehensive)
INSERT INTO topics (subject_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Living vs Non-Living', 'Identify characteristics of living things', 0, 2, 1, 1, 15),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Five Senses', 'Explore sight, sound, smell, taste, and touch', 0, 2, 1, 2, 15),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Plants & Animals', 'Learn about different types of plants and animals', 1, 3, 2, 3, 20),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Weather & Seasons', 'Understand weather patterns and seasonal changes', 1, 3, 2, 4, 20),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'States of Matter', 'Explore solids, liquids, and gases', 2, 4, 3, 5, 20),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Simple Machines', 'Learn about levers, pulleys, and inclined planes', 2, 4, 3, 6, 25),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Life Cycles', 'Study how plants and animals grow and change', 3, 5, 4, 7, 25),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Ecosystems', 'Understand food chains and habitats', 3, 5, 4, 8, 25),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'The Solar System', 'Explore planets, moons, and space', 4, 6, 5, 9, 30),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Human Body Systems', 'Learn about organs and body systems', 4, 6, 5, 10, 30),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Earth Science', 'Study rocks, minerals, and Earth processes', 5, 7, 6, 11, 30),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Force & Motion', 'Understand physics of movement and energy', 6, 8, 6, 12, 30),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Chemistry Basics', 'Introduction to elements and chemical reactions', 7, 9, 7, 13, 35),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Electricity & Magnetism', 'Explore electrical circuits and magnetic fields', 7, 9, 7, 14, 35),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Cell Biology', 'Study cell structure and function', 8, 10, 8, 15, 35),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Genetics', 'Learn about DNA, heredity, and traits', 9, 11, 8, 16, 40),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Physics', 'Advanced mechanics, waves, and thermodynamics', 10, 12, 9, 17, 45),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Environmental Science', 'Study ecosystems, climate, and conservation', 10, 12, 9, 18, 40)
ON CONFLICT DO NOTHING;

-- Insert Reading topics (K-12 comprehensive)
INSERT INTO topics (subject_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time) VALUES
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Letter Recognition', 'Identify uppercase and lowercase letters', 0, 1, 1, 1, 15),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Phonics & Sounds', 'Learn letter sounds and blending', 0, 2, 2, 2, 20),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Sight Words', 'Recognize common high-frequency words', 0, 2, 2, 3, 15),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Basic Vocabulary', 'Build foundational word knowledge', 1, 3, 3, 4, 20),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Reading Comprehension', 'Understand and recall story details', 2, 4, 4, 5, 25),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Story Elements', 'Identify characters, setting, and plot', 2, 4, 4, 6, 25),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Main Idea & Details', 'Find central ideas and supporting details', 3, 5, 5, 7, 25),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Making Inferences', 'Draw conclusions from text evidence', 4, 6, 5, 8, 30),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Figurative Language', 'Understand similes, metaphors, and idioms', 5, 7, 6, 9, 30),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Text Structure', 'Recognize how texts are organized', 5, 7, 6, 10, 25),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Literary Analysis', 'Analyze themes and author techniques', 6, 8, 7, 11, 35),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Critical Reading', 'Evaluate arguments and identify bias', 7, 9, 7, 12, 35),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Authors Purpose', 'Understand why authors write', 8, 10, 8, 13, 30),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Argumentative Text', 'Analyze persuasive writing and rhetoric', 9, 11, 8, 14, 35),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Advanced Vocabulary', 'Master academic and domain-specific words', 10, 12, 9, 15, 30),
  ((SELECT id FROM subjects WHERE name = 'Reading'), 'Literary Criticism', 'Apply critical lenses to literature', 11, 12, 10, 16, 40)
ON CONFLICT DO NOTHING;

-- Insert History topics (K-12 comprehensive)
INSERT INTO topics (subject_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 'Community Helpers', 'Learn about people who help in our community', 0, 2, 1, 1, 15),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Holidays & Traditions', 'Explore celebrations and customs', 0, 2, 1, 2, 15),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Maps & Globes', 'Learn to read and use maps', 1, 3, 2, 3, 20),
  ((SELECT id FROM subjects WHERE name = 'History'), 'American Symbols', 'Understand the flag, monuments, and symbols', 1, 3, 2, 4, 20),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Native Americans', 'Learn about indigenous peoples and cultures', 2, 4, 3, 5, 25),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Colonial America', 'Explore early American settlements', 3, 5, 4, 6, 25),
  ((SELECT id FROM subjects WHERE name = 'History'), 'American Revolution', 'Study the fight for independence', 4, 6, 5, 7, 30),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Westward Expansion', 'Learn about pioneers and manifest destiny', 4, 6, 5, 8, 30),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Civil War', 'Understand the causes and effects of the war', 5, 7, 6, 9, 35),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Immigration', 'Explore how America became diverse', 5, 7, 6, 10, 30),
  ((SELECT id FROM subjects WHERE name = 'History'), 'World War I', 'Study the Great War and its impact', 6, 8, 7, 11, 35),
  ((SELECT id FROM subjects WHERE name = 'History'), 'World War II', 'Learn about the global conflict of the 1940s', 7, 9, 7, 12, 40),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Civil Rights Movement', 'Study the fight for equality in America', 8, 10, 8, 13, 35),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Cold War', 'Understand the US-Soviet rivalry', 9, 11, 8, 14, 35),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Modern US History', 'Explore recent American history', 10, 12, 9, 15, 40),
  ((SELECT id FROM subjects WHERE name = 'History'), 'World Civilizations', 'Study major civilizations throughout history', 10, 12, 9, 16, 45)
ON CONFLICT DO NOTHING;

-- Insert Canadian History topics (K-12 comprehensive)
INSERT INTO topics (subject_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time) VALUES
  ((SELECT id FROM subjects WHERE name = 'History'), 'Canadian Symbols & Traditions', 'Learn about the Canadian flag, anthem, and national symbols', 0, 2, 1, 17, 15),
  ((SELECT id FROM subjects WHERE name = 'History'), 'First Nations, Métis & Inuit', 'Explore Indigenous peoples, cultures, and traditions', 1, 4, 2, 18, 25),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Canadian Geography', 'Learn about provinces, territories, and landscapes', 2, 4, 3, 19, 20),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Early Explorers of Canada', 'Study Jacques Cartier, Samuel de Champlain, and early exploration', 3, 5, 4, 20, 25),
  ((SELECT id FROM subjects WHERE name = 'History'), 'New France', 'Explore French colonization and the fur trade', 3, 5, 4, 21, 25),
  ((SELECT id FROM subjects WHERE name = 'History'), 'British North America', 'Learn about British colonization and the Seven Years War', 4, 6, 5, 22, 30),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Canadian Confederation', 'Study how Canada became a nation in 1867', 4, 6, 5, 23, 30),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Building the Railway', 'Learn about the Canadian Pacific Railway and nation building', 5, 7, 6, 24, 30),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Louis Riel & Métis Resistance', 'Study the Red River and North-West Rebellions', 5, 7, 6, 25, 30),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Canadian Immigration History', 'Explore waves of immigration that shaped Canada', 5, 7, 6, 26, 30),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Canada in World War I', 'Study Vimy Ridge, Passchendaele, and Canadian contributions', 6, 8, 7, 27, 35),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Canada in World War II', 'Learn about D-Day, Dieppe, and the home front', 7, 9, 7, 28, 40),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Indigenous Rights & Reconciliation', 'Study residential schools, treaties, and Truth and Reconciliation', 7, 10, 8, 29, 40),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Quebec & French-English Relations', 'Explore the Quiet Revolution and Canadian bilingualism', 8, 10, 8, 30, 35),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Charter of Rights & Freedoms', 'Study the 1982 Constitution and Canadian rights', 9, 11, 8, 31, 35),
  ((SELECT id FROM subjects WHERE name = 'History'), 'Modern Canadian Politics', 'Explore Canadian government, democracy, and current events', 10, 12, 9, 32, 40)
ON CONFLICT DO NOTHING;

-- Insert Arts topics (K-12 comprehensive - aligned with Quebec QEP Arts Education)
INSERT INTO topics (subject_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time) VALUES
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Colors & Shapes in Art', 'Explore colors, shapes, and basic art concepts', 0, 2, 1, 1, 15),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Music Basics & Rhythm', 'Learn about rhythm, beats, and simple songs', 0, 2, 1, 2, 15),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Drawing & Painting', 'Create art using crayons, paint, and pencils', 1, 3, 2, 3, 20),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Movement & Dance', 'Express creativity through movement and dance', 1, 3, 2, 4, 20),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Musical Instruments', 'Discover different instruments and their sounds', 2, 4, 3, 5, 25),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Drama & Storytelling', 'Act out stories and express emotions through drama', 2, 4, 3, 6, 25),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Art Elements & Principles', 'Learn line, shape, color, texture, and composition', 3, 5, 4, 7, 25),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Music Reading & Notation', 'Read basic music notes and understand musical symbols', 4, 6, 5, 8, 30),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Art History Basics', 'Explore famous artists and art movements', 5, 7, 6, 9, 30),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Theatre Arts', 'Learn acting techniques and stage performance', 5, 7, 6, 10, 30),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Visual Arts Techniques', 'Master drawing, painting, and mixed media', 6, 8, 7, 11, 35),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Music Theory', 'Study scales, chords, and musical structure', 7, 9, 7, 12, 35),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Art Movements & Styles', 'Analyze Impressionism, Modernism, and contemporary art', 8, 10, 8, 13, 35),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Performance Arts', 'Develop skills in music, dance, or theatre performance', 8, 10, 8, 14, 35),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Digital Arts & Media', 'Create art using digital tools and technology', 10, 12, 9, 15, 40),
  ((SELECT id FROM subjects WHERE name = 'Arts'), 'Music Composition', 'Compose original music and understand arrangement', 10, 12, 9, 16, 40)
ON CONFLICT DO NOTHING;

-- Insert French topics (K-12 comprehensive - aligned with Canadian bilingual education)
INSERT INTO topics (subject_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time) VALUES
  ((SELECT id FROM subjects WHERE name = 'French'), 'French Greetings & Basics', 'Learn bonjour, merci, and basic French phrases', 0, 2, 1, 1, 15),
  ((SELECT id FROM subjects WHERE name = 'French'), 'French Numbers & Colors', 'Count in French and learn color words', 0, 2, 1, 2, 15),
  ((SELECT id FROM subjects WHERE name = 'French'), 'French Vocabulary Building', 'Learn everyday French words for family, food, and animals', 1, 3, 2, 3, 20),
  ((SELECT id FROM subjects WHERE name = 'French'), 'Basic French Sentences', 'Form simple sentences and ask questions in French', 2, 4, 3, 4, 25),
  ((SELECT id FROM subjects WHERE name = 'French'), 'French Reading Basics', 'Read simple French texts and stories', 3, 5, 4, 5, 25),
  ((SELECT id FROM subjects WHERE name = 'French'), 'French Conversation', 'Practice speaking French in everyday situations', 3, 5, 4, 6, 25),
  ((SELECT id FROM subjects WHERE name = 'French'), 'French Grammar Foundations', 'Learn verb conjugations, articles, and adjectives', 4, 6, 5, 7, 30),
  ((SELECT id FROM subjects WHERE name = 'French'), 'French Writing Skills', 'Write paragraphs and short compositions in French', 5, 7, 6, 8, 30),
  ((SELECT id FROM subjects WHERE name = 'French'), 'French Comprehension', 'Understand spoken and written French texts', 6, 8, 6, 9, 30),
  ((SELECT id FROM subjects WHERE name = 'French'), 'Intermediate French Grammar', 'Master complex tenses and sentence structures', 7, 9, 7, 10, 35),
  ((SELECT id FROM subjects WHERE name = 'French'), 'French Literature', 'Read and analyze French literature and poetry', 8, 10, 8, 11, 35),
  ((SELECT id FROM subjects WHERE name = 'French'), 'Advanced French Writing', 'Write essays and formal texts in French', 9, 11, 8, 12, 35),
  ((SELECT id FROM subjects WHERE name = 'French'), 'French Culture & Society', 'Explore francophone culture in Canada and worldwide', 10, 12, 9, 13, 40),
  ((SELECT id FROM subjects WHERE name = 'French'), 'Business & Academic French', 'Use French in professional and academic contexts', 11, 12, 10, 14, 40)
ON CONFLICT DO NOTHING;

-- Insert Social Studies topics (K-12 comprehensive - aligned with Canadian citizenship education)
INSERT INTO topics (subject_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time) VALUES
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'My Family & Community', 'Learn about families, homes, and local community', 0, 2, 1, 1, 15),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Rules & Responsibilities', 'Understand classroom and community rules', 0, 2, 1, 2, 15),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Neighborhoods & Communities', 'Explore how communities work together', 1, 3, 2, 3, 20),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Canadian Communities', 'Learn about urban, rural, and Indigenous communities', 2, 4, 3, 4, 25),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Maps & Geography Skills', 'Read maps and understand geographical concepts', 2, 4, 3, 5, 25),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Canadian Provinces & Territories', 'Explore the geography and culture of each province', 3, 5, 4, 6, 25),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Government & Democracy', 'Learn how Canadian government works', 4, 6, 5, 7, 30),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Rights & Responsibilities', 'Understand citizen rights and civic duties', 4, 6, 5, 8, 30),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Canadian Citizenship', 'Explore what it means to be a Canadian citizen', 5, 7, 6, 9, 30),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'World Geography', 'Study continents, countries, and global regions', 6, 8, 6, 10, 30),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Economics Basics', 'Learn about money, trade, and economic systems', 6, 8, 7, 11, 35),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Financial Literacy', 'Understand budgeting, saving, and personal finance', 7, 9, 7, 12, 35),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Global Issues & Citizenship', 'Explore global challenges and responsible citizenship', 8, 10, 8, 13, 35),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Contemporary World', 'Analyze current events and global affairs', 9, 11, 8, 14, 35),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Entrepreneurship Basics', 'Learn about starting and running a business', 10, 12, 9, 15, 40),
  ((SELECT id FROM subjects WHERE name = 'Social Studies'), 'Civics & Government', 'Study political systems and civic participation', 10, 12, 9, 16, 40)
ON CONFLICT DO NOTHING;

-- Insert additional Canadian Science topics
INSERT INTO topics (subject_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time) VALUES
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Canadian Wildlife & Habitats', 'Explore animals and ecosystems unique to Canada', 2, 4, 3, 19, 25),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Climate & Weather in Canada', 'Study Canadian climate zones and weather patterns', 3, 5, 4, 20, 25),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Applied Science & Technology', 'Learn practical applications of science and engineering', 7, 9, 7, 21, 35),
  ((SELECT id FROM subjects WHERE name = 'Science'), 'Science & the Environment', 'Study environmental issues and sustainability', 8, 10, 8, 22, 35)
ON CONFLICT DO NOTHING;
