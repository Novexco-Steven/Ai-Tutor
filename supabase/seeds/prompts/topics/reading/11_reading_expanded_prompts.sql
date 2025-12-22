-- Grade 11 Reading/ELA Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 11 Reading/ELA topics (American Literature focus)
-- ============================================================================

-- ============================================================================
-- READING LITERATURE TOPICS
-- ============================================================================

-- Supporting Complex Inferences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Supporting Complex Inferences' AND grade_level_min = 11),
  'Supporting Complex Inferences Topic Guide', 'Cite evidence for sophisticated analysis',
  'SUPPORTING COMPLEX INFERENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Mastery of deep textual analysis
- Advanced inference-making skills
- Ability to synthesize evidence
- Understanding of literary criticism

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Make sophisticated inferences from complex literary texts
2. Support inferences with strong and thorough evidence
3. Synthesize evidence from diverse textual sources
4. Engage with critical interpretations of texts

KEY CONCEPTS:
- Complex inferences require synthesis of multiple textual elements
- College-level analysis demands rigorous textual support
- Evidence must address both explicit content and implicit meaning
- Scholarly interpretation builds on close reading
- Multiple valid interpretations can be supported

COMMON MISCONCEPTIONS:
- Making inferences without sufficient textual grounding
- Confusing speculation with supported inference
- Ignoring scholarly context for interpretation

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "College professors and literary scholars make careers analyzing texts. Their inferences are sophisticated, but always grounded in rigorous textual evidence. This is your training ground."

2. DIRECT INSTRUCTION (14 minutes):
   Teach advanced inference strategies:
   - Close reading for subtle patterns
   - Synthesis across entire work
   - Integration with critical perspectives
   - Rigorous evidence selection
   - Acknowledgment of complexity

3. GUIDED PRACTICE (16 minutes):
   Analyze American literature excerpt:
   - Make complex inferences together
   - Support with thorough evidence
   - Engage with scholarly interpretations
   - Synthesize multiple perspectives

4. INDEPENDENT PRACTICE (11 minutes):
   Students independently:
   - Make sophisticated inferences
   - Support with rigorous evidence
   - Engage with critical sources
   - Write college-level analysis

DIFFERENTIATION:
For Struggling Learners:
- Provide inference frameworks
- Model scholarly reading processes
- Offer scaffolded analysis tasks

For Advanced Learners:
- Engage with complex critical theory
- Develop original scholarly arguments
- Compare critical perspectives

ASSESSMENT INDICATORS:
- Makes sophisticated, well-supported inferences
- Synthesizes evidence rigorously
- Engages thoughtfully with scholarship
- Demonstrates college-ready analysis', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Supporting Complex Inferences' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- The American Renaissance
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'The American Renaissance' AND grade_level_min = 11),
  'The American Renaissance Topic Guide', 'Study Emerson, Thoreau, Whitman, Dickinson',
  'THE AMERICAN RENAISSANCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of literary movements
- Knowledge of 19th century American history
- Familiarity with Romanticism
- Ability to analyze poetry and essays

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze major works of American Renaissance literature
2. Understand Transcendentalist philosophy and its expression
3. Compare different American Renaissance authors'' approaches
4. Evaluate the movement''s influence on American identity

KEY CONCEPTS:
- American Renaissance (1830s-1860s) defined American literary voice
- Transcendentalism emphasized individualism, nature, and intuition
- Major figures: Emerson, Thoreau, Whitman, Dickinson, Hawthorne, Melville
- Themes: self-reliance, nature, democracy, individualism
- Movement reflected and shaped American values
- Innovation in form and content

COMMON MISCONCEPTIONS:
- Thinking all American Renaissance writers agreed
- Missing the radical nature of these ideas
- Not connecting to historical context

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "These writers defined what it means to be American - individualism, democracy, connection to nature. Their ideas still shape our culture today."

2. DIRECT INSTRUCTION (15 minutes):
   Teach American Renaissance context and characteristics:
   - Historical and cultural context
   - Transcendentalist philosophy
   - Major authors and works
   - Common themes and innovations
   - Lasting influence

   Model analysis of key works:
   - Emerson''s "Self-Reliance"
   - Thoreau''s Walden
   - Whitman''s "Song of Myself"
   - Dickinson''s poetry

3. GUIDED PRACTICE (15 minutes):
   Analyze American Renaissance texts:
   - Read key excerpts together
   - Identify Transcendentalist ideas
   - Analyze literary innovations
   - Compare different authors'' approaches
   - Connect to American identity

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Close read American Renaissance text
   - Identify movement characteristics
   - Analyze author''s contribution
   - Write analysis connecting to period

DIFFERENTIATION:
For Struggling Learners:
- Provide historical context information
- Start with more accessible texts
- Offer guided reading questions

