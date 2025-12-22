-- Grade 2 Reading Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 2 Reading/ELA topics
-- ============================================================================

-- ============================================================================
-- FLUENCY DEVELOPMENT (7 topics)
-- ============================================================================

-- Reading Rate
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Reading Rate' AND grade_level_min = 2),
  'Reading Rate Topic Guide', 'Reading at an appropriate pace for comprehension',
  'READING RATE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to decode grade-level words
- Recognition of high-frequency sight words
- Basic understanding of sentence structure

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read grade-level text at an appropriate pace (80-90 words per minute)
2. Adjust reading rate based on text difficulty and purpose
3. Maintain comprehension while reading fluently
4. Recognize when reading too fast or too slow affects understanding

KEY CONCEPTS:
- Reading rate is the speed at which we read text
- Good readers read at a steady, comfortable pace
- Reading too fast can hurt comprehension
- Reading too slow can make us lose the meaning
- Different texts may require different reading speeds

COMMON MISCONCEPTIONS:
- Thinking faster is always better
- Believing you must read every text at the same speed
- Not understanding the connection between rate and comprehension
- Ignoring punctuation and rushing through sentences

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Read a familiar story very slowly, then very quickly, then just right.
   "Which reading helped you understand the story best? Why?"

2. DIRECT INSTRUCTION (7 minutes):
   Model reading at different rates using a timer and familiar text.
   Show how punctuation signals when to pause.
   Demonstrate how reading too fast makes us miss important details.
   Explain that comfortable reading should sound like natural talking.

3. GUIDED PRACTICE (7 minutes):
   Practice reading short passages together at appropriate pace.
   Use a metronome or rhythmic clapping to establish steady pace.
   Have partners time each other reading the same passage.
   Discuss what felt comfortable and what was challenging.

4. INDEPENDENT PRACTICE (8 minutes):
   Students practice reading independently with timer.
   Record themselves reading and listen back.
   Track progress on personal reading rate chart.

DIFFERENTIATION:
For Struggling Learners:
- Use shorter, decodable texts for practice
- Allow extra time and repeated readings
- Focus on accuracy before rate
- Provide texts at independent reading level

For Advanced Learners:
- Challenge with more complex texts
- Practice adjusting rate for different purposes
- Explore speed reading techniques
- Read aloud to younger students to practice pacing

ASSESSMENT INDICATORS:
- Reads grade-level text at 80-90 words per minute
- Maintains comprehension at appropriate rate
- Self-monitors and adjusts pace as needed
- Shows improvement in timed readings over time', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading Rate' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Expression and Intonation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Expression and Intonation' AND grade_level_min = 2),
  'Expression and Intonation Topic Guide', 'Using voice to match the meaning of text',
  'EXPRESSION AND INTONATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of basic punctuation
- Ability to read grade-level text with accuracy
- Recognition of different emotions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use appropriate tone and volume when reading aloud
2. Match voice to character emotions and text mood
3. Emphasize important words to convey meaning
4. Use intonation to indicate questions, statements, and exclamations

KEY CONCEPTS:
- Expression means using your voice to show meaning and feeling
- Intonation is the rise and fall of your voice
- Punctuation guides how we use our voice
- Good readers make the text come alive with expression
- Expression helps listeners understand and enjoy the text

COMMON MISCONCEPTIONS:
- Thinking all sentences should be read the same way
- Ignoring punctuation marks when reading
- Being too quiet or too dramatic
- Not connecting voice to text meaning

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Read the same sentence in different ways (sad, happy, angry, scared).
   "How did my voice change the meaning?"

2. DIRECT INSTRUCTION (7 minutes):
   Model reading with and without expression.
   Show how punctuation affects voice (period vs. question mark vs. exclamation).
   Demonstrate character voices in dialogue.
   Explain how bold or italicized words get emphasis.

3. GUIDED PRACTICE (7 minutes):
   Practice sentences with different punctuation together.
   Assign character voices and read dialogue as a class.
   Take turns emphasizing different words in the same sentence.
   Use emotion cards to practice reading with feeling.

4. INDEPENDENT PRACTICE (8 minutes):
   Students practice with a partner, giving feedback on expression.
   Record themselves reading and evaluate their expression.
   Prepare a short passage to read aloud with expression.

DIFFERENTIATION:
For Struggling Learners:
- Start with single sentences before full passages
- Use scripts with explicit emotion cues
- Practice with familiar, predictable texts
- Model extensively and use echo reading

For Advanced Learners:
- Read complex texts with multiple characters
- Experiment with subtle emotional nuances
- Perform readers theater presentations
- Coach struggling readers on expression

ASSESSMENT INDICATORS:
- Uses appropriate tone and volume consistently
- Adjusts voice for punctuation and emotions
- Makes reading engaging for listeners
- Shows understanding through vocal expression', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Expression and Intonation' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Phrasing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Phrasing' AND grade_level_min = 2),
  'Phrasing Topic Guide', 'Reading in meaningful phrases and clauses',
  'PHRASING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Recognition of basic punctuation
- Understanding of sentence structure
- Ability to read connected text

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Group words into meaningful phrases while reading
2. Pause appropriately at punctuation marks
3. Recognize natural break points within sentences
4. Read smoothly without word-by-word choppy reading

