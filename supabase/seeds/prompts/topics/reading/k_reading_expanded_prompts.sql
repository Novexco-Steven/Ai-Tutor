-- Kindergarten Reading Expanded Topic Prompts
-- Comprehensive teaching prompts for Kindergarten Reading/ELA expanded topics
-- ============================================================================

-- ============================================================================
-- PHONEMIC AWARENESS (8 topics)
-- ============================================================================

-- Listening for Sounds
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Listening for Sounds' AND grade_level_min = 0),
  'Listening for Sounds Topic Guide', 'Developing auditory awareness of environmental sounds',
  'LISTENING FOR SOUNDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic attention and listening skills
- Ability to sit and focus for short periods
- Interest in sounds and voices

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify and distinguish different environmental sounds
2. Describe sounds using descriptive words (loud, soft, high, low)
3. Match sounds to their sources
4. Develop auditory discrimination skills as foundation for phonics

KEY CONCEPTS:
- Sounds are all around us and have different qualities
- We can identify objects and actions by their sounds
- Listening carefully helps us learn about the world
- Sound awareness prepares us for letter sounds
- Different sounds can be loud or quiet, high or low

COMMON MISCONCEPTIONS:
- Thinking all sounds are the same
- Not understanding that sounds come from specific sources
- Confusing similar sounds
- Not distinguishing between speech and non-speech sounds

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Play a sound guessing game with familiar classroom sounds (bell, door closing, pencil writing).
   "Close your eyes and tell me what you hear!"

2. DIRECT INSTRUCTION (5 minutes):
   Take a "listening walk" around the classroom or play recorded sounds.
   Model describing sounds: "That sounds loud and sharp!" or "This is a soft, gentle sound."
   Discuss where each sound comes from.

3. GUIDED PRACTICE (5 minutes):
   Students listen to sounds and identify them together.
   Practice describing sounds using sensory language.
   Sort sounds into categories (loud/soft, inside/outside).

4. INDEPENDENT PRACTICE (5 minutes):
   Students draw pictures of things that make sounds.
   Play "I Spy with Sounds" where students make and identify sounds.

DIFFERENTIATION:
For Struggling Learners:
- Use very distinct, familiar sounds first
- Provide visual cues alongside sounds
- Allow extra processing time before responses
- Work in small groups with repeated exposure

For Advanced Learners:
- Identify more subtle sound differences
- Sequence sounds in the order heard
- Create sound stories with multiple sounds
- Record and categorize environmental sounds

ASSESSMENT INDICATORS:
- Accurately identifies familiar sounds
- Can describe sound qualities using words
- Focuses attention when listening
- Shows interest in exploring different sounds', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Listening for Sounds' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Syllable Clapping
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Syllable Clapping' AND grade_level_min = 0),
  'Syllable Clapping Topic Guide', 'Identifying and counting syllables in words',
  'SYLLABLE CLAPPING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Listening for sounds
- Ability to clap hands together
- Understanding of rhythm in songs and chants

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify syllables as beats in words
2. Clap the syllables in spoken words
3. Count the number of syllables in simple words
4. Recognize that words have different numbers of syllables

KEY CONCEPTS:
- Syllables are the beats or parts we hear in words
- Every syllable has one vowel sound
- We can clap, tap, or count syllables
- Some words have one syllable, some have many
- Syllable awareness helps with reading and spelling

COMMON MISCONCEPTIONS:
- Clapping for each letter instead of each syllable
- Adding extra syllables to one-syllable words
- Not hearing the syllable breaks clearly
- Confusing syllables with individual sounds

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Chant students\' names while clapping syllables.
   "Let\'s clap Mar-y\'s name! Now let\'s clap Jon-a-than\'s name!"

2. DIRECT INSTRUCTION (5 minutes):
   Model clapping syllables in familiar words: "cat" (1 clap), "ti-ger" (2 claps), "el-e-phant" (3 claps).
   Show with chin taps: rest chin on hand and feel jaw drop for each syllable.
   Use pictures of objects and clap their names together.

3. GUIDED PRACTICE (7 minutes):
   Practice with student names (highly motivating!)
   Clap syllables in vocabulary words from current themes.
   Sort picture cards by number of syllables (1, 2, 3+).

4. INDEPENDENT PRACTICE (5 minutes):
   Students clap syllables for picture cards independently.
   Draw a picture and clap its syllables.
   Play syllable sorting game in pairs.

DIFFERENTIATION:
For Struggling Learners:
- Start with two-syllable compound words (sun-shine, rain-bow)
- Use only student names initially
- Provide physical support for clapping rhythm
- Use visual aids like blocks for each syllable

For Advanced Learners:
- Work with three and four syllable words
- Identify words with same number of syllables
- Create syllable patterns (clap, snap, stomp)
- Find syllables in sentences

ASSESSMENT INDICATORS:
- Accurately claps syllables in 1-2 syllable words
- Can count syllables after clapping
- Distinguishes words with different syllable counts
- Applies syllable awareness to new words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Syllable Clapping' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Initial Sound Isolation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Initial Sound Isolation' AND grade_level_min = 0),
  'Initial Sound Isolation Topic Guide', 'Identifying first sounds in words',
  'INITIAL SOUND ISOLATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Listening for sounds awareness
- Syllable awareness
- Understanding that words are made of sounds

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the first sound in spoken words
2. Isolate and pronounce initial sounds clearly
3. Match words that begin with the same sound
4. Generate words that begin with a target sound

KEY CONCEPTS:
- Every word begins with a sound
- The first sound is what we hear at the very start
- Many words can share the same beginning sound
- Initial sounds can be consonants or vowels
- This skill helps us learn letter-sound connections

COMMON MISCONCEPTIONS:
- Saying the letter name instead of the sound
- Including the first syllable instead of just the first sound
- Confusing similar sounds (/b/ and /p/, /d/ and /t/)
- Not clearly articulating the isolated sound

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Play "I Spy" with sounds: "I spy something that starts with /m/!"
   Students look for objects beginning with that sound.

2. DIRECT INSTRUCTION (7 minutes):
   Model stretching out words to hear the first sound: "mmmmoon, /m/ is the first sound."
   Show mouth position for different initial sounds.
   Use picture cards and emphasize initial sounds: "/s/ /s/ sun!"
   Practice all together with various words.

3. GUIDED PRACTICE (7 minutes):
   Show pictures and students identify initial sounds together.
   Play sound sorting: sort pictures by initial sound.
   "Stand up if your name starts with /b/!"

4. INDEPENDENT PRACTICE (6 minutes):
   Students find objects in room starting with target sound.
   Match picture cards that start with same sound.
   Draw pictures of things starting with a given sound.

DIFFERENTIATION:
For Struggling Learners:
- Focus on continuous sounds first (/m/, /s/, /f/)
- Use exaggerated pronunciation
- Provide mirrors to see mouth movements
- Work with fewer sounds at a time

For Advanced Learners:
- Work with more challenging initial sounds
- Identify initial sounds in multisyllabic words
- Generate lists of words with same initial sound
- Compare and contrast similar initial sounds

ASSESSMENT INDICATORS:
- Correctly identifies initial sounds in CVC words
- Can pronounce isolated sounds clearly
- Matches words by initial sound
- Generates appropriate examples of words with target sound', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Initial Sound Isolation' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Final Sound Isolation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Final Sound Isolation' AND grade_level_min = 0),
  'Final Sound Isolation Topic Guide', 'Identifying ending sounds in words',
  'FINAL SOUND ISOLATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Initial sound isolation mastery
- Understanding of beginning, middle, and end
- Clear articulation of individual sounds

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the last sound in spoken words
2. Isolate and pronounce final sounds
3. Match words that end with the same sound
4. Distinguish between initial and final sounds

KEY CONCEPTS:
- Words end with a sound just like they begin with one
- The final sound is what we hear at the very end
- Rhyming words often share the same final sound
- Final sounds are important for spelling
- We can change words by changing the final sound

COMMON MISCONCEPTIONS:
- Identifying the last syllable instead of last sound
- Difficulty hearing final consonant sounds clearly
- Confusing final sound with the last letter seen
- Not distinguishing between similar ending sounds

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Rhyme game: "Cat, hat, bat - what sound do we hear at the end?"
   Students discover they all end with /t/.

2. DIRECT INSTRUCTION (7 minutes):
   Model stretching words and holding the final sound: "dogggg, /g/ is the last sound."
   Use hand gestures: move hand from left to right, emphasize when reaching the end.
   Practice with simple CVC words: cat, dog, sun, mop.

3. GUIDED PRACTICE (7 minutes):
   Students say words together and isolate final sounds.
   Sort pictures by final sound (/t/, /n/, /p/).
   Play "odd one out" - find the word with a different ending sound.

4. INDEPENDENT PRACTICE (6 minutes):
   Match picture cards that end with same sound.
   Draw pictures of words ending with specific sounds.
   Find objects in classroom ending with target sound.

DIFFERENTIATION:
For Struggling Learners:
- Use very clear CVC words
- Emphasize the final sound loudly
- Provide visual cues (point to end)
- Start with words ending in continuous sounds (/m/, /s/, /f/)

For Advanced Learners:
- Identify final sounds in longer words
- Generate rhyming words (same ending)
- Change final sounds to make new words (cat→can)
- Work with final blends (/st/, /nd/, /mp/)

ASSESSMENT INDICATORS:
- Accurately identifies final sounds in simple words
- Can isolate and pronounce ending sounds
- Matches words by final sound
- Distinguishes initial from final sounds', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Final Sound Isolation' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Medial Sound Isolation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Medial Sound Isolation' AND grade_level_min = 0),
  'Medial Sound Isolation Topic Guide', 'Identifying middle vowel sounds in CVC words',
  'MEDIAL SOUND ISOLATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Initial and final sound isolation
- Understanding of vowel sounds
- Familiarity with CVC word structure

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the middle vowel sound in CVC words
2. Distinguish between different medial vowel sounds
3. Recognize that the medial sound is always a vowel
4. Sort words by their middle sound

KEY CONCEPTS:
- The middle sound in CVC words is the vowel
- Vowel sounds are /a/, /e/, /i/, /o/, /u/
- Changing the middle sound changes the word
- The medial sound is what we hear between first and last sounds
- Vowel sounds are made with an open mouth

COMMON MISCONCEPTIONS:
- Confusing short vowel sounds with each other
- Saying the whole word instead of isolating the middle
- Not hearing the vowel as a separate sound
- Mixing up vowel letter names with their sounds

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Word family fun: "Listen to these words: cat, sat, mat. What sound is in the middle?"
   Students discover the /a/ sound is shared.

2. DIRECT INSTRUCTION (8 minutes):
   Model segmenting CVC words: "cat: /c/ - /a/ - /t/. The middle sound is /a/."
   Use Elkonin boxes (sound boxes) to visualize three sounds.
   Practice each short vowel sound with multiple examples.
   Show how changing middle sound changes the word: cat→cot→cut.

3. GUIDED PRACTICE (7 minutes):
   Students use counters in sound boxes for CVC words.
   Listen to words and identify the medial vowel sound.
   Sort picture cards by middle sound (words with /a/, /i/, /o/).

