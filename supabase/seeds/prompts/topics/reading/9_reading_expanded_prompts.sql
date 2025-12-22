-- Grade 9 Reading/ELA Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 9 Reading/ELA topics
-- ============================================================================

-- ============================================================================
-- READING LITERATURE TOPICS
-- ============================================================================

-- Textual Evidence for Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Textual Evidence for Analysis' AND grade_level_min = 9),
  'Textual Evidence for Analysis Topic Guide', 'Cite strong evidence supporting explicit and inferential analysis',
  'TEXTUAL EVIDENCE FOR ANALYSIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Mastery of citing strongest textual evidence
- Understanding of complex inference-making
- Ability to analyze sophisticated literary texts
- Knowledge of integrating multiple evidence types

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Cite strong and thorough evidence to support explicit analysis
2. Draw complex inferences from textual evidence
3. Analyze where the text leaves matters uncertain or ambiguous
4. Synthesize evidence from throughout the text to support interpretation

KEY CONCEPTS:
- Strong evidence in high school analysis requires depth and sophistication
- Explicit analysis addresses what text directly states
- Inferential analysis reads between lines to understand implied meaning
- Textual ambiguity requires acknowledgment and careful interpretation
- Evidence should come from multiple places throughout complex texts
- Close reading reveals layers of meaning in evidence
- Synthesizing evidence creates coherent, comprehensive analysis

COMMON MISCONCEPTIONS:
- Treating all inferences as equally valid without textual support
- Ignoring textual ambiguity in favor of definitive interpretations
- Over-relying on surface-level evidence
- Failing to acknowledge where text is deliberately unclear

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Literary analysis is like forensic science - you examine all the evidence carefully, consider what''s stated explicitly and what''s implied, and acknowledge what remains uncertain. Let''s develop these sophisticated skills."

2. DIRECT INSTRUCTION (14 minutes):
   Teach levels of textual analysis:

   EXPLICIT ANALYSIS:
   - What does the text directly state?
   - Find evidence in clear statements, descriptions, actions
   - Quote directly and explain significance

   INFERENTIAL ANALYSIS:
   - What does the text imply or suggest?
   - Look for patterns, symbols, subtle details
   - Connect evidence to draw logical conclusions
   - Support inferences with textual proof

   AMBIGUITY ANALYSIS:
   - What does the text leave uncertain?
   - Why might author create ambiguity?
   - Discuss multiple valid interpretations
   - Support each possibility with evidence

   Model close reading technique:
   - Read passage multiple times
   - Annotate: explicit meaning, inferences, questions
   - Identify significant word choices, patterns, images
   - Consider: What''s stated? Implied? Uncertain?

   Demonstrate evidence synthesis:
   - Gather evidence from beginning, middle, end
   - Show how evidence builds understanding
   - Explain relationships between evidence pieces
   - Acknowledge complexity and nuance

3. GUIDED PRACTICE (15 minutes):
   Analyze complex literary passage:
   - Close read together, annotating text
   - Identify explicit statements
   - Draw inferences with textual support
   - Discuss ambiguous elements
   - Gather evidence from multiple parts
   - Synthesize into coherent interpretation
   - Acknowledge alternative interpretations
   - Write collaborative analytical paragraph

4. INDEPENDENT PRACTICE (12 minutes):
   Students independently:
   - Close read assigned literary excerpt
   - Identify explicit and inferential meanings
   - Note textual ambiguities
   - Gather strong evidence throughout
   - Write analytical response
   - Synthesize multiple evidence pieces
   - Acknowledge interpretive complexity

DIFFERENTIATION:
For Struggling Learners:
- Provide annotation guides for close reading
- Start with shorter, less ambiguous passages
- Offer clear distinction between explicit and inferential
- Use guided questions to scaffold inference
- Provide evidence synthesis graphic organizers