KEY CONCEPTS:
- Phrasing means grouping words together when reading
- Punctuation shows where to pause
- Good readers chunk words into meaningful groups
- Phrasing makes reading sound natural like talking
- Proper phrasing improves comprehension

COMMON MISCONCEPTIONS:
- Reading word by word without grouping
- Pausing at every comma the same length
- Not pausing at end punctuation
- Breaking phrases in unnatural places

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Read a sentence word-by-word, then in phrases.
   "The dog / ran / to / the / park. VS. The dog / ran to the park."
   "Which way sounds better?"

2. DIRECT INSTRUCTION (7 minutes):
   Show how commas create natural pause points.
   Demonstrate reading prepositional phrases together.
   Model scooping phrases: draw curved lines under word groups.
   Explain that phrases are like thoughts or ideas grouped together.

3. GUIDED PRACTICE (8 minutes):
   Use slashed text showing phrase boundaries.
   Practice with echo reading, matching teacher phrasing.
   Mark phrase boundaries in short passages together.
   Choral read, focusing on smooth phrasing.

4. INDEPENDENT PRACTICE (7 minutes):
   Students scoop phrases in a new passage.
   Partner reading with focus on phrasing.
   Self-evaluate: "Did I group words smoothly?"

DIFFERENTIATION:
For Struggling Learners:
- Use pre-marked texts with phrase boundaries
- Start with shorter, simpler sentences
- Practice with familiar texts
- Use finger scooping to show phrases physically

For Advanced Learners:
- Work with complex sentences with multiple clauses
- Practice phrasing in poetry and dialogue
- Mark phrasing in unprepared texts
- Help struggling readers identify phrases

ASSESSMENT INDICATORS:
- Groups words into meaningful phrases
- Pauses appropriately at punctuation
- Reading sounds smooth and natural
- Shows improved comprehension through phrasing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Phrasing' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Punctuation Cues
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Punctuation Cues' AND grade_level_min = 2),
  'Punctuation Cues Topic Guide', 'Using punctuation to guide expression',
  'PUNCTUATION CUES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Recognition of period, question mark, exclamation point, comma
- Basic understanding of sentence types
- Ability to read simple sentences

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use periods to signal stops and declarative statements
2. Raise voice at end of questions
3. Show excitement with exclamation points
4. Pause briefly at commas
5. Read quotation marks with character voices

KEY CONCEPTS:
- Punctuation marks are signals for how to read
- Different marks tell us different things
- Periods mean stop and use a falling voice
- Question marks mean raise your voice at the end
- Exclamation points show strong feeling or excitement
- Commas mean take a short pause

COMMON MISCONCEPTIONS:
- Ignoring punctuation when reading
- Reading questions like statements
- Not distinguishing between commas and periods
- Treating all punctuation the same way

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show sentences without punctuation: "Look out"
   Add different punctuation and read each way.
   "Look out. Look out? Look out!"
   "How does punctuation change everything?"

2. DIRECT INSTRUCTION (7 minutes):
   Review each punctuation mark and its reading rule.
   Model reading sentences with exaggerated punctuation cues.
   Show how commas create brief pauses vs. periods (full stops).
   Demonstrate quotation marks with character voices.

3. GUIDED PRACTICE (7 minutes):
   Practice reading punctuation cards (sentences with various marks).
   Play "Punctuation Police" - catch reading mistakes.
   Use hand signals for different punctuation while reading.
   Mark and read dialogue with appropriate character voices.

4. INDEPENDENT PRACTICE (6 minutes):
   Read passages highlighting all punctuation marks.
   Partner reading with punctuation focus.
   Create and read sentences with different punctuation.

DIFFERENTIATION:
For Struggling Learners:
- Use color-coded punctuation marks
- Start with one punctuation type at a time
- Practice with very short sentences
- Use physical cues (hand up for questions, hands out for exclamations)

For Advanced Learners:
- Introduce semicolons, colons, and dashes
- Analyze how punctuation affects meaning
- Write sentences demonstrating punctuation mastery
- Edit texts to change meaning with punctuation

ASSESSMENT INDICATORS:
- Correctly responds to period, question mark, exclamation point
- Pauses appropriately at commas
- Adjusts voice based on punctuation
- Shows understanding through proper punctuation reading', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Punctuation Cues' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Dialogue Reading
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Dialogue Reading' AND grade_level_min = 2),
  'Dialogue Reading Topic Guide', 'Reading character dialogue with appropriate voice',
  'DIALOGUE READING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of quotation marks
- Ability to read with expression
- Recognition of dialogue tags (said, asked, shouted)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify dialogue vs. narration in text
2. Use different voices for different characters
3. Match voice to dialogue tags (whispered, yelled, asked)
4. Transition smoothly between narration and dialogue

KEY CONCEPTS:
- Dialogue is the words characters speak
- Quotation marks show what is being said
- Each character can have a different voice
- Dialogue tags tell us how the character speaks
- Good dialogue reading brings characters to life

COMMON MISCONCEPTIONS:
- Reading dialogue and narration the same way
- Using the same voice for all characters
- Ignoring dialogue tags
- Not understanding when to switch voices

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Read a conversation between two characters using two very different voices.
   "How did you know who was talking?"

