-- Grade 4 Reading Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 4 Reading/ELA topics
-- ============================================================================

-- ============================================================================
-- READING LITERATURE (10 topics)
-- ============================================================================

-- Inferring from Text
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Inferring from Text' AND grade_level_min = 4),
  'Inferring from Text Topic Guide', 'Drawing inferences using textual evidence',
  'INFERRING FROM TEXT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to comprehend grade-level texts
- Understanding of explicit vs. implicit information
- Experience making predictions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define inference as a conclusion based on evidence and reasoning
2. Distinguish between stated information and inferences
3. Use text clues plus background knowledge to make inferences
4. Support inferences with specific textual evidence

KEY CONCEPTS:
- Inferences are "educated guesses" based on clues
- Authors don''t always state everything directly
- Good readers "read between the lines"
- Inference = Text Clues + What I Already Know
- Inferences must be supported by evidence from the text
- Multiple reasonable inferences may be possible

COMMON MISCONCEPTIONS:
- Making wild guesses without text support
- Confusing inference with prediction
- Thinking inferences are always right or wrong
- Over-relying on background knowledge without text evidence

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show picture: person with umbrella, wet ground, grey sky
   "What can you infer? How do you know? Those are inference clues!"

2. DIRECT INSTRUCTION (9 minutes):
   Teach inference equation: Text Clues + Background Knowledge = Inference
   Model thinking aloud through an inference
   Show how to cite supporting evidence
   Demonstrate checking if inference makes sense
   Explain that good inferences are logical, not random

3. GUIDED PRACTICE (11 minutes):
   Read passage with implicit information
   Identify text clues together
   Connect to background knowledge
   Make and justify inferences as a class
   Use inference graphic organizers

4. INDEPENDENT PRACTICE (11 minutes):
   Students read new passages
   Make inferences independently
   Support with text evidence
   Share and discuss inferences with partners

DIFFERENTIATION:
For Struggling Learners:
- Use texts with obvious clues
- Provide inference sentence frames
- Start with visual inferences (pictures)
- Model extensively before independent work

For Advanced Learners:
- Make inferences from subtle, complex texts
- Analyze multiple layers of meaning
- Compare different valid inferences
- Identify when authors deliberately withhold information

ASSESSMENT INDICATORS:
- Makes logical inferences from text
- Cites specific evidence to support inferences
- Distinguishes stated facts from inferences
- Explains reasoning behind inferences', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inferring from Text' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Theme Development
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Theme Development' AND grade_level_min = 4),
  'Theme Development Topic Guide', 'Determining theme from story details',
  'THEME DEVELOPMENT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of theme as central message
- Ability to analyze characters and plot
- Experience identifying theme in simpler texts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Determine theme by analyzing story details
2. Explain how characters, setting, and plot reveal theme
3. Articulate theme as a complete statement, not one word
4. Support theme identification with textual evidence

KEY CONCEPTS:
- Theme is developed throughout the entire story
- Characters'' actions, changes, and lessons reveal theme
- Plot events and conflicts contribute to theme
- Setting can influence theme
- Theme statements should be universal truths or lessons
- Strong themes connect to readers'' lives

COMMON MISCONCEPTIONS:
- Stating theme as a single word (friendship vs. true friends support each other)
- Looking only at the ending for theme
- Confusing theme with topic or moral
- Believing every detail in a story relates to theme

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Stories aren''t just entertainment—authors have messages they want us to understand.
   Today we''ll be theme detectives!"

2. DIRECT INSTRUCTION (10 minutes):
   Model tracking theme development through a story
   Show how to analyze: What does the character learn? How do they change?
   Demonstrate connecting story elements to theme
   Teach writing theme as a complete thought
   Model supporting theme with multiple pieces of evidence

3. GUIDED PRACTICE (12 minutes):
   Read a story with clear theme development
   Track important moments and character changes
   Complete theme analysis chart together
   Write supported theme statements as a class
   Discuss how different elements contribute to theme

4. INDEPENDENT PRACTICE (9 minutes):
   Read a new story independently
   Identify theme with supporting details from throughout story
   Write theme statement with evidence
   Compare themes with partner

DIFFERENTIATION:
For Struggling Learners:
- Use stories with single, clear themes
- Provide theme tracker graphic organizers
- Offer theme statement sentence frames
- Highlight key passages that reveal theme

For Advanced Learners:
- Analyze stories with multiple, complex themes
- Track how theme develops across chapters
- Compare how different authors treat similar themes
- Articulate sophisticated, nuanced theme statements

ASSESSMENT INDICATORS:
- Determines theme from story details, not just ending
- Articulates theme as complete statement
- Supports theme with evidence from entire story
- Explains how characters and plot develop theme', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Theme Development' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Character Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Character Analysis' AND grade_level_min = 4),
  'Character Analysis Topic Guide', 'Analyzing character traits, motivations, and changes',
  'CHARACTER ANALYSIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of character traits
