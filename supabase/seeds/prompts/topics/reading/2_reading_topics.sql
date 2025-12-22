-- Grade 2 Reading Topic Prompts
-- Comprehensive teaching guides for Grade 2 Reading/ELA topics
-- Each prompt provides 500+ words of pedagogical guidance

-- ============================================================================
-- ADVANCED PHONICS UNIT
-- ============================================================================

-- Vowel Teams
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Vowel Teams' AND grade_level_min = 2),
  'Vowel Teams (Grade 2) Topic Guide',
  'Teaching students to read words with vowel team patterns like ea, oa, ai, ee',
  'VOWEL TEAMS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should read CVC words fluently and understand short vowel sounds. They should have basic understanding of long vowel sounds from silent e patterns. Knowledge of letter-sound correspondence for all letters is essential. Students should be comfortable with blending strategies.

LEARNING OBJECTIVES:
- Read words with common vowel teams accurately (ai, ay, ea, ee, ie, oa, ow, oo, ou, ue)
- Understand that two vowels together often make one sound
- Apply the generalization "when two vowels go walking, the first one does the talking"
- Recognize that some vowel teams have multiple sounds (ea: eat, bread, steak)
- Spell words with vowel teams correctly

KEY CONCEPTS:
1) A vowel team is two vowels that work together to make one sound
2) Many vowel teams make a long vowel sound (the first vowel "says its name")
3) Some vowel teams can make different sounds in different words
4) Common vowel teams for long a: ai (rain), ay (play)
5) Common vowel teams for long e: ee (tree), ea (eat)
6) Common vowel teams for long o: oa (boat), ow (snow)

COMMON MISCONCEPTIONS:
- Trying to pronounce both vowels separately
- Not recognizing that ea can say /ē/ (eat), /ĕ/ (bread), or /ā/ (steak)
- Confusing ow (long o as in snow) with ow (diphthong as in cow)
- Thinking all vowel combinations are vowel teams (some are diphthongs with gliding sounds)
- Overgeneralizing rules to exception words

TEACHING SEQUENCE:
Introduce vowel teams systematically, one pattern at a time. Begin with the most consistent patterns: ee always says /ē/, and ai/ay consistently say /ā/. Teach ay appears at word endings (play, stay) while ai appears mid-word (rain, train).

Use word sorts to build pattern recognition. Sort words by vowel team: all the ai words together, all the ee words together. Then sort by sound: all the long a words (rain, play) vs. all the long e words (tree, eat).

Create memorable associations. "When two vowels go walking, the first one does the talking" works for many teams. Visual anchors help: picture of rain for ai, picture of tree for ee. Use songs and chants for memorization.

Explicitly teach exceptions. The vowel team ea is particularly tricky. Show the three sounds of ea: eat (/ē/), bread (/ĕ/), steak (/ā/). Practice these words in context and create exception word lists.

DIFFERENTIATION:
For struggling learners: Focus on one vowel team at a time with extended practice. Color-code vowel teams in texts. Use manipulative letter tiles. Provide word family lists. Accept longer processing time for pattern recognition.

For advanced learners: Explore less common vowel teams (ei, ey, ew). Study exceptions and develop hypotheses about patterns. Read multisyllabic words with vowel teams. Spell from dictation with multiple vowel team patterns.

VOCABULARY:
Vowel team, long vowel, pattern, sound, together, rule, exception, spell, decode, two vowels walking

CONNECTION TO FUTURE LEARNING:
Vowel team mastery opens access to a vast vocabulary in English texts. Students will encounter vowel teams in increasingly complex words. Understanding that patterns can have exceptions prepares students for the complexity of English orthography. This knowledge supports both reading fluency and spelling development.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vowel Teams' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- R-Controlled Vowels
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'R-Controlled Vowels' AND grade_level_min = 2),
  'R-Controlled Vowels (Grade 2) Topic Guide',
  'Teaching students to read words with bossy r patterns (ar, er, ir, or, ur)',
  'R-CONTROLLED VOWELS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should know short and long vowel sounds. They should understand that vowels can make different sounds depending on patterns. Familiarity with common words containing r-controlled vowels from oral language helps. Students should be comfortable with multi-letter phonics patterns.

LEARNING OBJECTIVES:
- Read words with r-controlled vowels accurately (ar, er, ir, or, ur)
- Understand that r changes the vowel sound
- Recognize that er, ir, and ur often make the same sound
- Distinguish between r-controlled vowels and other vowel patterns
- Spell words with r-controlled vowels correctly

KEY CONCEPTS:
1) When r follows a vowel, it changes (or "bosses") the vowel sound
2) ar makes the sound in "car" - /är/
3) or makes the sound in "for" - /ôr/
4) er, ir, and ur all make the same sound - /ûr/ (her, bird, burn)
5) R-controlled vowels are neither short nor long - they make unique sounds

COMMON MISCONCEPTIONS:
- Trying to use regular short or long vowel sounds with r
- Not recognizing that er, ir, and ur sound the same
- Spelling words with er/ir/ur incorrectly (requires memorization)
- Confusing ar words with or words
- Not noticing r-controlled patterns in longer words

TEACHING SEQUENCE:
Introduce r-controlled vowels as "bossy r" - the r is so bossy it changes how the vowel sounds. Start with ar and or because they have distinct sounds. Use word families: car, far, star, jar; for, or, born, corn.

Group er, ir, and ur together since they sound identical. Explain this creates a spelling challenge - you cannot hear which to use, so you must remember. Common word banks help: her, perch, fern (er); bird, girl, first (ir); burn, turn, fur (ur).

Use visual and kinesthetic supports. Create r-controlled vowel anchor charts. Sort words by spelling pattern. Use hand gestures - growl like a pirate for ar (arrr!).