2. DIRECT INSTRUCTION (7 minutes):
   Model identifying quotation marks and dialogue tags.
   Show how to assign different voice characteristics to characters.
   Demonstrate matching voice to dialogue tags (whispered vs. shouted).
   Explain reading narration in normal voice, dialogue in character voice.

3. GUIDED PRACTICE (8 minutes):
   Assign roles and read dialogue as a group.
   Practice changing voice for different dialogue tags.
   Use scripts with character names and emotions marked.
   Highlight and read dialogue vs. narration in different colors.

4. INDEPENDENT PRACTICE (7 minutes):
   Partners read stories with dialogue, switching roles.
   Students record themselves reading dialogue.
   Perform short dialogue scenes for the class.

DIFFERENTIATION:
For Struggling Learners:
- Use simple scripts with only two characters
- Provide voice characteristic cards for each character
- Practice one character at a time
- Use picture cues for characters

For Advanced Learners:
- Read texts with multiple characters
- Create character voice profiles
- Write and perform original dialogue
- Direct dialogue reading performances

ASSESSMENT INDICATORS:
- Distinguishes dialogue from narration
- Uses distinct voices for different characters
- Responds appropriately to dialogue tags
- Reads dialogue naturally and expressively', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dialogue Reading' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Poetry Reading
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Poetry Reading' AND grade_level_min = 2),
  'Poetry Reading Topic Guide', 'Reading poems with rhythm and expression',
  'POETRY READING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of rhyme and rhythm
- Ability to read with expression
- Experience listening to poems read aloud

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify and maintain rhythm in poems
2. Emphasize rhyming words appropriately
3. Use phrasing that maintains poem meaning
4. Read with expression that matches poem mood

KEY CONCEPTS:
- Poetry has rhythm like music
- Line breaks don''t always mean stops
- Rhyming words add musical quality
- Poems express feelings and create pictures
- Reading poetry requires special attention to sound

COMMON MISCONCEPTIONS:
- Stopping at the end of every line
- Reading too fast and losing rhythm
- Over-emphasizing rhymes awkwardly
- Reading poetry like regular prose

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Recite a familiar nursery rhyme with rhythm.
   Clap or tap the beat together.
   "Poetry has a special music to it!"

2. DIRECT INSTRUCTION (7 minutes):
   Model reading poetry with and without attention to rhythm.
   Show how some lines run into the next (enjambment).
   Demonstrate emphasizing rhymes naturally, not awkwardly.
   Explain how voice can match the poem''s mood.

3. GUIDED PRACTICE (8 minutes):
   Echo read poems together with rhythm.
   Clap or snap the beat while reading.
   Practice reading across line breaks smoothly.
   Use different emotions for different poems.

4. INDEPENDENT PRACTICE (7 minutes):
   Students choose and practice a poem independently.
   Perform poems for partners or small groups.
   Record poetry readings for self-evaluation.

DIFFERENTIATION:
For Struggling Learners:
- Start with very short, rhythmic poems
- Use highly predictable, repetitive poems
- Mark rhythm with symbols or underlining
- Practice with familiar nursery rhymes

For Advanced Learners:
- Explore poems with complex rhythm patterns
- Analyze how form affects meaning
- Write and perform original poems
- Memorize and recite longer poems

ASSESSMENT INDICATORS:
- Maintains rhythm while reading poetry
- Reads across line breaks when appropriate
- Uses expression that matches poem mood
- Enjoys and engages with poetry reading', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Poetry Reading' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Readers Theater
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Readers Theater' AND grade_level_min = 2),
  'Readers Theater Topic Guide', 'Performing scripts with fluency and expression',
  'READERS THEATER - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to read dialogue with expression
- Understanding of character roles
- Fluent reading of grade-level text

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read scripts fluently with appropriate pacing
2. Interpret character emotions and motivations
3. Coordinate reading with other performers
4. Use voice to convey meaning without props or movement

KEY CONCEPTS:
- Readers Theater is performed reading, not acting
- Each person reads one or more roles
- Voice and expression create the performance
- Practice and preparation make performances strong
- Working together creates a complete story

COMMON MISCONCEPTIONS:
- Thinking you need costumes and props
- Focusing on movement instead of voice
- Not preparing and practicing scripts
- Reading without connecting to character

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Perform a short Readers Theater piece with fluency.
   "Notice how the voices told the whole story!"

2. DIRECT INSTRUCTION (7 minutes):
   Explain the purpose and format of Readers Theater.
   Model character analysis: who is this person, how do they feel?
   Show how to prepare scripts (highlighting, notes).
   Demonstrate ensemble coordination.

3. GUIDED PRACTICE (10 minutes):
   Assign roles in a simple script.
   Practice as a group with multiple read-throughs.
   Give feedback on expression and timing.
   Rehearse entrances, exits, and transitions.

4. INDEPENDENT PRACTICE (9 minutes):
   Small groups practice their own scripts.
   Groups perform for each other.
   Provide peer feedback on fluency and expression.

