-- Grade 7 Reading/ELA Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 7 Reading/ELA topics
-- ============================================================================

-- ============================================================================
-- READING LITERATURE TOPICS
-- ============================================================================

-- Multiple Textual Evidence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Multiple Textual Evidence' AND grade_level_min = 7),
  'Multiple Textual Evidence Topic Guide', 'Cite several pieces of evidence to support analysis',
  'MULTIPLE TEXTUAL EVIDENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to cite basic textual evidence
- Understanding of inference vs. explicit meaning
- Familiarity with integrating quotations
- Knowledge of proper citation format

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Cite several pieces of textual evidence to support analysis
2. Select the strongest and most relevant evidence
3. Integrate multiple pieces of evidence cohesively
4. Explain how multiple evidence pieces work together to support interpretation

KEY CONCEPTS:
- Multiple pieces of evidence create stronger arguments
- Evidence should come from different parts of the text
- Strongest evidence most directly supports the claim
- Evidence must be explained and connected to the argument
- Variety of evidence types (dialogue, description, action) strengthens analysis
- Evidence should build upon each other logically

COMMON MISCONCEPTIONS:
- Thinking more evidence is always better regardless of relevance
- Listing quotes without explanation or connection
- Using repetitive evidence that says the same thing
- Failing to prioritize the strongest evidence

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Imagine you''re a lawyer in court. Would you present just ONE piece of evidence? No! You''d gather MULTIPLE strong pieces to build your case. Reading analysis works the same way."

2. DIRECT INSTRUCTION (13 minutes):
   Teach the "Multiple Evidence" strategy:
   - Find 4-5 potential pieces of evidence
   - Evaluate: Which are strongest?
   - Select 2-3 best pieces
   - Arrange in logical order
   - Explain how each piece contributes

   Model evidence evaluation criteria:
   - Relevance: Directly relates to claim?
   - Strength: Clearly supports interpretation?
   - Variety: Different aspects or parts of text?
   - Clarity: Easy to understand the connection?

   Demonstrate integration techniques:
   - Use transitional phrases (Additionally, Furthermore, Another example)
   - Show progression of ideas
   - Connect evidence pieces to each other
   - Build toward conclusion

   Model with sample text:
   - Make claim about character development
   - Find evidence from beginning, middle, end
   - Explain how pieces work together to show change

3. GUIDED PRACTICE (15 minutes):
   Students work with teacher support:
   - Read a shared literary passage
   - Respond to an analytical question
   - Locate 4-5 potential evidence pieces
   - Evaluate and select best 2-3 pieces
   - Practice ordering evidence logically
   - Draft response with multiple evidence pieces
   - Peer review evidence selection and integration
   - Revise based on feedback

4. INDEPENDENT PRACTICE (13 minutes):
   Students independently:
   - Read new literary text
   - Write analytical response to provided question
   - Include at least 3 pieces of textual evidence
   - Integrate evidence smoothly with transitions
   - Explain how evidence supports interpretation
   - Self-assess using rubric

DIFFERENTIATION:
For Struggling Learners:
- Provide pre-selected evidence to choose from
- Use graphic organizers to plan evidence use
- Offer sentence frames for integrating multiple quotes
- Start with 2 pieces of evidence before requiring 3
- Highlight potential evidence in text

For Advanced Learners:
- Require evidence from throughout entire text
- Analyze how evidence builds cumulative effect
- Compare quality of different evidence choices
- Synthesize evidence from multiple texts
- Evaluate and rank evidence by strength

ASSESSMENT INDICATORS:
- Cites multiple relevant pieces of textual evidence
- Selects strongest evidence to support claims
- Integrates evidence smoothly and logically
- Explains how multiple pieces work together', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiple Textual Evidence' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Theme Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Theme Analysis' AND grade_level_min = 7),
  'Theme Analysis Topic Guide', 'Determine themes and analyze development',
  'THEME ANALYSIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to determine basic themes
- Understanding of how details reveal theme
- Recognition of symbols and motifs
- Knowledge of literary elements (character, plot, setting)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Determine complex themes in literary texts
2. Analyze how themes are developed over the course of the text
3. Trace recurring ideas, symbols, and motifs that convey theme
4. Explain the relationship between theme and other literary elements

