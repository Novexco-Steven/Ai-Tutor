-- ============================================================================
-- KINDERGARTEN AND GRADES 1-2 READING/ELA CURRICULUM EXPANSION
-- ============================================================================
-- This migration expands K-2 Reading/ELA with phonemic awareness,
-- advanced phonics, fluency, grammar, and writing skills
-- ============================================================================

-- ============================================================================
-- KINDERGARTEN READING ADDITIONS
-- ============================================================================

-- Unit: Phonemic Awareness (NEW for K)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  0,
  'Phonemic Awareness',
  'Develop listening skills to hear and manipulate sounds in words',
  5,
  '👂',
  '["Hear and identify individual sounds in words", "Segment words into sounds", "Blend sounds to make words", "Identify rhyming words", "Recognize syllables in words"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Print Concepts (NEW for K)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  0,
  'Print Concepts',
  'Understand how printed language works',
  6,
  '📖',
  '["Follow words left to right and top to bottom", "Understand that words are separated by spaces", "Identify parts of a book", "Distinguish letters from words", "Recognize sentence boundaries"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Listening and Speaking (NEW for K)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  0,
  'Listening and Speaking',
  'Develop oral communication skills through listening and speaking activities',
  7,
  '🎤',
  '["Listen actively to stories and directions", "Follow multi-step oral directions", "Participate in conversations", "Speak in complete sentences", "Ask and answer questions clearly"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Kindergarten Phonemic Awareness Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Phonemic Awareness' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Listening for Sounds', 'Identify sounds in the environment', 1, 1, 15),
  ('Syllable Clapping', 'Clap the syllables in words', 1, 2, 15),
  ('Initial Sound Isolation', 'Identify the first sound in a word', 2, 3, 20),
  ('Final Sound Isolation', 'Identify the last sound in a word', 2, 4, 20),
  ('Medial Sound Isolation', 'Identify the middle sound in CVC words', 2, 5, 20),
  ('Sound Blending', 'Blend individual sounds into words', 2, 6, 20),
  ('Sound Segmentation', 'Break words into individual sounds', 2, 7, 20),
  ('Phoneme Manipulation', 'Add, delete, or substitute sounds in words', 3, 8, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Kindergarten Print Concepts Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Print Concepts' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Parts of a Book', 'Identify cover, title, author, illustrator', 1, 1, 15),
  ('Left to Right', 'Follow text from left to right', 1, 2, 15),
  ('Top to Bottom', 'Read from top to bottom on a page', 1, 3, 15),
  ('Return Sweep', 'Return to the left side for the next line', 1, 4, 15),
  ('Word Boundaries', 'Understand that spaces separate words', 2, 5, 15),
  ('Letter vs Word', 'Distinguish between letters and words', 2, 6, 15),
  ('Sentence Awareness', 'Recognize sentences begin with capitals and end with punctuation', 2, 7, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Kindergarten Listening and Speaking Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Listening and Speaking' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Active Listening', 'Pay attention when others speak', 1, 1, 15),
  ('Following Directions', 'Follow one and two-step directions', 1, 2, 15),
  ('Speaking in Sentences', 'Use complete sentences when speaking', 2, 3, 15),
  ('Asking Questions', 'Ask questions to clarify understanding', 2, 4, 15),
  ('Show and Tell', 'Describe objects and experiences clearly', 2, 5, 20),
  ('Conversations', 'Take turns in conversations with others', 2, 6, 15),
  ('Sharing Ideas', 'Express thoughts and ideas to the class', 2, 7, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Additional Kindergarten Phonics Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Phonics Foundations' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Letter-Sound Correspondence', 'Match letters with their sounds', 2, 6, 20),
  ('CVC Words', 'Read simple consonant-vowel-consonant words', 2, 7, 20),
  ('Word Families', 'Recognize words that share endings like -at, -an, -ig', 2, 8, 20),
  ('Sight Words Level 1', 'Read high-frequency words: the, a, I, is, to', 2, 9, 15),
  ('Sight Words Level 2', 'Read more sight words: and, can, go, we, see', 2, 10, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Additional Kindergarten Reading Comprehension Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Comprehension' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Story Setting', 'Identify where and when a story takes place', 2, 5, 15),
  ('Retelling Stories', 'Retell familiar stories with key details', 2, 6, 20),
  ('Text-to-Self Connections', 'Connect stories to personal experiences', 2, 7, 15),
  ('Fiction vs Nonfiction', 'Distinguish between made-up and real stories', 2, 8, 15),
  ('Author and Illustrator', 'Understand the roles of author and illustrator', 1, 9, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Additional Kindergarten Writing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing Basics' AND grade_level = 0),
  v.name, v.description, 0, 0, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Invented Spelling', 'Write words by sounding them out', 2, 5, 20),
  ('Labeling Pictures', 'Add words to describe drawings', 2, 6, 15),
  ('Writing Sentences', 'Write simple sentences with capitals and periods', 3, 7, 20),
  ('Opinion Writing Intro', 'Write about a favorite thing and why', 2, 8, 20),
  ('Informational Writing Intro', 'Write facts about a topic', 2, 9, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 1 READING ADDITIONS
-- ============================================================================

-- Unit: Fluency and Expression (NEW for Grade 1)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  1,
  'Fluency and Comprehension',
  'Read grade-level text with accuracy, appropriate rate, and expression',
  5,
  '📗',
  '["Read with appropriate pace", "Read with expression and prosody", "Self-monitor and self-correct", "Reread for fluency and understanding", "Read sight words automatically"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Grammar and Language (NEW for Grade 1)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  1,
  'Grammar and Language',
  'Learn the building blocks of sentences and language',
  6,
  '📝',
  '["Identify nouns and verbs", "Use proper capitalization", "Use end punctuation correctly", "Write complete sentences", "Use common adjectives"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Vocabulary Building (NEW for Grade 1)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  1,
  'Vocabulary Building',
  'Expand vocabulary through reading and word study',
  7,
  '🔤',
  '["Learn new words from reading", "Use context clues", "Understand word categories", "Learn synonyms and antonyms", "Use new words in speaking and writing"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 1 Additional Phonics Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Phonics and Word Recognition' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Initial Blends', 'Read words beginning with bl, cl, fl, pl, sl, br, cr, dr, fr, gr, pr, tr', 3, 6, 25),
  ('Final Blends', 'Read words ending with nd, nt, mp, nk, st, ft', 3, 7, 20),
  ('Silent E Words', 'Read CVCe words where e makes the vowel say its name', 3, 8, 25),
  ('Vowel Teams ai/ay', 'Read words with ai and ay vowel teams', 3, 9, 20),
  ('Vowel Teams ee/ea', 'Read words with ee and ea vowel teams', 3, 10, 20),
  ('Vowel Teams oa/ow', 'Read words with oa and ow (as in snow) vowel teams', 3, 11, 20),
  ('R-Controlled ar', 'Read words with ar like car and start', 3, 12, 20),
  ('R-Controlled or', 'Read words with or like for and storm', 3, 13, 20),
  ('Soft c and g', 'Read words where c says /s/ and g says /j/', 3, 14, 20),
  ('Two-Syllable Words', 'Decode simple two-syllable words', 3, 15, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 1 Grammar and Language Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Grammar and Language' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Nouns', 'Identify nouns as person, place, thing, or animal', 2, 1, 20),
  ('Verbs', 'Identify action words in sentences', 2, 2, 20),
  ('Adjectives', 'Use words that describe nouns', 2, 3, 20),
  ('Complete Sentences', 'Write sentences with a subject and predicate', 2, 4, 20),
  ('Capitalization', 'Capitalize the first word and proper nouns', 2, 5, 15),
  ('End Punctuation', 'Use periods, question marks, and exclamation points', 2, 6, 15),
  ('Commas in Dates', 'Use commas between day and year in dates', 2, 7, 15),
  ('Singular and Plural', 'Add -s or -es to make words plural', 2, 8, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 1 Vocabulary Building Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Vocabulary Building' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Learning New Words', 'Build vocabulary through reading and conversation', 2, 1, 15),
  ('Word Categories', 'Sort words into categories like foods, animals, colors', 2, 2, 15),
  ('Opposites', 'Learn pairs of antonyms like hot/cold, big/small', 2, 3, 15),
  ('Similar Words', 'Learn synonyms that mean the same thing', 2, 4, 15),
  ('Shades of Meaning', 'Understand words like walk, march, strut', 3, 5, 20),
  ('Using Context Clues', 'Figure out word meanings from the sentence', 3, 6, 20),
  ('Compound Words', 'Recognize words made from two smaller words', 2, 7, 15),
  ('Using a Dictionary', 'Introduction to using picture dictionaries', 2, 8, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 1 Additional Reading Fluency Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Fluency and Comprehension' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Sight Word Fluency', 'Read high-frequency words quickly and automatically', 2, 1, 15),
  ('Phrased Reading', 'Read in meaningful phrases rather than word by word', 3, 2, 20),
  ('Reading with Prosody', 'Use appropriate intonation and expression', 3, 3, 20),
  ('Self-Monitoring', 'Notice when reading does not make sense', 3, 4, 15),
  ('Self-Correcting', 'Fix mistakes when reading does not sound right', 3, 5, 15),
  ('Partner Reading', 'Practice fluency by reading with a partner', 2, 6, 20),
  ('Repeated Reading', 'Reread familiar texts to build fluency', 2, 7, 15)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 1 Additional Comprehension Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Comprehension Strategies' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Author''s Purpose', 'Understand why the author wrote the text', 3, 5, 20),
  ('Cause and Effect', 'Identify what happened and why', 3, 6, 20),
  ('Visualizing', 'Create mental pictures while reading', 2, 7, 15),
  ('Text Features', 'Use titles, headings, and pictures for meaning', 2, 8, 15),
  ('Nonfiction vs Fiction', 'Compare information texts to stories', 2, 9, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 1 Additional Writing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 1),
  v.name, v.description, 1, 1, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Personal Narratives', 'Write about real events from your life', 3, 5, 25),
  ('How-To Writing', 'Write steps to explain how to do something', 3, 6, 25),
  ('Friendly Letters', 'Write letters to friends and family', 3, 7, 25),
  ('Adding Details', 'Include descriptive details in writing', 3, 8, 20),
  ('Beginning, Middle, End', 'Organize stories with clear structure', 3, 9, 20),
  ('Revising Writing', 'Make writing better by adding and changing', 3, 10, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 2 READING ADDITIONS
-- ============================================================================

-- Unit: Fluency Development (NEW for Grade 2)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  2,
  'Fluency Development',
  'Build reading fluency with accuracy, rate, and expression',
  5,
  '📘',
  '["Read grade-level text fluently", "Read with appropriate pacing", "Use expression based on punctuation", "Self-correct errors efficiently", "Read aloud with confidence"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Grammar and Conventions (NEW for Grade 2)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  2,
  'Grammar and Conventions',
  'Master sentence structure and language conventions',
  6,
  '📋',
  '["Use correct subject-verb agreement", "Use proper verb tenses", "Expand sentences with adjectives and adverbs", "Use apostrophes correctly", "Write varied sentence types"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Literary Elements (NEW for Grade 2)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  2,
  'Literary Elements',
  'Analyze story elements and literary features',
  7,
  '📕',
  '["Identify plot elements", "Analyze character traits", "Understand point of view", "Identify theme and lesson", "Compare different versions of stories"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 2 Fluency Development Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Fluency Development' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Reading Rate', 'Read at an appropriate pace for comprehension', 3, 1, 20),
  ('Expression and Intonation', 'Use voice to match the meaning of text', 3, 2, 20),
  ('Phrasing', 'Read in meaningful phrases and clauses', 3, 3, 20),
  ('Punctuation Cues', 'Use punctuation to guide expression', 2, 4, 15),
  ('Dialogue Reading', 'Read character dialogue with appropriate voice', 3, 5, 20),
  ('Poetry Reading', 'Read poems with rhythm and expression', 3, 6, 20),
  ('Readers Theater', 'Perform scripts with fluency and expression', 3, 7, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 2 Grammar and Conventions Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Grammar and Conventions' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Types of Nouns', 'Identify common, proper, and collective nouns', 3, 1, 20),
  ('Pronouns', 'Use pronouns to replace nouns', 3, 2, 20),
  ('Verb Tenses', 'Use past, present, and future tense verbs correctly', 3, 3, 25),
  ('Subject-Verb Agreement', 'Make subjects and verbs match in number', 3, 4, 20),
  ('Adjectives and Adverbs', 'Use words that describe nouns and verbs', 3, 5, 20),
  ('Apostrophes', 'Use apostrophes for contractions and possessives', 3, 6, 20),
  ('Commas in Series', 'Use commas to separate items in a list', 2, 7, 15),
  ('Sentence Types', 'Write statements, questions, commands, exclamations', 3, 8, 20),
  ('Combining Sentences', 'Join sentences using and, but, or', 3, 9, 20),
  ('Quotation Marks', 'Use quotation marks for dialogue', 3, 10, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 2 Literary Elements Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Literary Elements' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Plot Structure', 'Identify beginning, middle, end, and problem-solution', 3, 1, 25),
  ('Character Analysis', 'Describe characters using traits and evidence', 3, 2, 25),
  ('Setting Details', 'Analyze how setting affects the story', 3, 3, 20),
  ('Point of View', 'Identify first and third person narration', 3, 4, 20),
  ('Theme and Moral', 'Identify the lesson or message of a story', 4, 5, 25),
  ('Fables and Folktales', 'Understand features of traditional tales', 3, 6, 20),
  ('Comparing Stories', 'Compare two versions of the same story', 4, 7, 25),
  ('Poetry Elements', 'Identify rhyme, rhythm, and imagery in poems', 3, 8, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 2 Additional Advanced Phonics Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Advanced Phonics' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Vowel Diphthongs oi/oy', 'Read words with oi and oy sounds', 3, 5, 20),
  ('Vowel Diphthongs ou/ow', 'Read words with ou and ow (as in cow) sounds', 3, 6, 20),
  ('Silent Letters', 'Read words with silent k, w, b, g', 3, 7, 20),
  ('Soft and Hard c/g', 'Apply rules for c and g sounds', 3, 8, 20),
  ('Three-Letter Blends', 'Read words with str, spr, scr, spl', 4, 9, 25),
  ('Multisyllabic Words', 'Divide and decode longer words', 4, 10, 25),
  ('Irregular Plurals', 'Read words like children, mice, teeth', 3, 11, 20),
  ('Homophones', 'Distinguish between words that sound alike', 3, 12, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 2 Additional Reading Comprehension Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Comprehension' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Making Inferences', 'Use clues to figure out what is not directly stated', 4, 5, 25),
  ('Drawing Conclusions', 'Combine information to reach conclusions', 4, 6, 25),
  ('Author''s Purpose', 'Determine why the author wrote the text', 3, 7, 20),
  ('Text Structure', 'Identify how information is organized', 3, 8, 20),
  ('Graphic Features', 'Use charts, diagrams, and maps to understand text', 3, 9, 20),
  ('Summarizing', 'Retell the most important ideas briefly', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 2 Additional Vocabulary Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Vocabulary Development' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Prefixes un- and re-', 'Learn how prefixes change word meanings', 3, 5, 20),
  ('Suffixes -ful and -less', 'Learn how suffixes change word meanings', 3, 6, 20),
  ('Multiple-Meaning Words', 'Understand words with more than one meaning', 3, 7, 20),
  ('Using Glossaries', 'Find word meanings in glossaries', 3, 8, 20),
  ('Academic Vocabulary', 'Learn words used in school subjects', 3, 9, 20),
  ('Figurative Language Intro', 'Introduction to similes and simple idioms', 4, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 2 Additional Writing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 2),
  v.name, v.description, 2, 2, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Personal Narratives', 'Write about personal experiences with details', 4, 5, 30),
  ('Fictional Narratives', 'Create made-up stories with characters and plot', 4, 6, 30),
  ('Research Reports', 'Write informational texts using sources', 4, 7, 35),
  ('Persuasive Writing', 'Write to convince readers of an opinion', 4, 8, 30),
  ('Poetry Writing', 'Write simple poems with rhyme and imagery', 3, 9, 25),
  ('Letter Writing', 'Write friendly and formal letters', 3, 10, 25),
  ('The Writing Process', 'Prewrite, draft, revise, edit, publish', 3, 11, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Kindergarten New Units: 3 (Phonemic Awareness, Print Concepts, Listening/Speaking)
-- Kindergarten New Topics: ~45
--
-- Grade 1 New Units: 3 (Fluency, Grammar, Vocabulary)
-- Grade 1 New Topics: ~46
--
-- Grade 2 New Units: 3 (Fluency, Grammar, Literary Elements)
-- Grade 2 New Topics: ~56
--
-- Total New Topics: ~147
-- ============================================================================
