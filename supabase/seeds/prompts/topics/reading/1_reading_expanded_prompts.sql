-- Grade 1 Reading Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 1 Reading/ELA expanded topics
-- ============================================================================

-- ============================================================================
-- PHONICS AND WORD RECOGNITION - ADDITIONAL TOPICS (10 topics)
-- ============================================================================

-- Initial Blends
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Initial Blends' AND grade_level_min = 1),
  'Initial Blends Topic Guide', 'Reading words beginning with consonant blends',
  'INITIAL BLENDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Solid CVC word reading ability
- Individual letter-sound correspondence mastery
- Sound blending skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read words beginning with l-blends (bl, cl, fl, pl, sl)
2. Read words beginning with r-blends (br, cr, dr, fr, gr, pr, tr)
3. Blend consonant blends smoothly with vowels
4. Apply blend knowledge to decode unfamiliar words

KEY CONCEPTS:
- Consonant blends are two consonants whose sounds blend together
- Each letter in the blend keeps its own sound
- L-blends: bl, cl, fl, gl, pl, sl (with /l/ sound)
- R-blends: br, cr, dr, fr, gr, pr, tr (with /r/ sound)
- Blends appear at the beginning of words

COMMON MISCONCEPTIONS:
- Separating blend sounds too much (/b/ pause /l/)
- Confusing blends with digraphs (where sounds combine)
- Omitting one sound in the blend
- Adding an extra vowel sound between consonants

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Listen to these words: blue, clap, flag. Did you hear two sounds together at the beginning?"
   Demonstrate blending sounds smoothly.

2. DIRECT INSTRUCTION (10 minutes):
   Introduce l-blends first:
   - Model bl: "/b/ /l/ blend together → /bl/ as in blue"
   - Show with letter tiles: push b and l together
   - Practice: bl + a = bla, bl + ock = block
   - Repeat with other l-blends

   Then introduce r-blends following same pattern.
   Use continuous blending: don\'t stop between sounds.
   Write words and underline the blend part.

3. GUIDED PRACTICE (12 minutes):
   Students read blend words together: block, clap, flag, plot, slip.
   Sort words by their initial blend.
   Build words using letter tiles: change the blend (bl-ock → cl-ock).
   Read sentences with blend words: "The frog is on a rock."
   Play blend word BINGO.

4. INDEPENDENT PRACTICE (10 minutes):
   Students read word lists with initial blends.
   Match blend words to pictures.
   Complete blend word sorts (l-blends vs r-blends).
   Read decodable texts featuring blend words.

DIFFERENTIATION:
For Struggling Learners:
- Focus on one blend family at a time (l-blends only first)
- Use exaggerated continuous blending
- Provide blend cards for visual reference
- Practice each blend with multiple words before moving on

For Advanced Learners:
- Work with all blends simultaneously
- Read multisyllabic words with blends
- Write words with initial blends
- Identify blends in authentic texts

ASSESSMENT INDICATORS:
- Accurately reads words with initial blends
- Blends consonants smoothly without pausing
- Can identify the blend in spoken words
- Applies blend knowledge to new words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Initial Blends' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Final Blends
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Final Blends' AND grade_level_min = 1),
  'Final Blends Topic Guide', 'Reading words ending with consonant blends',
  'FINAL BLENDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Initial blends mastery
- CVC word fluency
- Final sound isolation skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read words ending with nd, nt, mp, nk, st, ft
2. Hear and identify final blends in words
3. Distinguish between initial and final blends
4. Read and spell words with final blends

KEY CONCEPTS:
- Final blends come at the end of words
- Common final blends: nd, nt, mp, nk, st, ft, sk, lp, lt
- Each consonant sound is pronounced
- Final blends follow the vowel sound
- Many high-frequency words contain final blends

COMMON MISCONCEPTIONS:
- Omitting the second sound in final blends
- Not clearly articulating both consonants
- Confusing similar final blends (nd vs nt)
- Reading final blends as initial blends

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Let\'s listen for sounds at the END of words today!"
   Say: "hand, bent, jump, sink, fast, left" - emphasize endings.

2. DIRECT INSTRUCTION (10 minutes):
   Introduce final blends systematically:
   - Start with nd: ha-nd, la-nd, se-nd
   - Model: "I hear /n/ and /d/ at the end of hand"
   - Use hand motions: tap for each sound in blend
   - Show with Elkonin boxes: three sounds total (h-a-nd)

   Practice each final blend:
   - nt: went, bent, tent, sent
   - mp: jump, bump, lamp, camp
   - nk: pink, sink, bank, tank
   - st: fast, last, best, rest
   - ft: left, soft, gift, lift

3. GUIDED PRACTICE (12 minutes):
   Students read final blend words with teacher support.
   Sort words by final blend (word sort activity).
   Complete the word: han___ (add nd), ju___ (add mp).
   Use letter tiles to build final blend words.
   Read phrases: "jump fast," "left hand," "pink tent."
   Play matching game: picture to final blend word.

4. INDEPENDENT PRACTICE (10 minutes):
   Read word lists independently.
   Write final blend words from dictation.
   Find final blend words in decodable readers.
   Complete final blend puzzles and games.

DIFFERENTIATION:
For Struggling Learners:
- Introduce one final blend at a time
- Use very clear articulation and repetition
- Provide manipulatives for building words
- Practice with shorter word lists

For Advanced Learners:
- Work with less common final blends (lk, lm, lf)
- Read and write longer words with final blends
- Identify words with both initial and final blends
- Create sentences using multiple final blend words

ASSESSMENT INDICATORS:
- Correctly reads words with final blends
- Clearly articulates both consonant sounds
- Can identify final blends when hearing words
- Spells final blend words accurately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Final Blends' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Silent E Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Silent E Words' AND grade_level_min = 1),
  'Silent E Words Topic Guide', 'Reading CVCe words with magic e',
  'SILENT E WORDS (CVCe) - TOPIC TEACHING GUIDE

PREREQUISITES:
- CVC word mastery
- Understanding of short and long vowel sounds
- Sound substitution skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read CVCe words where final e makes the vowel say its name
2. Distinguish between short and long vowel sounds
3. Understand the "magic e" or "silent e" rule
4. Apply the CVCe pattern to decode new words

