-- Kindergarten Reading Topic Prompts
-- Comprehensive teaching guides for K Reading/ELA topics
-- Each prompt provides 500+ words of pedagogical guidance

-- ============================================================================
-- LETTER RECOGNITION UNIT
-- ============================================================================

-- Uppercase Letters A-M
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Uppercase Letters A-M' AND grade_level_min = 0),
  'Uppercase Letters A-M (Kindergarten) Topic Guide',
  'Teaching uppercase letter recognition and formation for letters A through M',
  'UPPERCASE LETTERS A-M - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should have basic fine motor skills for holding a crayon or pencil. They should understand that print carries meaning and that we read from left to right. Familiarity with some environmental print (logos, signs, names) is helpful but not required. This is often one of the first formal literacy lessons, so begin with encouragement and accessibility.

LEARNING OBJECTIVES:
- Recognize and name uppercase letters A, B, C, D, E, F, G, H, I, J, K, L, and M with 80% accuracy
- Distinguish between visually similar letters (like E and F, or M and N)
- Begin to associate letters with their position in the alphabet (A is first, M is in the middle)
- Form uppercase letters using proper stroke sequence
- Identify uppercase letters in environmental print and books

KEY CONCEPTS:
1) Letters are symbols that represent sounds and together make words we can read
2) The alphabet has a specific order that we learn to help us organize and find words
3) Uppercase letters (also called capital letters) are the "big" versions of letters
4) Each letter has a name and a shape that makes it unique
5) We use uppercase letters at the beginning of sentences and for names

COMMON MISCONCEPTIONS:
- Confusing B and D due to similar shapes with different orientations
- Mixing up E and F (F is missing the bottom line)
- Reversing letters when writing (developmentally normal at this age)
- Thinking letters are just random shapes with no purpose
- Believing you must learn all letters at once rather than gradually
- Confusing the letter name with the sound it makes (will develop later)

TEACHING SEQUENCE:
Begin each letter introduction with a multi-sensory approach. Show the letter in large format while saying its name clearly. Trace the letter in the air together, describing the strokes ("A: start at the top, slide down, slide down the other way, add a belt in the middle"). Connect letters to familiar objects or names: "A is for Apple, and A is the first letter in your friend Amelia''s name!"

For each lesson, introduce 2-3 letters maximum. Use songs like the alphabet song, but focus on the subset being learned. Incorporate physical activities: form letters with bodies, walk the letter shape on the floor, or use play dough to build letters. Letter hunts around the classroom help students recognize letters in context.

Reading simple alphabet books reinforces recognition. Point to each letter and have students repeat the name. Use call-and-response: "What letter is this?" [A!] "Yes! A is for..."

DIFFERENTIATION:
For struggling learners: Focus on one letter at a time with extended practice. Use sandpaper letters or textured surfaces for tactile learning. Pair letters with strong visual associations (M looks like mountains). Provide tracing worksheets with arrows showing stroke direction. Use consistent letter cards in a pocket chart for daily practice.

For advanced learners: Begin connecting letters to their sounds. Challenge them to find all the A''s on a page. Have them sort picture cards by beginning letter sound. Introduce the corresponding lowercase letters alongside uppercase. Let them "teach" a letter to a puppet or stuffed animal.

VOCABULARY:
Letter, alphabet, uppercase, capital letter, name, first, middle, write, trace, same, different, matches, beginning

CONNECTION TO FUTURE LEARNING:
Mastering uppercase letter recognition builds the foundation for all future reading. Students will soon learn lowercase letters and begin connecting letters to sounds (phonemic awareness). Letter recognition is essential for learning to decode words, write their names, and eventually read independently. This skill supports learning across all subjects as students encounter text everywhere.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Uppercase Letters A-M' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Uppercase Letters N-Z
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Uppercase Letters N-Z' AND grade_level_min = 0),
  'Uppercase Letters N-Z (Kindergarten) Topic Guide',
  'Teaching uppercase letter recognition and formation for letters N through Z',
  'UPPERCASE LETTERS N-Z - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should have mastered or be working on uppercase letters A-M. They should understand that letters have names and specific shapes. Basic understanding of the alphabetic sequence is helpful. Students should have had practice with multi-sensory letter activities and understand classroom routines for letter learning.

LEARNING OBJECTIVES:
- Recognize and name uppercase letters N, O, P, Q, R, S, T, U, V, W, X, Y, and Z with 80% accuracy
- Complete the full uppercase alphabet sequence
- Distinguish between visually similar letters (M and N, P and R, V and W)
- Form uppercase letters using proper stroke sequence
- Sequence all 26 uppercase letters in alphabetical order

KEY CONCEPTS:
1) The second half of the alphabet completes our letter set for making all English words
2) Some letters are more common (T, S, N) while others are rare (Q, X, Z)
3) Q almost always appears with U in English words
4) The last letters (X, Y, Z) mark the end of the alphabet
5) Knowing all letters allows us to start connecting them to sounds and words

COMMON MISCONCEPTIONS:
- Confusing M and N (M has four points, N has three)
- Mixing up P and R (R has a leg, P does not)
- Thinking Q can stand alone (almost always needs U)
- Reversing S when writing
- Confusing U and V shapes
- Thinking W is "double V" instead of "double U"
- Believing X, Y, Z are unimportant because they are less common

TEACHING SEQUENCE:
Continue the multi-sensory approach established with A-M. Build on existing knowledge by connecting new letters to known ones: "N looks like M but with one less hump." Use the alphabet song strategically, slowing down at LMNOP which often becomes blurred for young learners.

Introduce letters in small groups of 2-3 per lesson. Emphasize the unique features of each letter: "O is a perfect circle, the only letter with no straight lines!" Use memorable associations: "S slithers like a snake, X marks the spot, Z is for zigzag."

Create opportunities for meaningful practice through classroom activities. Label classroom items (SINK, TOYS, WINDOW). Have students find their initials on an alphabet chart. Practice putting alphabet puzzles in order. Create an alphabet book as a class project.

DIFFERENTIATION:
For struggling learners: Provide extensive tactile experiences (sand trays, finger paint, raised letters). Use picture-letter association cards with consistent images. Create a personal alphabet book with photos of meaningful objects for each letter. Focus on high-frequency letters first (T, S, R, N) before less common ones (Q, X, Z). Use consistent verbal cues for letter formation.

For advanced learners: Begin teaching corresponding lowercase letters. Introduce letter sounds alongside names. Have students write simple words using known letters. Create simple crossword puzzles or word searches. Encourage writing simple labels or signs for the classroom.

VOCABULARY:
Letter, alphabet, uppercase, capital letter, complete, end, last, write, trace, finish, name, sequence, order, recognize

