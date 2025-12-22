-- Grade 6 Reading/ELA Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 6 Reading/ELA topics
-- ============================================================================

-- ============================================================================
-- READING LITERATURE TOPICS
-- ============================================================================

-- Citing Textual Evidence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Citing Textual Evidence' AND grade_level_min = 6),
  'Citing Textual Evidence Topic Guide', 'Support analysis with evidence from text',
  'CITING TEXTUAL EVIDENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to locate information in text
- Understanding of what makes a claim or interpretation
- Basic comprehension of literary texts
- Familiarity with page numbers and paragraph references

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Cite specific textual evidence to support analysis of what the text says explicitly
2. Cite textual evidence to support inferences drawn from the text
3. Integrate quotations smoothly into their own writing
4. Explain how evidence supports their interpretations

KEY CONCEPTS:
- Textual evidence is specific proof from the text that supports claims
- Explicit evidence directly states information in the text
- Inferential evidence requires reading between the lines
- Proper citation includes page numbers or paragraph references
- Evidence must be relevant and directly connected to the claim
- Quotations should be introduced and explained

COMMON MISCONCEPTIONS:
- Thinking any quote from the text counts as evidence
- Failing to explain how the evidence supports the claim
- Using evidence that doesn''t relate to the analysis
- Assuming the reader sees the connection without explanation

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Imagine you''re a detective. How do you prove your theory about who committed the crime? You need EVIDENCE! Reading is the same - we need evidence from the text to prove our ideas."