DIFFERENTIATION:
For Struggling Learners:
- Assign shorter roles or narrator parts
- Provide extra rehearsal time
- Use simpler scripts with repetitive lines
- Allow choice of comfortable roles

For Advanced Learners:
- Assign complex characters or multiple roles
- Have them adapt stories into scripts
- Take on director/coaching roles
- Perform for other classes or parents

ASSESSMENT INDICATORS:
- Reads script fluently and expressively
- Stays in character throughout performance
- Coordinates well with other readers
- Shows preparation and practice in performance', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Readers Theater' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRAMMAR AND CONVENTIONS (10 topics)
-- ============================================================================

-- Types of Nouns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Types of Nouns' AND grade_level_min = 2),
  'Types of Nouns Topic Guide', 'Identifying common, proper, and collective nouns',
  'TYPES OF NOUNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding that nouns name people, places, things, animals
- Ability to identify nouns in simple sentences
- Recognition of capital letters

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Distinguish between common and proper nouns
2. Capitalize proper nouns correctly
3. Identify collective nouns (group names)
4. Use different types of nouns in writing

KEY CONCEPTS:
- Common nouns name any person, place, or thing (girl, city, book)
- Proper nouns name specific people, places, or things (Maria, Boston, Charlotte''s Web)
- Proper nouns always begin with capital letters
- Collective nouns name groups (team, family, class)
- Nouns can be sorted into different categories

COMMON MISCONCEPTIONS:
- Capitalizing all nouns like proper nouns
- Not capitalizing proper nouns
- Confusing when to use common vs. proper nouns
- Not recognizing collective nouns as singular

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "I have a dog. Her name is Bella."
   "What''s the difference between ''dog'' and ''Bella''?"

2. DIRECT INSTRUCTION (8 minutes):
   Define and provide examples of common nouns (city, teacher, school).
   Define and provide examples of proper nouns (New York, Mrs. Smith, Lincoln Elementary).
   Show capitalization rule for proper nouns.
   Introduce collective nouns (family, team, bunch, flock).

3. GUIDED PRACTICE (8 minutes):
   Sort noun cards into common and proper categories.
   Rewrite sentences with proper capitalization.
   Match common nouns to specific proper nouns.
   Identify collective nouns in sentences.

4. INDEPENDENT PRACTICE (6 minutes):
   Complete worksheet sorting nouns into types.
   Write sentences using all three types of nouns.
   Find and label nouns in reading passages.

DIFFERENTIATION:
For Struggling Learners:
- Start with just common vs. proper distinction
- Use picture cards with labels
- Practice with student names and familiar places
- Provide anchor charts for reference

For Advanced Learners:
- Introduce abstract nouns (honesty, freedom)
- Explore compound nouns (toothbrush, playground)
- Write paragraphs demonstrating all noun types
- Create noun category games

ASSESSMENT INDICATORS:
- Correctly identifies common nouns
- Recognizes and capitalizes proper nouns
- Understands collective noun concept
- Uses various noun types in writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Types of Nouns' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Pronouns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Pronouns' AND grade_level_min = 2),
  'Pronouns Topic Guide', 'Using pronouns to replace nouns',
  'PRONOUNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Strong understanding of nouns
- Recognition of singular and plural
- Ability to identify subjects in sentences

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define pronouns as words that replace nouns
2. Use subject pronouns correctly (I, you, he, she, it, we, they)
3. Use object pronouns correctly (me, you, him, her, it, us, them)
4. Match pronouns to their antecedents (the nouns they replace)

KEY CONCEPTS:
- Pronouns take the place of nouns
- Pronouns help us avoid repetition
- Subject pronouns do the action
- Object pronouns receive the action
- Pronouns must match the nouns they replace

COMMON MISCONCEPTIONS:
- Using "me" as a subject ("Me and John went...")
- Confusing he/him, she/her
- Not matching pronoun to noun (Sarah...he)
- Overusing pronouns until meaning is unclear

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Read: "Tom went to Tom''s house. Tom ate Tom''s dinner."
   "This sounds silly! How can we fix it?"
   Replace with: "Tom went to his house. He ate his dinner."

2. DIRECT INSTRUCTION (8 minutes):
   Define pronouns and show how they replace nouns.
   Teach subject pronouns with example sentences.
   Teach object pronouns with example sentences.
   Model matching pronouns to antecedents.

3. GUIDED PRACTICE (7 minutes):
   Replace repeated nouns with pronouns as a class.
   Complete sentences with correct pronouns.
   Identify what noun each pronoun replaces.
   Correct sentences with pronoun errors.

4. INDEPENDENT PRACTICE (7 minutes):
   Complete pronoun worksheets independently.
   Rewrite paragraph replacing nouns with pronouns.
   Circle pronouns and draw arrows to antecedents.

DIFFERENTIATION:
For Struggling Learners:
- Focus on I, he, she, they first
- Use pictures with pronoun labels
- Practice with oral sentences before written
- Provide pronoun reference chart

For Advanced Learners:
- Introduce possessive pronouns (mine, yours, hers)
- Work with pronoun agreement in complex sentences
- Identify and fix pronoun errors in writing
- Explain pronoun rules to peers