CONNECTION TO FUTURE LEARNING:
Completing uppercase letter recognition allows students to engage fully with print. This foundation supports learning lowercase letters, which are more frequent in text. Students will soon begin phonics instruction connecting letters to sounds. Full alphabet knowledge is essential for using reference materials, dictionaries, and organizational systems throughout their education.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Uppercase Letters N-Z' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Lowercase Letters a-m
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Lowercase Letters a-m' AND grade_level_min = 0),
  'Lowercase Letters a-m (Kindergarten) Topic Guide',
  'Teaching lowercase letter recognition and formation for letters a through m',
  'LOWERCASE LETTERS a-m - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should recognize most uppercase letters A-M. They should understand that uppercase and lowercase are partners that represent the same letter. Basic pencil grip and fine motor control for tracing and writing are important. Students should understand that lowercase letters are what we see most often when reading books.

LEARNING OBJECTIVES:
- Recognize and name lowercase letters a, b, c, d, e, f, g, h, i, j, k, l, and m with 80% accuracy
- Match lowercase letters to their uppercase partners
- Understand that most text we read uses lowercase letters
- Form lowercase letters using proper stroke sequence
- Identify lowercase letters in simple words and books

KEY CONCEPTS:
1) Lowercase letters are the "small" versions of letters we use most often in reading and writing
2) Each lowercase letter has an uppercase partner that represents the same sound
3) Some lowercase letters look similar to their uppercase partners (c/C, s/S) while others look quite different (a/A, g/G)
4) Lowercase letters have different heights - some are tall (b, d, f, h, k, l), some are short (a, c, e, i, m), and some go below the line (g, j, p, q, y)
5) We use lowercase letters for most of our writing except at the start of sentences and names

COMMON MISCONCEPTIONS:
- Confusing b and d (most common reversal issue)
- Mixing up lowercase a and o
- Not realizing g can look two different ways (print vs. manuscript)
- Thinking all lowercase letters are just smaller versions of uppercase (a vs. A looks very different)
- Reversing letters when writing (developmentally appropriate but needs practice)
- Confusing lowercase letters that look similar (n and h, m and n)

TEACHING SEQUENCE:
Introduce lowercase letters alongside their uppercase partners when possible. Begin with letters that look most similar to their uppercase forms (c/C, o/O, s/S, v/V, w/W, x/X, z/Z) before tackling those that look quite different (a/A, b/B, d/D, e/E, g/G).

Use the "bed" trick for b and d: when you make fists with thumbs up, your left hand makes a "b" and right hand makes a "d" - together they spell "bed." Practice this kinesthetic approach regularly.

Emphasize letter placement on lines: "a sits on the line, b has a tall stick going up, g has a tail going down." Use lined paper with clear baselines, midlines, and top lines. Sky/grass/dirt analogies work well: tall letters reach the sky, short letters stay in the grass, tails go into the dirt.

DIFFERENTIATION:
For struggling learners: Focus on the most common lowercase letters first (a, e, t, s, n, r). Use tactile materials like sandpaper letters or raised letter cards. Provide extensive b/d practice with the "bed" technique. Color-code the problem letters differently. Use verbal mantras: "b has a belly in front, d has a diaper in back."

For advanced learners: Begin writing simple CVC words using known letters. Practice identifying lowercase letters in decodable texts. Create lowercase letter sorts (tall/short/tail letters). Match uppercase/lowercase memory games. Begin connecting letters to sounds in simple words.

VOCABULARY:
Lowercase, small letter, partner, match, tall, short, tail, baseline, uppercase, same, different, print, write

CONNECTION TO FUTURE LEARNING:
Lowercase letter mastery is crucial for reading because most text uses lowercase letters. Students will soon be reading simple decodable texts where rapid lowercase recognition enables fluency. Understanding letter placement on lines prepares students for proper handwriting. This foundation supports all future reading and writing across the curriculum.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Lowercase Letters a-m' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Lowercase Letters n-z
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Lowercase Letters n-z' AND grade_level_min = 0),
  'Lowercase Letters n-z (Kindergarten) Topic Guide',
  'Teaching lowercase letter recognition and formation for letters n through z',
  'LOWERCASE LETTERS n-z - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should recognize lowercase letters a-m and their uppercase partners. They should understand letter placement on lines (tall, short, tail letters). Basic understanding of how lowercase and uppercase letters work together is important. Students should have practice with multi-sensory letter activities.

LEARNING OBJECTIVES:
- Recognize and name lowercase letters n, o, p, q, r, s, t, u, v, w, x, y, and z with 80% accuracy
- Match all lowercase letters to their uppercase partners
- Complete the full lowercase alphabet sequence
- Form lowercase letters using proper stroke sequence
- Read simple words containing known lowercase letters

KEY CONCEPTS:
1) Completing the lowercase alphabet means knowing all 26 "reading" letters
2) Some letters in this group have tails below the line (p, q, y) and need special attention
3) The p/q confusion is similar to b/d - these letters are mirror images
4) Some lowercase letters look very similar to uppercase (o/O, s/S, v/V, w/W, x/X, z/Z)
5) Knowing all lowercase letters prepares us to start reading words and sentences

COMMON MISCONCEPTIONS:
- Confusing p and q (mirror images like b and d)
- Mixing up n and u (one is upside-down version of the other)
- Not recognizing that q almost always has u after it
- Confusing lowercase r with other letters
- Thinking y is only a vowel (it can be consonant or vowel)
- Reversing s when writing

TEACHING SEQUENCE:
Build systematically on a-m knowledge. Group letters strategically: letters that look like their uppercase partners (o, s, v, w, x, z), letters with tails (p, q, y), and letters that need special attention (n, r, t, u).

Address p/q confusion directly using the "pony" trick or similar mnemonic. The tail of p goes down like a pony''s leg, while q has its tail and looks like it''s queuing up with u behind it. Use movement: jump up for tall letters, crouch for short letters, touch toes for tail letters.

Create meaningful practice through name recognition activities. Many students have these letters in their names. Build word family awareness with simple patterns: -at, -an, -op, -un. Begin blending known letter sounds into simple words.

DIFFERENTIATION:
For struggling learners: Focus on highest-frequency letters first (t, n, s, r). Use consistent visual references and anchor charts. Provide extra practice with p/q using tactile methods. Create personal letter cards with pictures for problem letters. Use daily letter recognition warm-ups.

For advanced learners: Begin reading simple decodable texts with CVC words. Practice writing words from dictation. Sort words by beginning, middle, or ending sounds. Create simple sentences using known words. Introduce sight words alongside decodable words.

VOCABULARY:
Lowercase, alphabet, complete, partner, match, tail, letter, sound, word, read, write, recognize, same, different

CONNECTION TO FUTURE LEARNING:
Completing the lowercase alphabet is a major milestone that unlocks reading. Students can now engage with simple texts and begin the exciting journey of independent reading. This knowledge supports phonics instruction, sight word learning, and emergent writing. Students are ready to start blending sounds into words and reading simple sentences.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Lowercase Letters n-z' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Letter Matching
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Letter Matching' AND grade_level_min = 0),
  'Letter Matching (Kindergarten) Topic Guide',
  'Teaching students to match uppercase and lowercase letter pairs',
  'LETTER MATCHING - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should recognize most uppercase and lowercase letters individually. They should understand that uppercase and lowercase letters are partners. Basic sorting and matching skills from other activities are helpful. Students should be comfortable with the terms "uppercase/capital" and "lowercase/small."