4. INDEPENDENT PRACTICE (5 minutes):
   Match pictures that share the same middle sound.
   Complete CVC word puzzles focusing on middle sounds.
   Draw pictures for words with specific medial sounds.

DIFFERENTIATION:
For Struggling Learners:
- Focus on one vowel sound at a time
- Use highly distinct vowel sounds first (/a/ vs /i/)
- Provide exaggerated pronunciation
- Use visual mouth position cards for each vowel

For Advanced Learners:
- Compare all five short vowels
- Substitute medial sounds to create new words
- Identify medial sounds in real and nonsense words
- Work with word families systematically

ASSESSMENT INDICATORS:
- Correctly identifies medial vowel sounds in CVC words
- Can distinguish between different short vowels
- Segments CVC words into three sounds
- Recognizes that changing middle sound creates new words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Medial Sound Isolation' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Sound Blending
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Sound Blending' AND grade_level_min = 0),
  'Sound Blending Topic Guide', 'Blending individual sounds into words',
  'SOUND BLENDING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Sound isolation skills (initial, medial, final)
- Knowledge of individual letter sounds
- Ability to hear and reproduce sounds in sequence

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Blend two to four sounds into recognizable words
2. Hold sounds in memory while blending
3. Blend sounds smoothly without pausing
4. Apply blending to decode simple written words

KEY CONCEPTS:
- Blending is pushing sounds together to make words
- We blend from left to right (beginning to end)
- Smooth blending helps us read words
- Every sound must be included in the blend
- Blending is the foundation of decoding

COMMON MISCONCEPTIONS:
- Saying sounds in isolation without blending
- Losing the first sound by the time they reach the last
- Adding extra sounds (/c/ /a/ /t/ = "cat-uh")
- Blending too slowly so word is not recognized

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "I\'m thinking of an animal: /d/ /o/ /g/. What animal is it?"
   Students blend sounds to discover the word "dog!"

2. DIRECT INSTRUCTION (8 minutes):
   Model smooth blending: "/c/ /a/ /t/ → cat" using continuous blending.
   Use hand gestures: bring hands together as sounds blend.
   Start with two-sound words (/a/ /t/ → at), then three-sound CVC words.
   Show written letters while blending sounds for visual connection.

3. GUIDED PRACTICE (7 minutes):
   Teacher says sounds, students blend together.
   Practice with picture support: blend sounds to match picture.
   Students use manipulatives to push sounds together physically.
   Blend word families: /c/ /a/ /t/, /b/ /a/ /t/, /s/ /a/ /t/.

4. INDEPENDENT PRACTICE (5 minutes):
   Students practice blending with sound cards.
   Partner blending games: one says sounds, other blends.
   Blend to match pictures independently.

DIFFERENTIATION:
For Struggling Learners:
- Start with continuous sounds (/s/, /m/, /f/)
- Use only 2-sound combinations initially
- Provide extra think time between sounds
- Use visual aids (arrows showing blending direction)

For Advanced Learners:
- Blend four-sound words (CCVC, CVCC)
- Blend without picture support
- Blend nonsense words to show skill mastery
- Begin reading CVC words independently

ASSESSMENT INDICATORS:
- Successfully blends CVC words from sounds
- Blends smoothly without adding sounds
- Can blend without visual support
- Applies blending when attempting to read', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sound Blending' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Sound Segmentation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Sound Segmentation' AND grade_level_min = 0),
  'Sound Segmentation Topic Guide', 'Breaking words into individual sounds',
  'SOUND SEGMENTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Sound isolation (initial, medial, final)
- Understanding that words are made of sounds
- Ability to hear sounds in sequence

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Break spoken words into individual sounds (phonemes)
2. Count the number of sounds in words
3. Represent each sound with a counter or marker
4. Apply segmentation to support spelling attempts

KEY CONCEPTS:
- Segmentation is the opposite of blending
- We break words apart into each sound we hear
- Some words have 2 sounds, some have 3, 4, or more
- Each sound can be represented by a letter or letters
- Segmentation helps us spell words

COMMON MISCONCEPTIONS:
- Segmenting by syllables instead of sounds
- Counting letters instead of sounds
- Missing sounds when segmenting quickly
- Adding extra sounds not present in the word

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Let\'s break apart the word \'sun\' like a puzzle! How many sounds do you hear?"
   Students discover it has three sounds: /s/ /u/ /n/.

2. DIRECT INSTRUCTION (8 minutes):
   Model segmenting: "cat: /c/ /a/ /t/ - I hear three sounds."
   Use Elkonin boxes (sound boxes) with counters for each sound.
   Demonstrate with clear CVC words: dog, sit, mop, run.
   Show how to count sounds by pushing up one finger per sound.

3. GUIDED PRACTICE (8 minutes):
   Students use sound boxes and counters together.
   Teacher says word, students segment and count sounds.
   Practice with variety of CVC words.
   Compare words with different numbers of sounds.

4. INDEPENDENT PRACTICE (6 minutes):
   Students segment words using sound boxes independently.
   Draw boxes and place counters for each sound.
   Partner activity: one says word, other segments.

DIFFERENTIATION:
For Struggling Learners:
- Use only simple CVC words
- Provide hand-over-hand support with counters
- Segment very slowly with exaggerated sounds
- Focus on words with continuous sounds

For Advanced Learners:
- Segment words with 4+ sounds
- Segment words with blends (stop, clip)
- Identify specific position of sounds (which sound is first?)
- Begin using letters instead of counters

ASSESSMENT INDICATORS:
- Accurately segments CVC words into sounds
- Correctly counts number of sounds
- Uses sound boxes or counters effectively
- Can segment new words independently', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sound Segmentation' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Phoneme Manipulation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Phoneme Manipulation' AND grade_level_min = 0),
  'Phoneme Manipulation Topic Guide', 'Adding, deleting, or substituting sounds in words',
  'PHONEME MANIPULATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Sound blending mastery
- Sound segmentation mastery
- Clear understanding of individual phonemes

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Add sounds to the beginning or end of words
2. Delete sounds from words to make new words
3. Substitute one sound for another to change words
4. Recognize that small sound changes create different words

KEY CONCEPTS:
- We can change words by changing their sounds
- Adding a sound makes a word longer
- Deleting a sound makes a word shorter
- Substituting means switching one sound for another
- These skills are advanced phonemic awareness

COMMON MISCONCEPTIONS:
- Changing multiple sounds instead of one
- Not clearly hearing the resulting new word
- Confusing manipulation types (adding vs substituting)
- Difficulty holding the word in mind while changing it

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Word magic: "Listen! If I take away /c/ from cat, I get at! Let\'s try more word magic!"

2. DIRECT INSTRUCTION (10 minutes):
   Model each type of manipulation:
   - Adding: "Say \'at.\' Now add /c/ at the beginning: cat!"
   - Deleting: "Say \'stop.\' Now say it without /s/: top!"
   - Substituting: "Say \'cat.\' Change /c/ to /b/: bat!"

   Use sound boxes to visualize changes.
   Practice all three types with different examples.

3. GUIDED PRACTICE (10 minutes):
   Students practice each type together with manipulatives.
   Use Elkonin boxes to show sound changes visually.
   Try: "Say \'an.\' Add /m/. Say \'man.\' Change /m/ to /f/. Say \'fan.\'"

4. INDEPENDENT PRACTICE (5 minutes):
   Students work with sound manipulation cards.
   Create word chains by changing one sound at a time.
   Partner games with manipulation challenges.

DIFFERENTIATION:
For Struggling Learners:
- Focus on one type of manipulation at a time
- Start with adding/deleting sounds only
- Use clear, simple CVC words
- Provide visual supports and manipulatives

For Advanced Learners:
- Create longer word chains (cat→bat→bit→sit)
- Work with more complex words
- Manipulate sounds in any position
- Create their own manipulation challenges

ASSESSMENT INDICATORS:
- Successfully adds sounds to make new words
- Deletes sounds correctly
- Substitutes sounds to create new words
- Can perform multiple manipulations in sequence', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Phoneme Manipulation' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PRINT CONCEPTS (7 topics)
-- ============================================================================

-- Parts of a Book
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Parts of a Book' AND grade_level_min = 0),
  'Parts of a Book Topic Guide', 'Understanding book structure and terminology',
  'PARTS OF A BOOK - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic exposure to books
- Understanding of front and back
- Interest in stories and pictures

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the front cover, back cover, and title of books
2. Understand the roles of author and illustrator
3. Locate the title page
4. Hold and orient books correctly for reading

KEY CONCEPTS:
- Books have specific parts that serve different purposes
- The front cover shows the title and often a picture
- The author writes the words
- The illustrator creates the pictures
- Books open from right to left and pages turn sequentially
- The title tells what the book is about

COMMON MISCONCEPTIONS:
- Confusing front and back covers
- Thinking the illustrator writes the words
- Not understanding that books are made by people
- Opening books from the wrong end

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a favorite class book: "This is one of our favorite books! Let\'s learn about all its special parts!"

2. DIRECT INSTRUCTION (5 minutes):
   Using a big book, point out and label each part:
   - Front cover (title, picture, author, illustrator)
   - Back cover (summary, barcode)
   - Spine (title, author)
   - Title page (inside title, author, illustrator, publisher)

   Discuss role of author (writes) vs illustrator (draws).

3. GUIDED PRACTICE (7 minutes):
   Students hold their own books and point to parts as teacher names them.
   Practice: "Show me the front cover! Point to the title! Who is the author?"
   Compare parts across different books.

4. INDEPENDENT PRACTICE (5 minutes):
   Book scavenger hunt: find books with specific authors or features.
   Students practice opening books correctly and identifying parts.
   Draw and label parts of their favorite book.

DIFFERENTIATION:
For Struggling Learners:
- Use very simple, familiar books
- Provide labeled diagram of book parts
- Practice with same book repeatedly
- Use color coding for different parts

For Advanced Learners:
- Identify additional parts (dedication, table of contents)
- Compare same book in different formats
- Create their own book with all parts labeled
- Explain purpose of each book part

ASSESSMENT INDICATORS:
- Correctly identifies front cover, back cover, title
- Can name the author and illustrator
- Holds books correctly with proper orientation
- Shows respect for book handling', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parts of a Book' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Left to Right
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Left to Right' AND grade_level_min = 0),
  'Left to Right Topic Guide', 'Following text from left to right',
  'LEFT TO RIGHT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of left and right directions
- Experience with books and print
- Ability to track objects visually

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that English text is read from left to right
2. Track print from left to right with finger or eyes
3. Follow words in order across the page
4. Return to the left side to begin the next line

KEY CONCEPTS:
- In English, we read from left to right
- We start at the left side of the page
- Each word follows the one before it
- Our eyes move across the page in a specific direction
- This pattern is consistent in all English text

COMMON MISCONCEPTIONS:
- Reading from right to left
- Skipping around the page randomly
- Not understanding the left-to-right convention
- Starting in the middle or right side