ASSESSMENT INDICATORS:
- Identifies pronouns in sentences
- Uses subject pronouns correctly
- Uses object pronouns correctly
- Matches pronouns to appropriate antecedents', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pronouns' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Verb Tenses
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Verb Tenses' AND grade_level_min = 2),
  'Verb Tenses Topic Guide', 'Using past, present, and future tense verbs correctly',
  'VERB TENSES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding that verbs show action
- Ability to identify verbs in sentences
- Recognition of time words (yesterday, today, tomorrow)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify past, present, and future tense verbs
2. Form regular past tense verbs by adding -ed
3. Use present tense verbs with correct subject agreement
4. Form future tense with "will"

KEY CONCEPTS:
- Verb tense tells when something happens
- Past tense tells what already happened
- Present tense tells what is happening now
- Future tense tells what will happen later
- Most past tense verbs add -ed (walk/walked)
- Future tense uses "will" (will walk)

COMMON MISCONCEPTIONS:
- Mixing tenses in the same sentence
- Not adding -ed for past tense
- Using "will" incorrectly
- Confusion with irregular past tense verbs

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Timeline on board: Yesterday | Today | Tomorrow
   "I walked, I walk, I will walk. When did each happen?"

2. DIRECT INSTRUCTION (8 minutes):
   Define each tense with time words.
   Show present tense: I walk, he walks
   Show past tense formation: walk + ed = walked
   Show future tense: will + walk = will walk
   Provide many examples on timeline.

3. GUIDED PRACTICE (8 minutes):
   Sort verb cards by tense.
   Change sentences from present to past to future.
   Complete sentences with correct tense.
   Identify tense in read-aloud sentences.

4. INDEPENDENT PRACTICE (6 minutes):
   Write sentences in all three tenses.
   Circle verbs and label tense in passage.
   Match verbs to time words.

DIFFERENTIATION:
For Struggling Learners:
- Use verb tense charts with visual timelines
- Practice orally before writing
- Focus on regular -ed verbs first
- Provide sentence frames

For Advanced Learners:
- Introduce some irregular past tense (went, ate, saw)
- Write stories maintaining consistent tense
- Identify and explain tense shifts
- Explore continuous tenses (is walking, was walking)

ASSESSMENT INDICATORS:
- Correctly identifies past, present, future tenses
- Forms regular past tense verbs accurately
- Uses "will" for future tense
- Maintains tense consistency in writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Verb Tenses' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Subject-Verb Agreement
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Subject-Verb Agreement' AND grade_level_min = 2),
  'Subject-Verb Agreement Topic Guide', 'Making subjects and verbs match in number',
  'SUBJECT-VERB AGREEMENT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of subjects and verbs
- Recognition of singular and plural
- Ability to identify complete sentences

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that subjects and verbs must agree in number
2. Use singular verbs with singular subjects
3. Use plural verbs with plural subjects
4. Recognize and correct agreement errors

KEY CONCEPTS:
- Singular subjects use singular verbs (The dog runs)
- Plural subjects use plural verbs (The dogs run)
- Present tense singular verbs often add -s (he walks, she talks)
- Plural verbs usually don''t add -s (they walk, we talk)
- "I" and "you" are special and use plural verb forms

COMMON MISCONCEPTIONS:
- Thinking plural verbs add -s like plural nouns
- Not recognizing "I" and "you" patterns
- Confusion with "is" vs. "are"
- Agreement errors with compound subjects

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "The cats runs. Does that sound right?"
   "The cat run. Does that sound right?"
   "Our ears help us hear what''s correct!"

2. DIRECT INSTRUCTION (8 minutes):
   Show singular/plural noun chart with matching verbs.
   Explain: one (he, she, it) = verb adds -s
   Explain: more than one (we, they) = verb with no -s
   Demonstrate with is/are, was/were examples.

3. GUIDED PRACTICE (8 minutes):
   Match subject cards to verb cards.
   Complete sentences with correct verb forms.
   Fix sentences with agreement errors.
   Identify subject-verb pairs in sentences.

4. INDEPENDENT PRACTICE (6 minutes):
   Circle correct verb in sentence choices.
   Write sentences with correct agreement.
   Find and correct agreement errors in passage.

DIFFERENTIATION:
For Struggling Learners:
- Use visual charts showing singular/plural patterns
- Practice orally first (sounds right/wrong)
- Start with is/are before other verbs
- Provide lots of examples and non-examples

For Advanced Learners:
- Work with compound subjects (Tom and Maria are...)
- Practice with tricky subjects (everyone, nobody)
- Edit their own writing for agreement
- Teach agreement rules to others

ASSESSMENT INDICATORS:
- Correctly uses singular and plural verb forms
- Identifies subject-verb agreement errors
- Applies agreement rules in writing
- Self-corrects based on what "sounds right"', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subject-Verb Agreement' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Adjectives and Adverbs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Adjectives and Adverbs' AND grade_level_min = 2),
  'Adjectives and Adverbs Topic Guide', 'Using words that describe nouns and verbs',
  'ADJECTIVES AND ADVERBS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Strong understanding of nouns and verbs
- Ability to identify describing words
- Understanding that words give details

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define adjectives as words that describe nouns
2. Define adverbs as words that describe verbs
3. Use adjectives to add detail to writing
4. Use adverbs (especially -ly adverbs) to show how actions happen