LEARNING OBJECTIVES:
- Match all 26 uppercase letters to their lowercase partners with 90% accuracy
- Explain that uppercase and lowercase letters represent the same letter and sound
- Quickly identify matching pairs in games and activities
- Sort mixed letters into matching pairs
- Recognize that some pairs look alike while others look different

KEY CONCEPTS:
1) Every letter has two forms: uppercase (capital) and lowercase (small)
2) Both forms represent the same letter name and the same sound
3) Some letter pairs look very similar (C/c, O/o, S/s, V/v, W/w, X/x, Z/z)
4) Some letter pairs look quite different (A/a, B/b, D/d, E/e, G/g, Q/q, R/r)
5) Matching letters helps us become faster readers and better writers

COMMON MISCONCEPTIONS:
- Thinking uppercase and lowercase letters are completely different letters
- Believing the "different-looking" pairs (A/a, G/g) are separate letters
- Confusing similar-looking letters from different pairs (b/d, p/q, n/u)
- Not understanding why we need two forms of each letter
- Thinking uppercase letters are "better" or more important than lowercase

TEACHING SEQUENCE:
Begin with the easiest matches - letters that look almost identical in both forms: Cc, Oo, Ss, Vv, Ww, Xx, Zz. Create a "look-alike" category that students can master quickly for confidence building. Move to letters with similar but slightly different forms: Kk, Pp, Uu.

Tackle the "tricky pairs" next - letters that look quite different: Aa, Bb, Dd, Ee, Ff, Gg, Hh, Ii, Jj, Ll, Mm, Nn, Qq, Rr, Tt, Yy. Use stories and visuals: "Capital A is like a tent, lowercase a is like a circle with a stick."

Memory/concentration games are excellent for matching practice. Start with 6-8 pairs and gradually increase. Sorting activities work well: give students mixed magnetic letters to sort into matched pairs. Create "matching stations" with different manipulatives.

DIFFERENTIATION:
For struggling learners: Focus on 5-6 letter pairs at a time. Use color-coded cards where partners share a color. Create personal matching mats with spaces for specific pairs. Provide consistent visual references showing all 26 pairs. Practice the same subset until mastered before adding new pairs.

For advanced learners: Speed matching challenges with timers. Extend to matching letters in actual words. Have students create their own matching games. Begin connecting matched pairs to their sounds. Introduce alphabetizing activities using both cases.

VOCABULARY:
Match, pair, partner, uppercase, lowercase, capital, small, same, alike, different, letter, sort, together

CONNECTION TO FUTURE LEARNING:
Letter matching fluency supports reading development as students encounter both uppercase and lowercase letters in texts. Understanding that both forms represent the same letter and sound is foundational for phonics. This skill supports writing development as students learn when to use each form. Strong matching skills prepare students for dictionary and reference material use.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Letter Matching' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PHONICS FOUNDATIONS UNIT
-- ============================================================================

-- Beginning Sounds
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Beginning Sounds' AND grade_level_min = 0),
  'Beginning Sounds (Kindergarten) Topic Guide',
  'Teaching phonemic awareness through identifying initial sounds in words',
  'BEGINNING SOUNDS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should recognize most letters of the alphabet by name. They should have basic listening skills and the ability to focus on oral language activities. Understanding that words are made up of sounds is helpful but will be developed through this instruction. Students should be comfortable with rhyming from nursery rhymes and songs.

LEARNING OBJECTIVES:
- Identify the first sound (phoneme) in spoken words with 80% accuracy
- Categorize words by their beginning sounds
- Distinguish between different beginning sounds in a pair of words
- Generate words that begin with a given sound
- Connect beginning sounds to their corresponding letters

KEY CONCEPTS:
1) Every word begins with a sound that we can hear and identify
2) The beginning sound is the first sound we hear when we say a word
3) Many words can share the same beginning sound (cat, cup, car all start with /k/)
4) Listening carefully helps us hear and identify beginning sounds
5) Beginning sounds help us learn to read and write words

COMMON MISCONCEPTIONS:
- Confusing the letter name with the letter sound (the letter C is not the sound /k/)
- Identifying the first syllable instead of the first phoneme
- Having difficulty isolating the initial sound from the rest of the word
- Thinking words that start with the same letter always sound the same (cat vs. city)
- Focusing on meaning rather than sound (thinking "big" and "large" start the same)

TEACHING SEQUENCE:
Begin with continuous sounds that are easy to stretch and hear: /s/, /m/, /f/, /n/, /l/. Say words slowly, emphasizing and stretching the first sound: "Mmmmmmouse - what sound do you hear first?" Have students repeat the sound in isolation.

Use picture sorts where students group pictures by beginning sounds. Start with two contrasting sounds (like /m/ and /s/) that are very different. Gradually add more sounds and include sounds that are more similar.

Play "I Spy" with beginning sounds: "I spy something that begins with /b/." Have students identify objects in the classroom. Create alliterative sentences: "Silly Sam saw seven snakes." Use songs and chants that emphasize initial sounds.

DIFFERENTIATION:
For struggling learners: Focus on one beginning sound at a time with many examples. Use mirrors to show mouth position for different sounds. Provide picture cards with consistent, clear images. Extend the beginning sound for several seconds to make it easier to hear. Use kinesthetic cues (touch your knee for /n/, touch your mouth for /m/).

For advanced learners: Work on more challenging sounds like /th/, /sh/, /ch/. Have students generate multiple words starting with a given sound. Begin connecting sounds to their spelling patterns. Introduce ending sounds alongside beginning sounds. Play "change the first sound" games.

VOCABULARY:
Sound, beginning, first, same, different, listen, hear, word, start, letter, phoneme, voice

CONNECTION TO FUTURE LEARNING:
Beginning sound awareness is the gateway to phonics and decoding. When students can reliably identify initial sounds, they are ready to connect those sounds to letters and begin blending sounds into words. This skill is essential for both reading and invented spelling. Strong phonemic awareness predicts reading success.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Beginning Sounds' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Consonant Sounds
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Consonant Sounds' AND grade_level_min = 0),
  'Consonant Sounds (Kindergarten) Topic Guide',
  'Teaching the sounds that consonant letters make',
  'CONSONANT SOUNDS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should recognize most consonant letters by name. They should have practice identifying beginning sounds in words. Understanding that letters represent sounds is developing. Students should be comfortable with oral language activities and sound isolation exercises.

LEARNING OBJECTIVES:
- Produce the most common sound for each consonant letter with 85% accuracy
- Match consonant sounds to their corresponding letters
- Identify consonants by their sounds in spoken words
- Distinguish between similar consonant sounds
- Begin using consonant sounds to read and write simple words

KEY CONCEPTS:
1) Consonants are letters that are not vowels (all letters except a, e, i, o, u)
2) Each consonant letter makes a specific sound (or sounds)
3) Consonant sounds are made by partially blocking airflow with lips, tongue, or teeth
4) Some consonants have similar sounds and can be confusing (b/p, d/t, g/k)
5) Knowing consonant sounds helps us read and spell words