KEY CONCEPTS:
- Themes develop gradually through the entire text
- Authors use multiple techniques to develop themes
- Themes often emerge through character change and conflict resolution
- Symbols and motifs reinforce thematic ideas
- Texts may have multiple interrelated themes
- Theme development can be traced through key moments
- Universal themes connect to human experience

COMMON MISCONCEPTIONS:
- Expecting theme to be stated directly
- Confusing a single event with theme development
- Thinking theme only appears at the end
- Not recognizing that theme permeates the entire work

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Show a rope being braided from multiple strands
   "Theme is like this - woven throughout the story from many threads. Let''s learn to trace those threads!"

2. DIRECT INSTRUCTION (13 minutes):
   Teach theme development tracking:
   - Beginning: How is the theme introduced?
   - Middle: How is theme complicated or challenged?
   - End: How is theme resolved or reinforced?

   Model analyzing theme development tools:
   - Character arc: What does character learn?
   - Conflict: What struggle reveals the theme?
   - Symbol: What objects/images reinforce theme?
   - Dialogue: What key lines express thematic ideas?
   - Setting: How does place relate to theme?

   Demonstrate with mentor text:
   - Identify preliminary theme statement
   - Track theme through beginning, middle, end
   - Note key moments where theme is developed
   - Analyze how different elements contribute
   - Refine theme statement based on analysis

   Teach theme tracing graphic organizer:
   - Create timeline of thematic development
   - Mark key moments/quotes
   - Note how each moment deepens understanding

3. GUIDED PRACTICE (15 minutes):
   Using shared text:
   - Read and identify potential theme
   - Create theme development timeline together
   - Find evidence from different parts of text
   - Analyze how symbols/motifs reinforce theme
   - Discuss how characters embody thematic ideas
   - Trace evolution of theme from start to finish
   - Write collaborative theme analysis paragraph

4. INDEPENDENT PRACTICE (12 minutes):
   Students independently:
   - Read assigned literary text
   - Identify central theme
   - Create theme development chart
   - Find evidence from beginning, middle, end
   - Write analysis of how theme develops
   - Explain what techniques author uses to develop theme

DIFFERENTIATION:
For Struggling Learners:
- Use texts with clear, straightforward themes
- Provide theme statement options to choose from
- Focus on one aspect of development at a time
- Use color-coding to track theme throughout text
- Provide partially completed graphic organizers

For Advanced Learners:
- Analyze multiple interrelated themes
- Examine subtle or ambiguous themes
- Compare theme development across texts
- Analyze how historical context affects theme
- Evaluate effectiveness of author''s thematic choices

ASSESSMENT INDICATORS:
- Accurately identifies complex themes
- Traces theme development throughout text
- Cites specific evidence from different parts of text
- Analyzes how literary elements contribute to theme', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Theme Analysis' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Character Interaction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Character Interaction' AND grade_level_min = 7),
  'Character Interaction Topic Guide', 'Analyze how characters influence one another',
  'CHARACTER INTERACTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to analyze individual characters
- Understanding of character motivation
- Recognition of cause and effect relationships
- Knowledge of conflict types

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze how characters interact and influence each other
2. Examine how relationships between characters develop and change
3. Evaluate the impact of character interactions on plot and theme
4. Compare and contrast different character relationships

KEY CONCEPTS:
- Characters shape each other through interactions
- Relationships can be cooperative, competitive, or conflicting
- Character interactions drive plot forward
- Dialogue reveals relationship dynamics
- Characters serve as foils to highlight each other''s traits
- Interactions often reveal character growth or stagnation
- Power dynamics affect character relationships

COMMON MISCONCEPTIONS:
- Analyzing characters in isolation without considering relationships
- Missing subtle power dynamics in relationships
- Not recognizing that characters can influence each other negatively
- Overlooking how minor characters impact major characters

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Think about your best friend. How has knowing them changed you? Now think about someone you don''t get along with - how do they affect you?"
   Characters in books affect each other the same way!