KEY CONCEPTS:
- Adjectives describe nouns (tell what kind, how many, which one)
- Adjectives answer: What kind? How many? Which one?
- Adverbs describe verbs (tell how, when, where)
- Many adverbs end in -ly (quickly, quietly, happily)
- Descriptive words make writing more interesting

COMMON MISCONCEPTIONS:
- Confusing adjectives and adverbs
- Thinking all -ly words are adverbs (lovely, friendly are adjectives)
- Not recognizing adverbs that don''t end in -ly (fast, well, soon)
- Overusing basic adjectives (good, nice, bad)

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "The dog ran." vs. "The fluffy dog ran quickly."
   "Which sentence paints a better picture?"

2. DIRECT INSTRUCTION (8 minutes):
   Define adjectives and show they describe nouns.
   Give examples: red balloon, three cookies, that book
   Define adverbs and show they describe verbs.
   Give examples: ran quickly, whispered softly, arrived early
   Show how to form adverbs by adding -ly to adjectives.

3. GUIDED PRACTICE (8 minutes):
   Sort word cards into adjective and adverb categories.
   Add adjectives to boring sentences.
   Add adverbs to simple action sentences.
   Identify adjectives and adverbs in sentences.

4. INDEPENDENT PRACTICE (6 minutes):
   Complete sentences with appropriate adjectives/adverbs.
   Rewrite paragraph adding descriptive words.
   Circle adjectives (one color) and adverbs (another color).

DIFFERENTIATION:
For Struggling Learners:
- Focus on adjectives before introducing adverbs
- Use picture cards to practice descriptions
- Provide word banks of common adjectives/adverbs
- Practice orally before written work

For Advanced Learners:
- Explore comparative and superlative forms (fast, faster, fastest)
- Identify adjectives and adverbs in literature
- Replace overused words with more precise ones
- Write descriptive paragraphs using both

ASSESSMENT INDICATORS:
- Identifies adjectives that describe nouns
- Identifies adverbs that describe verbs
- Uses adjectives to enhance writing
- Uses adverbs (including -ly adverbs) correctly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adjectives and Adverbs' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Apostrophes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Apostrophes' AND grade_level_min = 2),
  'Apostrophes Topic Guide', 'Using apostrophes for contractions and possessives',
  'APOSTROPHES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of nouns and ownership
- Familiarity with common contractions
- Basic punctuation knowledge

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use apostrophes to form contractions
2. Understand that apostrophes show missing letters
3. Use apostrophes to show possession (ownership)
4. Distinguish between contractions and possessives

KEY CONCEPTS:
- Apostrophes have two main jobs: contractions and possession
- In contractions, apostrophes replace missing letters (do not = don''t)
- In possessives, apostrophes show ownership (the dog''s bone)
- Singular possessive: add ''s (cat''s toy)
- Its (possessive) has no apostrophe; it''s (it is) has apostrophe

COMMON MISCONCEPTIONS:
- Using apostrophes for plural nouns (apple''s instead of apples)
- Confusing its and it''s
- Not knowing where to place the apostrophe
- Forgetting apostrophes in contractions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "I cant go to the store."
   "Thats my mothers car."
   "Do these look right? What''s missing?"

2. DIRECT INSTRUCTION (8 minutes):
   Explain apostrophes for contractions with examples.
   Show which letters are replaced (can + not = can''t).
   Explain apostrophes for possession (the boy''s hat).
   Demonstrate forming possessives with ''s.

3. GUIDED PRACTICE (8 minutes):
   Make contractions from word pairs.
   Show missing letters in contractions.
   Add apostrophes to show possession.
   Sort words with apostrophes: contraction or possessive?

4. INDEPENDENT PRACTICE (6 minutes):
   Complete sentences with contractions or possessives.
   Write contractions for word pairs.
   Rewrite phrases to show possession.

DIFFERENTIATION:
For Struggling Learners:
- Focus on common contractions first (can''t, don''t, won''t)
- Use contraction matching games
- Practice possessives with concrete objects
- Provide apostrophe placement guides

For Advanced Learners:
- Introduce plural possessives (dogs'' bones)
- Explore tricky contractions (won''t, let''s)
- Identify its vs. it''s in context
- Edit writing for apostrophe errors

ASSESSMENT INDICATORS:
- Correctly forms common contractions
- Uses apostrophes to show possession
- Distinguishes contraction from possessive use
- Applies apostrophe rules in writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Apostrophes' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Commas in Series
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Commas in Series' AND grade_level_min = 2),
  'Commas in Series Topic Guide', 'Using commas to separate items in a list',
  'COMMAS IN SERIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of basic punctuation
- Ability to identify items in a list
- Recognition of "and" in compound structures

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use commas to separate three or more items in a series
2. Understand the pattern: item, item, and item
3. Recognize that commas replace "and" between items
4. Apply comma rules in writing lists

KEY CONCEPTS:
- A series is a list of three or more items
- Commas separate items in a series
- Place commas after each item except the last
- Use "and" or "or" before the final item
- Commas make lists clear and easy to read