TEACHING SEQUENCE:
1. HOOK (2 minutes):
   "Watch my finger follow the words as I read!" Demonstrate clear left-to-right tracking.

2. DIRECT INSTRUCTION (5 minutes):
   Using a big book or chart, model tracking print:
   - Point to left side: "We always start here."
   - Move finger smoothly left to right under words
   - Emphasize the directionality consistently
   - Show what happens if we try to read backwards (silly!)

3. GUIDED PRACTICE (8 minutes):
   Students use finger to track as teacher reads.
   Practice with familiar texts, poems, and charts.
   Students take turns being the pointer during shared reading.
   Use highlighting tape to show left-to-right path.

4. INDEPENDENT PRACTICE (5 minutes):
   Students "read" picture books, tracking left to right.
   Practice tracking words in environmental print.
   Color a path showing left-to-right direction on worksheet.

DIFFERENTIATION:
For Struggling Learners:
- Use large text with clear spacing
- Provide hand-over-hand tracking support
- Use arrow cues showing direction
- Practice with single lines first

For Advanced Learners:
- Track in books with smaller text
- Notice left-to-right in different text types
- Help peers with tracking
- Track multiple lines accurately

ASSESSMENT INDICATORS:
- Consistently tracks from left to right
- Returns to left for next line
- Can point to "where we start reading"
- Follows print direction without prompting', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Left to Right' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Top to Bottom
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Top to Bottom' AND grade_level_min = 0),
  'Top to Bottom Topic Guide', 'Reading from top to bottom on a page',
  'TOP TO BOTTOM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Left to right directionality
- Understanding of top and bottom concepts
- Experience with print tracking

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that text is read from top to bottom
2. Begin reading at the top of the page
3. Progress downward through lines of text
4. Recognize that reading follows a consistent vertical pattern

KEY CONCEPTS:
- We read starting at the top of the page
- After finishing one line, we move down to the next
- Pages are read from top to bottom
- This pattern is the same in all English books
- Both left-to-right and top-to-bottom work together

COMMON MISCONCEPTIONS:
- Starting to read in the middle or bottom of page
- Not understanding the vertical progression
- Confusion about where to begin on a page
- Skipping lines when moving downward

TEACHING SEQUENCE:
1. HOOK (2 minutes):
   "Books are like ladders! We start at the top and climb down!" Show with gestures.

2. DIRECT INSTRUCTION (5 minutes):
   Using a big book with multiple lines:
   - Point to the very top: "This is where every page begins."
   - Read the first line left to right
   - Move down to second line: "Now we go down to the next line."
   - Continue showing the pattern
   - Emphasize starting at the top always

3. GUIDED PRACTICE (8 minutes):
   Students use vertical tracking on charts and posters.
   Practice with poems that have clear line breaks.
   Students point to "where we start" and trace downward.
   Number lines on a page to show top-to-bottom order.

4. INDEPENDENT PRACTICE (5 minutes):
   Students track top-to-bottom in their own books.
   Complete worksheets showing correct reading order.
   Practice with environmental print (lists, signs).

DIFFERENTIATION:
For Struggling Learners:
- Use texts with very few lines
- Number each line clearly
- Use vertical arrows as cues
- Practice with single column text only

For Advanced Learners:
- Work with multi-column text
- Identify top-to-bottom pattern in various formats
- Notice when pattern differs (captions, labels)
- Track accurately in books with complex layouts

ASSESSMENT INDICATORS:
- Begins reading at top of page
- Moves systematically down through lines
- Does not skip lines while reading
- Understands vertical reading progression', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Top to Bottom' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Return Sweep
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Return Sweep' AND grade_level_min = 0),
  'Return Sweep Topic Guide', 'Returning to left side for the next line',
  'RETURN SWEEP - TOPIC TEACHING GUIDE

PREREQUISITES:
- Left to right directionality mastery
- Top to bottom understanding
- Consistent print tracking skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Return to the left margin when moving to the next line
2. Sweep smoothly from end of one line to beginning of next
3. Maintain place when transitioning between lines
4. Track continuously across multiple lines

KEY CONCEPTS:
- After reaching the end of a line, we return to the left
- The return sweep moves down and back to the left
- We don\'t continue reading from right to left
- This creates a zig-zag pattern down the page
- Smooth return sweeps maintain reading flow

COMMON MISCONCEPTIONS:
- Trying to continue right to left on next line
- Getting lost during the transition between lines
- Skipping lines during the return sweep
- Not returning all the way to the left margin

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Watch my finger make a special reading dance!" Demonstrate exaggerated return sweep motion.

2. DIRECT INSTRUCTION (6 minutes):
   Using big book with clear lines:
   - Read to end of first line
   - Make obvious sweeping motion: down and back to left
   - Continue reading second line from the start
   - Practice the motion without words first
   - Show with hand gesture (sweep through air)

3. GUIDED PRACTICE (8 minutes):
   Students practice return sweep motion in the air.
   Track with finger on big books, performing return sweep.
   Use highlighter or crayon to trace the path including sweeps.
   Practice with familiar texts multiple times.

4. INDEPENDENT PRACTICE (6 minutes):
   Students track through short texts with multiple lines.
   Draw arrows showing the return sweep path.
   Practice with poems and charts independently.

DIFFERENTIATION:
For Struggling Learners:
- Use texts with only 2-3 lines
- Provide curved arrow cues for return sweep
- Practice the motion many times before applying to reading
- Use ruler or card to guide back to left

For Advanced Learners:
- Track longer passages fluently
- Perform return sweeps in books with dense text
- Read aloud while tracking smoothly
- Notice return sweeps in different text layouts

ASSESSMENT INDICATORS:
- Smoothly returns to left margin after each line
- Doesn\'t skip lines during return sweep
- Maintains reading accuracy across line breaks
- Performs return sweep automatically', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Return Sweep' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Word Boundaries
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Word Boundaries' AND grade_level_min = 0),
  'Word Boundaries Topic Guide', 'Understanding that spaces separate words',
  'WORD BOUNDARIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Print tracking skills
- Concept that sentences contain words
- Visual discrimination abilities

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that spaces separate individual words
2. Count words in spoken and written sentences
3. Recognize word boundaries in print
4. Match spoken words to written words one-to-one

KEY CONCEPTS:
- Spaces show where one word ends and another begins
- Each word is a separate unit of meaning
- Sentences are made up of multiple words
- We can count how many words are in a sentence
- Spaces help us read words separately and clearly

COMMON MISCONCEPTIONS:
- Thinking a sentence is one long word
- Not seeing spaces as meaningful
- Counting syllables instead of words
- Believing longer words take up more "words"

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Write a sentence without spaces: "Ilikepizza"
   Ask: "Can you read this?" Then rewrite with spaces: "I like pizza."
   Discuss why spaces help us read.

2. DIRECT INSTRUCTION (7 minutes):
   Using a sentence strip or chart:
   - Point to each word with a clear pause at spaces
   - Count words together: "How many words? Let\'s count!"
   - Show how spaces create boundaries
   - Demonstrate with blocks: one block per word with gaps
   - Write a sentence together, emphasizing spaces

3. GUIDED PRACTICE (8 minutes):
   Students count words in oral sentences (clap for each word).
   Match spoken words to written words in charts.
   Use word cards with spaces to build sentences.
   Practice pointing to each word while reading.

4. INDEPENDENT PRACTICE (7 minutes):
   Students write sentences with proper spacing.
   Count and circle each word in given sentences.
   Cut apart sentences into individual words.
   Rebuild sentences with correct spaces.

DIFFERENTIATION:
For Struggling Learners:
- Start with 2-3 word sentences only
- Use finger spaces when writing
- Provide pre-cut word cards to arrange
- Practice with highly familiar sentences

For Advanced Learners:
- Work with longer, more complex sentences
- Identify word boundaries in paragraphs
- Notice that even little words (a, I, to) get spaces
- Write sentences independently with proper spacing

ASSESSMENT INDICATORS:
- Accurately counts words in sentences
- Points to individual words when reading
- Leaves appropriate spaces when writing
- Understands that spaces separate words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Word Boundaries' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Letter vs Word
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Letter vs Word' AND grade_level_min = 0),
  'Letter vs Word Topic Guide', 'Distinguishing between letters and words',
  'LETTER VS WORD - TOPIC TEACHING GUIDE

PREREQUISITES:
- Recognition of some letters
- Understanding of word boundaries
- Awareness that print carries meaning

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Distinguish between letters and words
2. Understand that letters make up words
3. Count letters in words
4. Recognize that words contain one or more letters

KEY CONCEPTS:
- Letters are individual symbols (A, B, C, etc.)
- Words are groups of letters that mean something
- Every word has at least one letter
- Some words are one letter (a, I), most have several
- Letters are the building blocks of words

COMMON MISCONCEPTIONS:
- Thinking each letter is a word
- Believing words and letters are the same thing
- Counting words as letters or vice versa
- Not understanding the hierarchical relationship

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a letter "B" and the word "book."
   "This is a letter. This is a word. What\'s the difference?"

2. DIRECT INSTRUCTION (7 minutes):
   Display examples of letters vs. words:
   - Point to individual letters: "This is the letter M."
   - Point to word: "This is the word \'mom\'. It has three letters!"
   - Show how letters combine to make words
   - Use magnetic letters to build words from individual letters
   - Count letters in various words

3. GUIDED PRACTICE (8 minutes):
   Students sort cards into "letters" and "words."
   Count letters in given words together.
   Build words using letter tiles or magnetic letters.
   Identify "How many letters in this word?"
   Circle letters vs. underline words on charts.

4. INDEPENDENT PRACTICE (7 minutes):
   Students build 3-4 letter words from letter cards.
   Count and record letters in their name and friends\' names.
   Complete worksheets distinguishing letters from words.
   Find short words (2-3 letters) and long words (5+ letters).

DIFFERENTIATION:
For Struggling Learners:
- Use very simple CVC words
- Work with student\'s own name
- Provide clear visual examples
- Practice with concrete letter manipulatives

For Advanced Learners:
- Identify number of letters in longer words
- Understand that some letters appear multiple times
- Recognize same word in different fonts
- Build multiple words from same letters

ASSESSMENT INDICATORS:
- Correctly identifies letters vs. words
- Can count letters in simple words
- Understands that words are made of letters
- Uses correct terminology (letter, word)', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Letter vs Word' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Sentence Awareness
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Sentence Awareness' AND grade_level_min = 0),
  'Sentence Awareness Topic Guide', 'Recognizing sentence structure and punctuation',
  'SENTENCE AWARENESS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Word boundary understanding
- Letter vs word distinction
- Basic punctuation exposure

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify that sentences begin with capital letters
2. Recognize that sentences end with punctuation (. ! ?)
3. Understand that sentences express complete thoughts
4. Count sentences in simple text

KEY CONCEPTS:
- Sentences are groups of words that tell a complete idea
- Every sentence starts with a capital letter
- Every sentence ends with ending punctuation
- Period (.) means the sentence is done
- Question mark (?) means asking something
- Exclamation point (!) means strong feeling