For Advanced Learners:
- Analyze highly complex, ambiguous texts
- Develop multiple valid interpretations
- Examine how critical perspectives affect interpretation
- Compare textual evidence across full novel or play
- Engage in literary criticism and theory

ASSESSMENT INDICATORS:
- Cites strong, thorough evidence for analysis
- Draws sophisticated inferences with textual support
- Acknowledges and interprets textual ambiguity
- Synthesizes evidence from throughout complex texts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Textual Evidence for Analysis' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Complex Character Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Complex Character Analysis' AND grade_level_min = 9),
  'Complex Character Analysis Topic Guide', 'Analyze how complex characters develop and interact',
  'COMPLEX CHARACTER ANALYSIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to analyze basic character development
- Understanding of character motivation and conflict
- Knowledge of characterization methods
- Familiarity with character archetypes and foils

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze how complex characters develop over the course of a text
2. Examine characters with contradictory traits and motivations
3. Analyze how characters interact and influence each other
4. Evaluate how character complexity advances plot and develops theme

KEY CONCEPTS:
- Complex characters have contradictory traits, multiple motivations, and internal conflicts
- Round characters change in realistic, believable ways
- Character complexity emerges through actions, thoughts, dialogue, and relationships
- Psychological realism creates authentic character depth
- Characters can be unreliable narrators of their own experience
- Internal conflict often drives external action
- Character development parallels thematic development

COMMON MISCONCEPTIONS:
- Expecting characters to be purely good or purely evil
- Overlooking subtle character development
- Confusing character complexity with character inconsistency
- Not recognizing that character flaws create depth

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Real people are complicated - we have contradictions, hidden motivations, internal conflicts. The most memorable literary characters share this complexity. Let''s learn to analyze characters with the depth they deserve."

2. DIRECT INSTRUCTION (15 minutes):
   Teach complex character analysis framework:

   CONTRADICTIONS AND COMPLEXITY:
   - What conflicting traits does character possess?
   - How do contradictions create realistic depth?
   - What internal conflicts drive character?

   MOTIVATION ANALYSIS:
   - What does character consciously desire?
   - What unconscious needs drive behavior?
   - How do motivations conflict with each other?

   DEVELOPMENT TRACKING:
   - How does character change (or resist change)?
   - What catalyzes development?
   - Is change gradual or sudden? Why?
   - What does character learn or fail to learn?

   Model analyzing character complexity:
   - Identify character''s contradictory traits
   - Examine conflicting motivations
   - Trace development through key moments
   - Analyze relationships with other characters
   - Connect character to theme

   Demonstrate psychological depth analysis:
   - What does character say vs. think vs. do?
   - Analyze defense mechanisms and self-deception
   - Examine how past shapes present behavior
   - Consider social/cultural forces on character

   Show character web technique:
   - Map relationships between characters
   - Show how characters influence each other
   - Identify foils and parallels
   - Trace relationship evolution

3. GUIDED PRACTICE (15 minutes):
   Analyze complex character from shared text:
   - Identify contradictory character traits
   - Examine multiple motivations
   - Track development through text
   - Analyze key relationships
   - Discuss how complexity serves theme
   - Find evidence of psychological realism
   - Create character analysis chart
   - Write collaborative character analysis

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Choose complex character from reading
   - Complete character complexity analysis
   - Map character development timeline
   - Analyze relationships and interactions
   - Write character analysis essay
   - Support all claims with textual evidence
   - Connect character to thematic meaning

DIFFERENTIATION:
For Struggling Learners:
- Provide character analysis templates
- Focus on one aspect of complexity at a time
- Use graphic organizers for development tracking
- Start with clearly complex characters
- Offer guiding questions for analysis

For Advanced Learners:
- Analyze subtle, ambiguous character complexity
- Apply psychological theories to character analysis
- Compare character complexity across texts
- Examine archetypal patterns and variations
- Analyze how point of view affects character portrayal