2. DIRECT INSTRUCTION (12 minutes):
   Model finding textual evidence:
   - Read a short passage together
   - Make a claim: "The main character is brave."
   - Think aloud: "What evidence proves this?"
   - Find specific quotes that show bravery
   - Model citation format: According to the text, "..." (page #)

   Teach explicit vs. inferential evidence:
   - Explicit: Text directly states it
   - Inferential: Text implies it; you read between the lines

   Demonstrate the RACE strategy:
   R = Restate the question
   A = Answer the question
   C = Cite evidence from text
   E = Explain how evidence supports answer

3. GUIDED PRACTICE (15 minutes):
   Students work with teacher support to:
   - Read a new passage together
   - Identify a claim or answer a question
   - Locate 2-3 pieces of supporting evidence
   - Practice introducing quotes with signal phrases
   - Explain connection between evidence and claim
   - Share examples with class
   - Provide peer feedback on evidence quality

4. INDEPENDENT PRACTICE (14 minutes):
   Students independently:
   - Read an age-appropriate passage
   - Respond to a text-based question
   - Find and cite at least two pieces of evidence
   - Explain how each piece of evidence supports their answer
   - Self-assess using a checklist

DIFFERENTIATION:
For Struggling Learners:
- Provide sentence frames for citing evidence
- Highlight potential evidence in the text
- Use shorter, simpler passages
- Work in partnerships to locate evidence
- Provide examples of strong vs. weak evidence

For Advanced Learners:
- Require finding both explicit and inferential evidence
- Challenge to find evidence from multiple parts of text
- Analyze which pieces of evidence are strongest and why
- Practice synthesizing multiple pieces of evidence
- Work with more complex, ambiguous texts

ASSESSMENT INDICATORS:
- Locates relevant textual evidence to support claims
- Cites evidence using proper format
- Uses both explicit and inferential evidence appropriately
- Explains the connection between evidence and interpretation', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Citing Textual Evidence' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Determining Theme
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Determining Theme' AND grade_level_min = 6),
  'Determining Theme Topic Guide', 'Identify how theme develops through details',
  'DETERMINING THEME - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding the difference between topic and theme
- Ability to identify main events in a story
- Recognition of character changes and conflicts
- Basic comprehension of plot structure

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Determine the theme or central idea of a text
2. Distinguish between topic and theme
3. Identify key details that convey the theme
4. Express theme as a complete statement about life

KEY CONCEPTS:
- Theme is the central message or lesson about life
- Topic is what the text is about; theme is what it says about that topic
- Themes are universal and can apply to real life
- Themes are often not directly stated but must be inferred
- Multiple details work together to reveal theme
- Common themes: friendship, courage, perseverance, honesty, family

COMMON MISCONCEPTIONS:
- Confusing topic (one word) with theme (complete idea)
- Thinking theme is the same as plot summary
- Believing theme is always stated directly in text
- Assuming every story has only one theme

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Share a well-known fable (e.g., "The Tortoise and the Hare")
   Ask: "What is this story really teaching us about life?"
   Discuss: That''s the THEME - the life lesson or message.

2. DIRECT INSTRUCTION (13 minutes):
   Distinguish topic from theme:
   - Topic: What the story is about (one word: friendship, honesty)
   - Theme: What the story says about that topic (complete thought)
   - Example: Topic = honesty; Theme = "Honesty is always the best policy"

   Teach theme identification strategy:
   - Look at the main character''s changes
   - Consider the central conflict and resolution
   - Ask: What lesson does the character learn?
   - Think: What is the author trying to teach us?

   Model with a short text:
   - Read aloud and think aloud
   - Identify key moments and character realizations
   - Craft theme statement: "The author is showing us that..."

3. GUIDED PRACTICE (14 minutes):
   Read a short story together:
   - Students identify the topic
   - Discuss character development and conflicts
   - Work together to find details that hint at theme
   - Craft theme statements in small groups
   - Share and compare theme interpretations
   - Discuss how different students might identify different themes
   - Evaluate which details best support each theme

4. INDEPENDENT PRACTICE (14 minutes):
   Students independently:
   - Read an age-appropriate text
   - Identify the topic
   - List 3-4 key details that reveal theme
   - Write a theme statement
   - Explain how the details support the theme

DIFFERENTIATION:
For Struggling Learners:
- Provide a list of possible themes to choose from
- Use very clear, simple texts with obvious themes
- Provide sentence frames: "The author wants us to learn that..."
- Work with familiar stories or fables
- Focus on one clear theme

For Advanced Learners:
- Identify multiple themes in a single text
- Compare themes across two different texts
- Analyze how the author develops theme through symbolism
- Write about how theme relates to their own lives
- Work with texts that have subtle or complex themes

ASSESSMENT INDICATORS:
- Distinguishes between topic and theme
- Identifies theme as a complete statement about life
- Supports theme with specific textual details
- Recognizes that themes are universal messages', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Determining Theme' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Character Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Character Analysis' AND grade_level_min = 6),
  'Character Analysis Topic Guide', 'Analyze how characters change and respond',
  'CHARACTER ANALYSIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of character types (protagonist, antagonist)
- Ability to identify character traits
- Recognition of plot structure
- Understanding cause and effect relationships

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze how characters develop and change throughout a text
2. Examine how characters respond to challenges and conflicts
3. Identify how characters'' actions advance the plot
4. Analyze the relationships between characters

KEY CONCEPTS:
- Dynamic characters change throughout the story
- Static characters remain essentially the same
- Characters are revealed through actions, thoughts, dialogue, and others'' reactions
- Character motivations drive their decisions
- Characters'' responses to conflict reveal their personalities
- Character development often relates to theme

COMMON MISCONCEPTIONS:
- Thinking all characters must change dramatically
- Confusing physical description with character analysis
- Believing characters are purely good or purely evil
- Not recognizing that character change must be supported by textual evidence

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Think about yourself two years ago. How have you changed? What experiences changed you?"
   Discuss how experiences shape who we are - same for characters in stories!

2. DIRECT INSTRUCTION (12 minutes):
   Teach characterization methods (STEAL):
   S = Speech (what character says)
   T = Thoughts (what character thinks)
   E = Effect on others (how others react to character)
   A = Actions (what character does)
   L = Looks (physical appearance)

   Model character analysis:
   - Read a passage with clear character development
   - Track character at beginning vs. end
   - Identify the turning point or event that caused change
   - Analyze: What did they learn? How did they grow?

   Demonstrate character motivation analysis:
   - Why does the character make this choice?
   - What do they want? What do they fear?

3. GUIDED PRACTICE (15 minutes):
   Using a shared text:
   - Create character maps as a class
   - Identify character traits with evidence
   - Track character development through the story
   - Discuss relationships between characters
   - Analyze how character responds to key conflicts
   - Connect character change to theme
   - Fill in graphic organizer together

4. INDEPENDENT PRACTICE (13 minutes):
   Students independently:
   - Choose a character from current reading
   - Complete character analysis chart
   - Write paragraph analyzing character development
   - Use STEAL method to find evidence
   - Explain how character''s growth connects to theme

DIFFERENTIATION:
For Struggling Learners:
- Provide pre-made character trait lists
- Use graphic organizers with sentence starters
- Focus on one aspect of characterization at a time
- Use texts with clear, simple character development
- Work with familiar stories or films

For Advanced Learners:
- Analyze complex, ambiguous characters
- Compare character development across multiple texts
- Examine how minor characters serve as foils
- Analyze unreliable narrators
- Explore psychological motivations in depth

ASSESSMENT INDICATORS:
- Identifies how characters change throughout the text
- Supports analysis with specific textual evidence
- Explains motivations behind character actions
- Analyzes how character development relates to plot and theme', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Character Analysis' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Figurative Language
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Figurative Language' AND grade_level_min = 6),
  'Figurative Language Topic Guide', 'Interpret similes, metaphors, personification',
  'FIGURATIVE LANGUAGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of literal vs. non-literal language
- Basic knowledge of comparisons
- Vocabulary for discussing meaning and effect
- Exposure to various types of figurative language

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify and interpret similes, metaphors, and personification
2. Analyze the meaning and effect of figurative language
3. Explain how figurative language contributes to tone and mood
4. Use figurative language in their own writing

KEY CONCEPTS:
- Figurative language creates vivid images and deeper meaning
- Simile: comparison using "like" or "as" (brave as a lion)
- Metaphor: direct comparison (time is money)
- Personification: giving human qualities to non-human things
- Figurative language adds beauty, emphasis, and emotional impact
- Authors choose figurative language for specific effects

COMMON MISCONCEPTIONS:
- Taking figurative language literally
- Confusing similes and metaphors
- Thinking figurative language is just "fancy decoration"
- Not understanding that figurative language has intentional meaning

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show images side by side:
   - Literal: "It was raining."
   - Figurative: "It was raining cats and dogs."
   Ask: Which creates a better picture in your mind? Why?

2. DIRECT INSTRUCTION (13 minutes):
   Teach each type with clear examples:

   SIMILE:
   - Uses "like" or "as" to compare
   - Example: "Her smile was as bright as the sun"
   - Ask: What does this tell us beyond just "she smiled"?

   METAPHOR:
   - Direct comparison without "like" or "as"
   - Example: "He was a rock through the crisis"
   - Discuss: He isn''t actually a rock - what does this mean?

   PERSONIFICATION:
   - Giving human traits to objects/animals/ideas
   - Example: "The wind whispered through the trees"
   - Analyze: What effect does this create?

   Model interpretation process:
   - Identify the type of figurative language
   - Ask: What is being compared to what?
   - Determine: What quality is being emphasized?
   - Analyze: Why did the author choose this comparison?

3. GUIDED PRACTICE (14 minutes):
   Students practice with teacher support:
   - Read passages with figurative language
   - Identify and label types (S, M, or P)
   - Discuss what each example means
   - Analyze the effect on tone or mood
   - Compare effective vs. ineffective figurative language
   - Create their own examples together
   - Share and explain their creations

4. INDEPENDENT PRACTICE (14 minutes):
   Students independently:
   - Find examples of figurative language in their reading
   - Create a figurative language chart
   - Explain the meaning of each example
   - Describe the effect of the language
   - Write original similes, metaphors, and personification

DIFFERENTIATION:
For Struggling Learners:
- Start with similes only (easier to identify)
- Provide visual aids showing comparisons
- Use everyday examples students relate to
- Give sentence frames for creating figurative language
- Practice with songs and familiar poems

For Advanced Learners:
- Explore extended metaphors and analogies
- Analyze how figurative language develops theme
- Study more complex devices (hyperbole, idioms, allusion)
- Compare figurative language across different authors
- Create original poetry using multiple devices

ASSESSMENT INDICATORS:
- Correctly identifies similes, metaphors, and personification
- Explains the meaning of figurative language
- Analyzes how figurative language affects tone and meaning
- Uses figurative language effectively in writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Figurative Language' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING INFORMATIONAL TEXT TOPICS
-- ============================================================================

-- Central Ideas in Nonfiction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Central Ideas in Nonfiction' AND grade_level_min = 6),
  'Central Ideas in Nonfiction Topic Guide', 'Determine central ideas and how they are conveyed',
  'CENTRAL IDEAS IN NONFICTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to distinguish between main idea and supporting details
- Understanding of text features in nonfiction
- Basic summarization skills
- Recognition of paragraph structure

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Determine two or more central ideas in an informational text
2. Explain how central ideas are conveyed through particular details
3. Distinguish between central and supporting ideas
4. Trace how central ideas are developed throughout the text

KEY CONCEPTS:
- Central idea is the most important point the author makes
- Supporting details provide evidence, examples, and explanations
- Nonfiction texts often have multiple central ideas
- Central ideas are developed through facts, examples, anecdotes, and descriptions
- Headings, topic sentences, and conclusions often signal central ideas
- Central ideas in nonfiction are explicitly stated more often than themes in fiction

COMMON MISCONCEPTIONS:
- Confusing topics with central ideas
- Thinking the central idea is always the first sentence
- Believing there is only one central idea
- Mixing up central ideas with interesting details

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show an image-heavy infographic about a topic
   Ask: "If you had to tell someone the 2-3 most important things from this, what would you say?"
   That''s finding the central ideas!

2. DIRECT INSTRUCTION (12 minutes):
   Teach central idea identification strategy:
   - Preview headings and text features
   - Read the introduction and conclusion
   - Look for repeated concepts
   - Ask: What is the author''s main point?

   Model with a short article:
   - Read aloud while highlighting key sentences
   - Think aloud: "This detail is interesting, but is it CENTRAL?"
   - Distinguish central ideas from supporting details
   - Show how details support and develop central ideas

   Create visual representation:
   - Draw a table with central idea on top
   - Show supporting details branching below
   - Demonstrate how all details connect to central idea

3. GUIDED PRACTICE (15 minutes):
   Using a shared informational text:
   - Students read a section together
   - Identify the central idea as a class
   - Find 3-4 supporting details
   - Discuss how each detail develops the central idea
   - Repeat with another section
   - Practice distinguishing central from interesting-but-minor details
   - Create graphic organizers together

4. INDEPENDENT PRACTICE (14 minutes):
   Students independently:
   - Read an informational article
   - Identify 2-3 central ideas
   - List supporting details for each
   - Explain how the author develops each central idea
   - Write a brief summary using central ideas

DIFFERENTIATION:
For Struggling Learners:
- Use shorter texts with very clear central ideas
- Provide graphic organizers with scaffolding
- Highlight topic sentences
- Work with texts on familiar topics
- Use visual texts (infographics, photo essays)

For Advanced Learners:
- Work with complex texts with subtle central ideas
- Analyze how central ideas develop across sections
- Compare how different authors present central ideas on same topic
- Evaluate which details most effectively support central ideas
- Synthesize central ideas from multiple sources

ASSESSMENT INDICATORS:
- Accurately identifies central ideas in informational text
- Distinguishes central ideas from supporting details
- Explains how specific details convey central ideas
- Summarizes text using central ideas', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Central Ideas in Nonfiction' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Author''s Purpose
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Author''s Purpose' AND grade_level_min = 6),
  'Author''s Purpose Topic Guide', 'Determine author''s point of view and purpose',
  'AUTHOR''S PURPOSE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of different text types (persuasive, informative, narrative)
- Ability to identify author''s point of view
- Recognition of bias vs. objectivity
- Understanding of intended audience

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Determine an author''s point of view or purpose in a text
2. Explain how the author conveys their point of view
3. Identify techniques authors use to achieve their purpose
4. Analyze how purpose affects content and style

KEY CONCEPTS:
- Author''s purpose is why they wrote the text (to persuade, inform, entertain, explain)
- Point of view is the author''s position or opinion on the topic
- Authors use specific techniques to achieve their purpose
- Tone and word choice reveal author''s perspective
- Understanding purpose helps readers evaluate credibility
- Purpose influences what information is included or excluded

COMMON MISCONCEPTIONS:
- Thinking all nonfiction is purely objective
- Confusing the author''s purpose with the topic
- Not recognizing that authors can have multiple purposes
- Believing stated purpose is always the true purpose

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show three different texts about the same topic (e.g., video games):
   - A news article (inform)
   - An advertisement (persuade to buy)
   - A gaming blog post (entertain/share opinion)
   Ask: Why did each author write their text?

2. DIRECT INSTRUCTION (13 minutes):
   Teach PIE mnemonic for purpose:
   P = Persuade (convince you to think or do something)
   I = Inform (give you facts and information)
   E = Entertain (make you enjoy reading)

   Add: E = Explain (teach you how to do something)

   Model identifying purpose:
   - Read sample passages
   - Look for clue words (facts vs. opinions, commands, emotional language)
   - Examine tone and word choice
   - Determine primary purpose

   Teach point of view identification:
   - What position does the author take?
   - What evidence shows their perspective?
   - How is this different from other perspectives?

   Demonstrate analyzing techniques:
   - Persuasive: emotional appeals, loaded words, rhetorical questions
   - Informative: facts, statistics, expert quotes, neutral tone
   - Entertaining: humor, vivid description, engaging anecdotes

3. GUIDED PRACTICE (14 minutes):
   Students work with teacher on multiple texts:
   - Read short passages with different purposes
   - Identify the purpose using evidence
   - Find specific words/phrases that reveal purpose
   - Discuss how author''s point of view is conveyed
   - Compare how two authors write about same topic
   - Analyze what techniques each author uses
   - Evaluate effectiveness of techniques

4. INDEPENDENT PRACTICE (14 minutes):
   Students independently:
   - Read 2-3 short texts
   - Identify the purpose of each
   - Determine author''s point of view
   - Find evidence of techniques used
   - Complete purpose analysis chart
   - Write explanation of how purpose influences content

DIFFERENTIATION:
For Struggling Learners:
- Start with very clear examples (obvious ads, factual encyclopedia entries)
- Provide purpose clue word lists
- Use graphic organizers with sentence frames
- Work with shorter texts
- Focus on one purpose type at a time

For Advanced Learners:
- Analyze texts with multiple or subtle purposes
- Compare texts with opposing viewpoints
- Evaluate effectiveness of author''s techniques
- Identify underlying assumptions in arguments
- Analyze how audience influences purpose

ASSESSMENT INDICATORS:
- Correctly identifies author''s purpose
- Determines author''s point of view with evidence
- Identifies techniques used to achieve purpose
- Explains how purpose influences content and style', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Author''s Purpose' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING TOPICS
-- ============================================================================

-- Argumentative Writing Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Argumentative Writing Introduction' AND grade_level_min = 6),
  'Argumentative Writing Introduction Topic Guide', 'Introduce claims and organize reasons',
  'ARGUMENTATIVE WRITING INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of opinion vs. fact
- Ability to support ideas with reasons
- Basic paragraph structure knowledge
- Familiarity with persuasive techniques

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Write a clear claim that takes a position on an issue
2. Provide logical reasons that support the claim
3. Organize reasons and evidence effectively
4. Distinguish their position from opposing viewpoints

KEY CONCEPTS:
- Claim is the position or argument the writer makes
- Claims must be arguable, not statements of fact
- Reasons explain why the claim is valid
- Evidence (facts, examples, expert opinions) supports reasons
- Effective arguments acknowledge counterarguments
- Organization helps readers follow the logic
- Strong introductions establish credibility and interest

COMMON MISCONCEPTIONS:
- Stating opinions without supporting reasons
- Using only emotional appeals instead of logic
- Ignoring opposing viewpoints
- Confusing claims with facts that can''t be debated

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Should students have longer recess?"
   Quick debate: Students share opinions
   Teacher: "Those are claims! Now we need to PROVE them with reasons and evidence."

2. DIRECT INSTRUCTION (14 minutes):
   Teach argument structure (C-R-E):
   C = Claim (your position)
   R = Reasons (why your claim is valid)
   E = Evidence (proof supporting your reasons)

   Model creating a strong claim:
   - Too broad: "School is important" (not arguable)
   - Too narrow: "Our school has 500 students" (just a fact)
   - Just right: "Middle school students should have more control over their learning"

   Demonstrate organizing reasons:
   - Reason 1: Most important reason
   - Reason 2: Second important reason
   - Reason 3: Additional reason
   - Logical flow and transitions matter

   Model acknowledging counterclaims:
   - "Some might argue that..., but..."
   - Shows fairness and strengthens your argument

3. GUIDED PRACTICE (14 minutes):
   Work together on argumentative writing:
   - Choose a grade-appropriate debate topic
   - Brainstorm possible claims
   - Evaluate which claims are arguable
   - Generate 3-4 supporting reasons
   - Find evidence for each reason
   - Organize reasons from strongest to weakest
   - Draft an introduction paragraph together
   - Identify potential counterclaims

4. INDEPENDENT PRACTICE (12 minutes):
   Students independently:
   - Choose from provided topics or select own
   - Write a clear claim statement
   - List 3 supporting reasons
   - Find at least one piece of evidence per reason
   - Identify one counterclaim
   - Complete argument planning graphic organizer

DIFFERENTIATION:
For Struggling Learners:
- Provide claim sentence frames
- Offer pre-selected debate topics
- Supply evidence sources
- Use graphic organizers with scaffolding
- Work in pairs to develop arguments

For Advanced Learners:
- Research complex, nuanced topics
- Develop sophisticated claims with qualifications
- Address multiple counterclaims
- Analyze logical fallacies in sample arguments
- Write complete argumentative essays

ASSESSMENT INDICATORS:
- Writes clear, arguable claims
- Provides logical reasons supporting the claim
- Organizes reasons effectively
- Acknowledges and addresses opposing viewpoints', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Argumentative Writing Introduction' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- End of Grade 6 Reading/ELA Expanded Prompts
-- This file contains comprehensive teaching prompts for key Grade 6 topics
-- Additional prompts for remaining topics should follow this same format
-- ============================================================================
