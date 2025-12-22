-- Grade 8 Reading/ELA Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 8 Reading/ELA topics
-- ============================================================================

-- ============================================================================
-- READING LITERATURE TOPICS
-- ============================================================================

-- Strong Textual Evidence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Strong Textual Evidence' AND grade_level_min = 8),
  'Strong Textual Evidence Topic Guide', 'Cite the textual evidence that most strongly supports analysis',
  'STRONG TEXTUAL EVIDENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to cite multiple pieces of textual evidence
- Understanding of explicit vs. inferential evidence
- Skill in evaluating evidence relevance
- Knowledge of integrating quotations smoothly

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Cite the strongest and most relevant textual evidence
2. Evaluate which evidence best supports analysis and inferences
3. Distinguish between strong and weak evidence
4. Explain why certain evidence is more compelling than others

KEY CONCEPTS:
- Strongest evidence most directly and clearly supports the claim
- Evidence strength depends on relevance, specificity, and clarity
- Best evidence often includes concrete details, not generalizations
- Strong evidence anticipates and addresses potential objections
- Quality of evidence matters more than quantity
- Strongest evidence comes from pivotal moments in text
- Evidence must be explained, not just cited

COMMON MISCONCEPTIONS:
- Assuming all textual evidence is equally strong
- Choosing evidence based on length rather than relevance
- Not recognizing that evidence can be strong but irrelevant
- Failing to evaluate evidence before selecting it

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Present a claim: "This school values creativity."
   Weak evidence: "The school has art class."
   Strong evidence: "Every hallway displays student artwork, teachers incorporate creative projects in all subjects, and students designed their own electives this year."
   Which proves the claim better? Why?

2. DIRECT INSTRUCTION (14 minutes):
   Teach evidence strength criteria (S-P-E-C):
   S = Specific (not vague or general)
   P = Pivotal (from key moments in text)
   E = Explicit in connection (clear link to claim)
   C = Compelling (hard to dispute or refute)

   Model evidence evaluation process:
   - Make a claim about the text
   - Find 5-6 potential evidence pieces
   - Evaluate each using S-P-E-C criteria
   - Rank evidence from strongest to weakest
   - Select top 2-3 strongest pieces
   - Explain why these are strongest

   Demonstrate comparing evidence strength:
   - Evidence A: Character dialogue showing emotion
   - Evidence B: Character action demonstrating emotion
   - Evidence C: Narrator''s direct statement about emotion
   - Which is strongest? Why?

   Teach evidence strength in context:
   - For explicit analysis: direct quotations strongest
   - For implicit analysis: subtle details can be strongest
   - For character analysis: actions often trump statements
   - For theme analysis: symbolic moments are powerful

3. GUIDED PRACTICE (14 minutes):
   Using shared literary text:
   - Read analytical question together
   - Brainstorm potential evidence
   - List 5-6 possible pieces of evidence
   - Evaluate each using S-P-E-C criteria
   - Rank evidence by strength
   - Discuss why some evidence is stronger
   - Practice explaining evidence selection
   - Write collaborative response using strongest evidence

4. INDEPENDENT PRACTICE (12 minutes):
   Students independently:
   - Read literary passage
   - Respond to analytical question
   - Find and list potential evidence
   - Evaluate and rank evidence by strength
   - Select strongest 2-3 pieces
   - Write analysis using strongest evidence
   - Explain why evidence chosen is strongest

DIFFERENTIATION:
For Struggling Learners:
- Provide pre-selected evidence to evaluate and rank
- Use simplified S-P-E-C checklist
- Start with clear strong vs. weak examples
- Offer sentence frames for explaining evidence strength
- Work in pairs to evaluate evidence

For Advanced Learners:
- Evaluate evidence in complex, ambiguous texts
- Analyze why certain evidence appears strong but isn''t
- Compare evidence strength for different interpretations
- Defend evidence choices against challenges
- Consider how audience affects evidence strength