Practice in connected text. Find r-controlled words in books. Highlight patterns before reading. Use decodable texts that focus on r-controlled patterns.

DIFFERENTIATION:
For struggling learners: Focus on ar and or first as they have distinct sounds. Provide extensive practice before introducing er/ir/ur. Use word sorts with visual support. Create personal r-controlled word dictionaries.

For advanced learners: Explore r-controlled vowels in multisyllabic words. Study words with variant spellings (or can sound like er in "work"). Investigate regional pronunciation differences. Spell longer r-controlled words from dictation.

VOCABULARY:
R-controlled, bossy r, vowel, sound, ar, er, ir, or, ur, pattern, change, spell

CONNECTION TO FUTURE LEARNING:
R-controlled vowels appear frequently in English and require automatic recognition for fluent reading. Understanding that letters interact with each other deepens phonics knowledge. This pattern appears in many academic vocabulary words across content areas. Mastery supports both reading fluency and accurate spelling.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'R-Controlled Vowels' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Syllable Types
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Syllable Types' AND grade_level_min = 2),
  'Syllable Types (Grade 2) Topic Guide',
  'Teaching students to divide words into syllables for reading longer words',
  'SYLLABLE TYPES - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should read single-syllable words with various patterns fluently. They should understand that every syllable has one vowel sound. Oral syllable awareness (clapping syllables) should be established. Students should know short vowels, long vowels (CVCe), and r-controlled vowels.

LEARNING OBJECTIVES:
- Identify the number of syllables in spoken and written words
- Divide two-syllable words into syllables
- Apply syllable division rules to read unfamiliar words
- Recognize common syllable types (closed, open, VCe, r-controlled)
- Use syllabication as a decoding strategy for longer words

KEY CONCEPTS:
1) Every syllable has one vowel sound (you can count syllables by counting vowel sounds)
2) Closed syllables end in a consonant, and the vowel is usually short (cat, nap, pen)
3) Open syllables end in a vowel, and the vowel is usually long (me, go, pa-per)
4) VCe syllables have a silent e that makes the vowel long (cake, like, hope)
5) R-controlled syllables have a vowel followed by r (car, her, bird)

COMMON MISCONCEPTIONS:
- Counting letters instead of vowel sounds for syllables
- Not understanding where to divide words
- Pronouncing all vowels as short, even in open syllables
- Difficulty applying patterns to longer, unfamiliar words
- Thinking syllable division must be perfect to read the word

TEACHING SEQUENCE:
Begin with oral syllable work. Clap the syllables in familiar words: "rab-bit" (clap-clap), "ba-na-na" (clap-clap-clap). Connect the number of claps to the number of vowel sounds heard.

Introduce syllable types one at a time. Review closed syllables (short vowel patterns already known). Introduce open syllables with two-syllable words: "pa-per" (pa is open, per is r-controlled), "ba-by" (ba and by are both open).

Teach syllable division rules:
1) VCCV: Divide between the consonants (rab-bit, nap-kin)
2) VCV: Try dividing before the consonant first (o-pen); if that does not make a word, try after (lim-it)

Practice with word building. Use syllable cards to build and read words. Combine syllables like building blocks. This makes multisyllabic words less intimidating.

DIFFERENTIATION:
For struggling learners: Start with compound words (cup-cake, sun-shine) where meaning aids division. Use visual syllable markers (dots between syllables). Practice many examples of each syllable type before mixing. Focus on just closed and open syllables first.

For advanced learners: Work with three-syllable words. Explore additional syllable types (consonant-le, vowel teams). Apply syllabication to content-area vocabulary. Analyze exceptions and variant patterns.

VOCABULARY:
Syllable, vowel sound, divide, closed syllable, open syllable, short vowel, long vowel, multisyllabic, pattern, rule

CONNECTION TO FUTURE LEARNING:
Syllable knowledge is essential for reading multisyllabic words encountered in all content areas. Students will learn additional syllable types (consonant-le, vowel team syllables). Syllabication supports vocabulary development by helping students decode and remember new words. This skill is fundamental for reading grade-level text independently.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Syllable Types' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Prefixes and Suffixes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Prefixes and Suffixes' AND grade_level_min = 2),
  'Prefixes and Suffixes (Grade 2) Topic Guide',
  'Teaching students to read words with common prefixes and suffixes',
  'PREFIXES AND SUFFIXES - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should read single-syllable words fluently. They should understand that words can be built from parts. Familiarity with base words is important. Students should have experience with common inflectional endings (-s, -es, -ed, -ing) from earlier grades.

LEARNING OBJECTIVES:
- Identify common prefixes (un-, re-, pre-, dis-) and understand their meanings
- Identify common suffixes (-ful, -less, -ly, -er, -est) and understand their meanings
- Read words with prefixes and suffixes by identifying parts
- Understand that affixes change word meanings
- Use knowledge of affixes to determine meanings of unfamiliar words

KEY CONCEPTS:
1) A prefix is a word part added to the beginning of a base word
2) A suffix is a word part added to the end of a base word
3) Affixes (prefixes and suffixes) change the meaning or grammar of words
4) Common prefixes: un- (not), re- (again), pre- (before), dis- (not/opposite)
5) Common suffixes: -ful (full of), -less (without), -ly (how), -er/-est (compare)

COMMON MISCONCEPTIONS:
- Not recognizing affixes within words
- Thinking every word starting with un- has the prefix un- (uncle, under)
- Not understanding that the base word meaning remains
- Difficulty with spelling changes when adding suffixes (hope → hoping)
- Confusing suffixes that sound similar (-er meaning person vs. comparative)