COMMON MISCONCEPTIONS:
- Confusing letter names with letter sounds (saying "bee" instead of /b/)
- Adding a vowel sound after the consonant (saying "buh" instead of /b/)
- Confusing voiced and unvoiced pairs (b/p, d/t, g/k, v/f)
- Thinking every letter makes only one sound (c makes /k/ and /s/)
- Not understanding that x makes two sounds (/ks/)

TEACHING SEQUENCE:
Group consonants strategically for instruction. Begin with continuous consonants that can be stretched: f, l, m, n, r, s, v, z. These are easier to hear and produce clearly. Move to stop consonants that cannot be stretched: b, d, g, h, j, k, p, t.

Use explicit articulation instruction: "For /m/, close your lips and hum. For /s/, put your teeth together and let air flow through like a snake." Have students use mirrors to see their mouth positions.

Connect sounds to memorable anchors: "M says /m/ like when something tastes good - mmmmm!" Use picture keyword cards consistently (apple for /a/, bat for /b/). Practice with phoneme isolation: "What sound does the letter m make?"

Address confusing pairs explicitly. Voiced consonants (b, d, g, v, z) use your voice box; unvoiced partners (p, t, k, f, s) are whispered. Have students touch their throats to feel the difference.

DIFFERENTIATION:
For struggling learners: Focus on the most useful consonants first (t, n, s, r, m, p, b). Use tactile methods - feel air on hand for /f/, vibration for /m/. Provide extra practice with confusing pairs one at a time. Create personalized sound cards with photos of meaningful objects.

For advanced learners: Introduce consonant digraphs (sh, ch, th). Practice blending consonant sounds with vowels. Begin reading simple CVC words. Explore consonants that make multiple sounds (c, g). Create words by changing consonant sounds.

VOCABULARY:
Consonant, sound, letter, voice, lips, tongue, teeth, same, different, say, listen, blend, stretch

CONNECTION TO FUTURE LEARNING:
Consonant sound knowledge is essential for decoding and encoding words. Students will combine consonant sounds with vowel sounds to read CVC words and will use consonant sounds in invented spelling. Understanding consonant sounds supports learning consonant blends and digraphs. This phonics foundation enables independent reading development.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Consonant Sounds' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Short Vowel Sounds
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Short Vowel Sounds' AND grade_level_min = 0),
  'Short Vowel Sounds (Kindergarten) Topic Guide',
  'Teaching the short sounds of vowel letters A, E, I, O, U',
  'SHORT VOWEL SOUNDS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should know most consonant sounds. They should be able to identify and name the five vowel letters (a, e, i, o, u). Understanding that vowels are special letters that appear in every word is helpful. Students should have practice with phoneme isolation and sound identification.

LEARNING OBJECTIVES:
- Produce the short sound for each vowel (a, e, i, o, u) with 80% accuracy
- Distinguish between different short vowel sounds
- Identify short vowels in the middle of CVC words
- Use short vowel sounds to read simple words
- Spell simple CVC words using short vowel sounds

KEY CONCEPTS:
1) Vowels are the special letters: A, E, I, O, U (and sometimes Y)
2) Every word and every syllable must have at least one vowel
3) Short vowels make a quick, clipped sound
4) Short vowel sounds are: /ă/ as in apple, /ĕ/ as in egg, /ĭ/ as in igloo, /ŏ/ as in octopus, /ŭ/ as in umbrella
5) In simple CVC words (consonant-vowel-consonant), the vowel usually makes its short sound

COMMON MISCONCEPTIONS:
- Confusing short vowel sounds (especially /e/ and /i/, or /o/ and /u/)
- Using the letter name instead of the short sound
- Not recognizing that vowels can make different sounds
- Thinking every vowel makes the same sound in every word
- Difficulty hearing the vowel sound in the middle of words

TEACHING SEQUENCE:
Introduce short vowels one at a time with plenty of practice before adding the next. A common sequence: short a, then i, then o, then u, then e (saving the most confused sounds for later when students have more experience).

Use consistent picture keywords and hand motions: "Short a says /ă/ like when you sneeze - achoo! Touch your nose." Apple, elephant, igloo, octopus, umbrella are common anchors. Sing vowel songs and use chants for memorable practice.

Emphasize that the short vowel sound is in the MIDDLE of CVC words. Practice with picture sorts: "Does cat have short a or short i in the middle?" Build word families: cat, bat, hat, sat - all have short a. Use Elkonin boxes (sound boxes) to isolate the vowel sound.

DIFFERENTIATION:
For struggling learners: Focus on contrasting vowels that sound very different first (/a/ and /o/, or /a/ and /i/). Use physical movements and gestures for each vowel. Provide extensive practice with just two vowel sounds before adding more. Use colored vowel cards to emphasize the vowel in words.

For advanced learners: Begin reading CVC word families fluently. Practice spelling CVC words from dictation. Introduce words with consonant blends (flat, stop). Compare short and long vowel sounds. Read simple decodable sentences with CVC words.

VOCABULARY:
Vowel, short sound, middle, word, consonant, blend, say, listen, read, spell, same, different

CONNECTION TO FUTURE LEARNING:
Short vowel mastery is crucial for reading CVC words, which form the foundation of early decoding. Students will learn to contrast short vowels with long vowels and understand spelling patterns. Short vowel fluency supports reading fluency in decodable texts and enables invented spelling for writing. This skill is essential for all future reading development.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Short Vowel Sounds' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Rhyming Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Rhyming Words' AND grade_level_min = 0),
  'Rhyming Words (Kindergarten) Topic Guide',
  'Recognizing and producing rhyming words through phonemic awareness activities',
  'RHYMING WORDS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should have exposure to nursery rhymes, songs, and rhyming books. Basic listening skills for oral language activities are important. Understanding that words are made of sounds is developing. Students should be able to attend to read-alouds and participate in group activities.

LEARNING OBJECTIVES:
- Recognize when two words rhyme with 85% accuracy
- Produce rhyming words when given a target word
- Identify the odd word out in a set of rhyming words
- Complete rhyming couplets in familiar texts
- Understand that rhyming words share the same ending sound

KEY CONCEPTS:
1) Rhyming words sound the same at the end (cat/hat, dog/frog)
2) Rhyming words have different beginning sounds but the same ending chunk
3) Rhymes appear in songs, poems, and many children''s books
4) Recognizing rhymes helps us hear the smaller sounds in words
5) Rhyming is fun and helps us play with language

COMMON MISCONCEPTIONS:
- Thinking words that start the same are rhymes (cat/car - these do NOT rhyme)
- Confusing rhyming with alliteration (same beginning sounds)
- Believing words must be spelled similarly to rhyme (blue/shoe rhyme despite spelling)
- Thinking only "real words" can rhyme (invented words like "zat" rhyme with cat)
- Not hearing the difference between rhyming and non-rhyming pairs

TEACHING SEQUENCE:
Immerse students in rhyming texts before explicit instruction. Read nursery rhymes, Dr. Seuss books, and other rhyming literature daily. Point out rhymes: "Listen - cat and hat sound the same at the end. They rhyme!"

