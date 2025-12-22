-- Grade 1 Reading Expanded Topic Prompts - Part 2
-- Comprehensive teaching prompts for remaining Grade 1 Reading/ELA expanded topics
-- ============================================================================

-- ============================================================================
-- VOCABULARY BUILDING (8 topics)
-- ============================================================================

-- Learning New Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Learning New Words' AND grade_level_min = 1),
  'Learning New Words Topic Guide', 'Building vocabulary through reading and conversation',
  'LEARNING NEW WORDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Active listening skills
- Interest in books and stories
- Basic comprehension abilities

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Learn new words from read-alouds and conversations
2. Ask about unfamiliar words
3. Use new words in speaking and writing
4. Understand that reading builds vocabulary

KEY CONCEPTS:
- We learn new words every day from reading, listening, and talking
- It\'s okay not to know all words - we can ask!
- Using new words helps us remember them
- Books teach us many new words
- The more we read, the more words we learn

COMMON MISCONCEPTIONS:
- Believing they should know all words already
- Not asking when they don\'t understand
- Thinking vocabulary learning is separate from reading
- Not practicing new words after learning them

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Every book is like a treasure chest full of new words! Let\'s discover some today!"

2. DIRECT INSTRUCTION (8 minutes):
   Model word learning process:
   - Read a sentence with unfamiliar word
   - Stop and say: "Hmm, I don\'t know that word. Let me figure it out!"
   - Use context clues or pictures
   - Define the word simply
   - Use it in a new sentence
   - Repeat the word several times

   Introduce "word catching":
   - "We\'re going to catch new words like butterflies!"
   - When you hear a new word, catch it and ask about it

3. GUIDED PRACTICE (12 minutes):
   Read aloud a story rich in vocabulary.
   Stop at interesting new words - discuss meaning.
   Students turn and tell partner what word means.
   Use new words in sentences together.
   Create class "Word Wall" with new words and pictures.
   Act out or draw new words to remember them.
   Play with new words in different contexts.

4. INDEPENDENT PRACTICE (10 minutes):
   Students draw pictures for new words learned.
   Use new words in sentences (oral or written).
   Find new words in independent reading.
   Share favorite new words with class.
   Create personal word collection books.

DIFFERENTIATION:
For Struggling Learners:
- Introduce fewer new words per session
- Use very clear pictures and demonstrations
- Provide multiple repetitions of new words
- Connect to familiar concepts

For Advanced Learners:
- Learn more complex vocabulary
- Use new words in varied contexts
- Make connections between related words
- Teach new words to others

ASSESSMENT INDICATORS:
- Shows interest in learning new words
- Asks questions about unfamiliar words
- Attempts to use new words in speech
- Growing vocabulary evident in comprehension', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Learning New Words' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Word Categories
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Word Categories' AND grade_level_min = 1),
  'Word Categories Topic Guide', 'Sorting words into categories',
  'WORD CATEGORIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of nouns
- Sorting and classification skills
- Basic category knowledge (foods, animals, colors)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Sort words into meaningful categories
2. Identify category relationships among words
3. Name categories for groups of related words
4. Generate words that fit specific categories

KEY CONCEPTS:
- Words can be grouped by what they have in common
- Categories help us organize and remember words
- Common categories: foods, animals, colors, clothing, toys, weather
- Finding what\'s similar helps us learn vocabulary
- Categories make word learning easier

COMMON MISCONCEPTIONS:
- Sorting by unrelated features (first letter instead of meaning)
- Not understanding category relationships
- Too broad or too narrow categories
- Missing obvious category connections

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Let\'s play a sorting game! I have words that go together. Can you figure out why?"
   Show: apple, banana, orange - "What are these? Foods! Fruits!"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce word categories:
   - Show category: Animals
   - List words: dog, cat, bird, fish, rabbit
   - "What do all these words have in common? They\'re all animals!"

   Practice with multiple categories:
   - FOODS: pizza, apple, bread, milk
   - COLORS: red, blue, green, yellow
   - CLOTHING: shirt, pants, shoes, hat
   - TOYS: ball, doll, blocks, truck

   Show how to:
   - Identify the category
   - Think of more words in category
   - Explain why words belong together

3. GUIDED PRACTICE (12 minutes):
   Sort word cards into categories (animal, food, color).
   Name the category for given word groups.
   Play "One of these doesn\'t belong" - find the word that doesn\'t fit.
   Generate additional words for each category.
   Create category posters as a class.
   Category relay: add words to category charts.