COMMON MISCONCEPTIONS:
- Thinking every line is a sentence
- Not understanding the role of punctuation
- Forgetting to capitalize the first word
- Believing random words make a sentence

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Compare: "The dog" vs "The dog is running."
   "Which one sounds complete? Why?"

2. DIRECT INSTRUCTION (8 minutes):
   Write sentences on board, highlighting features:
   - Circle capital letter at start
   - Box the ending punctuation
   - Count words in the sentence
   - Show examples and non-examples
   - Demonstrate different ending punctuation types
   - Read with appropriate expression based on punctuation

3. GUIDED PRACTICE (8 minutes):
   Students identify sentence beginnings and endings in texts.
   Add missing capitals and punctuation to sentences.
   Sort groups of words: sentence or not a sentence?
   Practice reading sentences with appropriate expression.
   Count sentences in short passages.

4. INDEPENDENT PRACTICE (6 minutes):
   Students write their own sentences with correct conventions.
   Circle capitals and ending marks in printed text.
   Match sentences to punctuation types.
   Complete sentence frames correctly.

DIFFERENTIATION:
For Struggling Learners:
- Use very simple, short sentences
- Provide sentence frames with capitals and punctuation
- Focus on periods first, add other marks later
- Practice orally before writing

For Advanced Learners:
- Write sentences with all three ending marks
- Identify sentences in books and longer texts
- Fix incorrectly written sentences
- Explain why certain punctuation is used

ASSESSMENT INDICATORS:
- Identifies sentence beginnings and endings
- Uses capital letters to start sentences
- Includes ending punctuation
- Understands sentences express complete thoughts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sentence Awareness' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- LISTENING AND SPEAKING (7 topics)
-- ============================================================================

-- Active Listening
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Active Listening' AND grade_level_min = 0),
  'Active Listening Topic Guide', 'Developing focused listening skills',
  'ACTIVE LISTENING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic attention skills
- Understanding of quiet and noisy
- Interest in stories and information

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Listen attentively when others are speaking
2. Maintain eye contact with the speaker
3. Show listening through body language
4. Respond appropriately to what they heard

KEY CONCEPTS:
- Active listening means paying full attention
- Good listeners look at the speaker
- Good listeners keep their bodies still and quiet
- Good listeners think about what they hear
- Active listening helps us learn and understand

COMMON MISCONCEPTIONS:
- Thinking they can listen while doing other things
- Believing listening means just being quiet
- Not understanding the importance of focus
- Confusing waiting to talk with truly listening

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Play a listening game: "I\'m going to give you three things to do, but only if you listen carefully!"
   Give multi-step directions to show importance of listening.

2. DIRECT INSTRUCTION (6 minutes):
   Model good vs. poor listening:
   - Good listener: eyes on speaker, still body, thinking face
   - Poor listener: looking away, fidgeting, talking
   - Discuss which helps us learn better
   - Introduce "listening position": eyes watching, ears listening, voice quiet, body still
   - Practice the listening position together

3. GUIDED PRACTICE (8 minutes):
   Read a short story and students demonstrate active listening.
   Ask questions afterward to check listening comprehension.
   Students take turns being speaker/listener.
   Provide feedback on listening behaviors.
   Practice listening to instructions and following them.

4. INDEPENDENT PRACTICE (6 minutes):
   Students listen to short audio clips or partner stories.
   Draw or respond to show what they heard.
   Partner practice: one speaks, one shows active listening.

DIFFERENTIATION:
For Struggling Learners:
- Keep listening segments very short (1-2 minutes)
- Provide visual reminders of listening behaviors
- Use fidget tools for focusing
- Practice in small groups first

For Advanced Learners:
- Listen to longer passages
- Summarize what they heard
- Identify main ideas from listening
- Model active listening for peers

ASSESSMENT INDICATORS:
- Maintains eye contact when appropriate
- Keeps body still during listening time
- Can recall details from what was heard
- Shows respectful listening behaviors', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Active Listening' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Following Directions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Following Directions' AND grade_level_min = 0),
  'Following Directions Topic Guide', 'Following one and two-step oral directions',
  'FOLLOWING DIRECTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Active listening skills
- Understanding of basic action words
- Ability to focus on speaker

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Follow one-step oral directions accurately
2. Follow two-step directions in sequence
3. Ask for clarification when directions are unclear
4. Complete tasks as directed

KEY CONCEPTS:
- Directions tell us what to do
- We must listen to all parts of a direction
- Multi-step directions must be done in order
- It\'s okay to ask if we don\'t understand
- Following directions helps us learn and stay safe

COMMON MISCONCEPTIONS:
- Starting before hearing all the directions
- Forgetting the second step in two-step directions
- Not asking when confused
- Doing steps out of order

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Simple game: "Simon Says" to practice listening and following.
   Discuss what happens when we don\'t follow directions.

2. DIRECT INSTRUCTION (7 minutes):
   Model following directions:
   - One-step: "Touch your nose." (Demonstrate)
   - Two-step: "Stand up, then turn around." (Demonstrate in sequence)
   - Think aloud: "First I will... then I will..."
   - Show wrong way: doing steps backwards or skipping
   - Emphasize listening to ALL directions before starting

3. GUIDED PRACTICE (8 minutes):
   Give class one-step directions to follow together.
   Progress to two-step directions.
   Students repeat directions back before following.
   Practice in pairs: one gives direction, one follows.
   Increase complexity gradually.

4. INDEPENDENT PRACTICE (7 minutes):
   Listening center with recorded directions.
   Direction following obstacle course.
   Draw pictures based on oral directions.
   Complete simple crafts following 2-step directions.

DIFFERENTIATION:
For Struggling Learners:
- Use only one-step directions initially
- Provide visual cues or pictures for each step
- Repeat directions multiple times
- Break complex directions into smaller steps

For Advanced Learners:
- Follow three-step directions
- Give directions to peers
- Follow written directions independently
- Create direction sequences for activities

ASSESSMENT INDICATORS:
- Accurately follows one-step directions
- Completes two-step directions in correct order
- Asks for help appropriately when confused
- Listens to all directions before beginning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Following Directions' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Speaking in Sentences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Speaking in Sentences' AND grade_level_min = 0),
  'Speaking in Sentences Topic Guide', 'Using complete sentences when speaking',
  'SPEAKING IN SENTENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic oral language development
- Understanding of complete vs incomplete ideas
- Sentence awareness from print concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Respond to questions using complete sentences
2. Expand one-word answers into full sentences
3. Use subject and verb in spoken sentences
4. Self-correct when speech is unclear or incomplete

KEY CONCEPTS:
- Complete sentences express whole ideas
- Sentences have a "who" and a "what happens"
- Complete sentences help others understand us better
- We can turn short answers into sentences
- Speaking in sentences prepares us for writing

COMMON MISCONCEPTIONS:
- Believing one-word answers are complete
- Not understanding what makes a sentence complete
- Thinking sentences must be long
- Difficulty expanding telegraphic speech

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Puppet play: One puppet says "Ball!" Other says "I want the ball."
   "Which puppet helps us understand better?"

2. DIRECT INSTRUCTION (7 minutes):
   Model expanding answers:
   - Question: "What is this?" Answer: "Book." → "This is a book."
   - Question: "What are you doing?" Answer: "Playing." → "I am playing."
   - Show the pattern: Turn the question into the answer
   - Practice together with sentence frames
   - Use visual cue cards: "I _____" "This is _____"

3. GUIDED PRACTICE (8 minutes):
   Teacher asks questions, students respond in sentences.
   Provide sentence stems: "I like ___" "I see ___"
   Partner practice: ask and answer in complete sentences.
   Sentence expanding game: teacher says word, students make sentence.
   Chart sentence responses.

4. INDEPENDENT PRACTICE (7 minutes):
   Students describe pictures using complete sentences.
   Role play conversations with complete sentences.
   Record themselves speaking in sentences.
   "Tell me about..." activities with sentence responses.

DIFFERENTIATION:
For Struggling Learners:
- Provide sentence frames for all responses
- Model and have students repeat
- Start with very simple sentence patterns
- Use visual supports (pictures + sentence starters)

For Advanced Learners:
- Create longer, more complex sentences
- Use descriptive words in sentences
- Ask and answer questions independently
- Help peers expand their sentences

ASSESSMENT INDICATORS:
- Regularly uses complete sentences to respond
- Includes subject and verb in speech
- Can expand one-word answers when prompted
- Speaks clearly and completely', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Speaking in Sentences' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Asking Questions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Asking Questions' AND grade_level_min = 0),
  'Asking Questions Topic Guide', 'Asking questions to clarify understanding',
  'ASKING QUESTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Speaking in sentences
- Understanding of question vs statement
- Active listening skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Ask questions to gain information
2. Use question words (who, what, where, when, why, how)
3. Ask for clarification when confused
4. Understand that asking questions helps learning

KEY CONCEPTS:
- Questions help us learn and understand
- Different question words get different information
- Good learners ask questions
- It\'s okay to ask when we don\'t know or understand
- Questions use a different tone (voice goes up at end)

COMMON MISCONCEPTIONS:
- Thinking asking questions means they\'re not smart
- Being afraid to ask questions
- Not knowing how to form questions
- Confusing questions with statements

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Mystery box: "I have something in this box. Ask me questions to figure out what it is!"
   Students discover that questions give us information.

2. DIRECT INSTRUCTION (7 minutes):
   Introduce question words with visuals:
   - Who: asks about people
   - What: asks about things or actions
   - Where: asks about places
   - When: asks about time
   - Why: asks about reasons
   - How: asks about the way something happens

   Model forming questions: "What is your name?" "Where do you live?"
   Show question intonation (voice rises at end).

3. GUIDED PRACTICE (8 minutes):
   Students practice asking questions using each question word.
   Play "Question Chain": each student asks the next person a question.
   Practice asking clarifying questions: "Can you explain?" "What does that mean?"
   Read a story and generate questions about it.

4. INDEPENDENT PRACTICE (7 minutes):
   Students interview a partner using question words.
   Create questions about a picture or topic.
   "Wonder Questions": "I wonder why..." "I wonder how..."
   Practice asking questions in learning centers.

DIFFERENTIATION:
For Struggling Learners:
- Focus on 2-3 question words at a time
- Provide question frames: "What is ___?" "Where is ___?"
- Practice with familiar topics
- Model and repeat questions

For Advanced Learners:
- Use all question words flexibly
- Ask follow-up questions
- Create questions for research
- Distinguish between simple and complex questions

ASSESSMENT INDICATORS:
- Asks questions using appropriate question words
- Uses questioning intonation
- Asks for clarification when needed
- Understands different question types get different answers', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Asking Questions' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Show and Tell
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Show and Tell' AND grade_level_min = 0),
  'Show and Tell Topic Guide', 'Describing objects and experiences clearly',
  'SHOW AND TELL - TOPIC TEACHING GUIDE

PREREQUISITES:
- Speaking in sentences
- Vocabulary for describing objects
- Comfort speaking to small groups

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Describe objects using complete sentences
2. Speak clearly and loudly enough for others to hear
3. Stay on topic when sharing
4. Answer questions about their presentation