2. DIRECT INSTRUCTION (14 minutes):
   Teach interaction analysis framework:
   - Type of relationship (allies, enemies, family, strangers)
   - Power dynamic (equal, unequal, shifting)
   - Effect on each character (positive, negative, mixed)
   - How interaction advances plot or develops theme

   Model analyzing a relationship:
   - Character A''s traits and goals
   - Character B''s traits and goals
   - How do they conflict or align?
   - What does each character want from the other?
   - How do they change each other?

   Demonstrate interaction tracking:
   - First encounter: What are initial impressions?
   - Development: How does relationship evolve?
   - Turning point: What changes the dynamic?
   - Resolution: Where does relationship end up?

   Show how to analyze dialogue:
   - What is said vs. what is meant?
   - Tone and word choice reveal attitudes
   - Silence can be as important as speech

3. GUIDED PRACTICE (15 minutes):
   Using shared text with clear character relationships:
   - Map relationship dynamics between characters
   - Create relationship web showing connections
   - Analyze key interaction scenes
   - Track how relationship changes over time
   - Discuss how interaction affects both characters
   - Examine how interactions advance plot
   - Explore how relationships reveal theme

4. INDEPENDENT PRACTICE (12 minutes):
   Students independently:
   - Choose two characters from current reading
   - Complete relationship analysis chart
   - Find 3 key interaction moments
   - Write analysis of how characters influence each other
   - Explain impact on plot and theme
   - Include textual evidence for all claims

DIFFERENTIATION:
For Struggling Learners:
- Focus on obvious, straightforward relationships
- Provide relationship maps with scaffolding
- Use graphic organizers with sentence starters
- Analyze relationships in familiar texts or films
- Work with clear protagonist/antagonist dynamics

For Advanced Learners:
- Analyze complex, nuanced relationships
- Examine subtle power dynamics
- Compare relationships across multiple characters
- Analyze how relationships reflect historical/social context
- Evaluate how relationship serves as commentary on human nature

ASSESSMENT INDICATORS:
- Identifies how characters influence each other
- Traces development of relationships over time
- Supports analysis with specific textual evidence
- Connects character interactions to plot and theme', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Character Interaction' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Rhyme and Repetition
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Rhyme and Repetition' AND grade_level_min = 7),
  'Rhyme and Repetition Topic Guide', 'Analyze effects of sound devices in poetry',
  'RHYME AND REPETITION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of basic poetry elements
- Ability to identify rhyme schemes
- Recognition of patterns in text
- Awareness of how sound affects meaning

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify and analyze rhyme schemes in poetry
2. Recognize various forms of repetition (words, phrases, structures)
3. Explain the effects of rhyme and repetition on meaning and tone
4. Evaluate how sound devices contribute to the poem''s overall impact

KEY CONCEPTS:
- Rhyme creates musicality and emphasizes connections between ideas
- Rhyme schemes have patterns (ABAB, AABB, etc.)
- Repetition emphasizes important ideas and creates rhythm
- Types of repetition: anaphora, refrain, parallelism
- Sound devices affect mood, tone, and meaning
- Rhyme and repetition aid memorability
- Breaking patterns can create emphasis or surprise

COMMON MISCONCEPTIONS:
- Thinking all poems must rhyme
- Believing rhyme is just for decoration
- Not recognizing repetition beyond exact word repetition
- Missing the connection between sound and meaning

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Play two versions of a phrase:
   - Flat: "The rain falls on the ground"
   - With rhyme/repetition: "Rain, rain, falling down, splashing, crashing all around"
   Ask: Which is more memorable? More musical? Why?

2. DIRECT INSTRUCTION (13 minutes):
   Teach rhyme analysis:
   - Label rhyme scheme with letters (ABAB)
   - Identify rhyme types (end rhyme, internal rhyme, slant rhyme)
   - Analyze what words are rhymed and why
   - Consider effect: Does rhyme create playfulness? Musicality? Connection?

   Teach repetition analysis:
   - Anaphora: repetition at beginning of lines/clauses
   - Refrain: repeated line or stanza
   - Parallel structure: repeated grammatical pattern
   - Ask: What is repeated? Why? What effect does it create?

   Model analysis process:
   - Read poem aloud (hearing is essential!)
   - Mark rhyme scheme
   - Highlight repetition
   - Analyze: How do these create meaning or mood?
   - Consider what changes if patterns are broken

   Demonstrate with example poem:
   - Identify all sound devices
   - Discuss effect of each
   - Explain how they work together

