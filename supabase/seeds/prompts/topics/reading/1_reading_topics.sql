-- Grade 1 Reading Topic Prompts
-- Comprehensive teaching guides for Grade 1 Reading/ELA topics
-- Each prompt provides 500+ words of pedagogical guidance

-- ============================================================================
-- PHONICS AND WORD RECOGNITION UNIT
-- ============================================================================

-- Short Vowel Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Short Vowel Words' AND grade_level_min = 1),
  'Short Vowel Words (Grade 1) Topic Guide',
  'Teaching students to read CVC words with short vowels',
  'SHORT VOWEL WORDS - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should know all consonant sounds and recognize short vowel sounds in isolation. They should have practice blending sounds into words orally. Understanding that CVC words follow a consonant-vowel-consonant pattern is helpful. Students should be comfortable with letter-sound correspondence for most letters.

LEARNING OBJECTIVES:
- Read CVC words with short vowels accurately and fluently
- Identify the short vowel sound in the middle of CVC words
- Use blending strategies to decode unfamiliar CVC words
- Spell CVC words by segmenting sounds
- Read short vowel words in connected text

KEY CONCEPTS:
1) CVC words have a consonant, then a vowel, then a consonant (cat, bed, sit, hot, cup)
2) In CVC words, the vowel almost always makes its short sound
3) Short vowel sounds are: /ă/ apple, /ĕ/ egg, /ĭ/ igloo, /ŏ/ octopus, /ŭ/ umbrella
4) Word families share the same ending (rime) and rhyme: cat, bat, hat, sat
5) Blending means pushing sounds together smoothly to read the word

COMMON MISCONCEPTIONS:
- Confusing short vowel sounds, especially /e/ and /i/ or /o/ and /u/
- Using the vowel name instead of the short sound
- Guessing based on pictures or first letter instead of blending through the word
- Missing the middle vowel when spelling (writing "ct" for "cat")
- Difficulty blending stop consonants (like /b/, /t/) without adding "uh"

TEACHING SEQUENCE:
Begin with word families to show patterns. Start with -at words: cat, bat, sat, mat, hat, fat, rat. Students learn to use analogy: "If I can read cat, I can change the first sound to read bat." Progress through common word families: -an, -am, -ap, -ad, -ag for short a, then move to other vowels.

Use explicit blending instruction. Model "continuous blending" for words starting with continuous sounds: "mmmaaat - mat." Use "final blending" for stop consonants: "c - at - cat." Have students touch under each sound as they blend.

Build fluency through repeated reading. Create word lists sorted by vowel or word family. Time students on word reading to build automaticity. Use decodable texts that focus on practiced patterns.

Connect reading and spelling. After reading -at words, dictate words for students to spell. Use Elkonin boxes to segment sounds. Regular spelling practice reinforces reading skills.

DIFFERENTIATION:
For struggling learners: Focus on one vowel at a time until mastered. Use color-coding for vowels. Provide manipulative letters for building words. Allow extended time for blending. Use sound boxes for explicit sound-by-sound work.

For advanced learners: Introduce CVCC words (best, jump) and CCVC words (stop, flag). Work on reading short vowel words quickly without overt blending. Begin tackling exception words. Read more complex decodable texts.

VOCABULARY:
Short vowel, blend, sound, word, consonant, vowel, CVC, word family, read, decode, spell

CONNECTION TO FUTURE LEARNING:
Short vowel mastery is essential for reading fluency and provides the foundation for learning long vowel patterns. Students will compare short and long vowel sounds in words like "cap" vs. "cape." This knowledge supports reading multisyllabic words where syllables often contain CVC patterns. Strong CVC reading enables access to increasingly complex texts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Short Vowel Words' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Long Vowel Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Long Vowel Words' AND grade_level_min = 1),
  'Long Vowel Words (Grade 1) Topic Guide',
  'Teaching students to read words with silent e and vowel teams',
  'LONG VOWEL WORDS - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should read CVC words with short vowels fluently. They should understand that vowels can make different sounds. Knowledge of the vowel letter names (which are the long vowel sounds) is essential. Students should be comfortable with basic blending strategies.

LEARNING OBJECTIVES:
- Read CVCe (silent e) words accurately (cake, bike, note, cute)
- Understand that long vowels "say their name"
- Apply the silent e rule when reading
- Read common vowel team patterns (ai, ay, ee, ea, oa)
- Compare and contrast short and long vowel words

KEY CONCEPTS:
1) Long vowels "say their name" - the sound is the same as the letter name
2) In CVCe words, the silent e at the end makes the vowel say its long sound
3) Vowel teams are two vowels that work together to make one long vowel sound
4) The pattern "when two vowels go walking, the first one does the talking" works for many (but not all) vowel teams
5) The same vowel can make different sounds depending on the pattern

COMMON MISCONCEPTIONS:
- Sounding out the silent e as a separate sound
- Not recognizing when to apply the silent e rule vs. reading short vowel
- Thinking vowel teams make two sounds instead of one
- Overgeneralizing rules to exception words
- Confusing long and short vowel sounds for the same letter

TEACHING SEQUENCE:
Introduce silent e (CVCe) first as it is visually clear. Use word pairs to show the transformation: "cap" becomes "cape" when we add magic e. The e at the end is silent but has a job - it makes the vowel say its name. Practice with all vowels: made, hide, hope, cute.

Use visual cues to reinforce the pattern. Draw an arrow from silent e to the vowel. Use the term "magic e" or "bossy e" to make the rule memorable. Have students mark silent e words with a special symbol.

Introduce vowel teams after silent e is solid. Group by sound: ai/ay make long a (rain, play), ee/ea make long e (tree, eat), oa makes long o (boat). Present teams one at a time with extensive practice before adding more.

Provide comparison practice. Sort words into short vs. long vowel categories. Read minimal pairs: cap/cape, hop/hope, bit/bite. Use nonsense words to assess whether students are truly applying patterns.

DIFFERENTIATION:
For struggling learners: Focus on silent e pattern extensively before vowel teams. Use consistent visual supports and marking systems. Provide ample practice with one vowel (like long a) before introducing others. Use manipulative letters to add and remove silent e.