ASSESSMENT INDICATORS:
- Analyzes characters with contradictory traits and motivations
- Traces complex character development with evidence
- Examines character relationships and interactions deeply
- Connects character complexity to plot and theme', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complex Character Analysis' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Author''s Structural Choices
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Author''s Structural Choices' AND grade_level_min = 9),
  'Author''s Structural Choices Topic Guide', 'Analyze how author manipulates time and sequence',
  'AUTHOR''S STRUCTURAL CHOICES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of basic plot structure
- Knowledge of narrative elements
- Awareness of chronological vs. non-chronological order
- Familiarity with narrative techniques (flashback, foreshadowing)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze how authors structure texts and manipulate time
2. Evaluate the impact of structural choices on meaning
3. Examine how order of events affects reader understanding
4. Analyze techniques like flashback, parallel plots, and frame narratives

KEY CONCEPTS:
- Structure is the framework that organizes a text
- Authors deliberately manipulate time for specific effects
- Non-chronological structure creates mystery, suspense, or thematic meaning
- Parallel plots allow comparison and contrast
- Frame narratives provide perspective on central story
- Fragmented structure can reflect thematic chaos or psychological state
- Structure affects pacing, emphasis, and reader engagement

COMMON MISCONCEPTIONS:
- Assuming chronological order is always best or clearest
- Not recognizing deliberate structural choices as meaningful
- Confusing confusing structure with poor writing
- Missing how structure reinforces theme

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Show movie trailer that reveals ending vs. one that builds suspense
   "How you tell a story is as important as what you tell. Authors use structure to create specific effects. Let''s analyze how."

2. DIRECT INSTRUCTION (16 minutes):
   Teach structural elements and techniques:

   TIME MANIPULATION:
   - Chronological: events in time order
   - Flashback: scene from the past
   - Flash-forward: glimpse of future
   - In medias res: beginning in middle of action
   - Reverse chronology: moving backward in time

   STRUCTURAL PATTERNS:
   - Linear: straightforward progression
   - Circular: ending returns to beginning
   - Parallel plots: two or more storylines
   - Frame narrative: story within a story
   - Fragmented: non-linear, disconnected pieces

   EFFECTS OF STRUCTURE:
   - Suspense and mystery
   - Dramatic irony
   - Thematic emphasis
   - Character revelation
   - Reader engagement

   Model structural analysis:
   - Identify the structural pattern
   - Map the actual order of events
   - Compare to chronological order
   - Analyze: Why did author choose this structure?
   - Evaluate: What effect does it create?
   - Connect: How does structure reinforce theme?

   Demonstrate with example text:
   - Diagram the structure visually
   - Identify all time shifts
   - Discuss effect on reader
   - Imagine text in chronological order
   - Explain why author''s choice is effective

3. GUIDED PRACTICE (14 minutes):
   Analyze text with complex structure:
   - Read passage with non-chronological elements
   - Create timeline of actual events
   - Map narrative structure
   - Identify all time manipulations
   - Discuss effect of each structural choice
   - Compare to hypothetical chronological version
   - Analyze connection to theme

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Read text with deliberate structural complexity
   - Create event timeline and structure diagram
   - Identify structural techniques used
   - Write analysis of structural choices
   - Explain effects on meaning and reader
   - Evaluate effectiveness of author''s choices

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers for mapping structure
- Use shorter texts with clear structural patterns
- Color-code different time periods
- Start with simple flashback before complex structures
- Offer guiding questions for analysis

For Advanced Learners:
- Analyze highly experimental narrative structures
- Compare structural choices across multiple texts
- Examine postmodern narrative techniques
- Evaluate how culture and period affect structural conventions
- Create original narratives with deliberate structural choices

ASSESSMENT INDICATORS:
- Identifies and explains structural techniques
- Analyzes effects of author''s structural choices
- Evaluates how structure affects meaning
- Connects structure to theme and purpose', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Author''s Structural Choices' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING INFORMATIONAL TEXT TOPICS
-- ============================================================================

