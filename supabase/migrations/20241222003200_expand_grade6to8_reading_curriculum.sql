-- ============================================================================
-- GRADES 6-8 READING/ELA CURRICULUM EXPANSION
-- ============================================================================
-- This migration expands Middle School Reading/ELA with comprehensive coverage
-- Aligned with Common Core State Standards for grades 6-8
-- ============================================================================

-- ============================================================================
-- GRADE 6 READING/ELA UNITS AND TOPICS
-- ============================================================================

-- Unit: Reading Literature (Grade 6)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  6,
  'Reading Literature',
  'Analyze literary texts including fiction, poetry, and drama',
  1,
  '📚',
  '["Cite textual evidence to support analysis", "Determine theme and its development", "Describe plot and character development", "Analyze how parts of a text contribute to meaning", "Compare and contrast reading experiences"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Reading Informational Text (Grade 6)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  6,
  'Reading Informational Text',
  'Analyze nonfiction texts and informational sources',
  2,
  '📰',
  '["Determine central ideas and summarize", "Analyze how ideas are developed", "Determine word meanings in context", "Analyze text structure", "Evaluate arguments and claims"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Vocabulary and Word Study (Grade 6)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  6,
  'Vocabulary and Word Study',
  'Develop vocabulary through context, roots, and word relationships',
  3,
  '📖',
  '["Use context clues for word meanings", "Apply knowledge of Greek and Latin roots", "Analyze word relationships", "Distinguish connotation and denotation", "Use reference materials effectively"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Writing (Grade 6)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  6,
  'Writing',
  'Develop skills in argumentative, informative, and narrative writing',
  4,
  '✍️',
  '["Write arguments with clear claims and evidence", "Write informative texts with organization", "Write narratives with descriptive details", "Use the writing process effectively", "Conduct short research projects"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Grammar and Language Conventions (Grade 6)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  6,
  'Grammar and Language Conventions',
  'Master grammar, usage, and mechanics for effective communication',
  5,
  '📝',
  '["Use proper pronoun case", "Recognize and correct vague pronouns", "Apply correct punctuation", "Vary sentence patterns", "Maintain consistent style and tone"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Speaking and Listening (Grade 6)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  6,
  'Speaking and Listening',
  'Develop skills in collaborative discussions and presentations',
  6,
  '🎤',
  '["Engage effectively in collaborative discussions", "Interpret information in diverse media", "Evaluate speaker point of view", "Present claims with evidence", "Use appropriate eye contact and volume"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 6 Reading Literature Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Citing Textual Evidence', 'Support analysis with evidence from text', 2, 1, 25),
  ('Determining Theme', 'Identify how theme develops through details', 2, 2, 30),
  ('Theme Development', 'Trace theme evolution through the text', 2, 3, 30),
  ('Summarizing Literature', 'Provide objective summary of literary texts', 2, 4, 25),
  ('Character Analysis', 'Analyze how characters change and respond', 2, 5, 30),
  ('Plot Structure', 'Identify exposition, rising action, climax, resolution', 2, 6, 25),
  ('Point of View', 'Analyze how point of view affects narrative', 2, 7, 30),
  ('Narrator Reliability', 'Evaluate the trustworthiness of narrators', 3, 8, 30),
  ('Word Choice in Literature', 'Analyze how word choice affects meaning and tone', 2, 9, 25),
  ('Figurative Language', 'Interpret similes, metaphors, personification', 2, 10, 30),
  ('Connotative Meaning', 'Understand suggested meanings of words', 2, 11, 25),
  ('Text Structure in Stories', 'Analyze how sentence and chapter structure contribute', 2, 12, 25),
  ('Comparing Texts', 'Compare different genres or forms of literature', 2, 13, 30),
  ('Poetry Analysis', 'Analyze structure and meaning in poems', 2, 14, 30),
  ('Drama Elements', 'Understand acts, scenes, stage directions', 2, 15, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 6 Reading Informational Text Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Central Ideas in Nonfiction', 'Determine central ideas and how they are conveyed', 2, 1, 25),
  ('Summarizing Informational Text', 'Provide objective summaries', 2, 2, 25),
  ('Analyzing Key Individuals', 'Trace how key people are introduced and developed', 2, 3, 25),
  ('Analyzing Events and Ideas', 'Understand how events and ideas develop', 2, 4, 25),
  ('Technical Vocabulary', 'Determine meanings of technical terms', 2, 5, 25),
  ('Academic Vocabulary', 'Understand domain-specific vocabulary', 2, 6, 25),
  ('Text Structure Analysis', 'Analyze how sections contribute to the whole', 2, 7, 30),
  ('Compare and Contrast Structure', 'Identify organizational patterns', 2, 8, 25),
  ('Author''s Purpose', 'Determine author''s point of view and purpose', 2, 9, 30),
  ('Author''s Argument', 'Distinguish claims from evidence', 2, 10, 30),
  ('Evaluating Evidence', 'Assess the quality of reasoning and evidence', 3, 11, 30),
  ('Integrating Information', 'Synthesize information from multiple sources', 3, 12, 30),
  ('Comparing Presentations', 'Compare different media presentations of a topic', 2, 13, 25),
  ('Primary and Secondary Sources', 'Distinguish between source types', 2, 14, 25),
  ('Reading Historical Documents', 'Analyze foundational texts', 2, 15, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 6 Vocabulary and Word Study Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Vocabulary and Word Study' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Context Clues Strategies', 'Use multiple context clues to determine meaning', 2, 1, 25),
  ('Greek Roots', 'Learn common Greek roots and their meanings', 2, 2, 25),
  ('Latin Roots', 'Learn common Latin roots and their meanings', 2, 3, 25),
  ('Prefixes and Suffixes', 'Use affixes to determine word meanings', 2, 4, 25),
  ('Denotation vs Connotation', 'Distinguish literal from suggested meanings', 2, 5, 25),
  ('Synonyms and Antonyms', 'Understand word relationships', 2, 6, 20),
  ('Analogies', 'Complete and analyze word analogies', 2, 7, 25),
  ('Multiple-Meaning Words', 'Determine correct meaning from context', 2, 8, 20),
  ('Word Families', 'Recognize related words and their forms', 2, 9, 20),
  ('Academic Vocabulary', 'Master tier 2 vocabulary words', 2, 10, 25),
  ('Figurative Language in Context', 'Interpret idioms and expressions', 2, 11, 25),
  ('Dictionary and Thesaurus Skills', 'Use reference materials effectively', 2, 12, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 6 Writing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Argumentative Writing Introduction', 'Introduce claims and organize reasons', 2, 1, 35),
  ('Supporting Claims with Evidence', 'Use relevant evidence to support claims', 2, 2, 35),
  ('Addressing Counterclaims', 'Acknowledge and respond to opposing views', 3, 3, 30),
  ('Informative Writing', 'Develop topics with facts and details', 2, 4, 35),
  ('Organizing Informative Text', 'Use headings, graphics, and transitions', 2, 5, 30),
  ('Narrative Writing', 'Write narratives with descriptive details', 2, 6, 35),
  ('Narrative Techniques', 'Use dialogue, pacing, and description', 2, 7, 30),
  ('The Writing Process', 'Plan, draft, revise, edit, publish', 2, 8, 30),
  ('Peer Review', 'Give and receive constructive feedback', 2, 9, 25),
  ('Research Skills Introduction', 'Gather information from multiple sources', 2, 10, 30),
  ('Avoiding Plagiarism', 'Cite sources and paraphrase properly', 2, 11, 25),
  ('Writing Conclusions', 'Create effective endings for writing', 2, 12, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 6 Grammar and Language Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Grammar and Language Conventions' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Pronoun Case', 'Use subjective, objective, and possessive pronouns', 2, 1, 25),
  ('Intensive Pronouns', 'Use pronouns like myself, ourselves correctly', 2, 2, 20),
  ('Vague Pronouns', 'Recognize and correct unclear pronoun references', 2, 3, 25),
  ('Subject-Verb Agreement', 'Ensure agreement in complex sentences', 2, 4, 25),
  ('Verb Tense Consistency', 'Maintain consistent tense throughout writing', 2, 5, 25),
  ('Sentence Patterns', 'Vary sentence structure for effect', 2, 6, 25),
  ('Punctuation Review', 'Use commas, semicolons, and colons correctly', 2, 7, 25),
  ('Capitalization Rules', 'Apply capitalization conventions', 2, 8, 20),
  ('Spelling Patterns', 'Apply spelling rules and patterns', 2, 9, 20),
  ('Style and Tone', 'Maintain consistent style in writing', 2, 10, 25),
  ('Formal vs Informal Language', 'Choose appropriate register', 2, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 6 Speaking and Listening Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Speaking and Listening' AND grade_level = 6),
  v.name, v.description, 6, 6, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Collaborative Discussions', 'Prepare for and participate in discussions', 2, 1, 25),
  ('Following Discussion Rules', 'Set goals and respect diverse viewpoints', 2, 2, 20),
  ('Asking Clarifying Questions', 'Probe reasoning and extend ideas', 2, 3, 25),
  ('Interpreting Media', 'Analyze information in diverse formats', 2, 4, 25),
  ('Evaluating Arguments', 'Assess speaker claims and reasoning', 2, 5, 25),
  ('Presenting Claims', 'Present findings with relevant evidence', 2, 6, 30),
  ('Using Multimedia', 'Incorporate multimedia in presentations', 2, 7, 25),
  ('Presentation Delivery', 'Use appropriate volume and eye contact', 2, 8, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 7 READING/ELA UNITS AND TOPICS
-- ============================================================================

-- Unit: Reading Literature (Grade 7)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  7,
  'Reading Literature',
  'Analyze complex literary texts with deeper interpretation skills',
  1,
  '📚',
  '["Cite several pieces of textual evidence", "Analyze theme development", "Analyze character interaction effects", "Determine meaning of words and phrases", "Compare and contrast fictional portrayals"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Reading Informational Text (Grade 7)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  7,
  'Reading Informational Text',
  'Analyze complex informational texts critically',
  2,
  '📰',
  '["Cite several textual evidence pieces", "Analyze central idea development", "Analyze interactions between individuals and events", "Evaluate author reasoning and evidence", "Compare different source treatments"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Vocabulary and Word Analysis (Grade 7)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  7,
  'Vocabulary and Word Analysis',
  'Master advanced vocabulary strategies and word relationships',
  3,
  '📖',
  '["Analyze context for word meaning", "Use Greek and Latin affixes and roots", "Interpret figurative language", "Distinguish among connotations", "Consult reference materials"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Writing (Grade 7)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  7,
  'Writing',
  'Develop sophisticated argumentative, informative, and narrative writing',
  4,
  '✍️',
  '["Write arguments with logical reasoning", "Write informative texts examining topics", "Write narratives with effective techniques", "Produce clear and coherent writing", "Conduct short research projects"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Grammar and Conventions (Grade 7)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  7,
  'Grammar and Conventions',
  'Master advanced grammar and language conventions',
  5,
  '📝',
  '["Explain function of phrases and clauses", "Use simple, compound, and complex sentences", "Apply punctuation for effect", "Spell correctly", "Choose language for meaning and style"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Speaking and Listening (Grade 7)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  7,
  'Speaking and Listening',
  'Develop advanced discussion and presentation skills',
  6,
  '🎤',
  '["Engage in range of collaborative discussions", "Analyze main ideas and supporting details", "Delineate speaker argument and claims", "Present claims logically", "Include multimedia components"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 7 Reading Literature Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Multiple Textual Evidence', 'Cite several pieces of evidence to support analysis', 2, 1, 30),
  ('Theme Analysis', 'Determine themes and analyze development', 2, 2, 30),
  ('Summarizing with Theme', 'Create summaries that reflect themes', 2, 3, 25),
  ('Character Interaction', 'Analyze how characters influence one another', 2, 4, 30),
  ('Character and Plot Connection', 'Trace how characters advance plot or theme', 3, 5, 30),
  ('Word Meanings in Literature', 'Analyze impact of specific word choices', 2, 6, 25),
  ('Rhyme and Repetition', 'Analyze effects of sound devices in poetry', 2, 7, 30),
  ('Dramatic Irony', 'Identify and analyze dramatic irony', 3, 8, 30),
  ('Structure and Meaning', 'Analyze how form contributes to meaning', 2, 9, 30),
  ('Comparing Poems to Prose', 'Compare poetry and prose versions', 2, 10, 30),
  ('Comparing Perspectives', 'Contrast points of view of characters or narrators', 2, 11, 30),
  ('Suspense and Humor', 'Analyze how authors create effects', 2, 12, 25),
  ('Comparing Fictional Accounts', 'Compare historical fiction to actual history', 2, 13, 30),
  ('Analyzing Mythology', 'Study myths and their cultural significance', 2, 14, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 7 Reading Informational Text Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Supporting Analysis with Evidence', 'Cite several pieces of textual evidence', 2, 1, 25),
  ('Two or More Central Ideas', 'Analyze development of central ideas', 2, 2, 30),
  ('Objective Summaries', 'Write summaries distinct from opinions', 2, 3, 25),
  ('Interactions in Text', 'Analyze interactions between individuals and events', 2, 4, 30),
  ('Technical Meanings', 'Determine technical word meanings', 2, 5, 25),
  ('Text Structure Effects', 'Analyze how structure contributes to meaning', 2, 6, 30),
  ('Author''s Point of View', 'Determine and analyze author''s position', 2, 7, 30),
  ('Distinguishing Positions', 'Distinguish author''s position from others', 2, 8, 30),
  ('Evaluating Reasoning', 'Evaluate soundness of reasoning and evidence', 3, 9, 30),
  ('Comparing Media', 'Compare and contrast text to audio/video versions', 2, 10, 25),
  ('Synthesizing Sources', 'Integrate information from multiple sources', 3, 11, 30),
  ('Analyzing Historical Documents', 'Study significant historical texts', 2, 12, 30),
  ('Scientific Texts', 'Analyze scientific articles and reports', 2, 13, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 7 Vocabulary and Word Analysis Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Vocabulary and Word Analysis' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Advanced Context Clues', 'Use overall meaning to determine word meanings', 2, 1, 25),
  ('Greek and Latin Affixes', 'Use affixes as clues to meaning', 2, 2, 25),
  ('Root Word Analysis', 'Analyze root words for meaning', 2, 3, 25),
  ('Interpreting Figures of Speech', 'Understand literary and biblical allusions', 2, 4, 30),
  ('Word Relationships', 'Analyze relationships between words', 2, 5, 25),
  ('Nuances in Word Meanings', 'Distinguish among related words', 2, 6, 25),
  ('Connotation Analysis', 'Analyze connotative impact of words', 2, 7, 25),
  ('Domain-Specific Vocabulary', 'Master subject-area vocabulary', 2, 8, 25),
  ('Etymology', 'Study word origins and history', 2, 9, 25),
  ('Reference Skills', 'Use dictionaries and glossaries efficiently', 2, 10, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 7 Writing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Argumentative Claims', 'Introduce and support claims with reasoning', 2, 1, 35),
  ('Organizing Arguments', 'Create cohesive argument structure', 2, 2, 30),
  ('Acknowledging Opposing Claims', 'Address alternative or opposing views', 2, 3, 30),
  ('Formal Style in Arguments', 'Maintain appropriate style and tone', 2, 4, 30),
  ('Informative Introductions', 'Introduce topics clearly for readers', 2, 5, 30),
  ('Developing Topics', 'Use facts, definitions, and examples', 2, 6, 30),
  ('Transitions in Writing', 'Create cohesion with transition words', 2, 7, 25),
  ('Precise Language', 'Use domain-specific vocabulary', 2, 8, 25),
  ('Narrative Structure', 'Organize narratives with logical sequence', 2, 9, 30),
  ('Narrative Techniques', 'Use dialogue, pacing, and reflection', 2, 10, 35),
  ('Descriptive Details', 'Develop experiences with sensory details', 2, 11, 30),
  ('Revising and Editing', 'Strengthen writing through revision', 2, 12, 30),
  ('Research Questions', 'Generate research questions', 2, 13, 25),
  ('Synthesizing Research', 'Integrate information from multiple sources', 3, 14, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 7 Grammar and Conventions Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Grammar and Conventions' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Phrases and Clauses', 'Explain the function of phrases and clauses', 2, 1, 30),
  ('Simple and Compound Sentences', 'Use and distinguish sentence types', 2, 2, 25),
  ('Complex Sentences', 'Create sentences with dependent clauses', 2, 3, 30),
  ('Compound-Complex Sentences', 'Construct sophisticated sentences', 3, 4, 30),
  ('Misplaced and Dangling Modifiers', 'Recognize and correct modifier errors', 2, 5, 25),
  ('Commas with Coordinate Adjectives', 'Use commas correctly with adjectives', 2, 6, 20),
  ('Choosing Language for Effect', 'Select words for precise meaning', 2, 7, 25),
  ('Eliminating Wordiness', 'Write concisely without redundancy', 2, 8, 25),
  ('Spelling Strategies', 'Apply advanced spelling rules', 2, 9, 20),
  ('Commonly Confused Words', 'Distinguish between similar words', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 7 Speaking and Listening Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Speaking and Listening' AND grade_level = 7),
  v.name, v.description, 7, 7, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Preparing for Discussions', 'Come prepared with evidence and questions', 2, 1, 25),
  ('Building on Others'' Ideas', 'Respond thoughtfully to diverse perspectives', 2, 2, 25),
  ('Posing Questions', 'Ask questions that elicit elaboration', 2, 3, 25),
  ('Acknowledging New Information', 'Modify views based on new evidence', 2, 4, 25),
  ('Analyzing Main Ideas', 'Identify main ideas in diverse media', 2, 5, 25),
  ('Evaluating Speakers', 'Assess speaker''s argument and reasoning', 2, 6, 30),
  ('Logical Presentations', 'Present claims with pertinent descriptions', 2, 7, 30),
  ('Multimedia in Presentations', 'Use multimedia to clarify information', 2, 8, 25),
  ('Adapting Speech', 'Adjust formal or informal style to context', 2, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 8 READING/ELA UNITS AND TOPICS
-- ============================================================================

-- Unit: Reading Literature (Grade 8)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  8,
  'Reading Literature',
  'Analyze literary texts with sophisticated interpretation techniques',
  1,
  '📚',
  '["Cite strongest textual evidence", "Determine themes including universal themes", "Analyze dialogue and incidents for character", "Analyze impact of analogies and allusions", "Analyze extent of modern fiction use of classics"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Reading Informational Text (Grade 8)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  8,
  'Reading Informational Text',
  'Analyze informational texts with critical evaluation skills',
  2,
  '📰',
  '["Cite strongest evidence for inferences", "Determine central ideas and analyze development", "Analyze connections between ideas and events", "Evaluate advantages of different mediums", "Trace and evaluate arguments in text"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Vocabulary and Word Study (Grade 8)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  8,
  'Vocabulary and Word Study',
  'Master sophisticated vocabulary and word analysis strategies',
  3,
  '📖',
  '["Determine word meanings using context", "Use Greek and Latin roots and affixes", "Analyze the impact of specific word choices", "Understand nuances between similar words", "Use reference materials independently"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Writing (Grade 8)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  8,
  'Writing',
  'Develop proficient argumentative, informative, and narrative writing',
  4,
  '✍️',
  '["Write arguments with substantive claims", "Write informative texts to examine topics", "Write narratives with effective techniques", "Use technology to produce writing", "Conduct sustained research projects"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Grammar and Conventions (Grade 8)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  8,
  'Grammar and Conventions',
  'Master complex grammar and conventions for effective writing',
  5,
  '📝',
  '["Explain function of verbals", "Form and use verbs in different moods", "Recognize and correct inappropriate shifts", "Use punctuation to indicate pauses or breaks", "Spell correctly in all writing"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Speaking and Listening (Grade 8)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  8,
  'Speaking and Listening',
  'Master collaborative discussions and formal presentations',
  6,
  '🎤',
  '["Engage in range of collaborative discussions", "Analyze purpose of information in media", "Evaluate soundness of reasoning", "Present claims with relevant evidence", "Adapt speech to varied contexts"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 8 Reading Literature Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Strong Textual Evidence', 'Cite the textual evidence that most strongly supports analysis', 2, 1, 30),
  ('Inferences and Evidence', 'Support inferences with strongest evidence', 2, 2, 30),
  ('Universal Themes', 'Determine themes that recur across literature', 2, 3, 30),
  ('Theme Relationship to Characters', 'Analyze how theme emerges from character and plot', 3, 4, 30),
  ('Dialogue Analysis', 'Analyze how dialogue reveals character', 2, 5, 30),
  ('Incidents and Characterization', 'Trace how incidents propel action and character', 2, 6, 30),
  ('Analogies and Allusions', 'Analyze the impact of analogies and allusions', 3, 7, 30),
  ('Word Choice and Tone', 'Analyze cumulative impact of word choices on tone', 2, 8, 25),
  ('Comparing Structure', 'Compare and contrast structure of two or more texts', 2, 9, 30),
  ('Point of View Differences', 'Analyze different perspectives of characters', 2, 10, 30),
  ('Dramatic Irony Effects', 'Analyze effects created by dramatic irony', 3, 11, 30),
  ('Modern Works and Classics', 'Analyze how modern fiction draws on classics', 3, 12, 35),
  ('Transforming Source Material', 'Analyze how authors transform source material', 3, 13, 35),
  ('Greek Tragedy Elements', 'Study structure and themes of Greek tragedy', 3, 14, 30),
  ('Shakespearean Drama', 'Analyze Shakespeare''s dramatic techniques', 3, 15, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 8 Reading Informational Text Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Strongest Evidence', 'Cite evidence that most strongly supports conclusions', 2, 1, 30),
  ('Central Idea Development', 'Trace how central ideas develop through the text', 2, 2, 30),
  ('Connections Between Ideas', 'Analyze connections between ideas, individuals, events', 2, 3, 30),
  ('Parallel and Analogous Relationships', 'Identify analogous cases and parallel developments', 3, 4, 30),
  ('Figurative and Connotative Meanings', 'Analyze impact of specific word choices', 2, 5, 25),
  ('Paragraph Structure', 'Analyze how sentences and paragraphs develop ideas', 2, 6, 30),
  ('Author''s Perspective', 'Determine author''s point of view and purpose', 2, 7, 30),
  ('Analyzing Rhetorical Techniques', 'Identify how rhetoric shapes content and style', 3, 8, 30),
  ('Evaluating Arguments', 'Trace and evaluate arguments, claims, and evidence', 2, 9, 30),
  ('Identifying Fallacious Reasoning', 'Recognize irrelevant evidence and logical fallacies', 3, 10, 30),
  ('Comparing Mediums', 'Evaluate advantages of using different mediums', 2, 11, 25),
  ('Conflicting Information', 'Analyze how authors with different views emphasize evidence', 3, 12, 35),
  ('U.S. Founding Documents', 'Analyze foundational U.S. documents', 2, 13, 30),
  ('Seminal Speeches', 'Study significant American speeches and writings', 2, 14, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 8 Vocabulary and Word Study Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Vocabulary and Word Study' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Context Clue Mastery', 'Use context as clue to meaning of grade-level words', 2, 1, 25),
  ('Greek and Latin Roots', 'Use common Greek and Latin roots as clues', 2, 2, 25),
  ('Affixes and Word Families', 'Use affixes and word families for meaning', 2, 3, 25),
  ('Figures of Speech', 'Interpret figures of speech in context', 2, 4, 25),
  ('Verbal Irony', 'Identify and interpret verbal irony', 2, 5, 25),
  ('Allusions in Text', 'Analyze allusions to other texts or culture', 3, 6, 30),
  ('Word Relationships and Nuances', 'Use word relationships to understand meaning', 2, 7, 25),
  ('Connotation and Denotation', 'Distinguish between connotative and denotative meanings', 2, 8, 25),
  ('Academic Vocabulary', 'Acquire grade-appropriate academic words', 2, 9, 25),
  ('Reference Materials', 'Use dictionaries, glossaries, and thesauruses', 2, 10, 20),
  ('SAT/ACT Vocabulary', 'Build vocabulary for standardized tests', 2, 11, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 8 Writing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Substantive Claims', 'Introduce and support substantive claims', 2, 1, 35),
  ('Organizing Reasons and Evidence', 'Organize claims with clear reasoning', 2, 2, 30),
  ('Counterclaim Analysis', 'Acknowledge and distinguish counterclaims', 3, 3, 30),
  ('Evidence and Sources', 'Support claims with credible sources', 2, 4, 30),
  ('Formal Style and Tone', 'Establish and maintain formal style', 2, 5, 25),
  ('Strong Conclusions', 'Provide conclusions that support argument', 2, 6, 25),
  ('Informative Introduction', 'Introduce topics with previewing strategies', 2, 7, 30),
  ('Complex Ideas', 'Develop complex ideas with relevant content', 2, 8, 35),
  ('Formatting and Graphics', 'Use formatting and graphics effectively', 2, 9, 25),
  ('Narrative Engagement', 'Engage reader with problem or situation', 2, 10, 30),
  ('Narrative Pacing', 'Use techniques to build toward outcome', 2, 11, 30),
  ('Reflection in Narrative', 'Include reflection on experiences', 2, 12, 30),
  ('Research Process', 'Conduct research with multiple sources', 3, 13, 35),
  ('MLA Format Introduction', 'Learn basic citation formatting', 2, 14, 30),
  ('Evidence Integration', 'Quote and paraphrase while avoiding plagiarism', 2, 15, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 8 Grammar and Conventions Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Grammar and Conventions' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Verbals: Gerunds', 'Explain the function of gerunds', 2, 1, 25),
  ('Verbals: Participles', 'Explain the function of participles', 2, 2, 25),
  ('Verbals: Infinitives', 'Explain the function of infinitives', 2, 3, 25),
  ('Verb Moods', 'Form and use indicative, imperative, interrogative', 3, 4, 30),
  ('Subjunctive Mood', 'Form and use conditional and subjunctive mood', 3, 5, 30),
  ('Active and Passive Voice', 'Form and use active and passive voice', 2, 6, 25),
  ('Voice Shifts', 'Recognize and correct inappropriate shifts in voice', 2, 7, 25),
  ('Ellipsis and Dash', 'Use punctuation to indicate pause or break', 2, 8, 25),
  ('Spelling Mastery', 'Spell correctly in all writing', 2, 9, 20),
  ('Parallel Structure', 'Use parallel structure in sentences', 2, 10, 25),
  ('Sentence Combining', 'Combine sentences for variety and effect', 2, 11, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 8 Speaking and Listening Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Speaking and Listening' AND grade_level = 8),
  v.name, v.description, 8, 8, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Discussion Preparation', 'Come to discussions having read required material', 2, 1, 25),
  ('Tracking Discussion Progress', 'Track progress toward goals in discussions', 2, 2, 25),
  ('Propelling Conversations', 'Pose questions that connect ideas', 2, 3, 25),
  ('Responding to Diverse Views', 'Respond thoughtfully and qualify views', 2, 4, 25),
  ('Analyzing Purpose of Information', 'Analyze purpose and motives behind information', 2, 5, 30),
  ('Evaluating Reasoning and Evidence', 'Evaluate soundness of reasoning and relevance', 3, 6, 30),
  ('Identifying Irrelevant Evidence', 'Recognize evidence that does not support claims', 2, 7, 25),
  ('Presenting Findings', 'Present claims with valid reasoning and evidence', 2, 8, 30),
  ('Emphasizing Key Points', 'Emphasize salient points in focused manner', 2, 9, 25),
  ('Formal Speech', 'Adapt speech to formal contexts', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Grade 6 New Units: 6
--   - Reading Literature (15 topics)
--   - Reading Informational Text (15 topics)
--   - Vocabulary and Word Study (12 topics)
--   - Writing (12 topics)
--   - Grammar and Language Conventions (11 topics)
--   - Speaking and Listening (8 topics)
-- Grade 6 Total Topics: 73
--
-- Grade 7 New Units: 6
--   - Reading Literature (14 topics)
--   - Reading Informational Text (13 topics)
--   - Vocabulary and Word Analysis (10 topics)
--   - Writing (14 topics)
--   - Grammar and Conventions (10 topics)
--   - Speaking and Listening (9 topics)
-- Grade 7 Total Topics: 70
--
-- Grade 8 New Units: 6
--   - Reading Literature (15 topics)
--   - Reading Informational Text (14 topics)
--   - Vocabulary and Word Study (11 topics)
--   - Writing (15 topics)
--   - Grammar and Conventions (11 topics)
--   - Speaking and Listening (10 topics)
-- Grade 8 Total Topics: 76
--
-- TOTAL NEW TOPICS: 219
-- ============================================================================