For advanced learners: Introduce less common vowel teams (ow as in snow, igh as in night). Read multisyllabic words with long vowel patterns. Explore exception words and why they do not follow patterns. Begin spelling dictation with long vowel words.

VOCABULARY:
Long vowel, silent e, magic e, vowel team, pattern, sound, say its name, compare, short vowel

CONNECTION TO FUTURE LEARNING:
Long vowel knowledge opens up a vast number of words for reading. Students will learn additional vowel patterns including r-controlled vowels and diphthongs. Understanding that spelling patterns signal pronunciation prepares students for more complex phonics. This knowledge supports spelling development and reading fluency in progressively difficult texts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Long Vowel Words' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Consonant Blends
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Consonant Blends' AND grade_level_min = 1),
  'Consonant Blends (Grade 1) Topic Guide',
  'Teaching students to read words with consonant blends like bl, cr, st, tr',
  'CONSONANT BLENDS - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should read CVC words fluently. They should know all individual consonant sounds. Understanding that sounds can be blended together is essential. Students should have experience with continuous blending for simple words.

LEARNING OBJECTIVES:
- Read words with initial consonant blends (bl, br, cl, cr, dr, fl, fr, gl, gr, pl, pr, sc, sk, sl, sm, sn, sp, st, sw, tr)
- Read words with final consonant blends (nd, nk, nt, mp, ft, lt, lp, st, sk)
- Blend consonant sounds without inserting a vowel between them
- Distinguish between blends and individual consonant sounds
- Apply blend knowledge to read unfamiliar words

KEY CONCEPTS:
1) A consonant blend is two or three consonants together where you hear each sound
2) Unlike digraphs, each consonant in a blend keeps its own sound
3) Common beginning blends include: bl, br, cl, cr, dr, fl, fr, gl, gr, pl, pr, sc, sk, sl, sm, sn, sp, st, sw, tr, tw
4) Common ending blends include: nd, ng, nk, nt, ft, lk, lt, mp, pt, sk, sp, st
5) Blends do not create new sounds - they are individual sounds pushed close together

COMMON MISCONCEPTIONS:
- Inserting a vowel sound between blend consonants (saying "buh-lue" for blue)
- Confusing blends with digraphs (which make one new sound)
- Only saying one consonant of the blend
- Not recognizing blends at the end of words
- Difficulty blending three-consonant clusters (str, spr, scr)

TEACHING SEQUENCE:
Begin with L-blends (bl, cl, fl, gl, pl, sl) and S-blends (sc, sk, sm, sn, sp, st, sw) as these start with continuous sounds that are easier to blend. Model blending: "bl - blend the b and l together - bl...ue - blue."

Use comparison to highlight blends. Show how "lap" becomes "slap" when we add s to the blend. Read word pairs: lip/slip, top/stop, rain/train. This emphasizes that blends add sounds without changing the word''s ending.

Introduce R-blends (br, cr, dr, fr, gr, pr, tr) after L and S-blends. These are slightly harder because /r/ can affect the following vowel. Practice with clear examples: bring, crash, drop, frog, green, prize, tree.

Address ending blends through word families and sorting. Words like "end, bend, send, spend" show the -nd blend. Progress to more complex final blends: -nk (think), -nt (went), -mp (jump), -ft (left).

DIFFERENTIATION:
For struggling learners: Focus on one blend at a time with extensive practice. Use manipulative letters to build blend words. Highlight blends in a consistent color. Practice blends in isolation before adding to words. Use kinesthetic activities (clapping for each sound).

For advanced learners: Introduce three-letter blends (str, spr, scr, squ). Work on both beginning and ending blends in the same word (stamp, blend). Read multisyllabic words with blends. Practice spelling words with blends from dictation.

VOCABULARY:
Blend, consonant, beginning, ending, sound, together, push, cluster, pattern, read, spell

CONNECTION TO FUTURE LEARNING:
Blend knowledge dramatically expands decodable vocabulary. Students will encounter blends frequently in increasingly complex texts. Understanding blends supports reading multisyllabic words where blends often appear at syllable boundaries. This knowledge is essential for spelling development and reading fluency.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Consonant Blends' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Digraphs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Digraphs' AND grade_level_min = 1),
  'Digraphs (Grade 1) Topic Guide',
  'Teaching students to read words with digraphs ch, sh, th, wh',
  'DIGRAPHS - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should read CVC words fluently and understand consonant blends. They should recognize that some letter combinations work together. Understanding the difference between a blend (each letter keeps its sound) and a digraph (letters make a new sound) will be developed. Students should be comfortable with decoding strategies.

LEARNING OBJECTIVES:
- Read words with common digraphs (ch, sh, th, wh) at the beginning and end of words
- Understand that digraphs are two letters that make one new sound
- Distinguish between digraphs and blends
- Apply digraph knowledge to decode unfamiliar words
- Spell words with digraphs correctly

KEY CONCEPTS:
1) A digraph is two letters that work together to make one new sound
2) Unlike blends, digraphs do not keep individual letter sounds - they create something new
3) Common consonant digraphs: ch (chip), sh (ship), th (this/think), wh (when)
4) The th digraph can be voiced (this, that) or unvoiced (think, thank)
5) Digraphs can appear at the beginning (chip) or end (much) of words

COMMON MISCONCEPTIONS:
- Trying to sound out each letter separately (saying "t-h" instead of /th/)
- Confusing digraphs with blends
- Not recognizing digraphs at the end of words
- Mixing up similar digraphs (ch vs. sh)
- Thinking wh always sounds different from w (in most dialects they sound the same)

TEACHING SEQUENCE:
Introduce digraphs as "letter teams that make one new sound." Contrast explicitly with blends: "In ''step,'' we hear /s/ and /t/. In ''ship,'' the s and h together make a completely new sound - /sh/."

Teach one digraph at a time with thorough practice. Start with sh as it has a distinct, consistent sound. Use picture sorts: "Does this picture word start with sh or not?" Progress to ch, then th (both sounds), and finally wh.

Highlight digraphs in text. Have students circle or highlight digraphs in words before reading. Use color-coding consistently. Create digraph word walls or personal digraph dictionaries.

Practice digraphs in all positions. Beginning: chip, ship, this, when. Ending: much, fish, with. Middle: mother, teacher. Use word building: shop → chop, think → thank.