TEACHING SEQUENCE:
Introduce prefixes and suffixes separately, starting with prefixes. Present un- first as it is common and consistent. "Un means not. Happy → unhappy. Kind → unkind. Fair → unfair." Build words together and discuss meaning changes.

Create affix charts with meanings and examples. For each prefix/suffix, list the meaning and 4-5 example words. Reference these during reading when students encounter affixed words.

Teach the strategy of "peeling off" affixes:
1) Find the prefix (at the beginning)
2) Find the suffix (at the end)
3) Find the base word (what is left)
4) Read the parts and put them together
5) Think about what it means

Practice with word sorts and word building. Sort words by affix. Add affixes to base words. Remove affixes to find base words. This manipulation builds flexibility with word structure.

DIFFERENTIATION:
For struggling learners: Focus on one affix at a time with many examples. Use color-coding to highlight affixes. Provide base word banks for affix addition. Practice reading affixed words in isolation before text. Create personal affix reference cards.

For advanced learners: Introduce less common prefixes (mis-, non-, over-). Explore multiple meanings of affixes. Work with words containing both prefix and suffix (unhelpful, rereading). Study spelling changes with suffixes.

VOCABULARY:
Prefix, suffix, affix, base word, beginning, ending, meaning, change, un-, re-, -ful, -less, -ly

CONNECTION TO FUTURE LEARNING:
Understanding word parts is essential for vocabulary development and reading comprehension. Students will learn additional affixes including Greek and Latin roots. Morphological awareness supports reading across content areas where specialized vocabulary contains common affixes. This knowledge enhances both reading and spelling ability.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Prefixes and Suffixes' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING COMPREHENSION UNIT
-- ============================================================================

-- Main Idea and Details
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Main Idea and Details' AND grade_level_min = 2),
  'Main Idea and Details (Grade 2) Topic Guide',
  'Teaching students to identify main ideas and supporting details in texts',
  'MAIN IDEA AND DETAILS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should have experience with first-grade main idea concepts. They should be able to distinguish between what a text is mostly about and specific pieces of information. Familiarity with asking "What is this mostly about?" is helpful. Students should be reading connected text.

LEARNING OBJECTIVES:
- Identify the main idea of a paragraph or short text
- Identify key details that support the main idea
- Explain how details support the main idea
- Distinguish between main ideas and details
- Use main idea and details to summarize text

KEY CONCEPTS:
1) The main idea is the most important point the author wants you to understand
2) Details are specific pieces of information that support or explain the main idea
3) Not all details are equally important - key details connect to the main idea
4) Main ideas can be stated directly or implied
5) The main idea + key details = a summary

COMMON MISCONCEPTIONS:
- Confusing an interesting detail with the main idea
- Thinking the main idea is always in the first sentence
- Including too many details when identifying main idea
- Missing the main idea because of focus on a favorite detail
- Not understanding the relationship between main idea and supporting details

TEACHING SEQUENCE:
Review first-grade concepts with the umbrella metaphor. The main idea is the umbrella; details fit underneath. If a detail does not fit under the umbrella, it might not be a key detail for this main idea.

Model with short paragraphs. Read a paragraph aloud. Think aloud: "What is this mostly about? I see information about X, Y, and Z. They all connect to [main idea]. So the main idea is [main idea], and X, Y, and Z are the key details."

Use graphic organizers consistently. Main idea boxes with detail branches or bubbles help visualize relationships. Some teachers use table metaphors: the main idea is the table top; details are the legs supporting it.

Practice with both fiction and nonfiction. In fiction, the main idea might be a theme or central event. In nonfiction, the main idea is the central topic or argument. Help students see patterns across genres.

DIFFERENTIATION:
For struggling learners: Start with very short texts (3-5 sentences) with obvious main ideas. Provide multiple choice options for main idea. Use heavily structured graphic organizers. Practice oral identification before written.

For advanced learners: Work with longer texts and implied main ideas. Analyze how authors develop main ideas across paragraphs. Write summaries using main idea and details. Compare main ideas across multiple texts on the same topic.

VOCABULARY:
Main idea, details, key details, support, mostly about, important, topic, evidence, summary

CONNECTION TO FUTURE LEARNING:
Main idea and detail identification is fundamental for all reading comprehension. Students will analyze central ideas in increasingly complex texts across all subjects. This skill supports note-taking, summarization, and research. Understanding text structure prepares students for expository writing.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Main Idea and Details' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Story Elements
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Story Elements' AND grade_level_min = 2),
  'Story Elements (Grade 2) Topic Guide',
  'Teaching students to identify characters, setting, problem, and solution in stories',
  'STORY ELEMENTS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should be able to identify characters and basic story events. They should understand that stories have beginnings, middles, and ends. Familiarity with retelling stories is important. Students should enjoy listening to and discussing stories.

LEARNING OBJECTIVES:
- Identify all major characters and their traits
- Describe the setting (where and when)
- Identify the problem or conflict in a story
- Explain how the problem is solved (resolution/solution)
- Use story elements to retell and analyze stories

KEY CONCEPTS:
1) Characters are who the story is about - they can be people, animals, or things that act like people
2) Setting is where and when the story takes place - it can affect the story events
3) The problem or conflict is what the character wants or what challenge they face
4) The solution or resolution is how the problem gets solved
5) Story elements work together to create the plot

COMMON MISCONCEPTIONS:
- Including minor characters as major characters
- Describing setting as only location (forgetting time)
- Identifying a small event rather than the central problem
- Thinking the ending is the solution even if it does not address the problem
- Not recognizing when settings change within a story

TEACHING SEQUENCE:
Use story element maps or graphic organizers consistently. After reading, fill in sections for characters, setting, problem, and solution. This visual structure helps students internalize the elements.