4. INDEPENDENT PRACTICE (10 minutes):
   Students sort picture or word cards into categories.
   Draw and label items in different categories.
   Complete category worksheets.
   Create their own category collections.
   Find category examples in books.

DIFFERENTIATION:
For Struggling Learners:
- Use only 2-3 very distinct categories
- Provide picture support for all words
- Start with concrete, familiar categories
- Practice same categories multiple times

For Advanced Learners:
- Work with more subtle categories (emotions, actions)
- Create subcategories (animals → farm animals, pets, wild)
- Explain why items belong in categories
- Identify words that fit multiple categories

ASSESSMENT INDICATORS:
- Correctly sorts words into categories
- Can name the category for word groups
- Generates appropriate words for categories
- Understands category relationships', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Word Categories' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Opposites
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Opposites' AND grade_level_min = 1),
  'Opposites Topic Guide', 'Learning pairs of antonyms',
  'OPPOSITES (ANTONYMS) - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of adjectives
- Concept of "opposite"
- Comparative thinking skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that opposites are words with reverse meanings
2. Identify opposite pairs (antonyms)
3. Match words to their opposites
4. Use opposite words correctly in sentences

KEY CONCEPTS:
- Opposites (antonyms) have reverse or contrasting meanings
- Common opposite pairs: hot/cold, big/small, up/down, happy/sad
- Opposites help us describe differences
- Many words have opposites
- Understanding opposites improves comprehension and expression

COMMON MISCONCEPTIONS:
- Thinking any different words are opposites
- Confusing opposites with synonyms
- Not recognizing that some words have multiple opposites
- Believing all words have opposites

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Let\'s play the Opposite Game! When I say up, you say down! When I say hot, you say cold!"
   Play several rounds enthusiastically.

2. DIRECT INSTRUCTION (10 minutes):
   Introduce opposites:
   - "Opposites are words that mean the REVERSE of each other"
   - Show concrete examples:
     * Hot ↔ Cold (show ice and fire)
     * Big ↔ Small (show large and small objects)
     * Happy ↔ Sad (show faces)
     * Up ↔ Down (point up and down)

   Create opposite pairs chart:
   - fast/slow
   - day/night
   - open/closed
   - full/empty
   - clean/dirty

   Demonstrate in sentences:
   - "The turtle is slow, but the rabbit is fast."

3. GUIDED PRACTICE (12 minutes):
   Match opposite word pairs (cards or pictures).
   Complete sentences with opposite: "The ice is cold, but the fire is ___."
   Act out opposites (high/low, loud/quiet).
   Play opposite games: teacher says word, students say opposite.
   Sort pictures by opposite pairs.
   Find opposites in books during read-aloud.

4. INDEPENDENT PRACTICE (10 minutes):
   Students draw pictures of opposite pairs.
   Match words to their opposites on worksheets.
   Write sentences using opposite pairs.
   Create opposite picture books.
   Play opposite matching memory game.

DIFFERENTIATION:
For Struggling Learners:
- Use very clear, concrete opposites
- Provide visual support for all pairs
- Start with fewer pairs (5-10)
- Use physical demonstrations

For Advanced Learners:
- Learn more sophisticated antonym pairs
- Identify opposites in complex sentences
- Understand words with multiple opposites
- Use opposites to improve descriptive writing

ASSESSMENT INDICATORS:
- Correctly identifies opposite word pairs
- Matches words to their antonyms
- Uses opposite words appropriately
- Understands the concept of contrasting meanings', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Opposites' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Similar Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Similar Words' AND grade_level_min = 1),
  'Similar Words Topic Guide', 'Learning synonyms that mean the same',
  'SIMILAR WORDS (SYNONYMS) - TOPIC TEACHING GUIDE

PREREQUISITES:
- Vocabulary development
- Understanding of word meanings
- Ability to compare and contrast

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that synonyms are words with similar meanings
2. Identify synonym pairs
3. Replace words with synonyms in sentences
4. Use synonyms to add variety to speech and writing

KEY CONCEPTS:
- Synonyms are words that mean the same or almost the same thing
- Common synonym pairs: big/large, happy/glad, small/little, fast/quick
- Synonyms help us avoid repeating the same word
- Using synonyms makes our writing more interesting
- Words can have similar meanings but slightly different uses