-- Central Ideas in Complex Texts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Central Ideas in Complex Texts' AND grade_level_min = 9),
  'Central Ideas in Complex Texts Topic Guide', 'Determine central ideas and analyze development',
  'CENTRAL IDEAS IN COMPLEX TEXTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to identify central ideas in informational texts
- Understanding of text structures
- Skill in analyzing idea development
- Knowledge of relationships between ideas

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Determine central ideas in complex, sophisticated informational texts
2. Analyze how central ideas emerge and develop throughout the text
3. Provide objective, comprehensive summaries
4. Evaluate how structure and evidence develop central ideas

KEY CONCEPTS:
- Central ideas in complex texts may be implicit rather than stated
- Multiple central ideas often interact and build on each other
- Ideas develop through evidence, analysis, examples, and reasoning
- Text structure shapes how ideas emerge and develop
- Objective summaries capture ideas without personal opinion
- Complex texts may challenge, complicate, or nuance central ideas
- Development of ideas often follows argumentative or analytical progression

COMMON MISCONCEPTIONS:
- Expecting central ideas to be explicitly stated in topic sentences
- Confusing interesting details with central ideas
- Including personal reactions in objective summaries
- Missing how ideas evolve and become more complex

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "College-level texts don''t hand you the main idea on a silver platter. They develop sophisticated ideas gradually through evidence and analysis. Let''s build the skills to handle complex texts."

2. DIRECT INSTRUCTION (15 minutes):
   Teach strategies for identifying implicit central ideas:
   - Read introduction and conclusion carefully
   - Track recurring concepts and terms
   - Identify what author spends most time discussing
   - Notice patterns in evidence and examples
   - Synthesize: What point do all these elements support?

   Model idea development analysis:
   - How is idea first introduced?
   - What evidence develops the idea?
   - How does analysis deepen understanding?
   - How is idea complicated or nuanced?
   - Where is idea reinforced or concluded?

   Demonstrate tracking idea development:
   - Create development timeline
   - Map idea evolution from simple to complex
   - Note how structure supports development
   - Identify key evidence at each stage

   Teach objective summary writing:
   - Include all central ideas
   - Maintain author''s meaning and emphasis
   - Use own words (paraphrase)
   - Avoid personal opinion or judgment
   - Capture complexity without over-simplifying
   - Follow logical progression of original

3. GUIDED PRACTICE (15 minutes):
   Analyze complex informational text:
   - Read sophisticated article together
   - Identify central ideas (stated and implied)
   - Track how each idea develops
   - Map idea development visually
   - Discuss how structure supports ideas
   - Identify key evidence for each idea
   - Write collaborative objective summary
   - Evaluate summary for accuracy and completeness

4. INDEPENDENT PRACTICE (11 minutes):
   Students independently:
   - Read complex informational text
   - Identify 2-3 central ideas
   - Complete idea development chart
   - Map how evidence develops ideas
   - Write comprehensive objective summary
   - Self-assess for objectivity and accuracy

DIFFERENTIATION:
For Struggling Learners:
- Provide annotation guide for identifying ideas
- Use texts with clearer (though still complex) central ideas
- Offer summary sentence frames
- Pre-teach key vocabulary and concepts
- Break long texts into manageable sections

For Advanced Learners:
- Analyze highly sophisticated, nuanced arguments
- Compare idea development across multiple texts
- Evaluate effectiveness of development strategies
- Synthesize ideas from multiple complex sources
- Analyze how disciplinary conventions affect presentation

ASSESSMENT INDICATORS:
- Identifies central ideas in complex texts accurately
- Analyzes how ideas develop and evolve
- Writes objective summaries capturing complexity
- Explains how structure and evidence develop ideas', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Central Ideas in Complex Texts' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Rhetorical Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Rhetorical Analysis' AND grade_level_min = 9),
  'Rhetorical Analysis Topic Guide', 'Analyze how rhetoric advances point of view',
  'RHETORICAL ANALYSIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of rhetorical appeals (ethos, pathos, logos)
