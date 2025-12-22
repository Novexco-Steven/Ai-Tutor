-- Grade 3 Reading Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 3 Reading/ELA topics
-- ============================================================================

-- ============================================================================
-- READING LITERATURE (10 topics)
-- ============================================================================

-- Asking Questions About Stories
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Asking Questions About Stories' AND grade_level_min = 3),
  'Asking Questions About Stories Topic Guide', 'Asking and answering questions using text evidence',
  'ASKING QUESTIONS ABOUT STORIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to comprehend grade-level stories
- Understanding of who, what, when, where, why, how
- Experience participating in class discussions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Generate questions before, during, and after reading
2. Answer questions using specific evidence from the text
3. Distinguish between questions answered in the text and those requiring inference
4. Use question words (who, what, when, where, why, how) appropriately

KEY CONCEPTS:
- Good readers ask questions to deepen understanding
- Text evidence is specific information from the story
- Some questions are answered directly in the text (literal)
- Some questions require us to "read between the lines" (inferential)
- Referring back to the text strengthens answers

COMMON MISCONCEPTIONS:
- Believing all answers must be directly stated
- Answering from memory instead of text evidence
- Confusing opinions with text-based answers
- Not knowing what counts as "evidence"

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Readers are detectives! We ask questions and search for clues in the text."
   Show a magnifying glass and detective hat.

2. DIRECT INSTRUCTION (8 minutes):
   Model generating questions: before (predictions), during (clarification), after (deeper thinking).
   Demonstrate finding evidence: "On page 3, it says..."
   Show difference between literal questions (right there) and inferential (think and search).
   Model citing text evidence in answers.

3. GUIDED PRACTICE (10 minutes):
   Read a short passage together.
   Generate questions as a class using question stems.
   Find and underline evidence for answers.
   Practice sentence starters: "The text says..." "According to..."

4. INDEPENDENT PRACTICE (9 minutes):
   Students write 3 questions about a new passage.
   Answer questions with text evidence.
   Share and discuss answers with partners.

DIFFERENTIATION:
For Struggling Learners:
- Provide question stem cards
- Use shorter, simpler texts
- Allow verbal responses before written
- Highlight potential evidence beforehand

For Advanced Learners:
- Ask higher-order questions (why, how, what if)
- Compare evidence from multiple texts
- Evaluate quality of text evidence
- Lead small group discussions

ASSESSMENT INDICATORS:
- Generates relevant questions about texts
- Cites specific text evidence in answers
- Distinguishes literal from inferential questions
- Uses question words correctly and precisely', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Asking Questions About Stories' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Determining Theme
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Determining Theme' AND grade_level_min = 3),
  'Determining Theme Topic Guide', 'Finding the central message or lesson',
  'DETERMINING THEME - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of plot, characters, and setting
- Ability to make inferences
- Experience with fables and their morals

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define theme as the central message or lesson
2. Distinguish theme from topic or main idea
3. Use story details to determine theme
4. Recognize themes across different stories

KEY CONCEPTS:
- Theme is the "big idea" or lesson the author wants us to learn
- Theme is usually not directly stated
- We use characters'' actions and story events to find theme
- Common themes: friendship, courage, honesty, perseverance
- Different stories can share the same theme

COMMON MISCONCEPTIONS:
- Confusing theme with topic (theme is a complete thought, not one word)
- Thinking theme is the same as summary
- Believing there is only one correct theme
- Looking for theme to be directly stated

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Tell Aesop''s Fable "The Tortoise and the Hare"
   "What lesson did this teach us? That''s the theme!"

2. DIRECT INSTRUCTION (9 minutes):
   Define theme vs. topic (topic: race; theme: slow and steady wins the race)
   Model finding theme: look at what characters learn, how they change, important events
   Demonstrate using story clues to determine theme
   Show common theme statements

3. GUIDED PRACTICE (10 minutes):
   Read a short story together
   Identify key story moments and character lessons
   Use a theme chart: What happened? What did the character learn? Theme?
   Discuss how details support the theme

4. INDEPENDENT PRACTICE (7 minutes):
   Read a new story
   Identify the theme with supporting details
   Compare themes from two different stories