Analyze each element deeply. For characters: Who are they? What are they like? What do they want? For setting: Where does it happen? When? How does the setting affect the story? For problem: What does the character want? What is in the way? For solution: How is the problem solved? How does the character change?

Use familiar stories for initial practice. Folk tales and fairy tales often have clear, simple story elements. Compare elements across different versions of the same story. Build to more complex contemporary texts.

Connect elements to each other. "How does the setting cause the problem? How do the character''s traits affect the solution?" Help students see how elements interact rather than treating them as isolated parts.

DIFFERENTIATION:
For struggling learners: Start with stories with single settings and clear problems. Provide sentence frames for each element. Use picture support for graphic organizers. Practice with repeated readings of the same story.

For advanced learners: Analyze character motivation and change. Identify multiple problems or subplots. Compare story elements across texts. Examine how authors develop setting through description. Discuss theme as an extension of story elements.

VOCABULARY:
Character, setting, problem, solution, resolution, conflict, plot, trait, when, where, event, story

CONNECTION TO FUTURE LEARNING:
Story element analysis is foundational for all literary analysis. Students will develop more sophisticated understanding of character development, setting symbolism, and plot structure. This skill supports creative writing as students apply story element knowledge to their own narratives. Literary analysis skills transfer to film, drama, and other narrative forms.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Story Elements' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Comparing Texts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Comparing Texts' AND grade_level_min = 2),
  'Comparing Texts (Grade 2) Topic Guide',
  'Teaching students to compare and contrast elements across different texts',
  'COMPARING TEXTS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should be able to identify story elements within single texts. They should have experience comparing characters within stories. Understanding of same/different concepts is essential. Students should have experience with a variety of texts including different versions of familiar tales.

LEARNING OBJECTIVES:
- Compare two versions of the same story (different authors or cultures)
- Compare and contrast characters, settings, and events across texts
- Use text evidence to support comparisons
- Organize comparisons using graphic organizers (Venn diagrams, T-charts)
- Explain similarities and differences using comparison language

KEY CONCEPTS:
1) Comparing means finding what is the same; contrasting means finding what is different
2) We can compare story elements (characters, settings, events) across texts
3) Different versions of the same story may change elements while keeping others the same
4) Using evidence from the texts strengthens our comparisons
5) Comparison helps us understand texts more deeply

COMMON MISCONCEPTIONS:
- Only noticing differences without recognizing similarities
- Making comparisons without text evidence
- Comparing surface features without analyzing deeper elements
- Difficulty remembering both texts well enough to compare
- Thinking texts must be very similar to be compared

TEACHING SEQUENCE:
Begin with familiar tales that have multiple versions. Compare different Cinderella stories (traditional, different cultures, fractured fairy tales). These provide clear comparisons while building cultural awareness.

Use structured graphic organizers consistently. Venn diagrams work well for two texts. T-charts can compare specific elements (Characters in Story 1 vs. Characters in Story 2). Double-bubble maps show both similarities and differences visually.

Model comparison language:
- "Both stories have..."
- "In the first story... but in the second story..."
- "One difference is..."
- "They are alike because... They are different because..."

Connect comparisons to analysis. "Why do you think the author made this story different? How does changing the setting change the story? Which character did you like better and why?"

DIFFERENTIATION:
For struggling learners: Use very similar texts for initial comparisons. Focus on one element at a time (just compare settings, then just compare characters). Provide comparison sentence frames. Reread texts before comparing.

For advanced learners: Compare texts from different genres on similar topics. Analyze author''s choices in changes. Compare themes across texts. Write comparison paragraphs using evidence. Compare three or more texts.

VOCABULARY:
Compare, contrast, same, different, alike, both, but, however, version, similar, evidence, while, whereas

CONNECTION TO FUTURE LEARNING:
Comparative analysis is essential for academic reading across all content areas. Students will develop more sophisticated skills for synthesizing information across sources. This skill supports compare-contrast writing and critical evaluation of texts. Comparative thinking is fundamental for research and analysis.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Texts' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Asking Questions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Asking Questions' AND grade_level_min = 2),
  'Asking Questions (Grade 2) Topic Guide',
  'Teaching students to generate and answer questions while reading',
  'ASKING QUESTIONS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should understand basic question words and can answer who, what, where, when questions. They should be developing as readers of connected text. Understanding that reading involves thinking and engaging with text is developing. Students should feel comfortable wondering and asking.

LEARNING OBJECTIVES:
- Generate questions before, during, and after reading
- Ask and answer who, what, where, when, why, and how questions
- Distinguish between questions answered in the text and those requiring inference
- Use questioning to monitor comprehension
- Connect questions to finding key details

KEY CONCEPTS:
1) Good readers ask questions before, during, and after reading
2) Questions help us understand and remember what we read
3) Some questions are answered directly in the text (right there)
4) Some questions require us to think and infer (in my head)
5) If we cannot answer basic questions, we may need to reread

COMMON MISCONCEPTIONS:
- Thinking questioning indicates confusion rather than engagement
- Only asking questions when prompted, not independently
- Asking questions without attempting to answer them
- Not recognizing when questions are answered in the text
- Formulating statements instead of questions

TEACHING SEQUENCE:
Model authentic questioning while reading. Use think-alouds: "Hmm, I wonder why the character did that. Let me keep reading to find out. Oh! The text says she was afraid. That answers my question!"

Teach question types explicitly:
- Before reading: "What do I think this will be about? What do I want to learn?"
- During reading: "What is happening? Why? What will happen next?"
- After reading: "What did I learn? What do I still wonder about?"

Use Question-Answer Relationships (QAR) at an age-appropriate level:
- "Right There" - answer is directly stated in one place
- "Think and Search" - answer requires combining information from different parts
- "Author and Me" - answer requires using text clues plus my own thinking
- "On My Own" - answer is in my head (prior knowledge)