COMMON MISCONCEPTIONS:
- Not using commas with only two items (correct: no comma needed)
- Forgetting comma before "and" in some lists
- Using commas with only two items
- Putting comma after the final item

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Write: "I like pizza and apples and carrots and milk."
   "This is hard to read! How can commas help?"

2. DIRECT INSTRUCTION (7 minutes):
   Show the rule: Use commas between items in a series of three or more.
   Demonstrate: "I bought apples, oranges, and bananas."
   Explain: comma, comma, and final item
   Show how commas replace the word "and"

3. GUIDED PRACTICE (8 minutes):
   Add commas to series sentences together.
   Identify items in series.
   Write lists using correct comma placement.
   Edit sentences that need commas added.

4. INDEPENDENT PRACTICE (7 minutes):
   Complete sentences with items in series.
   Write original sentences with series.
   Add commas to passages with lists.

DIFFERENTIATION:
For Struggling Learners:
- Use visual lists with comma placement marked
- Practice with concrete items (food, colors, animals)
- Count items to ensure three or more
- Provide comma placement templates

For Advanced Learners:
- Work with series in complex sentences
- Identify series of actions or phrases
- Use series to improve descriptive writing
- Edit peer writing for comma usage

ASSESSMENT INDICATORS:
- Correctly places commas in series of three or more
- Recognizes when commas are needed in lists
- Does not use commas with only two items
- Applies comma rules in original writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Commas in Series' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Sentence Types
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Sentence Types' AND grade_level_min = 2),
  'Sentence Types Topic Guide', 'Writing statements, questions, commands, and exclamations',
  'SENTENCE TYPES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of basic punctuation marks
- Ability to identify complete sentences
- Recognition of different purposes for speaking

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify and write declarative sentences (statements)
2. Identify and write interrogative sentences (questions)
3. Identify and write imperative sentences (commands)
4. Identify and write exclamatory sentences (exclamations)

KEY CONCEPTS:
- Declarative sentences make statements and end with periods
- Interrogative sentences ask questions and end with question marks
- Imperative sentences give commands and end with periods
- Exclamatory sentences show strong emotion and end with exclamation points
- Each sentence type has a specific purpose and punctuation

COMMON MISCONCEPTIONS:
- Using wrong punctuation for sentence type
- Thinking all sentences are statements
- Confusing commands with statements
- Overusing exclamation points

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Say the same words four ways:
   "You are going home." "Are you going home?" "Go home." "Go home!"
   "How does each one feel different?"

2. DIRECT INSTRUCTION (8 minutes):
   Define declarative: tells something, uses period
   Define interrogative: asks something, uses question mark
   Define imperative: tells someone to do something, uses period
   Define exclamatory: shows strong feeling, uses exclamation point
   Provide multiple examples of each type.

3. GUIDED PRACTICE (8 minutes):
   Sort sentence cards by type.
   Add correct punctuation to sentences.
   Transform sentences from one type to another.
   Identify sentence types in a passage.

4. INDEPENDENT PRACTICE (6 minutes):
   Write one sentence of each type.
   Match sentences to types.
   Punctuate sentences correctly based on type.

DIFFERENTIATION:
For Struggling Learners:
- Focus on statements and questions first
- Use color coding for different types
- Practice orally before writing
- Provide sentence frames for each type

For Advanced Learners:
- Write paragraphs using all four types
- Analyze how sentence variety improves writing
- Convert sentences between all four types
- Identify types in authentic literature

ASSESSMENT INDICATORS:
- Correctly identifies all four sentence types
- Uses appropriate punctuation for each type
- Writes original sentences of each type
- Varies sentence types in writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sentence Types' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Combining Sentences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Combining Sentences' AND grade_level_min = 2),
  'Combining Sentences Topic Guide', 'Joining sentences using and, but, or',
  'COMBINING SENTENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of complete sentences
- Recognition of subjects and predicates
- Ability to identify related ideas

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Combine simple sentences using conjunctions (and, but, or)
2. Understand when to use each conjunction appropriately
3. Recognize compound sentences
4. Improve writing flow by combining choppy sentences

KEY CONCEPTS:
- Conjunctions connect words, phrases, and sentences
- "And" adds information
- "But" shows contrast or difference
- "Or" shows choice
- Combining sentences creates variety and flow
- Use a comma before the conjunction in compound sentences

COMMON MISCONCEPTIONS:
- Running sentences together without conjunctions
- Using only "and" for all combinations
- Forgetting commas before conjunctions
- Creating run-on sentences

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Read: "I like cats. I like dogs. I like birds. I like fish."
   "This sounds choppy! How can we fix it?"

2. DIRECT INSTRUCTION (8 minutes):
   Explain conjunctions as connecting words.
   Model using "and" to combine similar ideas.
   Model using "but" to show contrast.
   Model using "or" to show choice.
   Show comma placement before conjunction.

3. GUIDED PRACTICE (8 minutes):
   Combine sentence pairs using appropriate conjunctions.
   Choose correct conjunction for meaning (and, but, or).
   Add commas in compound sentences.
   Identify which sentences can be combined.

4. INDEPENDENT PRACTICE (6 minutes):
   Combine choppy sentences in a paragraph.
   Write original compound sentences.
   Choose and, but, or for sentence combinations.