KEY CONCEPTS:
- We can use words to describe objects and experiences
- Good descriptions help others understand
- Speaking clearly helps our audience
- We should include important details
- Presentations have a beginning, middle, and end

COMMON MISCONCEPTIONS:
- Speaking too quietly for others to hear
- Sharing too many unrelated details
- Not preparing what to say
- Forgetting to describe, just showing

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Teacher models show and tell with a special object.
   "Watch how I describe my object and tell you about it!"

2. DIRECT INSTRUCTION (7 minutes):
   Teach show and tell structure:
   - Introduction: "This is my ___"
   - Description: "It is ___ (color, size, texture)"
   - Story/Importance: "I got it ___" or "I like it because ___"
   - Conclusion: "Does anyone have questions?"

   Model volume, pacing, and eye contact.
   Show examples of good descriptive words.

3. GUIDED PRACTICE (10 minutes):
   Students practice with classroom objects.
   Use sentence frames for support.
   Practice in pairs before presenting to group.
   Class provides positive feedback.
   Teacher guides with prompting questions.

4. INDEPENDENT PRACTICE (10 minutes):
   Students present their show and tell items.
   Audience practices active listening.
   Q&A session after each presentation.
   Students complete reflection: "What did I do well?"

DIFFERENTIATION:
For Struggling Learners:
- Provide written sentence frames
- Practice one-on-one before group presentation
- Allow showing without extensive telling initially
- Partner with buddy for support

For Advanced Learners:
- Present without sentence frames
- Add more detailed descriptions
- Make presentations longer and more organized
- Ask and answer more complex questions

ASSESSMENT INDICATORS:
- Speaks in complete sentences
- Includes relevant details in description
- Speaks with adequate volume
- Stays on topic during presentation', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Show and Tell' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Conversations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Conversations' AND grade_level_min = 0),
  'Conversations Topic Guide', 'Taking turns in conversations',
  'CONVERSATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Active listening skills
- Speaking in sentences
- Understanding of taking turns

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Take turns speaking and listening in conversations
2. Stay on topic during discussions
3. Respond appropriately to others\' comments
4. Use polite conversation behaviors

KEY CONCEPTS:
- Conversations involve both talking and listening
- We take turns speaking - not interrupting
- Good conversationalists respond to what others say
- We use polite words: please, thank you, excuse me
- Eye contact and body language are part of conversations

COMMON MISCONCEPTIONS:
- Talking without listening to others
- Interrupting or not waiting for turns
- Changing topics abruptly
- Not understanding reciprocal nature of conversation

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Puppet show: Two puppets trying to talk at same time vs taking turns.
   "Which conversation worked better? Why?"

2. DIRECT INSTRUCTION (6 minutes):
   Model good conversation:
   - Person A speaks, Person B listens with eyes and ears
   - Person B responds to what Person A said
   - Back and forth exchange on same topic
   - Use of polite language
   - Show how to join and exit conversations politely

   Create "Conversation Rules" chart together.

3. GUIDED PRACTICE (10 minutes):
   Practice conversations with teacher modeling.
   Use talking object (ball, stick) - only person holding it talks.
   Role play different conversation scenarios.
   Practice conversation starters: "Did you know...?" "I noticed..."
   Give feedback on conversation skills.

4. INDEPENDENT PRACTICE (7 minutes):
   Partner conversations on assigned topics.
   Small group discussion circles.
   Free play with conversation monitoring.
   Conversation games (e.g., topic chain, storytelling circles).

DIFFERENTIATION:
For Struggling Learners:
- Practice conversations in pairs first
- Use visual cues for taking turns (turn-taking cards)
- Provide conversation scripts initially
- Practice with very structured topics

For Advanced Learners:
- Lead group conversations
- Practice more complex turn-taking in larger groups
- Introduce topics and maintain discussions
- Help peers develop conversation skills

ASSESSMENT INDICATORS:
- Takes turns speaking without constant reminders
- Listens when others are speaking
- Stays on topic during conversations
- Uses polite conversation language', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Conversations' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Sharing Ideas
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Sharing Ideas' AND grade_level_min = 0),
  'Sharing Ideas Topic Guide', 'Expressing thoughts and ideas to the class',
  'SHARING IDEAS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Speaking in sentences
- Confidence in small group settings
- Active listening skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Express ideas and opinions to the class
2. Organize thoughts before speaking
3. Speak with confidence in front of peers
4. Support ideas with reasons or examples

KEY CONCEPTS:
- Everyone has ideas worth sharing
- We can express our thoughts and opinions
- Sharing ideas helps everyone learn
- It\'s okay if others have different ideas
- We support our ideas with reasons ("because...")

COMMON MISCONCEPTIONS:
- Believing their ideas aren\'t important
- Fear of speaking in front of the group
- Not organizing thoughts before sharing
- Thinking everyone must agree with them

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Everyone, think of your favorite animal. Now let\'s share our ideas!"
   Celebrate diversity of ideas: "Look at all our different thoughts!"

2. DIRECT INSTRUCTION (7 minutes):
   Model thinking aloud: "I think... because..."
   Show how to organize an idea:
   - State the idea: "I think we should..."
   - Give a reason: "because..."
   - Add an example: "Like when..."

   Demonstrate confident body language: stand tall, speak clearly.
   Show sentence starters: "I think..." "In my opinion..." "I believe..."

3. GUIDED PRACTICE (10 minutes):
   Think-Pair-Share: students share ideas with partner first.
   Use "talking chips" - everyone shares once before anyone shares twice.
   Practice with low-stakes topics: favorite food, game, color.
   Teacher validates and builds on each idea shared.
   Class practices respectful listening.

4. INDEPENDENT PRACTICE (8 minutes):
   Students share ideas during class discussions.
   "Idea of the Day" sharing time.
   Small group brainstorming sessions.
   Draw and share ideas visually.

DIFFERENTIATION:
For Struggling Learners:
- Share in small groups before whole class
- Provide sentence frames for expressing ideas
- Use pictures to help organize thoughts
- Allow extra think time before sharing

For Advanced Learners:
- Share more complex ideas
- Explain reasoning in detail
- Ask questions about others\' ideas
- Lead small group discussions

ASSESSMENT INDICATORS:
- Volunteers to share ideas with class
- Expresses ideas in complete thoughts
- Provides reasons for opinions
- Speaks with confidence and clarity', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sharing Ideas' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PHONICS FOUNDATIONS - ADDITIONAL TOPICS (5 topics)
-- ============================================================================

-- Letter-Sound Correspondence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Letter-Sound Correspondence' AND grade_level_min = 0),
  'Letter-Sound Correspondence Topic Guide', 'Matching letters with their sounds',
  'LETTER-SOUND CORRESPONDENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Letter recognition (most or all letters)
- Phonemic awareness (sound isolation)
- Understanding that letters represent sounds

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Match each letter to its corresponding sound
2. Identify letters by their sounds
3. Distinguish between letter names and letter sounds
4. Apply letter-sound knowledge to reading simple words

KEY CONCEPTS:
- Each letter represents one or more sounds
- Letter names and letter sounds are different
- Consonant sounds are more consistent than vowel sounds
- Letter-sound knowledge is key to reading and spelling
- We can use letter sounds to read words

COMMON MISCONCEPTIONS:
- Saying letter names instead of sounds
- Thinking some letters don\'t make sounds
- Confusing similar sounds (b/p, d/t, m/n)
- Not understanding short vs long vowel sounds

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Letters are like secret codes! Each one tells us a sound. Let\'s crack the code!"
   Show a few letters and make their sounds together.

2. DIRECT INSTRUCTION (10 minutes):
   Introduce letters systematically (common consonants first: m, s, t, p, a, n):
   - Show letter card
   - Say the sound (not the name)
   - Connect to a picture: "M says /m/ like moon"
   - Students repeat the sound
   - Practice with keywords for each letter

   Use multisensory approach: see, hear, say, write.

3. GUIDED PRACTICE (8 minutes):
   Students identify letters when teacher makes sounds.
   Match letter cards to picture cards (same initial sound).
   Skywrite letters while making their sounds.
   Play "I Spy" with letter sounds: "I spy something starting with /s/."
   Begin blending sounds into simple VC or CVC words.

4. INDEPENDENT PRACTICE (7 minutes):
   Students sort pictures by initial letter sound.
   Match uppercase and lowercase letters while saying sounds.
   Write letters in sand/shaving cream while saying sounds.
   Use letter-sound cards for independent practice.

DIFFERENTIATION:
For Struggling Learners:
- Introduce letters more slowly (2-3 per week)
- Use very clear keyword pictures
- Provide mnemonics for remembering sounds
- Focus on continuous sounds first (/m/, /s/, /f/)

For Advanced Learners:
- Learn all letters quickly and begin reading
- Understand that some letters make multiple sounds
- Read CVC words using letter-sound knowledge
- Explore digraphs and blends

ASSESSMENT INDICATORS:
- Produces correct sound for each letter
- Identifies letters by their sounds
- Does not confuse letter names with sounds
- Applies letter-sound knowledge to decode words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Letter-Sound Correspondence' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- CVC Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'CVC Words' AND grade_level_min = 0),
  'CVC Words Topic Guide', 'Reading consonant-vowel-consonant words',
  'CVC WORDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Letter-sound correspondence for common letters
- Sound blending skills
- Sound segmentation abilities

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read simple CVC words (consonant-vowel-consonant)
2. Blend three sounds together to read words
3. Recognize short vowel sounds in CVC words
4. Write simple CVC words using sound-spelling knowledge

KEY CONCEPTS:
- CVC words follow the pattern: consonant-vowel-consonant
- We blend three sounds left to right to read them
- Short vowel sounds are used in CVC words
- Examples: cat, dog, sit, run, mop
- CVC words are the building blocks of reading

COMMON MISCONCEPTIONS:
- Adding extra sounds (/c/ /a/ /t/ = "cat-uh")
- Confusing short and long vowel sounds
- Skipping sounds when blending
- Reading words from right to left

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Today you\'re going to read REAL words all by yourselves!"
   Show excitement about their reading readiness.

2. DIRECT INSTRUCTION (10 minutes):
   Model reading CVC words with transparency:
   - Point to each letter left to right: "c-a-t"
   - Say each sound: "/c/ /a/ /t/"
   - Blend smoothly: "cat!"
   - Confirm meaning: "Cat - like a furry pet that meows!"

   Use sound boxes to show three-sound structure.
   Practice multiple examples: sat, pin, hot, rug.
   Emphasize short vowel sounds clearly.

3. GUIDED PRACTICE (10 minutes):
   Students read CVC words together using pointers.
   Use word families: cat, bat, sat, mat.
   Change one letter to make new words (substitution).
   Play word-building games with letter tiles.
   Read CVC words in simple sentences: "The cat ran."

4. INDEPENDENT PRACTICE (7 minutes):
   Students read CVC word lists independently.
   Match CVC words to pictures.
   Build and read CVC words with magnetic letters.
   Write CVC words from dictation.