Create a questioning culture. Celebrate good questions. Have students share their questions and discuss together. Use wonder walls or questioning journals.

DIFFERENTIATION:
For struggling learners: Provide question stems to complete. Focus on basic who, what, where, when questions first. Practice finding "right there" answers before inference questions. Use familiar texts.

For advanced learners: Generate deeper "why" and "how" questions. Analyze which questions lead to the best understanding. Ask questions that challenge the text or connect to bigger ideas. Create questions for others to answer.

VOCABULARY:
Question, wonder, ask, answer, who, what, where, when, why, how, think, find, text, before, during, after

CONNECTION TO FUTURE LEARNING:
Questioning is a lifelong reading comprehension strategy. Students will develop more sophisticated questioning including analytical and evaluative questions. This skill supports research and inquiry learning. Strong questioners become engaged readers who interact with texts rather than passively receiving information.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Asking Questions' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VOCABULARY DEVELOPMENT UNIT
-- ============================================================================

-- Context Clues
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Context Clues' AND grade_level_min = 2),
  'Context Clues (Grade 2) Topic Guide',
  'Teaching students to use surrounding words to figure out unknown word meanings',
  'CONTEXT CLUES - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should be reading connected text and encountering some unfamiliar words. They should understand that words have meanings that connect to other words. Basic comprehension skills are important. Students should be comfortable with the idea that they do not need to know every word to understand text.

LEARNING OBJECTIVES:
- Use context clues to determine the meaning of unknown words
- Identify different types of context clues (definition, example, synonym)
- Apply context clue strategies independently while reading
- Confirm word meanings using dictionaries or asking
- Understand that context does not always provide enough information

KEY CONCEPTS:
1) Context clues are hints in the surrounding words that help us figure out what a word means
2) Authors sometimes define words in the text (definition clues)
3) Authors sometimes give examples that show what a word means (example clues)
4) Authors sometimes use synonyms - words with similar meanings (synonym clues)
5) We can use what we know about the topic to help figure out words

COMMON MISCONCEPTIONS:
- Skipping unknown words instead of using context
- Only looking at words immediately before/after, not the whole sentence or paragraph
- Assuming any nearby word is a definition
- Not checking if the guessed meaning makes sense in context
- Thinking context always provides a perfect definition

TEACHING SEQUENCE:
Introduce context clues as "detective work." We look for clues in the words around a tricky word to figure out what it means. Model with clear examples where context makes meaning obvious.

Teach specific context clue types:
1) Definition clues: "The monarch, or king, ruled the land." (word is defined)
2) Example clues: "She loves citrus fruits like oranges, lemons, and limes." (examples explain)
3) Synonym clues: "The huge, massive building towered over us." (synonym nearby)
4) Antonym clues: "Unlike the calm ocean yesterday, today the water was turbulent." (opposite given)

Model the strategy:
1) Read the whole sentence (or sentences)
2) Find clues about the unknown word
3) Make a guess about the meaning
4) Check: Does that meaning make sense here?
5) Confirm if possible (dictionary, ask someone)

Practice with text excerpts. Provide sentences with unfamiliar words and clear context. Discuss the clues that helped. Gradually introduce less obvious contexts.

DIFFERENTIATION:
For struggling learners: Start with sentences where context is very explicit. Highlight context clues visually. Provide multiple choice options for meanings. Practice with familiar topics where prior knowledge helps.

For advanced learners: Work with more subtle context clues. Identify clue types in authentic texts. Explore cases where context is insufficient. Use context clues with academic vocabulary.

VOCABULARY:
Context clues, meaning, unknown, surrounding, hint, definition, example, synonym, guess, check, sentence

CONNECTION TO FUTURE LEARNING:
Context clue use is essential for independent vocabulary learning throughout life. Students will encounter unfamiliar words constantly as texts become more complex. This strategy supports content-area reading where specialized vocabulary appears. Context clues work alongside morphological analysis and dictionary use as vocabulary strategies.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Context Clues' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Word Relationships
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Word Relationships' AND grade_level_min = 2),
  'Word Relationships (Grade 2) Topic Guide',
  'Teaching students to understand synonyms, antonyms, and word categories',
  'WORD RELATIONSHIPS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should have a growing vocabulary and understand that words have meanings. They should be able to group objects and ideas into categories. Familiarity with comparison concepts (same/different) is helpful. Students should enjoy playing with words and language.

LEARNING OBJECTIVES:
- Identify synonyms (words with similar meanings)
- Identify antonyms (words with opposite meanings)
- Categorize words into semantic groups
- Understand shades of meaning (happy, excited, thrilled)
- Use word relationships to expand vocabulary and improve word choice

KEY CONCEPTS:
1) Synonyms are words that mean almost the same thing (big/large, happy/glad)
2) Antonyms are words that mean the opposite (hot/cold, up/down)
3) Words can be grouped into categories (foods, animals, feelings)
4) Words have shades of meaning - they can be stronger or weaker (said, whispered, yelled)
5) Understanding word relationships helps us learn new words and choose better words for writing

COMMON MISCONCEPTIONS:
- Thinking synonyms mean exactly the same thing (they often have slight differences)
- Only recognizing simple antonyms (hot/cold) not more complex ones
- Difficulty with words that have no clear opposite
- Not understanding that category words can be more general or specific
- Using words interchangeably without considering context

TEACHING SEQUENCE:
Begin with synonyms using familiar words. "Big means large. Both words tell us something is not small. Can you think of other words that mean big? Huge! Enormous! Giant!" Create synonym webs together.

Introduce antonyms as "opposites." Start with clear pairs: hot/cold, up/down, happy/sad. Progress to less obvious pairs. Discuss words that may not have clear antonyms.

