-- Grade 10 Reading/ELA Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 10 Reading/ELA topics
-- ============================================================================

-- ============================================================================
-- READING LITERATURE TOPICS
-- ============================================================================

-- Deep Textual Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Deep Textual Analysis' AND grade_level_min = 10),
  'Deep Textual Analysis Topic Guide', 'Cite strong evidence for complex inferences',
  'DEEP TEXTUAL ANALYSIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Advanced skills in citing textual evidence
- Mastery of complex inference-making
- Ability to analyze sophisticated literary texts
- Understanding of multiple critical perspectives

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Cite strong and thorough evidence for complex inferences
2. Analyze multiple layers of meaning in literary texts
3. Synthesize evidence from diverse parts of complex works
4. Evaluate how evidence supports varied interpretations

KEY CONCEPTS:
- Deep analysis reveals subtle patterns and connections
- Complex texts support multiple valid interpretations
- Evidence must address both explicit and implicit meanings
- Close reading techniques reveal layers of significance
- Synthesis of evidence creates coherent interpretation
- Scholarly analysis requires rigor and precision

COMMON MISCONCEPTIONS:
- Thinking there is only one correct interpretation
- Over-relying on literal or surface-level meanings
- Failing to connect evidence across the text
- Not acknowledging interpretive complexity

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Literary scholars spend careers analyzing single works. Why? Because great literature contains depths that reward close, sustained attention. Let''s develop these advanced analytical skills."

2. DIRECT INSTRUCTION (15 minutes):
   Teach advanced close reading strategies:
   - Multiple readings with different focuses
   - Attention to diction, syntax, imagery, structure
   - Pattern recognition across entire text
   - Analysis of ambiguity and tension
   - Synthesis of micro and macro analysis

   Model deep inference:
   - Start with surface observation
   - Ask: What deeper meaning does this suggest?
   - Connect to other textual evidence
   - Build interpretation through synthesis
   - Acknowledge alternative readings

   Demonstrate evidence synthesis:
   - Gather evidence from throughout text
   - Show how evidence works together
   - Create interpretive framework
   - Support with specific textual details

3. GUIDED PRACTICE (15 minutes):
   Deep analysis of complex passage:
   - Close read multiple times
   - Annotate at word, sentence, paragraph levels
   - Identify patterns and connections
   - Draw complex inferences
   - Synthesize into interpretation
   - Support with thorough evidence

4. INDEPENDENT PRACTICE (11 minutes):
   Students independently:
   - Conduct deep analysis of literary excerpt
   - Make complex inferences with evidence
   - Synthesize evidence from multiple parts
   - Write sophisticated analytical response
   - Acknowledge interpretive possibilities

DIFFERENTIATION:
For Struggling Learners:
- Provide close reading guides
- Start with shorter excerpts
- Model thinking process explicitly
- Use graphic organizers for synthesis

For Advanced Learners:
- Analyze highly challenging texts
- Apply multiple critical frameworks
- Engage with scholarly criticism
- Develop original interpretive arguments

ASSESSMENT INDICATORS:
- Cites strong, thorough evidence for complex inferences
- Analyzes multiple layers of textual meaning
- Synthesizes evidence from diverse sources
- Evaluates interpretive possibilities', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Deep Textual Analysis' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Complex Themes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Complex Themes' AND grade_level_min = 10),
  'Complex Themes Topic Guide', 'Determine themes and analyze sophisticated development',
  'COMPLEX THEMES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Mastery of theme identification and analysis
- Understanding of universal themes
- Ability to trace theme development
- Knowledge of how literary elements convey theme

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Determine complex, sophisticated themes in literature
2. Analyze how themes are developed through multiple literary elements
3. Examine how themes interact and complicate each other
4. Evaluate how themes reflect philosophical or cultural values

KEY CONCEPTS:
- Complex themes address sophisticated philosophical questions
- Multiple themes often interact in significant works
- Themes develop through symbol, motif, structure, and character
- Complex themes resist simple summary
- Thematic meaning emerges from entire work
- Themes reflect cultural, historical contexts

COMMON MISCONCEPTIONS:
- Reducing complex themes to simple morals
- Identifying only one theme in multifaceted works
- Missing how themes complicate traditional values
- Not recognizing thematic ambiguity

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Great literature grapples with life''s biggest questions: What is justice? What defines identity? How should we live? These complex themes have no easy answers - that''s what makes them worth exploring."

2. DIRECT INSTRUCTION (15 minutes):
   Teach complex theme analysis:
   - Identify philosophical questions text explores
   - Trace how multiple elements develop theme
   - Analyze interaction of multiple themes
   - Examine how themes reflect contexts
   - Evaluate thematic complexity

   Model sophisticated theme analysis:
   - Go beyond simple theme statements
   - Show how theme is complicated through text
   - Demonstrate thematic interactions
   - Connect to broader cultural/philosophical issues

3. GUIDED PRACTICE (15 minutes):
   Analyze complex themes in sophisticated text:
   - Identify multiple interrelated themes
   - Trace development through various elements
   - Analyze thematic complexity
   - Discuss philosophical implications
   - Connect to cultural contexts

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Identify complex theme in reading
   - Analyze development through entire work
   - Examine thematic interactions
   - Write sophisticated theme analysis
   - Connect to broader contexts

DIFFERENTIATION:
For Struggling Learners:
- Start with clearer thematic statements
- Focus on one theme before addressing interactions
- Provide theme analysis frameworks
- Use accessible philosophical questions

For Advanced Learners:
- Analyze highly ambiguous themes
- Apply philosophical frameworks to analysis
- Compare thematic treatment across periods
- Engage with critical interpretations