3. GUIDED PRACTICE (15 minutes):
   Using shared poems:
   - Read aloud together (choral reading)
   - Identify and mark rhyme scheme
   - Find all forms of repetition
   - Discuss effect of each sound device
   - Compare two poems with different approaches
   - Analyze how rhyme/repetition affect tone
   - Practice describing effects precisely

4. INDEPENDENT PRACTICE (13 minutes):
   Students independently:
   - Read assigned poem
   - Label rhyme scheme
   - Identify all repetition
   - Complete analysis chart
   - Write paragraph explaining effects
   - Support analysis with specific examples
   - Optional: Write own poem using sound devices

DIFFERENTIATION:
For Struggling Learners:
- Start with poems with clear, regular rhyme schemes
- Provide partially completed analysis charts
- Use familiar poems or song lyrics
- Focus on one device at a time
- Provide effect vocabulary (creates musicality, emphasizes, etc.)

For Advanced Learners:
- Analyze complex, subtle sound patterns
- Compare use of devices across different poets
- Examine how breaking patterns creates meaning
- Analyze interaction of multiple sound devices
- Study historical development of rhyme in poetry

ASSESSMENT INDICATORS:
- Accurately identifies rhyme schemes and repetition
- Explains specific effects of sound devices
- Connects sound devices to meaning and tone
- Uses appropriate literary terminology', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rhyme and Repetition' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING INFORMATIONAL TEXT TOPICS
-- ============================================================================

-- Two or More Central Ideas
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Two or More Central Ideas' AND grade_level_min = 7),
  'Two or More Central Ideas Topic Guide', 'Analyze development of central ideas',
  'TWO OR MORE CENTRAL IDEAS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to identify single central ideas
- Understanding of text structure
- Recognition of relationships between ideas
- Skill in distinguishing main from supporting ideas

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify two or more central ideas in a complex text
2. Analyze how multiple central ideas are developed throughout the text
3. Explain relationships between central ideas
4. Trace how ideas interact and build upon each other

KEY CONCEPTS:
- Complex texts often develop multiple interconnected central ideas
- Central ideas may support, contrast, or complicate each other
- Authors develop ideas through various methods (examples, analysis, anecdotes)
- Text structure often reflects how ideas relate
- Multiple central ideas work together to create overall meaning
- Tracking idea development requires attention to entire text

COMMON MISCONCEPTIONS:
- Thinking texts can only have one main idea
- Confusing multiple central ideas with supporting details
- Not recognizing how central ideas connect to each other
- Missing central ideas introduced later in text

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Think about a documentary on climate change. Does it only talk about ONE thing? No! It might cover causes, effects, and solutions - all central ideas working together."

2. DIRECT INSTRUCTION (14 minutes):
   Teach multi-idea identification strategy:
   - Preview text structure (headings, sections)
   - As you read, ask: What main point is this section making?
   - Distinguish: central idea or supporting detail?
   - Track: How do ideas connect?

   Model identifying multiple central ideas:
   - Read article aloud, section by section
   - After each section: "What''s the central idea here?"
   - List all central ideas
   - Analyze: How do these ideas relate?

   Teach relationship types between ideas:
   - Complementary: ideas support each other
   - Sequential: one idea leads to the next
   - Cause-effect: one idea causes the other
   - Compare-contrast: ideas are set against each other
   - Problem-solution: ideas presented as challenge and answer

   Demonstrate development tracking:
   - Where is each idea introduced?
   - How is it developed (facts, examples, explanations)?
   - How do ideas build on each other?

3. GUIDED PRACTICE (14 minutes):
   Using complex informational text:
   - Read together, section by section
   - Identify central idea of each section
   - Determine overall central ideas
   - Map relationships between ideas
   - Create visual diagram showing idea connections
   - Discuss how ideas develop through text
   - Find evidence of how each idea is supported

4. INDEPENDENT PRACTICE (13 minutes):
   Students independently:
   - Read multi-section informational article
   - Identify 2-3 central ideas
   - Complete idea development chart
   - Explain how each idea is developed
   - Describe relationships between ideas
   - Write summary incorporating all central ideas