DIFFERENTIATION:
For Struggling Learners:
- Start with fables that have clear morals
- Provide theme word bank
- Use graphic organizers
- Focus on one theme at a time

For Advanced Learners:
- Analyze complex themes and sub-themes
- Compare how different authors treat same theme
- Identify themes in longer chapter books
- Articulate theme in sophisticated ways

ASSESSMENT INDICATORS:
- Correctly identifies theme (not just topic)
- Supports theme with story evidence
- Distinguishes theme from summary
- Recognizes themes across multiple texts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Determining Theme' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Character Traits and Motivations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Character Traits and Motivations' AND grade_level_min = 3),
  'Character Traits and Motivations Topic Guide', 'Describing characters using evidence',
  'CHARACTER TRAITS AND MOTIVATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of characters in stories
- Ability to make inferences from text
- Familiarity with descriptive adjectives

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify character traits using text evidence
2. Explain character motivations (why characters act as they do)
3. Distinguish between physical traits and personality traits
4. Track how characters change throughout a story

KEY CONCEPTS:
- Character traits are the qualities that describe a character''s personality
- Traits are shown through thoughts, words, actions, and interactions
- Motivations are the reasons behind characters'' choices
- Characters can change and grow during the story
- Evidence from the text supports our understanding of characters

COMMON MISCONCEPTIONS:
- Focusing only on physical appearance
- Making judgments without text evidence
- Assuming traits based on stereotypes
- Not recognizing character growth

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "If you were a character in a story, how would readers know you''re kind? Brave? Funny?"
   Discuss how actions show traits.

2. DIRECT INSTRUCTION (8 minutes):
   Teach "STEAL" strategy: Speech, Thoughts, Effects on others, Actions, Looks
   Model finding evidence for traits in text
   Explain how to infer motivations from actions
   Demonstrate tracking character change

3. GUIDED PRACTICE (10 minutes):
   Read a passage with a clear character
   Complete STEAL chart together
   Identify 3 traits with evidence for each
   Discuss character motivations

4. INDEPENDENT PRACTICE (9 minutes):
   Analyze a different character independently
   Create character trait web with evidence
   Write paragraph describing character with text support

DIFFERENTIATION:
For Struggling Learners:
- Provide trait word bank
- Use simple stories with obvious traits
- Complete STEAL chart with teacher support
- Focus on 1-2 traits at a time

For Advanced Learners:
- Analyze complex, nuanced characters
- Compare characters across texts
- Track subtle character development
- Explore conflicting traits and motivations

ASSESSMENT INDICATORS:
- Identifies character traits accurately
- Supports traits with specific text evidence
- Explains character motivations
- Tracks character change over time', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Character Traits and Motivations' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING INFORMATIONAL TEXT (10 topics)
-- ============================================================================

-- Main Idea and Key Details
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Main Idea and Key Details' AND grade_level_min = 3),
  'Main Idea and Key Details Topic Guide', 'Determining the main idea with supporting details',
  'MAIN IDEA AND KEY DETAILS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to read grade-level informational text
- Understanding of topics and details
- Experience with identifying important information

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the main idea of paragraphs and passages
2. Distinguish main idea from supporting details
3. Locate key details that support the main idea
4. Summarize using main idea and key details

KEY CONCEPTS:
- Main idea is what the text is mostly about
- Main idea is sometimes stated, sometimes implied
- Key details support, explain, or describe the main idea
- Not all details are equally important
- Main idea helps us understand and remember texts

COMMON MISCONCEPTIONS:
- Thinking the first sentence is always the main idea
- Confusing topic with main idea
- Listing all details instead of key details
- Not distinguishing between important and less important details

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a picture of a table with one large top and four supporting legs
   "Main idea is the table top, details are the legs that hold it up!"

2. DIRECT INSTRUCTION (8 minutes):
   Model finding main idea: What is this mostly about?
   Show stated vs. implied main ideas
   Demonstrate identifying 3-4 key supporting details
   Explain how details prove or explain the main idea

3. GUIDED PRACTICE (10 minutes):
   Read an informational paragraph together
   Circle or underline key details
   Determine main idea (stated or create if implied)
   Use graphic organizer: main idea with detail branches