COMMON MISCONCEPTIONS:
- Believing synonyms mean exactly the same (nuances exist)
- Confusing synonyms with opposites
- Thinking words must be spelled similarly to be synonyms
- Not recognizing that context affects synonym choice

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "I\'m going to say a sentence two ways. Listen!"
   "The dog is big." / "The dog is large."
   "Big and large mean the same thing - they\'re similar words!"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce synonyms:
   - "Synonyms are words that mean the SAME or almost the same"
   - Show example pairs:
     * happy = glad
     * small = little
     * fast = quick
     * jump = leap
     * yell = shout

   Demonstrate in sentences:
   - "I am happy." / "I am glad."
   - Both sentences mean the same thing!

   Explain why we use synonyms:
   - To avoid repeating words
   - To make writing more interesting
   - To express exactly what we mean

3. GUIDED PRACTICE (12 minutes):
   Match synonym pairs (word cards).
   Replace words in sentences with synonyms.
   Play "Say it Another Way": give word, students give synonym.
   Sort words into synonym groups.
   Rewrite simple sentences using synonyms.
   Find synonyms in read-aloud books.
   Create synonym word charts.

4. INDEPENDENT PRACTICE (10 minutes):
   Students complete synonym matching worksheets.
   Replace repeated words with synonyms in short passages.
   Draw pictures showing synonym pairs.
   Write sentences using synonym pairs.
   Create personal synonym lists.

DIFFERENTIATION:
For Struggling Learners:
- Use very simple, common synonym pairs
- Provide picture support showing same concept
- Practice with fewer pairs at a time
- Use synonyms in familiar contexts only

For Advanced Learners:
- Learn more sophisticated synonyms
- Understand subtle differences in meaning
- Use synonyms to improve writing
- Create synonym chains (happy → glad → joyful)

ASSESSMENT INDICATORS:
- Correctly identifies synonym pairs
- Can replace words with appropriate synonyms
- Uses synonyms to add variety to speech
- Understands that synonyms have similar meanings', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Similar Words' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Shades of Meaning
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Shades of Meaning' AND grade_level_min = 1),
  'Shades of Meaning Topic Guide', 'Understanding subtle differences in related words',
  'SHADES OF MEANING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of synonyms
- Expanded vocabulary
- Ability to distinguish subtle differences

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that similar words have different intensities
2. Distinguish between related words (walk, march, strut)
3. Choose precise words based on meaning differences
4. Arrange words by intensity or degree

KEY CONCEPTS:
- Related words can have different strengths or intensities
- Examples: walk → march → stomp (increasing intensity)
- Temperature: cool → cold → freezing
- Size: small → tiny → microscopic
- Emotion: happy → glad → ecstatic
- Choosing precise words improves communication

COMMON MISCONCEPTIONS:
- Thinking all synonyms are exactly the same
- Not recognizing intensity differences
- Random ordering of related words
- Using words interchangeably without considering nuance

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Let\'s walk across the room. Now march! Now stomp! Do you feel the difference?"
   Demonstrate increasing intensity physically.

2. DIRECT INSTRUCTION (12 minutes):
   Introduce shades of meaning:
   - "Some words mean ALMOST the same but have different strengths!"

   Show visual scales:
   - TEMPERATURE: cool → cold → freezing (draw thermometer)
   - HAPPINESS: pleased → happy → overjoyed (draw faces)
   - SIZE: big → huge → gigantic (show objects)
   - SPEED: walk → jog → run → sprint

   Demonstrate with actions:
   - Whisper → talk → yell (increasing volume)
   - Drizzle → rain → pour (increasing intensity)

   Use in sentences to show difference:
   - "I am happy." vs "I am overjoyed!"

3. GUIDED PRACTICE (12 minutes):
   Act out words with increasing intensity.
   Order word cards from least to most intense.
   Choose best word for situations:
     "The baby cried softly." (whimper vs sob vs wail)
   Compare related words and discuss differences.
   Create intensity scales for different word groups.
   Practice precise word choice in sentences.

4. INDEPENDENT PRACTICE (10 minutes):
   Students draw intensity scales for word groups.
   Order words by strength or intensity.
   Choose precise words to complete sentences.
   Replace vague words with more precise ones.
   Create action cards showing different intensities.

DIFFERENTIATION:
For Struggling Learners:
- Use very concrete, actable word groups
- Provide only 3 words per scale (small, medium, large)
- Use clear visual supports
- Practice with same word groups repeatedly