KEY CONCEPTS:
- Silent e at the end makes the vowel say its name (long sound)
- CVCe pattern: consonant-vowel-consonant-silent e
- Short a vs long a: cap → cape, mat → mate
- The e is silent but powerful
- Many common words follow the CVCe pattern

COMMON MISCONCEPTIONS:
- Pronouncing the final e
- Not changing the vowel to long sound
- Confusing CVCe with CVC words
- Thinking all words ending in e are CVCe

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Word magic demonstration:
   Write "cap" - read it together.
   Add an e: "cape" - "Watch the vowel change its sound! The e is magic!"

2. DIRECT INSTRUCTION (12 minutes):
   Introduce the silent e rule:
   - "When e comes at the end, it makes the vowel say its name!"
   - Show transformations:
     * cap → cape (short a → long a)
     * kit → kite (short i → long i)
     * hop → hope (short o → long o)
     * cub → cube (short u → long u)

   Use visual cues:
   - Cross out silent e to show it\'s quiet
   - Draw arrow from e to vowel to show it makes vowel long
   - Practice vowel sounds: short vs long

3. GUIDED PRACTICE (12 minutes):
   Read CVCe words together: make, like, home, use, these.
   Transform CVC to CVCe words (add magic e).
   Sort words: CVC vs CVCe (short vs long vowel).
   Read sentences: "I like to make a cake."
   Play "Magic E" game - add e and change the word.
   Use word families: -ake, -ike, -ope, -ube.

4. INDEPENDENT PRACTICE (10 minutes):
   Students read CVCe word lists.
   Match CVC and CVCe pairs (mat/mate).
   Complete CVCe word building activities.
   Read decodable books with CVCe words.
   Write CVCe words from dictation.

DIFFERENTIATION:
For Struggling Learners:
- Focus on one vowel at a time (all a_e words first)
- Use explicit color-coding (vowel in red, silent e crossed out)
- Provide mnemonic: "e makes it say its name"
- Practice transformations repeatedly

For Advanced Learners:
- Work with all CVCe patterns simultaneously
- Read multisyllabic words with CVCe syllables
- Explore exceptions to the rule
- Write creative sentences using CVCe words

ASSESSMENT INDICATORS:
- Reads CVCe words with correct long vowel sound
- Distinguishes between CVC and CVCe words
- Does not pronounce the silent e
- Applies CVCe pattern to decode unfamiliar words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Silent E Words' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Vowel Teams ai/ay
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Vowel Teams ai/ay' AND grade_level_min = 1),
  'Vowel Teams ai/ay Topic Guide', 'Reading words with ai and ay vowel teams',
  'VOWEL TEAMS AI/AY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Long vowel sound awareness
- CVC and CVCe word reading
- Understanding that two letters can make one sound

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read words with ai vowel team (rain, wait, train)
2. Read words with ay vowel team (day, play, say)
3. Understand that both ai and ay make the long a sound
4. Apply the spelling pattern: ai in middle, ay at end

KEY CONCEPTS:
- Vowel teams are two vowels together making one sound
- AI and AY both say long a (/ā/)
- AI usually appears in the middle of words
- AY usually appears at the end of words
- "When two vowels go walking, the first one does the talking"

COMMON MISCONCEPTIONS:
- Saying both vowel sounds separately
- Confusing ai and ay placement rules
- Using ai at the end or ay in the middle
- Pronouncing short a instead of long a

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Two letters can work together to make one sound! Let\'s meet the AI and AY teams!"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce AI vowel team:
   - Show ai together: "These two make the /ā/ sound"
   - Read words: rain, wait, mail, train, paint
   - Notice: ai is in the middle of the word

   Introduce AY vowel team:
   - Show ay together: "Also makes /ā/ sound!"
   - Read words: day, play, say, way, stay
   - Notice: ay is at the end of the word

   Teach the pattern:
   - AI = middle (r-ai-n)
   - AY = end (d-ay)

3. GUIDED PRACTICE (12 minutes):
   Read ai words together: rain, wait, sail, chain, snail.
   Read ay words together: day, may, pay, clay, tray.
   Sort words by vowel team.
   Complete words: r___n (ai), d___ (ay).
   Read sentences: "I play in the rain on a gray day."
   Build words with letter tiles.

4. INDEPENDENT PRACTICE (10 minutes):
   Students read ai/ay word lists.
   Match pictures to ai/ay words.
   Choose correct vowel team to complete words.
   Read decodable texts with ai/ay words.
   Write ai/ay words from dictation.

DIFFERENTIATION:
For Struggling Learners:
- Focus on ai first, then ay separately
- Use color-coding to highlight vowel team
- Provide position cue cards (ai=middle, ay=end)
- Practice with fewer words at a time

For Advanced Learners:
- Read words with ai and ay in same sentence
- Identify and correct misspelled ai/ay words
- Write sentences using multiple ai/ay words
- Explore related teams (ai/ail/ain word families)

ASSESSMENT INDICATORS:
- Correctly reads words with ai and ay
- Produces long a sound for vowel teams
- Applies spelling pattern (ai middle, ay end)
- Decodes new ai/ay words independently', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vowel Teams ai/ay' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Vowel Teams ee/ea
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Vowel Teams ee/ea' AND grade_level_min = 1),
  'Vowel Teams ee/ea Topic Guide', 'Reading words with ee and ea vowel teams',
  'VOWEL TEAMS EE/EA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of vowel teams concept (ai/ay)
- Long e sound recognition
- Blending skills with vowel teams

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read words with ee vowel team (tree, see, feet)
2. Read words with ea vowel team (read, eat, team)
3. Understand that both ee and ea commonly make long e sound
4. Recognize common ee and ea word patterns

KEY CONCEPTS:
- EE and EA both commonly say long e (/ē/)
- EE is very consistent in making long e sound
- EA also makes long e but has some exceptions
- Vowel team works as one unit
- Many high-frequency words use ee and ea

COMMON MISCONCEPTIONS:
- Saying both vowel sounds separately
- Not knowing which vowel team to use when spelling
- Assuming ea always makes long e (head, bread exceptions)
- Confusing ee/ea with other vowel teams

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Let\'s meet two teams that both make the \'eee\' sound! EE and EA are both long e teams!"