4. INDEPENDENT PRACTICE (9 minutes):
   Read new informational passages
   Identify main idea and 3 supporting details
   Complete main idea/details organizer
   Write summary using main idea and details

DIFFERENTIATION:
For Struggling Learners:
- Use texts with clearly stated main ideas
- Provide main idea/details graphic organizers
- Highlight key details in different colors
- Start with single paragraphs before longer texts

For Advanced Learners:
- Work with texts with implied main ideas
- Analyze how details support main ideas
- Identify main ideas in longer articles
- Evaluate which details are most important

ASSESSMENT INDICATORS:
- Correctly identifies main ideas
- Locates relevant supporting details
- Distinguishes between main ideas and details
- Explains how details support main ideas', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Main Idea and Key Details' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Text Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Text Structure' AND grade_level_min = 3),
  'Text Structure Topic Guide', 'Identifying cause-effect, compare-contrast, and sequence',
  'TEXT STRUCTURE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to read informational texts
- Understanding of sequence words
- Familiarity with signal words (because, like, different)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify three text structures: cause-effect, compare-contrast, sequence
2. Recognize signal words for each structure
3. Use graphic organizers matching each structure
4. Understand how structure helps comprehension

KEY CONCEPTS:
- Authors organize information in specific ways
- Sequence shows order of events or steps (first, next, then, finally)
- Cause-effect shows why things happen (because, since, as a result)
- Compare-contrast shows similarities and differences (alike, different, but, however)
- Signal words are clues to text structure
- Recognizing structure improves comprehension and memory

COMMON MISCONCEPTIONS:
- Thinking all informational texts are organized the same way
- Missing signal words
- Confusing structures (seeing compare/contrast as sequence)
- Not understanding why structure matters

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "If I''m telling you how to make a sandwich, I use order: first, next, last.
   If I''m telling why I''m late, I use cause-effect: because, so.
   Different purposes need different structures!"

2. DIRECT INSTRUCTION (9 minutes):
   Teach three structures with examples
   Show signal words for each
   Model using matching graphic organizers
   Demonstrate how structure aids comprehension

3. GUIDED PRACTICE (10 minutes):
   Read passages with different structures
   Identify signal words together
   Complete appropriate graphic organizers
   Discuss why author chose each structure

4. INDEPENDENT PRACTICE (7 minutes):
   Identify structure of new passages
   Use signal words as clues
   Complete graphic organizers independently

DIFFERENTIATION:
For Struggling Learners:
- Focus on one structure at a time
- Highlight signal words before reading
- Provide graphic organizer templates
- Use simple, clear examples

For Advanced Learners:
- Identify multiple structures within one text
- Analyze why authors choose specific structures
- Write passages using different structures
- Compare how structure affects meaning

ASSESSMENT INDICATORS:
- Correctly identifies text structures
- Recognizes and uses signal words
- Completes appropriate graphic organizers
- Explains how structure helps understanding', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Text Structure' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VOCABULARY AND WORD STUDY (10 topics)
-- ============================================================================

-- Context Clues Strategies
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Context Clues Strategies' AND grade_level_min = 3),
  'Context Clues Strategies Topic Guide', 'Using sentence and paragraph context',
  'CONTEXT CLUES STRATEGIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Reading fluency with grade-level text
- Understanding that sentences convey meaning
- Willingness to problem-solve unknown words

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define context clues as hints within text
2. Use four types of context clues: definition, synonym, antonym, example
3. Apply context clue strategies independently
4. Verify meaning using context and dictionaries

KEY CONCEPTS:
- Context means the words and sentences around an unknown word
- Authors often provide clues to help readers understand new words
- Definition clues directly explain the word
- Synonym clues give similar words
- Antonym clues show opposites
- Example clues provide instances
- Signal words help identify clue types (is, means, like, such as, unlike)

COMMON MISCONCEPTIONS:
- Skipping unknown words without trying
- Relying only on the immediate sentence
- Misinterpreting clues
- Not checking if the meaning makes sense

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "The enormous elephant was so huge, it could barely fit through the gate."
   "Even if you didn''t know ''enormous,'' what clues help you figure it out?"

2. DIRECT INSTRUCTION (8 minutes):
   Teach four types of context clues with examples
   Model think-aloud: identifying clues, testing meaning
   Show signal words for each type
   Demonstrate rereading to verify meaning