ASSESSMENT INDICATORS:
- Consistently selects strongest available evidence
- Evaluates evidence using clear criteria
- Explains why chosen evidence is most compelling
- Distinguishes evidence quality from evidence quantity', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Strong Textual Evidence' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Universal Themes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Universal Themes' AND grade_level_min = 8),
  'Universal Themes Topic Guide', 'Determine themes that recur across literature',
  'UNIVERSAL THEMES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to identify and analyze themes
- Understanding of how themes develop in texts
- Knowledge of various cultures and time periods
- Exposure to diverse literary works

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify universal themes that recur across time periods and cultures
2. Analyze how the same theme is expressed differently in various texts
3. Explain why certain themes are universal to human experience
4. Connect themes to contemporary life and personal experience

KEY CONCEPTS:
- Universal themes transcend time, place, and culture
- Common universal themes: love, loss, courage, identity, justice, power
- Same theme can be developed differently in different texts
- Universal themes reflect fundamental human concerns
- Themes become universal because they address shared human experiences
- Historical and cultural context affects how themes are expressed
- Universal themes remain relevant across generations

COMMON MISCONCEPTIONS:
- Thinking themes are only relevant to specific time periods
- Confusing universal themes with plot similarities
- Believing all themes are universal
- Not recognizing cultural variations in theme expression

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Why do we still read Shakespeare 400 years later? Or ancient Greek myths? Because they deal with universal themes - struggles we ALL face, no matter when or where we live."
   Examples: love, betrayal, ambition, identity

2. DIRECT INSTRUCTION (15 minutes):
   Introduce common universal themes:
   - Coming of age / identity formation
   - Individual vs. society
   - Power and corruption
   - Love and sacrifice
   - Good vs. evil
   - Survival and perseverance
   - Justice and injustice
   - Truth and deception

   Teach universal theme analysis:
   - Identify the theme in a text
   - Ask: Is this specific to this story, or universal?
   - Consider: Do people everywhere face this issue?
   - Analyze: How has this theme appeared across time?

   Model comparative theme analysis:
   - Show same theme in different texts
   - Example: "Individual vs. Society" in:
     * Romeo and Juliet (1590s)
     * The Giver (1993)
     * Current young adult novel
   - Discuss: What''s the same? What''s different?
   - Why does this theme persist?

   Demonstrate relevance to modern life:
   - How does ancient theme apply today?
   - Connect to current events or personal experience
   - Explain why humans continue to grapple with this

3. GUIDED PRACTICE (13 minutes):
   Explore universal themes across texts:
   - Identify theme in current class reading
   - Brainstorm: Where else have we seen this theme?
   - Compare 2-3 texts with similar theme
   - Create chart showing theme variations
   - Discuss cultural and historical differences in presentation
   - Connect theme to students'' own lives
   - Explain why this theme is universal

4. INDEPENDENT PRACTICE (12 minutes):
   Students independently:
   - Identify a universal theme in assigned reading
   - Research another text with same theme
   - Complete comparative theme analysis chart
   - Write essay connecting theme across texts
   - Explain why theme is universal
   - Relate theme to contemporary or personal experience

DIFFERENTIATION:
For Struggling Learners:
- Provide list of universal themes to choose from
- Use well-known texts with clear themes
- Focus on one theme across two simple texts
- Provide sentence frames for comparison
- Use graphic organizers with scaffolding

For Advanced Learners:
- Analyze subtle variations in theme expression
- Examine how culture shapes theme development
- Compare theme across multiple cultures and time periods
- Analyze how same author treats theme differently
- Research evolution of theme through literary history

ASSESSMENT INDICATORS:
- Identifies universal themes accurately
- Explains why themes transcend time and culture
- Compares theme expression across different texts
- Connects universal themes to contemporary experience', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Universal Themes' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Analogies and Allusions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Analogies and Allusions' AND grade_level_min = 8),
  'Analogies and Allusions Topic Guide', 'Analyze the impact of analogies and allusions',
  'ANALOGIES AND ALLUSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of comparison and metaphor