2. DIRECT INSTRUCTION (12 minutes):
   Introduce EE vowel team:
   - Show ee: "Two e\'s together say /ē/"
   - Read words: bee, see, tree, feet, keep, sleep
   - Emphasize consistency of ee sound

   Introduce EA vowel team:
   - Show ea: "E and A together also say /ē/"
   - Read words: read, eat, meat, beach, teach, leaf
   - Note: "EA usually says long e"

   Practice reading both:
   - Compare: see/sea (homophones!)
   - Show that sound is the same
   - Discuss that spelling varies but sound is consistent

3. GUIDED PRACTICE (12 minutes):
   Read ee words: bee, feed, green, queen, sheep.
   Read ea words: bead, team, clean, dream, speak.
   Sort words by vowel team (ee vs ea).
   Find the vowel team in spoken words.
   Read sentences: "I see a green tree by the beach."
   Build words with magnetic letters.
   Play vowel team matching games.

4. INDEPENDENT PRACTICE (10 minutes):
   Read word lists with ee and ea.
   Complete word building activities.
   Read decodable books featuring ee/ea words.
   Write ee/ea words from pictures.
   Circle vowel teams in passages.

DIFFERENTIATION:
For Struggling Learners:
- Introduce ee first, master it before adding ea
- Use very clear highlighting of vowel teams
- Provide mnemonic devices for memory
- Practice with word families (-ee, -eed, -eet / -ea, -ead, -eat)

For Advanced Learners:
- Learn ea exceptions (head, bread, instead)
- Read multisyllabic words with ee/ea
- Explore homophones (see/sea, meet/meat)
- Use context to choose correct spelling

ASSESSMENT INDICATORS:
- Reads ee and ea words with long e sound
- Recognizes vowel teams as single units
- Decodes unfamiliar ee/ea words
- Identifies vowel teams in written text', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vowel Teams ee/ea' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Vowel Teams oa/ow
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Vowel Teams oa/ow' AND grade_level_min = 1),
  'Vowel Teams oa/ow Topic Guide', 'Reading words with oa and ow vowel teams',
  'VOWEL TEAMS OA/OW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Mastery of ai/ay and ee/ea vowel teams
- Long o sound recognition
- Understanding of vowel team patterns

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read words with oa vowel team (boat, soap, road)
2. Read words with ow vowel team making long o (snow, show, grow)
3. Distinguish between ow making long o vs /ow/ sound
4. Apply oa/ow patterns when decoding

KEY CONCEPTS:
- OA makes long o sound (/ō/)
- OW can make long o sound (snow) or /ow/ sound (cow)
- OA appears in middle of words
- OW with long o often at end of words
- Context helps determine ow sound

COMMON MISCONCEPTIONS:
- Always reading ow as /ow/ (cow sound)
- Confusing oa and ow
- Not recognizing ow has two sounds
- Separating the vowel team into two sounds

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Today we\'re learning about the long o teams! OA always says long o. But OW is tricky - it has two sounds!"

2. DIRECT INSTRUCTION (12 minutes):
   Introduce OA vowel team:
   - Show oa: "O and A together say long o (/ō/)"
   - Read words: boat, coat, goat, road, soap, toast
   - Consistent sound every time

   Introduce OW vowel team (long o):
   - Show ow in: snow, show, grow, low, throw
   - "Sometimes OW says long o"
   - Compare to OW saying /ow/: cow, now, how

   Teach strategy:
   - Try long o first with ow
   - If it doesn\'t make sense, try /ow/ sound
   - Use context to decide

3. GUIDED PRACTICE (12 minutes):
   Read oa words: boat, float, foam, groan, coach.
   Read ow words (long o): blow, bowl, glow, slow, yellow.
   Read ow words (/ow/): brown, crown, down, town, flower.
   Sort: oa / ow (long o) / ow (/ow/).
   Read sentences and determine ow sound by context.
   Build words with letter tiles.

4. INDEPENDENT PRACTICE (10 minutes):
   Read mixed oa/ow word lists.
   Identify vowel teams in words.
   Complete cloze sentences choosing oa or ow.
   Read decodable texts with oa/ow words.
   Write words from dictation.

DIFFERENTIATION:
For Struggling Learners:
- Master oa first before introducing ow
- When learning ow, separate by sound (/ō/ vs /ow/)
- Use picture cues for ow words
- Provide word lists sorted by sound

For Advanced Learners:
- Read all oa/ow patterns fluently
- Identify and explain ow sound in new words
- Write sentences with multiple oa/ow words
- Explore other o patterns (old, olt, oll)

ASSESSMENT INDICATORS:
- Reads oa words with long o sound consistently
- Correctly determines ow sound using context
- Distinguishes between ow as long o vs /ow/
- Applies knowledge to decode new words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vowel Teams oa/ow' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- R-Controlled ar
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'R-Controlled ar' AND grade_level_min = 1),
  'R-Controlled ar Topic Guide', 'Reading words with ar pattern',
  'R-CONTROLLED AR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Vowel team understanding
- Short and long vowel mastery
- Awareness that r affects vowel sounds

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read words with ar making the /ar/ sound (car, star)
2. Recognize that r controls the vowel sound
3. Distinguish ar from regular short a
4. Spell and read common ar words

KEY CONCEPTS:
- When vowel is followed by r, the sound changes
- AR makes the /ar/ sound (like in "car")
- The vowel is neither short nor long - it\'s r-controlled
- AR is very consistent in its pronunciation
- Many common words have the ar pattern

COMMON MISCONCEPTIONS:
- Pronouncing short a then /r/ separately
- Not blending ar smoothly
- Confusing ar with or
- Thinking the a is silent

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "The letter R is bossy! When R comes after a vowel, it changes the vowel\'s sound. Listen: car, star, park. Hear that /ar/ sound?"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce r-controlled ar:
   - Show ar: "When A meets R, they say /ar/"
   - Demonstrate: not /a/ + /r/, but /ar/ blended
   - Read words: car, far, jar, star, bar, card, park, dark

   Compare:
   - Short a: cat, cap, can
   - R-controlled ar: cart, carp, card
   - Show how r changes the vowel

   Use visuals:
   - Highlight ar in color
   - Show "Bossy R" character
   - Practice ar sound in isolation

3. GUIDED PRACTICE (12 minutes):
   Read ar words together: arm, farm, harm, charm, yarn.
   Sort words: short a vs ar.
   Build ar words with letter tiles.
   Complete words: st_r, c_rd, b_rn (add ar).
   Read sentences: "The star is far from the barn."
   Play "Bossy R" memory game.