Explore categories. "Let''s think of all the words we know for ''ways to move'': walk, run, skip, hop, jump, crawl, dance, march." Categories help organize vocabulary and support word choice.

Investigate shades of meaning. Line up words from weakest to strongest: whisper, say, speak, shout, yell, scream. Discuss when you would use each word. This nuance supports writing.

DIFFERENTIATION:
For struggling learners: Focus on very clear synonyms and antonyms first. Use pictures to support category work. Create physical word sorts. Work with familiar, high-frequency vocabulary.

For advanced learners: Explore connotation - words that are synonyms but feel different (thin/skinny/slender). Investigate multiple meanings of words and how relationships change. Apply word relationships to improve writing word choice.

VOCABULARY:
Synonym, antonym, opposite, category, group, similar, meaning, word, choose, shade, stronger, weaker

CONNECTION TO FUTURE LEARNING:
Word relationship knowledge supports vocabulary expansion throughout education. Students will use thesauruses and develop more sophisticated understanding of connotation and register. This knowledge enhances writing through better word choice. Understanding word relationships supports reading comprehension when encountering unfamiliar vocabulary.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Word Relationships' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Root Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Root Words' AND grade_level_min = 2),
  'Root Words (Grade 2) Topic Guide',
  'Teaching students to identify base words within longer words',
  'ROOT WORDS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should understand that words can have prefixes and suffixes. They should recognize common affixes (-s, -ed, -ing, un-, re-). Basic understanding that words are made of parts is important. Students should be encountering multisyllabic words in their reading.

LEARNING OBJECTIVES:
- Identify the root or base word within longer words
- Remove prefixes and suffixes to find root words
- Understand that the root word carries the main meaning
- Use root word knowledge to understand unfamiliar words
- Recognize related word families that share the same root

KEY CONCEPTS:
1) A root word (base word) is the main part of a word that carries meaning
2) When we remove prefixes and suffixes, we find the root word
3) Many words can be built from the same root (play: playing, player, playful, replay)
4) Knowing the root word helps us understand related words
5) Root words are usually real words that can stand alone (unlike Greek/Latin roots)

COMMON MISCONCEPTIONS:
- Thinking every word has an identifiable English root (some are from Latin/Greek roots)
- Removing too many letters and not finding a real word
- Not recognizing roots when spelling changes (hope → hoping, hop → hopping)
- Confusing word families (words with the same root) with rhyming words
- Thinking affixes can be added to any root

TEACHING SEQUENCE:
Begin with simple examples. "Playing - what is the root word? Play! Unhappy - what is the root word? Happy! Reread - what is the root word? Read!" Practice identifying roots in familiar words.

Teach the "peel off" strategy. Remove the prefix first, then the suffix. What is left is the root. Model: "Unhelpful - un is the prefix, ful is the suffix, help is the root word."

Build word families from roots. Start with a root word and see how many words you can build: play → plays, played, playing, player, playful, replay, playmate. This shows how roots generate vocabulary.

Address spelling changes. When adding suffixes, sometimes letters are dropped, doubled, or changed: hope → hoping (drop the e), hop → hopping (double the consonant), happy → happiness (y → i). Discuss these patterns explicitly.

DIFFERENTIATION:
For struggling learners: Start with roots where no spelling change occurs. Use word family trees visually. Provide root word cards to match with affixed words. Focus on high-frequency word families.

For advanced learners: Explore words where roots are less obvious due to spelling changes. Begin investigating Latin and Greek roots (will be developed more in later grades). Create extensive word family lists. Use root knowledge for vocabulary learning.

VOCABULARY:
Root word, base word, prefix, suffix, main meaning, word family, related, remove, build, stand alone

CONNECTION TO FUTURE LEARNING:
Root word knowledge is foundational for vocabulary development across all content areas. Students will learn Greek and Latin roots that appear in academic vocabulary. Understanding morphology supports both reading comprehension and spelling. Word family knowledge helps students learn and remember new vocabulary efficiently.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Root Words' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Using New Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Using New Words' AND grade_level_min = 2),
  'Using New Words (Grade 2) Topic Guide',
  'Teaching students to incorporate new vocabulary into speaking and writing',
  'USING NEW WORDS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should be learning new vocabulary through reading and instruction. They should have strategies for understanding word meanings. Experience with oral language in classroom discussions is important. Students should understand that using new words helps them communicate better.

LEARNING OBJECTIVES:
- Use newly learned vocabulary words in speaking
- Incorporate vocabulary words into writing
- Choose words that precisely convey meaning
- Use words in the correct context
- Move new words from recognition to active use

KEY CONCEPTS:
1) Learning a word means more than knowing its definition - you must use it
2) Using new words in speaking and writing helps you remember them
3) Good word choice makes speaking and writing more interesting and clear
4) Words should be used in appropriate contexts
5) The more you use a word, the more natural it becomes

COMMON MISCONCEPTIONS:
- Thinking learning a definition equals knowing a word
- Using words incorrectly because of partial understanding
- Avoiding new words because of uncertainty
- Using "big words" incorrectly to seem smart
- Not realizing that vocabulary builds over time with practice

TEACHING SEQUENCE:
Create intentional opportunities for word use. After learning vocabulary, structure activities that require using the words. "Use our new word ''enormous'' in a sentence about the dinosaur." "Describe your pet using two of our vocabulary words."

Practice in speaking before writing. Oral rehearsal builds confidence. Use turn-and-talk structures: "Tell your partner about something that made you ecstatic." Hearing words used correctly helps.

Incorporate vocabulary into writing. Create writing prompts that invite vocabulary use. During writing conferences, suggest vocabulary words that could enhance writing. Celebrate when students use vocabulary words accurately.