- Knowledge of common cultural references
- Familiarity with classical and biblical stories
- Ability to interpret figurative language

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify analogies and allusions in literary texts
2. Interpret the meaning and significance of analogies and allusions
3. Analyze how analogies and allusions impact meaning and tone
4. Recognize common literary, historical, and biblical allusions

KEY CONCEPTS:
- Analogy is an extended comparison that explains something complex through something familiar
- Allusion is a brief reference to a person, place, event, or text outside the current work
- Allusions assume shared cultural knowledge
- Effective analogies clarify complex ideas
- Allusions add layers of meaning and emotion
- Understanding allusions enriches interpretation
- Types: mythological, biblical, historical, literary, pop culture

COMMON MISCONCEPTIONS:
- Confusing allusion with illusion
- Thinking you need to understand every allusion to understand text
- Not recognizing that analogies extend beyond simple comparisons
- Assuming all references are allusions (some are direct mentions)

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Your friend says ''Don''t be a Scrooge!'' You instantly know they mean don''t be stingy - even without explaining. That''s the power of allusion! Writers use these shortcuts to pack meaning into few words."

2. DIRECT INSTRUCTION (15 minutes):
   Teach ANALOGIES:
   - Extended comparison for explanation or illustration
   - Example: "Finding a solution was like solving a Rubik''s cube - every move affected multiple parts"
   - Shows relationships between two different things
   - Often used to explain abstract or complex concepts
   - Can extend across several sentences or paragraphs

   Teach ALLUSIONS:
   - Brief reference to something outside the text
   - Types of allusions:
     * Biblical: "David and Goliath" (underdog story)
     * Mythological: "Pandora''s box" (unleashing problems)
     * Historical: "met his Waterloo" (final defeat)
     * Literary: "Romeo and Juliet" (doomed lovers)
     * Pop culture: references to films, songs, events

   Model interpretation process:
   - Identify the analogy or allusion
   - Recognize the reference (or research it)
   - Ask: What qualities of the reference apply here?
   - Determine: What does this add to the text?
   - Analyze: How does this affect tone or meaning?

   Demonstrate with examples:
   - "She was a Good Samaritan" (biblical allusion to helping)
   - "The task ahead is Herculean" (mythological allusion to difficulty)
   - Analyze impact on meaning and tone

3. GUIDED PRACTICE (13 minutes):
   Using texts with analogies and allusions:
   - Identify examples together
   - Research unfamiliar allusions as class
   - Discuss what each reference brings to text
   - Analyze how each affects meaning
   - Compare: How would meaning change without allusion?
   - Practice creating own analogies
   - Match common allusions to their meanings

4. INDEPENDENT PRACTICE (12 minutes):
   Students independently:
   - Find analogies and allusions in assigned reading
   - Complete allusion identification chart
   - Research unfamiliar allusions
   - Explain impact of each on the text
   - Write analysis of how one allusion enriches meaning
   - Create original analogy for a complex concept

DIFFERENTIATION:
For Struggling Learners:
- Provide allusion reference sheet with common examples
- Start with familiar, modern allusions
- Use visual aids showing allusion sources
- Pre-teach allusions before reading text
- Focus on most common biblical and mythological allusions

For Advanced Learners:
- Research obscure or complex allusions
- Analyze multiple layers of meaning in allusions
- Trace allusions to original sources and read them
- Examine how allusions change across cultures
- Create writing that effectively uses allusions

ASSESSMENT INDICATORS:
- Identifies analogies and allusions in texts
- Interprets meaning of references correctly
- Explains impact on tone and meaning
- Demonstrates growing cultural literacy', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Analogies and Allusions' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING INFORMATIONAL TEXT TOPICS
-- ============================================================================

-- Strongest Evidence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Strongest Evidence' AND grade_level_min = 8),
  'Strongest Evidence Topic Guide', 'Cite evidence that most strongly supports conclusions',
  'STRONGEST EVIDENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to identify claims in informational texts