4. INDEPENDENT PRACTICE (10 minutes):
   Read ar word lists independently.
   Match ar words to pictures.
   Circle ar pattern in written words.
   Read decodable books with ar words.
   Write ar words from dictation.

DIFFERENTIATION:
For Struggling Learners:
- Practice ar sound extensively before reading words
- Use very clear pronunciation and repetition
- Provide ar word families (-ar, -art, -ark, -arm)
- Start with simple 3-letter ar words (car, far, jar)

For Advanced Learners:
- Read multisyllabic words with ar (garden, market, harvest)
- Identify ar pattern in various positions
- Write creative sentences with ar words
- Compare ar to other r-controlled vowels

ASSESSMENT INDICATORS:
- Correctly pronounces ar as /ar/ sound
- Reads ar words fluently
- Distinguishes ar from short a
- Spells ar words accurately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'R-Controlled ar' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- R-Controlled or
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'R-Controlled or' AND grade_level_min = 1),
  'R-Controlled or Topic Guide', 'Reading words with or pattern',
  'R-CONTROLLED OR - TOPIC TEACHING GUIDE

PREREQUISITES:
- R-controlled ar mastery
- Understanding of r-controlled vowel concept
- Blending skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read words with or making the /or/ sound (for, born)
2. Understand that or is another r-controlled pattern
3. Distinguish between ar and or sounds
4. Read and spell common or words fluently

KEY CONCEPTS:
- OR makes the /or/ sound (like in "for" or "corn")
- R controls the vowel O
- OR is very consistent in pronunciation
- Many high-frequency words contain or
- OR can appear in middle or at end of words

COMMON MISCONCEPTIONS:
- Pronouncing long o then /r/ separately
- Confusing or with ar sounds
- Not recognizing or as a unit
- Saying /o/ + /r/ instead of blended /or/

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Bossy R is back! Now R is changing the letter O. Listen: for, corn, horse. That\'s the /or/ sound!"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce r-controlled or:
   - Show or: "When O meets R, they say /or/"
   - Model blended sound, not separate
   - Read words: for, or, born, corn, horn, fork, pork, storm

   Compare with ar:
   - AR words: car, star, barn
   - OR words: corn, horn, born
   - Practice distinguishing sounds

   Use visuals:
   - Highlight or in different color from ar
   - "Bossy R" with letter O
   - Or word families: -or, -orn, -ork, -orm

3. GUIDED PRACTICE (12 minutes):
   Read or words together: for, sort, short, north, porch.
   Sort words: ar vs or.
   Build or words with magnetic letters.
   Complete: f___k, st___m, sh___t (add or).
   Read sentences: "The horse ate corn by the porch."
   Match pictures to or words.

4. INDEPENDENT PRACTICE (10 minutes):
   Read or word lists.
   Identify or pattern in written text.
   Write or words from dictation.
   Read decodable stories with or words.
   Complete or word building activities.

DIFFERENTIATION:
For Struggling Learners:
- Master ar completely before introducing or
- Use explicit contrast activities (ar vs or)
- Provide mnemonic devices
- Practice or families systematically

For Advanced Learners:
- Read complex or words (morning, important, orchestra)
- Identify or in multisyllabic words
- Distinguish war, wor patterns (different sound)
- Write paragraphs using both ar and or

ASSESSMENT INDICATORS:
- Correctly pronounces or as /or/ sound
- Reads or words accurately
- Distinguishes or from ar
- Applies or pattern to new words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'R-Controlled or' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Soft c and g
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Soft c and g' AND grade_level_min = 1),
  'Soft c and g Topic Guide', 'Reading words where c says /s/ and g says /j/',
  'SOFT C AND G - TOPIC TEACHING GUIDE

PREREQUISITES:
- Hard c and g sound mastery (/k/ and /g/)
- Understanding that letters can make different sounds
- Knowledge of vowels e, i, y

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read words with soft c making /s/ sound (city, cent, ice)
2. Read words with soft g making /j/ sound (gem, giant, cage)
3. Understand the soft c/g rule (before e, i, y)
4. Apply the rule when decoding unfamiliar words

KEY CONCEPTS:
- C usually says /k/ but says /s/ before e, i, y (soft c)
- G usually says /g/ but says /j/ before e, i, y (soft g)
- The vowels e, i, y make c and g "soft"
- This is a reliable spelling pattern
- Many common words follow this rule

COMMON MISCONCEPTIONS:
- Always pronouncing c as /k/
- Always pronouncing g as /g/
- Not recognizing the pattern with e, i, y
- Confusion about when to apply soft sounds

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "C and G are like chameleons - they change their sounds! Watch what happens when e, i, or y comes after them."

2. DIRECT INSTRUCTION (12 minutes):
   Introduce SOFT C:
   - Compare: cat /k/ vs cent /s/
   - Show pattern: c + e, i, y = /s/
   - Read words: cent, city, ice, mice, race, face
   - Rule: "C says /s/ before e, i, y"

   Introduce SOFT G:
   - Compare: go /g/ vs gem /j/
   - Show pattern: g + e, i, y = /j/
   - Read words: gem, giant, age, cage, page, huge
   - Rule: "G says /j/ before e, i, y"

   Note exceptions exist but rule is generally reliable.

3. GUIDED PRACTICE (12 minutes):
   Read soft c words: ice, nice, rice, dance, prince, circle.
   Read soft g words: age, stage, giraffe, gentle, magic.
   Sort words: hard c vs soft c, hard g vs soft g.
   Identify the vowel that makes c or g soft.
   Read sentences: "The giant mice dance in the city."
   Predict: Will c/g be hard or soft in this word?

4. INDEPENDENT PRACTICE (10 minutes):
   Read mixed hard/soft c and g words.
   Categorize words by c and g sounds.
   Circle soft c and g in passages.
   Complete word building with soft c/g.
   Read decodable texts featuring soft c and g.

DIFFERENTIATION:
For Struggling Learners:
- Teach soft c first, master it before soft g
- Use color-coding: e, i, y in one color
- Provide rule card for reference
- Practice with clear word families

For Advanced Learners:
- Identify soft c/g in multisyllabic words (circus, ginger)
- Learn about exceptions (get, give, girl)
- Read and write sentences with multiple soft c/g words
- Explain the pattern to others