DIFFERENTIATION:
For Struggling Learners:
- Start with just "and" combinations
- Use sentence frames with blanks
- Practice orally before writing
- Provide conjunction meaning cards

For Advanced Learners:
- Explore "so" and "because" as well
- Vary sentence structure in writing
- Identify opportunities to combine in their writing
- Teach combining strategies to peers

ASSESSMENT INDICATORS:
- Correctly combines sentences with and, but, or
- Chooses appropriate conjunction for meaning
- Uses commas before conjunctions
- Creates smoother writing by combining sentences', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Combining Sentences' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Quotation Marks
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Quotation Marks' AND grade_level_min = 2),
  'Quotation Marks Topic Guide', 'Using quotation marks for dialogue',
  'QUOTATION MARKS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of dialogue in stories
- Recognition of who is speaking in text
- Basic punctuation knowledge

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use quotation marks around exact words someone says
2. Understand that quotation marks show spoken words
3. Punctuate dialogue with commas and end marks correctly
4. Distinguish between dialogue and narration

KEY CONCEPTS:
- Quotation marks go around the exact words someone speaks
- Put quotation marks at the beginning and end of spoken words
- Commas separate dialogue from dialogue tags (he said, she asked)
- End punctuation goes inside quotation marks
- Dialogue tags tell who is speaking

COMMON MISCONCEPTIONS:
- Putting quotes around thoughts or narration
- Placing punctuation outside quotation marks
- Forgetting to close quotation marks
- Not using commas with dialogue tags

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Act out: "Hi, my name is Sarah," the teacher said.
   "Notice how quotation marks show her exact words!"

2. DIRECT INSTRUCTION (8 minutes):
   Explain quotation marks show someone''s exact words.
   Model placement: before first word and after end punctuation.
   Show comma before dialogue tag: "Hello," said Tom.
   Show comma after dialogue tag: Mom said, "Come here."
   Demonstrate with multiple examples.

3. GUIDED PRACTICE (8 minutes):
   Add quotation marks to dialogue sentences.
   Identify what should be in quotation marks.
   Practice with different dialogue tag positions.
   Punctuate dialogue correctly with commas.

4. INDEPENDENT PRACTICE (6 minutes):
   Write sentences with dialogue and quotation marks.
   Add quotation marks to passage with dialogue.
   Create conversations with correct punctuation.

DIFFERENTIATION:
For Struggling Learners:
- Use speech bubble visuals
- Practice with simple "said" tags only
- Color code quotation marks and dialogue tags
- Provide dialogue frames

For Advanced Learners:
- Use varied dialogue tags (whispered, shouted)
- Write multi-exchange conversations
- Identify dialogue in literature
- Punctuate complex dialogue correctly

ASSESSMENT INDICATORS:
- Correctly places quotation marks around dialogue
- Uses commas with dialogue tags
- Places end punctuation inside quotation marks
- Writes original dialogue with correct punctuation', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quotation Marks' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- LITERARY ELEMENTS (8 topics)
-- ============================================================================

-- Plot Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Plot Structure' AND grade_level_min = 2),
  'Plot Structure Topic Guide', 'Identifying beginning, middle, end, and problem-solution',
  'PLOT STRUCTURE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Experience with story read-alouds
- Understanding of characters and settings
- Ability to retell familiar stories

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the beginning, middle, and end of stories
2. Recognize the problem in a story
3. Identify how the problem is solved
4. Understand how events connect to create a complete story

KEY CONCEPTS:
- All stories have a structure: beginning, middle, and end
- The beginning introduces characters and setting
- The middle presents a problem or conflict
- The end shows how the problem is solved
- Events in stories are connected and build on each other

COMMON MISCONCEPTIONS:
- Thinking the beginning is just the first page
- Not recognizing the central problem
- Confusing minor events with the main problem
- Believing all stories have happy endings

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Every story is like a journey with a beginning, middle, and end!"
   Show a simple 3-part diagram.

2. DIRECT INSTRUCTION (8 minutes):
   Read a short, familiar story and map its structure.
   Identify: Beginning (who, where, when), Middle (problem), End (solution).
   Show how events connect and lead to the solution.

3. GUIDED PRACTICE (10 minutes):
   Use a story map graphic organizer together.
   Identify story parts as a class.
   Discuss how the problem creates the story.

4. INDEPENDENT PRACTICE (9 minutes):
   Complete story maps for new stories.
   Draw pictures of beginning, middle, end.

DIFFERENTIATION:
For Struggling Learners:
- Use very simple, predictable stories
- Provide story maps with pictures
- Act out story parts physically
- Use familiar fairy tales

For Advanced Learners:
- Analyze complex plots with multiple problems
- Compare plot structures across stories
- Create original stories with clear structure
- Identify rising action and climax

ASSESSMENT INDICATORS:
- Accurately identifies beginning, middle, and end
- Recognizes the main problem in stories
- Explains how problems are solved
- Uses plot structure vocabulary correctly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Plot Structure' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Note: Additional Literary Elements, Phonics, Comprehension, Vocabulary, and Writing topics
-- follow the same comprehensive teaching guide pattern with appropriate grade 2 content