DIFFERENTIATION:
For struggling learners: Use hand motions or signals for each digraph sound. Focus on one digraph extensively before introducing others. Provide visual digraph cards during reading. Practice digraph sounds in isolation before blending into words. Use rhyming to reinforce patterns (ship, chip, trip - which has a digraph?).

For advanced learners: Introduce additional digraphs (ck, ph, gh, kn, wr). Compare voiced and unvoiced th in context. Read multisyllabic words with digraphs (something, teacher). Practice spelling dictation with digraph words.

VOCABULARY:
Digraph, letter team, new sound, together, different, blend, beginning, ending, sound, read, spell

CONNECTION TO FUTURE LEARNING:
Digraph knowledge is essential for reading fluency as these patterns appear frequently in English. Students will learn additional digraphs and combinations. Understanding that letter combinations can represent single sounds prepares students for complex vowel patterns. This phonics knowledge supports both reading and spelling development.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Digraphs' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Sight Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Sight Words' AND grade_level_min = 1),
  'Sight Words (Grade 1) Topic Guide',
  'Teaching students to read common high-frequency words automatically',
  'SIGHT WORDS - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should have basic phonics skills and be developing decoding ability. They should understand that some words appear very frequently in text. Familiarity with the concept that not all words follow regular patterns is helpful. Students should be able to recognize some words from kindergarten instruction.

LEARNING OBJECTIVES:
- Read grade-level sight words automatically (without sounding out)
- Recognize that high-frequency words appear often in text
- Understand that some sight words have irregular spellings
- Spell high-frequency sight words correctly
- Use sight word knowledge to read connected text fluently

KEY CONCEPTS:
1) Sight words are words we recognize instantly without sounding out
2) Many sight words are high-frequency words (the most common words in English)
3) Some sight words have irregular spellings that do not follow typical phonics rules
4) Even words with regular spellings become "sight words" through repeated reading
5) Automatic sight word recognition frees up mental energy for comprehension

COMMON MISCONCEPTIONS:
- Thinking all sight words are irregular (many follow phonics patterns)
- Believing sight words cannot be decoded at all (many have some regular parts)
- Trying to memorize words without any analysis
- Confusing similar-looking words (was/saw, them/then, where/were)
- Thinking sight word learning is separate from phonics instruction

TEACHING SEQUENCE:
Combine whole-word recognition with analysis. For regular sight words (like "and," "with," "that"), use phonics to decode, then practice for automaticity. For irregular words (like "said," "was," "the"), acknowledge the tricky parts while still noting what IS regular.

Use systematic introduction with adequate practice before adding new words. Introduce 3-5 words per week with daily practice. Use flashcard drills, but also practice in sentences and texts. Keep cumulative review - never stop practicing earlier words.

Employ multi-sensory learning. Write words in sand, type on keyboards, spell aloud while writing. Use games: Bingo, Memory, Go Fish with sight words. Create personal word walls or word rings for practice.

Connect sight words to authentic reading. Point out sight words in decodable texts and trade books. Have students highlight or circle target words. The goal is automatic recognition in context, not just isolation.

DIFFERENTIATION:
For struggling learners: Reduce the number of new words per week. Use more repetition and multi-sensory practice. Focus on the highest-frequency words first. Provide individual word rings for portable practice. Color-code tricky parts of irregular words.

For advanced learners: Increase the pace of word introduction. Include words from the next grade level. Focus on spelling patterns within sight words. Use sight words as a springboard for word families and patterns.

VOCABULARY:
Sight word, high-frequency, automatic, instant, recognize, irregular, tricky, memorize, practice, fluent

CONNECTION TO FUTURE LEARNING:
Sight word automaticity is essential for reading fluency and comprehension. As students read more, their sight vocabulary expands naturally. Understanding that even irregular words often have regular components supports spelling development. A strong sight word foundation enables students to focus on meaning rather than decoding during reading.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sight Words' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING FLUENCY UNIT
-- ============================================================================

-- Reading Accuracy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Reading Accuracy' AND grade_level_min = 1),
  'Reading Accuracy (Grade 1) Topic Guide',
  'Teaching students to read words correctly without guessing',
  'READING ACCURACY - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should have basic phonics knowledge including short vowels, long vowels, blends, and digraphs. They should understand that reading involves decoding words. Some sight word knowledge is helpful. Students should be developing self-monitoring awareness.

LEARNING OBJECTIVES:
- Read grade-level text with 95%+ accuracy
- Use decoding strategies when encountering unfamiliar words
- Self-correct when words do not make sense or look right
- Distinguish between words that look similar
- Apply phonics knowledge consistently while reading

KEY CONCEPTS:
1) Accuracy means reading words correctly, exactly as they are written
2) Good readers use what they know about sounds and letters to figure out words
3) Every letter in a word matters - changing one letter changes the word
4) Readers should check that words look right AND make sense
5) Self-correction is a sign of good reading, not a mistake

COMMON MISCONCEPTIONS:
- Guessing words based on first letter or picture without looking at the whole word
- Substituting similar words without self-correcting (reading "house" for "horse")
- Reading too fast and making careless errors
- Ignoring endings like -s, -ed, -ing
- Thinking that close is good enough (it is not - accuracy matters)

TEACHING SEQUENCE:
Model accurate reading with think-alouds. "I am going to read this word carefully. I see f-r-o-g. /fr/ /og/ - frog! Let me check - does that make sense? Does it look right? Yes!"

Teach specific decoding strategies:
1) Look at all the letters, not just the first
2) Chunk the word into familiar parts
3) Try the vowel sound both ways (short and long)
4) Think about what makes sense
5) Reread to check

Use error analysis to guide instruction. Note common error patterns during reading: Are students missing endings? Confusing similar words? Not applying known phonics? Use this data to provide targeted instruction.

Practice with text at the right level. Students need 95%+ accuracy to practice fluency. If accuracy is lower, the text is too hard. Use decodable texts that match taught patterns.

DIFFERENTIATION:
For struggling learners: Use pointing to track while reading. Slow down - speed comes after accuracy. Practice with easier text to build confidence. Highlight word parts before reading. Provide immediate corrective feedback.