ASSESSMENT INDICATORS:
- Correctly pronounces soft c as /s/
- Correctly pronounces soft g as /j/
- Can explain when c and g are soft
- Applies rule when reading new words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Soft c and g' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Two-Syllable Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Two-Syllable Words' AND grade_level_min = 1),
  'Two-Syllable Words Topic Guide', 'Decoding simple two-syllable words',
  'TWO-SYLLABLE WORDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- CVC word fluency
- Syllable awareness (clapping syllables)
- Understanding of closed syllables

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Decode simple two-syllable words (rabbit, napkin, sunset)
2. Divide words into syllables
3. Blend syllables together to read words
4. Apply syllable strategies to longer words

KEY CONCEPTS:
- Many words have more than one syllable (beat)
- We can break words into parts to read them
- Each syllable has one vowel sound
- Closed syllables: consonant after vowel (short vowel sound)
- Read each syllable, then blend together

COMMON MISCONCEPTIONS:
- Trying to read whole word at once
- Not dividing between syllables correctly
- Losing track of sounds in longer words
- Adding or omitting syllables

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Big words are just small words stuck together! Let\'s learn to break them apart and read them easily!"

2. DIRECT INSTRUCTION (12 minutes):
   Introduce two-syllable decoding:
   - Show word: rabbit
   - Clap syllables: rab-bit (2 claps)
   - Divide visually: rab | bit
   - Read first syllable: /rab/
   - Read second syllable: /bit/
   - Blend together: rabbit!

   Practice with examples:
   - napkin: nap | kin
   - sunset: sun | set
   - picnic: pic | nic
   - muffin: muf | fin

   Teach division pattern:
   - Two consonants in middle: divide between them (rab-bit)

3. GUIDED PRACTICE (12 minutes):
   Students clap syllables in two-syllable words.
   Draw lines to divide words into syllables.
   Read each syllable separately, then together.
   Practice: kitten, button, basket, chapter, husband.
   Use syllable cards: match and blend syllables.
   Read sentences with two-syllable words.

4. INDEPENDENT PRACTICE (10 minutes):
   Students read two-syllable word lists.
   Divide words into syllables independently.
   Match syllables to make real words.
   Read decodable texts with two-syllable words.
   Write two-syllable words from dictation.

DIFFERENTIATION:
For Struggling Learners:
- Start with compound words (sun-set, rain-bow)
- Use very clear visual division lines
- Practice each syllable extensively before blending
- Provide fewer words per session

For Advanced Learners:
- Read more complex two-syllable words
- Identify syllable types (closed, open)
- Progress to three-syllable words
- Apply strategies to unfamiliar multisyllabic words

ASSESSMENT INDICATORS:
- Successfully divides words into syllables
- Reads each syllable accurately
- Blends syllables smoothly into whole words
- Applies syllable strategy to new words', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Two-Syllable Words' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRAMMAR AND LANGUAGE (8 topics)
-- ============================================================================

-- Nouns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Nouns' AND grade_level_min = 1),
  'Nouns Topic Guide', 'Identifying nouns as person, place, thing, or animal',
  'NOUNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of words as naming things
- Basic categorization skills
- Awareness of people, places, and objects around them

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define nouns as words that name people, places, things, or animals
2. Identify nouns in sentences
3. Categorize nouns by type (person, place, thing, animal)
4. Use nouns correctly in speaking and writing

KEY CONCEPTS:
- Nouns name people, places, things, and animals
- Person: teacher, mom, firefighter, boy
- Place: school, park, home, city
- Thing: book, chair, toy, apple
- Animal: dog, bird, fish, elephant
- Every sentence usually has at least one noun

COMMON MISCONCEPTIONS:
- Thinking only objects are nouns (missing people, places, animals)
- Confusing nouns with adjectives (descriptive words)
- Not recognizing abstract nouns yet (at this level, concrete nouns only)
- Believing verbs (action words) are nouns

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Nouns are naming words! They name everything around us. Let\'s find nouns in our classroom!"

2. DIRECT INSTRUCTION (8 minutes):
   Define and categorize nouns:
   - Person: Point to students - "These are people! Their names are nouns: Emily, Carlos."
   - Place: "This is a classroom. School is a place. Places are nouns!"
   - Thing: Hold up book, pencil, chair. "Things are nouns too!"
   - Animal: Show pictures of cat, dog, bird. "Animals are also nouns!"

   Create four-column chart: Person | Place | Thing | Animal
   Sort noun examples together.
   Show nouns in sentences: "The dog ate a bone in the yard."

3. GUIDED PRACTICE (10 minutes):
   Students identify nouns in pictures and sentences.
   Noun hunt: find nouns around the classroom.
   Sort noun cards into categories (person/place/thing/animal).
   Circle nouns in simple sentences.
   Play "I Spy a Noun": describe noun, others guess.
   Create class noun chart with examples.

4. INDEPENDENT PRACTICE (9 minutes):
   Students list nouns they see (drawing or writing).
   Complete noun sorting worksheets.
   Write sentences and circle the nouns.
   Cut out pictures of nouns from magazines, sort into categories.

DIFFERENTIATION:
For Struggling Learners:
- Focus on one category at a time
- Use only concrete, visible nouns
- Provide picture support for all nouns
- Practice with familiar, simple nouns

For Advanced Learners:
- Introduce proper vs common nouns
- Identify multiple nouns in complex sentences
- Generate lists of nouns for each category
- Begin to understand abstract nouns (love, happiness)

ASSESSMENT INDICATORS:
- Correctly identifies nouns in sentences
- Categorizes nouns into person, place, thing, animal
- Can generate examples of each noun type
- Uses nouns appropriately in writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Nouns' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Verbs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Verbs' AND grade_level_min = 1),
  'Verbs Topic Guide', 'Identifying action words in sentences',
  'VERBS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of nouns
- Awareness of actions and movements
- Experience with action words in speech

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define verbs as action words
2. Identify verbs in sentences
3. Act out verbs to demonstrate understanding
4. Use verbs correctly in speaking and writing

KEY CONCEPTS:
- Verbs are action words - they tell what someone or something does
- Physical actions: run, jump, eat, play, write
- Mental actions: think, know, remember (introduce later)
- Every complete sentence needs a verb
- Verbs can change form (jump, jumps, jumped)

