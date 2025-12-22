-- ============================================================================
-- GRADES 3-5 READING/ELA CURRICULUM EXPANSION
-- ============================================================================
-- This migration expands Grades 3-5 Reading/ELA with comprehension,
-- literary analysis, informational text, vocabulary, grammar, and writing
-- ============================================================================

-- ============================================================================
-- GRADE 3 READING ADDITIONS
-- ============================================================================

-- Unit: Reading Literature (Grade 3)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  3,
  'Reading Literature',
  'Analyze stories, dramas, and poetry with increasing depth',
  1,
  '📚',
  '["Describe characters and their motivations", "Explain how setting affects plot", "Determine theme and lesson", "Identify point of view", "Compare and contrast texts"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Reading Informational Text (Grade 3)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  3,
  'Reading Informational Text',
  'Comprehend and analyze nonfiction texts and their structures',
  2,
  '📰',
  '["Determine main idea and key details", "Understand text features", "Identify author purpose", "Use text evidence", "Compare texts on same topic"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Vocabulary and Word Study (Grade 3)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  3,
  'Vocabulary and Word Study',
  'Build vocabulary through morphology and context',
  3,
  '📖',
  '["Use context clues effectively", "Understand prefixes and suffixes", "Learn Greek and Latin roots", "Understand figurative language", "Use reference materials"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Writing (Grade 3)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  3,
  'Writing',
  'Write narratives, informative texts, and opinion pieces with organization',
  4,
  '✍️',
  '["Write organized narratives with details", "Write informative texts with facts", "Write opinion pieces with reasons", "Use the writing process", "Apply grade-level conventions"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Grammar and Language (Grade 3)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  3,
  'Grammar and Language',
  'Master sentence structure and grammar conventions',
  5,
  '📝',
  '["Understand parts of speech", "Use verb tenses correctly", "Write complex sentences", "Use commas and quotation marks", "Apply spelling patterns"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Fluency and Reading Strategies (Grade 3)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  3,
  'Fluency and Reading Strategies',
  'Read fluently and apply comprehension strategies',
  6,
  '📗',
  '["Read with accuracy and expression", "Apply fix-up strategies", "Monitor comprehension", "Adjust reading rate", "Read increasingly complex texts"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 3 Reading Literature Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Asking Questions About Stories', 'Ask and answer questions using text evidence', 2, 1, 25),
  ('Determining Theme', 'Find the central message or lesson', 3, 2, 30),
  ('Character Traits and Motivations', 'Describe characters using evidence', 3, 3, 25),
  ('Setting and Plot', 'Explain how setting influences events', 3, 4, 25),
  ('Sequence of Events', 'Describe how events build on each other', 2, 5, 25),
  ('Point of View', 'Distinguish your point of view from narrator or characters', 3, 6, 25),
  ('Comparing Stories', 'Compare settings, themes, and plots across texts', 3, 7, 30),
  ('Fables, Folktales, Myths', 'Understand features of traditional literature', 3, 8, 25),
  ('Drama Elements', 'Understand play structure, dialogue, stage directions', 3, 9, 25),
  ('Poetry Analysis', 'Analyze rhythm, rhyme, and imagery', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 3 Reading Informational Text Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Main Idea and Key Details', 'Determine the main idea with supporting details', 2, 1, 25),
  ('Text Structure', 'Identify cause-effect, compare-contrast, sequence', 3, 2, 30),
  ('Text Features', 'Use headings, maps, diagrams, and glossaries', 2, 3, 20),
  ('Author''s Purpose', 'Determine why the author wrote the text', 3, 4, 25),
  ('Point of View', 'Identify the author''s point of view', 3, 5, 25),
  ('Using Evidence', 'Support answers with evidence from the text', 3, 6, 25),
  ('Comparing Informational Texts', 'Compare two texts on the same topic', 3, 7, 30),
  ('Technical Vocabulary', 'Understand domain-specific words', 3, 8, 20),
  ('Logical Connections', 'Describe logical connections in text', 3, 9, 25),
  ('Integrating Information', 'Combine information from multiple sources', 3, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 3 Vocabulary and Word Study Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Vocabulary and Word Study' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Context Clues Strategies', 'Use sentence and paragraph context', 2, 1, 20),
  ('Common Prefixes', 'Learn un-, re-, dis-, pre-, mis-', 3, 2, 25),
  ('Common Suffixes', 'Learn -ful, -less, -able, -ment, -ness', 3, 3, 25),
  ('Root Words', 'Identify root words in complex words', 3, 4, 25),
  ('Synonyms and Antonyms', 'Understand and use word relationships', 2, 5, 20),
  ('Homophones', 'Distinguish between their/there/they''re, to/too/two', 3, 6, 20),
  ('Similes and Metaphors', 'Understand figurative comparisons', 3, 7, 25),
  ('Idioms', 'Understand common idiomatic expressions', 3, 8, 25),
  ('Dictionary Skills', 'Use dictionaries for pronunciation and meaning', 2, 9, 20),
  ('Academic Vocabulary', 'Learn words for school subjects', 3, 10, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 3 Writing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Narrative Writing', 'Write stories with developed events and dialogue', 3, 1, 35),
  ('Personal Narratives', 'Write about real experiences with details', 3, 2, 30),
  ('Informative Writing', 'Write to explain with facts and definitions', 3, 3, 35),
  ('Research Writing', 'Write short research projects using sources', 4, 4, 40),
  ('Opinion Writing', 'State opinions with supporting reasons', 3, 5, 30),
  ('Paragraph Structure', 'Write focused paragraphs with topic sentences', 2, 6, 25),
  ('Transitions', 'Use transition words to connect ideas', 3, 7, 20),
  ('Introduction and Conclusion', 'Write strong beginnings and endings', 3, 8, 25),
  ('Revising', 'Improve writing by adding, deleting, reorganizing', 3, 9, 25),
  ('Editing', 'Fix spelling, grammar, and punctuation errors', 2, 10, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 3 Grammar and Language Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Grammar and Language' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Nouns and Pronouns', 'Use abstract nouns and pronoun agreement', 3, 1, 20),
  ('Regular and Irregular Verbs', 'Form past tense correctly', 3, 2, 25),
  ('Subject-Verb Agreement', 'Match subjects and verbs in sentences', 3, 3, 20),
  ('Adjectives and Adverbs', 'Use comparative and superlative forms', 3, 4, 25),
  ('Conjunctions', 'Use coordinating and subordinating conjunctions', 3, 5, 25),
  ('Simple and Compound Sentences', 'Write and combine sentences', 3, 6, 25),
  ('Capitalization Rules', 'Apply capitalization in titles and proper nouns', 2, 7, 20),
  ('Comma Usage', 'Use commas in addresses, dialogue, and series', 3, 8, 25),
  ('Possessives', 'Form singular and plural possessives', 3, 9, 20),
  ('Spelling Patterns', 'Apply spelling rules and patterns', 2, 10, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 3 Fluency Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Fluency and Reading Strategies' AND grade_level = 3),
  v.name, v.description, 3, 3, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Reading with Expression', 'Use appropriate expression and intonation', 3, 1, 20),
  ('Phrased Reading', 'Group words meaningfully while reading', 3, 2, 20),
  ('Reading Rate', 'Adjust reading speed for different texts', 3, 3, 20),
  ('Self-Monitoring', 'Check for understanding while reading', 3, 4, 20),
  ('Fix-Up Strategies', 'Reread, slow down, or use context when confused', 3, 5, 25),
  ('Silent Reading', 'Sustain silent reading for extended periods', 2, 6, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 4 READING ADDITIONS
-- ============================================================================

-- Unit: Reading Literature (Grade 4)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  4,
  'Reading Literature',
  'Analyze literature with attention to structure and craft',
  1,
  '📚',
  '["Analyze theme development", "Describe character depth and change", "Compare first and third person", "Analyze structural elements", "Compare texts across genres"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Reading Informational Text (Grade 4)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  4,
  'Reading Informational Text',
  'Comprehend complex informational texts and integrate information',
  2,
  '📰',
  '["Summarize with main idea and details", "Analyze text structure", "Integrate information from sources", "Explain supporting evidence", "Compare firsthand and secondhand accounts"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Vocabulary and Word Analysis (Grade 4)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  4,
  'Vocabulary and Word Analysis',
  'Develop vocabulary through word study and context',
  3,
  '📖',
  '["Apply Greek and Latin affixes", "Use context for word meaning", "Understand figurative language", "Distinguish connotation and denotation", "Use reference materials efficiently"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Writing (Grade 4)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  4,
  'Writing',
  'Write extended texts with clear organization and development',
  4,
  '✍️',
  '["Write narratives with descriptive details", "Write informative texts with categories", "Write opinion pieces with evidence", "Conduct short research projects", "Apply the writing process"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Grammar and Conventions (Grade 4)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  4,
  'Grammar and Conventions',
  'Master complex sentence structures and conventions',
  5,
  '📝',
  '["Use relative pronouns and adverbs", "Form progressive verb tenses", "Order adjectives correctly", "Use prepositional phrases", "Apply punctuation rules"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 4 Reading Literature Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Inferring from Text', 'Draw inferences using textual evidence', 3, 1, 30),
  ('Theme Development', 'Determine theme from story details', 4, 2, 30),
  ('Character Analysis', 'Analyze character traits, motivations, and changes', 4, 3, 30),
  ('Comparing Points of View', 'Compare first and third person narration', 3, 4, 25),
  ('Story Structure', 'Analyze how parts of a story work together', 3, 5, 30),
  ('Poetry Structure', 'Analyze verse, rhythm, and meter', 4, 6, 30),
  ('Drama Structure', 'Analyze acts, scenes, and stage directions', 3, 7, 30),
  ('Figurative Language', 'Interpret similes, metaphors, and personification', 4, 8, 30),
  ('Comparing Myths and Stories', 'Compare traditional literature across cultures', 4, 9, 30),
  ('Making Connections', 'Connect texts to self, other texts, and world', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 4 Reading Informational Text Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Main Idea and Summarizing', 'Identify main idea and summarize text', 3, 1, 30),
  ('Using Evidence', 'Explain how evidence supports main points', 3, 2, 25),
  ('Text Structures', 'Analyze cause-effect, problem-solution, chronology', 3, 3, 30),
  ('Integrating Information', 'Combine information from multiple sources', 4, 4, 35),
  ('Primary and Secondary Sources', 'Compare firsthand and secondhand accounts', 4, 5, 30),
  ('Author''s Reasons and Evidence', 'Explain how authors support their points', 3, 6, 25),
  ('Interpreting Graphics', 'Interpret charts, graphs, diagrams, and timelines', 3, 7, 25),
  ('Comparing Accounts', 'Compare focus and information in different accounts', 4, 8, 30),
  ('Technical Vocabulary', 'Use domain-specific vocabulary in context', 3, 9, 25),
  ('Evaluating Arguments', 'Identify claims and supporting evidence', 4, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 4 Vocabulary Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Vocabulary and Word Analysis' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Greek and Latin Roots', 'Learn common roots like aud, rupt, struct', 3, 1, 25),
  ('Advanced Prefixes', 'Learn pre-, anti-, inter-, trans-', 3, 2, 25),
  ('Advanced Suffixes', 'Learn -tion, -ment, -ity, -ous', 3, 3, 25),
  ('Connotation and Denotation', 'Distinguish literal and emotional meaning', 4, 4, 30),
  ('Synonyms with Nuance', 'Choose words with precise meaning', 3, 5, 25),
  ('Similes and Metaphors', 'Interpret complex figurative language', 4, 6, 30),
  ('Idioms and Proverbs', 'Understand common expressions', 3, 7, 25),
  ('Word Relationships', 'Understand analogies and word families', 4, 8, 30),
  ('Using Thesaurus', 'Use a thesaurus to find precise words', 3, 9, 20),
  ('Content Vocabulary', 'Learn vocabulary for science, social studies', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 4 Writing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Narrative Writing', 'Write stories with plot development and dialogue', 4, 1, 40),
  ('Descriptive Writing', 'Use sensory details and precise language', 3, 2, 30),
  ('Informative/Explanatory', 'Write to explain with categories and definitions', 4, 3, 40),
  ('Research Projects', 'Conduct research and take notes from sources', 4, 4, 45),
  ('Opinion Essays', 'Support opinions with reasons and evidence', 4, 5, 40),
  ('Paragraph Organization', 'Write coherent paragraphs with supporting details', 3, 6, 30),
  ('Using Transitions', 'Connect ideas with transition words and phrases', 3, 7, 25),
  ('Introductions and Conclusions', 'Write engaging openings and effective closings', 3, 8, 30),
  ('Revising for Clarity', 'Revise to improve organization and word choice', 3, 9, 30),
  ('Editing for Conventions', 'Edit for grammar, spelling, and punctuation', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 4 Grammar Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Grammar and Conventions' AND grade_level = 4),
  v.name, v.description, 4, 4, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Relative Pronouns', 'Use who, whom, whose, which, that correctly', 3, 1, 25),
  ('Relative Adverbs', 'Use where, when, why in sentences', 3, 2, 20),
  ('Progressive Verb Tenses', 'Form and use progressive tenses', 3, 3, 25),
  ('Modal Auxiliaries', 'Use can, may, must appropriately', 3, 4, 25),
  ('Adjective Order', 'Order adjectives within sentences', 3, 5, 20),
  ('Prepositional Phrases', 'Use prepositional phrases correctly', 3, 6, 25),
  ('Complete Sentences', 'Avoid fragments and run-ons', 3, 7, 25),
  ('Frequently Confused Words', 'Distinguish to/too/two, there/their/they''re', 3, 8, 25),
  ('Commas and Quotations', 'Use punctuation with dialogue', 3, 9, 25),
  ('Capitalization', 'Apply capitalization rules consistently', 2, 10, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 5 READING ADDITIONS
-- ============================================================================

-- Unit: Reading Literature (Grade 5)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  5,
  'Reading Literature',
  'Analyze complex literary texts with attention to craft and meaning',
  1,
  '📚',
  '["Quote accurately from text", "Determine theme with evidence", "Compare characters across texts", "Analyze narrator voice", "Explain how chapters build structure"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Reading Informational Text (Grade 5)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  5,
  'Reading Informational Text',
  'Analyze and synthesize complex informational texts',
  2,
  '📰',
  '["Quote text evidence accurately", "Summarize texts objectively", "Analyze multiple accounts", "Identify author''s purpose and bias", "Integrate information from sources"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Vocabulary and Word Study (Grade 5)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  5,
  'Vocabulary and Word Study',
  'Master vocabulary through morphology and literary analysis',
  3,
  '📖',
  '["Use Greek and Latin affixes and roots", "Interpret figurative language", "Analyze word relationships", "Understand academic vocabulary", "Use reference materials proficiently"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Writing (Grade 5)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  5,
  'Writing',
  'Write well-organized texts with precise language and style',
  4,
  '✍️',
  '["Write narratives with pacing and dialogue", "Write informative texts with domain vocabulary", "Write arguments with evidence", "Conduct research with multiple sources", "Revise and edit effectively"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Grammar and Conventions (Grade 5)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  5,
  'Grammar and Conventions',
  'Master advanced grammar and language conventions',
  5,
  '📝',
  '["Use perfect verb tenses", "Use correlative conjunctions", "Use punctuation for effect", "Expand sentences for meaning", "Apply spelling rules consistently"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Speaking and Listening (Grade 5)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  5,
  'Speaking and Listening',
  'Communicate effectively in discussions and presentations',
  6,
  '🎤',
  '["Participate in collaborative discussions", "Summarize and paraphrase information", "Present findings clearly", "Use multimedia in presentations", "Adapt speech to context"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 5 Reading Literature Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Quoting Text Evidence', 'Quote accurately to support analysis', 3, 1, 30),
  ('Theme Determination', 'Determine theme from characters, setting, plot', 4, 2, 35),
  ('Character Comparison', 'Compare and contrast characters across texts', 4, 3, 35),
  ('Narrator and Point of View', 'Analyze how narrator affects story telling', 4, 4, 30),
  ('Story Structure Analysis', 'Explain how chapters and scenes build plot', 4, 5, 35),
  ('Poetry Elements', 'Analyze how form contributes to meaning', 4, 6, 30),
  ('Drama Elements', 'Analyze structure of plays and performances', 4, 7, 30),
  ('Figurative Language Analysis', 'Interpret metaphors, similes, personification', 4, 8, 30),
  ('Visual and Multimedia Elements', 'Analyze visual elements in literature', 3, 9, 25),
  ('Comparing Genres', 'Compare stories, dramas, and poems on same topic', 4, 10, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 5 Reading Informational Text Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Accurate Quotation', 'Quote accurately when explaining text', 3, 1, 25),
  ('Determining Main Ideas', 'Identify two or more main ideas', 3, 2, 30),
  ('Summarizing Objectively', 'Summarize without opinion or interpretation', 4, 3, 30),
  ('Text Structure Analysis', 'Analyze chronology, cause-effect, problem-solution', 4, 4, 35),
  ('Multiple Accounts', 'Analyze multiple accounts of same event', 4, 5, 35),
  ('Author''s Purpose and Position', 'Analyze how author''s purpose shapes text', 4, 6, 35),
  ('Evaluating Reasons and Evidence', 'Assess if evidence supports claims', 4, 7, 35),
  ('Integrating Information', 'Integrate information from several sources', 4, 8, 40),
  ('Comparing Text Structures', 'Compare structure of two texts on same topic', 4, 9, 35),
  ('Digital and Print Sources', 'Analyze information from multiple formats', 4, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 5 Vocabulary Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Vocabulary and Word Study' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Greek Roots', 'Learn roots like graph, photo, tele, bio', 4, 1, 30),
  ('Latin Roots', 'Learn roots like port, scrib, ject, duct', 4, 2, 30),
  ('Word Derivations', 'Trace word origins and changes', 4, 3, 30),
  ('Connotation in Context', 'Analyze how word choice affects meaning', 4, 4, 30),
  ('Figurative Language', 'Interpret similes, metaphors, personification', 4, 5, 30),
  ('Idioms and Adages', 'Understand figurative expressions and proverbs', 3, 6, 25),
  ('Analogies', 'Complete and explain analogies', 4, 7, 30),
  ('Academic Language', 'Use formal and informal English appropriately', 4, 8, 25),
  ('Reference Skills', 'Use dictionaries, thesauruses, and glossaries', 3, 9, 25),
  ('Content Vocabulary', 'Learn specialized vocabulary for subjects', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 5 Writing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Narrative Writing', 'Write narratives with pacing, dialogue, description', 4, 1, 45),
  ('Informative Writing', 'Write to explain with facts and examples', 4, 2, 45),
  ('Argumentative Writing', 'Write arguments with claims and evidence', 4, 3, 45),
  ('Research Projects', 'Research using multiple sources and note-taking', 4, 4, 50),
  ('Essay Structure', 'Write organized essays with introduction, body, conclusion', 4, 5, 40),
  ('Developing Ideas', 'Develop ideas with facts, details, and examples', 4, 6, 35),
  ('Precise Language', 'Use domain-specific and precise vocabulary', 4, 7, 30),
  ('Transitions', 'Use varied transitions to connect ideas', 3, 8, 25),
  ('Revising for Style', 'Revise for clarity, coherence, and voice', 4, 9, 35),
  ('Publishing', 'Publish writing for different audiences', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 5 Grammar Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Grammar and Conventions' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Perfect Verb Tenses', 'Use present, past, and future perfect tenses', 4, 1, 30),
  ('Verb Tense Consistency', 'Maintain consistent tense throughout writing', 3, 2, 25),
  ('Correlative Conjunctions', 'Use either/or, neither/nor, both/and', 3, 3, 25),
  ('Interjections', 'Use interjections appropriately', 2, 4, 15),
  ('Titles and Punctuation', 'Punctuate titles correctly', 3, 5, 20),
  ('Commas for Introductions', 'Use commas with introductory elements', 3, 6, 25),
  ('Sentence Variety', 'Vary sentence beginnings and structures', 4, 7, 30),
  ('Precise Language', 'Choose words for precise meaning', 4, 8, 25),
  ('Formal and Informal', 'Adjust formality for audience', 3, 9, 25),
  ('Spelling Patterns', 'Apply advanced spelling rules and patterns', 3, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 5 Speaking and Listening Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Speaking and Listening' AND grade_level = 5),
  v.name, v.description, 5, 5, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Collaborative Discussions', 'Participate effectively in conversations', 3, 1, 25),
  ('Discussion Preparation', 'Come prepared with evidence and questions', 3, 2, 25),
  ('Building on Ideas', 'Build on others'' ideas and express your own', 3, 3, 25),
  ('Summarizing Information', 'Summarize spoken information accurately', 4, 4, 30),
  ('Evaluating Speakers', 'Evaluate claims and reasoning in presentations', 4, 5, 30),
  ('Presenting Findings', 'Report on topics with logical organization', 4, 6, 35),
  ('Using Multimedia', 'Include multimedia in presentations', 3, 7, 30),
  ('Adapting Speech', 'Adapt speech for formal and informal contexts', 4, 8, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Grade 3 New Units: 6 (Literature, Informational, Vocabulary, Writing, Grammar, Fluency)
-- Grade 3 New Topics: ~56
--
-- Grade 4 New Units: 5 (Literature, Informational, Vocabulary, Writing, Grammar)
-- Grade 4 New Topics: ~50
--
-- Grade 5 New Units: 6 (Literature, Informational, Vocabulary, Writing, Grammar, Speaking)
-- Grade 5 New Topics: ~58
--
-- Total New Topics: ~164
-- ============================================================================