For advanced learners: Increase text complexity. Work on accuracy with multisyllabic words. Reduce dependency on pointing. Expect self-correction without prompting. Use more challenging decodable texts.

VOCABULARY:
Accuracy, correct, look, check, decode, strategy, self-correct, mistake, careful, word

CONNECTION TO FUTURE LEARNING:
Accuracy is the foundation of fluency - you cannot read fluently if you are reading the wrong words. Accurate reading enables comprehension because meaning is tied to exact words. Self-monitoring and self-correction habits developed now support reading development across all grades. Accurate decoding builds vocabulary as students correctly process new words.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading Accuracy' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Reading Smoothly
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Reading Smoothly' AND grade_level_min = 1),
  'Reading Smoothly (Grade 1) Topic Guide',
  'Teaching students to read sentences without stopping at each word',
  'READING SMOOTHLY - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should read words accurately at the word level. They should have automatic recognition of many sight words. Basic phonics decoding should be mostly fluent for simple patterns. Students should understand that reading should sound like talking.

LEARNING OBJECTIVES:
- Read sentences smoothly without word-by-word reading
- Group words into meaningful phrases
- Maintain appropriate reading pace (not too fast, not too slow)
- Read grade-level text at an appropriate rate (40-60 words per minute by end of year)
- Transition from "sounding out" to smooth reading

KEY CONCEPTS:
1) Smooth reading means words flow together like natural speech
2) We group words into phrases that make sense together
3) Our eyes should move ahead while our mouth says words
4) Automaticity with words allows for smooth reading
5) Reading too slowly makes it hard to understand; reading too fast causes errors

COMMON MISCONCEPTIONS:
- Thinking fast reading equals good reading (accuracy must come first)
- Pausing after every single word
- Losing comprehension while focusing on speed
- Running all words together without any pausing
- Believing smooth reading cannot be taught (it can!)

TEACHING SEQUENCE:
Model smooth reading versus choppy reading. Read the same sentence both ways: "The - cat - sat - on - the - mat" vs. "The cat sat on the mat." Ask students which sounds better and why. Let students hear the difference.

Use phrase-cued text. Print text with scoops or slashes marking phrase boundaries: "The big dog / ran to the park / to play with his ball." Practice reading in these phrases. Gradually remove scaffolds.

Implement repeated reading. Choose a short passage at the student''s instructional level. Read it multiple times across several days. Time readings and graph progress. Students see their own improvement.

Build automaticity with high-frequency words and patterns. If students must decode every word, smooth reading is impossible. Practice word reading until it becomes automatic. Use word sorts, flashcards, and games.

DIFFERENTIATION:
For struggling learners: Use easier text where most words are known. Practice very short passages. Provide more repetitions before moving on. Pair reading with a fluent partner. Focus on two-word or three-word phrases initially.

For advanced learners: Increase text complexity and length. Focus on reading longer phrases. Introduce varied texts including nonfiction. Work on adjusting rate for different purposes. Reduce the number of repetitions needed.

VOCABULARY:
Smooth, fluent, phrase, group, pace, rate, choppy, flow, natural, practice, repeat

CONNECTION TO FUTURE LEARNING:
Smooth reading is essential for comprehension because working memory can focus on meaning rather than decoding. Fluency develops through extensive practice with appropriate-level text. As students progress, they will adjust their rate for different texts and purposes. Smooth reading sets the stage for reading with expression and prosody.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading Smoothly' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Reading with Expression
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Reading with Expression' AND grade_level_min = 1),
  'Reading with Expression (Grade 1) Topic Guide',
  'Teaching students to use voice and intonation to make reading interesting',
  'READING WITH EXPRESSION - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should read with reasonable accuracy and smoothness. They should recognize basic punctuation marks (period, question mark, exclamation point). Understanding that written text represents spoken language is important. Students should enjoy listening to expressive read-alouds.

LEARNING OBJECTIVES:
- Read with appropriate intonation that matches the meaning
- Vary voice for different characters in dialogue
- Use punctuation to guide expression (pausing at periods, raising voice for questions)
- Make reading sound natural, like talking
- Engage listeners through expressive reading

KEY CONCEPTS:
1) Expression means using your voice to show the meaning and feeling of text
2) Punctuation marks give us clues about how to use our voice
3) Our voice can go up, down, louder, softer, faster, or slower
4) Reading with expression helps us AND our listeners understand better
5) Different characters might have different voices

COMMON MISCONCEPTIONS:
- Thinking expressive reading is just reading loudly
- Ignoring punctuation while reading
- Using a monotone voice because focused only on decoding
- Being too dramatic or silly when the text calls for a normal tone
- Believing expression does not matter if the words are correct

TEACHING SEQUENCE:
Model expressive reading extensively. Use read-alouds to demonstrate how voice changes with meaning. Occasionally read WITHOUT expression and ask students what was missing. Compare recordings of expressive and flat reading.

Teach punctuation as "road signs" for voice. Period = stop, voice goes down. Question mark = voice goes up at the end. Exclamation point = excited or strong voice. Comma = short pause. Practice with isolated sentences before connected text.

Use dialogue and plays. Assign character voices - the big bear sounds different than the little mouse. Readers'' theater provides authentic practice with expression. Let students hear themselves through recording and playback.

Connect expression to comprehension. "How does this character feel? How should our voice sound when we read what they say?" Understanding the emotions and meaning helps expression become natural rather than performed.

DIFFERENTIATION:
For struggling learners: Focus on punctuation recognition first. Use short sentences with clear expression cues. Echo read - teacher reads expressively, student copies. Practice with familiar texts where decoding is easy. Use hand signals to show voice going up or down.

For advanced learners: Tackle more subtle expression beyond punctuation cues. Read longer passages maintaining expression. Practice cold reads with appropriate expression. Explore how expression differs in fiction vs. nonfiction. Create audio recordings for a listening library.

VOCABULARY:
Expression, voice, tone, intonation, punctuation, period, question mark, exclamation point, feeling, character, dialogue