COMMON MISCONCEPTIONS:
- Confusing verbs with nouns
- Thinking only physical movements are verbs
- Not recognizing verbs like "is" or "was" as action
- Believing sentences can be complete without verbs

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Let\'s play Simon Says! All the things I ask you to do are VERBS - action words!"
   Simon Says: jump, clap, spin, sit, stand.
   "Those are all verbs!"

2. DIRECT INSTRUCTION (8 minutes):
   Define verbs:
   - "Verbs tell what we DO. They are action words!"
   - Demonstrate actions while saying verbs: run, hop, write, read, eat
   - Show verbs in sentences:
     * "The dog runs." (runs = verb)
     * "I eat lunch." (eat = verb)
     * "Birds fly." (fly = verb)

   Create verb list together:
   - Physical actions: walk, talk, sit, sleep, draw, dance
   - Show that every sentence has an action

3. GUIDED PRACTICE (12 minutes):
   Act out verbs as class: jump, skip, wiggle, clap, stomp.
   Identify verbs in simple sentences.
   Play "Verb Charades": act out verb, others guess.
   Match pictures to action verbs.
   Circle verbs in sentences.
   Generate verbs: "What can you do at recess?" (run, play, swing)

4. INDEPENDENT PRACTICE (10 minutes):
   Students draw pictures of actions and label with verbs.
   Complete verb identification worksheets.
   Write sentences with action verbs.
   Sort words: noun or verb?
   Create personal "My Verbs" book.

DIFFERENTIATION:
For Struggling Learners:
- Focus on obvious physical action verbs
- Use lots of movement and acting
- Provide picture cues for all verbs
- Practice with same verbs repeatedly

For Advanced Learners:
- Identify multiple verbs in sentences
- Understand helping verbs (is running, can jump)
- Learn about past tense verbs
- Write sentences with interesting action verbs

ASSESSMENT INDICATORS:
- Correctly identifies verbs in sentences
- Can demonstrate understanding through actions
- Generates appropriate action verbs
- Uses verbs correctly in writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Verbs' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Adjectives
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Adjectives' AND grade_level_min = 1),
  'Adjectives Topic Guide', 'Using words that describe nouns',
  'ADJECTIVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Solid understanding of nouns
- Descriptive vocabulary exposure
- Sensory awareness (sight, touch, etc.)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define adjectives as describing words
2. Identify adjectives that describe nouns
3. Use adjectives to make writing more interesting
4. Understand adjectives describe color, size, shape, texture, number

KEY CONCEPTS:
- Adjectives are describing words
- Adjectives tell about nouns (how something looks, feels, sounds, etc.)
- Common adjective types: color, size, shape, number, texture
- Adjectives come before nouns or after "is/are/was/were"
- Adjectives make sentences more detailed and interesting

COMMON MISCONCEPTIONS:
- Confusing adjectives with nouns
- Using only color words as adjectives
- Not recognizing numbers as adjectives
- Thinking adjectives are separate from the nouns they describe

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show two balls: one red, one blue.
   "How can I tell you which ball I\'m talking about? I use describing words - adjectives!"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce adjectives:
   - "Adjectives describe nouns. They tell us MORE about the noun!"
   - Show examples:
     * red ball (color)
     * big dog (size)
     * round table (shape)
     * soft pillow (texture)
     * three cats (number)

   Practice in sentences:
   - "I see a dog." → "I see a brown dog."
   - "She has a hat." → "She has a funny hat."

   Create adjective categories chart:
   Color | Size | Shape | Texture | Number | Feeling

3. GUIDED PRACTICE (12 minutes):
   Students describe objects using adjectives.
   Play "Add the Adjective": teacher says noun, students add adjective.
   Match adjectives to appropriate nouns.
   Circle adjectives in sentences.
   Improve boring sentences by adding adjectives.
   Sensory exploration: touch objects and use adjectives (soft, rough, smooth).

4. INDEPENDENT PRACTICE (10 minutes):
   Students draw pictures and label with noun + adjective.
   Complete adjective worksheets.
   Write sentences using at least one adjective.
   Play "Adjective Detective": find adjectives in books.
   Create adjective word bank.

DIFFERENTIATION:
For Struggling Learners:
- Focus on color and size adjectives first
- Use concrete objects for description
- Provide adjective word banks
- Practice with familiar nouns

For Advanced Learners:
- Use multiple adjectives for one noun
- Learn about adjective order
- Compare with comparative adjectives (big, bigger, biggest)
- Write descriptive paragraphs

ASSESSMENT INDICATORS:
- Correctly identifies adjectives in sentences
- Uses adjectives to describe nouns
- Understands various types of adjectives
- Includes adjectives in writing to add detail', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adjectives' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Complete Sentences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Complete Sentences' AND grade_level_min = 1),
  'Complete Sentences Topic Guide', 'Writing sentences with subject and predicate',
  'COMPLETE SENTENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of nouns and verbs
- Sentence awareness (capitals and periods)
- Ability to distinguish complete from incomplete thoughts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that complete sentences have a subject (who/what) and predicate (what happens)
2. Identify complete vs incomplete sentences
3. Write complete sentences independently
4. Fix sentence fragments by adding missing parts

KEY CONCEPTS:
- Complete sentences tell a whole idea
- Subject = who or what the sentence is about (noun)
- Predicate = what the subject does (verb phrase)
- Complete sentence = subject + predicate
- Sentence fragments are incomplete - missing subject or predicate

COMMON MISCONCEPTIONS:
- Thinking any group of words is a sentence
- Not understanding the need for both subject and verb
- Confusing phrases with sentences
- Believing longer is always complete

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show incomplete thought: "The big dog."
   "Is this a complete sentence? What\'s missing?"
   Add predicate: "The big dog ran."
   "Now it\'s complete! It tells us who and what happened!"

2. DIRECT INSTRUCTION (10 minutes):
   Teach sentence structure:
   - Every sentence needs TWO parts:
     1. Subject (WHO or WHAT): The cat, My friend, We
     2. Predicate (DOES WHAT): ate fish, plays ball, are happy

   Show examples and non-examples:
   - Complete: "Birds fly." (subject: birds, predicate: fly)
   - Incomplete: "The blue ball." (has subject, no predicate - what about it?)
   - Complete: "I am happy." (subject: I, predicate: am happy)
   - Incomplete: "Ran fast." (has predicate, no subject - who ran?)

   Use visual: Draw two puzzle pieces connecting (subject + predicate)