- Understanding of different evidence types
- Skill in evaluating source credibility
- Knowledge of inference-making

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Cite the strongest textual evidence for analysis of informational texts
2. Evaluate evidence quality based on credibility, relevance, and sufficiency
3. Distinguish between strong and weak evidence in nonfiction
4. Support both explicit and inferential claims with compelling evidence

KEY CONCEPTS:
- Strongest evidence in nonfiction is factual, verifiable, and from credible sources
- Statistical evidence and expert testimony are often compelling
- Primary sources are generally stronger than secondary sources
- Recent, relevant evidence is stronger than outdated information
- Strong evidence directly addresses the claim without logical leaps
- Multiple types of evidence (statistics + expert quotes + examples) strengthen arguments
- Evidence must be contextualized and explained

COMMON MISCONCEPTIONS:
- Assuming all published information is equally credible
- Thinking anecdotal evidence is as strong as statistical evidence
- Not considering source bias or agenda
- Accepting evidence that confirms existing beliefs without scrutiny

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Present claim: "Exercise improves academic performance"
   Evidence A: "My friend exercises and gets good grades"
   Evidence B: "A 5-year study of 10,000 students showed those who exercised 30+ minutes daily scored 12% higher on standardized tests"
   Which evidence is stronger? Why?

2. DIRECT INSTRUCTION (15 minutes):
   Teach evidence strength hierarchy for nonfiction:
   STRONGEST:
   - Peer-reviewed research with large sample sizes
   - Primary source documents
   - Expert testimony from recognized authorities
   - Recent, verified statistics
   - Multiple converging sources

   MODERATE:
   - Case studies
   - Reputable secondary sources
   - Logical reasoning and analysis
   - Historical examples

   WEAKEST:
   - Anecdotal evidence
   - Opinions without expert credentials
   - Outdated information
   - Biased sources
   - Unsourced claims

   Model evidence evaluation (C-R-E-D):
   C = Credibility (Is source trustworthy and expert?)
   R = Relevance (Does evidence directly relate to claim?)
   E = Evidence type (Statistical? Expert opinion? Example?)
   D = Date (Is information current and up-to-date?)

   Demonstrate evaluating sources:
   - Who is the author? What are their credentials?
   - What is the publication/organization?
   - When was this published?
   - Is there any apparent bias?
   - Can this be verified elsewhere?

3. GUIDED PRACTICE (14 minutes):
   Analyze informational text together:
   - Identify author''s main claims
   - Find all evidence presented
   - Evaluate each piece using C-R-E-D
   - Rank evidence from strongest to weakest
   - Discuss: What makes certain evidence more compelling?
   - Identify what additional evidence would strengthen claims
   - Practice citing strongest evidence in responses

4. INDEPENDENT PRACTICE (11 minutes):
   Students independently:
   - Read informational article
   - Identify main claim
   - List all evidence provided
   - Evaluate each using C-R-E-D framework
   - Select and cite strongest pieces
   - Write analysis explaining why evidence is strongest
   - Suggest what additional evidence would help

DIFFERENTIATION:
For Struggling Learners:
- Provide source evaluation checklists
- Use texts with very clear, strong evidence
- Pre-teach credibility indicators
- Offer sentence frames for evaluation
- Work with familiar topics

For Advanced Learners:
- Evaluate subtle bias in seemingly credible sources
- Analyze scientific studies for methodology strength
- Compare evidence quality across multiple sources
- Identify gaps in evidence and research to fill them
- Evaluate primary sources from historical periods

ASSESSMENT INDICATORS:
- Selects strongest available evidence from informational texts
- Evaluates source credibility accurately
- Explains evidence selection using clear criteria
- Distinguishes between evidence types and their relative strength', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Strongest Evidence' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Analyzing Rhetorical Techniques
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Analyzing Rhetorical Techniques' AND grade_level_min = 8),
  'Analyzing Rhetorical Techniques Topic Guide', 'Identify how rhetoric shapes content and style',
  'ANALYZING RHETORICAL TECHNIQUES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of author''s purpose and audience