For Advanced Learners:
- Work with more subtle distinctions
- Order 4-5 words by intensity
- Explain why they chose specific words
- Apply precise word choice in writing

ASSESSMENT INDICATORS:
- Distinguishes between related words
- Orders words by intensity appropriately
- Chooses precise words based on context
- Understands concept of shades of meaning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Shades of Meaning' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Using Context Clues
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Using Context Clues' AND grade_level_min = 1),
  'Using Context Clues Topic Guide', 'Figuring out word meanings from sentences',
  'USING CONTEXT CLUES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic comprehension skills
- Understanding that sentences have meaning
- Willingness to make guesses and inferences

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use surrounding words to figure out unknown word meanings
2. Look for clues in pictures to understand words
3. Make reasonable guesses about word meanings
4. Understand that context helps comprehension

KEY CONCEPTS:
- Context = the words and pictures around an unknown word
- We can be "word detectives" and use clues
- Pictures, other words, and what makes sense all help
- It\'s okay to make a smart guess
- Context clues help us keep reading without stopping

COMMON MISCONCEPTIONS:
- Believing they must know every word before reading
- Not using picture clues effectively
- Giving up when encountering unknown words
- Not checking if their guess makes sense

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Today you\'re all going to be Word Detectives! We\'ll solve mysteries about words we don\'t know!"
   Show detective hat or magnifying glass prop.

2. DIRECT INSTRUCTION (12 minutes):
   Model being a word detective:
   - Read sentence: "The enormous elephant trumpeted loudly."
   - Stop at "enormous": "I don\'t know this word. Let me look for clues!"
   - Picture clue: elephant is very big
   - Word clue: "elephant" - those are usually big
   - Guess: "Enormous probably means really big!"
   - Check: Does it make sense? Yes!

   Teach detective strategies:
   1. Look at the picture
   2. Read the sentence again
   3. Think: What would make sense here?
   4. Make a smart guess
   5. Check: Does it sound right?

   Practice with examples:
   - "The kitten was tiny." (tiny = ?)
   - "He galloped on his horse." (galloped = ?)

3. GUIDED PRACTICE (12 minutes):
   Read sentences with unknown words together.
   Students help find context clues.
   Make guesses as a class about word meanings.
   Use pictures in books to figure out words.
   Practice detective strategies step-by-step.
   Verify guesses by discussing if they make sense.
   Celebrate good detective work!

4. INDEPENDENT PRACTICE (10 minutes):
   Students read simple texts and use context for unknown words.
   Complete context clue worksheets.
   Draw pictures showing what unknown words might mean.
   Partner reading with context clue practice.
   Keep "word detective" logs of figured-out words.

DIFFERENTIATION:
For Struggling Learners:
- Use texts with very supportive pictures
- Provide sentence frames for making guesses
- Work with teacher in small groups
- Use words with obvious context clues

For Advanced Learners:
- Work with more challenging unknown words
- Use context in texts with fewer pictures
- Explain the clues they used
- Verify meanings using dictionary afterward

ASSESSMENT INDICATORS:
- Attempts to use context to determine word meaning
- Uses pictures as clues effectively
- Makes reasonable guesses about unknown words
- Can explain what clues helped them figure out a word', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Using Context Clues' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Compound Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Compound Words' AND grade_level_min = 1),
  'Compound Words Topic Guide', 'Recognizing words made from two smaller words',
  'COMPOUND WORDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Two-syllable word decoding
- Understanding of individual word meanings
- Ability to blend words together

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that compound words are two words joined together
2. Identify the two smaller words in compound words
3. Read compound words by recognizing the parts
4. Understand that compound meaning relates to both parts

KEY CONCEPTS:
- Compound words = two complete words put together
- Examples: sun + shine = sunshine, rain + bow = rainbow
- Each small word keeps its meaning
- Compound meaning connects to both words
- Recognizing parts helps us read longer words

COMMON MISCONCEPTIONS:
- Thinking any long word is a compound
- Not recognizing both parts as complete words
- Breaking words incorrectly (butter-fly vs butt-erfly)
- Believing compound meaning is unrelated to parts

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Hold up pictures of sun and flower separately.
   "What if we put these together? SUNFLOWER!"
   "Two words became one new word!"