3. GUIDED PRACTICE (12 minutes):
   Sort sentences: complete or incomplete?
   Identify what\'s missing in fragments.
   Complete sentence building: teacher gives subject, students add predicate.
   Add subjects to predicates: "___ jumped high."
   Add predicates to subjects: "The bunny ___."
   Fix sentence fragments together.
   Check sentences: Does it have who/what AND what happens?

4. INDEPENDENT PRACTICE (10 minutes):
   Students write complete sentences independently.
   Identify complete sentences in books.
   Fix sentence fragments on worksheets.
   Create complete sentences from pictures.
   Sentence building with word cards.

DIFFERENTIATION:
For Struggling Learners:
- Use sentence frames with clear subject and predicate
- Color-code subjects and predicates
- Start with very simple subject-verb sentences
- Provide lots of modeling and practice

For Advanced Learners:
- Write longer, more complex sentences
- Identify subjects and predicates in complex sentences
- Understand compound subjects and predicates
- Edit paragraphs for sentence completeness

ASSESSMENT INDICATORS:
- Distinguishes complete from incomplete sentences
- Can identify missing parts in fragments
- Writes complete sentences with subject and predicate
- Applies understanding when editing own writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complete Sentences' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Capitalization
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Capitalization' AND grade_level_min = 1),
  'Capitalization Topic Guide', 'Capitalizing first words and proper nouns',
  'CAPITALIZATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to distinguish uppercase and lowercase letters
- Understanding of sentences
- Awareness of names and special words

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Capitalize the first word of every sentence
2. Capitalize names of specific people, places, and things (proper nouns)
3. Capitalize the pronoun "I"
4. Apply capitalization rules when writing

KEY CONCEPTS:
- Every sentence begins with a capital letter
- Names of people are capitalized (Emily, Mr. Smith)
- Names of specific places are capitalized (Texas, Main Street)
- Days, months are capitalized (Monday, January)
- The word "I" is always capitalized
- Titles when used with names are capitalized (Dr. Jones)

COMMON MISCONCEPTIONS:
- Capitalizing random words in the middle of sentences
- Not capitalizing "I" when referring to self
- Capitalizing common nouns (cat, school) that aren\'t specific names
- Forgetting to capitalize sentence beginnings

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Capital letters are special! They show us when sentences start and mark important names!"

2. DIRECT INSTRUCTION (10 minutes):
   Teach capitalization rules:

   Rule 1: First word of sentence
   - Show: "the dog ran." vs "The dog ran."
   - Every sentence starts with a capital!

   Rule 2: Names of people (proper nouns)
   - Show: "emily" vs "Emily"
   - Names are special - they get capitals!
   - Examples: Tom, Mrs. Brown, Dr. Lee

   Rule 3: The word "I"
   - Show: "i like pizza" vs "I like pizza"
   - The word "I" is always a capital!

   Rule 4: Specific places
   - Show: "We went to texas." vs "We went to Texas."
   - Real place names get capitals

   Practice editing sentences with missing capitals.

3. GUIDED PRACTICE (12 minutes):
   Identify capitalization errors in sentences.
   Add capitals where needed: "my friend sam lives in florida."
   Write students\' names - check for capitals.
   Circle words that should be capitalized.
   Practice capitalizing "I" in sentences.
   Create capitalization checklist.
   Edit sentences together for proper capitalization.

4. INDEPENDENT PRACTICE (10 minutes):
   Students write sentences with correct capitalization.
   Find and fix capitalization errors.
   Write about themselves using "I" correctly.
   Write friends\' and family members\' names with capitals.
   Complete capitalization worksheets.

DIFFERENTIATION:
For Struggling Learners:
- Focus on one rule at a time
- Provide highlighters to mark capitals
- Use capital letter stamps or stickers
- Practice with own name extensively first

For Advanced Learners:
- Learn additional capitalization rules (titles of books, etc.)
- Edit longer passages for capitalization
- Explain capitalization rules to others
- Apply all rules simultaneously in writing

ASSESSMENT INDICATORS:
- Capitalizes first word of sentences consistently
- Capitalizes proper nouns (names)
- Always capitalizes "I"
- Applies capitalization rules in independent writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Capitalization' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- End Punctuation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'End Punctuation' AND grade_level_min = 1),
  'End Punctuation Topic Guide', 'Using periods, question marks, and exclamation points',
  'END PUNCTUATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of complete sentences
- Awareness that sentences end
- Experience with different types of sentences (statement, question, exclamation)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use periods for telling sentences (statements)
2. Use question marks for asking sentences (questions)
3. Use exclamation points for sentences with strong feeling
4. Choose appropriate end punctuation based on sentence type

KEY CONCEPTS:
- All sentences end with punctuation
- Period (.) = telling/statement sentence
- Question mark (?) = asking/question sentence
- Exclamation point (!) = exciting/strong feeling sentence
- End punctuation helps readers understand meaning and tone

COMMON MISCONCEPTIONS:
- Forgetting end punctuation entirely
- Using exclamation points for all sentences
- Not understanding how punctuation changes meaning
- Putting punctuation in the middle of sentences

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Read same sentence with different end punctuation:
   "I see a dog." (calm)
   "I see a dog?" (confused/questioning)
   "I see a dog!" (excited)
   "Punctuation changes how we read and understand!"

2. DIRECT INSTRUCTION (10 minutes):
   Teach each punctuation mark:

   PERIOD (.)
   - For telling sentences
   - Example: "The cat is black."
   - "We use periods most of the time!"

   QUESTION MARK (?)
   - For asking sentences
   - Look for question words: who, what, where, when, why, how
   - Example: "What is your name?"

   EXCLAMATION POINT (!)
   - For exciting sentences or strong feelings
   - Example: "Watch out!" or "I love it!"
   - Use sparingly - special occasions!

   Model reading with appropriate expression based on punctuation.

3. GUIDED PRACTICE (12 minutes):
   Sort sentence cards by end punctuation type.
   Read sentences with appropriate expression.
   Add correct end punctuation to sentences.
   Identify sentence type: telling, asking, or exclaiming.
   Play "Punctuation Says": different actions for each mark.
   Practice question words that signal question marks.
   Rewrite sentences with different punctuation (change meaning).

4. INDEPENDENT PRACTICE (10 minutes):
   Students write sentences with each type of punctuation.
   Add end punctuation to unpunctuated sentences.
   Match sentences to punctuation marks.
   Write questions to ask a friend (using ?).
   Complete punctuation worksheets.