CONNECTION TO FUTURE LEARNING:
Expressive reading demonstrates and enhances comprehension. Students will develop more sophisticated prosodic reading as texts become more complex. Reading with expression supports oral presentation skills. The connection between expression and meaning deepens understanding of author''s craft and text interpretation.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading with Expression' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Rereading
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Rereading' AND grade_level_min = 1),
  'Rereading (Grade 1) Topic Guide',
  'Teaching students to reread text for improved understanding and fluency',
  'REREADING - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should have basic reading skills for connected text. They should understand that reading is about understanding, not just saying words. Awareness that good readers sometimes need to reread is helpful. Students should be developing metacognitive awareness about their reading.

LEARNING OBJECTIVES:
- Understand that rereading is a strategy good readers use
- Reread when something does not make sense
- Reread to improve fluency and expression
- Reread to find specific information or details
- Use rereading as an automatic self-monitoring strategy

KEY CONCEPTS:
1) Rereading means reading something again for a purpose
2) We reread when we do not understand something the first time
3) Rereading makes us faster and smoother the second time
4) Good readers reread - it is a smart strategy, not a problem
5) Each time we reread, we notice new things and understand better

COMMON MISCONCEPTIONS:
- Thinking rereading means you are a bad reader
- Never rereading even when confused
- Rereading the entire text when only one part was confusing
- Only rereading when asked to, not independently
- Thinking books should only be read once

TEACHING SEQUENCE:
Normalize rereading through modeling. "Watch me reread this sentence. I was not quite sure what it meant the first time, so I am going to read it again... Ah, now I understand!" Share that adult readers reread too.

Teach different purposes for rereading:
1) Confusion: "That did not make sense - let me reread."
2) Fluency: "I want to read that part more smoothly."
3) Details: "I need to find the answer - let me reread that part."
4) Enjoyment: "That was funny! I want to read it again!"

Practice with repeated reading of short passages. Students reread the same text 3-4 times, noticing improvement. Graph fluency progress to show that rereading works. Celebrate growth.

Build self-monitoring. Teach students to notice when they are confused. Create an anchor chart: "When to Reread: I am confused. Something did not make sense. I want to find something. I want to read it better." Use bookmarks with rereading reminders.

DIFFERENTIATION:
For struggling learners: Provide very short passages for rereading practice. Focus on one purpose at a time. Use familiar texts where decoding is not a barrier. Provide explicit prompts: "Let''s reread this part because..." Partner reading with rereading components.

For advanced learners: Teach rereading for deeper analysis. Compare first and second readings - what did you notice? Reread to gather evidence for answers. Practice rereading quickly to confirm understanding. Apply rereading strategies to more complex texts.

VOCABULARY:
Reread, again, understand, confused, make sense, smooth, fluent, purpose, find, details, strategy

CONNECTION TO FUTURE LEARNING:
Rereading is a lifelong reading strategy essential for academic success. Students will use close reading strategies that require multiple readings of complex texts. Rereading supports research skills when gathering information. This metacognitive awareness of when understanding breaks down transfers to all reading contexts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rereading' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- COMPREHENSION STRATEGIES UNIT
-- ============================================================================

-- Main Idea
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Main Idea' AND grade_level_min = 1),
  'Main Idea (Grade 1) Topic Guide',
  'Teaching students to identify what a story or text is mostly about',
  'MAIN IDEA - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should have experience with story listening and basic comprehension. They should be able to retell stories and identify key events. Understanding that texts have a purpose or central message is developing. Students should be able to distinguish between more and less important information.

LEARNING OBJECTIVES:
- Identify the main idea (what the text is mostly about) in simple texts
- Distinguish between the main idea and supporting details
- Use the question "What is this mostly about?" to find main ideas
- Identify key details that support the main idea
- State main ideas in their own words

KEY CONCEPTS:
1) The main idea is what the whole text is mostly about
2) Details are pieces of information that tell more about the main idea
3) Main ideas are broader than details - they cover the whole text
4) The main idea answers: "What is this mostly about?"
5) Details answer: "What happened?" or "What are some examples?"

COMMON MISCONCEPTIONS:
- Confusing a detail with the main idea
- Thinking the main idea must be the first sentence
- Summarizing events instead of stating the main idea
- Thinking fiction does not have main ideas (it does - theme)
- Using too many words to state the main idea (should be brief)

TEACHING SEQUENCE:
Start with concrete examples outside of reading. Show a group of items (apple, banana, orange, grapes). "What are these mostly about? Fruit!" The main idea is fruit; the individual items are details. Use many non-text examples first.

Introduce with very short texts. Use paragraphs with clear topics. Model thinking aloud: "This paragraph tells about dogs. It says dogs are good pets, dogs can learn tricks, and dogs need walks. What is it MOSTLY about? Dogs being good pets!"

Use the "umbrella" metaphor. The main idea is the umbrella - it covers everything. The details fit under the umbrella. Draw this visual with students. If something does not fit under the umbrella, it is not about this main idea.

Practice with pictures, then move to text. What is this picture mostly about? What is this page mostly about? What is this whole book mostly about? Scaffold from supported to independent practice.

DIFFERENTIATION:
For struggling learners: Use very short texts (3-5 sentences) with obvious main ideas. Provide sentence starters: "This is mostly about ___." Use pictures heavily to support understanding. Work in small groups with discussion before independent practice. Focus on narrative before informational text.

For advanced learners: Work with longer passages. Identify implied main ideas that are not directly stated. Compare main ideas across related texts. Explain how specific details support the main idea. Distinguish between main idea and theme.

VOCABULARY:
Main idea, mostly about, details, important, whole, text, paragraph, story, information, topic

CONNECTION TO FUTURE LEARNING:
Main idea identification is fundamental to reading comprehension across all content areas. Students will develop more sophisticated skills for determining central ideas and themes. This skill supports summarization, note-taking, and study skills. Understanding main ideas versus details is essential for all academic reading and writing.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Main Idea' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Story Sequence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Story Sequence' AND grade_level_min = 1),
  'Story Sequence (Grade 1) Topic Guide',
  'Teaching students to identify and retell events in order',
  'STORY SEQUENCE - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should understand basic story structure (beginning, middle, end). They should be familiar with time and sequence vocabulary (first, next, then, last). Experience with listening to and retelling stories is important. Students should be able to recall main events from stories.