2. DIRECT INSTRUCTION (12 minutes):
   Introduce compound words:
   - "Compound words are made from TWO smaller words"
   - Show with visuals:
     * foot + ball = football
     * rain + coat = raincoat
     * cup + cake = cupcake
     * bed + room = bedroom

   Demonstrate reading strategy:
   - See compound word: "snowman"
   - Find first small word: "snow"
   - Find second small word: "man"
   - Put together: "snowman!"

   Discuss meanings:
   - Sunflower: a flower that looks like the sun
   - Rainbow: colorful bow that appears in rain
   - Each part helps us understand the whole

3. GUIDED PRACTICE (12 minutes):
   Break compound words into parts: butterfly → butter + fly
   Build compound words from two small words.
   Match pictures to compound words.
   Use magnetic word tiles to create compounds.
   Read compound words in sentences.
   Draw pictures showing both parts of compounds.
   Play compound word memory game.

4. INDEPENDENT PRACTICE (10 minutes):
   Students identify compounds in reading.
   Complete compound word puzzles.
   Draw and label compound words showing both parts.
   Write sentences using compound words.
   Create compound word picture books.

DIFFERENTIATION:
For Struggling Learners:
- Use very clear, concrete compounds (sandbox, hotdog)
- Provide visual separation of parts
- Use familiar words for both parts
- Practice with fewer compounds at a time

For Advanced Learners:
- Create their own compound words (real or silly)
- Find compounds in authentic texts
- Understand that some compounds use three words
- Explore how compound meanings evolve

ASSESSMENT INDICATORS:
- Correctly identifies compound words
- Can break compounds into two parts
- Uses compound parts to decode new words
- Understands relationship between parts and whole meaning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compound Words' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Using a Dictionary
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Using a Dictionary' AND grade_level_min = 1),
  'Using a Dictionary Topic Guide', 'Introduction to using picture dictionaries',
  'USING A DICTIONARY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Alphabet knowledge and order
- Understanding that words have meanings
- Interest in looking up information

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that dictionaries help us find word meanings
2. Know that dictionary words are in ABC order
3. Use picture dictionaries to find words
4. Locate simple words in beginning dictionaries

KEY CONCEPTS:
- Dictionaries are books that tell us what words mean
- Words are listed in alphabetical (ABC) order
- Picture dictionaries show pictures with definitions
- We can look up words we don\'t know
- Dictionaries help us be independent readers

COMMON MISCONCEPTIONS:
- Thinking dictionaries are too hard to use
- Not understanding alphabetical order purpose
- Believing definitions must be memorized
- Expecting all dictionaries to have pictures

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "What if you wanted to know what every word means? There\'s a special book for that - a dictionary!"
   Show a picture dictionary enthusiastically.

2. DIRECT INSTRUCTION (12 minutes):
   Introduce picture dictionary:
   - "This book has LOTS of words and their meanings!"
   - Show how it\'s organized: "Words are in ABC order"
   - Demonstrate: "Let\'s find \'dog.\' D is near the beginning..."
   - Show entry: word, picture, simple definition
   - Read definition together

   Teach how to use it:
   1. Think of the word you want to find
   2. Think of the first letter
   3. Find that letter section
   4. Look for your word
   5. Read the definition and look at the picture

   Practice with examples:
   - Find "cat" - C section
   - Find "tree" - T section

3. GUIDED PRACTICE (15 minutes):
   Students practice finding words together.
   Use alphabet chart to locate letter sections.
   Look up words as a class: ball, house, apple.
   Compare pictures and definitions.
   Play dictionary scavenger hunt: "Find a word that starts with B!"
   Partner work: one says word, other finds it.

4. INDEPENDENT PRACTICE (10 minutes):
   Students look up assigned words independently.
   Find words and draw their own pictures.
   Use dictionary during independent reading time.
   Complete dictionary practice worksheets.
   Create personal picture dictionaries for new words.

DIFFERENTIATION:
For Struggling Learners:
- Use very simple picture dictionaries
- Provide alphabet strips for reference
- Work in small groups with teacher
- Look up only familiar words initially

For Advanced Learners:
- Use more advanced picture dictionaries
- Look up challenging vocabulary words
- Understand parts of dictionary entries
- Begin using simple word dictionaries (no pictures)

ASSESSMENT INDICATORS:
- Understands dictionaries show word meanings
- Can locate letter sections using ABC order
- Successfully finds simple words in picture dictionary
- Uses dictionary as a tool when encountering unknown words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Using a Dictionary' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- Additional sections continue... (fluency, comprehension, writing)
-- Due to length constraints, this represents the vocabulary section completion
-- ============================================================================