3. GUIDED PRACTICE (10 minutes):
   Read sentences with challenging words
   Identify type of context clue together
   Use clues to determine meaning
   Verify with dictionary

4. INDEPENDENT PRACTICE (9 minutes):
   Find context clues in passages independently
   Determine meanings of unknown words
   Label clue type (definition, synonym, antonym, example)
   Write sentences showing understanding

DIFFERENTIATION:
For Struggling Learners:
- Use texts slightly below grade level
- Highlight clue words
- Provide clue type cards
- Practice with partners

For Advanced Learners:
- Work with complex, sophisticated vocabulary
- Analyze subtle or multiple clues
- Write sentences with embedded context clues
- Teach strategies to younger students

ASSESSMENT INDICATORS:
- Uses context clues before asking for help
- Identifies different types of context clues
- Determines reasonable meanings from context
- Verifies meanings make sense in context', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Context Clues Strategies' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Common Prefixes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Common Prefixes' AND grade_level_min = 3),
  'Common Prefixes Topic Guide', 'Learning un-, re-, dis-, pre-, mis-',
  'COMMON PREFIXES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding that words have parts
- Ability to identify base words
- Recognition that word parts carry meaning

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define prefix as a word part added to the beginning
2. Learn meanings of un-, re-, dis-, pre-, mis-
3. Determine word meanings using prefix knowledge
4. Build new words by adding prefixes to base words

KEY CONCEPTS:
- Prefixes are word parts added to the beginning of base words
- Prefixes change the meaning of the base word
- un- means "not" or "opposite" (unhappy = not happy)
- re- means "again" (rewrite = write again)
- dis- means "not" or "opposite" (disagree = not agree)
- pre- means "before" (preview = view before)
- mis- means "wrong" or "bad" (misplace = place wrongly)
- Knowing prefixes helps decode and understand unfamiliar words

COMMON MISCONCEPTIONS:
- Thinking the prefix is the whole word meaning
- Not recognizing base words after prefixes
- Confusing prefixes with similar letter patterns
- Assuming all words beginning with these letters have prefixes

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Write: happy → unhappy
   "One little prefix completely changed the meaning! Prefixes have power!"

2. DIRECT INSTRUCTION (8 minutes):
   Teach each prefix with meaning and examples
   Model breaking words into prefix + base word
   Show how prefix changes base word meaning
   Demonstrate building new words with prefixes

3. GUIDED PRACTICE (9 minutes):
   Match prefixes to meanings
   Break words into prefix and base word
   Determine meanings using prefix knowledge
   Build new words using prefix cards + base word cards

4. INDEPENDENT PRACTICE (10 minutes):
   Complete prefix word sorts
   Add prefixes to create new words
   Use prefix words in sentences showing meaning
   Find prefix words in reading passages

DIFFERENTIATION:
For Struggling Learners:
- Focus on one prefix at a time
- Use familiar base words
- Provide visual prefix meaning cards
- Practice with concrete examples

For Advanced Learners:
- Learn additional prefixes (sub-, super-, inter-)
- Analyze words with multiple affixes
- Explore Latin and Greek origins
- Create prefix word family trees

ASSESSMENT INDICATORS:
- Correctly identifies and defines common prefixes
- Breaks words into prefix and base word
- Uses prefix knowledge to determine meanings
- Builds new words accurately using prefixes', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Common Prefixes' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING (10 topics)
-- ============================================================================

-- Narrative Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 3),
  'Narrative Writing Topic Guide', 'Writing stories with developed events and dialogue',
  'NARRATIVE WRITING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of story elements
- Ability to write complete sentences and paragraphs
- Experience with personal narratives

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Write narratives with clear event sequences
2. Develop characters, setting, and plot
3. Use dialogue to show character and advance the story
4. Include descriptive details and sensory language

KEY CONCEPTS:
- Narratives tell stories (real or fictional)
- Good narratives have: characters, setting, plot (problem and solution)
- Events should be in logical sequence
- Dialogue makes characters come alive
- Descriptive details help readers visualize the story
- Narratives have a clear beginning, middle, and end