DIFFERENTIATION:
For Struggling Learners:
- Use same word family repeatedly
- Provide sound boxes for every word
- Allow extra blending time
- Use picture support for meaning

For Advanced Learners:
- Read CVC words in decodable sentences
- Write CVC words independently
- Read nonsense CVC words to show true decoding
- Begin CCVC and CVCC words (blends)

ASSESSMENT INDICATORS:
- Accurately reads unfamiliar CVC words
- Blends sounds smoothly without adding sounds
- Recognizes and uses short vowel sounds
- Applies CVC knowledge to spelling', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'CVC Words' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Word Families
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Word Families' AND grade_level_min = 0),
  'Word Families Topic Guide', 'Reading words with common endings',
  'WORD FAMILIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- CVC word reading
- Sound blending and segmentation
- Initial sound isolation and substitution

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify and read common word families (-at, -an, -ig, -op, -ug, etc.)
2. Recognize the pattern within word families
3. Generate new words by changing the initial sound
4. Use word family knowledge to read unfamiliar words

KEY CONCEPTS:
- Word families are groups of words with the same ending
- The ending rime stays the same; the onset (beginning) changes
- Learning word families helps us read many words quickly
- Common families: -at, -an, -ad, -ag, -ap, -ig, -in, -it, -op, -ot, -ug
- If you can read "cat," you can read "bat," "sat," "mat"

COMMON MISCONCEPTIONS:
- Trying to blend the whole word instead of onset + rime
- Not recognizing the consistent pattern
- Confusing similar rimes (-at vs -ap)
- Thinking each word must be memorized separately

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Rhyme game: "Cat, hat, bat, mat - they all rhyme! They\'re in the same word family!"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce one word family thoroughly (start with -at):
   - Show the rime: "-at"
   - Read it together: "/a/ /t/ = at"
   - Add different onsets: "c-at, b-at, s-at, m-at, r-at, f-at"
   - Show how all words share the same ending
   - Use word family ladder or slider
   - Read all words in the family

3. GUIDED PRACTICE (10 minutes):
   Students build words in the family using letter tiles.
   Read word family lists together.
   Sort words into correct families.
   Play "Word Family Bingo."
   Create word family wheels (spin to change onset).
   Write word family words.

4. INDEPENDENT PRACTICE (7 minutes):
   Students complete word family worksheets.
   Match rhyming pictures to word families.
   Write lists of words in specific families.
   Read decodable texts featuring target word families.

DIFFERENTIATION:
For Struggling Learners:
- Focus on one family at a time for longer
- Use very clear visual supports (word sliders)
- Provide letter tiles for all activities
- Practice with fewer words per family

For Advanced Learners:
- Work with multiple word families simultaneously
- Read and write words in connected text
- Create word family poems or stories
- Explore less common word families

ASSESSMENT INDICATORS:
- Reads word family words fluently
- Generates new words in a family independently
- Recognizes the onset-rime pattern
- Applies word family knowledge to unknown words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Word Families' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Sight Words Level 1
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Sight Words Level 1' AND grade_level_min = 0),
  'Sight Words Level 1 Topic Guide', 'Reading high-frequency words: the, a, I, is, to',
  'SIGHT WORDS LEVEL 1 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Letter recognition
- Understanding that words carry meaning
- Beginning decoding skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize and read the words: the, a, I, is, to
2. Read these sight words automatically (within 1-2 seconds)
3. Locate sight words in connected text
4. Use sight words in writing

KEY CONCEPTS:
- Sight words are high-frequency words we see often
- Some sight words are not phonetically regular
- We must recognize sight words instantly by sight
- Sight word knowledge makes reading smoother
- These five words appear in almost every book

COMMON MISCONCEPTIONS:
- Trying to sound out irregular sight words
- Confusing similar sight words (a/I, is/in)
- Not achieving automaticity (still sounding out)
- Spelling sight words phonetically

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "These are magic words that appear in almost every book! Learn them and you can read so many stories!"

2. DIRECT INSTRUCTION (8 minutes):
   Introduce each word explicitly:
   - THE: "This word is \'the.\' It appears all the time! Say it: the."
   - Show the word in different fonts and sizes
   - Discuss meaning and usage
   - Repeat with: a, I, is, to

   Use multisensory techniques:
   - Rainbow write the words
   - Trace in air, sand, on back
   - Chant the spelling: "t-h-e spells the!"

3. GUIDED PRACTICE (10 minutes):
   Flash card practice - whole group
   Find sight words in big books and charts
   Word hunt in the classroom
   Build sight words with letter tiles
   Play sight word games (BINGO, memory, go fish)
   Read simple sentences with sight words: "I see a cat."

4. INDEPENDENT PRACTICE (7 minutes):
   Students practice sight word flash cards independently
   Complete sight word worksheets (trace, write, find)
   Read decodable texts featuring these sight words
   Write sentences using sight words

DIFFERENTIATION:
For Struggling Learners:
- Introduce one word at a time
- Use larger, clearer fonts
- Provide more repetition and practice
- Use tactile letter tracing

For Advanced Learners:
- Learn all five words quickly
- Read sentences and short texts using sight words
- Move to Level 2 sight words
- Write creative sentences using all five words

ASSESSMENT INDICATORS:
- Reads each sight word within 1-2 seconds
- Recognizes sight words in different contexts
- Spells sight words correctly
- Uses sight words when writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sight Words Level 1' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Sight Words Level 2
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Sight Words Level 2' AND grade_level_min = 0),
  'Sight Words Level 2 Topic Guide', 'Reading more sight words: and, can, go, we, see',
  'SIGHT WORDS LEVEL 2 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Mastery of Level 1 sight words (the, a, I, is, to)
- CVC word reading ability
- Understanding of automatic word recognition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize and read the words: and, can, go, we, see
2. Read all Level 1 and Level 2 sight words automatically
3. Use sight words to read simple sentences fluently
4. Incorporate sight words in writing

KEY CONCEPTS:
- These sight words are also very common in texts
- Some are decodable (can), some are irregular (see)
- Knowing 10 sight words allows reading many sentences
- Sight words + CVC knowledge = reading ability
- Automaticity is the goal (no sounding out)

COMMON MISCONCEPTIONS:
- Forgetting previously learned sight words
- Confusing we/see, go/no
- Not reading with automaticity yet
- Reversing letters in sight words (go/og)

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Review Level 1 words quickly: "You already know five magic words! Now let\'s learn five more!"
   Show how many sentences they can now read: "I can go. We can see the cat."

2. DIRECT INSTRUCTION (8 minutes):
   Introduce each new sight word:
   - Present word card: "and"
   - Discuss meaning: "\'And\' connects things: cats and dogs"
   - Spell together: "a-n-d spells and"
   - Note decodability: "\'Can\' follows CVC pattern! \'See\' has two e\'s."

   Use the same multisensory approach:
   - Write in different ways
   - Chant spelling
   - Find in environment

3. GUIDED PRACTICE (10 minutes):
   Flash all 10 sight words (Levels 1 & 2)
   Read sentences using both levels: "I can see a cat and a dog."
   Word sorts: Level 1 vs Level 2
   Sight word sentence building
   Partner reading with sight word texts
   Sight word games incorporating all 10 words

4. INDEPENDENT PRACTICE (7 minutes):
   Individual flash card practice
   Write sentences using 5+ sight words
   Read decodable books featuring these words
   Complete sight word activities (trace, match, use)

DIFFERENTIATION:
For Struggling Learners:
- Continue with Level 1 if not mastered
- Introduce Level 2 words one at a time
- Provide word cards for reference
- Use picture cues temporarily

For Advanced Learners:
- Read longer texts with sight words
- Write creative stories using all sight words
- Begin learning additional high-frequency words
- Help peers practice sight words

ASSESSMENT INDICATORS:
- Reads all 10 sight words (Levels 1 & 2) automatically
- Does not confuse similar sight words
- Uses sight words correctly in writing
- Reads simple sentences with sight words fluently', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sight Words Level 2' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING COMPREHENSION - ADDITIONAL TOPICS (5 topics)
-- ============================================================================

-- Story Setting
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Story Setting' AND grade_level_min = 0),
  'Story Setting Topic Guide', 'Identifying where and when stories take place',
  'STORY SETTING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Story listening experience
- Understanding of basic locations (home, school, park, etc.)
- Concept of time (day/night, seasons)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify where a story takes place (setting - place)
2. Identify when a story takes place (setting - time)
3. Use pictures and text clues to determine setting
4. Understand that setting is an important story element

KEY CONCEPTS:
- Setting is where and when a story happens
- Authors use words and pictures to show setting
- Setting can be real or imaginary
- Setting helps us understand the story better
- Stories can have different settings throughout

COMMON MISCONCEPTIONS:
- Confusing setting with plot (what happens)
- Only focusing on place, ignoring time
- Not using picture clues for setting
- Thinking setting must be realistic

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Close your eyes. Imagine you\'re on a beach. What do you see? Hear? Feel? That\'s a setting!"
   Open eyes: "Settings make stories come alive in our minds!"

2. DIRECT INSTRUCTION (7 minutes):
   Read a simple story with clear setting.
   Stop and identify:
   - WHERE: "This story takes place at the zoo. How do we know? Look at the pictures!"
   - WHEN: "It\'s daytime. The sun is shining!"

   Model thinking aloud about setting clues.
   Create a "Setting Chart": Where? | When?
   Show multiple story settings from different books.

3. GUIDED PRACTICE (8 minutes):
   Read several short stories together.
   Students identify setting using pictures and words.
   Complete setting charts for each story.
   Compare settings: "This story is at school, this one is at home."
   Act out settings: create the place with movement/props.

4. INDEPENDENT PRACTICE (7 minutes):
   Students draw settings from familiar stories.
   Match stories to setting pictures.
   Look through books and identify settings.
   Describe setting of a story in their own words.

DIFFERENTIATION:
For Struggling Learners:
- Use stories with very obvious visual settings
- Focus on "where" before adding "when"
- Provide pictures to choose from
- Use familiar settings (classroom, home)

For Advanced Learners:
- Identify setting changes within one story
- Describe settings with detailed language
- Compare settings across multiple stories
- Create their own story settings

ASSESSMENT INDICATORS:
- Correctly identifies where story takes place
- Identifies when story takes place
- Uses picture and text clues
- Can explain how they identified the setting', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Story Setting' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Retelling Stories
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Retelling Stories' AND grade_level_min = 0),
  'Retelling Stories Topic Guide', 'Retelling familiar stories with key details',
  'RETELLING STORIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Story listening comprehension
- Understanding of beginning, middle, end
- Basic sequencing skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Retell familiar stories including key details
2. Retell events in correct sequence
3. Include characters, setting, and main events
4. Use story language and vocabulary when retelling

KEY CONCEPTS:
- Retelling means telling the story again in our own words
- Good retellings include beginning, middle, and end
- We include the important parts, not every detail
- Retelling shows we understood the story
- We can use pictures to help us retell