Play "Do these rhyme?" games with word pairs. Start with very obvious pairs (cat/bat) and non-pairs (cat/dog). Use thumbs up/thumbs down or yes/no cards for active participation. Gradually increase difficulty with closer non-rhymes (cat/cap).

Move to rhyme production: "Tell me a word that rhymes with cat." Accept invented words that rhyme correctly - this shows phonemic awareness! Create class rhyming word lists. Play "rhyme around the circle" games where each student adds a rhyme.

DIFFERENTIATION:
For struggling learners: Focus on recognition before production. Use picture matching (match pictures of things that rhyme). Emphasize the ending chunk explicitly: "Cat, hat - they both end with -at!" Use just a few word families initially (-at, -an, -op). Provide sentence frames: "___ rhymes with cat."

For advanced learners: Generate multiple rhymes for one word. Create simple rhyming couplets orally. Identify rhymes in longer texts. Begin connecting rhyme recognition to reading word families. Play "odd one out" with sets of three words where one doesn''t rhyme.

VOCABULARY:
Rhyme, same, different, end, sound, word, match, pair, beginning, ending, listen

CONNECTION TO FUTURE LEARNING:
Rhyme awareness is a powerful predictor of reading success and supports phonemic awareness development. Recognizing that rhyming words share ending chunks (-at, -op, -ug) prepares students for reading word families. Rhyme awareness helps students make analogies when decoding: "If I can read cat, I can read hat!" This skill supports spelling development and reading fluency.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rhyming Words' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Blending Sounds
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Blending Sounds' AND grade_level_min = 0),
  'Blending Sounds (Kindergarten) Topic Guide',
  'Teaching students to blend individual sounds together to read simple CVC words',
  'BLENDING SOUNDS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should know most consonant and short vowel sounds. They should have practice with phoneme isolation and identification. Understanding that words are made of individual sounds that can be pulled apart and put together is essential. Students should have strong letter-sound correspondence for common letters.

LEARNING OBJECTIVES:
- Blend three spoken sounds into a recognizable word with 80% accuracy
- Use blending to read CVC words (consonant-vowel-consonant)
- Apply different blending strategies (continuous, onset-rime)
- Self-correct when blended words don''t sound right
- Increase blending speed and fluency with practice

KEY CONCEPTS:
1) Blending means pushing sounds together to make a word
2) We blend sounds left to right, just like we read
3) When we blend /c/ /a/ /t/, we get the word "cat"
4) Blending is the key skill that allows us to read new words
5) Smooth blending without pauses makes words easier to recognize

COMMON MISCONCEPTIONS:
- Saying sounds too separately with long pauses, making the word unrecognizable
- Adding extra sounds, especially "uh" after consonants (saying "cuh-a-tuh" instead of /c/ /a/ /t/)
- Starting over instead of continuing to blend through the word
- Guessing based on pictures or first letter instead of blending
- Giving up when the blended word sounds unfamiliar

TEACHING SEQUENCE:
Start with oral blending (no letters). Say sounds slowly: "/m/ /a/ /n/ - put them together, what word is it?" Students respond "man." This isolates the blending skill from letter recognition.

Move to continuous blending with letters. Use words starting with continuous consonants (f, l, m, n, r, s, v, z) that can be stretched: "fffaaannn - fan!" Demonstrate keeping your voice on as you move through each sound.

Introduce onset-rime blending for words with stop consonants: "/c/ - /at/ = cat." The first sound (onset) joins the word family ending (rime). Practice with word family sets: at, sat, mat, bat, cat.

Use visual supports like Elkonin boxes or letter tiles. Touch each sound, then sweep under the word while blending. Gradually increase speed until blending becomes automatic.

DIFFERENTIATION:
For struggling learners: Begin with two-sound words (at, in, up) before CVC words. Use physical movements - hop for each sound, then jump while blending. Slow the pace and reduce the number of words per session. Use consistent, decodable words rather than exception words. Provide immediate corrective feedback.

For advanced learners: Practice blending words with consonant blends (stop, flag). Increase speed expectations with timed activities. Blend longer words with more than three sounds. Move from supported blending to independent reading in context. Introduce CVCC and CCVC words.

VOCABULARY:
Blend, sound, push together, word, read, say, smooth, left to right, stretch, touch, slide

CONNECTION TO FUTURE LEARNING:
Blending is THE essential skill for decoding. Once students can blend reliably, they can read any regularly-spelled word they know the sounds for. Blending fluency supports reading simple sentences and decodable texts. This skill, combined with sight word recognition, enables independent reading. Strong blenders become confident readers who attack new words rather than avoiding them.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Blending Sounds' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING COMPREHENSION UNIT
-- ============================================================================

-- Story Characters
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Story Characters' AND grade_level_min = 0),
  'Story Characters (Kindergarten) Topic Guide',
  'Teaching students to identify and describe characters in stories',
  'STORY CHARACTERS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should have experience listening to stories read aloud. They should be able to attend to a story for 10-15 minutes. Understanding that stories tell about people, animals, or things that do things is helpful. Students should be developing vocabulary for describing people and actions.

LEARNING OBJECTIVES:
- Identify the main characters in a story with 90% accuracy
- Describe characters using words from the text and pictures
- Distinguish between major and minor characters
- Identify what characters do, say, and feel
- Compare characters within and across stories

KEY CONCEPTS:
1) Characters are the people, animals, or things that a story is about
2) Main characters are in most of the story; supporting characters appear less often
3) We learn about characters from what they do, say, and how they feel
4) Characters can change during a story
5) Pictures and words both tell us about characters

COMMON MISCONCEPTIONS:
- Thinking only humans can be characters (animals and objects can be characters too)
- Confusing the author or narrator with a character
- Not recognizing that the same character appears throughout a story
- Difficulty distinguishing main characters from minor ones
- Thinking all characters are "good" or "bad" without nuance

TEACHING SEQUENCE:
Start with familiar stories that have clear, memorable characters. Before reading, preview: "Today we will think about WHO is in the story." During reading, pause to identify characters: "Who is this? Yes, this is Goldilocks. She is a character in our story."

Create character webs or charts together. Put the character''s name or picture in the center and add details: what they look like, what they do, how they feel. Use evidence from both illustrations and text.

Use drama and retelling to reinforce character understanding. Students can act out what characters do or use puppets to retell. This embodied learning helps characters become memorable and real.

Compare characters across stories: "How is the Big Bad Wolf like the Troll from the Three Billy Goats Gruff? They both try to hurt the main characters." This builds critical thinking about character types.

DIFFERENTIATION:
For struggling learners: Focus on very familiar stories with one or two clear characters. Use visual character cards during and after reading. Act out character actions together. Provide sentence frames: "The character is ___. The character feels ___." Reread favorite stories to build deeper character understanding.

For advanced learners: Analyze character feelings and motivations. Discuss how characters change during the story. Compare characters across multiple stories. Have students draw and write about favorite characters. Create "character interviews" where students answer questions as the character.