- Ability to identify persuasive techniques
- Knowledge of ethos, pathos, and logos
- Familiarity with tone and style analysis

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify rhetorical techniques in persuasive and informational texts
2. Analyze how rhetoric shapes both content and style
3. Evaluate the effectiveness of rhetorical choices
4. Explain how rhetoric influences audience response

KEY CONCEPTS:
- Rhetoric is the art of effective communication and persuasion
- Rhetorical appeals: ethos (credibility), pathos (emotion), logos (logic)
- Rhetorical devices: repetition, parallelism, rhetorical questions, antithesis
- Authors make deliberate rhetorical choices based on purpose and audience
- Effective rhetoric balances multiple appeals
- Rhetoric affects what information is included and how it''s presented
- Style elements (word choice, sentence structure) are rhetorical tools

COMMON MISCONCEPTIONS:
- Thinking rhetoric is manipulation or dishonesty
- Believing rhetoric only appears in speeches
- Not recognizing that all communication involves rhetorical choices
- Confusing identification of techniques with analysis of effect

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Show two ways to persuade someone to recycle:
   Version 1: "Please recycle. It''s important for the environment."
   Version 2: "Every bottle you recycle saves enough energy to power a laptop for 3 hours. Together, our school could power 1,000 computers daily. Will you be part of the solution?"
   What techniques make Version 2 more persuasive?

2. DIRECT INSTRUCTION (16 minutes):
   Review rhetorical appeals:
   ETHOS (credibility):
   - Establishes author expertise and trustworthiness
   - Techniques: citing qualifications, showing fairness, professional tone

   PATHOS (emotion):
   - Appeals to audience emotions and values
   - Techniques: vivid language, anecdotes, loaded words, imagery

   LOGOS (logic):
   - Uses reasoning and evidence
   - Techniques: facts, statistics, logical progression, cause-effect

   Teach rhetorical devices:
   - Repetition: repeating words/phrases for emphasis
   - Parallelism: similar grammatical structure
   - Rhetorical questions: questions that don''t need answers
   - Antithesis: contrasting ideas in balanced phrases
   - Anaphora: repetition at beginning of clauses
   - Alliteration: repeating initial sounds

   Model rhetorical analysis process:
   - Identify the purpose and audience
   - Find rhetorical techniques (appeals and devices)
   - Analyze: Why did author choose this technique?
   - Evaluate: How does it affect the message?
   - Assess: Is it effective for the audience?

   Demonstrate with famous speech excerpt:
   - Identify all rhetorical techniques
   - Explain choice for each
   - Discuss cumulative effect

3. GUIDED PRACTICE (14 minutes):
   Analyze persuasive text together:
   - Read editorial or speech excerpt
   - Identify purpose and audience
   - Find examples of ethos, pathos, logos
   - Identify rhetorical devices used
   - Discuss why author chose each technique
   - Evaluate effectiveness of rhetoric
   - Consider: How would different techniques change impact?

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Read persuasive article or speech
   - Complete rhetorical analysis chart
   - Identify and label rhetorical techniques
   - Explain purpose of each technique
   - Evaluate overall effectiveness
   - Write analysis paragraph

DIFFERENTIATION:
For Struggling Learners:
- Provide texts with very clear rhetorical techniques
- Offer technique identification chart with examples
- Focus on one appeal at a time
- Use familiar topics and accessible texts
- Provide sentence frames for analysis

For Advanced Learners:
- Analyze subtle and sophisticated rhetoric
- Compare rhetorical approaches across multiple texts
- Evaluate rhetoric in complex, nuanced arguments
- Analyze how rhetoric can be used ethically and unethically
- Study famous speeches in depth

ASSESSMENT INDICATORS:
- Identifies rhetorical appeals and devices accurately
- Explains why authors use specific techniques
- Analyzes how rhetoric shapes content and style
- Evaluates effectiveness of rhetorical choices', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Analyzing Rhetorical Techniques' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING TOPICS
-- ============================================================================

-- Counterclaim Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Counterclaim Analysis' AND grade_level_min = 8),
  'Counterclaim Analysis Topic Guide', 'Acknowledge and distinguish counterclaims',
  'COUNTERCLAIM ANALYSIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to write argumentative claims