DIFFERENTIATION:
For Struggling Learners:
- Focus on period first, add others gradually
- Provide sentence type cues (asking words → ?)
- Use color-coding for each punctuation type
- Practice with very simple sentences

For Advanced Learners:
- Understand subtle differences in punctuation choice
- Identify end punctuation in complex sentences
- Write varied sentences using all three types
- Edit paragraphs for correct end punctuation

ASSESSMENT INDICATORS:
- Uses periods correctly for statements
- Uses question marks for questions
- Uses exclamation points appropriately (not overused)
- Chooses correct end punctuation consistently', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'End Punctuation' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Commas in Dates
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Commas in Dates' AND grade_level_min = 1),
  'Commas in Dates Topic Guide', 'Using commas between day and year in dates',
  'COMMAS IN DATES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of commas as punctuation
- Knowledge of dates (month, day, year)
- Calendar awareness

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Place commas correctly between day and year in dates
2. Write dates in correct format
3. Identify correctly and incorrectly punctuated dates
4. Apply comma usage when writing dates

KEY CONCEPTS:
- Dates have three parts: month, day, year
- Comma goes between the day and the year
- Format: Month Day, Year (January 15, 2024)
- No comma between month and day
- Commas help separate parts of the date clearly

COMMON MISCONCEPTIONS:
- Putting comma between month and day
- Forgetting comma between day and year
- Not understanding three-part date structure
- Confusion about when year is omitted

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Today\'s date is special! Let\'s learn how to write it correctly with commas!"
   Show today\'s date on board.

2. DIRECT INSTRUCTION (8 minutes):
   Teach date format:
   - Show date parts: "January" (month) + "15" (day) + "2024" (year)
   - Model correct format: January 15, 2024
   - Point to comma: "Comma goes between day and year!"
   - Show incorrect: January, 15 2024 or January 15 2024
   - Show correct: January 15, 2024

   Practice with multiple examples:
   - December 25, 2023
   - July 4, 1776
   - March 10, 2024

   Use visual: Draw three boxes connected, comma between boxes 2 and 3.

3. GUIDED PRACTICE (10 minutes):
   Write dates together on board.
   Students add commas to unpunctuated dates.
   Identify errors in dates and fix them.
   Write important dates: birthdays, holidays with correct commas.
   Match correctly formatted dates to pictures of events.
   Create class calendar with properly formatted dates.

4. INDEPENDENT PRACTICE (9 minutes):
   Students write their birthday with correct comma.
   Write 5 dates correctly formatted.
   Add commas to dates in sentences.
   Circle commas in dates in books and papers.
   Complete date punctuation worksheets.

DIFFERENTIATION:
For Struggling Learners:
- Provide date template with comma placement shown
- Use only current year to reduce confusion
- Practice with familiar dates (birthday, holidays)
- Color-code where comma belongs

For Advanced Learners:
- Write full sentences including dates
- Understand that comma rules differ in other date formats
- Learn about dates in sentences (additional comma after year)
- Write dates in letters and journal entries

ASSESSMENT INDICATORS:
- Correctly places comma between day and year
- Writes dates in proper format consistently
- Identifies incorrectly punctuated dates
- Applies comma rule when writing dates independently', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Commas in Dates' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Singular and Plural
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Singular and Plural' AND grade_level_min = 1),
  'Singular and Plural Topic Guide', 'Adding -s or -es to make words plural',
  'SINGULAR AND PLURAL - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of nouns
- Concept of one vs more than one
- Ability to count and understand quantity

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand singular means one, plural means more than one
2. Add -s to make most nouns plural
3. Add -es to make nouns ending in s, x, z, ch, sh plural
4. Use singular and plural nouns correctly in sentences

KEY CONCEPTS:
- Singular = one (cat, dog, book)
- Plural = more than one (cats, dogs, books)
- Add -s to most nouns to make them plural
- Add -es to nouns ending in s, x, z, ch, sh (boxes, buses, dishes)
- Plural nouns help us talk about quantities

COMMON MISCONCEPTIONS:
- Adding -s to all plurals without considering spelling
- Not adding -es when needed (boxs instead of boxes)
- Irregular plurals (child/children, mouse/mice) - address later
- Confusing singular and plural verb forms

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Hold up one book: "I have one book."
   Hold up two books: "Now I have two books!"
   "We added -s to show more than one. That\'s plural!"

2. DIRECT INSTRUCTION (10 minutes):
   Teach plural formation:

   RULE 1: Most nouns - add -s
   - cat → cats
   - dog → dogs
   - tree → trees
   - Show many examples

   RULE 2: Nouns ending in s, x, z, ch, sh - add -es
   - bus → buses
   - box → boxes
   - dish → dishes
   - bench → benches
   - "We add -es to make it easier to say!"

   Practice with visuals:
   - Show one object, then multiple
   - Write singular form, add -s or -es

3. GUIDED PRACTICE (12 minutes):
   Show pictures: one vs many, say singular and plural.
   Make words plural together: book → ?, lunch → ?
   Sort words by plural ending (-s vs -es).
   Complete sentences: "I see one cat. I see two ___."
   Match singular nouns to plural forms.
   Identify singular vs plural in sentences.

4. INDEPENDENT PRACTICE (10 minutes):
   Students write plural forms of given words.
   Draw one object and many objects, label both.
   Complete fill-in sentences with correct plural form.
   Sort word cards: singular vs plural.
   Find plural nouns in books.

DIFFERENTIATION:
For Struggling Learners:
- Focus on -s plurals only initially
- Use concrete objects for counting (one, two, three)
- Provide visual cues (pictures showing quantity)
- Practice with very familiar nouns

For Advanced Learners:
- Introduce irregular plurals (child/children, foot/feet)
- Learn -y to -ies rule (baby/babies)
- Use plural nouns in writing correctly
- Understand subject-verb agreement with plurals

ASSESSMENT INDICATORS:
- Correctly forms plurals by adding -s
- Knows when to add -es
- Distinguishes singular from plural nouns
- Uses plural nouns appropriately in writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Singular and Plural' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- (Continuing with remaining Grade 1 topics in next section due to length...)
-- ============================================================================
-- End of Grade 1 Reading Expanded Prompts File Part 1
-- ============================================================================