VOCABULARY:
Character, main character, story, person, animal, do, say, feel, happy, sad, scared, brave, kind, mean

CONNECTION TO FUTURE LEARNING:
Character identification is foundational for all narrative comprehension. Students will develop deeper character analysis skills including understanding motivation, change, and relationships. Character awareness supports making predictions and understanding plot. Strong character understanding enhances enjoyment and engagement with literature and prepares students for more complex literary analysis.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Story Characters' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Story Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Story Events' AND grade_level_min = 0),
  'Story Events (Kindergarten) Topic Guide',
  'Teaching students to identify and sequence story events',
  'STORY EVENTS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should have experience with story read-alouds and be able to identify characters. They should understand basic time concepts (before/after, first/then/last). Familiarity with common story structures from repeated read-alouds is helpful. Students should be able to recall basic information from stories.

LEARNING OBJECTIVES:
- Identify major events in a story with 85% accuracy
- Retell story events in correct sequence
- Use sequence words (first, then, next, last) to describe events
- Distinguish between important and less important events
- Describe what happened at the beginning, middle, and end

KEY CONCEPTS:
1) Stories have events - things that happen in a certain order
2) Events happen in a sequence: first, next, then, finally
3) Every story has a beginning, middle, and end
4) The order of events matters for understanding the story
5) Important events are key to the story; details can be left out when retelling

COMMON MISCONCEPTIONS:
- Confusing the order of events or jumbling the sequence
- Including too many minor details while missing major events
- Starting in the middle of the story when retelling
- Not understanding that events are connected (cause and effect)
- Difficulty distinguishing what really happened from what might happen

TEACHING SEQUENCE:
Use predictable stories with clear sequences and repetitive patterns. Begin with three-event stories before moving to more complex plots. Read slowly and pause between major events: "First, the bear went for a walk. Then what happened?"

Create sequence cards or picture strips. After reading, have students put pictures in order while retelling. Use physical movement - students can stand in a line representing different events and "become" the story.

Explicitly teach sequence vocabulary. Model using words like first, next, then, after that, finally. Create anchor charts with these words. During retelling, prompt: "What happened first? Then what happened? How did it end?"

Use story maps with three boxes (Beginning, Middle, End) or four boxes (First, Next, Then, Last). Draw or write simple notes in each box during or after reading. This visual support scaffolds sequencing.

DIFFERENTIATION:
For struggling learners: Use very simple, short stories with obvious sequences. Provide picture cards to manipulate into order. Retell together before asking for independent retelling. Use hand motions for sequence words (hold up one finger for first, two for next, etc.). Focus on just beginning and end before adding middle events.

For advanced learners: Work with longer, more complex stories. Have students draw their own sequence strips. Introduce cause-and-effect connections between events. Compare how events unfold in different versions of the same tale. Have students create original story sequences.

VOCABULARY:
Event, happen, first, next, then, finally, last, beginning, middle, end, order, sequence, before, after

CONNECTION TO FUTURE LEARNING:
Event sequencing builds narrative comprehension and prepares students for understanding story structure including plot, conflict, and resolution. This skill supports retelling and summarization. Understanding sequence also helps with informational text that follows chronological order. Strong sequencing abilities support writing development as students create their own organized narratives.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Story Events' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Making Predictions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Making Predictions' AND grade_level_min = 0),
  'Making Predictions (Kindergarten) Topic Guide',
  'Teaching students to predict what might happen next in a story',
  'MAKING PREDICTIONS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should have experience with many read-alouds and understand story structure basics. They should be able to identify characters and understand story events. Familiarity with common story patterns (problems and solutions, repeating events) is helpful. Students should feel comfortable sharing ideas verbally.

LEARNING OBJECTIVES:
- Make reasonable predictions about what will happen next in a story
- Use pictures, text, and prior knowledge to support predictions
- Explain reasoning for predictions using evidence
- Adjust predictions as new information is revealed
- Understand that predictions are guesses based on clues, not certainties

KEY CONCEPTS:
1) A prediction is a smart guess about what might happen next
2) Good predictions are based on clues from the pictures, words, and what we know
3) Predictions help us stay engaged and think while reading
4) It is okay if predictions are wrong - good readers adjust their thinking
5) Making predictions is like being a detective looking for clues

COMMON MISCONCEPTIONS:
- Thinking predictions must be "right" (predictions are about thinking, not correct answers)
- Making random guesses without using evidence
- Difficulty distinguishing between what happened and what might happen
- Giving up on predicting after one incorrect guess
- Only using pictures and ignoring text clues (or vice versa)

TEACHING SEQUENCE:
Model prediction thinking explicitly during read-alouds. Stop at strategic points: "Let me think about what might happen next. I see that the mouse is scared of the cat, so I predict the mouse will run away. Let me keep reading to find out!"

Use predictable books with patterns that support prediction. After establishing a pattern, pause: "What do you think will happen when the fox meets the third billy goat?" Celebrate logical predictions even when they differ from the actual outcome.

Teach students to look for clues: cover illustrations, character expressions, repeated patterns, story problems that need solutions. Create anchor charts of prediction clues. Use think-pair-share so all students practice predicting.

Emphasize prediction as a process. After checking predictions, discuss: "Our prediction was different from what happened. That is okay! What clues did we use? What new information changed the story?"

DIFFERENTIATION:
For struggling learners: Use very predictable books with obvious patterns. Provide prediction sentence frames: "I think ___ will happen because ___." Focus on picture clues initially. Make predictions as a group before asking for individual predictions. Use simple two-choice predictions at first.

For advanced learners: Predict multiple possibilities and explain each. Make predictions about character feelings and motivations. Compare predictions across similar stories. Have students write or draw their predictions. Discuss why some predictions are more logical than others.

VOCABULARY:
Predict, guess, think, might, could, because, clue, evidence, picture, happen next, find out, check

CONNECTION TO FUTURE LEARNING:
Making predictions is a foundational comprehension strategy used throughout schooling. This active reading skill increases engagement and monitors understanding. Prediction supports inference-making as students learn to read between the lines. The habit of thinking ahead while reading improves comprehension and critical thinking skills essential for academic success.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Making Predictions' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Asking Questions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Asking Questions' AND grade_level_min = 0),
  'Asking Questions (Kindergarten) Topic Guide',
  'Teaching students to ask and answer questions about stories',
  'ASKING QUESTIONS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should have experience with story read-alouds. They should understand basic question words (who, what, where, when, why). Familiarity with the concept that books provide information is helpful. Students should feel comfortable participating in class discussions.

LEARNING OBJECTIVES:
- Ask questions before, during, and after reading with increasing independence
- Answer who, what, where questions about a story with 85% accuracy
- Understand that questions help us understand and think about stories
- Distinguish between questions answered in the text and those requiring inference
- Use questions to monitor and improve comprehension

KEY CONCEPTS:
1) Good readers ask questions before, during, and after reading
2) Question words help us ask good questions: who, what, where, when, why, how
3) Some questions can be answered right in the book; others require thinking
4) Asking questions helps us understand and remember stories better
5) It is smart to ask questions when we are confused or curious