For Advanced Learners:
- Read complete works, not excerpts
- Engage with critical scholarship
- Compare to European Romanticism

ASSESSMENT INDICATORS:
- Analyzes American Renaissance literature accurately
- Understands Transcendentalist philosophy
- Compares authors within movement
- Evaluates lasting cultural influence', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The American Renaissance' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Foundational U.S. Documents
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Foundational U.S. Documents' AND grade_level_min = 11),
  'Foundational U.S. Documents Topic Guide', 'Analyze documents like Declaration, Constitution',
  'FOUNDATIONAL U.S. DOCUMENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of American history
- Knowledge of rhetorical analysis
- Ability to analyze argument structure
- Familiarity with historical context

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze foundational U.S. documents (Declaration, Constitution, Federalist Papers)
2. Evaluate the reasoning and rhetoric in these texts
3. Examine how these documents reflect Enlightenment ideals
4. Assess the documents'' influence on American democracy

KEY CONCEPTS:
- Foundational documents established American political philosophy
- These texts use sophisticated rhetorical strategies
- Documents reflect 18th century political thought
- Tension between ideals and reality in American history
- Documents continue to shape legal and political discourse
- Close reading reveals layers of meaning and intention

COMMON MISCONCEPTIONS:
- Treating documents as simple or straightforward
- Not recognizing historical context limitations
- Missing rhetorical sophistication

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "These aren''t just historical artifacts - they''re living documents that still govern our lives. Understanding them deeply is essential citizenship."

2. DIRECT INSTRUCTION (15 minutes):
   Teach foundational document analysis:
   - Historical context and purpose
   - Rhetorical strategies employed
   - Philosophical foundations
   - Structure and reasoning
   - Contemporary significance

   Model analysis of Declaration of Independence:
   - Rhetorical situation
   - Structure of argument
   - Use of Enlightenment philosophy
   - Persuasive strategies

3. GUIDED PRACTICE (15 minutes):
   Analyze Constitutional passages:
   - Close read key sections
   - Analyze reasoning
   - Examine rhetorical choices
   - Discuss contemporary relevance
   - Compare to other founding documents

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Analyze Federalist Paper excerpt
   - Evaluate argument and rhetoric
   - Connect to founding principles
   - Write analytical response

DIFFERENTIATION:
For Struggling Learners:
- Provide historical background
- Modernize language when necessary
- Use guided analysis questions

For Advanced Learners:
- Compare with Anti-Federalist Papers
- Engage with constitutional law
- Analyze amendments and interpretation

ASSESSMENT INDICATORS:
- Analyzes founding documents accurately
- Evaluates reasoning and rhetoric
- Understands historical and philosophical context
- Assesses contemporary relevance', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Foundational U.S. Documents' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING TOPICS
-- ============================================================================

-- Research Papers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Research Papers' AND grade_level_min = 11),
  'Research Papers Topic Guide', 'Write extended research papers',
  'RESEARCH PAPERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Advanced research skills
- Mastery of source evaluation
- Understanding of academic integrity
- Knowledge of citation formats

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Conduct sustained research projects drawing on multiple sources
2. Synthesize information to create original arguments
3. Use MLA format correctly throughout
4. Demonstrate academic integrity in all work

KEY CONCEPTS:
- Research papers synthesize multiple sources into original argument
- Strong thesis drives research and organization
- Sources must be credible, relevant, and current
- Integration of sources requires smooth quotation and paraphrasing
- Proper citation prevents plagiarism
- Revision is essential for quality research writing

COMMON MISCONCEPTIONS:
- Thinking research papers are just summaries
- Stringing quotes together without synthesis
- Not developing original argument

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "College success depends on research writing ability. This is essential academic work that prepares you for higher education."

2. DIRECT INSTRUCTION (16 minutes):
   Teach research paper process:
   - Topic selection and narrowing
   - Research question development
   - Source location and evaluation
   - Note-taking and organization
   - Thesis development
   - Outlining and drafting
   - Source integration
   - Citation and documentation
   - Revision and editing

3. GUIDED PRACTICE (15 minutes):
   Work through research process:
   - Develop research questions together
   - Evaluate sources as class
   - Practice synthesis
   - Model citation

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Begin research project
   - Develop research question
   - Locate and evaluate sources
   - Create working bibliography

DIFFERENTIATION:
For Struggling Learners:
- Provide research process scaffolding
- Offer narrower topic choices
- Model each step explicitly

For Advanced Learners:
- Engage with scholarly sources
- Develop sophisticated arguments
- Write longer, more complex papers

ASSESSMENT INDICATORS:
- Conducts thorough, sustained research
- Synthesizes sources into original argument
- Uses MLA format correctly
- Demonstrates academic integrity', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Research Papers' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- End of Grade 11 Reading/ELA Expanded Prompts
-- ============================================================================