- Understanding of opposing viewpoints
- Knowledge of argument structure
- Skill in using evidence to support reasoning

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify counterclaims to their arguments
2. Acknowledge opposing viewpoints fairly and accurately
3. Distinguish their claim from counterclaims
4. Refute counterclaims with evidence and reasoning

KEY CONCEPTS:
- Counterclaims are opposing arguments or alternate perspectives
- Acknowledging counterclaims strengthens your argument
- Counterclaims should be represented fairly, not as straw men
- Refutation uses evidence and logic to explain why counterclaim is weak
- Effective refutation doesn''t just dismiss - it engages with opposing view
- Conceding minor points can strengthen overall argument
- Addressing counterclaims shows thorough understanding of issue

COMMON MISCONCEPTIONS:
- Thinking acknowledging counterclaims weakens your position
- Misrepresenting opposing views to make them easy to dismiss
- Ignoring the strongest counterarguments
- Using emotional appeals instead of logic to refute

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Imagine you''re asking your parents for a later curfew. Do you just state your case, or do you address their concerns about safety? Anticipating and addressing counterclaims makes arguments much stronger!"

2. DIRECT INSTRUCTION (16 minutes):
   Teach counterclaim structure (A-C-R):
   A = Acknowledge (Some might argue that...)
   C = Concede if appropriate (While this may be true in some cases...)
   R = Refute (However, evidence shows...)

   Model finding counterclaims:
   - State your claim
   - Ask: "What would someone who disagrees say?"
   - Consider: "What are the strongest objections?"
   - Think about: different perspectives, values, priorities

   Demonstrate fair representation:
   UNFAIR (straw man): "Opponents foolishly believe that homework is completely useless and students should never do any work at home."
   FAIR: "Some educators argue that excessive homework can lead to student stress and may not improve learning outcomes."

   Teach refutation strategies:
   - Point out flaws in reasoning
   - Present contradictory evidence
   - Show that your position better addresses the concern
   - Concede minor points while maintaining main argument
   - Demonstrate that benefits outweigh costs

   Model complete counterclaim paragraph:
   - Acknowledge: State opposing view fairly
   - Explain: What evidence supports this view?
   - Refute: Why is your position stronger?
   - Conclude: Reaffirm your claim

3. GUIDED PRACTICE (14 minutes):
   Work together on counterclaim development:
   - Choose debate topic with class
   - State a clear claim
   - Brainstorm all possible counterclaims
   - Select strongest counterclaim to address
   - Practice fair representation vs. straw man
   - Find evidence to refute counterclaim
   - Write counterclaim paragraph together
   - Evaluate: Is opposition fairly represented? Is refutation strong?

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - State their argumentative claim
   - List 2-3 possible counterclaims
   - Choose strongest counterclaim
   - Write fair representation of opposing view
   - Find evidence to refute counterclaim
   - Draft counterclaim paragraph using A-C-R structure
   - Self-assess for fair representation

DIFFERENTIATION:
For Struggling Learners:
- Provide counterclaim sentence frames and templates
- Offer pre-identified counterclaims to choose from
- Use familiar debate topics with clear opposing sides
- Model think-aloud for finding counterclaims
- Work in pairs to develop refutations

For Advanced Learners:
- Address multiple counterclaims
- Analyze subtle objections to nuanced arguments
- Evaluate which counterclaims are strongest to address
- Practice conceding points strategically
- Write arguments on complex, multifaceted issues

ASSESSMENT INDICATORS:
- Identifies relevant counterclaims to their arguments
- Represents opposing views fairly and accurately
- Refutes counterclaims with evidence and logic
- Integrates counterclaim/refutation smoothly into argument', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counterclaim Analysis' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- End of Grade 8 Reading/ELA Expanded Prompts
-- This file contains comprehensive teaching prompts for key Grade 8 topics
-- Additional prompts for remaining topics should follow this same format
-- ============================================================================