COMMON MISCONCEPTIONS:
- Thinking questioning means you do not understand (actually it helps understanding)
- Only asking questions at the end of a story
- Difficulty forming questions (statements instead of questions)
- Thinking all questions have one right answer
- Not recognizing when a question has been answered

TEACHING SEQUENCE:
Model questioning throughout read-alouds. Before reading: "I wonder what this story will be about?" During reading: "Why did the character do that?" After reading: "What would happen if the story continued?"

Teach question words explicitly. Create an anchor chart with question word starters. Practice changing statements into questions. Play games: "Turn this into a who question, a what question, a where question."

Use "Question-Answer Relationships" (QAR) at a basic level. "Right There" questions have answers directly in the book. "Think and Search" questions require putting information together. "In My Head" questions use what we already know.

Create a classroom culture where questions are valued. Use a "Wonder Wall" or question jar. Celebrate good questions as much as good answers. Model that adults have questions too.

DIFFERENTIATION:
For struggling learners: Focus on answering questions before asking them. Provide question stems to complete. Use picture walks to generate simple questions. Work with who, what, and where before why and how. Use familiar stories where answers are well-known.

For advanced learners: Ask deeper "why" and "how" questions. Encourage questions that go beyond the text. Have students generate questions for classmates. Distinguish between literal and inferential questions. Create question webs for complex stories.

VOCABULARY:
Question, ask, wonder, who, what, where, when, why, how, answer, curious, think, understand

CONNECTION TO FUTURE LEARNING:
Questioning is a critical comprehension strategy that supports active reading throughout life. Students will develop more sophisticated questioning including analysis and evaluation. This skill supports research and inquiry learning. Good questioners become better critical thinkers who engage deeply with texts across all subject areas.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Asking Questions' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING BASICS UNIT
-- ============================================================================

-- Writing Your Name
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Writing Your Name' AND grade_level_min = 0),
  'Writing Your Name (Kindergarten) Topic Guide',
  'Teaching students to write their first and last names correctly',
  'WRITING YOUR NAME - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should be able to recognize their written name. Basic fine motor skills for holding a crayon or pencil are important. Understanding that names are special words that identify us is helpful. Students should know some letters, especially those in their names.

LEARNING OBJECTIVES:
- Write first name from memory using correct letter formation with 90% accuracy
- Begin first name with an uppercase letter and continue with lowercase letters
- Write last name with increasing accuracy
- Write name within appropriate spaces and on a line
- Recognize that their written name represents them

KEY CONCEPTS:
1) Everyone has a name that is spelled a specific way
2) Names start with an uppercase (capital) letter
3) The rest of the letters in a name are lowercase
4) Our name is often the first word we learn to write
5) Writing our name is a way to show that something belongs to us

COMMON MISCONCEPTIONS:
- Writing all letters as uppercase (JOHN instead of John)
- Writing all letters as lowercase (john instead of John)
- Reversing letters, especially b, d, p, q
- Including random extra letters or symbols
- Not understanding consistent left-to-right directionality

TEACHING SEQUENCE:
Begin with first name only. Create individual name cards with proper uppercase/lowercase format. Trace over the name, then copy below it. Practice on various surfaces: sand, shaving cream, finger paint, large paper with markers.

Analyze the letters in each child''s name. Which letters are tall? Short? Have tails? Connect name writing to letter instruction. "Your name starts with M. What sound does M make?"

Use consistent verbal cues for letter formation. Create individual name strips for desks. Practice writing names on all work throughout the day - this builds automatic fluency.

Once first names are solid, introduce last names using the same approach. Discuss that the first letter of the last name is also uppercase because it is a name.

DIFFERENTIATION:
For struggling learners: Start with just the first 2-3 letters. Use highlighting or yellow crayon for tracing underneath. Provide tactile letters to trace. Use larger paper and writing tools. Focus on one difficult letter at a time. Consider motor skill development activities.

For advanced learners: Add middle names or initials. Practice writing full name on appropriately-sized lines. Write names of family members or friends. Use name writing in meaningful contexts (cards, labels, sign-in sheets). Begin proper spacing between first and last names.

VOCABULARY:
Name, first name, last name, uppercase, capital letter, lowercase, small letter, write, trace, letter, spell

CONNECTION TO FUTURE LEARNING:
Name writing is often a child''s first experience with meaningful writing. It establishes letter formation habits and left-to-right directionality. The confidence gained from writing one''s name motivates further writing development. Understanding that names follow the uppercase-then-lowercase pattern builds capitalization rules knowledge. Name writing fluency allows students to independently label work and belongings.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Your Name' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Writing Letters
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Writing Letters' AND grade_level_min = 0),
  'Writing Letters (Kindergarten) Topic Guide',
  'Teaching proper formation of uppercase and lowercase letters',
  'WRITING LETTERS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should recognize most uppercase and lowercase letters. Basic fine motor skills and pencil grip development are important. Understanding that letters represent sounds and combine to make words is helpful. Students should have experience with pre-writing activities (tracing, drawing lines and shapes).

LEARNING OBJECTIVES:
- Form uppercase and lowercase letters using correct stroke sequence
- Write letters starting from the correct position (usually top)
- Maintain appropriate letter size and proportions
- Place letters correctly on lines (baseline, midline, topline)
- Write legibly so others can read the letters

KEY CONCEPTS:
1) Each letter has a specific way it should be formed (stroke sequence)
2) Most letters start at the top and move down
3) Uppercase letters are all the same height and sit on the baseline
4) Lowercase letters have different heights (tall, short, tail letters)
5) Good letter formation helps others read our writing

COMMON MISCONCEPTIONS:
- Starting letters from the bottom instead of the top
- Using inefficient stroke sequences (lifting the pencil unnecessarily)
- Making letters too large, too small, or inconsistent in size
- Not placing letters on lines appropriately
- Confusing similar-looking letters in formation (b/d, p/q, n/u)

TEACHING SEQUENCE:
Group letters by formation patterns. Stick letters (l, t, i) use vertical and horizontal strokes. Circle letters (c, o, a, d, g, q) start with a curve. Hump letters (n, m, h) have similar curved portions.

Model letter formation explicitly with verbal directions: "Start at the top, go straight down, pick up your pencil, go across the middle." Use sky-writing (air writing) before paper practice. Demonstrate on whiteboards or chart paper.

Provide structured practice opportunities. Use lined paper appropriate for kindergartners (with wide spacing). Trace, copy, and then write from memory. Practice in context - writing letters that appear in meaningful words.

Establish consistent starting points. Use visual cues on paper (green dots for starting points). Teach the "top-down, left-to-right" principle. Address reversals directly with specific strategies.

DIFFERENTIATION:
For struggling learners: Focus on one or two letters per session. Use larger writing tools and paper. Provide tactile practice (sand trays, textured letters). Use verbal chants for each letter''s strokes. Consider occupational therapy consultation for persistent fine motor difficulties.