COMMON MISCONCEPTIONS:
- Retelling every tiny detail instead of key events
- Mixing up the order of events
- Leaving out important story elements
- Adding details not in the original story

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Have you ever told someone about a movie you watched? That\'s retelling! Today we\'ll practice retelling stories!"

2. DIRECT INSTRUCTION (8 minutes):
   Read a simple, familiar story (e.g., "The Three Little Pigs").
   Model retelling using structure:
   - Beginning: "First, the three little pigs each built a house..."
   - Middle: "Then, the wolf came and blew down two houses..."
   - End: "Finally, the pigs were safe in the brick house."

   Show how to use:
   - Sequence words: first, next, then, finally
   - Story elements: characters, setting, problem, solution
   - Picture cues for memory

3. GUIDED PRACTICE (10 minutes):
   Read a new story together.
   Create retelling rope/chain: each bead = one event.
   Students help retell with teacher support.
   Use story gloves: each finger represents a story element.
   Practice retelling in pairs with picture support.
   Act out the story as a group (dramatization).

4. INDEPENDENT PRACTICE (7 minutes):
   Students retell familiar stories using picture cards.
   Draw three pictures: beginning, middle, end.
   Use props to retell stories independently.
   Record retellings on tablet or audio recorder.

DIFFERENTIATION:
For Struggling Learners:
- Use very short, simple stories
- Provide picture sequence cards
- Retell same story multiple times
- Allow puppet or toy support for retelling

For Advanced Learners:
- Retell longer, more complex stories
- Include more detailed descriptions
- Retell stories without picture support
- Compare different versions of same story

ASSESSMENT INDICATORS:
- Includes beginning, middle, and end
- Retells events in correct sequence
- Includes key story elements (characters, setting, events)
- Uses appropriate story vocabulary', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Retelling Stories' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Text-to-Self Connections
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Text-to-Self Connections' AND grade_level_min = 0),
  'Text-to-Self Connections Topic Guide', 'Connecting stories to personal experiences',
  'TEXT-TO-SELF CONNECTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Story comprehension
- Ability to recall personal experiences
- Speaking in complete sentences

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify connections between stories and their own lives
2. Share personal experiences related to story events
3. Explain how a story reminds them of something
4. Understand that making connections helps comprehension

KEY CONCEPTS:
- Text-to-self means "this reminds me of my life"
- Stories can remind us of our experiences, feelings, people
- Making connections helps us understand and remember stories
- Everyone makes different connections based on their lives
- Connections deepen our engagement with reading

COMMON MISCONCEPTIONS:
- Making connections that are too vague or unrelated
- Losing focus on the story while sharing connections
- Thinking connections must be exactly the same
- Not understanding how connections help comprehension

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Share a personal connection: "When I read about the character going to the beach, it reminded me of when I went to the beach with my family!"
   "Has a story ever reminded you of your life?"

2. DIRECT INSTRUCTION (7 minutes):
   Read a relatable story (e.g., starting school, losing a tooth, having a pet).
   Model making connections with think-aloud:
   - "This part reminds me of when..."
   - "I felt that way when..."
   - "I have a friend/family member like that character..."

   Use sentence frames: "This reminds me of..." "I can connect because..."
   Explain that connections help us understand characters\' feelings.

3. GUIDED PRACTICE (10 minutes):
   Read a story with pause points for connections.
   Students share connections using sentence frames.
   Create a connection chart: Story Event | My Connection
   Practice distinguishing good connections from unrelated thoughts.
   Share and discuss different connections to same story.

4. INDEPENDENT PRACTICE (8 minutes):
   Students draw/write connections to stories they read.
   Partner sharing: read together and share connections.
   Connection journals: record personal connections.
   Use sticky notes to mark connection points while reading.

DIFFERENTIATION:
For Struggling Learners:
- Use highly relatable stories (school, family, friends)
- Provide sentence frames for all connections
- Allow drawing instead of writing
- Make one connection per story initially

For Advanced Learners:
- Make multiple, detailed connections
- Explain how connections help understanding
- Make connections to less obvious story elements
- Record connections in writing independently

ASSESSMENT INDICATORS:
- Makes relevant connections between text and self
- Explains connections clearly
- Uses connections to deepen understanding
- Recognizes that connections are personal', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Text-to-Self Connections' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Fiction vs Nonfiction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Fiction vs Nonfiction' AND grade_level_min = 0),
  'Fiction vs Nonfiction Topic Guide', 'Distinguishing between made-up and real stories',
  'FICTION VS NONFICTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of real vs pretend
- Experience with different types of books
- Basic comprehension skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Distinguish between fiction (made-up) and nonfiction (real) texts
2. Identify characteristics of each text type
3. Understand that nonfiction teaches us facts
4. Recognize that both types of books have value

KEY CONCEPTS:
- Fiction books tell made-up stories (imaginary)
- Nonfiction books tell about real things (facts, information)
- Fiction has characters and plot, nonfiction has facts and details
- Both types of books are important and enjoyable
- We can learn from both fiction and nonfiction

COMMON MISCONCEPTIONS:
- Thinking realistic fiction is nonfiction
- Believing nonfiction can\'t have pictures
- Thinking fiction books aren\'t valuable
- Confusing narrative nonfiction with fiction

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show two books: one clearly fiction (talking animals), one clearly nonfiction (real animal photos).
   "One of these books is real, one is pretend. Which is which?"

2. DIRECT INSTRUCTION (8 minutes):
   Define each type clearly:
   - FICTION: "Made-up stories from author\'s imagination. Could not really happen."
   - NONFICTION: "True information about real things, people, places."

   Create comparison chart:
   Fiction: Make-believe, characters, story, illustrations
   Nonfiction: Real, facts, information, photographs

   Show multiple examples of each type.
   Discuss clues: photographs vs illustrations, table of contents, "true" or "facts"

3. GUIDED PRACTICE (10 minutes):
   Sort a stack of books into fiction and nonfiction piles.
   Examine books closely for clues.
   Read excerpts and identify type with reasoning.
   Play "Real or Pretend?" game with story scenarios.
   Create class anchor chart of differences.

4. INDEPENDENT PRACTICE (7 minutes):
   Students explore classroom library and sort books.
   Draw or write about one fiction and one nonfiction book.
   Find nonfiction books about topics they\'re interested in.
   Label books in book corner as F or NF.

DIFFERENTIATION:
For Struggling Learners:
- Use very obvious examples (talking animals vs real animal photos)
- Focus on one type at a time
- Provide clear visual cues
- Use simpler vocabulary (real vs pretend)