- Knowledge of rhetorical devices
- Ability to identify author''s purpose and audience
- Familiarity with argument analysis

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze how an author uses and refines meaning of key terms
2. Determine author''s point of view and purpose
3. Analyze how rhetoric advances the point of view or purpose
4. Evaluate the effectiveness of rhetorical choices

KEY CONCEPTS:
- Rhetoric encompasses all choices authors make to communicate effectively
- Effective rhetoric considers purpose, audience, and context
- Authors refine key terms to shape reader understanding
- Rhetorical strategies include appeals, devices, and stylistic choices
- Rhetoric operates at multiple levels: word, sentence, paragraph, whole text
- Strong rhetoric balances logical, ethical, and emotional appeals
- Analyzing rhetoric reveals how meaning is constructed

COMMON MISCONCEPTIONS:
- Thinking rhetoric is only in speeches or arguments
- Confusing identification of techniques with analysis of effect
- Believing rhetoric is inherently manipulative
- Not recognizing rhetoric in informational texts

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Compare two texts presenting same information differently
   "Same facts, different rhetoric, completely different effects. Let''s analyze how authors use language strategically."

2. DIRECT INSTRUCTION (16 minutes):
   Teach comprehensive rhetorical analysis framework:

   RHETORICAL SITUATION:
   - Purpose: What does author aim to accomplish?
   - Audience: Who is intended reader?
   - Context: Historical, cultural, situational factors
   - Genre: Conventions and expectations

   RHETORICAL APPEALS:
   - Ethos: How does author establish credibility?
   - Pathos: How does author appeal to emotions?
   - Logos: How does author use logic and reasoning?

   RHETORICAL STRATEGIES:
   - Word choice and tone
   - Sentence structure and variety
   - Repetition and patterns
   - Figurative language
   - Examples and evidence selection
   - Organization and structure

   KEY TERM ANALYSIS:
   - How does author define important terms?
   - How are definitions refined throughout text?
   - How do definitions advance argument?

   Model complete rhetorical analysis:
   - Identify rhetorical situation
   - Find examples of each appeal
   - Identify rhetorical strategies
   - Analyze how strategies advance purpose
   - Evaluate overall effectiveness
   - Write analysis paragraph

3. GUIDED PRACTICE (14 minutes):
   Analyze persuasive or informational text:
   - Determine purpose, audience, context
   - Find examples of ethos, pathos, logos
   - Identify rhetorical strategies
   - Analyze key term usage and refinement
   - Discuss how rhetoric advances purpose
   - Evaluate effectiveness for audience
   - Create rhetorical analysis chart
   - Write collaborative analysis paragraph

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Read speech, essay, or article
   - Complete rhetorical analysis chart
   - Identify rhetorical situation and appeals
   - Analyze strategies and their effects
   - Examine key term usage
   - Write rhetorical analysis essay
   - Evaluate effectiveness of rhetoric

DIFFERENTIATION:
For Struggling Learners:
- Provide rhetorical analysis templates
- Use texts with very clear rhetorical strategies
- Focus on one appeal or strategy at a time
- Offer sentence frames for analysis
- Use familiar topics and accessible texts

For Advanced Learners:
- Analyze subtle, sophisticated rhetoric
- Compare rhetorical approaches across texts
- Examine how context affects rhetorical choices
- Analyze rhetoric in various genres and media
- Study historical development of rhetorical theory

ASSESSMENT INDICATORS:
- Identifies author''s point of view and purpose accurately
- Analyzes how specific rhetorical choices advance purpose
- Evaluates effectiveness of rhetoric for audience
- Explains how key terms are used and refined', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rhetorical Analysis' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING TOPICS
-- ============================================================================