- Ability to make inferences
- Experience tracking story events

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze complex character traits using multiple sources of evidence
2. Explain character motivations and how they drive actions
3. Track how characters change throughout the story
4. Compare and contrast different characters

KEY CONCEPTS:
- Characters have complex, sometimes conflicting traits
- Character motivations (desires, fears, goals) drive the plot
- Dynamic characters change; static characters stay the same
- Characters are revealed through thoughts, words, actions, and interactions
- Understanding characters deepens story comprehension
- Characters'' choices often reflect theme

COMMON MISCONCEPTIONS:
- Assuming characters are all good or all bad
- Not recognizing character growth
- Confusing what characters say with what they truly believe
- Missing character motivations

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Real people are complicated—and so are good story characters!
   Let''s analyze them like psychologists."

2. DIRECT INSTRUCTION (10 minutes):
   Teach comprehensive character analysis method
   Model finding evidence for traits from multiple sources
   Demonstrate analyzing motivations behind actions
   Show how to track character change
   Explain internal vs. external character conflicts

3. GUIDED PRACTICE (12 minutes):
   Read passage with complex character
   Complete detailed character analysis chart
   Identify traits, motivations, and changes together
   Discuss how character relates to theme
   Compare with other characters

4. INDEPENDENT PRACTICE (9 minutes):
   Analyze a different character independently
   Use multiple evidence types
   Write character analysis paragraph
   Include traits, motivations, and changes

DIFFERENTIATION:
For Struggling Learners:
- Focus on one character aspect at a time
- Use clear, simple character examples
- Provide structured analysis templates
- Allow oral analysis before written

For Advanced Learners:
- Analyze complex, ambiguous characters
- Explore psychological motivations
- Compare characters across multiple texts
- Analyze how author develops characters over time

ASSESSMENT INDICATORS:
- Identifies multiple, nuanced character traits
- Explains character motivations clearly
- Tracks character development through story
- Supports analysis with varied textual evidence', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Character Analysis' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING INFORMATIONAL TEXT (10 topics)
-- ============================================================================

-- Main Idea and Summarizing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Main Idea and Summarizing' AND grade_level_min = 4),
  'Main Idea and Summarizing Topic Guide', 'Identifying main idea and summarizing text',
  'MAIN IDEA AND SUMMARIZING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to identify topics and key details
- Understanding of main idea concept
- Experience with informational text

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Determine the main idea of multi-paragraph texts
2. Identify how details support the main idea
3. Summarize texts objectively without opinions
4. Distinguish between summary and personal response

KEY CONCEPTS:
- Main idea is the most important point the author makes
- Main ideas can be explicit (stated) or implicit (inferred)
- Supporting details explain, prove, or describe the main idea
- Summaries include only the most important information
- Summaries are brief and objective (no opinions)
- Good summaries maintain the author''s meaning

COMMON MISCONCEPTIONS:
- Including too many details in summaries
- Adding personal opinions or interpretations
- Copying sentences directly instead of paraphrasing
- Thinking the first paragraph always contains the main idea

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "If you had 30 seconds to explain this article, what would you say?
   That''s summarizing—keeping only what matters most!"

2. DIRECT INSTRUCTION (10 minutes):
   Model determining main idea in complex text
   Demonstrate distinguishing important from less important details
   Teach summarizing process: identify main idea, select key details, paraphrase
   Show how to check summary: Does it capture the essence? Is it objective?
   Model using own words, not copying

3. GUIDED PRACTICE (12 minutes):
   Read informational passage together
   Identify stated or implied main idea
   Select 3-4 most important supporting details
   Write collaborative summary
   Evaluate summary for completeness and objectivity

4. INDEPENDENT PRACTICE (9 minutes):
   Read new informational text
   Determine main idea
   Write objective summary
   Peer-review summaries

DIFFERENTIATION:
For Struggling Learners:
- Use shorter texts with clear main ideas
- Provide summary frames and templates
- Highlight key sentences before summarizing
- Practice oral summaries first

For Advanced Learners:
- Summarize longer, complex texts
- Summarize texts with multiple main ideas
- Compare summaries of different lengths
- Analyze how summaries can vary while remaining accurate

ASSESSMENT INDICATORS:
- Accurately identifies main ideas
- Writes concise, objective summaries
- Includes only essential information
- Uses own words to paraphrase', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Main Idea and Summarizing' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Integrating Information
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Integrating Information' AND grade_level_min = 4),
  'Integrating Information Topic Guide', 'Combining information from multiple sources',
  'INTEGRATING INFORMATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to comprehend informational texts