Make word use visible. Create class charts tracking when vocabulary words are used. Give "word coins" or points for using words in speaking or writing. Celebrate risk-taking even when usage is not perfect.

DIFFERENTIATION:
For struggling learners: Provide sentence frames for practice. Use words in predictable contexts first. Partner with peers for oral practice. Accept approximations and scaffold toward correct usage.

For advanced learners: Challenge students to use words in varied contexts. Explore subtle differences in word choice. Use vocabulary words in more sophisticated writing. Create word games and challenges.

VOCABULARY:
Use, vocabulary, context, speaking, writing, choose, word choice, practice, remember, communicate

CONNECTION TO FUTURE LEARNING:
Active vocabulary use is how students truly acquire new words. This skill supports academic language development across all content areas. Strong vocabulary improves both reading comprehension and writing quality. Building habits of using new words creates lifelong learners who continuously expand their language.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Using New Words' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING UNIT
-- ============================================================================

-- Narrative Writing (Grade 2)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 2),
  'Narrative Writing (Grade 2) Topic Guide',
  'Teaching students to write developed narratives with sequence and details',
  'NARRATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should write complete sentences with capitals and punctuation. They should understand basic story structure (beginning, middle, end). Experience with first-grade narrative writing is helpful. Students should have stories to tell from their experiences.

LEARNING OBJECTIVES:
- Write narratives with a clear beginning, middle, and end
- Include a well-developed sequence of events
- Use temporal words to signal event order (first, then, next, finally)
- Include descriptive details about characters, settings, and events
- Provide a sense of closure at the end

KEY CONCEPTS:
1) Narrative writing tells a story - real or imagined
2) Good narratives have clear structure: beginning (setup), middle (events), end (closure)
3) Sequence words help readers follow the story order
4) Details make stories interesting and help readers picture events
5) Every story needs an ending that wraps up the narrative

COMMON MISCONCEPTIONS:
- Writing only about one moment rather than a sequence of events
- Rushing to the end without developing the middle
- Forgetting to include a satisfying ending
- Using "and then" repeatedly instead of varied transitions
- Including details that do not add to the story

TEACHING SEQUENCE:
Begin with personal narratives about memorable experiences. "Think of a time when something exciting/scary/funny happened to you." Personal stories are easier because students know the details.

Model narrative writing through shared writing. Show how to begin by setting the scene (who, where, when). Demonstrate developing events with details. Model writing an ending that gives closure.

Use graphic organizers for planning. Story maps with boxes for beginning, multiple middle events, and ending help organization. Students can draw and write before drafting.

Teach techniques for engaging writing:
- Strong beginnings that grab attention
- Showing feelings through actions ("My heart pounded" instead of "I was scared")
- Dialogue to bring characters to life
- Endings that connect to the beginning or show change

DIFFERENTIATION:
For struggling learners: Use simpler graphic organizers with three boxes. Accept drawings with labels as part of planning. Provide sentence starters for each section. Use oral rehearsal before writing.

For advanced learners: Develop character thoughts and feelings. Include dialogue with proper punctuation. Experiment with narrative techniques (flashback, suspense). Write longer pieces with multiple paragraphs.

VOCABULARY:
Narrative, story, beginning, middle, end, sequence, event, first, then, next, finally, details, characters, setting, closure

CONNECTION TO FUTURE LEARNING:
Narrative writing develops across all grades with increasing sophistication. Students will learn about plot development, character arcs, and literary techniques. Personal narrative is foundational for memoir and fiction writing. Storytelling skills support oral communication across all contexts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Informational Writing (Grade 2)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Informational Writing' AND grade_level_min = 2),
  'Informational Writing (Grade 2) Topic Guide',
  'Teaching students to write informational texts with facts and organization',
  'INFORMATIONAL WRITING - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should write complete sentences and understand the difference between fiction and nonfiction. They should have first-grade experience with simple informational writing. Students should enjoy learning and sharing facts. Basic research skills (finding information in books) are developing.

LEARNING OBJECTIVES:
- Write about a topic with facts and information
- Introduce the topic clearly
- Group related information together
- Use facts, definitions, and details to develop the topic
- Provide a concluding statement or section

KEY CONCEPTS:
1) Informational writing teaches readers about a topic
2) Good informational writing is organized logically
3) Facts and details come from research or knowledge
4) Information should be grouped by subtopic
5) Informational texts can include text features (headings, diagrams)

COMMON MISCONCEPTIONS:
- Mixing opinions with facts
- Including random facts without organization
- Not introducing the topic clearly
- Leaving out important information readers need
- Copying from sources without understanding

TEACHING SEQUENCE:
Choose topics students care about and know. Write about animals, hobbies, places, or topics from other subjects. Student investment increases writing quality.

Model research and note-taking. Show how to find information in books and kid-friendly websites. Demonstrate taking notes in your own words - not copying. Organize notes by subtopic.

Teach organizational structures. Use graphic organizers with a main topic and subtopics. Each paragraph or section addresses one aspect of the topic. Group related facts together.

Include text features as tools. Teach how headings help readers navigate. Show how diagrams, labels, and pictures add information. Practice creating simple graphics to accompany text.

DIFFERENTIATION:
For struggling learners: Write about very familiar topics. Use a simple three-paragraph structure (introduction, facts, conclusion). Provide fact organizers to fill in. Accept shorter pieces with clear structure.

For advanced learners: Research less familiar topics. Include multiple paragraphs with transitions. Add text features like glossaries or indexes. Compare information from multiple sources.

VOCABULARY:
Informational, facts, topic, research, organize, group, introduction, conclusion, details, text features, headings