DIFFERENTIATION:
For Struggling Learners:
- Use texts with very clear section divisions
- Provide graphic organizers with scaffolding
- Start with two central ideas before adding more
- Use color-coding for different ideas
- Offer sentence frames for describing relationships

For Advanced Learners:
- Work with texts with subtle, complex central ideas
- Analyze how ideas evolve and complicate each other
- Compare how different authors develop similar ideas
- Synthesize central ideas from multiple texts on same topic
- Evaluate which ideas are most effectively developed

ASSESSMENT INDICATORS:
- Identifies multiple central ideas accurately
- Explains how each idea is developed with evidence
- Describes relationships between central ideas
- Demonstrates understanding of how ideas work together', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Two or More Central Ideas' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Evaluating Reasoning
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Evaluating Reasoning' AND grade_level_min = 7),
  'Evaluating Reasoning Topic Guide', 'Evaluate soundness of reasoning and evidence',
  'EVALUATING REASONING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of claims and evidence
- Ability to identify author''s argument
- Recognition of fact vs. opinion
- Basic knowledge of logical connections

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Evaluate the soundness of an author''s reasoning
2. Assess the relevance and sufficiency of evidence
3. Identify weak or illogical reasoning
4. Determine whether claims are adequately supported

KEY CONCEPTS:
- Sound reasoning follows logical principles
- Evidence must be relevant, sufficient, and credible
- Weak reasoning includes logical fallacies and unsupported leaps
- Good arguments anticipate and address counterarguments
- Evidence quality matters more than quantity
- Reasoning should follow a clear logical progression
- Emotional appeals alone don''t constitute sound reasoning

COMMON MISCONCEPTIONS:
- Confusing agreement with quality of reasoning
- Thinking more evidence automatically means better reasoning
- Not distinguishing between correlation and causation
- Accepting claims at face value without evaluation

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Present two arguments for same position:
   Weak: "We should have longer lunch. Everyone wants it. It would be better."
   Strong: "We should extend lunch by 15 minutes because research shows middle schoolers need more time to eat properly, and rushed eating contributes to digestive problems and afternoon fatigue."
   Which is more convincing? Why?

2. DIRECT INSTRUCTION (15 minutes):
   Teach reasoning evaluation criteria:
   - Relevance: Does evidence relate to the claim?
   - Sufficiency: Is there enough evidence?
   - Credibility: Is the source trustworthy and expert?
   - Logic: Do conclusions follow from evidence?

   Model evaluation process:
   - Identify the claim
   - Identify the evidence provided
   - Ask: Is evidence relevant to this claim?
   - Determine: Is there enough evidence?
   - Evaluate: Are sources credible?
   - Check: Does conclusion logically follow?

   Introduce common logical fallacies:
   - Hasty generalization: jumping to conclusions
   - False cause: assuming correlation equals causation
   - Bandwagon: everyone believes it, so it must be true
   - Ad hominem: attacking the person instead of argument
   - Slippery slope: one thing will inevitably lead to extreme outcome

   Demonstrate with sample argument:
   - Read persuasive passage
   - Identify reasoning and evidence
   - Evaluate using criteria
   - Determine: Is this sound reasoning? Why or why not?

3. GUIDED PRACTICE (13 minutes):
   Analyze arguments together:
   - Read several short argumentative passages
   - Identify claims and evidence in each
   - Evaluate reasoning using criteria
   - Spot logical fallacies
   - Discuss what would strengthen weak arguments
   - Compare strong vs. weak reasoning
   - Practice articulating evaluation

4. INDEPENDENT PRACTICE (12 minutes):
   Students independently:
   - Read argumentative text
   - Complete reasoning evaluation chart
   - Assess relevance and sufficiency of evidence
   - Identify any logical fallacies
   - Write evaluation explaining quality of reasoning
   - Support evaluation with specific examples

DIFFERENTIATION:
For Struggling Learners:
- Start with very clear examples of good/bad reasoning
- Provide evaluation checklists
- Use visual organizers to map arguments
- Focus on one criterion at a time
- Offer sentence frames for evaluation writing

For Advanced Learners:
- Analyze complex, nuanced arguments
- Identify subtle logical fallacies
- Compare reasoning across multiple texts
- Construct improved versions of weak arguments
- Debate the quality of reasoning

