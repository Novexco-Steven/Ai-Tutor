-- Grade 12 Reading/ELA Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 12 Reading/ELA topics (World Literature focus)
-- ============================================================================

-- ============================================================================
-- READING LITERATURE TOPICS
-- ============================================================================

-- Thorough Textual Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Thorough Textual Analysis' AND grade_level_min = 12),
  'Thorough Textual Analysis Topic Guide', 'Cite thorough evidence for complex interpretations',
  'THOROUGH TEXTUAL ANALYSIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Mastery of all prior textual analysis skills
- Advanced critical reading ability
- Familiarity with literary criticism and theory
- College-level analytical writing skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Cite thorough and compelling textual evidence for complex interpretations
2. Demonstrate college-level close reading and analysis
3. Engage substantively with critical scholarship
4. Produce original, sophisticated literary arguments

KEY CONCEPTS:
- College-ready analysis requires thoroughness and sophistication
- Evidence must be meticulously selected and explained
- Interpretation should engage with critical conversations
- Analysis demonstrates deep understanding of text and context
- Scholarly writing follows disciplinary conventions
- Original insights build on existing scholarship

COMMON MISCONCEPTIONS:
- Believing analysis is purely subjective
- Not engaging with scholarly perspectives
- Insufficient textual grounding for claims

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "This is college-level literary analysis. You''re joining centuries of critical conversation about great works of literature. Your voice and insights matter."

2. DIRECT INSTRUCTION (14 minutes):
   Teach college-level textual analysis:
   - Scholarly close reading practices
   - Engaging with critical conversations
   - Building original arguments
   - Thorough evidence selection
   - Sophisticated analysis writing

   Model professional-level analysis:
   - Demonstrate scholarly reading
   - Show engagement with criticism
   - Model original argument development

3. GUIDED PRACTICE (16 minutes):
   Conduct college-level analysis:
   - Close read complex literary text
   - Research critical perspectives
   - Develop original argument
   - Support with thorough evidence
   - Write scholarly analysis

4. INDEPENDENT PRACTICE (11 minutes):
   Students independently:
   - Conduct thorough textual analysis
   - Engage with scholarship
   - Develop original interpretation
   - Write college-level essay

DIFFERENTIATION:
For Struggling Learners:
- Provide scholarly reading guides
- Model analysis process repeatedly
- Offer structured support

For Advanced Learners:
- Engage with advanced theory
- Publish or present analysis
- Conduct extended research

ASSESSMENT INDICATORS:
- Produces college-level textual analysis
- Cites evidence thoroughly and effectively
- Engages substantively with scholarship
- Demonstrates analytical sophistication', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Thorough Textual Analysis' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- British Literature
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'British Literature' AND grade_level_min = 12),
  'British Literature Topic Guide', 'Analyze major British literary works',
  'BRITISH LITERATURE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of literary history
- Knowledge of British history and culture
- Advanced literary analysis skills
- Familiarity with major literary movements

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze major works of British literature across periods
2. Understand development of British literary tradition
3. Examine how historical context shapes British literature
4. Compare British and other literary traditions

KEY CONCEPTS:
- British literature spans from Anglo-Saxon to contemporary
- Major periods: Medieval, Renaissance, Restoration, Romantic, Victorian, Modern, Contemporary
- British literature shaped world literary tradition
- Historical events profoundly influenced literary production
- Class, empire, and identity are recurring themes
- Innovation and tradition both important

COMMON MISCONCEPTIONS:
- Treating British literature as monolithic
- Not recognizing diversity within tradition
- Missing historical influences on texts

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "From Beowulf to Harry Potter, British literature has shaped world culture. Understanding this tradition enriches our entire literary heritage."

2. DIRECT INSTRUCTION (15 minutes):
   Teach British literary tradition:
   - Historical overview of major periods
   - Key authors and works
   - Major themes and movements
   - Cultural and historical contexts
   - Influence on world literature

   Model analysis of British literature:
   - Shakespeare''s dramatic innovations
   - Romantic poetry and philosophy
   - Victorian novel and society
   - Modernist experimentation

3. GUIDED PRACTICE (15 minutes):
   Analyze British literary texts:
   - Read works from different periods
   - Identify period characteristics
   - Analyze in historical context
   - Compare across periods
   - Examine lasting influence

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Analyze British literary work
   - Connect to historical period
   - Compare to other traditions
   - Write analytical essay

DIFFERENTIATION:
For Struggling Learners:
- Provide historical background
- Use more accessible texts
- Offer guided analysis

For Advanced Learners:
- Read complete works
- Engage with literary criticism
- Compare across national literatures

ASSESSMENT INDICATORS:
- Analyzes British literature in context
- Understands literary historical development
- Compares across periods and traditions
- Demonstrates cultural literacy', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'British Literature' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- World Literature
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'World Literature' AND grade_level_min = 12),
  'World Literature Topic Guide', 'Analyze works from diverse world cultures',
  'WORLD LITERATURE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Advanced literary analysis skills
- Cultural awareness and sensitivity
- Understanding of translation issues
- Knowledge of global history

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze literature from diverse world cultures
2. Examine how cultural context shapes literary expression
3. Compare universal and culture-specific themes
4. Evaluate literature in translation

KEY CONCEPTS:
- World literature encompasses global literary traditions
- Culture profoundly shapes literary forms and themes
- Translation affects interpretation
- Universal themes appear across cultures
- Cultural specificity enriches literary understanding
- Postcolonial perspectives challenge Western canon

COMMON MISCONCEPTIONS:
- Reading world literature through Western lens only
- Assuming universal applicability of values
- Not considering translation effects

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Literature from around the world offers windows into diverse human experiences while revealing our shared humanity. This global perspective is essential."