For Advanced Learners:
- Explore narrative nonfiction (true stories)
- Identify realistic fiction (could happen but didn\'t)
- Explain why they like each type
- Find examples in library independently

ASSESSMENT INDICATORS:
- Correctly identifies books as fiction or nonfiction
- Provides reasoning for classification
- Names characteristics of each type
- Shows interest in both types of texts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fiction vs Nonfiction' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Author and Illustrator
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Author and Illustrator' AND grade_level_min = 0),
  'Author and Illustrator Topic Guide', 'Understanding the roles of author and illustrator',
  'AUTHOR AND ILLUSTRATOR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Parts of a book understanding
- Awareness that books are created by people
- Interest in stories and pictures

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that authors write the words in books
2. Understand that illustrators create the pictures
3. Identify authors and illustrators on book covers
4. Recognize that some people are both author and illustrator

KEY CONCEPTS:
- Author = the person who writes the words/story
- Illustrator = the person who creates the pictures/art
- Some books have both, some have same person doing both
- Authors and illustrators work together to tell stories
- We can have favorite authors and illustrators
- Books are created by real people with names

COMMON MISCONCEPTIONS:
- Thinking illustrator writes the words
- Believing all books are written by same person
- Not understanding these are real jobs/careers
- Confusing author with narrator

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Did you know that real people create the books we love? Let\'s learn about the word writers and picture makers!"

2. DIRECT INSTRUCTION (7 minutes):
   Using several favorite class books:
   - Point to author\'s name: "This person wrote all the words in this book!"
   - Point to illustrator\'s name: "This person created all the pictures!"
   - Show books where author and illustrator are same person
   - Show books with only author (chapter books with no illustrations)
   - Show nonfiction with photographers instead of illustrators

   Discuss that these are important jobs.
   Model finding author and illustrator on cover and title page.

3. GUIDED PRACTICE (10 minutes):
   Students examine multiple books to find author and illustrator.
   Create chart of favorite books with authors and illustrators listed.
   Group books by same author or same illustrator.
   Discuss: "How can we tell who the author and illustrator are?"
   Compare illustration styles from different illustrators.

4. INDEPENDENT PRACTICE (8 minutes):
   Book hunt: find and record authors and illustrators.
   Students create their own books (they are author and illustrator!)
   Match books to their authors/illustrators.
   Draw a picture of themselves as an author or illustrator.

DIFFERENTIATION:
For Struggling Learners:
- Use the same familiar books repeatedly
- Provide books with clearly marked author/illustrator
- Focus on finding names, not yet understanding roles deeply
- Use picture cues to remember

For Advanced Learners:
- Identify favorite authors and illustrators
- Compare books by the same author or illustrator
- Research information about authors/illustrators
- Understand the collaborative process

ASSESSMENT INDICATORS:
- Can locate author and illustrator names on books
- Explains difference between author and illustrator roles
- Recognizes when same person does both jobs
- Shows awareness that books are created by people', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Author and Illustrator' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING BASICS - ADDITIONAL TOPICS (5 topics)
-- ============================================================================

-- Invented Spelling
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Invented Spelling' AND grade_level_min = 0),
  'Invented Spelling Topic Guide', 'Writing words by sounding them out',
  'INVENTED SPELLING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Letter-sound correspondence
- Sound segmentation ability
- Understanding that letters represent sounds

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use letter-sound knowledge to write words independently
2. Segment words into sounds and represent each sound with a letter
3. Take risks and attempt to spell unknown words
4. Understand that invented spelling is a developmental step

KEY CONCEPTS:
- We can write words by listening to the sounds we hear
- Each sound can be represented by one or more letters
- It\'s okay if spelling isn\'t perfect - the goal is to communicate
- Invented spelling helps us become writers before we know all spellings
- The more we write, the better our spelling becomes

COMMON MISCONCEPTIONS:
- Believing they must spell everything correctly
- Fear of writing because of spelling concerns
- Not attempting words they don\'t know
- Representing whole words with one letter

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You already know how to write words - by using the sounds you hear! Let\'s try it!"
   Model writing a word by sounds: "Cat: /c/ /a/ /t/ → c-a-t!"

2. DIRECT INSTRUCTION (8 minutes):
   Model invented spelling process think-aloud:
   - Choose a word to write: "dog"
   - Say the word slowly: "d-o-g"
   - Segment sounds: "/d/ /o/ /g/"
   - Write a letter for each sound: "d-o-g"

   Show with several examples.
   Use sound boxes to represent each sound.
   Celebrate approximations: "You heard those sounds! Great job!"
   Emphasize: communication matters more than perfection.

3. GUIDED PRACTICE (10 minutes):
   Students write words together using invented spelling.
   Say words slowly as a class, write sounds heard.
   Teacher provides positive feedback on sound representation.
   Practice with CVC words first, then more complex words.
   Share invented spellings - celebrate attempts.
   Begin simple sentences using invented spelling.

4. INDEPENDENT PRACTICE (9 minutes):
   Students write their own words using invented spelling.
   Draw and label pictures with invented spelling.
   Write simple sentences or stories.
   Keep "writing journals" with invented spelling encouraged.

DIFFERENTIATION:
For Struggling Learners:
- Provide alphabet charts for reference
- Use sound boxes for every word
- Start with simple CVC words only
- Scribe when needed, gradually release to student

For Advanced Learners:
- Write longer words and sentences
- Begin to use some conventional spellings (sight words)
- Edit invented spellings toward conventional
- Write more complex messages

ASSESSMENT INDICATORS:
- Represents sounds heard with letters
- Attempts unfamiliar words using sound knowledge
- Shows increasing sophistication in spelling
- Writes independently without fear of mistakes', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Invented Spelling' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Labeling Pictures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Labeling Pictures' AND grade_level_min = 0),
  'Labeling Pictures Topic Guide', 'Adding words to describe drawings',
  'LABELING PICTURES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Invented spelling skills
- Letter formation ability
- Understanding that words represent things

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Add labels to their drawings using invented spelling
2. Choose important objects/people to label
3. Connect pictures and words meaningfully
4. Understand that labels provide information

KEY CONCEPTS:
- Labels are words that name things in pictures
- Labels help readers understand our drawings
- We can label people, objects, actions, and places
- Labels use our invented spelling skills
- Labeled pictures communicate information clearly

COMMON MISCONCEPTIONS:
- Thinking they must label everything
- Labels must be spelled perfectly
- Pictures alone are sufficient communication
- Not understanding purpose of labels

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a detailed picture with no labels, then the same picture with labels.
   "Which picture gives us more information? Labels help us understand!"

2. DIRECT INSTRUCTION (7 minutes):
   Draw a simple picture on board (e.g., house with tree and sun).
   Model adding labels:
   - Point to house: "What is this? House! I\'ll label it: h-o-u-s" (invented spelling OK)
   - Point to tree: "t-r-e"
   - Point to sun: "s-u-n"

   Show how labels point to or touch the things they name.
   Use lines or arrows to connect labels to objects.
   Emphasize choosing the most important things to label.

3. GUIDED PRACTICE (10 minutes):
   Students draw pictures together (same topic, like "At the Park").
   As a group, decide what to label.
   Students add labels using invented spelling.
   Share pictures and read labels to partners.
   Teacher provides feedback on clarity and label placement.

4. INDEPENDENT PRACTICE (10 minutes):
   Students draw pictures of their choice.
   Add 3-5 labels to their drawings.
   Use alphabet charts and sound boxes as needed.
   Share labeled pictures with the class.

DIFFERENTIATION:
For Struggling Learners:
- Start with 1-2 labels per picture
- Provide word banks for common labels
- Allow dictation of labels initially
- Focus on simple, familiar objects

For Advanced Learners:
- Add more detailed labels (adjectives, phrases)
- Label actions, not just objects
- Create labeled diagrams (nonfiction style)
- Write sentences about labeled pictures

ASSESSMENT INDICATORS:
- Adds appropriate labels to pictures
- Uses invented spelling to write labels
- Places labels clearly near objects
- Labels enhance understanding of picture', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Labeling Pictures' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Writing Sentences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Writing Sentences' AND grade_level_min = 0),
  'Writing Sentences Topic Guide', 'Writing simple sentences with capitals and periods',
  'WRITING SENTENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Invented spelling ability
- Sentence awareness (capitals and periods)
- Speaking in complete sentences

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Write simple sentences with subjects and verbs
2. Begin sentences with capital letters
3. End sentences with periods
4. Leave spaces between words

KEY CONCEPTS:
- A sentence tells a complete thought
- Sentences start with a capital letter
- Sentences end with a period (or other punctuation)
- Words in sentences are separated by spaces
- We can write sentences about our ideas and experiences

COMMON MISCONCEPTIONS:
- Writing random words instead of complete thoughts
- Forgetting capitals and periods
- Running words together without spaces
- Thinking longer is always better

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You can talk in sentences. Now you\'ll write in sentences! Your ideas on paper!"

2. DIRECT INSTRUCTION (10 minutes):
   Model writing a sentence with think-aloud:
   - Think: "What do I want to say? \'I like pizza.\'"
   - Write capital I
   - Leave a space
   - Write "like" (using invented spelling if needed)
   - Leave a space
   - Write "pizza"
   - Add a period

   Use sentence checklist visual:
   ✓ Capital letter at the start
   ✓ Spaces between words
   ✓ Complete thought
   ✓ Period at the end

   Show multiple examples.

3. GUIDED PRACTICE (12 minutes):
   Students help compose sentences together.
   Teacher writes on board, students write on paper/whiteboards.
   Practice with sentence frames: "I see ___." "I like ___." "The ___ is ___."
   Check each sentence against the checklist.
   Use "finger spaces" technique for spacing.
   Celebrate complete, properly formatted sentences!

4. INDEPENDENT PRACTICE (10 minutes):
   Students write their own sentences (3-5 sentences).
   Draw picture to match sentence.
   Use checklist to self-check each sentence.
   Share sentences with partners or class.

DIFFERENTIATION:
For Struggling Learners:
- Provide sentence frames for all writing
- Use dotted lines or highlighted spaces for words
- Scribe student\'s sentence, then they copy
- Start with just 1-2 sentences

For Advanced Learners:
- Write multiple sentences (simple paragraphs)
- Use different sentence starters
- Add adjectives and details
- Write without sentence frames

ASSESSMENT INDICATORS:
- Writes complete sentences (subject + verb)
- Begins sentences with capital letters
- Ends sentences with periods
- Includes finger spaces between words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Sentences' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Opinion Writing Intro
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Opinion Writing Intro' AND grade_level_min = 0),
  'Opinion Writing Intro Topic Guide', 'Writing about a favorite thing and why',
  'OPINION WRITING INTRO - TOPIC TEACHING GUIDE

PREREQUISITES:
- Writing sentences with capitals and periods
- Invented spelling confidence
- Understanding of opinions vs facts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State an opinion about a favorite thing
2. Give at least one reason for their opinion
3. Use the word "because" to connect opinion and reason
4. Write opinion sentences independently

KEY CONCEPTS:
- An opinion is what we think or feel about something
- Opinions can be different from person to person
- We support opinions with reasons (why we think that way)
- "Because" is a helpful word for opinion writing
- Opinion writing structure: I think... because...

COMMON MISCONCEPTIONS:
- Stating opinion without any reason
- Confusing facts with opinions
- Thinking everyone must have same opinion
- Not understanding "because" as a connecting word

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "What\'s your favorite color? Why do you like it? Those are opinions and reasons!"
   Share teacher\'s opinion: "I think blue is the best color because it reminds me of the ocean."

2. DIRECT INSTRUCTION (8 minutes):
   Introduce opinion writing frame:
   "I think ___ is the best because ___."

   Model with think-aloud:
   - "What\'s my favorite animal? Dogs!"
   - "Why? They are friendly and fun to play with."
   - Write: "I think dogs are the best because they are friendly."

   Show multiple examples:
   - Favorite food, game, season, book
   - Each with clear "because" reason

   Create anchor chart: Opinion + Because + Reason

3. GUIDED PRACTICE (12 minutes):
   Students share opinions orally using sentence frame.
   Practice saying complete opinion sentences with "because."
   Write opinion sentences together (teacher scribes, then students write).
   Topics: favorite color, animal, food, activity.
   Draw pictures to illustrate opinions.
   Share and celebrate different opinions.

4. INDEPENDENT PRACTICE (10 minutes):
   Students write their own opinion sentences (2-3 sentences).
   Use sentence frames as needed.
   Draw pictures to match opinions.
   Share opinion writing with partners: read and discuss.

DIFFERENTIATION:
For Struggling Learners:
- Provide complete sentence frames
- Scribe student\'s opinion, then they copy
- Focus on simple favorites (color, food)
- Allow drawing with labels instead of sentences

For Advanced Learners:
- Write multiple reasons for one opinion
- Write about more complex topics
- Write opinion sentences without frames
- Begin to write simple opinion paragraphs

ASSESSMENT INDICATORS:
- States a clear opinion
- Provides at least one reason
- Uses "because" to connect opinion and reason
- Writes opinion sentences with proper conventions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Opinion Writing Intro' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Informational Writing Intro
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Informational Writing Intro' AND grade_level_min = 0),
  'Informational Writing Intro Topic Guide', 'Writing facts about a topic',
  'INFORMATIONAL WRITING INTRO - TOPIC TEACHING GUIDE

PREREQUISITES:
- Writing sentences independently
- Understanding of facts vs fiction
- Experience with nonfiction texts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Write factual sentences about a topic
2. Include true information in their writing
3. Organize facts about one topic
4. Understand the difference between opinion and informational writing

KEY CONCEPTS:
- Informational writing teaches readers facts
- Facts are true and can be proven
- We choose one topic and share facts about it
- Information can come from what we know or from books
- Informational writing is different from stories and opinions

COMMON MISCONCEPTIONS:
- Including opinions in informational writing
- Making up facts (fiction) instead of sharing real information
- Jumping between multiple topics
- Not understanding what constitutes a fact

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Did you know kindergarteners can be teachers? When we write facts, we teach others! Let\'s be teachers today!"

2. DIRECT INSTRUCTION (10 minutes):
   Choose a simple topic everyone knows about (e.g., apples).
   Model writing informational sentences:
   - "What do we know about apples? Let\'s list facts!"
   - "Apples are a fruit." (Write)
   - "Apples can be red, green, or yellow." (Write)
   - "Apples grow on trees." (Write)

   Discuss: These are all TRUE facts about apples.
   Compare to opinion: "Apples are delicious" = opinion, not fact.
   Show informational books as examples.
   Create "Fact List" before writing sentences.

3. GUIDED PRACTICE (12 minutes):
   Choose a class topic together (classroom pet, seasons, a familiar animal).
   Brainstorm facts as a group.
   Students help compose informational sentences.
   Create a class informational book/chart together.
   Illustrate facts with pictures or diagrams.
   Check: Are these facts true? Can we prove them?

4. INDEPENDENT PRACTICE (10 minutes):
   Students choose their own topics (with guidance).
   Draw picture of their topic.
   Write 2-4 fact sentences about the topic.
   Use resources (books, charts) to find facts if needed.
   Share informational writing with others.

DIFFERENTIATION:
For Struggling Learners:
- Provide very simple, familiar topics
- Use sentence frames: "___ is ___." "___ can ___."
- Allow drawing with labels of facts
- Work in small groups with teacher support

For Advanced Learners:
- Write more detailed facts
- Use informational texts for research
- Organize facts into categories
- Create informational books with multiple pages

ASSESSMENT INDICATORS:
- Writes factual (true) information
- Stays focused on one topic
- Writes multiple fact sentences
- Distinguishes facts from opinions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Informational Writing Intro' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;