ASSESSMENT INDICATORS:
- Accurately evaluates soundness of reasoning
- Identifies relevant, irrelevant, insufficient evidence
- Recognizes logical fallacies
- Explains evaluation with specific textual support', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evaluating Reasoning' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING TOPICS
-- ============================================================================

-- Organizing Arguments
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Organizing Arguments' AND grade_level_min = 7),
  'Organizing Arguments Topic Guide', 'Create cohesive argument structure',
  'ORGANIZING ARGUMENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to write basic argumentative claims
- Understanding of reasons and evidence
- Knowledge of paragraph structure
- Familiarity with transitions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Organize claims, reasons, and evidence in logical order
2. Create clear relationships among claims and reasons
3. Use transitions to connect ideas and create cohesion
4. Structure arguments for maximum persuasive impact

KEY CONCEPTS:
- Argument structure includes introduction, body paragraphs, and conclusion
- Strong organization guides readers through logical progression
- Each body paragraph should focus on one main reason
- Evidence should be placed strategically to support reasons
- Transitions show relationships between ideas
- Order matters: strongest reasons often go first or last
- Counterclaims should be addressed and refuted

COMMON MISCONCEPTIONS:
- Presenting reasons in random order
- Failing to connect paragraphs with transitions
- Mixing multiple reasons in one paragraph
- Not distinguishing between major and minor points

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show two routes to same destination on a map:
   - Direct route: clear and logical
   - Wandering route: confusing and inefficient
   "Organizing your argument is like planning the best route - you want readers to follow easily!"

2. DIRECT INSTRUCTION (14 minutes):
   Teach argument essay structure:

   INTRODUCTION:
   - Hook to grab attention
   - Background/context
   - Clear claim statement
   - Preview of main reasons

   BODY PARAGRAPHS (one per reason):
   - Topic sentence stating reason
   - Evidence supporting reason
   - Explanation of how evidence supports reason
   - Transition to next paragraph

   COUNTERCLAIM PARAGRAPH:
   - Acknowledge opposing view
   - Present counterevidence
   - Refute with stronger reasoning

   CONCLUSION:
   - Restate claim
   - Summarize key reasons
   - Call to action or broader implication

   Model organization strategies:
   - Chronological: by time order
   - Order of importance: strongest first or last
   - Problem-solution: present problem, then solutions
   - Cause-effect: show chain of reasoning

   Demonstrate transition use:
   - To add: furthermore, additionally, moreover
   - To contrast: however, on the other hand, conversely
   - To show cause-effect: therefore, consequently, as a result
   - To conclude: in conclusion, ultimately, in summary

3. GUIDED PRACTICE (15 minutes):
   Work together to organize argument:
   - Choose debate topic
   - Brainstorm claim and reasons
   - Organize reasons in logical order
   - Decide where to place counterclaim
   - Create outline together
   - Draft introduction paragraph
   - Practice writing transitions between reasons
   - Evaluate organization: Is flow logical and clear?

4. INDEPENDENT PRACTICE (12 minutes):
   Students independently:
   - Select argumentative topic
   - Create detailed outline with organization strategy
   - Write introduction with claim and preview
   - Draft one body paragraph with transitions
   - Plan counterclaim placement
   - Complete organization planning graphic organizer

DIFFERENTIATION:
For Struggling Learners:
- Provide paragraph templates and frames
- Offer pre-written sections to organize
- Use color-coding for different parts of argument
- Start with simple three-reason structure
- Provide transition word bank

For Advanced Learners:
- Experiment with different organizational patterns
- Analyze how organization affects persuasiveness
- Write complex arguments with multiple counterclaims
- Evaluate and improve organization of sample essays
- Create arguments on sophisticated, nuanced topics

ASSESSMENT INDICATORS:
- Organizes claims and reasons in logical order
- Uses transitions effectively to connect ideas
- Structures paragraphs clearly with topic sentences
- Creates cohesive argument from introduction to conclusion', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Organizing Arguments' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- End of Grade 7 Reading/ELA Expanded Prompts
-- This file contains comprehensive teaching prompts for key Grade 7 topics
-- Additional prompts for remaining topics should follow this same format
-- ============================================================================