For advanced learners: Work on fluency and speed while maintaining quality. Transition to narrower-lined paper. Practice writing letters in words and sentences. Introduce cursive letter awareness. Create letter booklets or alphabet books.

VOCABULARY:
Letter, uppercase, lowercase, write, form, stroke, start, top, bottom, line, baseline, straight, curve, pencil

CONNECTION TO FUTURE LEARNING:
Proper letter formation is essential for writing fluency. When letter formation becomes automatic, students can focus on the content of their writing rather than the mechanics. Consistent formation prevents confusion and reversals. Good handwriting supports spelling development and allows students to communicate effectively through writing. These skills transfer to all written work across the curriculum.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Letters' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Drawing and Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Drawing and Writing' AND grade_level_min = 0),
  'Drawing and Writing (Kindergarten) Topic Guide',
  'Teaching students to combine drawings with emergent writing',
  'DRAWING AND WRITING - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should have basic drawing skills and be able to represent ideas visually. They should know some letters and understand that writing communicates meaning. Familiarity with picture books as models is helpful. Students should feel comfortable sharing their ideas verbally.

LEARNING OBJECTIVES:
- Create drawings that represent ideas, experiences, or stories
- Add labels or words to drawings to communicate meaning
- Use a combination of drawing, dictation, and writing to compose
- Understand that drawing and writing work together to tell a story
- Develop confidence as a writer through drawing and early writing

KEY CONCEPTS:
1) Drawing is a form of communication, just like writing
2) Writers use pictures AND words to share ideas
3) Drawing can help us plan what we want to write
4) Even a few letters or words added to a drawing make it more complete
5) Our drawings and writing tell others about our ideas and experiences

COMMON MISCONCEPTIONS:
- Thinking drawing is not "real" writing (it is a valid part of the writing process)
- Believing you must be able to spell correctly to write
- Drawing without any attempt to add text
- Not understanding that others might not understand their drawing without explanation
- Thinking writing must be perfect to be valuable

TEACHING SEQUENCE:
Start with drawing as prewriting. "Draw a picture about your weekend, then we will add words." Model thinking aloud while drawing and adding simple labels or sentences. Show how professional illustrators combine pictures and words.

Introduce the concept of labeling. Point to parts of a student''s drawing: "This is the sun. Can you write an S for sun?" Accept all levels of writing: scribbles that represent words, initial sounds, phonetic spelling, and conventional spelling.

Use interactive writing where the class composes together. "Let''s write a sentence about your drawing. You drew a cat. Let''s write ''cat.'' What sound do you hear first?" Share the pen - teacher writes some letters, students write others.

Publish student work to show that drawing and writing are valued together. Create class books, display work, and share with families. This motivates students to develop both skills.

DIFFERENTIATION:
For struggling learners: Accept drawing as a valid response initially. Scribe student dictation beneath drawings. Encourage any letter attempts, even random strings. Use verbal rehearsal before writing. Provide word walls and picture dictionaries for support.

For advanced learners: Encourage multi-page "books" with drawings and text. Expect more complete sentences. Introduce basic conventions (capitals, periods). Have students read their writing to others. Create stories with beginning, middle, and end.

VOCABULARY:
Draw, picture, write, word, label, story, idea, tell, share, sentence, letter, sound, compose

CONNECTION TO FUTURE LEARNING:
Drawing and writing together is the foundation of the writing process. Students will gradually shift from mostly drawing to mostly writing, but illustration remains a planning strategy. This practice builds writing confidence and fluency. Understanding that writing communicates meaning motivates conventional spelling and sentence development. These early experiences establish students'' identities as writers.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Drawing and Writing' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Writing Simple Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Writing Simple Words' AND grade_level_min = 0),
  'Writing Simple Words (Kindergarten) Topic Guide',
  'Teaching students to write simple CVC words using phonetic knowledge',
  'WRITING SIMPLE WORDS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Students should know most consonant and short vowel sounds. They should be able to segment words into individual sounds (phoneme segmentation). Basic letter formation skills are important. Students should understand that words are made of sounds that can be represented by letters.

LEARNING OBJECTIVES:
- Spell simple CVC words using letter-sound knowledge with 75% accuracy
- Segment spoken words into sounds for spelling
- Represent each sound with an appropriate letter
- Use invented spelling for words not yet conventionally known
- Apply phonics knowledge to encode (spell) words

KEY CONCEPTS:
1) We can write words by listening to the sounds and writing letters for each sound
2) Every sound in a word needs a letter (or letters) to represent it
3) Stretching out words slowly helps us hear all the sounds
4) It is okay if spelling is not perfect - what matters is representing sounds
5) This process of "sounding out" words for writing is called encoding or invented spelling

COMMON MISCONCEPTIONS:
- Thinking every word must be spelled correctly to write it
- Missing the middle vowel sound (writing "ct" for "cat")
- Only writing the first sound or first and last sounds
- Adding extra letters that are not represented in the sounds
- Believing they cannot write if they do not know how to spell

TEACHING SEQUENCE:
Begin with oral sound segmentation. Say a word slowly, stretching it out: "c-a-t." Have students repeat and count sounds on fingers. Use Elkonin (sound) boxes - one box for each sound, push a chip into each box as you say each sound.

Connect segmentation to writing. Model thinking aloud: "I want to write ''sun.'' Let me stretch it out: sss-uuu-nnn. I hear /s/ first, that is letter s. Then I hear /u/, that is letter u. Finally /n/, that is letter n. Sun: s-u-n."

Practice with picture prompts. Show a picture of a cat. "What is this? Cat. Let''s write it together. What sound do you hear first?" Work through each sound together, writing the corresponding letters.

Create a supportive environment for invented spelling. Celebrate attempts! "I can read your writing. You wrote ''dg'' for dog. You heard the /d/ and the /g/! Listen: d-o-g. What sound is in the middle?"

DIFFERENTIATION:
For struggling learners: Start with two-sound words (at, up, in) before CVC words. Focus on words with continuous sounds that can be stretched (man, sun, fan). Use picture support and sound boxes consistently. Accept partial representations (first and last sounds). Provide letter tiles to manipulate before writing.

For advanced learners: Work with words containing blends (stop, best) or digraphs (shop, chin). Introduce common word endings (-ing, -ed). Begin expecting conventional spelling for high-frequency words. Write simple phrases and sentences. Compare invented spelling to book spelling.

VOCABULARY:
Sound, letter, word, spell, write, stretch, hear, first, middle, last, beginning, ending, phonics

CONNECTION TO FUTURE LEARNING:
Writing simple words through encoding is foundational for all independent writing. This skill develops alongside reading as decoding and encoding reinforce each other. Students will develop more sophisticated spelling patterns while maintaining the sound-based approach for unfamiliar words. Early encoding confidence supports writing fluency and encourages students to take risks as writers throughout their education.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Simple Words' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Kindergarten Reading Topics: 18 comprehensive prompts
-- Units covered:
--   1. Letter Recognition (5 topics)
--   2. Phonics Foundations (5 topics)
--   3. Reading Comprehension (4 topics)
--   4. Writing Basics (4 topics)
-- ============================================================================