ASSESSMENT INDICATORS:
- Identifies complex, sophisticated themes
- Analyzes theme development through multiple elements
- Examines thematic interactions and complications
- Connects themes to broader philosophical contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complex Themes' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Cultural Context
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Cultural Context' AND grade_level_min = 10),
  'Cultural Context Topic Guide', 'Analyze how cultural context shapes literature',
  'CULTURAL CONTEXT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of historical and cultural periods
- Knowledge of point of view and perspective
- Ability to research cultural contexts
- Awareness of cultural diversity in literature

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze how cultural context shapes literary works
2. Examine how literature reflects cultural values and conflicts
3. Evaluate how point of view is influenced by cultural position
4. Compare how different cultures address similar themes

KEY CONCEPTS:
- Literature emerges from specific cultural and historical contexts
- Cultural values shape what stories are told and how
- Understanding context enriches interpretation
- Literature both reflects and challenges cultural norms
- Cultural perspective affects reader interpretation
- Cross-cultural comparison reveals universal and particular themes

COMMON MISCONCEPTIONS:
- Reading all literature through contemporary Western lens
- Assuming universal values across cultures
- Separating literature from cultural context
- Not recognizing own cultural perspective

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Why does the same story look different when told by different cultures? Understanding cultural context helps us read literature with depth and respect."

2. DIRECT INSTRUCTION (15 minutes):
   Teach cultural context analysis:
   - Research historical and cultural background
   - Identify cultural values in text
   - Analyze how context shapes content and form
   - Examine cultural conflicts and tensions
   - Consider author''s cultural position

   Model contextual reading:
   - Identify cultural elements in text
   - Research relevant context
   - Analyze how context affects meaning
   - Compare to other cultural perspectives

3. GUIDED PRACTICE (15 minutes):
   Analyze literature in cultural context:
   - Research relevant cultural background
   - Identify cultural values and conflicts in text
   - Discuss how context shapes interpretation
   - Compare to literature from different cultures
   - Reflect on own cultural perspective

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Research cultural context of assigned text
   - Analyze how context shapes work
   - Examine cultural values and conflicts
   - Write cultural context analysis
   - Reflect on interpretive implications

DIFFERENTIATION:
For Struggling Learners:
- Provide cultural background information
- Use guiding questions for analysis
- Start with more familiar cultural contexts
- Offer clear frameworks for comparison

For Advanced Learners:
- Research complex cultural contexts independently
- Analyze subtle cultural influences
- Compare multiple cultural perspectives
- Examine postcolonial and cultural criticism

ASSESSMENT INDICATORS:
- Analyzes how cultural context shapes literature
- Examines cultural values and conflicts in texts
- Evaluates influence of cultural perspective
- Compares cultural approaches to similar themes', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cultural Context' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING INFORMATIONAL TEXT TOPICS
-- ============================================================================

-- Rhetoric and Persuasion
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Rhetoric and Persuasion' AND grade_level_min = 10),
  'Rhetoric and Persuasion Topic Guide', 'Analyze rhetorical strategies',
  'RHETORIC AND PERSUASION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of rhetorical appeals
- Knowledge of rhetorical devices
- Ability to analyze author''s purpose
- Familiarity with argument structure

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze sophisticated rhetorical strategies in texts
2. Evaluate how rhetoric appeals to different audiences
3. Examine how rhetorical choices create specific effects
4. Assess the ethical dimensions of persuasive techniques

KEY CONCEPTS:
- Rhetoric encompasses all strategic communication choices
- Effective rhetoric considers purpose, audience, and context carefully
- Rhetorical analysis reveals how meaning is constructed
- Balance of appeals creates persuasive power
- Rhetoric operates at multiple levels simultaneously
- Ethical rhetoric respects audience autonomy

COMMON MISCONCEPTIONS:
- Equating rhetoric with manipulation
- Focusing only on devices without analyzing effect
- Missing subtle rhetorical strategies
- Not considering ethical dimensions

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Every word, sentence, and structural choice is rhetorical - designed to affect readers. Mastering rhetorical analysis gives you power as both reader and writer."

2. DIRECT INSTRUCTION (16 minutes):
   Teach sophisticated rhetorical analysis:
   - Analyze rhetorical situation comprehensively
   - Identify appeals and strategies at multiple levels
   - Evaluate effectiveness for specific audiences
   - Examine ethical implications
   - Consider cultural and historical context

   Model comprehensive analysis:
   - Map complete rhetorical situation
   - Identify all rhetorical strategies
   - Analyze effects of each
   - Evaluate overall effectiveness
   - Consider ethical dimensions

3. GUIDED PRACTICE (15 minutes):
   Analyze sophisticated persuasive text:
   - Determine complete rhetorical situation
   - Identify multiple rhetorical strategies
   - Analyze effects for different audiences
   - Evaluate ethical dimensions
   - Assess overall effectiveness

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Conduct comprehensive rhetorical analysis
   - Identify strategies at multiple levels
   - Evaluate effectiveness and ethics
   - Write sophisticated rhetorical analysis
   - Defend interpretations with evidence

DIFFERENTIATION:
For Struggling Learners:
- Provide rhetorical analysis frameworks
- Use texts with clear strategies
- Focus on one aspect at a time
- Offer guiding questions

For Advanced Learners:
- Analyze highly subtle rhetoric
- Apply rhetorical theory
- Compare across genres and contexts
- Examine historical development

ASSESSMENT INDICATORS:
- Identifies sophisticated rhetorical strategies
- Analyzes effects for specific audiences
- Evaluates effectiveness comprehensively
- Considers ethical implications', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rhetoric and Persuasion' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- End of Grade 10 Reading/ELA Expanded Prompts
-- ============================================================================
