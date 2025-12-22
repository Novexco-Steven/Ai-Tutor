-- ============================================================================
-- HIGH SCHOOL READING/ELA CURRICULUM EXPANSION (GRADES 9-12)
-- ============================================================================
-- This migration expands High School Reading/ELA with comprehensive coverage
-- Aligned with Common Core State Standards for college and career readiness
-- ============================================================================

-- ============================================================================
-- GRADE 9 READING/ELA UNITS AND TOPICS
-- ============================================================================

-- Unit: Reading Literature (Grade 9)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  9,
  'Reading Literature',
  'Analyze complex literary texts with critical reading strategies',
  1,
  '📚',
  '["Cite strong textual evidence for analysis", "Determine themes and analyze development", "Analyze how complex characters develop", "Determine figurative and connotative meanings", "Analyze author choices regarding structure"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Reading Informational Text (Grade 9)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  9,
  'Reading Informational Text',
  'Analyze complex informational texts critically',
  2,
  '📰',
  '["Cite strong evidence for explicit and inferential meanings", "Determine central ideas and summarize", "Analyze how authors unfold analysis", "Determine meanings of words and phrases", "Analyze effectiveness of structure"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Vocabulary and Word Analysis (Grade 9)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  9,
  'Vocabulary and Word Analysis',
  'Master sophisticated vocabulary for academic and literary texts',
  3,
  '📖',
  '["Use context as clue to word meaning", "Identify patterns of word changes", "Interpret figures of speech and nuances", "Analyze impact of word choice on meaning", "Acquire domain-specific vocabulary"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Writing (Grade 9)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  9,
  'Writing',
  'Develop sophisticated argumentative, informative, and narrative writing',
  4,
  '✍️',
  '["Write arguments to support claims with reasoning", "Write informative texts examining complex ideas", "Write narratives with well-chosen details", "Use technology to produce and publish writing", "Conduct sustained research projects"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Grammar and Conventions (Grade 9)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  9,
  'Grammar and Conventions',
  'Master advanced grammar and conventions for clear communication',
  5,
  '📝',
  '["Use parallel structure", "Use various types of phrases and clauses", "Apply knowledge of language conventions", "Vary syntax for effect", "Maintain consistent style"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Speaking and Listening (Grade 9)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  9,
  'Speaking and Listening',
  'Develop skills for academic discussions and formal presentations',
  6,
  '🎤',
  '["Initiate and participate in collaborative discussions", "Integrate multiple sources of information", "Evaluate speaker point of view and reasoning", "Present information clearly", "Make strategic use of digital media"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 9 Reading Literature Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Textual Evidence for Analysis', 'Cite strong evidence supporting explicit and inferential analysis', 2, 1, 30),
  ('Theme Identification', 'Determine themes and analyze development over text', 2, 2, 30),
  ('Complex Character Analysis', 'Analyze how complex characters develop and interact', 3, 3, 35),
  ('Character Motivation', 'Analyze what motivates character decisions', 2, 4, 30),
  ('Figurative Meaning', 'Determine figurative meanings in context', 2, 5, 25),
  ('Connotative Meaning', 'Analyze connotative meanings and their effects', 2, 6, 25),
  ('Tone Analysis', 'Analyze how word choice contributes to tone', 2, 7, 30),
  ('Author''s Structural Choices', 'Analyze how author manipulates time and sequence', 3, 8, 30),
  ('Building Tension', 'Analyze how structure creates mystery, tension, or surprise', 2, 9, 30),
  ('Point of View and Experience', 'Analyze how point of view shapes content and style', 2, 10, 30),
  ('Cultural Experience in Literature', 'Analyze cultural perspectives in world literature', 2, 11, 35),
  ('Comparing Source Material', 'Analyze how an author transforms source material', 3, 12, 35),
  ('Works of Literature by Period', 'Study literature from different time periods', 2, 13, 35),
  ('Novel Study', 'Analyze extended works of fiction', 2, 14, 40),
  ('Poetry Analysis', 'Analyze poetic forms, techniques, and meanings', 2, 15, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 9 Reading Informational Text Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Evidence for Inferences', 'Cite strong evidence supporting analysis and inference', 2, 1, 30),
  ('Central Ideas in Complex Texts', 'Determine central ideas and analyze development', 2, 2, 30),
  ('Objective Summaries', 'Provide objective summaries of complex texts', 2, 3, 25),
  ('Unfolding Analysis', 'Analyze how authors unfold analysis or series of ideas', 2, 4, 30),
  ('Order and Connections', 'Analyze how order of events creates connections', 2, 5, 30),
  ('Technical and Connotative Meanings', 'Determine technical and connotative meanings', 2, 6, 25),
  ('Cumulative Impact of Word Choice', 'Analyze cumulative impact of word choices', 2, 7, 30),
  ('Structural Analysis', 'Analyze how author uses structure for purpose', 2, 8, 30),
  ('Author''s Point of View', 'Determine author''s point of view and purpose', 2, 9, 30),
  ('Rhetorical Analysis', 'Analyze how rhetoric advances point of view', 3, 10, 35),
  ('Evaluating Arguments', 'Evaluate validity of reasoning and sufficiency of evidence', 3, 11, 35),
  ('Seminal U.S. Documents', 'Analyze seminal U.S. texts of historical significance', 2, 12, 35),
  ('Comparing Accounts', 'Analyze accounts of same subject in different mediums', 2, 13, 30),
  ('Analyzing Primary Sources', 'Evaluate primary source documents', 2, 14, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 9 Vocabulary and Word Analysis Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Vocabulary and Word Analysis' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Context Clue Strategies', 'Use context as clue to grade-level word meanings', 2, 1, 25),
  ('Word Patterns and Changes', 'Identify and use patterns of word changes', 2, 2, 25),
  ('Figures of Speech', 'Interpret figures of speech in context', 2, 3, 30),
  ('Nuances in Word Meanings', 'Analyze nuances in meaning of similar words', 2, 4, 25),
  ('Word Choice and Meaning', 'Analyze impact of word choice on meaning and tone', 2, 5, 30),
  ('Domain-Specific Vocabulary', 'Acquire domain-specific words and phrases', 2, 6, 25),
  ('Greek and Latin Roots', 'Use Greek and Latin roots for meaning', 2, 7, 25),
  ('Etymology in Context', 'Use etymology to understand word meaning', 2, 8, 25),
  ('Reference Materials', 'Verify word meaning using reference materials', 2, 9, 20),
  ('SAT Vocabulary Development', 'Build vocabulary for standardized tests', 2, 10, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 9 Writing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Argumentative Claims', 'Introduce precise claims and distinguish from counterclaims', 2, 1, 35),
  ('Organizing Arguments', 'Create organization with clear relationships', 2, 2, 30),
  ('Developing Claims', 'Develop claims fairly with valid reasoning', 3, 3, 35),
  ('Argumentative Style', 'Establish formal style and objective tone', 2, 4, 30),
  ('Informative Introductions', 'Introduce complex ideas and concepts', 2, 5, 30),
  ('Developing Complex Ideas', 'Develop topics with relevant facts and details', 2, 6, 35),
  ('Transitions in Writing', 'Use varied transitions to create cohesion', 2, 7, 25),
  ('Precise Language', 'Use precise language and domain vocabulary', 2, 8, 25),
  ('Narrative Writing', 'Engage readers with techniques and structure', 2, 9, 35),
  ('Narrative Techniques', 'Use techniques like dialogue and pacing', 2, 10, 30),
  ('Sensory Language', 'Use precise words and sensory details', 2, 11, 30),
  ('Writing Process', 'Develop writing through planning and revision', 2, 12, 30),
  ('Research Projects', 'Conduct research to answer questions', 2, 13, 35),
  ('MLA Citations', 'Use standard citation format', 2, 14, 30),
  ('Evidence Integration', 'Integrate quotations and paraphrases', 2, 15, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 9 Grammar and Conventions Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Grammar and Conventions' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Parallel Structure', 'Use parallel structure in sentences', 2, 1, 25),
  ('Phrase Types', 'Use various types of phrases correctly', 2, 2, 30),
  ('Clause Types', 'Use independent and dependent clauses', 2, 3, 30),
  ('Sentence Variety', 'Vary syntax for interest and readability', 2, 4, 25),
  ('Semicolons and Colons', 'Use semicolons and colons correctly', 2, 5, 25),
  ('Conventions and Style', 'Apply conventions for effective writing', 2, 6, 25),
  ('Editing for Clarity', 'Edit to eliminate wordiness and redundancy', 2, 7, 25),
  ('Consistent Style', 'Maintain consistent style and tone', 2, 8, 25),
  ('Formal and Informal Register', 'Choose appropriate language register', 2, 9, 25),
  ('Proofreading Strategies', 'Use strategies to find and correct errors', 2, 10, 20)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 9 Speaking and Listening Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Speaking and Listening' AND grade_level = 9),
  v.name, v.description, 9, 9, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Collaborative Discussions', 'Participate effectively in discussions', 2, 1, 30),
  ('Setting Discussion Goals', 'Set clear goals for discussions', 2, 2, 25),
  ('Challenging Ideas', 'Challenge ideas thoughtfully and respectfully', 2, 3, 25),
  ('Diverse Perspectives', 'Respond thoughtfully to diverse perspectives', 2, 4, 25),
  ('Integrating Information', 'Integrate multiple sources of information', 2, 5, 30),
  ('Evaluating Credibility', 'Evaluate credibility and accuracy of sources', 2, 6, 30),
  ('Analyzing Speaker Reasoning', 'Evaluate speaker''s point of view and reasoning', 2, 7, 30),
  ('Formal Presentations', 'Present information clearly and logically', 2, 8, 35),
  ('Digital Media in Presentations', 'Use digital media strategically', 2, 9, 30),
  ('Adapting to Context', 'Adapt speech to context and task', 2, 10, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 10 READING/ELA UNITS AND TOPICS
-- ============================================================================

-- Unit: Reading Literature (Grade 10)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  10,
  'Reading Literature',
  'Analyze sophisticated literary texts with advanced critical skills',
  1,
  '📚',
  '["Cite strong textual evidence for inferences", "Determine complex themes", "Analyze character development in depth", "Analyze cumulative impact of word choice", "Analyze cultural experience reflected in literature"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Reading Informational Text (Grade 10)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  10,
  'Reading Informational Text',
  'Analyze complex informational texts with critical evaluation',
  2,
  '📰',
  '["Analyze development of central ideas", "Analyze how author uses rhetoric", "Evaluate effectiveness of structure", "Analyze how authors use evidence", "Compare accounts of same subject"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Vocabulary and Word Study (Grade 10)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  10,
  'Vocabulary and Word Study',
  'Master advanced vocabulary for academic and professional contexts',
  3,
  '📖',
  '["Use context to determine word meanings", "Analyze word origins and usage", "Interpret complex figures of speech", "Analyze connotation impact", "Acquire academic vocabulary"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Writing (Grade 10)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  10,
  'Writing',
  'Develop advanced skills in argumentative, informative, and narrative writing',
  4,
  '✍️',
  '["Write arguments with logical organization", "Write informative texts examining complex topics", "Write narratives with effective techniques", "Produce clear and coherent writing", "Conduct research projects of varying length"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Grammar and Conventions (Grade 10)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  10,
  'Grammar and Conventions',
  'Apply advanced grammar and conventions for sophisticated writing',
  5,
  '📝',
  '["Use parallel structure effectively", "Apply conventions for complex sentences", "Write with consistent style", "Use punctuation for rhetorical effect", "Edit for precision and clarity"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Speaking and Listening (Grade 10)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  10,
  'Speaking and Listening',
  'Develop advanced discussion and presentation skills',
  6,
  '🎤',
  '["Propel conversations with probing questions", "Integrate multiple information sources", "Evaluate speaker effectiveness", "Present logical arguments", "Use multimedia effectively"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 10 Reading Literature Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Deep Textual Analysis', 'Cite strong evidence for complex inferences', 2, 1, 30),
  ('Complex Themes', 'Determine themes and analyze sophisticated development', 3, 2, 35),
  ('Character Complexity', 'Analyze multi-dimensional characters', 3, 3, 35),
  ('Character Relationships', 'Analyze complex relationships between characters', 2, 4, 30),
  ('Figurative Language Analysis', 'Analyze cumulative impact of figurative language', 2, 5, 30),
  ('Diction and Tone', 'Analyze how diction creates tone and meaning', 2, 6, 30),
  ('Structural Choices', 'Analyze author''s choices about structure', 3, 7, 35),
  ('Flashback and Foreshadowing', 'Analyze use of time manipulation techniques', 2, 8, 30),
  ('Point of View Effects', 'Analyze how point of view influences interpretation', 2, 9, 30),
  ('Cultural Context', 'Analyze how cultural context shapes literature', 3, 10, 35),
  ('World Literature', 'Analyze works from outside US tradition', 3, 11, 35),
  ('Comparing Literary Treatments', 'Compare how different authors treat similar themes', 3, 12, 35),
  ('Drama Analysis', 'Analyze elements of dramatic literature', 2, 13, 30),
  ('Shakespeare Study', 'Analyze Shakespeare''s language and themes', 3, 14, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 10 Reading Informational Text Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Complex Text Analysis', 'Cite evidence for nuanced analysis', 2, 1, 30),
  ('Central Idea Development', 'Trace how central ideas emerge and develop', 2, 2, 30),
  ('Idea Connections', 'Analyze how ideas connect and interact', 2, 3, 30),
  ('Technical Vocabulary', 'Analyze technical and specialized vocabulary', 2, 4, 25),
  ('Cumulative Word Impact', 'Analyze how word choices shape meaning', 2, 5, 30),
  ('Structure for Purpose', 'Analyze how authors structure text for effect', 2, 6, 30),
  ('Rhetoric and Persuasion', 'Analyze rhetorical strategies', 3, 7, 35),
  ('Ethos, Pathos, Logos', 'Identify and analyze persuasive appeals', 3, 8, 35),
  ('Evidence Evaluation', 'Evaluate quality and relevance of evidence', 3, 9, 35),
  ('Delineating Arguments', 'Trace and evaluate complex arguments', 3, 10, 35),
  ('Comparing Media Formats', 'Analyze accounts across different mediums', 2, 11, 30),
  ('Historical Documents', 'Analyze significant U.S. and world documents', 2, 12, 35),
  ('Scientific Writing', 'Analyze scientific articles and reports', 2, 13, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 10 Vocabulary and Word Study Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Vocabulary and Word Study' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Advanced Context Strategies', 'Use context for complex word meanings', 2, 1, 25),
  ('Word Origins and Usage', 'Analyze patterns of word changes over time', 2, 2, 30),
  ('Complex Figures of Speech', 'Interpret extended metaphors and complex imagery', 3, 3, 30),
  ('Connotation Analysis', 'Analyze subtle connotative differences', 2, 4, 25),
  ('Word Impact on Tone', 'Analyze how word choice creates tone', 2, 5, 30),
  ('Academic Language', 'Master academic vocabulary across domains', 2, 6, 25),
  ('Etymology and Morphology', 'Use word parts and origins for meaning', 2, 7, 25),
  ('SAT/ACT Vocabulary', 'Continue building test vocabulary', 2, 8, 30),
  ('Discipline-Specific Terms', 'Master vocabulary in various subject areas', 2, 9, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 10 Writing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Sophisticated Arguments', 'Write arguments with nuanced claims', 3, 1, 40),
  ('Logical Organization', 'Organize arguments with clear progression', 2, 2, 35),
  ('Fair Treatment of Counterclaims', 'Address counterclaims thoroughly', 3, 3, 35),
  ('Rhetorical Strategies in Writing', 'Use rhetorical techniques effectively', 3, 4, 35),
  ('Complex Informative Writing', 'Examine complex ideas thoroughly', 2, 5, 40),
  ('Synthesizing Information', 'Synthesize information from multiple sources', 3, 6, 40),
  ('Technical Writing', 'Write for technical and professional purposes', 2, 7, 35),
  ('Extended Narratives', 'Write extended narratives with depth', 2, 8, 40),
  ('Literary Techniques', 'Apply literary techniques in creative writing', 2, 9, 35),
  ('Revision Strategies', 'Use advanced revision strategies', 2, 10, 30),
  ('Extended Research', 'Conduct sustained research projects', 3, 11, 45),
  ('Evaluating Sources', 'Assess and select credible sources', 2, 12, 30),
  ('Advanced Citations', 'Use citations in multiple formats', 2, 13, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 10 Grammar and Conventions Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Grammar and Conventions' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Complex Parallelism', 'Use parallel structure in complex sentences', 2, 1, 30),
  ('Sophisticated Syntax', 'Vary syntax for rhetorical effect', 2, 2, 30),
  ('Punctuation for Effect', 'Use punctuation to create emphasis', 2, 3, 25),
  ('Consistent Voice', 'Maintain consistent voice throughout writing', 2, 4, 25),
  ('Concise Writing', 'Write with precision and economy', 2, 5, 25),
  ('Style Consistency', 'Maintain consistent style for purpose', 2, 6, 25),
  ('Register Choices', 'Choose appropriate register for audience', 2, 7, 25),
  ('Advanced Editing', 'Edit for sophistication and clarity', 2, 8, 25)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 10 Speaking and Listening Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Speaking and Listening' AND grade_level = 10),
  v.name, v.description, 10, 10, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Academic Discussions', 'Lead and participate in academic discussions', 2, 1, 30),
  ('Propelling Conversations', 'Pose and respond to probing questions', 2, 2, 30),
  ('Synthesizing Comments', 'Synthesize comments made during discussions', 2, 3, 25),
  ('Evaluating Information Sources', 'Integrate and evaluate multiple sources', 2, 4, 30),
  ('Assessing Reasoning', 'Assess reasoning and use of evidence', 3, 5, 30),
  ('Identifying Fallacies', 'Identify faulty reasoning and rhetoric', 3, 6, 30),
  ('Formal Argumentation', 'Present arguments in formal settings', 2, 7, 35),
  ('Multimedia Presentations', 'Create and deliver multimedia presentations', 2, 8, 35),
  ('Debate Skills', 'Participate effectively in formal debates', 3, 9, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 11 READING/ELA UNITS AND TOPICS
-- ============================================================================

-- Unit: Reading Literature (Grade 11)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  11,
  'Reading Literature',
  'Analyze American literature with sophisticated critical approaches',
  1,
  '📚',
  '["Cite strong evidence for inferences", "Analyze how themes develop", "Analyze impact of author word choices", "Analyze early American texts", "Demonstrate knowledge of foundational works"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Reading Informational Text (Grade 11)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  11,
  'Reading Informational Text',
  'Analyze complex informational texts including U.S. foundational documents',
  2,
  '📰',
  '["Determine central ideas and analyze development", "Analyze reasoning in foundational U.S. texts", "Determine meanings of words as used in text", "Analyze U.S. documents of historical significance", "Use digital sources strategically"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Vocabulary and Language (Grade 11)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  11,
  'Vocabulary and Language',
  'Master college-level vocabulary and language analysis',
  3,
  '📖',
  '["Use context to determine nuanced meanings", "Analyze how language has evolved", "Interpret complex figures of speech", "Analyze author style choices", "Acquire academic and domain vocabulary"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Writing (Grade 11)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  11,
  'Writing',
  'Develop college-ready argumentative, informative, and narrative writing',
  4,
  '✍️',
  '["Write arguments with significant claims", "Write informative texts to convey complex ideas", "Write narratives with precise details", "Use technology for collaboration", "Conduct sustained research"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Grammar and Conventions (Grade 11)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  11,
  'Grammar and Conventions',
  'Apply sophisticated grammar for college and professional writing',
  5,
  '📝',
  '["Apply conventions for complex writing", "Vary syntax for effect", "Write with style appropriate to purpose", "Resolve issues of complex usage", "Use hyphenation correctly"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Speaking and Listening (Grade 11)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  11,
  'Speaking and Listening',
  'Develop professional speaking and listening skills',
  6,
  '🎤',
  '["Work with peers to set discussion goals", "Integrate multiple sources critically", "Evaluate speaker stance and reasoning", "Present complex information clearly", "Use multimedia strategically"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 11 Reading Literature Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Supporting Complex Inferences', 'Cite evidence for sophisticated analysis', 3, 1, 35),
  ('Theme and Meaning', 'Determine and analyze complex themes', 3, 2, 35),
  ('Summarizing Complex Texts', 'Provide objective summaries of complex works', 2, 3, 30),
  ('Character and Theme Connection', 'Analyze how characters advance themes', 3, 4, 35),
  ('Word Choice and Meaning', 'Analyze impact of specific word choices', 3, 5, 30),
  ('Multiple Meanings', 'Interpret words with multiple meanings', 2, 6, 30),
  ('Structure and Meaning', 'Analyze how structure contributes to aesthetics', 3, 7, 35),
  ('Author''s Point of View', 'Analyze how author distinguishes position', 2, 8, 30),
  ('Satire and Irony', 'Analyze use of satire and irony', 3, 9, 35),
  ('American Literary Movements', 'Study major American literary periods', 2, 10, 40),
  ('Early American Literature', 'Analyze foundational American texts', 2, 11, 35),
  ('The American Renaissance', 'Study Emerson, Thoreau, Whitman, Dickinson', 3, 12, 40),
  ('American Realism', 'Analyze realistic American fiction', 2, 13, 35),
  ('Modern American Literature', 'Study 20th century American authors', 3, 14, 40),
  ('Contemporary Literature', 'Analyze contemporary American works', 2, 15, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 11 Reading Informational Text Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Central Ideas in Complex Texts', 'Analyze development of multiple central ideas', 3, 1, 35),
  ('Interactions of Ideas', 'Analyze how complex ideas interact', 3, 2, 35),
  ('Technical Meanings', 'Determine technical and connotative meanings', 2, 3, 30),
  ('Analyzing Text Structure', 'Analyze how ideas are developed through structure', 2, 4, 30),
  ('Foundational U.S. Documents', 'Analyze documents like Declaration, Constitution', 3, 5, 40),
  ('Seminal American Speeches', 'Study speeches by Lincoln, King, others', 3, 6, 40),
  ('Author''s Purpose and Rhetoric', 'Analyze how purpose shapes content and style', 3, 7, 35),
  ('Evaluating Complex Arguments', 'Evaluate reasoning in seminal texts', 3, 8, 40),
  ('Premises and Claims', 'Assess validity of reasoning and relevance of evidence', 3, 9, 35),
  ('False Statements and Fallacies', 'Identify fallacious reasoning', 3, 10, 30),
  ('Integrating Multiple Sources', 'Synthesize information from diverse sources', 3, 11, 35),
  ('Resolving Conflicting Information', 'Address conflicts between sources', 3, 12, 35),
  ('Legal and Policy Documents', 'Analyze legal and policy writing', 2, 13, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 11 Vocabulary and Language Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Vocabulary and Language' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Nuanced Word Meanings', 'Use context for nuanced word understanding', 2, 1, 30),
  ('Language Evolution', 'Analyze how language has evolved over time', 3, 2, 35),
  ('Extended Figures of Speech', 'Interpret extended metaphors and allegory', 3, 3, 35),
  ('Historical Word Usage', 'Understand how word meanings have changed', 2, 4, 30),
  ('Irony and Understatement', 'Analyze subtle uses of irony', 3, 5, 30),
  ('Word Nuances', 'Analyze subtle differences between similar words', 2, 6, 25),
  ('Academic and Domain Vocabulary', 'Master college-level vocabulary', 2, 7, 30),
  ('SAT/ACT Advanced Vocabulary', 'Build advanced test vocabulary', 2, 8, 35),
  ('Literary Terminology', 'Master terms for literary analysis', 2, 9, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 11 Writing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Significant Claims', 'Write arguments with significant and defensible claims', 3, 1, 45),
  ('Valid Reasoning', 'Support claims with logical reasoning', 3, 2, 40),
  ('Anticipating Audience', 'Develop claims considering audience knowledge', 3, 3, 35),
  ('Cohesive Organization', 'Create cohesion among claims and evidence', 2, 4, 35),
  ('Complex Topic Development', 'Develop complex ideas with analysis', 3, 5, 45),
  ('Synthesis Writing', 'Synthesize complex ideas from multiple sources', 3, 6, 45),
  ('Research Papers', 'Write extended research papers', 3, 7, 50),
  ('College Application Essays', 'Write effective personal statements', 2, 8, 40),
  ('Narrative Complexity', 'Write narratives with multiple story lines', 3, 9, 45),
  ('Style and Voice', 'Develop distinctive writing voice', 2, 10, 35),
  ('Critical Analysis Essays', 'Write literary and rhetorical analysis', 3, 11, 45),
  ('Annotated Bibliography', 'Create annotated bibliographies', 2, 12, 35),
  ('Academic Integrity', 'Apply principles of academic integrity', 2, 13, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 11 Grammar and Conventions Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Grammar and Conventions' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Complex Syntax', 'Use complex syntax for effect', 3, 1, 30),
  ('Conventions for Complex Writing', 'Apply conventions to sophisticated writing', 2, 2, 30),
  ('Hyphenation', 'Apply hyphenation conventions', 2, 3, 20),
  ('Style for Purpose', 'Vary style based on purpose and audience', 2, 4, 30),
  ('Resolving Usage Issues', 'Resolve complex usage issues', 2, 5, 25),
  ('Professional Writing Conventions', 'Apply conventions for formal contexts', 2, 6, 30),
  ('Scholarly Writing Style', 'Write in academic and scholarly style', 3, 7, 35)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 11 Speaking and Listening Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Speaking and Listening' AND grade_level = 11),
  v.name, v.description, 11, 11, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Collegial Discussions', 'Participate in collegial discussions', 2, 1, 35),
  ('Setting Goals and Deadlines', 'Set discussion goals collaboratively', 2, 2, 25),
  ('Critical Information Evaluation', 'Evaluate information from diverse sources', 3, 3, 35),
  ('Resolving Contradictions', 'Identify and resolve contradictory information', 3, 4, 35),
  ('Evaluating Speaker Evidence', 'Assess speaker''s use of evidence', 3, 5, 30),
  ('Assessing Stance and Premises', 'Evaluate speaker''s stance and assumptions', 3, 6, 30),
  ('Professional Presentations', 'Present information in professional contexts', 2, 7, 40),
  ('Strategic Multimedia Use', 'Use multimedia to enhance presentations', 2, 8, 35),
  ('Formal Speaking', 'Adapt speech to formal and professional contexts', 2, 9, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 12 READING/ELA UNITS AND TOPICS
-- ============================================================================

-- Unit: Reading Literature (Grade 12)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  12,
  'Reading Literature',
  'Analyze world literature with college-level critical skills',
  1,
  '📚',
  '["Cite thorough evidence for complex analysis", "Analyze how themes reflect historical context", "Analyze how literary elements interact", "Analyze key works of world literature", "Analyze how works draw on and transform traditions"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Reading Informational Text (Grade 12)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  12,
  'Reading Informational Text',
  'Analyze complex informational texts with college-level skills',
  2,
  '📰',
  '["Analyze complex sets of ideas", "Determine author purpose in texts with competing purposes", "Integrate and evaluate multiple sources", "Analyze historically significant documents", "Synthesize information effectively"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Vocabulary and Language (Grade 12)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  12,
  'Vocabulary and Language',
  'Master sophisticated vocabulary for college and career success',
  3,
  '📖',
  '["Determine nuanced word meanings", "Analyze how authors use language for effect", "Interpret complex literary devices", "Acquire vocabulary independently", "Use language resources effectively"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Writing (Grade 12)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  12,
  'Writing',
  'Demonstrate college-ready writing skills across genres',
  4,
  '✍️',
  '["Write arguments with sophisticated analysis", "Write informative texts to examine complex ideas", "Write narratives with literary techniques", "Produce polished writing for publication", "Conduct substantial research projects"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Grammar and Conventions (Grade 12)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  12,
  'Grammar and Conventions',
  'Apply professional-level grammar and conventions',
  5,
  '📝',
  '["Apply conventions for sophisticated writing", "Vary syntax for meaning and style", "Resolve all usage issues independently", "Write with professional polish", "Edit for publication quality"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Unit: Speaking and Listening (Grade 12)
INSERT INTO units (subject_id, grade_level, name, description, order_index, icon, learning_objectives)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Reading'),
  12,
  'Speaking and Listening',
  'Demonstrate college and career-ready communication skills',
  6,
  '🎤',
  '["Lead substantive discussions", "Synthesize multiple sources critically", "Evaluate speaker effectiveness thoroughly", "Present with professional polish", "Communicate effectively in varied contexts"]'::jsonb
)
ON CONFLICT (subject_id, grade_level, name) DO UPDATE SET
  description = EXCLUDED.description,
  order_index = EXCLUDED.order_index,
  learning_objectives = EXCLUDED.learning_objectives;

-- Grade 12 Reading Literature Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Thorough Textual Analysis', 'Cite thorough evidence for complex interpretations', 3, 1, 40),
  ('Theme and Historical Context', 'Analyze how themes reflect historical period', 3, 2, 40),
  ('Multiple Themes', 'Analyze interaction of two or more themes', 3, 3, 40),
  ('Complex Character Analysis', 'Analyze how characters embody themes', 3, 4, 40),
  ('Literary Element Interaction', 'Analyze how setting, character, and plot interact', 3, 5, 35),
  ('Authorial Choices', 'Analyze how author choices create effects', 3, 6, 35),
  ('Satire in Literature', 'Analyze satire, sarcasm, irony, understatement', 3, 7, 35),
  ('Structure and Aesthetics', 'Analyze how structure shapes meaning and aesthetics', 3, 8, 40),
  ('Point of View in World Literature', 'Analyze diverse cultural perspectives', 3, 9, 40),
  ('British Literature', 'Analyze major British literary works', 3, 10, 45),
  ('World Literature', 'Analyze works from diverse world cultures', 3, 11, 45),
  ('Classical Literature', 'Study Greek, Roman, and other classical works', 3, 12, 40),
  ('Literary Criticism', 'Apply critical approaches to literature', 3, 13, 45),
  ('Comparing Interpretations', 'Analyze multiple interpretations of a text', 3, 14, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 12 Reading Informational Text Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Complex Idea Sets', 'Analyze complex sets of ideas and information', 3, 1, 40),
  ('Central Idea Synthesis', 'Synthesize multiple central ideas', 3, 2, 40),
  ('Analyzing Competing Purposes', 'Determine author purpose in complex texts', 3, 3, 40),
  ('Rhetorical Effectiveness', 'Analyze effectiveness of rhetorical strategies', 3, 4, 40),
  ('Legal and Political Reasoning', 'Analyze reasoning in legal and policy documents', 3, 5, 45),
  ('Foundational Documents Analysis', 'Analyze significant historical documents', 3, 6, 45),
  ('Evaluating Evidence Quality', 'Assess quality of evidence and reasoning', 3, 7, 40),
  ('Constitutional Documents', 'Analyze Constitutional documents and amendments', 3, 8, 45),
  ('World Historical Documents', 'Study significant world documents', 3, 9, 40),
  ('Synthesizing Multiple Sources', 'Integrate information from multiple sources', 3, 10, 45),
  ('Resolving Complex Conflicts', 'Address complex conflicts between sources', 3, 11, 40),
  ('Philosophical Texts', 'Analyze philosophical arguments', 3, 12, 45),
  ('Scientific and Technical Texts', 'Analyze complex scientific and technical writing', 3, 13, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 12 Vocabulary and Language Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Vocabulary and Language' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Nuanced Meaning Analysis', 'Determine subtle nuances in word meaning', 3, 1, 35),
  ('Language and Meaning', 'Analyze how language creates meaning', 3, 2, 35),
  ('Complex Literary Devices', 'Interpret allegory, paradox, complex symbolism', 3, 3, 40),
  ('Style Analysis', 'Analyze author''s distinctive style', 3, 4, 35),
  ('Word Choice Effects', 'Analyze cumulative effect of word choices', 3, 5, 35),
  ('College-Level Vocabulary', 'Master vocabulary for college success', 2, 6, 35),
  ('Discipline-Specific Language', 'Master vocabulary across disciplines', 2, 7, 30),
  ('Independent Vocabulary Growth', 'Develop strategies for vocabulary expansion', 2, 8, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 12 Writing Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Sophisticated Arguments', 'Write arguments with sophisticated analysis', 3, 1, 50),
  ('Developing Nuanced Claims', 'Develop and support nuanced claims', 3, 2, 45),
  ('Complex Counterclaims', 'Address multiple counterclaims thoroughly', 3, 3, 45),
  ('Rhetorical Sophistication', 'Use rhetoric effectively for purpose', 3, 4, 45),
  ('Complex Topic Analysis', 'Examine complex topics with depth', 3, 5, 50),
  ('Scholarly Research Papers', 'Write extended scholarly papers', 3, 6, 55),
  ('Thesis Development', 'Develop and refine thesis statements', 3, 7, 40),
  ('Advanced Research Skills', 'Conduct substantial research independently', 3, 8, 50),
  ('Literary Analysis Essays', 'Write sophisticated literary analysis', 3, 9, 50),
  ('Creative Writing', 'Write creative pieces with literary merit', 3, 10, 45),
  ('Professional Writing', 'Write for professional contexts', 2, 11, 40),
  ('Portfolio Development', 'Create and curate writing portfolio', 2, 12, 45),
  ('Publication Preparation', 'Prepare writing for publication', 2, 13, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 12 Grammar and Conventions Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Grammar and Conventions' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Professional Conventions', 'Apply conventions for professional writing', 3, 1, 35),
  ('Syntax for Style', 'Vary syntax to achieve specific effects', 3, 2, 35),
  ('Resolving Usage Issues', 'Resolve all usage issues independently', 2, 3, 30),
  ('Publication-Ready Writing', 'Edit writing for publication quality', 3, 4, 35),
  ('Style Guides', 'Apply various style guides appropriately', 2, 5, 30),
  ('Voice and Audience', 'Maintain appropriate voice for audience', 2, 6, 30)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- Grade 12 Speaking and Listening Topics
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
SELECT
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Speaking and Listening' AND grade_level = 12),
  v.name, v.description, 12, 12, v.difficulty, v.order_idx, v.time
FROM (VALUES
  ('Leading Discussions', 'Lead substantive academic discussions', 3, 1, 40),
  ('Seminar Participation', 'Participate effectively in seminar discussions', 3, 2, 40),
  ('Critical Source Evaluation', 'Synthesize and evaluate diverse sources', 3, 3, 40),
  ('Assessing Presentations', 'Evaluate speaker effectiveness thoroughly', 3, 4, 35),
  ('Professional Presentations', 'Present with professional polish', 3, 5, 45),
  ('Public Speaking', 'Speak effectively in public forums', 3, 6, 45),
  ('Interview Skills', 'Communicate effectively in interviews', 2, 7, 40),
  ('Career Communication', 'Communicate in professional and career contexts', 2, 8, 40)
) AS v(name, description, difficulty, order_idx, time)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Grade 9 New Units: 6
--   - Reading Literature (15 topics)
--   - Reading Informational Text (14 topics)
--   - Vocabulary and Word Analysis (10 topics)
--   - Writing (15 topics)
--   - Grammar and Conventions (10 topics)
--   - Speaking and Listening (10 topics)
-- Grade 9 Total Topics: 74
--
-- Grade 10 New Units: 6
--   - Reading Literature (14 topics)
--   - Reading Informational Text (13 topics)
--   - Vocabulary and Word Study (9 topics)
--   - Writing (13 topics)
--   - Grammar and Conventions (8 topics)
--   - Speaking and Listening (9 topics)
-- Grade 10 Total Topics: 66
--
-- Grade 11 New Units: 6
--   - Reading Literature (15 topics)
--   - Reading Informational Text (13 topics)
--   - Vocabulary and Language (9 topics)
--   - Writing (13 topics)
--   - Grammar and Conventions (7 topics)
--   - Speaking and Listening (9 topics)
-- Grade 11 Total Topics: 66
--
-- Grade 12 New Units: 6
--   - Reading Literature (14 topics)
--   - Reading Informational Text (13 topics)
--   - Vocabulary and Language (8 topics)
--   - Writing (13 topics)
--   - Grammar and Conventions (6 topics)
--   - Speaking and Listening (8 topics)
-- Grade 12 Total Topics: 62
--
-- TOTAL NEW TOPICS: 268
-- ============================================================================