CONNECTION TO FUTURE LEARNING:
Informational writing is essential across all academic subjects. Students will develop more complex research and organizational skills. This genre supports report writing, research papers, and technical documentation. Clear informational writing is crucial for academic and professional communication.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Informational Writing' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Opinion Writing (Grade 2)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Opinion Writing' AND grade_level_min = 2),
  'Opinion Writing (Grade 2) Topic Guide',
  'Teaching students to write opinions with reasons and supporting details',
  'OPINION WRITING - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should write complete sentences and understand the concept of an opinion vs. a fact. They should have first-grade experience stating opinions and providing one reason. Basic linking words (because, and) should be familiar. Students should be able to express preferences and explain why.

LEARNING OBJECTIVES:
- State an opinion clearly on a topic
- Provide reasons that support the opinion
- Use linking words to connect opinion and reasons (because, also, another reason)
- Supply a concluding statement
- Understand that opinions can differ and require support

KEY CONCEPTS:
1) An opinion expresses what you think, feel, or believe
2) Good opinion writing provides reasons to convince the reader
3) Reasons should connect logically to the opinion
4) Linking words help connect ideas (because, also, and, for example)
5) A strong conclusion restates or summarizes the opinion

COMMON MISCONCEPTIONS:
- Confusing opinions with facts
- Stating an opinion without supporting it
- Providing reasons that do not actually support the opinion
- Thinking everyone should agree with their opinion
- Forgetting to clearly state the opinion at the beginning

TEACHING SEQUENCE:
Begin with engaging topics. "Should students have recess every day? Should pets be allowed in school? What is the best season?" Topics students care about generate better writing.

Model the structure:
1) Introduction with clear opinion: "I think [opinion] because..."
2) Reasons with support: "One reason is... Another reason is..."
3) Conclusion: "That is why I believe..."

Teach linking words explicitly. Create an anchor chart: because, and, also, another reason is, for example, in addition. Practice using these to connect ideas.

Develop reasoning skills. Help students explain WHY their reasons support their opinion. "You said recess helps you learn better. How does running around help learning?" Push for elaboration.

DIFFERENTIATION:
For struggling learners: Use sentence frames throughout. Focus on just one or two reasons. Accept oral rehearsal before writing. Provide graphic organizers with clear sections.

For advanced learners: Acknowledge opposing viewpoints ("Some people think... but I think..."). Provide more than two reasons. Use more sophisticated transitions. Write persuasive letters to authentic audiences.

VOCABULARY:
Opinion, reason, because, support, believe, think, linking words, also, another, conclude, convince

CONNECTION TO FUTURE LEARNING:
Opinion writing develops into argumentative and persuasive writing. Students will learn to use evidence, address counterarguments, and structure logical arguments. Persuasive skills are essential for academic writing and civic engagement. Strong opinion writing supports critical thinking and advocacy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Opinion Writing' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Revising and Editing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Revising and Editing' AND grade_level_min = 2),
  'Revising and Editing (Grade 2) Topic Guide',
  'Teaching students to improve their writing through revision and editing',
  'REVISING AND EDITING - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Students should be able to produce drafts of writing. They should understand that writing is a process. Basic knowledge of sentence structure, capitalization, and punctuation is important. Students should be open to improving their work.

LEARNING OBJECTIVES:
- Understand the difference between revising (content) and editing (mechanics)
- Reread writing to check for sense and completeness
- Add details or information to improve writing
- Edit for capitalization, punctuation, and spelling
- Use checklists and peer feedback to improve writing

KEY CONCEPTS:
1) Writing is a process: plan, draft, revise, edit, publish
2) Revising means making the writing better (adding, removing, changing ideas)
3) Editing means fixing mistakes (spelling, punctuation, capitalization)
4) Good writers reread their work and make improvements
5) Others can help us see ways to improve our writing

COMMON MISCONCEPTIONS:
- Thinking the first draft is the final draft
- Confusing revision with editing
- Focusing only on spelling and ignoring content issues
- Believing revising means starting over
- Not knowing how to give or receive helpful feedback

TEACHING SEQUENCE:
Distinguish between revising and editing. "Revising is like fixing the building - we change the structure and add rooms. Editing is like painting - we make it look nice." Both are important, but revising comes first.

Model revision thinking. Read a draft aloud. "Hmm, this part is confusing. I need to add more details. This part is boring - how can I make it more interesting? This does not connect - I need a better transition."

Teach specific revision strategies:
- Add details: Where can I tell more?
- Remove: What is not needed?
- Move: Would this make more sense in a different order?
- Change: What words could be stronger?

Use editing checklists. Create age-appropriate checklists:
[ ] Capital letters at the beginning of sentences
[ ] End punctuation (. ? !)
[ ] Spelling of sight words
[ ] Spaces between words

Introduce peer feedback. Teach students to give specific, helpful comments. "I liked when you... I want to know more about... I was confused when..."

DIFFERENTIATION:
For struggling learners: Focus on one revision or editing skill at a time. Use highlighters to mark areas needing work. Provide extensive modeling. Conference individually during revision.

For advanced learners: Revise for more sophisticated qualities (word choice, sentence variety, voice). Self-edit without checklists. Provide feedback to peers. Study revision choices of published authors.

VOCABULARY:
Revise, edit, draft, improve, add, remove, change, check, capital, punctuation, spelling, feedback

CONNECTION TO FUTURE LEARNING:
Revision and editing skills are essential for producing quality writing at all levels. Students will develop more sophisticated revision techniques for different genres. Understanding writing as a process supports persistence and growth mindset. These skills support academic and professional writing throughout life.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Revising and Editing' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Grade 2 Reading Topics: 16 comprehensive prompts
-- Units covered:
--   1. Advanced Phonics (4 topics)
--   2. Reading Comprehension (4 topics)
--   3. Vocabulary Development (4 topics)
--   4. Writing (4 topics)
-- ============================================================================