COMMON MISCONCEPTIONS:
- Writing everything that happened without focus
- Not developing characters or setting
- Forgetting to include a problem or conflict
- Using "and then, and then" repeatedly
- Neglecting dialogue or using it incorrectly

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Read a compelling story opening
   "What made you want to keep reading? Let''s write stories like that!"

2. DIRECT INSTRUCTION (10 minutes):
   Model planning with story map
   Demonstrate developing characters and setting
   Show how to sequence events logically
   Model writing dialogue with correct punctuation
   Explain using transition words

3. GUIDED PRACTICE (12 minutes):
   Plan a class story together
   Write opening paragraph as a class
   Add dialogue and descriptive details
   Discuss what makes writing engaging

4. INDEPENDENT PRACTICE (14 minutes):
   Students plan own narratives using story maps
   Write narrative with developed elements
   Include dialogue and descriptive details
   Share with partners for feedback

DIFFERENTIATION:
For Struggling Learners:
- Provide detailed story maps
- Start with personal narratives (familiar)
- Use sentence frames for dialogue
- Allow illustration to support planning

For Advanced Learners:
- Develop complex plots with multiple problems
- Experiment with different points of view
- Include literary devices (similes, metaphors)
- Write extended narratives with chapters

ASSESSMENT INDICATORS:
- Writes narratives with clear structure
- Develops characters, setting, and plot
- Uses dialogue effectively and correctly
- Includes descriptive and sensory details', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRAMMAR AND LANGUAGE (10 topics)
-- ============================================================================

-- Regular and Irregular Verbs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Regular and Irregular Verbs' AND grade_level_min = 3),
  'Regular and Irregular Verbs Topic Guide', 'Forming past tense correctly',
  'REGULAR AND IRREGULAR VERBS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of past, present, future tenses
- Ability to identify verbs in sentences
- Knowledge of how to form regular past tense (-ed)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Form regular past tense verbs by adding -ed
2. Identify common irregular past tense verbs
3. Use correct past tense forms in speaking and writing
4. Recognize and correct verb tense errors

KEY CONCEPTS:
- Regular verbs form past tense by adding -ed (walk → walked)
- Irregular verbs change in different ways (go → went, eat → ate)
- Some irregular verbs don''t change at all (cut → cut, hit → hit)
- Common irregular verbs must be memorized
- Both regular and irregular verbs show when action happened

COMMON MISCONCEPTIONS:
- Adding -ed to all verbs (goed, eated, runned)
- Not recognizing irregular patterns
- Mixing up similar irregular verbs (bring/brought vs. buy/bought)
- Using present tense when past is needed

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Today I walk to school. Yesterday I... walked? or... wal walked?"
   "Some verbs follow rules, others break rules!"

2. DIRECT INSTRUCTION (8 minutes):
   Review regular past tense formation
   Introduce common irregular verbs in groups:
   - Vowel changes (sing→sang, ring→rang)
   - Completely different (go→went, buy→bought)
   - No change (cut→cut, put→put)
   Model checking if past tense sounds right

3. GUIDED PRACTICE (10 minutes):
   Sort verbs into regular and irregular
   Practice forming past tense of both types
   Complete sentences with correct past tense
   Identify and fix past tense errors

4. INDEPENDENT PRACTICE (9 minutes):
   Write sentences using past tense verbs
   Change paragraph from present to past tense
   Complete irregular verb chart
   Find past tense verbs in reading

DIFFERENTIATION:
For Struggling Learners:
- Focus on most common irregular verbs first
- Provide irregular verb reference charts
- Practice orally before written work
- Use visual verb cards

For Advanced Learners:
- Learn less common irregular verbs
- Explore verb patterns and families
- Edit own writing for verb tense consistency
- Research word origins (went comes from "wend")

ASSESSMENT INDICATORS:
- Correctly forms regular past tense verbs
- Uses common irregular past tense accurately
- Recognizes when verb forms sound incorrect
- Maintains past tense consistency in writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Regular and Irregular Verbs' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- Note: This file contains representative prompts for Grade 3 Reading/ELA.
-- Additional prompts for remaining topics follow the same comprehensive format
-- with grade-appropriate content, teaching sequences, and differentiation.
-- ============================================================================