2. DIRECT INSTRUCTION (15 minutes):
   Teach world literature analysis:
   - Cultural context research
   - Awareness of own perspective
   - Translation considerations
   - Universal and particular themes
   - Postcolonial approaches

   Model culturally-sensitive analysis:
   - Research cultural background
   - Identify cultural values in text
   - Analyze with cultural respect
   - Compare across cultures

3. GUIDED PRACTICE (15 minutes):
   Analyze world literature:
   - Read texts from diverse cultures
   - Research cultural contexts
   - Discuss with cultural sensitivity
   - Compare universal and particular elements
   - Examine translation effects

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Analyze world literature text
   - Research cultural context
   - Write culturally-informed analysis
   - Reflect on own perspective

DIFFERENTIATION:
For Struggling Learners:
- Provide cultural background materials
- Use accessible translations
- Offer guided questions

For Advanced Learners:
- Read in original language if possible
- Engage with postcolonial theory
- Compare multiple translations

ASSESSMENT INDICATORS:
- Analyzes world literature culturally
- Demonstrates cultural sensitivity
- Compares across traditions thoughtfully
- Considers translation effects', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'World Literature' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Literary Criticism
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Literary Criticism' AND grade_level_min = 12),
  'Literary Criticism Topic Guide', 'Apply critical approaches to literature',
  'LITERARY CRITICISM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Advanced literary analysis skills
- Understanding of interpretive theory
- Ability to evaluate arguments
- Familiarity with major critical schools

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand major schools of literary criticism
2. Apply critical lenses to literary texts
3. Evaluate strengths and limitations of approaches
4. Develop theoretically-informed interpretations

KEY CONCEPTS:
- Literary criticism offers systematic approaches to interpretation
- Major schools: Formalist, Marxist, Feminist, Psychoanalytic, Postcolonial, etc.
- Each lens reveals different aspects of text
- No single approach is complete
- Critical theory shapes what we notice and value
- Scholarly conversation involves multiple perspectives

COMMON MISCONCEPTIONS:
- Thinking one critical approach is "correct"
- Applying theory mechanically
- Not understanding theoretical foundations

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Literary criticism isn''t just opinion - it''s systematic, theoretically-informed analysis. These tools help us see texts in new ways."

2. DIRECT INSTRUCTION (15 minutes):
   Teach major critical approaches:
   - Formalist: focus on text itself
   - Marxist: class and economics
   - Feminist: gender and power
   - Psychoanalytic: unconscious desires
   - Postcolonial: empire and identity
   - Reader-response: reader''s role

   Model applying critical lens:
   - Explain theoretical foundation
   - Show what lens reveals
   - Demonstrate analysis
   - Acknowledge limitations

3. GUIDED PRACTICE (15 minutes):
   Apply critical approaches to text:
   - Read text together
   - Apply different critical lenses
   - Compare insights from each
   - Discuss strengths and limits
   - Develop theoretically-informed reading

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Choose critical approach
   - Apply to literary text
   - Develop interpretation
   - Write critical analysis

DIFFERENTIATION:
For Struggling Learners:
- Start with one approach
- Provide clear explanations
- Use accessible texts

For Advanced Learners:
- Engage with primary theory texts
- Combine multiple approaches
- Develop original critical frameworks

ASSESSMENT INDICATORS:
- Understands major critical approaches
- Applies theory to texts effectively
- Evaluates theoretical perspectives
- Develops theoretically-informed readings', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Literary Criticism' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING TOPICS
-- ============================================================================

-- Scholarly Research Papers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Scholarly Research Papers' AND grade_level_min = 12),
  'Scholarly Research Papers Topic Guide', 'Write extended scholarly papers',
  'SCHOLARLY RESEARCH PAPERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Mastery of research paper writing
- Advanced source evaluation skills
- Understanding of scholarly conventions
- Knowledge of multiple citation formats

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Conduct substantial research projects with multiple sources
2. Engage with scholarly conversations in writing
3. Produce college-ready research papers
4. Demonstrate complete academic integrity

KEY CONCEPTS:
- Scholarly papers contribute to academic conversations
- Research is iterative and sustained
- Sources must be scholarly and current
- Original argument synthesizes multiple perspectives
- Academic writing follows disciplinary conventions
- Revision is essential for scholarly work

COMMON MISCONCEPTIONS:
- Thinking research is just finding quotes
- Not developing original argument
- Insufficient engagement with scholarship

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "This is the culmination of your high school writing education - producing scholarship that could contribute to academic conversations."

2. DIRECT INSTRUCTION (16 minutes):
   Teach scholarly research process:
   - Sophisticated topic selection
   - Comprehensive research strategies
   - Scholarly source evaluation
   - Synthesis and argument development
   - Academic writing conventions
   - Thorough documentation
   - Rigorous revision

3. GUIDED PRACTICE (15 minutes):
   Work through scholarly process:
   - Develop research questions
   - Locate scholarly sources
   - Evaluate and synthesize
   - Build original arguments
   - Practice academic writing

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Begin substantial research project
   - Develop scholarly question
   - Build annotated bibliography
   - Draft research proposal

DIFFERENTIATION:
For Struggling Learners:
- Provide extensive scaffolding
- Model each step carefully
- Offer regular checkpoints

For Advanced Learners:
- Develop publishable research
- Present at conferences
- Engage with advanced sources

ASSESSMENT INDICATORS:
- Conducts substantial scholarly research
- Engages with academic conversations
- Produces college-ready writing
- Demonstrates scholarly integrity', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scholarly Research Papers' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- End of Grade 12 Reading/ELA Expanded Prompts
-- ============================================================================