LEARNING OBJECTIVES:
- Identify the sequence of events in a story
- Retell stories using correct event order
- Use sequence words (first, next, then, finally) to organize retelling
- Recognize signal words that indicate time order
- Understand that sequence affects story meaning

KEY CONCEPTS:
1) Sequence means the order in which things happen
2) Stories have events that happen in a specific order
3) Signal words help us understand sequence: first, then, next, after, finally, before, later
4) Changing the sequence would change the story
5) Beginning, middle, and end are parts of the sequence

COMMON MISCONCEPTIONS:
- Telling random events out of order
- Starting in the middle when retelling
- Including only one or two events and skipping others
- Not recognizing that order matters for meaning
- Confusing story events with personal experiences

TEACHING SEQUENCE:
Begin with three-step sequences using pictures. Show three pictures out of order (making a sandwich, brushing teeth, getting ready for bed). Have students arrange in logical order and tell what happens first, next, last.

Model retelling with explicit sequence language. After reading, use hand motions: hold up one finger for first, two for next, three for then, four for finally. Create sequence chains or flow maps as visual supports.

Practice with simple, predictable stories that have clear sequences. Use books with repeated patterns that build sequentially. After reading, create sequence cards and have students arrange them correctly while retelling.

Connect sequence to comprehension. "What would happen if the wolf blew down the stick house AFTER the brick house? Would the story work? Why not?" Help students see that sequence carries meaning.

DIFFERENTIATION:
For struggling learners: Use very short stories with 3-4 clear events. Provide picture cards for sequencing support. Focus on just "first" and "last" before middle events. Use familiar stories from repeated read-alouds. Act out sequences physically.

For advanced learners: Work with longer stories with more complex sequences. Identify flashbacks or non-linear sequences. Compare sequences across different versions of the same story. Write sequential stories with clear event order. Identify cause-and-effect within sequences.

VOCABULARY:
Sequence, order, first, next, then, after, finally, beginning, middle, end, before, later, events

CONNECTION TO FUTURE LEARNING:
Sequence understanding is essential for narrative comprehension and writing. Students will analyze more complex plot structures including flashbacks and parallel storylines. Sequential thinking supports understanding of historical events and scientific processes. Retelling skills support summarization and critical analysis of texts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Story Sequence' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Comparing Characters
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Comparing Characters' AND grade_level_min = 1),
  'Comparing Characters (Grade 1) Topic Guide',
  'Teaching students to find similarities and differences between story characters',
  'COMPARING CHARACTERS - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should be able to identify and describe characters. They should understand basic character traits and motivations. Familiarity with comparing two things (same/different) from other contexts is helpful. Students should be comfortable discussing stories and sharing observations.

LEARNING OBJECTIVES:
- Identify similarities between characters (how they are alike)
- Identify differences between characters (how they are different)
- Compare characters within the same story
- Compare characters across different stories
- Use evidence from text and illustrations to support comparisons

KEY CONCEPTS:
1) Comparing means finding how things are alike and different
2) Characters can be compared by appearance, actions, feelings, and traits
3) Venn diagrams help organize comparisons visually
4) We use evidence from the story to support our comparisons
5) Comparing characters helps us understand them better

COMMON MISCONCEPTIONS:
- Only noticing surface differences (one is big, one is small) without deeper analysis
- Struggling to find any similarities between seemingly different characters
- Making statements without text evidence
- Comparing only physical appearance, not behavior or feelings
- Thinking all protagonists are alike and all antagonists are alike

TEACHING SEQUENCE:
Start with concrete comparisons outside of stories. Compare two classroom objects, two animals, or two pictures. Model the language: "Both ___. But ___ is ___ while ___ is ___." Establish that comparing involves both similarities AND differences.

Introduce Venn diagrams with simple, familiar characters. Compare the Three Little Pigs to each other - what do they have in common? How are they different? Use pictures and words in the Venn diagram.

Expand to comparing characters across stories. "How is the wolf in The Three Little Pigs like the troll in The Three Billy Goats Gruff? How are they different?" This requires students to remember and synthesize across texts.

Model using text evidence. "I think the first little pig is lazy because he built his house quickly out of straw. The book says he wanted to play." Show students how to point to evidence that supports their comparison.

DIFFERENTIATION:
For struggling learners: Use very familiar characters from well-known stories. Provide comparison sentence frames. Focus on one dimension at a time (actions, then feelings, then traits). Use pictures and drawings heavily. Create simple T-charts before Venn diagrams.

For advanced learners: Compare more subtle character traits and motivations. Analyze character change and compare how characters develop. Compare characters from chapter books with more complex personalities. Write paragraph comparisons using evidence. Explore archetypal characters across literature.

VOCABULARY:
Compare, alike, different, same, both, character, trait, Venn diagram, evidence, similar, opposite, but, while

CONNECTION TO FUTURE LEARNING:
Character comparison is foundational for literary analysis. Students will develop more sophisticated understanding of character archetypes, foils, and complex characterization. Compare-contrast is a critical thinking skill used across all subjects. This skill supports writing comparative essays and analytical responses in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Characters' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Making Connections
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Making Connections' AND grade_level_min = 1),
  'Making Connections (Grade 1) Topic Guide',
  'Teaching students to connect texts to themselves, other texts, and the world',
  'MAKING CONNECTIONS - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should have experience with a variety of read-alouds and texts. They should be able to discuss stories and share personal experiences. Understanding that reading involves thinking is developing. Students should feel comfortable sharing connections verbally.

LEARNING OBJECTIVES:
- Make text-to-self connections (this reminds me of my life)
- Make text-to-text connections (this reminds me of another book)
- Begin making text-to-world connections (this reminds me of something in the world)
- Use connections to deepen understanding
- Distinguish between helpful connections and distracting connections

KEY CONCEPTS:
1) Good readers make connections while reading
2) Text-to-self: How does this connect to MY life?
3) Text-to-text: How does this connect to other books I know?
4) Text-to-world: How does this connect to the world around me?
5) Connections help us understand and remember what we read

COMMON MISCONCEPTIONS:
- Making connections that are so personal they distract from the text
- Thinking any connection is a good connection (must be relevant)
- Only making surface-level connections (we both have a dog!)
- Not seeing connections to other texts because they seem different
- Keeping connections private instead of sharing and discussing