- Understanding of main idea and details
- Experience taking notes from reading

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Gather information from two or more sources on the same topic
2. Identify overlapping and unique information
3. Synthesize information into coherent understanding
4. Present integrated information clearly

KEY CONCEPTS:
- Integration means combining information from multiple sources
- Different sources may provide different perspectives or details
- Some information appears in multiple sources (corroboration)
- Each source may have unique contributions
- Integrated understanding is richer than any single source
- We must give credit to sources

COMMON MISCONCEPTIONS:
- Thinking all sources say the same thing
- Copying from one source instead of integrating
- Not recognizing contradictions between sources
- Failing to attribute information to sources

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show three different articles about same topic
   "Like puzzle pieces, each source adds something to the complete picture!"

2. DIRECT INSTRUCTION (11 minutes):
   Model reading multiple sources on same topic
   Demonstrate note-taking from each source
   Show using Venn diagrams or charts to compare information
   Teach synthesizing information into cohesive presentation
   Model citing sources appropriately

3. GUIDED PRACTICE (13 minutes):
   Read 2-3 short sources on same topic as class
   Complete comparison chart together
   Identify shared and unique information
   Write integrated paragraph together
   Include information from all sources

4. INDEPENDENT PRACTICE (11 minutes):
   Students read multiple sources on topic
   Take notes from each
   Integrate information using graphic organizer
   Write paragraph using multiple sources

DIFFERENTIATION:
For Struggling Learners:
- Use only two short, simple sources
- Provide structured note-taking templates
- Highlight key information before integrating
- Work with partners

For Advanced Learners:
- Integrate three or more complex sources
- Identify and resolve conflicting information
- Evaluate source credibility and usefulness
- Create detailed research products

ASSESSMENT INDICATORS:
- Gathers information from multiple sources
- Identifies similarities and differences
- Synthesizes information coherently
- Credits all sources appropriately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Integrating Information' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VOCABULARY AND WORD ANALYSIS (10 topics)
-- ============================================================================

-- Greek and Latin Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Greek and Latin Roots' AND grade_level_min = 4),
  'Greek and Latin Roots Topic Guide', 'Learning common roots like aud, rupt, struct',
  'GREEK AND LATIN ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of prefixes and suffixes
- Ability to break words into parts
- Interest in word origins and meanings

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify common Greek and Latin roots in English words
2. Use root meanings to determine unfamiliar word meanings
3. Build word families based on common roots
4. Apply root knowledge to academic vocabulary

KEY CONCEPTS:
- Roots are the main meaning-carrying parts of words
- Many English words come from Greek and Latin
- Common roots: aud (hear), struct (build), rupt (break), port (carry), dict (say)
- One root appears in many related words (word families)
- Roots combine with prefixes and suffixes
- Knowing roots helps unlock meaning of thousands of words

COMMON MISCONCEPTIONS:
- Thinking roots work like prefixes and suffixes
- Not recognizing roots can change spelling
- Assuming all similar letter patterns are the same root
- Forgetting to consider context when using root meanings

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Write: audio, auditorium, audible, audience
   "What do these words share? They all come from ''aud'' meaning ''hear''!
   Learning roots is like getting a key to unlock many words!"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce 4-5 high-utility roots with meanings
   Show how roots appear in multiple words
   Demonstrate using root + context to determine meaning
   Model building word families from single roots
   Show how roots combine with affixes

3. GUIDED PRACTICE (11 minutes):
   Sort words by common roots
   Match roots to meanings
   Use root knowledge to determine word meanings
   Build word family trees
   Identify roots in academic vocabulary

4. INDEPENDENT PRACTICE (10 minutes):
   Complete root word activities
   Find examples of roots in reading
   Use roots to figure out new vocabulary
   Create root-based vocabulary cards

DIFFERENTIATION:
For Struggling Learners:
- Focus on 2-3 very common roots
- Use visual root charts with examples
- Provide word family templates
- Practice with familiar words containing roots

For Advanced Learners:
- Learn extensive Greek and Latin roots
- Research word etymologies
- Analyze how roots combine in complex words
- Compare English with other Romance languages

ASSESSMENT INDICATORS:
- Identifies common Greek and Latin roots
- Uses root knowledge to determine word meanings
- Builds word families from roots
- Applies root knowledge to unfamiliar words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Greek and Latin Roots' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING (10 topics)
-- ============================================================================

-- Narrative Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 4),
  'Narrative Writing Topic Guide', 'Writing stories with plot development and dialogue',
  'NARRATIVE WRITING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of story elements and structure
- Ability to write organized paragraphs
- Experience with dialogue punctuation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Develop narratives with clear plot progression
2. Create realistic, developed characters
3. Use dialogue to advance the story and reveal character
4. Include descriptive details, sensory language, and precise word choice