-- Developing Claims
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Developing Claims' AND grade_level_min = 9),
  'Developing Claims Topic Guide', 'Develop claims fairly with valid reasoning',
  'DEVELOPING CLAIMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to write argumentative claims
- Understanding of evidence and reasoning
- Knowledge of counterclaims
- Skill in organizing arguments

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Introduce precise claims and distinguish from counterclaims
2. Develop claims fairly with logical reasoning and relevant evidence
3. Create clear relationships among claims, counterclaims, and evidence
4. Use words, phrases, and clauses to create cohesion

KEY CONCEPTS:
- Precise claims are specific, arguable, and significant
- Claims must be developed with multiple forms of support
- Fair development acknowledges complexity and considers alternatives
- Logical reasoning connects evidence to claims
- Cohesion requires clear relationships between all elements
- Development includes explaining significance of evidence
- Strong arguments anticipate objections

COMMON MISCONCEPTIONS:
- Stating claims without adequate development
- Piling evidence without explaining connections
- Developing claims one-sidedly without acknowledging complexity
- Confusing assertion with argumentation

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Weak: "Social media is bad." (assertion without development)
   Strong: "While social media offers connection, its algorithmic design prioritizes engagement over well-being, contributing to increased anxiety and decreased face-to-face communication skills among teens."
   What makes the second better?

2. DIRECT INSTRUCTION (16 minutes):
   Teach claim development framework:

   PRECISE CLAIM WRITING:
   - Specific: Narrow enough to develop thoroughly
   - Arguable: Open to disagreement
   - Significant: Worth arguing about
   - Qualified: Acknowledges nuance ("while," "although")

   CLAIM DEVELOPMENT STRATEGIES:
   - Provide varied evidence (statistics, examples, expert opinion)
   - Explain how evidence supports claim
   - Address complexity and exceptions
   - Connect to broader implications
   - Use reasoning to show logical connections

   CREATING COHESION:
   - Use transitional words showing relationships
   - Repetition of key terms
   - Parallel structure
   - Clear pronoun reference
   - Logical progression of ideas

   Model developing a claim:
   - Start with precise claim
   - Present first piece of evidence
   - Explain connection to claim
   - Present second piece of evidence
   - Show how evidence works together
   - Address potential objections
   - Show broader significance

   Demonstrate fair development:
   - Acknowledge legitimate counterpoints
   - Concede where appropriate
   - Show why claim still holds
   - Avoid straw man arguments
   - Consider multiple perspectives

3. GUIDED PRACTICE (14 minutes):
   Develop argument together:
   - Craft precise claim on chosen topic
   - Brainstorm multiple types of evidence
   - Create development outline
   - Draft claim development paragraph
   - Add transitions for cohesion
   - Address counterpoints fairly
   - Evaluate: Is claim developed fairly and thoroughly?

4. INDEPENDENT PRACTICE (10 minutes):
   Students independently:
   - Write precise claim on assigned topic
   - Gather varied evidence
   - Create claim development outline
   - Draft multiple paragraphs developing claim
   - Use transitions for cohesion
   - Address counterclaims fairly
   - Self-assess development for logic and fairness

DIFFERENTIATION:
For Struggling Learners:
- Provide claim development templates
- Offer pre-gathered evidence to organize
- Use graphic organizers for logical flow
- Give transition word banks
- Start with simpler, more concrete topics

For Advanced Learners:
- Develop complex, nuanced claims
- Address multiple sophisticated counterarguments
- Analyze logical fallacies in development
- Research and develop claims independently
- Write on abstract, philosophical topics

ASSESSMENT INDICATORS:
- Introduces precise, arguable claims
- Develops claims with varied, relevant evidence
- Creates logical connections between elements
- Addresses complexity and counterarguments fairly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Developing Claims' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- End of Grade 9 Reading/ELA Expanded Prompts
-- This file contains comprehensive teaching prompts for key Grade 9 topics
-- Additional prompts for remaining topics should follow this same format
-- ============================================================================