TEACHING SEQUENCE:
Introduce one type of connection at a time. Start with text-to-self as it is most accessible. Model using think-alouds: "This part reminds me of when I was scared to start a new school. I felt just like this character."

Use connection stems consistently:
- "This reminds me of..."
- "I can connect to this because..."
- "This is like the book ___ because..."
- "This makes me think about..."

Create a class anchor chart for each connection type. Add examples as you read together. Have students share connections during and after read-alouds. Discuss how connections help understanding.

Teach students to evaluate connections. "Is this connection helping me understand the story better? Or is it taking me away from the story?" Practice distinguishing helpful connections from distracting ones.

DIFFERENTIATION:
For struggling learners: Focus on text-to-self connections first. Provide sentence frames for sharing. Use very relatable books about common experiences. Accept simple connections initially, then push for elaboration. Draw connections when verbal expression is difficult.

For advanced learners: Make connections at deeper thematic levels. Connect across genres and time periods. Analyze how connections enhance interpretation. Make connections to current events and issues. Write about connections in reading journals.

VOCABULARY:
Connection, remind, relate, text-to-self, text-to-text, text-to-world, similar, experience, understand, think

CONNECTION TO FUTURE LEARNING:
Making connections is a comprehension strategy used by proficient readers throughout life. Students will develop more sophisticated intertextual connections and thematic analysis. Connection-making supports critical thinking and synthesis across texts. This skill enhances engagement and retention of information across all subjects.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Making Connections' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING UNIT
-- ============================================================================

-- Writing Sentences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Writing Sentences' AND grade_level_min = 1),
  'Writing Sentences (Grade 1) Topic Guide',
  'Teaching students to write complete sentences with capitals and punctuation',
  'WRITING SENTENCES - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should be able to write individual words using phonetic spelling. They should recognize that writing communicates ideas. Understanding of basic capitalization (beginning of sentences, names) is developing. Students should have experience dictating sentences orally.

LEARNING OBJECTIVES:
- Write complete sentences that express a complete thought
- Begin sentences with capital letters
- End sentences with appropriate punctuation (. ! ?)
- Use spaces between words
- Write sentences that others can read and understand

KEY CONCEPTS:
1) A sentence expresses a complete thought - it tells who and what
2) Every sentence starts with a capital letter
3) Every sentence ends with punctuation (period, question mark, or exclamation point)
4) Words in sentences have spaces between them
5) Sentences can be statements, questions, or exclamations

COMMON MISCONCEPTIONS:
- Writing fragments instead of complete sentences
- Forgetting capital letters at the beginning
- Forgetting end punctuation
- Inconsistent spacing between words
- Running multiple sentences together without punctuation

TEACHING SEQUENCE:
Begin with oral sentence building. "Let''s make a sentence about the dog. Who or what is our sentence about? The dog. What about the dog? The dog runs. That is a complete thought!"

Use interactive writing. Compose sentences together, sharing the pen. Teacher models capitals and punctuation while students contribute letters and words. Make the conventions visible and explicit.

Practice identifying complete vs. incomplete sentences. "The big dog" - is this a sentence? No! It tells who but not what. "Ran fast" - is this a sentence? No! It tells what but not who. "The big dog ran fast" - yes! It tells who AND what.

Create checklists for sentence writing:
[ ] Does it tell who and what?
[ ] Does it start with a capital letter?
[ ] Does it end with punctuation?
[ ] Are there spaces between words?
Students can check their own writing.

DIFFERENTIATION:
For struggling learners: Use sentence frames: "The ___ is ___." Provide word banks for common words. Accept phonetic spelling while focusing on sentence structure. Practice orally before writing. Write sentences together before independent practice.

For advanced learners: Write longer sentences with details. Combine simple sentences. Use variety in sentence beginnings. Include dialogue in sentences. Write multiple related sentences.

VOCABULARY:
Sentence, complete thought, capital letter, uppercase, period, question mark, exclamation point, punctuation, space, beginning, end

CONNECTION TO FUTURE LEARNING:
Sentence writing is the foundation for all future writing. Students will learn to write varied sentences including compound and complex structures. Sentence fluency supports paragraph and essay writing. Understanding sentence structure helps with reading comprehension and grammar development.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Sentences' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Narrative Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 1),
  'Narrative Writing (Grade 1) Topic Guide',
  'Teaching students to write stories with beginning, middle, and end',
  'NARRATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should be able to write complete sentences. They should understand story structure (beginning, middle, end) from reading. Experience with oral storytelling is helpful. Students should understand sequence and be able to use time-order words.

LEARNING OBJECTIVES:
- Write stories with a clear beginning, middle, and end
- Include characters, setting, and events
- Use sequence words to organize writing (first, then, next, finally)
- Write about real or imagined experiences
- Include details that make stories interesting

KEY CONCEPTS:
1) Narrative writing tells a story about real or imagined events
2) Stories have three parts: beginning (introduces characters/setting), middle (events/problem), end (resolution/conclusion)
3) Time-order words help readers follow the sequence of events
4) Details make stories interesting and help readers picture what happens
5) Stories can be about things that really happened or things we imagine

COMMON MISCONCEPTIONS:
- Writing just one event instead of a sequence
- Not including an ending or trailing off
- Forgetting characters or setting
- Using "and then" repeatedly instead of varied transitions
- Writing lists of events without connections

TEACHING SEQUENCE:
Start with oral storytelling before writing. "Tell me about a time when..." Practice telling stories with beginning, middle, and end. Use story hands (thumb=beginning, fingers=middle events, pinky=end).

Model narrative writing explicitly. Think aloud while writing a short story. Show how to begin by introducing who and where. Show how to tell events in order. Show how to write an ending.

Use graphic organizers for planning. Simple three-box organizers (Beginning, Middle, End) help students organize before writing. Add picture boxes for drawing ideas before writing words.

Mentor texts show what narratives look like. Study picture books with clear structures. Notice how authors begin, add events, and end stories. Borrow techniques from favorite authors.

DIFFERENTIATION:
For struggling learners: Use picture-based planning. Dictate stories before writing. Provide sentence starters for each part. Focus on just three events (first, next, last). Accept drawings with labels as valid storytelling.