KEY CONCEPTS:
- Strong narratives have well-developed plot, characters, and setting
- Plot should have rising action, climax, and resolution
- Characters should have clear motivations and face challenges
- Dialogue should sound natural and serve a purpose
- Descriptive details create vivid mental images
- Pacing controls how quickly the story unfolds
- Narrative techniques include flashback, foreshadowing, and suspense

COMMON MISCONCEPTIONS:
- Writing events in list form without development
- Creating flat, unchanging characters
- Including dialogue that doesn''t advance the story
- Rushing through important moments
- Telling instead of showing

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Read engaging narrative opening from literature
   "What techniques did this author use to hook you? Let''s use those too!"

2. DIRECT INSTRUCTION (12 minutes):
   Model complete narrative planning process
   Demonstrate developing complex characters with motivations
   Show crafting effective dialogue
   Model using "show don''t tell" techniques
   Explain pacing and building tension
   Demonstrate revision for stronger word choice

3. GUIDED PRACTICE (14 minutes):
   Plan a narrative together
   Develop character profiles as a class
   Write sample scenes with dialogue
   Practice descriptive language techniques
   Revise for stronger verbs and details

4. INDEPENDENT PRACTICE (14 minutes):
   Students plan complete narratives
   Develop characters and plot
   Draft narratives with dialogue and description
   Peer review for narrative techniques

DIFFERENTIATION:
For Struggling Learners:
- Provide detailed story planning templates
- Use mentor texts for models
- Start with shorter narratives
- Focus on one skill at a time

For Advanced Learners:
- Experiment with advanced techniques (multiple plot lines, complex character arcs)
- Play with point of view and narrative voice
- Develop extended narratives with chapters
- Study and emulate literary authors

ASSESSMENT INDICATORS:
- Creates well-structured plots with developed events
- Develops realistic, multi-dimensional characters
- Uses dialogue effectively and correctly
- Includes vivid descriptive and sensory details', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRAMMAR AND CONVENTIONS (10 topics)
-- ============================================================================

-- Relative Pronouns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Relative Pronouns' AND grade_level_min = 4),
  'Relative Pronouns Topic Guide', 'Using who, whom, whose, which, that correctly',
  'RELATIVE PRONOUNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of pronouns
- Ability to identify clauses in sentences
- Knowledge of sentence combining

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify relative pronouns: who, whom, whose, which, that
2. Use relative pronouns to create complex sentences
3. Choose appropriate relative pronouns for people, animals, and things
4. Understand how relative clauses add information

KEY CONCEPTS:
- Relative pronouns connect clauses and introduce additional information
- "Who" and "whom" refer to people
- "Which" and "that" refer to animals and things
- "Whose" shows possession
- Relative pronouns create more sophisticated, detailed sentences
- Relative clauses should be close to the words they describe

COMMON MISCONCEPTIONS:
- Using "that" for people (instead of "who")
- Confusing "who" (subject) with "whom" (object)
- Overusing "that" for everything
- Not recognizing relative clauses need context

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "I have a friend. My friend loves reading."
   "I have a friend who loves reading."
   "One word made this smoother! That''s the power of relative pronouns!"

2. DIRECT INSTRUCTION (9 minutes):
   Introduce each relative pronoun with usage rules
   Model combining sentences using relative pronouns
   Demonstrate choosing correct pronoun for context
   Show how relative clauses add detail
   Explain essential vs. non-essential clauses (briefly)

3. GUIDED PRACTICE (10 minutes):
   Identify relative pronouns in sentences
   Combine sentence pairs using relative pronouns
   Choose correct relative pronouns for contexts
   Add relative clauses to simple sentences

4. INDEPENDENT PRACTICE (8 minutes):
   Complete relative pronoun exercises
   Write complex sentences using each relative pronoun
   Add relative clauses to improve writing
   Identify and use relative pronouns in reading

DIFFERENTIATION:
For Struggling Learners:
- Focus on "who," "which," and "that" first
- Provide sentence combining templates
- Use visual charts showing pronoun uses
- Practice orally before written work

For Advanced Learners:
- Introduce "whom" usage rules
- Explore essential vs. non-essential clauses with commas
- Use relative pronouns in sophisticated writing
- Analyze relative pronoun use in literature

ASSESSMENT INDICATORS:
- Identifies relative pronouns in sentences
- Uses appropriate relative pronouns for referents
- Combines sentences effectively with relative pronouns
- Creates complex sentences with relative clauses', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Relative Pronouns' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- Note: This file contains representative prompts for Grade 4 Reading/ELA.
-- Additional prompts for remaining topics follow the same comprehensive format
-- with grade-appropriate content, teaching sequences, and differentiation.
-- ============================================================================