For advanced learners: Add multiple middle events. Include dialogue between characters. Develop character feelings and reactions. Use descriptive language. Write longer, multi-page narratives.

VOCABULARY:
Narrative, story, beginning, middle, end, character, setting, event, first, then, next, finally, happened

CONNECTION TO FUTURE LEARNING:
Narrative writing develops across all grades with increasing sophistication. Students will learn about plot development, character depth, and literary techniques. Personal narrative is foundational for memoir and creative writing. Storytelling skills support oral communication and presentation abilities.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Opinion Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Opinion Writing' AND grade_level_min = 1),
  'Opinion Writing (Grade 1) Topic Guide',
  'Teaching students to express and support their opinions in writing',
  'OPINION WRITING - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should be able to write complete sentences. They should understand the difference between facts and opinions orally. Experience sharing opinions and explaining "because" is helpful. Students should be developing the ability to support ideas with reasons.

LEARNING OBJECTIVES:
- Write opinions clearly (I think... My favorite... I like... I believe...)
- Provide at least one reason to support the opinion
- Use linking words (because, and, also)
- Write about a topic with an introduction and conclusion
- Understand that opinions need support to be convincing

KEY CONCEPTS:
1) An opinion tells what you think, like, or believe
2) Opinions are different from facts - not everyone has to agree
3) Good opinion writing gives reasons to support what you think
4) "Because" connects your opinion to your reason
5) A conclusion restates or summarizes your opinion

COMMON MISCONCEPTIONS:
- Stating opinions without any reasons
- Confusing facts with opinions
- Giving reasons that do not connect to the opinion
- Thinking everyone should agree with their opinion
- Forgetting to clearly state what the opinion is

TEACHING SEQUENCE:
Begin with oral practice. "What is your favorite animal? Tell me why." Model the structure: "My favorite animal is a dog because dogs are friendly and fun to play with." Practice opinion statements with "because."

Distinguish between facts and opinions. "The sun is hot" is a fact. "Summer is the best season" is an opinion. Sort statements into fact vs. opinion categories. Discuss how you know which is which.

Model opinion writing with think-alouds. Write about a topic using clear structure:
1) Statement of opinion: "I think recess is the best part of school."
2) Reason with "because": "I think this because we get to run and play."
3) Conclusion: "That is why recess is my favorite."

Use graphic organizers. Simple frames with boxes for opinion, reason 1, reason 2, and conclusion help students organize before writing.

DIFFERENTIATION:
For struggling learners: Use sentence frames: "I think ___ because ___." Focus on one reason before expecting multiple reasons. Provide topic choices that students feel strongly about. Accept oral opinions transcribed by adults initially.

For advanced learners: Provide multiple reasons for opinions. Anticipate and address counterarguments simply. Use more sophisticated linking words (also, another reason, most importantly). Write longer pieces with developed reasoning.

VOCABULARY:
Opinion, think, believe, favorite, because, reason, support, fact, agree, disagree, conclusion

CONNECTION TO FUTURE LEARNING:
Opinion writing develops into argumentative and persuasive writing. Students will learn to provide evidence, address counterarguments, and structure logical arguments. These skills are essential for academic writing across all content areas. Critical thinking about claims and evidence begins with simple opinion writing.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Opinion Writing' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Informational Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Informational Writing' AND grade_level_min = 1),
  'Informational Writing (Grade 1) Topic Guide',
  'Teaching students to write facts and information about topics',
  'INFORMATIONAL WRITING - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Students should be able to write complete sentences. They should understand the difference between fiction and nonfiction. Exposure to informational texts through read-alouds is helpful. Students should be curious about topics and enjoy learning facts.

LEARNING OBJECTIVES:
- Write about a topic using facts and information
- Include a topic sentence that introduces the subject
- Provide facts or details about the topic
- Write a conclusion or closing statement
- Use informational text features when appropriate (headings, labels)

KEY CONCEPTS:
1) Informational writing teaches readers about a topic
2) Informational writing uses facts, not made-up stories
3) Good informational writing is organized with a topic sentence, facts, and conclusion
4) Writers learn about topics before writing about them
5) Informational texts can include pictures, labels, and diagrams

COMMON MISCONCEPTIONS:
- Mixing facts with opinions or fiction
- Writing random facts without organization
- Not introducing the topic clearly
- Forgetting a conclusion
- Not knowing enough about the topic to write about it

TEACHING SEQUENCE:
Begin with topics students know well. "You are an expert on something! What do you know a lot about? Pets? A sport? Your family?" Everyone has expertise to share through writing.

Model informational writing structure:
1) Introduction: "Dogs are amazing pets." (Topic sentence)
2) Facts: "Dogs have four legs. Dogs can learn tricks. Dogs need food and water." (Details)
3) Conclusion: "Dogs make great friends." (Wrap up)

Teach simple research. Students can learn facts from books, videos, and observations. Create K-W-L charts (Know, Want to know, Learned). Take simple notes before writing.

Use mentor texts. Study short informational books. Notice how they introduce topics, share facts, and include features like headings or pictures. Borrow structures from mentor texts.

DIFFERENTIATION:
For struggling learners: Write about very familiar topics (themselves, family, pets). Use drawing to plan before writing. Provide fact boxes with information to include. Use sentence frames: "A ___ has ___. A ___ can ___." Accept labeled pictures as informational writing.

For advanced learners: Research unfamiliar topics using books. Include multiple paragraphs or sections. Add text features like headings and diagrams. Use more sophisticated vocabulary from research. Compare information from different sources.

VOCABULARY:
Informational, facts, topic, details, research, learn, teach, introduction, conclusion, nonfiction, true

CONNECTION TO FUTURE LEARNING:
Informational writing is crucial for academic success across all subjects. Students will learn more complex organizational structures and research skills. This genre supports report writing, research papers, and expository essays. Clear informational writing is essential for communication in school and careers.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Informational Writing' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Grade 1 Reading Topics: 17 comprehensive prompts
-- Units covered:
--   1. Phonics and Word Recognition (5 topics)
--   2. Reading Fluency (4 topics)
--   3. Comprehension Strategies (4 topics)
--   4. Writing (4 topics)
-- ============================================================================
