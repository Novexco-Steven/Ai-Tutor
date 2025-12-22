-- ============================================================================
-- PRE-KINDERGARTEN MATH TOPIC PROMPTS
-- ============================================================================
-- Comprehensive pedagogical prompts for each Pre-K Math topic
-- Each prompt (500+ words) includes prerequisites, objectives, concepts,
-- misconceptions, teaching sequence, differentiation, and assessment
-- Grade Level: -1 (Pre-K / Junior Kindergarten, Ages 3-5)
-- ============================================================================

-- ============================================================================
-- COUNT TO 3 UNIT TOPICS
-- ============================================================================

-- Number Recognition to 3
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Recognition to 3' AND grade_level_min = -1),
  'Number Recognition to 3 Topic Guide',
  'Comprehensive teaching approach for recognizing numbers 1, 2, and 3',
  'NUMBER RECOGNITION TO 3 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Exposure to numbers in the environment (books, signs, toys)
- Basic attention span (2-3 minutes for focused activity)
- Emerging fine motor skills for pointing
- Verbal ability to repeat simple words

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the numerals 1, 2, and 3 when shown
2. Name the numerals 1, 2, and 3 verbally
3. Match numerals to their names
4. Recognize numerals in different fonts and contexts
5. Begin to associate numerals with quantities

KEY CONCEPTS:
- Numerals are symbols that represent numbers
- Each numeral has a specific name
- Numbers appear all around us in daily life
- The same numeral looks similar even in different styles

COMMON MISCONCEPTIONS:
- Confusing numerals with letters (1 with l, 2 with Z)
- Believing numbers only appear in math contexts
- Thinking reversed numerals are different numbers
- Not connecting written numerals to spoken names

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Sing a simple counting song with fingers: "One little, two little, three little fingers!" Show number cards as you sing. "Look! This is the number 1. Can you say 1?"

2. DIRECT INSTRUCTION (5 minutes):
Show large, colorful numeral cards one at a time. "This is the number 1. It looks like a straight line going down. One. This is the number 2. It has a curve and a line at the bottom. Two. This is the number 3. It has two bumps on the side. Three." Trace each numeral in the air together.

3. GUIDED PRACTICE (5 minutes):
"Let''s play a game! When I hold up a number, you tell me its name." Start with just 1 and 2, then add 3. Provide immediate positive feedback. "Yes! That''s the number 2! You remembered!"

4. INDEPENDENT APPLICATION (5 minutes):
Number hunt around the room. "Can you find the number 1 somewhere in our room?" Point to numbers on books, calendars, posters. Celebrate each discovery.

DIFFERENTIATION:

For Struggling Learners:
- Focus on just number 1 first, then add 2, then 3
- Use tactile numbers (sandpaper, raised foam)
- Provide hand-over-hand tracing
- Use consistent, large font numerals only
- Repeat exposure daily with same materials

For Advanced Learners:
- Extend to recognizing 4 and 5
- Match numerals to quantity cards
- Identify numerals in different fonts
- Begin numeral formation with large motor movements
- Find numbers in storybooks

ASSESSMENT INDICATORS:
- Recognition: Points to correct numeral when named
- Naming: Says numeral name when shown
- Consistency: Recognizes numerals across sessions
- Generalization: Finds numerals in environment
- Confidence: Responds without excessive hesitation

REAL-WORLD CONNECTIONS:
- House numbers on doors
- Numbers on clocks
- Page numbers in books
- Numbers on phones
- Age candles on birthday cakes

VOCABULARY:
number, one, two, three, numeral, count, find, point, name

QUESTIONING TECHNIQUES:
- "What number is this?" (Showing numeral)
- "Can you find the number 2?"
- "How many bumps does the 3 have?"
- "Where do you see numbers at home?"

MATERIALS:
- Large numeral cards (1, 2, 3)
- Tactile numerals (sandpaper, foam)
- Number books
- Environmental print with numbers
- Number puzzles

COMMON ERRORS AND RESPONSES:
Error: Mixing up 1 and 2
Response: "Let''s look closely. Number 1 is just one straight line. Number 2 has a curve. See the difference?"

Error: Saying number names randomly
Response: "Let''s look together. This one has two bumps - that''s our friend number 3."

Error: Not recognizing numbers in different fonts
Response: "Look, this 2 is wearing different clothes, but it''s still number 2! Same curve, same line."

CONNECTION TO FUTURE LEARNING:
Number recognition is foundational for counting, number writing, and understanding quantity. Recognizing numerals 1-3 builds toward 1-10 recognition, then number operations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Recognition to 3' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Counting Objects to 3
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting Objects to 3' AND grade_level_min = -1),
  'Counting Objects to 3 Topic Guide',
  'Comprehensive teaching approach for counting 1, 2, or 3 objects',
  'COUNTING OBJECTS TO 3 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Verbal counting sequence to 3 (can say "one, two, three")
- Fine motor control to touch objects one at a time
- Attention span sufficient for counting activity
- Beginning number recognition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Touch and count 1, 2, or 3 objects accurately
2. Use one-to-one correspondence (one touch per object)
3. Answer "how many?" after counting
4. Count objects arranged in different ways
5. Understand that the last number tells the total

KEY CONCEPTS:
- Each object gets counted exactly once
- We say one number for each object we touch
- The last number we say tells us how many total
- Moving objects doesn''t change how many there are

COMMON MISCONCEPTIONS:
- Touching objects without saying numbers
- Saying numbers faster than touching objects
- Counting the same object twice
- Not understanding the last number is the total

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"I have some special toys here! Let''s count how many." Show 2 toy animals. Model excitement about counting. "I wonder how many animals we have. Let''s find out!"

2. DIRECT INSTRUCTION (5 minutes):
Use large, stable objects. "Watch me count. I touch and say the number. Touch - one. Touch - two. I counted two animals! There are two." Emphasize touching while saying the number. Model with 1, 2, and 3 objects.

3. GUIDED PRACTICE (5 minutes):
Put 3 blocks in front of each child. "Now you try! Touch each block and count with me. One... two... three! How many blocks? Three blocks!" Guide hands if needed. Celebrate success warmly.

4. INDEPENDENT APPLICATION (5 minutes):
Counting stations with small collections (1-3 items). "Count your collection and tell a friend how many you have." Circulate and support. "I counted - how many?"

DIFFERENTIATION:

For Struggling Learners:
- Start with just counting to 1, then 2
- Use objects that stay in place (velcro, weighted)
- Provide hand-over-hand guidance
- Use slow, rhythmic counting
- Practice same collection multiple times

For Advanced Learners:
- Count larger groups (4-5 objects)
- Count items you can''t move (pictures, wall objects)
- "Give me 3 blocks" (producing quantities)
- Compare two small groups

ASSESSMENT INDICATORS:
- Correspondence: Touches one object per number
- Sequence: Says numbers in correct order
- Cardinality: Answers "how many" correctly
- Stability: Counts consistently each time
- Independence: Counts without hand-over-hand help

REAL-WORLD CONNECTIONS:
- Count crackers at snack time
- Count toys during play
- Count friends at the table
- Count steps (small numbers)
- Count buttons on shirts

VOCABULARY:
count, touch, one, two, three, how many, total, each, all

QUESTIONING TECHNIQUES:
- "Can you count these for me?"
- "How many did you count?"
- "Touch each one as you count."
- "Did you count them all?"

MATERIALS:
- Large manipulatives (blocks, bears, animals)
- Counting mats
- Collections of 1-3 items
- Objects that don''t roll or move easily

COMMON ERRORS AND RESPONSES:
Error: Saying "one two three" without touching
Response: "Let''s slow down. Touch this one and say one. Good! Now touch this one and say two."

Error: Touching same object twice
Response: "We already counted that one! Move it over here so we know it''s counted."

Error: Saying "three" for any group
Response: "Let''s count together very slowly. One... two. Just two! There are two here."

CONNECTION TO FUTURE LEARNING:
This one-to-one correspondence is fundamental to all counting. It builds toward counting larger numbers, comparing quantities, and eventually addition and subtraction.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting Objects to 3' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Ten Frame Basics
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ten Frame Basics' AND grade_level_min = -1),
  'Ten Frame Basics Topic Guide',
  'Comprehensive teaching approach for introducing ten frames with small numbers',
  'TEN FRAME BASICS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 3 with one-to-one correspondence
- Understanding that counters represent quantities
- Fine motor skills to place objects in spaces
- Recognition of numerals 1-3

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize what a ten frame looks like
2. Place counters in a ten frame starting from the left
3. Count counters in a ten frame
4. Understand that each box holds one counter
5. Match ten frame representations to numerals

KEY CONCEPTS:
- A ten frame has 10 boxes arranged in 2 rows
- We fill ten frames starting at the top left
- Each box holds exactly one counter
- Ten frames help us organize and see quantities

COMMON MISCONCEPTIONS:
- Filling ten frames randomly instead of left to right
- Putting more than one counter in a box
- Not understanding why we use ten frames
- Confusing the frame lines with the quantity

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show a large ten frame. "This is our number organizer! It has special boxes to hold our counters. See how neat and organized it is?" Count the empty boxes together.

2. DIRECT INSTRUCTION (5 minutes):
"Watch how I use the ten frame. I start here at the top left, just like we read books. One counter goes in one box." Demonstrate placing 1, then 2, then 3 counters. "Now I can see I have 3 counters. The ten frame helps me see the number!"

3. GUIDED PRACTICE (5 minutes):
Give each child a ten frame and 3 counters. "Put one counter in the first box. Good! Now add one more. How many? Two! Now add one more. Three!" Practice filling and emptying.

4. INDEPENDENT APPLICATION (5 minutes):
"I''ll say a number, and you fill your ten frame." Call out 1, 2, or 3. Children fill, then count to check. Partner checks are fun - "Does your friend have 2?"

DIFFERENTIATION:

For Struggling Learners:
- Use a 5-frame first (5 boxes in one row)
- Use large counters that fit clearly in boxes
- Provide physical guidance for placement
- Keep quantities to 1-2 initially
- Mark the "start here" box with a star

For Advanced Learners:
- Work with numbers 4 and 5
- Match ten frame cards to numeral cards
- Fill ten frame to show "one more than" a number
- Compare two ten frames

ASSESSMENT INDICATORS:
- Placement: Fills left to right correctly
- One-to-one: One counter per box
- Counting: Accurately counts filled boxes
- Matching: Connects representation to numeral
- Understanding: Explains why we use ten frames

REAL-WORLD CONNECTIONS:
- Egg cartons (organized spaces)
- Muffin tins (one muffin per space)
- Parking lots (one car per space)
- Cubbies (one item per cubby)

VOCABULARY:
ten frame, box, counter, fill, empty, row, space, organize, how many

QUESTIONING TECHNIQUES:
- "Where do we start filling?"
- "How many counters are in your ten frame?"
- "Can we put two in one box?"
- "How is this like an egg carton?"

MATERIALS:
- Large demonstration ten frame
- Individual ten frames (laminated for durability)
- Counters (large, easy to grasp)
- Ten frame number cards

COMMON ERRORS AND RESPONSES:
Error: Filling randomly across the frame
Response: "Remember, we start in this corner, like reading a book. Fill this row first."

Error: Stacking counters in one box
Response: "Each box only wants one friend inside. Let''s give each counter its own box."

Error: Difficulty counting organized counters
Response: "The ten frame helps us! Let''s touch each counter as we count."

CONNECTION TO FUTURE LEARNING:
Ten frames are a powerful tool used throughout elementary math. They help with counting, addition, subtraction, making 10, and understanding place value.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ten Frame Basics' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Representing Numbers to 3
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Representing Numbers to 3' AND grade_level_min = -1),
  'Representing Numbers to 3 Topic Guide',
  'Comprehensive teaching approach for showing numbers 1-3 in different ways',
  'REPRESENTING NUMBERS TO 3 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Recognition of numerals 1-3
- Counting objects to 3 with accuracy
- Understanding that numbers represent quantities
- Basic ten frame familiarity

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Show a number using fingers
2. Show a number using objects
3. Show a number using drawings (dots, circles)
4. Match different representations of the same number
5. Understand that 3 is 3, no matter how it''s shown

KEY CONCEPTS:
- A number can be shown in many different ways
- All representations of "3" mean the same quantity
- We can use fingers, objects, pictures, or numerals
- The way we show a number doesn''t change its value

COMMON MISCONCEPTIONS:
- Believing that different representations are different numbers
- Thinking 3 fingers is different from 3 blocks
- Not connecting pictorial representations to quantities
- Confusing representation with the concept of "same"

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Let''s play a number game! Show me 2 fingers. Great! Now show me 2 different fingers. Still 2! Show me 2 blocks. Still 2! The number 2 has many outfits!"

2. DIRECT INSTRUCTION (5 minutes):
Create a "Number 3 Museum" on a tray. "Here are many ways to show 3. Three fingers. Three blocks. Three dots. Three stickers. They''re all 3!" Count each representation together. "Let''s count - 1, 2, 3 - three!"

3. GUIDED PRACTICE (5 minutes):
"I''ll say a number, you show it with your fingers. Show me 2. Now show me 2 with blocks. Now draw 2 dots. You just showed 2 three different ways!"

4. INDEPENDENT APPLICATION (5 minutes):
"Number representation" pages - draw circles to show 1, 2, or 3. Match numeral cards to finger cards to dot cards. "Find all the 2s! They look different but they''re all 2!"

DIFFERENTIATION:

For Struggling Learners:
- Focus on two representations at a time
- Use consistent objects and finger patterns
- Provide tracing for drawing representations
- Keep to numbers 1 and 2 initially
- Use matching activities (finger card to object card)

For Advanced Learners:
- Extend to 4 and 5
- Create their own representations
- Find representations in the environment
- Explain why different representations are the same
- Match representations across three or more forms

ASSESSMENT INDICATORS:
- Flexibility: Shows same number multiple ways
- Accuracy: All representations show correct quantity
- Matching: Correctly matches equivalent representations
- Understanding: Explains "They''re all [number]"
- Transfer: Recognizes representations in new contexts

REAL-WORLD CONNECTIONS:
- Two eyes, two shoes, two hands - all "2"
- Different books that are all "1 book"
- Three of anything - toys, crackers, friends
- Birthday candles showing age

VOCABULARY:
show, represent, same, different, fingers, objects, draw, match, count

QUESTIONING TECHNIQUES:
- "Can you show me 3 a different way?"
- "Are these the same number or different?"
- "How do you know they''re both 2?"
- "What''s another way to show this number?"

MATERIALS:
- Finger counting cards
- Various objects for counting
- Dot cards (1-3)
- Drawing materials
- Numeral cards
- Representation matching games

COMMON ERRORS AND RESPONSES:
Error: Saying 3 blocks and 3 dots are different numbers
Response: "Let''s count! 1, 2, 3. Let''s count these! 1, 2, 3. Same number - three!"

Error: Drawing wrong number of dots
Response: "Let''s count your dots together. You drew 4 but we need 3. Can you fix it?"

Error: Inconsistent finger patterns
Response: "You showed me 3 with three fingers. That''s great! Try keeping the same fingers up each time."

CONNECTION TO FUTURE LEARNING:
Understanding multiple representations builds algebraic thinking - the idea that different-looking things can be equivalent. This supports later work with equations and equivalence.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Representing Numbers to 3' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- COUNT TO 5 UNIT TOPICS
-- ============================================================================

-- Number Recognition to 5
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Recognition to 5' AND grade_level_min = -1),
  'Number Recognition to 5 Topic Guide',
  'Comprehensive teaching approach for recognizing numbers 1 through 5',
  'NUMBER RECOGNITION TO 5 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Recognition of numerals 1, 2, and 3
- Verbal counting to 5
- Understanding that numerals have names
- Ability to attend to visual details

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify all numerals 1 through 5
2. Name numerals 4 and 5 (building on 1-3)
3. Sequence numeral cards 1-5
4. Recognize numerals in various contexts
5. Match numerals to their verbal names

KEY CONCEPTS:
- Numerals 4 and 5 follow the pattern of 1, 2, 3
- Each numeral has a unique shape and name
- Numerals appear in order when we count
- 5 is a special number (full hand of fingers)

COMMON MISCONCEPTIONS:
- Confusing 4 with other numerals (sometimes looks like an A)
- Writing or reading 5 backwards (S-shaped)
- Forgetting the sequence after 3
- Not connecting 5 to a full hand of fingers

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"We know 1, 2, and 3 so well! Today we''re meeting two new number friends - 4 and 5!" Show your hand. "Look - one, two, three, FOUR, FIVE! A whole hand! Let''s meet their numeral shapes."

2. DIRECT INSTRUCTION (5 minutes):
Review 1-3 quickly. Introduce 4: "This is 4. It has a pointy top and a line going down." Introduce 5: "This is 5. It has a hat on top, a belly in the middle, and feet at the bottom." Trace in the air.

3. GUIDED PRACTICE (5 minutes):
Numeral matching game. Spread cards 1-5. "Find the 4!" Celebrate successes. "Point to the 5! Great job!" Mix cards and repeat. Add challenge: "Show me with fingers!"

4. INDEPENDENT APPLICATION (5 minutes):
Numeral hunt for 4 and 5. Use number books, calendars, phone keypads. "Can you find a 5 somewhere in our room?" Chart discoveries.

DIFFERENTIATION:

For Struggling Learners:
- Review and solidify 1-3 before adding 4-5
- Focus on 4 alone, then 5 alone
- Use tactile numerals extensively
- Create memorable stories for each numeral shape
- Daily repetition with same materials

For Advanced Learners:
- Introduce 6 and 7
- Numeral formation practice
- Match numerals to dot patterns
- Order scattered numeral cards
- Create numeral art projects

ASSESSMENT INDICATORS:
- Identification: Points to correct numeral
- Naming: Says correct name for numeral
- Ordering: Places 1-5 in sequence
- Generalization: Recognizes in different fonts
- Speed: Responds with increasing automaticity

REAL-WORLD CONNECTIONS:
- Five fingers on each hand
- TV channel numbers
- Speed limit signs
- Elevator buttons
- Price tags in play store

VOCABULARY:
number, four, five, numeral, name, find, match, order, next

QUESTIONING TECHNIQUES:
- "What number comes after 3?"
- "What does the 5 look like?"
- "Can you put these numbers in order?"
- "How many fingers is 4?"

MATERIALS:
- Numeral cards 1-5
- Tactile numerals
- Number line 1-5
- Number books and posters
- Real-world number examples

COMMON ERRORS AND RESPONSES:
Error: Confusing 4 and 5
Response: "4 has a pointy corner at the top. 5 has a flat part on top like a hat. Let''s look at each one."

Error: Saying "four" for 5
Response: "This numeral has a special belly curve. That''s our friend 5! Five fingers on one hand."

CONNECTION TO FUTURE LEARNING:
Recognizing 1-5 fluently prepares students for 1-10, then 1-20 recognition. This automaticity supports all later number work.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Recognition to 5' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Counting Objects to 5
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting Objects to 5' AND grade_level_min = -1),
  'Counting Objects to 5 Topic Guide',
  'Comprehensive teaching approach for counting up to 5 objects',
  'COUNTING OBJECTS TO 5 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 3 with one-to-one correspondence
- Verbal counting sequence to 5
- Understanding of cardinality (last number = total)
- Fine motor skills for touching objects

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count collections of 4 and 5 objects accurately
2. Maintain one-to-one correspondence with larger groups
3. State "how many" after counting to 5
4. Count objects in varied arrangements
5. Use fingers to show quantities to 5

KEY CONCEPTS:
- Counting to 5 follows the same rules as counting to 3
- Each object gets one number word
- Five is "one whole hand" - a benchmark quantity
- The last number said is the total amount

COMMON MISCONCEPTIONS:
- Losing track when counting larger groups
- Going too fast and missing correspondence
- Skipping 4 or 5 in the sequence
- Recounting instead of remembering the total

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Let''s count our fingers! 1, 2, 3, 4, 5! High five! We can count things just like we count fingers." Practice with both hands together.

2. DIRECT INSTRUCTION (5 minutes):
Start with familiar 3 objects. "1, 2, 3. Three!" Add one more. "Now I''ll add one more. 1, 2, 3, 4. Four!" Add another. "1, 2, 3, 4, 5. Five! A whole hand of blocks!" Emphasize the extension from known.

3. GUIDED PRACTICE (5 minutes):
Give each child 5 counters. "Count out 4 and put them on your mat." Circulate and support. "Now count all 5." Show on fingers. "How many fingers make 4? Make 5?"

4. INDEPENDENT APPLICATION (5 minutes):
Partner counting - one child makes a group of 4 or 5, partner counts. "Build and count" with blocks - make a tower of 5, count each block as added.

DIFFERENTIATION:

For Struggling Learners:
- Build gradually from 3 to 4 to 5
- Use stationary objects that don''t roll
- Provide counting mats with 5 spaces
- Physical guidance for one-to-one touching
- Lots of repetition with same materials

For Advanced Learners:
- Count scattered arrangements
- Count items you cannot touch (pictures)
- Produce quantities: "Give me 5 cubes"
- Compare: "Which group has more?"
- Extend toward 6-7

ASSESSMENT INDICATORS:
- Accuracy: Counts to 5 correctly
- Correspondence: Touches once per object
- Cardinality: States total without recounting
- Flexibility: Counts various arrangements
- Production: Can create groups of 5

REAL-WORLD CONNECTIONS:
- Five fingers on a hand
- Counting crackers at snack
- Counting books to read
- Counting friends at a table
- Counting steps to a destination

VOCABULARY:
count, touch, four, five, how many, total, all, each, one more

QUESTIONING TECHNIQUES:
- "How many are there?"
- "Can you show me on your fingers?"
- "Count from the beginning to make sure."
- "If I add one more, how many will there be?"

MATERIALS:
- Counting objects (bears, cubes, buttons)
- Counting mats with 5 spaces
- Finger counting cards
- Collections of exactly 4 and 5 items
- Ten frame (using first row only)

COMMON ERRORS AND RESPONSES:
Error: Saying "1, 2, 3, 5" (skipping 4)
Response: "Oops! Let''s go slowly. 1, 2, 3, 4, 5. Four comes right after 3."

Error: Losing one-to-one correspondence with 5 objects
Response: "Let''s line them up. Now touch and count slowly with me."

Error: Guessing "5" without counting
Response: "It might be 5! Let''s count to make sure."

CONNECTION TO FUTURE LEARNING:
Counting to 5 is a stepping stone to 10, 20, and beyond. The "5 finger" benchmark helps with mental math and number sense throughout schooling.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting Objects to 5' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Ten Frames to 5
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ten Frames to 5' AND grade_level_min = -1),
  'Ten Frames to 5 Topic Guide',
  'Comprehensive teaching approach for using ten frames with numbers to 5',
  'TEN FRAMES TO 5 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ten frame basics (filling from left, one per box)
- Counting to 5 with accuracy
- Understanding of numeral recognition to 5
- Cardinality understanding (last number = total)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Fill a ten frame to show 4 and 5 (extending from 1-3)
2. Fill the top row completely to show 5
3. Count filled spaces in a ten frame
4. Match ten frame displays to numerals
5. Recognize that the top row filled = 5

KEY CONCEPTS:
- Five fills exactly the top row of a ten frame
- Ten frames help us see quantities at a glance
- The pattern of 5 (full top row) is important
- Ten frames organize our counting

COMMON MISCONCEPTIONS:
- Continuing to second row before top row is full
- Not recognizing full top row as exactly 5
- Random placement of counters
- Difficulty maintaining left-to-right filling

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Review ten frame filling for 1, 2, 3. "Today we''re filling more boxes! Let''s see what happens when we fill all the top boxes!"

2. DIRECT INSTRUCTION (5 minutes):
"Watch! 1, 2, 3, 4, 5. I filled the whole top row! When I see a full top row, I know it''s 5 without counting!" Show how to recognize 5 instantly. "The top row is full - that''s 5!"

3. GUIDED PRACTICE (5 minutes):
"Fill your ten frame to show 5." Check that top row is full. "Now take one away. How many?" Build up and down between 4 and 5. "Add it back. Full row - five!"

4. INDEPENDENT APPLICATION (5 minutes):
Ten frame cards matching - match ten frame picture to numeral. Ten frame bingo for numbers 1-5. Quick flash: show ten frame, say the number.

DIFFERENTIATION:

For Struggling Learners:
- Use 5-frames (single row of 5)
- Physical guidance for placement
- Count every time before recognizing
- Focus on the "full row = 5" pattern
- Consistent counters and frame size

For Advanced Learners:
- Begin filling second row (6-7)
- Predict: "If I add 1 to 4, what will it look like?"
- Ten frame addition (2 and 3 more = ?)
- Create their own ten frame cards

ASSESSMENT INDICATORS:
- Filling: Correctly fills to show 4 and 5
- Recognition: Instantly identifies full top row as 5
- Matching: Connects ten frame to numeral
- Counting: Accurately counts filled spaces
- Pattern: Uses "full row" shortcut

REAL-WORLD CONNECTIONS:
- Egg carton half-filled (5 eggs in a row)
- Five in a row in games
- Organizing collections
- Setting table (5 plates in a row)

VOCABULARY:
ten frame, row, full, empty, fill, top, count, five, match

QUESTIONING TECHNIQUES:
- "Is the top row full?"
- "How many are in a full row?"
- "How many more to fill the top row?"
- "Can you show me 5 on your ten frame?"

MATERIALS:
- Individual ten frames
- Large counters (5 per student)
- Ten frame flash cards (1-5)
- Numeral matching cards
- Ten frame games

COMMON ERRORS AND RESPONSES:
Error: Starting second row before top row is full
Response: "Let''s fill the top row first. It only has space for 5. Count with me as you fill it."

Error: Not recognizing 5 pattern
Response: "When you see all these boxes filled, it''s always 5. Let''s count to prove it."

CONNECTION TO FUTURE LEARNING:
Recognizing 5 on a ten frame builds toward benchmark numbers and making 10 - critical skills for addition and subtraction fluency.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ten Frames to 5' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- What Comes Next to 5
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'What Comes Next to 5' AND grade_level_min = -1),
  'What Comes Next to 5 Topic Guide',
  'Comprehensive teaching approach for identifying the next number in sequence to 5',
  'WHAT COMES NEXT TO 5 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Verbal counting to 5 fluently
- Number recognition 1-5
- Understanding of counting sequence
- Concept of "next" or "after"

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify what number comes after 1, 2, 3, or 4
2. Complete number sequences with missing numbers
3. Understand that "next" means one more
4. Use counting to figure out "what comes next"
5. Recognize patterns in the number sequence

KEY CONCEPTS:
- Numbers follow a specific order
- "Next" means the number that comes after
- We can figure out the next number by counting
- The next number is always one more

COMMON MISCONCEPTIONS:
- Randomly guessing the next number
- Thinking any number can come next
- Confusing "next" with "before"
- Needing to start from 1 every time

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Counting chant: "1, 2, 3, 4, 5!" Stop at 3. "What comes next?" Children call out 4. "You knew what comes next! Let''s learn more about number neighbors."

2. DIRECT INSTRUCTION (5 minutes):
Use a number line 1-5. "Each number has a next-door neighbor. 1''s neighbor is 2. 2''s neighbor is 3." Walk fingers along line. "After 3 comes... 4! After 4 comes... 5!" Practice "After ___ comes ___."

3. GUIDED PRACTICE (5 minutes):
"I''ll say a number, you tell me what comes next." Start: "2... what comes next?" (3!) "4... what comes next?" (5!) Use fingers if needed.

4. INDEPENDENT APPLICATION (5 minutes):
Missing number puzzles: "1, 2, __, 4" - what''s missing? Number train with missing cars. Partner practice: one says a number, other says next.

DIFFERENTIATION:

For Struggling Learners:
- Always use number line visual support
- Start counting from 1 to find the answer
- Focus on just one or two "next" pairs
- Use physical stepping to show sequence
- Connect to "one more" with objects

For Advanced Learners:
- What comes next after 5? (6, 7)
- What comes before? (reverse thinking)
- Two-step: What comes after 3? After that?
- Fill in multiple missing numbers

ASSESSMENT INDICATORS:
- Accuracy: Correctly identifies next number
- Speed: Answers with increasing fluency
- Strategy: Uses counting to verify
- Flexibility: Answers from any starting point
- Understanding: Explains "next is one more"

REAL-WORLD CONNECTIONS:
- What''s the next page in a book?
- What day comes after Monday?
- What''s the next step in a recipe?
- Waiting in line - who''s next?

VOCABULARY:
next, after, comes, before, neighbor, number, order, sequence, one more

QUESTIONING TECHNIQUES:
- "What comes after 3?"
- "If I''m on 4, what''s next?"
- "How did you know 5 comes after 4?"
- "What number is right before 3?"

MATERIALS:
- Number line 1-5
- Number train with removable cars
- Missing number puzzles
- Number sequence cards
- "What comes next" game

COMMON ERRORS AND RESPONSES:
Error: Saying random number
Response: "Let''s count together: 1, 2, 3... what do we say after 3? Four!"

Error: Confusing next and before
Response: "Next means after. When we count, what number do we say AFTER 2? Let''s count: 1, 2... 3!"

CONNECTION TO FUTURE LEARNING:
Understanding "what comes next" builds number sequence knowledge critical for counting on, skip counting, and understanding the number system.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What Comes Next to 5' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Number Sequencing
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Sequencing' AND grade_level_min = -1),
  'Number Sequencing Topic Guide',
  'Comprehensive teaching approach for putting numbers 1-5 in correct order',
  'NUMBER SEQUENCING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Number recognition 1-5
- Verbal counting to 5
- Understanding of "next" and "before"
- Ability to compare two numbers

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Arrange numeral cards 1-5 in order
2. Identify what number is missing in a sequence
3. Correct an out-of-order sequence
4. Read numbers in order from a number line
5. Understand numbers increase by one each time

KEY CONCEPTS:
- Numbers have a specific order that never changes
- Each number is one more than the previous
- We can use a number line to check order
- Sequencing means putting things in correct order

COMMON MISCONCEPTIONS:
- Thinking number order can change
- Placing numbers by size of numeral (2 looks bigger than 1)
- Not recognizing incorrect sequences
- Needing to always start from 1

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Let''s line up! [Student 1] is first, [Student 2] is second... Numbers line up too! Let''s help our numbers line up the right way."

2. DIRECT INSTRUCTION (5 minutes):
Use large numeral cards. "Watch me put numbers in order. First is 1, then comes 2, then 3, then 4, then 5." Demonstrate deliberately. "They''re in counting order! Let''s count to check: 1, 2, 3, 4, 5."

3. GUIDED PRACTICE (5 minutes):
Give each child cards 1-5 scrambled. "Can you put them in order like a number line?" Circulate and support. "Start with 1. What comes next?" Count together to verify.

4. INDEPENDENT APPLICATION (5 minutes):
Sequence puzzles - number trains, caterpillars, or towers. Partner game: one scrambles, other orders. "What if I put 4 before 3? Is that right?"

DIFFERENTIATION:

For Struggling Learners:
- Start with just 3 cards (1, 2, 3)
- Provide number line for reference
- Use numbered spots to place cards on
- Begin with one card out of place to fix
- Physical movement along number line

For Advanced Learners:
- Extend to 1-10
- Sequence backwards (5, 4, 3, 2, 1)
- Start from different numbers
- Identify multiple missing numbers
- Create their own sequence puzzles

ASSESSMENT INDICATORS:
- Accuracy: Places all numbers correctly
- Independence: Orders without reference
- Error detection: Finds incorrect sequences
- Flexibility: Can fix scrambled sequences
- Speed: Increasing automaticity

REAL-WORLD CONNECTIONS:
- Pages in a book
- Steps in a process (1st, 2nd, 3rd)
- Floors in a building
- Counting days on calendar

VOCABULARY:
order, sequence, first, next, last, before, after, line up, number line

QUESTIONING TECHNIQUES:
- "Are these in the right order?"
- "Which number is in the wrong place?"
- "What comes between 2 and 4?"
- "How do you know this is correct?"

MATERIALS:
- Numeral cards 1-5
- Number line (floor or desk size)
- Sequence puzzles
- Ordering games
- Self-checking materials

COMMON ERRORS AND RESPONSES:
Error: Placing 3 before 2
Response: "Let''s count and check. 1, 2... does 3 come before or after 2? After! Let''s fix it."

Error: Random arrangement
Response: "Start with 1. It''s always first. Now what comes next? Count with me."

CONNECTION TO FUTURE LEARNING:
Number sequencing understanding supports skip counting, place value, and understanding the base-ten number system.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Sequencing' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- COUNT TO 10 UNIT TOPICS
-- ============================================================================

-- Number Recognition to 10
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Recognition to 10' AND grade_level_min = -1),
  'Number Recognition to 10 Topic Guide',
  'Comprehensive teaching approach for recognizing numbers 1 through 10',
  'NUMBER RECOGNITION TO 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Fluent recognition of numerals 1-5
- Verbal counting to 10
- Understanding that numerals represent quantities
- Interest in larger numbers

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify numerals 6, 7, 8, 9, and 10
2. Name all numerals 1 through 10
3. Recognize that 10 is made of two digits
4. Sequence numeral cards 1-10
5. Match numerals to spoken number names

KEY CONCEPTS:
- Numbers 6-9 each have unique shapes
- 10 is special - it uses two digits (1 and 0)
- All numerals 1-10 follow the counting sequence
- Recognizing numerals helps us read and use numbers

COMMON MISCONCEPTIONS:
- Confusing similarly-shaped numerals (6 and 9)
- Reading 10 as "one zero" instead of "ten"
- Forgetting numeral names in sequence
- Not recognizing numerals in different fonts

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Review 1-5 with a quick game. "You''re experts on 1-5! Now we''re going to learn 5 MORE numbers - all the way to 10! That''s two whole hands!"

2. DIRECT INSTRUCTION (7 minutes):
Introduce 6-9 one at a time with memorable descriptions. "6 has a big belly at the bottom. 7 has a hat on top. 8 is a snowman - two circles. 9 has a belly at the TOP - it''s 6''s upside-down friend." Then 10: "10 uses two numbers together - 1 and 0 make ten!"

3. GUIDED PRACTICE (5 minutes):
"Point to the 8! Where''s the 6? Can you find 10?" Practice with increasing speed. "6 and 9 are tricky - 6''s belly is at the bottom!"

4. INDEPENDENT APPLICATION (5 minutes):
Numeral hunt - find all numbers 1-10 in the room. Match numeral cards to dot cards. Number puzzles that sequence 1-10.

DIFFERENTIATION:

For Struggling Learners:
- Focus on two new numerals at a time (6-7, then 8-9, then 10)
- Use tactile numerals and tracing
- Associate with familiar objects (9 like a balloon on a string)
- Daily review before adding new numerals

For Advanced Learners:
- Extend to 11-15
- Numeral formation practice
- Recognize numerals in teen numbers
- Speed recognition games

ASSESSMENT INDICATORS:
- Recognition: Identifies all numerals 1-10
- Naming: Says correct names when shown numerals
- Discrimination: Distinguishes similar numerals (6/9)
- Ordering: Sequences 1-10 correctly
- Application: Finds numerals in environment

REAL-WORLD CONNECTIONS:
- Phone numbers
- House and apartment numbers
- Birthday ages
- Classroom numbers
- Elevator buttons

VOCABULARY:
six, seven, eight, nine, ten, numeral, digit, count, recognize

QUESTIONING TECHNIQUES:
- "What number is this?"
- "How are 6 and 9 different?"
- "What makes 10 special?"
- "Can you find all the 8s on this page?"

MATERIALS:
- Numeral cards 1-10
- Tactile numerals (especially 6-9)
- Number line 1-10
- Number books
- Matching games

COMMON ERRORS AND RESPONSES:
Error: Confusing 6 and 9
Response: "Look at where the belly is! 6 has a belly at the BOTTOM. 9 has a belly at the TOP."

Error: Saying "one zero" for 10
Response: "These two digits work together. Together they say TEN!"

CONNECTION TO FUTURE LEARNING:
Fluent recognition of 1-10 is essential for counting, computation, and understanding place value with larger numbers.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Recognition to 10' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Counting Objects to 10
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting Objects to 10' AND grade_level_min = -1),
  'Counting Objects to 10 Topic Guide',
  'Comprehensive teaching approach for counting up to 10 objects',
  'COUNTING OBJECTS TO 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 5 with one-to-one correspondence
- Verbal counting to 10
- Cardinality understanding (last number = total)
- Finger counting to 10 (two hands)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count 6, 7, 8, 9, and 10 objects accurately
2. Maintain one-to-one correspondence with 10 objects
3. State "how many" after counting to 10
4. Count objects in various arrangements
5. Connect counting to "two hands" (10 fingers)

KEY CONCEPTS:
- Counting to 10 requires careful one-to-one correspondence
- 10 is an important number - all our fingers
- The last number said tells the total
- We can count objects arranged any way

COMMON MISCONCEPTIONS:
- Losing track with larger collections
- Counting too fast and losing correspondence
- Getting confused with teen numbers (10 vs 12)
- Difficulty with scattered arrangements

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"How many fingers do we have? Let''s count! 1, 2, 3, 4, 5... now the other hand... 6, 7, 8, 9, 10! TEN fingers! Today we''re counting all the way to 10 with objects too!"

2. DIRECT INSTRUCTION (7 minutes):
Start with 5, then add objects one at a time. "Here are 5 blocks. Let''s add more. 6! 7! 8! 9! 10! Count them all!" Model touching each object carefully. Use ten frames to organize counting.

3. GUIDED PRACTICE (5 minutes):
Give ten frames and 10 counters. "Fill your ten frame and count." Check correspondence. "Did everyone get 10? Let''s count together."

4. INDEPENDENT APPLICATION (5 minutes):
Counting collections - bags with exactly 10 items. "Count what''s in your bag and tell me how many." Partner counting - one counts, one verifies.

DIFFERENTIATION:

For Struggling Learners:
- Build gradually from 6 to 7 to 8, etc.
- Use ten frames to organize counting
- Slow down - say each number clearly
- Physical movement while counting
- Consistent materials that stay in place

For Advanced Learners:
- Count scattered arrangements (no organization)
- Count items you cannot move
- "Give me 8 blocks" (producing quantities)
- Compare collections: which has more?
- Begin counting beyond 10

ASSESSMENT INDICATORS:
- Accuracy: Counts to 10 correctly
- Correspondence: Maintains one-to-one to 10
- Cardinality: States total without recounting
- Flexibility: Counts various arrangements
- Connection: Relates to two hands of fingers

REAL-WORLD CONNECTIONS:
- 10 fingers on our hands
- 10 toes on our feet
- Counting snacks (10 crackers)
- 10 friends at a table
- Pages 1-10 in a book

VOCABULARY:
count, six, seven, eight, nine, ten, how many, each, total, all

QUESTIONING TECHNIQUES:
- "How many did you count?"
- "Can you count them a different way?"
- "Show me 10 with your fingers."
- "What if we add one more? What would we have?"

MATERIALS:
- Ten frames
- Counting objects (cubes, bears, buttons) - 10 per set
- Organized and scattered arrangements
- Counting bags with 10 items
- Two-color counters

COMMON ERRORS AND RESPONSES:
Error: Losing count after 5 or 6
Response: "Let''s use our ten frame. Put them in the boxes as we count - that helps us keep track."

Error: Counting same object twice
Response: "Move each one to this side after you count it. That way we know which ones we''ve counted."

Error: Saying random number for "how many"
Response: "You counted to 8, so there are 8. The last number you said tells us how many."

CONNECTION TO FUTURE LEARNING:
Counting to 10 is foundational for counting to 20, understanding place value (10 ones = 1 ten), and developing addition and subtraction strategies.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting Objects to 10' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Ten Frames to 10
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ten Frames to 10' AND grade_level_min = -1),
  'Ten Frames to 10 Topic Guide',
  'Comprehensive teaching approach for using ten frames with numbers up to 10',
  'TEN FRAMES TO 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ten frames to 5 (filling top row)
- Counting to 10 with accuracy
- Understanding that 5 fills the top row
- Beginning to count in second row

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Fill both rows of a ten frame (1-10)
2. Recognize full ten frame as 10
3. See numbers 6-10 as "5 and some more"
4. Quickly identify quantities on a ten frame
5. Match ten frame representations to numerals

KEY CONCEPTS:
- A full ten frame shows 10
- Numbers 6-10 fill the top row plus some in the bottom row
- 6 is "5 and 1 more," 7 is "5 and 2 more," etc.
- Ten frames help us see numbers as parts

COMMON MISCONCEPTIONS:
- Filling second row from right side
- Not recognizing "5 and more" pattern
- Difficulty transitioning from row 1 to row 2
- Random placement in second row

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show a ten frame with 5. "Our top row is full! What if we need to show more than 5? We have a whole bottom row waiting!" Add one counter to second row.

2. DIRECT INSTRUCTION (7 minutes):
"5 fills the top row. Now for 6 - 5 on top and 1 on bottom. See? 6!" Continue to 10. "When both rows are full, it''s 10! A full ten frame is always 10." Practice subitizing - quick looks.

3. GUIDED PRACTICE (5 minutes):
"Make 7 on your ten frame." Check: full top row plus 2. "Make 9." Check: full top row plus 4. "What number is a full ten frame?"

4. INDEPENDENT APPLICATION (5 minutes):
Ten frame flash cards - show briefly, students say the number. Match ten frame cards to numerals. Build and count with ten frames.

DIFFERENTIATION:

For Struggling Learners:
- Emphasize "5 and how many more?"
- Color-code top and bottom rows
- Focus on 6, 7, 8 before 9 and 10
- Always count to verify
- Use subitizing for top row only first

For Advanced Learners:
- Two ten frames for numbers to 20
- "How many more to make 10?"
- Ten frame addition (show 6, add 2, what''s the total?)
- Mental math with ten frames

ASSESSMENT INDICATORS:
- Filling: Correctly fills both rows left to right
- Recognition: Quickly identifies quantities
- Pattern: Sees "5 and more" structure
- Full frame: Knows full ten frame = 10
- Matching: Connects ten frames to numerals

REAL-WORLD CONNECTIONS:
- Egg carton (10 = full carton)
- Fingers (5 per hand, 10 total)
- Boxes of crayons
- Organized storage containers

VOCABULARY:
ten frame, full, empty, row, top row, bottom row, 5 and more, ten

QUESTIONING TECHNIQUES:
- "How many in the top row? How many in the bottom row?"
- "Is 5 and 3 more the same as 8?"
- "How do you know this ten frame shows 7?"
- "What happens when both rows are full?"

MATERIALS:
- Individual ten frames
- Two-color counters (10 per student)
- Ten frame flash cards (1-10)
- Numeral cards for matching
- Subitizing games

COMMON ERRORS AND RESPONSES:
Error: Filling second row from the right
Response: "We always start on the left side, just like reading. Left to right!"

Error: Not seeing 5 and more pattern
Response: "Look - the top row is full. That''s 5. Now count just the bottom row. 5 and 2 more is 7!"

CONNECTION TO FUTURE LEARNING:
Understanding "5 and more" develops number sense that supports mental math strategies like "make a 10" for addition.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ten Frames to 10' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- One More and One Less
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'One More and One Less' AND grade_level_min = -1),
  'One More and One Less Topic Guide',
  'Comprehensive teaching approach for finding one more or one less than a number',
  'ONE MORE AND ONE LESS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 10 with accuracy
- Number recognition 1-10
- Understanding of "next" in sequence
- Basic comparison of quantities

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find one more than any number 1-9
2. Find one less than any number 2-10
3. Use objects to show one more and one less
4. Connect adding one to counting on
5. Connect taking one away to counting back

KEY CONCEPTS:
- One more means the next number when counting
- One less means the number before when counting
- Adding one makes the group bigger
- Taking one away makes the group smaller

COMMON MISCONCEPTIONS:
- Confusing "more" with "bigger numeral appearance"
- Difficulty with "one less" (subtraction is harder)
- Not connecting to counting sequence
- Thinking one more than 9 is still a single digit

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show 5 objects. "I have 5 blocks. If I get one more, will I have more or fewer? Let''s find out!" Add one. "Now I have 6! One more than 5 is 6!"

2. DIRECT INSTRUCTION (7 minutes):
Use number line. "If we''re at 3 and jump forward one, we land on 4. One more than 3 is 4." Then reverse: "If we''re at 5 and jump back one, we land on 4. One less than 5 is 4." Physical jumping helps.

3. GUIDED PRACTICE (5 minutes):
"What''s one more than 6?" Use fingers or objects if needed. "What''s one less than 8?" Practice with various numbers. "The number after is one more. The number before is one less."

4. INDEPENDENT APPLICATION (5 minutes):
One more/one less dice game - roll a die, say one more or one less. Partner practice with number cards. Ten frame - show 7, add one, what is it?

DIFFERENTIATION:

For Struggling Learners:
- Always use physical objects
- Focus on "one more" before "one less"
- Use number line for visual support
- Connect to "next" and "before"
- Limit to smaller numbers (1-5) initially

For Advanced Learners:
- Two more, two less
- One more than 10 (introduce 11)
- Mental answers without objects
- Word problems with one more/less
- Missing number: 6 is one more than ___?

ASSESSMENT INDICATORS:
- One more: Correctly identifies one more for 1-9
- One less: Correctly identifies one less for 2-10
- Strategy: Uses counting or objects appropriately
- Speed: Increasing fluency
- Understanding: Explains their reasoning

REAL-WORLD CONNECTIONS:
- Birthday: "How old will you be next year?"
- Sharing: "If you give one away..."
- Growing: "One more inch taller"
- Countdown: "One less day until..."

VOCABULARY:
one more, one less, add, take away, before, after, next, increase, decrease

QUESTIONING TECHNIQUES:
- "What''s one more than 4?"
- "If you have 7 and get one more, how many?"
- "What''s one less than 6?"
- "What number comes right before 8?"

MATERIALS:
- Counters or small objects
- Number line (floor or table size)
- Dice with numbers 1-6
- Number cards
- Ten frames

COMMON ERRORS AND RESPONSES:
Error: Adding more than one
Response: "Just one more. We only add one. If we had 3, one more makes 4, not 5."

Error: Saying the same number for one less
Response: "One less means we take one away. We had 5, now we have 4. One less than 5 is 4."

Error: Confusion with one more than 9
Response: "9, and then one more makes 10! Ten is special - it takes two digits."

CONNECTION TO FUTURE LEARNING:
Understanding "one more" and "one less" is the foundation for addition and subtraction. It develops the counting on and counting back strategies.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'One More and One Less' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Number Order to 10
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Order to 10' AND grade_level_min = -1),
  'Number Order to 10 Topic Guide',
  'Comprehensive teaching approach for putting numbers 1-10 in correct order',
  'NUMBER ORDER TO 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Number recognition 1-10
- Counting to 10 fluently
- Number sequencing to 5
- Understanding of "next" and "before"

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Arrange numeral cards 1-10 in order
2. Fill in missing numbers in a sequence
3. Identify numbers that are out of order
4. Count forward and backward 1-10
5. Use a number line to verify order

KEY CONCEPTS:
- Numbers always go in the same order
- Each number is one more than the one before
- We can check order by counting
- The number line shows numbers in order

COMMON MISCONCEPTIONS:
- Thinking some numbers can trade places
- Difficulty placing 7, 8, 9 after mastering 1-6
- Forgetting the order mid-sequence
- Confusion about where 10 goes (two digits)

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Our numbers like to stand in line, just like us! But sometimes they get mixed up. Can you help them find their spots?" Show scrambled cards 1-10.

2. DIRECT INSTRUCTION (7 minutes):
Build the sequence together. "1 is always first. What comes next? 2! Then 3, 4, 5..." Continue to 10. Walk along a floor number line. "Let''s count forward AND backward!"

3. GUIDED PRACTICE (5 minutes):
Give scrambled cards. "Put them in order." Circulate and support. Then remove some cards. "Which numbers are missing? Fill them in!"

4. INDEPENDENT APPLICATION (5 minutes):
Number line puzzles, caterpillars with missing segments, number towers to build. "Fix the order" activities - find and correct mistakes.

DIFFERENTIATION:

For Struggling Learners:
- Use number line as constant reference
- Start with 1-5, then 6-10, then combine
- Provide numbered spots to place cards
- Practice same activity repeatedly
- Verbal counting alongside sequencing

For Advanced Learners:
- Order 1-20
- Count backward from 10
- Start ordering from any number
- Skip counting by 2s introduction
- Create their own ordering puzzles

ASSESSMENT INDICATORS:
- Accuracy: Places all numbers correctly 1-10
- Missing numbers: Identifies gaps in sequences
- Error detection: Finds numbers out of order
- Flexibility: Orders from any starting point
- Automaticity: Increasing speed and confidence

REAL-WORLD CONNECTIONS:
- Number lines in games
- Page numbers in books
- Floors in buildings
- Days counting down to events
- Steps in a staircase

VOCABULARY:
order, sequence, first, last, before, after, next, missing, number line

QUESTIONING TECHNIQUES:
- "What number comes after 7?"
- "Which number is missing?"
- "Is this in the right order? How do you know?"
- "What comes between 5 and 7?"

MATERIALS:
- Numeral cards 1-10
- Floor number line
- Missing number puzzles
- Sequencing games
- Number line strips

COMMON ERRORS AND RESPONSES:
Error: Putting 9 and 8 in wrong places
Response: "Let''s count: 7, 8, 9, 10. 8 comes right after 7. 9 comes next."

Error: Forgetting 10 or putting it wrong
Response: "10 is our last number. It comes right after 9. 1, 2, 3, 4, 5, 6, 7, 8, 9, 10!"

Error: Random ordering
Response: "Let''s start from 1 and count as we place each card. 1... 2... 3..."

CONNECTION TO FUTURE LEARNING:
Ordering 1-10 fluently prepares students for 1-20 and 1-100 sequencing, as well as understanding place value and skip counting patterns.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Order to 10' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- COUNT TO 20 UNIT TOPICS
-- ============================================================================

-- Counting Objects to 20
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting Objects to 20' AND grade_level_min = -1),
  'Counting Objects to 20 Topic Guide',
  'Comprehensive teaching approach for counting up to 20 objects',
  'COUNTING OBJECTS TO 20 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 10 with one-to-one correspondence
- Number recognition 1-10 (and beginning 11-20)
- Understanding of teen numbers conceptually
- Cardinality firmly established

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count collections up to 20 objects
2. Maintain one-to-one correspondence to 20
3. State cardinality after counting to 20
4. Organize objects for efficient counting
5. Connect two ten frames to counting to 20

KEY CONCEPTS:
- Teen numbers continue the counting pattern
- 20 is two groups of 10
- Organization helps with accurate counting
- Cardinality still applies - last number is total

COMMON MISCONCEPTIONS:
- Confusion with teen number names (e.g., fourteen/forty)
- Losing track when counting larger groups
- Difficulty maintaining correspondence past 10
- Needing to start over if interrupted

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"We can count all the way to 20! That''s two whole hands... twice! Let''s count to 20 with our fingers - you''ll need a partner!" Count all 20 fingers between two children.

2. DIRECT INSTRUCTION (8 minutes):
Use two ten frames side by side. "Here are 10. Let''s count more. 11, 12, 13, 14, 15, 16, 17, 18, 19, 20!" Fill both ten frames as you count. "20 is two ten frames full!"

3. GUIDED PRACTICE (5 minutes):
Give each child 20 counters and two ten frames. "Fill your ten frames as you count to 20." Support the transition from 10 to 11. "10 and then 11, 12..."

4. INDEPENDENT APPLICATION (5 minutes):
Count collections of 15-20 items. "How many counters in your bag?" Partner counting practice. Verify by filling ten frames together.

DIFFERENTIATION:

For Struggling Learners:
- Focus on 11-15 before 16-20
- Always use ten frames for organization
- Practice teen number names verbally
- Use "10 and ___ more" language
- Slow pace with lots of repetition

For Advanced Learners:
- Count scattered arrangements to 20
- Count by 2s to 20
- Produce quantities: "Give me 17 cubes"
- Count beyond 20
- Compare two groups (which has more?)

ASSESSMENT INDICATORS:
- Accuracy: Counts to 20 correctly
- Correspondence: Maintains one-to-one throughout
- Cardinality: States total without recounting
- Organization: Uses ten frames or organizes objects
- Teen numbers: Says teen names correctly

REAL-WORLD CONNECTIONS:
- 20 fingers on two people
- Counting a whole class
- Pages in a short book
- Blocks in a big tower
- Pieces in a game

VOCABULARY:
eleven through twenty, teen numbers, count, how many, organize, groups

QUESTIONING TECHNIQUES:
- "How many did you count?"
- "How many tens? How many more?"
- "What comes after 15?"
- "Can you count by touching each one?"

MATERIALS:
- Two ten frames per student
- 20 counters per set
- Counting bags with 15-20 items
- Number cards 11-20
- Counting books

COMMON ERRORS AND RESPONSES:
Error: Confusing fourteen and forty
Response: "Fourteen means four-teen - four and ten. It''s a small number. Forty is much bigger."

Error: Losing count after 10
Response: "Use your ten frame! When one is full, start the second one. Keep counting: 11, 12..."

Error: Skipping a teen number
Response: "Let''s go slowly. After 12 is 13, then 14. Thirteen, fourteen, fifteen..."

CONNECTION TO FUTURE LEARNING:
Counting to 20 prepares students for counting to 100, understanding place value (10s and 1s), and beginning addition and subtraction.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting Objects to 20' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Ten Frames to 20
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ten Frames to 20' AND grade_level_min = -1),
  'Ten Frames to 20 Topic Guide',
  'Comprehensive teaching approach for using two ten frames to show numbers to 20',
  'TEN FRAMES TO 20 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ten frames to 10 mastered
- Understanding that 10 fills one ten frame
- Counting to 20
- Beginning teen number recognition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use two ten frames to show numbers 11-20
2. Recognize that 11-19 is "10 and some more"
3. Identify full double ten frames as 20
4. Match ten frame representations to teen numerals
5. Begin to see teen numbers as "1 ten and __ ones"

KEY CONCEPTS:
- Two ten frames together can show up to 20
- Teen numbers fill one ten frame plus some more
- 10 is a benchmark number
- 20 fills both ten frames completely

COMMON MISCONCEPTIONS:
- Not filling the first ten frame before starting second
- Difficulty seeing teen numbers as "10 and more"
- Random filling across both frames
- Confusion about which frame shows "the ten"

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Our ten frame is completely full - 10! But what if we have MORE? We need another ten frame!" Tape two ten frames together. "Now we can show numbers past 10!"

2. DIRECT INSTRUCTION (8 minutes):
"Watch: I fill the first ten frame. Full! 10! Now I add more to the second frame. 11, 12, 13. That''s 13 - one full ten and 3 more!" Show several teen numbers this way. "14 is 10 and 4 more."

3. GUIDED PRACTICE (5 minutes):
"Make 15 on your double ten frame." Check: first frame full, second has 5. "Make 18." Check. "How many are in the full ten frame? How many more?"

4. INDEPENDENT APPLICATION (5 minutes):
Double ten frame flash - show, students say number. Match cards: teen numeral to double ten frame. "How many to make 20?" activities.

DIFFERENTIATION:

For Struggling Learners:
- Different colored counters (one color for first 10)
- "10 and ___ more" language always
- Focus on 11-15 before 16-20
- Count every time before subitizing
- Physical manipulation before cards

For Advanced Learners:
- "How many more to make 20?"
- Addition with double ten frames
- Represent same number different ways
- Mental math with teen numbers

ASSESSMENT INDICATORS:
- Filling: Fills first ten frame before second
- Recognition: Identifies teen numbers on ten frames
- Language: Uses "10 and ___ more"
- Full frame: Knows double full frame = 20
- Matching: Connects representations to numerals

REAL-WORLD CONNECTIONS:
- Egg cartons (two cartons = 20+)
- Counting classroom supplies
- Groups of 10 in packaging
- Two hands worth, twice

VOCABULARY:
double ten frame, full, 10 and more, teen number, eleven through twenty

QUESTIONING TECHNIQUES:
- "How many in the first ten frame?"
- "How many more in the second?"
- "So what number is this?"
- "How many more until both are full?"

MATERIALS:
- Double ten frames (connected)
- 20 counters per student
- Double ten frame flash cards
- Numeral cards 11-20
- Matching games

COMMON ERRORS AND RESPONSES:
Error: Filling second frame before first is full
Response: "Fill the first ten frame completely first. Then move to the second one."

Error: Not seeing "10 and more" pattern
Response: "Look - this frame is full. That''s 10. Now count just the others. 10 and 4 is 14!"

CONNECTION TO FUTURE LEARNING:
Using double ten frames introduces place value concepts - understanding teen numbers as "one 10 and some ones" is foundational for multi-digit work.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ten Frames to 20' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Representing Teen Numbers
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Representing Teen Numbers' AND grade_level_min = -1),
  'Representing Teen Numbers Topic Guide',
  'Comprehensive teaching approach for understanding teen numbers as ten and some ones',
  'REPRESENTING TEEN NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 20
- Using double ten frames
- Number recognition for teen numbers
- Understanding of 10 as a special number

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand teen numbers as "ten and some ones"
2. Decompose teen numbers into 10 and ones
3. Represent teen numbers multiple ways
4. Match different representations of the same teen number
5. Begin understanding place value concepts

KEY CONCEPTS:
- Teen numbers are made of 10 and some more ones
- The "teen" in fourteen means "and ten"
- We can show teen numbers different ways
- 10 stays together as a group in teen numbers

COMMON MISCONCEPTIONS:
- Seeing teen numbers as unitary (16 as just "sixteen")
- Not recognizing the "10" inside teen numbers
- Confusion about the "teen" ending
- Difficulty connecting representations

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Let''s discover a secret about teen numbers! Every teen number has 10 hiding inside it! Let''s find the 10!" Show 14 counters, separate into group of 10 and 4.

2. DIRECT INSTRUCTION (8 minutes):
"Watch! I have 13. Let''s make a group of 10." Circle or bundle 10. "10 and 3 more. 13 is 10 and 3! The 10 hides inside." Repeat with other teen numbers. Show on ten frames simultaneously.

3. GUIDED PRACTICE (5 minutes):
"Make 15 with counters. Now make a group of 10. How many are left over?" Check: 10 and 5. "15 is 10 and 5!" Repeat with several teen numbers.

4. INDEPENDENT APPLICATION (5 minutes):
Match representations: ten frame shows 16, match to "10 + 6" card and numeral 16. Draw teen numbers as 10 and some more.

DIFFERENTIATION:

For Struggling Learners:
- Use bundling sticks (10 in a bundle)
- Always start by making the 10 group
- Focus on a few teen numbers repeatedly
- Use consistent "10 and ___" language
- Physical manipulation before abstraction

For Advanced Learners:
- Represent in 3+ ways
- Begin understanding tens place
- Create their own representation cards
- "I have 10 and 7. What number is this?"
- Extend thinking toward 20s

ASSESSMENT INDICATORS:
- Decomposition: Breaks teen numbers into 10 and ones
- Language: Uses "10 and ___" correctly
- Multiple representations: Shows same number different ways
- Connection: Links representations to numerals
- Understanding: Explains why teen numbers have 10

REAL-WORLD CONNECTIONS:
- Dime (10 cents) and pennies
- Ten-packs of items plus extras
- Organizing collections into tens
- Birthday age as "10 and some more"

VOCABULARY:
teen number, ten and ones, group, bundle, represent, same, different

QUESTIONING TECHNIQUES:
- "What''s 10 and 4 more?"
- "How can you show 17 as ten and some more?"
- "Does 13 have 10 hiding inside?"
- "What''s the same about all teen numbers?"

MATERIALS:
- Bundling sticks (10 per bundle)
- Double ten frames
- Counters for grouping
- Representation matching cards
- Place value mats (optional)

COMMON ERRORS AND RESPONSES:
Error: Making group of 11 or 9 instead of exactly 10
Response: "Let''s count this group. 10? No, it''s 11. Move one to the ones group."

Error: Not seeing connection between representations
Response: "Look - 10 here, 4 here. 10 on the ten frame, 4 more. Both show 14!"

CONNECTION TO FUTURE LEARNING:
Understanding teen numbers as "1 ten and ___ ones" is the foundation of place value, which underlies all work with larger numbers.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Representing Teen Numbers' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Number Patterns to 20
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Patterns to 20' AND grade_level_min = -1),
  'Number Patterns to 20 Topic Guide',
  'Comprehensive teaching approach for recognizing patterns when counting to 20',
  'NUMBER PATTERNS TO 20 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 20 fluently
- Number recognition 1-20
- Understanding teen numbers structure
- Basic pattern recognition skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize the ones pattern (1-9) repeats in teens
2. Notice patterns in the number sequence
3. Use patterns to predict next numbers
4. Count by 2s (even numbers) to 20
5. Identify "almost patterns" in teen number names

KEY CONCEPTS:
- The ones digits repeat: 1, 2, 3... 11, 12, 13...
- Patterns help us predict what comes next
- Some patterns are in the written numbers
- Some patterns are in how we say numbers

COMMON MISCONCEPTIONS:
- Not seeing the ones digit pattern in teens
- Thinking each number is completely unique
- Difficulty with irregular teen names (eleven, twelve)
- Not connecting counting by 2s to even numbers

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Numbers have secrets! Let''s be number detectives and find the patterns hiding in our numbers." Show number chart 1-20. "What do you notice?"

2. DIRECT INSTRUCTION (8 minutes):
Point out patterns: "Look at the last part - 1, 2, 3, 4, 5... then it starts again! 11, 12, 13, 14, 15... See? 1 and 11, 2 and 12, 3 and 13!" Also: "Let''s count by 2s - 2, 4, 6, 8, 10, 12, 14, 16, 18, 20! That''s a pattern too!"

3. GUIDED PRACTICE (5 minutes):
Cover numbers on the chart. "What''s hiding here? Use the pattern to figure it out!" Point to pattern pairs. "3 and 13 both end in 3. What else?"

4. INDEPENDENT APPLICATION (5 minutes):
Pattern coloring - color numbers that end in 5 (5, 15). Skip counting practice - clap on 2s. Find pairs on number chart (2-12, 3-13, etc.).

DIFFERENTIATION:

For Struggling Learners:
- Focus on visual patterns in numerals
- Use physical number line to find pairs
- Color-code ending digits
- Practice 1-10 pattern before teens
- Lots of verbal counting with emphasis on patterns

For Advanced Learners:
- Extend patterns to 30
- Count by 5s to 20
- Predict what comes after 20
- Create their own pattern rules
- Look for patterns in 100 chart

ASSESSMENT INDICATORS:
- Recognition: Sees ones digit pattern
- Prediction: Uses patterns to find missing numbers
- Skip counting: Counts by 2s to 20
- Verbalization: Describes patterns they see
- Extension: Uses patterns in new contexts

REAL-WORLD CONNECTIONS:
- Counting by 2s (pairs of shoes, eyes)
- Odd/even house numbers
- Calendar patterns
- Stair step patterns

VOCABULARY:
pattern, repeat, same, next, skip count, pair, what comes next

QUESTIONING TECHNIQUES:
- "What do you notice about 4 and 14?"
- "If we know 15, what comes next?"
- "What''s the pattern when we count by 2s?"
- "How can patterns help us count?"

MATERIALS:
- Number chart 1-20 (and 1-30 for extension)
- Pattern blocks for reinforcement
- Number cards for finding pairs
- Skip counting songs
- Hundreds chart introduction

COMMON ERRORS AND RESPONSES:
Error: Not seeing 4/14 connection
Response: "Look at the end of each number. 4 ends in 4. 14 ends in 4. They match!"

Error: Skip counting errors
Response: "Let''s slow down. 2, 4, 6, 8, 10... every time we skip one number. 10, 12..."

CONNECTION TO FUTURE LEARNING:
Pattern recognition in numbers leads to skip counting fluency, understanding place value, and eventually multiplication concepts.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Patterns to 20' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- COMPARING UNIT TOPICS
-- ============================================================================

-- More and Fewer
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'More and Fewer' AND grade_level_min = -1),
  'More and Fewer Topic Guide',
  'Comprehensive teaching approach for comparing groups using more and fewer',
  'MORE AND FEWER - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to at least 5
- One-to-one correspondence
- Understanding of group/set
- Vocabulary: big, small

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare two groups and identify which has more
2. Compare two groups and identify which has fewer
3. Use matching to compare without counting
4. Use counting to verify comparisons
5. Use vocabulary: more, fewer, less, same

KEY CONCEPTS:
- We can compare groups by matching or counting
- "More" means a larger quantity
- "Fewer" (or "less") means a smaller quantity
- Sometimes groups have the same amount

COMMON MISCONCEPTIONS:
- Thinking spread-out groups have more (not conserving)
- Confusing "more" with physical size
- Difficulty with the word "fewer"
- Not understanding that "less" means the same as "fewer"

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Who wants more snacks at snack time? (Show of hands) What does MORE mean? It means a bigger amount! Let''s practice finding MORE."

2. DIRECT INSTRUCTION (7 minutes):
Show two groups: 3 red and 5 blue. "Let''s match them up. One red, one blue. One red, one blue. One red, one blue. Uh oh! Blue ones are left over! Blue has MORE because there are extras!" Count to verify.

3. GUIDED PRACTICE (5 minutes):
Each child gets two groups to compare. "Which has more? Which has fewer? How do you know?" Practice matching and counting strategies.

4. INDEPENDENT APPLICATION (5 minutes):
Comparison cards - match picture cards showing more and fewer. Real objects comparison - "Does this group or that group have more?" Scavenger hunt for groups with more or fewer.

DIFFERENTIATION:

For Struggling Learners:
- Use very different quantities (1 vs 5)
- Always match objects physically
- Focus on "more" before "fewer"
- Use consistent, stable objects
- Lots of verbal modeling of language

For Advanced Learners:
- Compare groups where difference is small
- "How many more?" questions
- Create their own comparison problems
- Extend to larger numbers
- Use "fewer" and "less" interchangeably

ASSESSMENT INDICATORS:
- Vocabulary: Uses more and fewer correctly
- Strategy: Uses matching or counting
- Accuracy: Correctly identifies more/fewer
- Explanation: Can explain their reasoning
- Application: Applies to new situations

REAL-WORLD CONNECTIONS:
- More or fewer crackers at snack
- More or fewer kids in one line
- More books on this shelf vs that one
- More or fewer rainy days

VOCABULARY:
more, fewer, less, same, compare, count, match, group, extra

QUESTIONING TECHNIQUES:
- "Which group has more?"
- "Which has fewer? How do you know?"
- "Are there any extras left over?"
- "What if they''re the same?"

MATERIALS:
- Counting objects in two colors
- Comparison mats
- Picture cards showing groups
- Real objects for comparing
- Story books about more and fewer

COMMON ERRORS AND RESPONSES:
Error: Saying spread-out group has more
Response: "Let''s count them! Even though these are spread out, there are still only 3."

Error: Confusing bigger with more
Response: "These cubes are bigger, but let''s count. 2 big cubes. 5 small cubes. 5 is more than 2!"

Error: Difficulty with "fewer"
Response: "Fewer means not as many. Red has fewer because there aren''t as many red ones."

CONNECTION TO FUTURE LEARNING:
Comparison is foundational for subtraction, inequality symbols (> <), and understanding number relationships.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'More and Fewer' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Are There Enough
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Are There Enough' AND grade_level_min = -1),
  'Are There Enough Topic Guide',
  'Comprehensive teaching approach for determining if there are enough objects',
  'ARE THERE ENOUGH - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting small groups
- Understanding of one-to-one correspondence
- Concept of more and fewer
- Understanding of matching

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Determine if there are enough objects for a given situation
2. Use matching to compare quantities
3. Predict outcomes before matching
4. Identify when there are not enough
5. Problem-solve to figure out how many more are needed

KEY CONCEPTS:
- "Enough" means there are at least as many as needed
- We can match to see if there are enough
- If objects are left over, there are more than enough
- If some don''t get one, there are not enough

COMMON MISCONCEPTIONS:
- Not connecting matching to "enough"
- Thinking "enough" always means "exact"
- Difficulty predicting without matching
- Not understanding "how many more needed"

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"I have 4 plates. Are there enough for everyone at this table? Let''s find out!" Match plates to children. "Yes! Everyone gets a plate - we have enough!"

2. DIRECT INSTRUCTION (7 minutes):
Scenario 1: 5 cups, 4 children. "One for you, one for you..." One cup left. "We have ENOUGH - and one extra!" Scenario 2: 3 cups, 4 children. "Uh oh, someone doesn''t have one. We don''t have enough!"

3. GUIDED PRACTICE (5 minutes):
Various scenarios: "Are there enough crayons for everyone in your group?" Children match and determine. Discuss: "Did everyone get one? Were there extras?"

4. INDEPENDENT APPLICATION (5 minutes):
"Enough" cards - scenarios with pictures. Match bears to beds: enough? Match hats to people: enough? Create their own "enough" problems.

DIFFERENTIATION:

For Struggling Learners:
- Very concrete scenarios (real objects)
- One-to-one matching with physical objects
- Yes/no response initially
- Focus on "everyone gets one"
- Visual mats showing places for matching

For Advanced Learners:
- "How many more needed?"
- "How many extra are there?"
- Create word problems
- Multiple items per person
- Predict before matching

ASSESSMENT INDICATORS:
- Strategy: Uses matching effectively
- Language: Uses "enough," "not enough" correctly
- Reasoning: Explains their thinking
- Prediction: Can estimate before matching
- Extension: Determines how many more are needed

REAL-WORLD CONNECTIONS:
- Enough plates/cups for dinner
- Enough chairs for friends
- Enough books for everyone
- Enough apples in the bag

VOCABULARY:
enough, not enough, extra, need more, everyone, each, left over

QUESTIONING TECHNIQUES:
- "Are there enough for everyone?"
- "Does everyone have one?"
- "Are there any extras?"
- "How many more do we need?"

MATERIALS:
- Matching mats
- Various objects for scenarios
- Picture cards showing "enough" problems
- Real-world items (cups, plates, crayons)

COMMON ERRORS AND RESPONSES:
Error: Saying "not enough" when there are extras
Response: "Does everyone have one? Yes! Extra is okay - we still have enough."

Error: Not using matching strategy
Response: "Let''s give one to each person. Match them up. Does everyone have one?"

CONNECTION TO FUTURE LEARNING:
Understanding "enough" develops comparison and subtraction readiness. "How many more needed" is early subtraction thinking.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Are There Enough' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Comparing Groups
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Groups' AND grade_level_min = -1),
  'Comparing Groups Topic Guide',
  'Comprehensive teaching approach for comparing two groups and describing differences',
  'COMPARING GROUPS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding more and fewer
- Counting groups accurately
- Using matching to compare
- Beginning number comparison

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare two groups using counting
2. Describe how groups are different
3. Begin to quantify differences ("3 more")
4. Use comparison vocabulary accurately
5. Represent comparisons with pictures or objects

KEY CONCEPTS:
- We compare groups by counting and matching
- We can describe HOW MUCH more or fewer
- Comparison helps us understand numbers
- Same, more, and fewer describe relationships

COMMON MISCONCEPTIONS:
- Difficulty quantifying the difference
- Confusing the groups when describing
- Not connecting to counting for comparison
- Thinking arrangement affects quantity

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Let''s compare! I have red blocks and blue blocks. Let''s find out which color I have MORE of, and by HOW MUCH!"

2. DIRECT INSTRUCTION (8 minutes):
Line up 5 red and 3 blue blocks. "Let''s count each. 5 red. 3 blue. Which is more? Red! But HOW MANY more?" Match them up. "2 red don''t have partners. There are 2 more red than blue."

3. GUIDED PRACTICE (5 minutes):
Partner work: Each pair has two groups. "Which has more? Which has fewer? How many more?" Record findings with drawings or dictation.

4. INDEPENDENT APPLICATION (5 minutes):
Comparison cards - draw pictures to show which has more. Comparison games - roll dice, compare the numbers. Real-world comparisons around the room.

DIFFERENTIATION:

For Struggling Learners:
- Very clear visual differences
- Use matching towers or trains
- Focus on "more" and "fewer" first
- Introduce "how many more" gradually
- Concrete manipulatives always

For Advanced Learners:
- Compare larger groups
- "How many more to be the same?"
- Compare three groups
- Write comparison sentences
- Create their own comparisons

ASSESSMENT INDICATORS:
- Comparison: Accurately identifies more/fewer
- Quantification: Can say how many more/fewer
- Strategy: Uses counting or matching
- Language: Uses comparison vocabulary
- Representation: Can draw or show comparisons

REAL-WORLD CONNECTIONS:
- More boys or girls in class?
- More sunny or rainy days this week?
- More red or blue crayons in box?
- How many more pennies needed?

VOCABULARY:
compare, more than, fewer than, less than, same as, difference, how many more

QUESTIONING TECHNIQUES:
- "Which group has more?"
- "How do you know?"
- "How many more does red have than blue?"
- "What if we added one to the smaller group?"

MATERIALS:
- Two-color counters
- Comparison mats
- Dice for comparing
- Drawing materials
- Real-world objects to compare

COMMON ERRORS AND RESPONSES:
Error: Saying "5 more" when the difference is 2
Response: "You counted all the red ones. But we want to know how many MORE red than blue. Match them up - how many extras?"

Error: Confusing which group has more
Response: "Let''s count again. 5 red. 3 blue. 5 is more than 3. So red has more."

CONNECTION TO FUTURE LEARNING:
Comparing groups is foundational for subtraction. "How many more" directly connects to finding differences in later grades.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Groups' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- POSITIONS UNIT TOPICS
-- ============================================================================

-- Inside and Outside
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inside and Outside' AND grade_level_min = -1),
  'Inside and Outside Topic Guide',
  'Comprehensive teaching approach for understanding inside and outside positions',
  'INSIDE AND OUTSIDE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic spatial awareness
- Understanding of boundaries (lines, containers)
- Vocabulary: in, out
- Ability to follow position directions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify objects inside a container or boundary
2. Identify objects outside a container or boundary
3. Place objects inside or outside as directed
4. Use position words correctly: inside, outside
5. Describe positions using inside/outside vocabulary

KEY CONCEPTS:
- Inside means within a boundary or container
- Outside means not within the boundary
- Boundaries can be containers, lines, or shapes
- Position describes where something is located

COMMON MISCONCEPTIONS:
- Confusing inside and outside
- Not understanding invisible boundaries (circles drawn)
- Thinking "in" only means inside containers
- Difficulty with partial in/partial out

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Use a hula hoop or box. "Stand inside the hoop! Now stand outside the hoop!" Movement activity helps children feel the concept.

2. DIRECT INSTRUCTION (5 minutes):
Use a container and toys. "This bear is INSIDE the box. He''s surrounded by the box. This bear is OUTSIDE. He''s not in the box." Draw a circle on paper. "Put the red counter inside the circle. Put the blue counter outside."

3. GUIDED PRACTICE (5 minutes):
Each child has a container and objects. "Put 3 blocks inside. Put 2 blocks outside." Check and discuss. Switch: "Now which are inside? Which are outside?"

4. INDEPENDENT APPLICATION (5 minutes):
Sorting - put things inside or outside a boundary. Drawing - draw something inside a shape. Games - inside/outside freeze dance.

DIFFERENTIATION:

For Struggling Learners:
- Use 3D containers (boxes, bowls)
- Movement activities (get inside the tent)
- Clear boundaries only
- Repeat same activity with different objects
- Consistent vocabulary (inside, outside)

For Advanced Learners:
- Use abstract boundaries (drawn shapes)
- "How many inside? How many outside?"
- Describe objects'' positions independently
- Create own inside/outside scenes
- Combine with other position words

ASSESSMENT INDICATORS:
- Identification: Points to inside/outside correctly
- Placement: Places objects in correct position
- Language: Uses inside/outside in speech
- Application: Applies to new contexts
- Description: Describes positions accurately

REAL-WORLD CONNECTIONS:
- Inside/outside the house
- Inside/outside the car
- Inside/outside the playground
- Toys inside/outside the toy box

VOCABULARY:
inside, outside, in, out, within, container, boundary

QUESTIONING TECHNIQUES:
- "Is the ball inside or outside?"
- "Put the car inside the box."
- "How many are inside? Outside?"
- "Where is the teddy bear?"

MATERIALS:
- Containers (boxes, bowls, bags)
- Various small objects
- Hula hoops or rope circles
- Drawing materials
- Sorting mats

COMMON ERRORS AND RESPONSES:
Error: Reversing inside and outside
Response: "Inside means IN the box. See how the box is all around it? That''s inside."

Error: Confusion with drawn boundaries
Response: "Pretend this circle is a fence. Inside the fence or outside the fence?"

CONNECTION TO FUTURE LEARNING:
Understanding inside/outside develops spatial reasoning used in geometry, graphing, and understanding area.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inside and Outside' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Above and Below
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Above and Below' AND grade_level_min = -1),
  'Above and Below Topic Guide',
  'Comprehensive teaching approach for understanding above and below positions',
  'ABOVE AND BELOW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic understanding of up and down
- Ability to point to objects
- Visual tracking skills
- Understanding of object relationships

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify objects above a reference point
2. Identify objects below a reference point
3. Describe positions using above and below
4. Follow directions using above/below
5. Use above/below to describe locations

KEY CONCEPTS:
- Above means higher than a reference point
- Below means lower than a reference point
- Position is relative to something else
- Above and below describe vertical relationships

COMMON MISCONCEPTIONS:
- Confusing above and below
- Not understanding relative position (need a reference)
- Mixing up above/below with over/under
- Difficulty when reference point changes

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Point to ceiling. "What''s ABOVE our heads? The ceiling!" Point to floor. "What''s BELOW our feet? The floor!" Move your hand - "Above your head! Below your knee!"

2. DIRECT INSTRUCTION (5 minutes):
Use a shelf or chart. "The clock is above the calendar. The calendar is below the clock. If we''re looking at the calendar, what''s above it? What''s below it?" Draw pictures on whiteboard with clear above/below.

3. GUIDED PRACTICE (5 minutes):
"Touch something above the table. Touch something below the window." Use pictures: "Point to the bird. Is it above or below the tree branch?"

4. INDEPENDENT APPLICATION (5 minutes):
Above/below drawings - "Draw a sun above the house." Position games - place stickers above or below a line. Describe pictures using above/below.

DIFFERENTIATION:

For Struggling Learners:
- Use vertical stacking (blocks above blocks)
- Start with body references (above head, below waist)
- Use real objects before pictures
- Practice one concept (above) before adding below
- Movement activities (jump above, duck below)

For Advanced Learners:
- Chain relationships (above A, below B)
- Combine with other position words
- Create position puzzles for others
- Describe complex scenes
- Connect to above/below in nature

ASSESSMENT INDICATORS:
- Identification: Points to above/below correctly
- Language: Uses above/below appropriately
- Following: Follows above/below directions
- Describing: Describes positions accurately
- Application: Uses in new contexts

REAL-WORLD CONNECTIONS:
- Airplane above the clouds
- Fish below the water surface
- Picture above the couch
- Rug below the feet

VOCABULARY:
above, below, over, under, higher, lower, up, down

QUESTIONING TECHNIQUES:
- "What is above the desk?"
- "Is the cat above or below the table?"
- "Draw something below the line."
- "What''s above your head right now?"

MATERIALS:
- Vertical display boards
- Stacking objects
- Picture cards showing above/below
- Drawing materials
- Real classroom objects

COMMON ERRORS AND RESPONSES:
Error: Saying "below" when object is above
Response: "Look at where it is - is it up high or down low? Up high is above."

Error: Confusion about reference point
Response: "Let''s talk about the table. The cat is ABOVE the table because it''s higher."

CONNECTION TO FUTURE LEARNING:
Above/below understanding supports coordinate graphing, understanding diagrams, and spatial reasoning in geometry.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Above and Below' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Left and Right
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Left and Right' AND grade_level_min = -1),
  'Left and Right Topic Guide',
  'Comprehensive teaching approach for understanding left and right',
  'LEFT AND RIGHT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Body awareness
- Understanding of position words
- Ability to follow simple directions
- Understanding of sidedness

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify their left and right hands
2. Identify left and right sides of their body
3. Follow directions using left and right
4. Begin to use left/right to describe positions
5. Understand left and right are opposites

KEY CONCEPTS:
- Left and right are opposite sides
- Everyone has a left side and a right side
- Left and right can describe positions
- Left/right stays the same for your body

COMMON MISCONCEPTIONS:
- Confusing left and right (very common!)
- Not understanding left/right is relative to observer
- Thinking left/right changes based on direction facing
- Difficulty applying to objects

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Shake your right hand! Shake your left hand! Stomp your right foot! Stomp your left foot!" Movement helps build body awareness. "Put a sticker on your right hand to help remember!"

2. DIRECT INSTRUCTION (5 minutes):
"This is your LEFT hand. This is your RIGHT hand. Most of you write with your right hand - that helps us remember!" Practice: "Hold up your right hand. Now your left. Touch your right ear with your left hand."

3. GUIDED PRACTICE (5 minutes):
Simon Says with left/right: "Simon says touch your left knee. Simon says raise your right hand." Celebrate correct responses. Use visual markers (sticker, bracelet) if needed.

4. INDEPENDENT APPLICATION (5 minutes):
Following path directions: "Step right, step left, step right." Art activity: "Draw a tree on the RIGHT side of your paper." Partner practice: "Give your partner a high five with your right hand."

DIFFERENTIATION:

For Struggling Learners:
- Use consistent visual marker (sticker, bracelet)
- Focus on one side first (right), then add left
- Start with just hands before whole body
- Lots of movement practice
- Same activities repeated daily

For Advanced Learners:
- Left/right on objects
- Left/right in pictures
- Give directions using left/right
- Connect to reading direction (left to right)
- Mirror activities (partners facing each other)

ASSESSMENT INDICATORS:
- Body: Identifies own left and right hands
- Following: Follows left/right directions
- Speed: Responds with increasing automaticity
- Extension: Applies to objects and pictures
- Language: Uses left/right in own descriptions

REAL-WORLD CONNECTIONS:
- Left and right shoes
- Turning left or right when walking
- Sitting on left or right side
- Left/right in sports and games

VOCABULARY:
left, right, side, hand, opposite, turn

QUESTIONING TECHNIQUES:
- "Which hand is your right hand?"
- "Is the ball on your left or right side?"
- "Turn to your left - what do you see?"
- "Point to something on your right."

MATERIALS:
- Stickers or bracelets for marking
- Simon Says game materials
- Picture cards for left/right practice
- Simple maps/paths
- Left/right sorting activities

COMMON ERRORS AND RESPONSES:
Error: Reversing left and right
Response: "Remember, your RIGHT hand is the one with the sticker. Which side is that?"

Error: Confusion when facing different direction
Response: "Your right side stays the same - it''s always the hand with the sticker no matter which way you turn."

CONNECTION TO FUTURE LEARNING:
Left/right understanding is essential for reading direction, following maps, giving directions, and understanding reflections in geometry.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Left and Right' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Position Words
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Position Words' AND grade_level_min = -1),
  'Position Words Topic Guide',
  'Comprehensive teaching approach for using position vocabulary',
  'POSITION WORDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Inside/outside understanding
- Above/below understanding
- Basic left/right awareness
- Ability to follow verbal directions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use position words: beside, next to, between
2. Follow directions with multiple position words
3. Describe positions using varied vocabulary
4. Understand position is relative to a reference
5. Combine position words in descriptions

KEY CONCEPTS:
- Beside/next to means at the side of something
- Between means in the middle of two things
- Near means close to something
- Far means away from something

COMMON MISCONCEPTIONS:
- Confusing various position words
- Not understanding that position is relative
- Using "next to" for vertical positions
- Difficulty with "between" requiring two references

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Where should the bear sit? Next to the dog? Between the cat and bird? Let''s practice putting things in different places using special words!"

2. DIRECT INSTRUCTION (7 minutes):
Use toys/objects. "The car is BESIDE the truck - right next to it, side by side. The car is BETWEEN the truck and bus - it has friends on both sides. The car is NEAR the house - close by. The car is FAR from the tree - way over there."

3. GUIDED PRACTICE (5 minutes):
Barrier game: Give directions using position words. "Put the circle beside the square. Put the triangle between the circle and square." Partner checks the work.

4. INDEPENDENT APPLICATION (5 minutes):
Position puzzles - place objects according to clues. Drawing activities - "Draw a ball next to the box." Describe a picture using position words.

DIFFERENTIATION:

For Struggling Learners:
- Introduce one new position word at a time
- Use physical movement (stand beside the chair)
- Consistent objects and setup
- Lots of modeling and echoing
- Pictures with clear positioning

For Advanced Learners:
- Use multiple position words in one description
- Give directions for others to follow
- More precise vocabulary (directly above vs slightly above)
- Create position word puzzles
- Connect to mapping skills

ASSESSMENT INDICATORS:
- Vocabulary: Uses multiple position words correctly
- Following: Follows multi-word directions
- Describing: Describes positions accurately
- Creating: Gives others position directions
- Flexible: Uses position words in new contexts

REAL-WORLD CONNECTIONS:
- Describing where things are at home
- Following treasure hunt clues
- Giving directions to a friend
- Describing where to put something

VOCABULARY:
beside, next to, between, near, far, close to, behind, in front of

QUESTIONING TECHNIQUES:
- "What is beside the bookshelf?"
- "Put the cup between the plates."
- "Is the chair near or far from the door?"
- "How would you describe where the ball is?"

MATERIALS:
- Various small objects for positioning
- Barrier game materials
- Position picture cards
- Drawing materials
- Positional puzzles

COMMON ERRORS AND RESPONSES:
Error: Confusing beside with between
Response: "Beside means next to - on one side. Between means in the middle with something on BOTH sides."

Error: Using wrong position word
Response: "Let''s look carefully. The bear is... here, with the cat on this side and the dog on that side. He''s BETWEEN them!"

CONNECTION TO FUTURE LEARNING:
Rich position vocabulary supports spatial reasoning, geometry, giving and following directions, and understanding spatial relationships in math problems.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Position Words' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CLASSIFY AND SORT UNIT TOPICS
-- ============================================================================

-- Same and Different
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Same and Different' AND grade_level_min = -1),
  'Same and Different Topic Guide',
  'Comprehensive teaching approach for identifying same and different objects',
  'SAME AND DIFFERENT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Visual discrimination skills
- Ability to attend to object features
- Basic vocabulary for colors and shapes
- Experience with matching activities

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify objects that are the same
2. Identify objects that are different
3. Explain how objects are the same or different
4. Sort objects into same and different groups
5. Notice specific attributes (color, shape, size)

KEY CONCEPTS:
- Same means identical or matching in some way
- Different means not the same in some way
- Objects can be same in one way but different in another
- We can describe HOW things are the same or different

COMMON MISCONCEPTIONS:
- Thinking "same" requires identical in ALL ways
- Difficulty identifying specific differences
- Not recognizing partial sameness
- Confusing "same" with "similar"

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Are these the SAME or DIFFERENT?" Hold up two identical blocks. "Same! They match!" Hold up two different blocks. "Different! They don''t match. Let''s be same/different detectives!"

2. DIRECT INSTRUCTION (5 minutes):
"These blocks are the SAME COLOR - both red! But they''re DIFFERENT SIZES - this one is big, this one is small. Things can be same in some ways and different in others." Show multiple examples.

3. GUIDED PRACTICE (5 minutes):
Object pairs - "Are these the same or different? HOW are they the same? HOW are they different?" Each child gets objects to examine and describe.

4. INDEPENDENT APPLICATION (5 minutes):
Same/different sorting - put matching objects together. Same/different picture cards. Find two things in the room that are the same.

DIFFERENTIATION:

For Struggling Learners:
- Start with identical vs completely different
- Focus on one attribute at a time
- Use real objects before pictures
- Limited choices (2-3 objects)
- Lots of modeling of language

For Advanced Learners:
- Identify multiple ways things are same/different
- Find objects that are same in one way, different in another
- Create their own same/different pairs
- Use more precise vocabulary
- Explain reasoning in complete sentences

ASSESSMENT INDICATORS:
- Identification: Correctly identifies same/different
- Vocabulary: Uses same/different appropriately
- Attributes: Names specific ways things are same/different
- Sorting: Groups same objects together
- Explanation: Explains their reasoning

REAL-WORLD CONNECTIONS:
- Matching socks (same)
- Finding the different one in a group
- Sorting toys by type
- Identifying same foods at the store

VOCABULARY:
same, different, match, alike, compare, attribute, describe

QUESTIONING TECHNIQUES:
- "Are these the same or different?"
- "HOW are they the same?"
- "What makes them different?"
- "Can you find something the same as this?"

MATERIALS:
- Attribute blocks
- Object pairs (same and different)
- Picture cards
- Sorting mats
- Real objects for comparison

COMMON ERRORS AND RESPONSES:
Error: Saying "different" for objects that match
Response: "Let''s look closely. Same color? Same shape? Same size? They match in every way - they''re the same!"

Error: Can''t explain the difference
Response: "Look at this one and this one. What''s different? Let''s check: color? Size? Shape?"

CONNECTION TO FUTURE LEARNING:
Same/different thinking is foundational for classification, pattern recognition, and understanding attributes used throughout mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Same and Different' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Sorting by Color
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sorting by Color' AND grade_level_min = -1),
  'Sorting by Color Topic Guide',
  'Comprehensive teaching approach for sorting objects by color',
  'SORTING BY COLOR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Color recognition (basic colors)
- Understanding of same and different
- Ability to group objects
- Fine motor skills for handling objects

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Sort objects by color attribute
2. Create color groups from mixed collections
3. Explain their sorting rule (color)
4. Continue a color sort started by someone else
5. Count objects in color groups

KEY CONCEPTS:
- Sorting means grouping by a rule
- Color is one way to sort objects
- All objects in a group share the same color
- Different objects can be in the same group if they share a color

COMMON MISCONCEPTIONS:
- Sorting by multiple attributes at once
- Not completing the sort (leaving objects)
- Difficulty with similar colors (red/orange)
- Thinking only same objects can be grouped

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Dump out a mixed pile of colored objects. "Oh no, everything is mixed up! Let''s sort them by COLOR so all the same colors are together!"

2. DIRECT INSTRUCTION (5 minutes):
Model sorting: "I''ll put all the RED ones here. This block is red - it goes here. This bear is red - same group! Red, red, red. Now I''ll make a BLUE group." Show different objects in same color group.

3. GUIDED PRACTICE (5 minutes):
Each child has a mixed pile. "Sort your objects by color. All the same colors go together." Circulate. "What color is this group? Did all the red ones go together?"

4. INDEPENDENT APPLICATION (5 minutes):
Sorting stations with different objects. Color sorting games. "Sort and count" - how many in each color group?

DIFFERENTIATION:

For Struggling Learners:
- Start with only 2 colors
- Use objects that are clearly different colors
- Provide color mats for sorting onto
- Same objects in different colors (all bears)
- Fewer total objects to sort

For Advanced Learners:
- Sort 4-5 colors
- Sort with shades (light blue, dark blue)
- Graph the color groups
- Re-sort by a different attribute
- Describe their sorting rule

ASSESSMENT INDICATORS:
- Sorting: Groups by color correctly
- Completeness: Sorts all objects
- Rule: Identifies the sorting rule (color)
- Vocabulary: Names colors correctly
- Counting: Counts groups after sorting

REAL-WORLD CONNECTIONS:
- Sorting crayons by color
- Organizing toys by color
- Putting away laundry by color
- Sorting candies by color

VOCABULARY:
sort, group, color, same, together, red, blue, yellow, green, orange, purple

QUESTIONING TECHNIQUES:
- "What color is this group?"
- "Where does this red block go?"
- "How did you sort these?"
- "How many blue ones are there?"

MATERIALS:
- Mixed color objects (bears, blocks, buttons)
- Sorting mats or trays
- Color labels or spots
- Various collections to sort
- Graphing materials (optional)

COMMON ERRORS AND RESPONSES:
Error: Putting orange in the red group
Response: "Look closely at the colors. Is this one red like these? It''s orange - a different color. It needs its own group!"

Error: Sorting by shape instead of color
Response: "We''re sorting by COLOR today. This blue circle and this blue square are the same color - they go together!"

CONNECTION TO FUTURE LEARNING:
Sorting by attributes is foundational for data analysis, graphing, and understanding classification systems in science and math.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sorting by Color' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Sorting by Shape
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sorting by Shape' AND grade_level_min = -1),
  'Sorting by Shape Topic Guide',
  'Comprehensive teaching approach for sorting objects by shape',
  'SORTING BY SHAPE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Shape recognition (circle, square, triangle)
- Experience sorting by color
- Understanding of sorting rules
- Ability to identify attributes

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Sort objects by shape attribute
2. Create shape groups from mixed collections
3. Explain their sorting rule (shape)
4. Recognize that differently colored same-shapes go together
5. Count objects in shape groups

KEY CONCEPTS:
- Shape is another way to sort
- Objects of the same shape can be different colors or sizes
- We focus on shape and ignore other differences
- Sorting means using ONE rule at a time

COMMON MISCONCEPTIONS:
- Sorting by color when asked to sort by shape
- Thinking same-shape objects must be same color
- Difficulty recognizing shapes in different orientations
- Confusing shapes that look similar

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"We''ve sorted by color before. Today let''s sort by SHAPE! All the circles together, all the squares together!" Mix shapes of various colors.

2. DIRECT INSTRUCTION (5 minutes):
"Watch - I''m looking at SHAPE, not color. This red circle and this blue circle are both CIRCLES - same group! This red square goes in a different group because it''s a different SHAPE." Emphasize ignoring color.

3. GUIDED PRACTICE (5 minutes):
Each child sorts by shape. "Put all the triangles together. All the circles together. Even if they''re different colors, same shapes go together!"

4. INDEPENDENT APPLICATION (5 minutes):
Shape sorting puzzles. Shape hunt - find and sort shapes in the room. "Sort and count" by shape.

DIFFERENTIATION:

For Struggling Learners:
- Use only 2 shapes initially
- Same color, different shapes first
- Clear, regular shapes only
- Shape mats with outlines
- Few objects total

For Advanced Learners:
- Include more shapes (rectangle, hexagon)
- Sort by shape then by color within
- Recognize shapes in different sizes
- Describe why objects are in each group
- Compare to color sorting

ASSESSMENT INDICATORS:
- Focus: Sorts by shape, ignoring color
- Accuracy: Groups same shapes correctly
- Vocabulary: Names shapes correctly
- Explanation: Describes sorting rule
- Counting: Counts shape groups

REAL-WORLD CONNECTIONS:
- Shape sorter toys
- Organizing blocks by shape
- Sorting cookies or crackers by shape
- Matching lids to containers by shape

VOCABULARY:
sort, shape, circle, square, triangle, rectangle, group, same shape

QUESTIONING TECHNIQUES:
- "What shape is this group?"
- "This triangle is red - where does it go?"
- "How are all these the same?"
- "How many squares did you find?"

MATERIALS:
- Attribute blocks (different shapes and colors)
- Shape sorting mats
- Various shaped objects
- Shape flash cards
- Containers for sorting

COMMON ERRORS AND RESPONSES:
Error: Sorting by color instead of shape
Response: "Today we''re sorting by SHAPE. This blue triangle and this yellow triangle are the same SHAPE - triangle! They go together."

Error: Not recognizing rotated shapes
Response: "This shape is turned, but count the sides. 1, 2, 3. Three sides - it''s still a triangle!"

CONNECTION TO FUTURE LEARNING:
Shape sorting builds geometry understanding, develops visual discrimination, and supports classification skills in math and science.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sorting by Shape' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PATTERNS UNIT TOPICS
-- ============================================================================

-- Color Patterns
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Color Patterns' AND grade_level_min = -1),
  'Color Patterns Topic Guide',
  'Comprehensive teaching approach for recognizing and creating color patterns',
  'COLOR PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Color recognition
- Understanding of same and different
- Ability to sequence
- Basic repetition concept

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize AB color patterns (red, blue, red, blue)
2. Copy a color pattern
3. Continue a color pattern
4. Create their own AB color pattern
5. Describe the pattern using color names

KEY CONCEPTS:
- Patterns repeat over and over
- We can describe patterns with letters (AB, AB)
- Once we find the pattern, we can predict what comes next
- The same pattern can use different colors

COMMON MISCONCEPTIONS:
- Thinking any sequence is a pattern
- Not recognizing where the pattern repeats
- Difficulty continuing patterns correctly
- Confusing random arrangements with patterns

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Clap pattern: Clap, snap, clap, snap. "What do you think comes next? Clap! It repeats! Colors can make patterns too!"

2. DIRECT INSTRUCTION (5 minutes):
Build a pattern: "Red, blue, red, blue, red, blue. See how it repeats? Red, blue is the part that keeps going. Red, blue, red, blue. What comes next? Red! Then blue!"

3. GUIDED PRACTICE (5 minutes):
Each child builds and continues a pattern. "Make red, blue, red, blue. Now add the next colors." Check: "Is your pattern repeating?"

4. INDEPENDENT APPLICATION (5 minutes):
Pattern trains - color the next cars in pattern. Create your own pattern to show a friend. Pattern hunt - find patterns in the room (stripes, etc.).

DIFFERENTIATION:

For Struggling Learners:
- Start with only 2 colors
- Physical manipulation (cubes in a line)
- Say the colors aloud while placing
- Show where the pattern "starts over"
- Same pattern repeated many times

For Advanced Learners:
- ABC patterns (red, blue, yellow, red, blue, yellow)
- ABB patterns (red, blue, blue, red, blue, blue)
- Find patterns in environment
- Describe patterns with letters
- Translate patterns (same pattern, different colors)

ASSESSMENT INDICATORS:
- Recognition: Identifies pattern vs non-pattern
- Continuation: Extends pattern correctly
- Creation: Makes own pattern
- Description: Names the pattern parts
- Application: Finds patterns around them

REAL-WORLD CONNECTIONS:
- Striped patterns on clothing
- Pattern in wallpaper or tiles
- Fence patterns
- Plaid and checkered designs

VOCABULARY:
pattern, repeat, next, over and over, red, blue, same, different

QUESTIONING TECHNIQUES:
- "What comes next?"
- "What part repeats?"
- "Is this a pattern? How do you know?"
- "Can you make a pattern?"

MATERIALS:
- Colored cubes or links
- Pattern strips with blanks to fill
- Pattern cards
- Crayons for coloring patterns
- Beads and laces

COMMON ERRORS AND RESPONSES:
Error: Adding random color
Response: "Let''s read our pattern. Red, blue, red, blue. What repeats? Red, blue! So next is...red!"

Error: Not recognizing the repeat
Response: "The pattern starts over HERE. Red, blue. Then it starts again. Red, blue."

CONNECTION TO FUTURE LEARNING:
Pattern recognition leads to algebraic thinking, understanding function rules, and recognizing mathematical patterns.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Color Patterns' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Shape Patterns
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Shape Patterns' AND grade_level_min = -1),
  'Shape Patterns Topic Guide',
  'Comprehensive teaching approach for recognizing and creating shape patterns',
  'SHAPE PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Shape recognition
- Understanding of color patterns
- Pattern concept (repeat)
- Ability to identify attributes

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize AB shape patterns
2. Copy a shape pattern
3. Continue a shape pattern
4. Create their own shape pattern
5. Describe patterns using shape names

KEY CONCEPTS:
- Patterns can be made with shapes
- The shapes repeat in a predictable way
- Same pattern structure can use different shapes
- We look at shape, not color, for shape patterns

COMMON MISCONCEPTIONS:
- Focusing on color instead of shape
- Adding wrong shape to continue pattern
- Not recognizing when shapes repeat
- Thinking a random sequence is a pattern

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"We made patterns with colors. Can we make patterns with SHAPES? Circle, square, circle, square... what comes next?"

2. DIRECT INSTRUCTION (5 minutes):
Build with shapes: "Circle, triangle, circle, triangle. The circle and triangle take turns! Circle, triangle, circle, triangle. What''s next? Circle!" Use same color to focus on shape.

3. GUIDED PRACTICE (5 minutes):
Each child creates and extends shape patterns. "Make a pattern with circles and squares. Keep it going!" Check: "Let''s read your pattern together."

4. INDEPENDENT APPLICATION (5 minutes):
Shape pattern worksheets. Pattern necklaces with shape beads. Create patterns for a friend to continue.

DIFFERENTIATION:

For Struggling Learners:
- Use only 2 shapes, same color
- Large shape manipulatives
- Say shape names while placing
- Highlight where pattern repeats
- Same pattern practiced multiple times

For Advanced Learners:
- ABC shape patterns
- ABB shape patterns
- Combine color AND shape patterns
- Translate between representations
- Create complex patterns

ASSESSMENT INDICATORS:
- Recognition: Identifies shape patterns
- Continuation: Extends correctly
- Creation: Makes original patterns
- Description: Names shapes in pattern
- Transfer: Applies learning to new shapes

REAL-WORLD CONNECTIONS:
- Shape patterns in architecture
- Pattern blocks designs
- Tile floor patterns
- Jewelry with shape patterns

VOCABULARY:
pattern, shape, circle, square, triangle, repeat, next, turn-taking

QUESTIONING TECHNIQUES:
- "What shape comes next?"
- "What shapes are taking turns?"
- "Is this a pattern? How do you know?"
- "Can you make a different pattern?"

MATERIALS:
- Shape manipulatives (blocks, tiles)
- Pattern cards with shapes
- Shape stamps or stickers
- Pattern strip mats
- Various shape collections

COMMON ERRORS AND RESPONSES:
Error: Adding wrong shape
Response: "Let''s read the pattern. Circle, square, circle, square. Which shapes take turns? What comes after square?"

Error: Focusing on color
Response: "Today we look at SHAPES for our pattern. Circle, triangle. Forget the colors - what shape is next?"

CONNECTION TO FUTURE LEARNING:
Shape patterns develop visual pattern recognition, support geometry understanding, and build algebraic thinking.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Shape Patterns' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- What Comes Next (Patterns)
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'What Comes Next' AND grade_level_min = -1),
  'What Comes Next Topic Guide',
  'Comprehensive teaching approach for predicting what comes next in patterns',
  'WHAT COMES NEXT (PATTERNS) - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of color and shape patterns
- Pattern recognition skills
- Ability to identify repeating units
- Vocabulary for colors and shapes

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Predict what comes next in various patterns
2. Use the pattern rule to make predictions
3. Explain HOW they knew what comes next
4. Self-check by extending and verifying
5. Find the "core" or repeating part of a pattern

KEY CONCEPTS:
- Patterns help us predict what comes next
- We find the repeating part to make predictions
- The pattern rule tells us what will happen
- Once we know the rule, we can extend forever

COMMON MISCONCEPTIONS:
- Random guessing instead of using pattern rule
- Not finding the core/repeat unit
- Difficulty with longer pattern cores (ABC)
- Not checking prediction against pattern

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"I''m thinking of a pattern. Red, blue, red, blue, red... What am I going to say next? How did you KNOW?" Celebrate predictions.

2. DIRECT INSTRUCTION (5 minutes):
Model thinking aloud: "Let me find the pattern. Circle, square, circle, square. I see circle-square repeating. So next is... CIRCLE! Then square again. The pattern tells me!"

3. GUIDED PRACTICE (5 minutes):
Various patterns - students predict, then verify by continuing. "What do you think comes next? Let''s check!" Include color, shape, and size patterns.

4. INDEPENDENT APPLICATION (5 minutes):
Prediction cards - what comes next? Pattern completion worksheets. "Prove it" games - predict and check.

DIFFERENTIATION:

For Struggling Learners:
- Simple AB patterns only
- Point to where pattern repeats
- Think aloud the pattern together
- Provide the choices (will it be circle or square?)
- Multiple repetitions before predicting

For Advanced Learners:
- ABC and ABB patterns
- Predict multiple steps ahead
- Create "tricky" patterns for friends
- Patterns with numbers
- Explain pattern rules in words

ASSESSMENT INDICATORS:
- Accuracy: Predicts correctly
- Strategy: Uses pattern rule
- Explanation: Tells how they knew
- Verification: Checks predictions
- Application: Applies to various patterns

REAL-WORLD CONNECTIONS:
- Predicting next event in routine
- Knowing what comes after Tuesday
- Anticipating song patterns
- Predicting story patterns

VOCABULARY:
predict, next, pattern, repeat, know, rule, check, core

QUESTIONING TECHNIQUES:
- "What comes next?"
- "How do you know?"
- "What part repeats?"
- "Can you prove it by continuing the pattern?"

MATERIALS:
- Various pattern cards
- Prediction games
- Covering/revealing tools
- Pattern building materials
- Verification activities

COMMON ERRORS AND RESPONSES:
Error: Random guess
Response: "Let''s look at the pattern first. What repeats? Red, blue. So after blue comes... let''s use the pattern!"

Error: Can''t identify the repeat
Response: "Start at the beginning. Red, blue. Now it starts again. Red, blue. Red-blue is the part that repeats."

CONNECTION TO FUTURE LEARNING:
Predicting from patterns develops mathematical reasoning, supports understanding of functions, and builds logical thinking skills.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What Comes Next' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SIZE AND MEASUREMENT UNIT TOPICS
-- ============================================================================

-- Long and Short
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Long and Short' AND grade_level_min = -1),
  'Long and Short Topic Guide',
  'Comprehensive teaching approach for comparing length using long and short',
  'LONG AND SHORT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic comparison skills
- Understanding of same and different
- Vocabulary: big, small
- Visual discrimination

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare two objects by length
2. Identify which is longer and which is shorter
3. Use comparison vocabulary (long, short, longer, shorter)
4. Line up objects to compare length
5. Order objects by length

KEY CONCEPTS:
- Long and short describe how far something extends
- We must align objects at one end to compare
- Longer means it extends farther
- Length is one way to measure objects

COMMON MISCONCEPTIONS:
- Not aligning objects at the same starting point
- Confusing length with height or size
- Thinking fat/thin affects long/short
- Difficulty with comparative forms (longer)

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Hold up two crayons (different lengths). "Look! Are these the same? This one is LONG. This one is SHORT. Let''s learn about long and short!"

2. DIRECT INSTRUCTION (5 minutes):
"To compare, I line them up at the bottom. See? One ends here, one ends way over here. The one that goes farther is LONGER. The one that stops first is SHORTER." Demonstrate with multiple pairs.

3. GUIDED PRACTICE (5 minutes):
Each child compares pairs of objects. "Which is longer? Which is shorter? Remember to line them up!" Use ribbons, straws, pencils.

4. INDEPENDENT APPLICATION (5 minutes):
Length sorting - put in order from short to long. Find something longer/shorter than... activities. Draw long and short versions of objects.

DIFFERENTIATION:

For Struggling Learners:
- Very obvious length differences
- Physical alignment mat
- Use same objects in different lengths
- Focus on just "long" and "short"
- Lots of practice with the same materials

For Advanced Learners:
- Order 3+ objects by length
- Use "longer than" and "shorter than"
- Compare lengths of classroom objects
- Estimate then check
- Non-standard measurement introduction

ASSESSMENT INDICATORS:
- Comparison: Correctly identifies longer/shorter
- Alignment: Lines up objects for comparison
- Vocabulary: Uses long/short correctly
- Ordering: Arranges by length
- Application: Compares various objects

REAL-WORLD CONNECTIONS:
- Long pencils vs short pencils
- Long sleeves vs short sleeves
- Long hair vs short hair
- Long trains vs short trains

VOCABULARY:
long, short, longer, shorter, length, compare, same, different

QUESTIONING TECHNIQUES:
- "Which is longer?"
- "Which is shorter?"
- "How do we compare length?"
- "Can you find something longer than this?"

MATERIALS:
- Objects of varying lengths (straws, ribbons)
- Comparison mats for alignment
- Length cards
- Various classroom objects
- Drawing materials

COMMON ERRORS AND RESPONSES:
Error: Not lining up at same starting point
Response: "Let''s line them up at the bottom. Start them at the same place. Now which one goes farther?"

Error: Pointing to shorter as longer
Response: "Longer means it goes farther. This one stops here, but this one keeps going. This one is LONGER."

CONNECTION TO FUTURE LEARNING:
Comparing lengths introduces measurement concepts. This builds toward using tools and units to measure length in later grades.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Long and Short' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Tall and Short
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Tall and Short' AND grade_level_min = -1),
  'Tall and Short Topic Guide',
  'Comprehensive teaching approach for comparing height using tall and short',
  'TALL AND SHORT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of long and short
- Comparison vocabulary
- Visual discrimination for size
- Spatial awareness (up and down)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare two objects or people by height
2. Identify which is taller and which is shorter
3. Use vocabulary: tall, short, taller, shorter
4. Understand objects must be on same level to compare
5. Order objects by height

KEY CONCEPTS:
- Tall and short describe height (up and down)
- Objects must be on the same base to compare height
- Taller means it goes up higher
- Height is measured from bottom to top

COMMON MISCONCEPTIONS:
- Confusing tall/short with long/short
- Not placing objects on same level
- Thinking tilted objects are shorter
- Comparing heights when bases are different

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Stand up! Who is TALL? Who is SHORT? Let''s compare!" Have children stand back-to-back. "We need to stand on the same floor to compare heights!"

2. DIRECT INSTRUCTION (5 minutes):
Stack blocks. "This tower is TALL. This tower is SHORT. Let''s put them on the same table and compare. The tall one reaches up higher. The short one doesn''t reach as high."

3. GUIDED PRACTICE (5 minutes):
Children build two towers and compare. "Which is taller? Make sure they''re on the same table!" Compare objects in the room.

4. INDEPENDENT APPLICATION (5 minutes):
Height ordering - arrange objects/pictures from short to tall. Draw tall and short versions of things. Height comparison hunt in classroom.

DIFFERENTIATION:

For Struggling Learners:
- Very different heights to compare
- Standing towers (not horizontal)
- Compare to their own height
- Same objects, different heights
- Focus vocabulary: tall, short

For Advanced Learners:
- Order 3+ objects by height
- Taller than/shorter than comparisons
- Compare heights to classroom items
- Estimate then measure
- Connect to "how many cubes tall"

ASSESSMENT INDICATORS:
- Comparison: Correctly identifies taller/shorter
- Vocabulary: Uses tall/short correctly
- Base: Understands same-level requirement
- Ordering: Arranges by height
- Differentiation: Distinguishes from long/short

REAL-WORLD CONNECTIONS:
- Tall buildings vs short buildings
- Tall trees vs short flowers
- Tall people vs short people
- Tall glasses vs short cups

VOCABULARY:
tall, short, taller, shorter, height, high, low, compare

QUESTIONING TECHNIQUES:
- "Which is taller?"
- "Which is shorter?"
- "Are they on the same level?"
- "How do you know which is taller?"

MATERIALS:
- Connecting cubes for towers
- Various objects of different heights
- Height comparison cards
- Classroom items to compare
- Drawing materials

COMMON ERRORS AND RESPONSES:
Error: Saying the flat object is "short" when it''s "long"
Response: "This one lies flat - that''s long or short for LENGTH. When things stand up, we use tall or short for HEIGHT."

Error: Comparing objects on different levels
Response: "This one is on the floor, this one is on the table. To compare height, they need to stand on the same surface."

CONNECTION TO FUTURE LEARNING:
Height comparison develops measurement concepts and supports understanding of standard units for measuring height.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Tall and Short' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Light and Heavy
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Light and Heavy' AND grade_level_min = -1),
  'Light and Heavy Topic Guide',
  'Comprehensive teaching approach for comparing weight using light and heavy',
  'LIGHT AND HEAVY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Comparison vocabulary (more, less)
- Experience comparing by size
- Understanding of same and different
- Fine motor skills for holding objects

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare two objects by weight
2. Identify which is lighter and which is heavier
3. Use vocabulary: light, heavy, lighter, heavier
4. Use hands as a balance to compare
5. Understand that size doesn''t always determine weight

KEY CONCEPTS:
- Light and heavy describe weight
- We can feel weight by holding objects
- Heavier objects push down more
- Size doesn''t always tell us weight (big pillow vs small rock)

COMMON MISCONCEPTIONS:
- Thinking bigger always means heavier
- Not comparing by actually holding objects
- Confusing weight with size or height
- Difficulty with vocabulary (lighter/heavier)

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Hand each child a heavy book and a feather. "Hold one in each hand. Which one pulls your hand down more? That one is HEAVY! The other one is LIGHT!"

2. DIRECT INSTRUCTION (5 minutes):
Use a simple balance or hands as a balance. "Hold your hands like a scale. When I put things in them, which side goes down? The one that goes down is heavier. The one that goes up is lighter."

3. GUIDED PRACTICE (5 minutes):
Each child compares pairs of objects. "Hold one in each hand. Which is heavier? Which is lighter?" Compare objects of different sizes to challenge the size=weight misconception.

4. INDEPENDENT APPLICATION (5 minutes):
Weight sorting - sort objects into light and heavy groups. Compare surprising pairs (cotton ball vs coin). Use a balance scale if available.

DIFFERENTIATION:

For Struggling Learners:
- Very different weights (feather vs book)
- Consistent "hands as balance" strategy
- Same-size objects, different weights
- Focus on just "light" and "heavy"
- Lots of kinesthetic experience

For Advanced Learners:
- Order 3+ objects by weight
- Heavier than/lighter than comparisons
- Estimate before comparing
- Challenge with size-weight discrepancies
- Introduction to balance scales

ASSESSMENT INDICATORS:
- Comparison: Correctly identifies lighter/heavier
- Strategy: Uses hands or balance
- Vocabulary: Uses light/heavy correctly
- Understanding: Knows size doesn''t determine weight
- Application: Compares various objects

REAL-WORLD CONNECTIONS:
- Carrying heavy vs light groceries
- Heavy backpack vs light lunchbox
- Heavy coat vs light shirt
- Baby vs adult

VOCABULARY:
light, heavy, lighter, heavier, weight, compare, balance, hold

QUESTIONING TECHNIQUES:
- "Which is heavier?"
- "Which is lighter?"
- "Does bigger always mean heavier?"
- "How do you know which is heavier?"

MATERIALS:
- Objects of varying weights
- Balance scale (if available)
- Surprising pairs (big light vs small heavy)
- Sorting containers
- Weight comparison cards

COMMON ERRORS AND RESPONSES:
Error: Saying the bigger one is heavier without checking
Response: "Let''s find out! Hold them and see. Sometimes the small one is actually heavier!"

Error: Difficulty feeling the difference
Response: "Hold one up, feel it pull down. Now hold the other. Which one pulls harder? That''s the heavier one."

CONNECTION TO FUTURE LEARNING:
Weight comparison introduces measurement concepts. This builds toward understanding standard units of weight in later grades.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Light and Heavy' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MONEY INTRODUCTION UNIT TOPICS
-- ============================================================================

-- Coin Recognition
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Coin Recognition' AND grade_level_min = -1),
  'Coin Recognition Topic Guide',
  'Comprehensive teaching approach for recognizing common coins',
  'COIN RECOGNITION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Color recognition (copper, silver)
- Size comparison skills
- Sorting by attributes
- Fine motor for handling small objects

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify pennies by sight
2. Identify nickels by sight
3. Identify dimes by sight
4. Identify quarters by sight
5. Sort coins by type

KEY CONCEPTS:
- Coins have different sizes and colors
- Each type of coin has a name
- Coins are used to buy things
- We can sort coins by type

COMMON MISCONCEPTIONS:
- Thinking the biggest coin is worth most
- Confusing similar-colored coins
- Not recognizing coins that are worn or different
- Mixing up coin names

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Look what I found in my pocket - coins! These are special - we use them to buy things. Let''s learn their names!" Show real coins.

2. DIRECT INSTRUCTION (7 minutes):
Introduce each coin: "This is a PENNY. It''s copper colored - like a sunset! This is a NICKEL. It''s silver and bigger than a penny. This is a DIME. It''s silver but tiny - the smallest! This is a QUARTER. It''s silver and the biggest."

3. GUIDED PRACTICE (5 minutes):
Sort coins into groups. "Find all the pennies. Now find all the nickels." Use rhymes or mnemonics. "Dime is tiny, nickel is thicker, penny is copper, quarter is bigger!"

4. INDEPENDENT APPLICATION (5 minutes):
Coin sorting games. Coin matching activities. Play store with coins (not values yet, just names).

DIFFERENTIATION:

For Struggling Learners:
- Focus on penny first, then add others
- Use magnified coin images
- Color-coded coin sorting mats
- Lots of handling real coins
- Same sorting activity repeated

For Advanced Learners:
- Coin rubbings
- Count how many of each type
- Begin to learn values
- Identify coins by feel
- Real or play money for pretend store

ASSESSMENT INDICATORS:
- Recognition: Names coins correctly
- Sorting: Groups same coins together
- Attributes: Describes color and size
- Vocabulary: Uses penny, nickel, dime, quarter
- Application: Identifies coins in various contexts

REAL-WORLD CONNECTIONS:
- Coins in parent''s pocket
- Piggy banks
- Vending machines
- Store purchases
- Coin collections

VOCABULARY:
penny, nickel, dime, quarter, coin, copper, silver, round

QUESTIONING TECHNIQUES:
- "What coin is this?"
- "Which coin is the smallest?"
- "Can you find all the pennies?"
- "What color is a penny?"

MATERIALS:
- Real coins (pennies, nickels, dimes, quarters)
- Enlarged coin images
- Coin sorting mats
- Play coins
- Coin matching games

COMMON ERRORS AND RESPONSES:
Error: Calling all silver coins "quarters"
Response: "Let''s look at the size. Dime is tiny. Nickel is medium. Quarter is big. Which size is this?"

Error: Confusing penny and penny name
Response: "The copper one - the sunset-colored coin - is called a penny. Can you find more pennies?"

CONNECTION TO FUTURE LEARNING:
Coin recognition is foundational for learning coin values, counting money, and making change in later grades.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Coin Recognition' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Coin Values
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Coin Values' AND grade_level_min = -1),
  'Coin Values Topic Guide',
  'Comprehensive teaching approach for understanding that coins have different values',
  'COIN VALUES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Coin recognition (penny, nickel, dime, quarter)
- Understanding of more and fewer
- Beginning counting skills
- Concept of trading/exchange

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that coins have different values
2. Know a penny is worth 1 cent
3. Begin to understand some coins are worth more than others
4. Recognize that size doesn''t equal value
5. Use coins in simple pretend trading

KEY CONCEPTS:
- Different coins are worth different amounts
- A penny is worth 1 cent
- Some coins are worth more even though smaller
- We use coins to buy things

COMMON MISCONCEPTIONS:
- Thinking bigger coins are always worth more
- Not understanding the concept of "worth"
- Confusing the number of coins with total value
- Thinking all coins are worth the same

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"If I want to buy a sticker that costs 5 cents, can I use 1 penny? Hmm, I need to learn about how much coins are WORTH!"

2. DIRECT INSTRUCTION (7 minutes):
"A PENNY is worth 1 cent - like 1 point. A NICKEL is special - it''s worth 5 cents! That''s like 5 pennies! A DIME is tiny but worth 10 cents - 10 pennies! A QUARTER is worth 25 cents - lots of pennies!"

3. GUIDED PRACTICE (5 minutes):
Trading games: "I''ll give you 5 pennies for your 1 nickel - they''re worth the same!" Sort by value. Compare: "Which is worth more, a nickel or a penny?"

4. INDEPENDENT APPLICATION (5 minutes):
Simple store play (items cost 1 penny, 1 nickel). "Can you pay for this?" Beginning to connect coins to prices.

DIFFERENTIATION:

For Struggling Learners:
- Focus on penny = 1 cent only
- Use visual supports showing penny piles
- Lots of trading practice
- Concrete "1 cent" experiences
- Simple value comparisons

For Advanced Learners:
- Begin counting small amounts
- Mix coins for purchases
- "How many pennies in a nickel?"
- Create their own "store"
- Start to count by 5s for nickels

ASSESSMENT INDICATORS:
- Understanding: Knows coins have different values
- Penny: Knows penny = 1 cent
- Comparison: Identifies which coin is worth more
- Application: Uses coins appropriately in play
- Trading: Participates in fair trades

REAL-WORLD CONNECTIONS:
- Buying small items
- Saving coins in piggy bank
- Getting change back
- Earning coins for chores

VOCABULARY:
value, worth, cent, penny, nickel, dime, quarter, trade, buy, cost

QUESTIONING TECHNIQUES:
- "Which is worth more, a penny or a nickel?"
- "How many cents is a penny worth?"
- "Is the big coin always worth more?"
- "How can you pay for this 5-cent item?"

MATERIALS:
- Real or play coins
- Value comparison mats
- Simple "store" setup
- Price tags (1 cent, 5 cents)
- Trading game materials

COMMON ERRORS AND RESPONSES:
Error: Thinking dime is worth less because it''s smaller
Response: "This is tricky! The tiny dime is actually worth 10 cents - more than the bigger nickel! Size doesn''t tell us value."

Error: Not understanding "worth"
Response: "Worth means how much you can buy with it. A nickel can buy more than a penny because it''s worth more."

CONNECTION TO FUTURE LEARNING:
Understanding that coins have values prepares students for counting money, making change, and understanding our monetary system.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Coin Values' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- FLAT SHAPES UNIT TOPICS
-- ============================================================================

-- Circles
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Circles' AND grade_level_min = -1),
  'Circles Topic Guide',
  'Comprehensive teaching approach for identifying and describing circles',
  'CIRCLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Visual discrimination
- Shape vocabulary (round)
- Understanding of same and different
- Fine motor for tracing

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify circles by sight
2. Describe circles as round with no corners
3. Find circles in the environment
4. Draw circles
5. Compare circles to other shapes

KEY CONCEPTS:
- Circles are round all the way around
- Circles have no corners (vertices)
- Circles have no straight sides
- Circles can be any size but keep their round shape

COMMON MISCONCEPTIONS:
- Thinking ovals are circles
- Calling any round shape a circle
- Believing circles must be a certain size
- Not recognizing partially hidden circles

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Roll a wheel. "Look at this shape! It''s a CIRCLE! Circles are round and they roll! Can you show me round with your arms?"

2. DIRECT INSTRUCTION (5 minutes):
"A circle is perfectly round. It has NO corners - see, my finger goes around and around without stopping. No pointy parts! A circle has no straight sides - it curves the whole way." Compare to a square.

3. GUIDED PRACTICE (5 minutes):
Circle hunt. "Is this a circle? Let''s check - is it round? No corners? Curved all around?" Check each attribute.

4. INDEPENDENT APPLICATION (5 minutes):
Find circles in classroom. Draw circles. Circle vs not-circle sorting. Trace circles of different sizes.

DIFFERENTIATION:

For Struggling Learners:
- Focus on "round" and "no corners"
- Use clear, obvious circles
- Hands-on circle manipulatives
- Circle templates for tracing
- Same activity repeated with different circles

For Advanced Learners:
- Compare circles to ovals
- Find circles in complex pictures
- Draw circles of specific sizes
- Learn about circle parts (center)
- Create circle art

ASSESSMENT INDICATORS:
- Identification: Correctly identifies circles
- Description: Says circles are round, no corners
- Discrimination: Distinguishes from other shapes
- Application: Finds circles in environment
- Drawing: Creates recognizable circles

REAL-WORLD CONNECTIONS:
- Wheels
- Clocks
- Plates and cups
- Sun and moon
- Coins

VOCABULARY:
circle, round, curved, no corners, no sides, roll

QUESTIONING TECHNIQUES:
- "Is this a circle? How do you know?"
- "What makes a circle special?"
- "Can you find a circle in our room?"
- "Why does a circle roll so well?"

MATERIALS:
- Circle manipulatives
- Circle templates
- Pictures of circles
- Real circle objects
- Drawing materials

COMMON ERRORS AND RESPONSES:
Error: Calling an oval a circle
Response: "Let''s look closely. This one is longer one way and shorter the other way. A true circle is the same all around."

Error: Saying circles have sides
Response: "Feel around the edge. Is there a straight part? No! Circles curve the whole way - no straight sides."

CONNECTION TO FUTURE LEARNING:
Understanding circles prepares students for learning about other 2D shapes, geometric properties, and eventually measuring circles.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Circles' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Squares
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Squares' AND grade_level_min = -1),
  'Squares Topic Guide',
  'Comprehensive teaching approach for identifying and describing squares',
  'SQUARES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Circle recognition (for comparison)
- Understanding of corners and sides
- Vocabulary: straight, same
- Visual discrimination

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify squares by sight
2. Describe squares as having 4 equal sides and 4 corners
3. Find squares in the environment
4. Draw squares
5. Compare squares to circles and other shapes

KEY CONCEPTS:
- Squares have 4 sides that are all the same length
- Squares have 4 corners (vertices)
- All sides of a square are straight
- Squares can be any size or orientation

COMMON MISCONCEPTIONS:
- Thinking rotated squares aren''t squares
- Confusing squares and rectangles
- Not recognizing all sides must be equal
- Believing squares must "sit flat" on a side

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Look at this shape - it''s different from a circle! It has CORNERS - pointy parts! Let''s count the sides. 1, 2, 3, 4 - four sides! This is a SQUARE!"

2. DIRECT INSTRUCTION (5 minutes):
"A square has 4 sides - all the SAME length. Watch me check - this side, this side, this side, this side - all the same! And 4 corners - 1, 2, 3, 4 - where the sides meet." Compare to circle (no corners).

3. GUIDED PRACTICE (5 minutes):
Shape sorting - is it a square? Check: 4 sides? Same length? 4 corners? Each child examines shapes. "What makes this a square?"

4. INDEPENDENT APPLICATION (5 minutes):
Square hunt in classroom. Draw squares. Build squares with sticks. Square vs other shapes sorting.

DIFFERENTIATION:

For Struggling Learners:
- Obvious squares only (not rotated)
- Count sides and corners together
- Feel the corners
- Square templates
- Compare to circles first

For Advanced Learners:
- Identify rotated squares
- Compare to rectangles
- Build squares from smaller pieces
- Create square patterns
- Measure sides with cubes

ASSESSMENT INDICATORS:
- Identification: Correctly identifies squares
- Attributes: Says 4 equal sides, 4 corners
- Discrimination: Distinguishes from other shapes
- Application: Finds squares in environment
- Drawing: Creates recognizable squares

REAL-WORLD CONNECTIONS:
- Windows
- Crackers
- Tiles on floor
- Game boards
- Some picture frames

VOCABULARY:
square, side, corner, straight, equal, same length, four

QUESTIONING TECHNIQUES:
- "How many sides does a square have?"
- "Are all the sides the same?"
- "How is a square different from a circle?"
- "Can you find a square in our room?"

MATERIALS:
- Square manipulatives
- Shape sorting sets
- Building sticks
- Square templates
- Real square objects

COMMON ERRORS AND RESPONSES:
Error: Saying a rectangle is a square
Response: "Let''s check if all sides are the same length. This side is longer than this side. So it''s not a square - it''s a rectangle!"

Error: Not recognizing rotated square
Response: "Let''s count the sides. 1, 2, 3, 4. Are they all the same length? Yes! It''s still a square, just turned!"

CONNECTION TO FUTURE LEARNING:
Understanding squares prepares students for rectangles, area concepts, and geometric properties of polygons.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Squares' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Triangles
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Triangles' AND grade_level_min = -1),
  'Triangles Topic Guide',
  'Comprehensive teaching approach for identifying and describing triangles',
  'TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Circle and square recognition
- Understanding of corners and sides
- Counting to 3
- Visual discrimination

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify triangles by sight
2. Describe triangles as having 3 sides and 3 corners
3. Find triangles in the environment
4. Draw triangles
5. Recognize triangles in various orientations

KEY CONCEPTS:
- Triangles have exactly 3 sides
- Triangles have exactly 3 corners
- The name "tri-angle" means 3 angles
- Triangles can look different but still be triangles

COMMON MISCONCEPTIONS:
- Thinking only equilateral triangles are triangles
- Not recognizing "upside down" triangles
- Confusing triangles with other 3-pointed shapes
- Believing all triangles must "point up"

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"This shape looks like a slice of pizza! Let''s count its sides - 1, 2, 3! Three sides make a TRIANGLE! Tri means three!"

2. DIRECT INSTRUCTION (5 minutes):
"A triangle has 3 sides and 3 corners. Let''s count together - 1, 2, 3 sides. 1, 2, 3 corners. Three and three! That''s what makes it a triangle." Show various triangles (pointing up, down, sideways).

3. GUIDED PRACTICE (5 minutes):
"Is this a triangle? Let''s check - count the sides. Count the corners. 3 and 3 means triangle!" Practice with different triangle types.

4. INDEPENDENT APPLICATION (5 minutes):
Triangle hunt. Draw triangles. Build triangles with sticks. Sort triangles from other shapes.

DIFFERENTIATION:

For Struggling Learners:
- Focus on "3 sides, 3 corners"
- Use equilateral triangles first
- Feel the three corners
- Triangle templates
- Same type repeated

For Advanced Learners:
- Recognize various triangle types
- Build triangles from straws
- Create with pattern blocks
- Compare to squares (4 vs 3)
- Triangle art projects

ASSESSMENT INDICATORS:
- Identification: Correctly identifies triangles
- Attributes: Says 3 sides, 3 corners
- Flexibility: Recognizes different orientations
- Application: Finds triangles in environment
- Drawing: Creates recognizable triangles

REAL-WORLD CONNECTIONS:
- Pizza slices
- Yield signs
- Roof shapes
- Musical triangles
- Sandwiches cut diagonally

VOCABULARY:
triangle, three, side, corner, point, tri

QUESTIONING TECHNIQUES:
- "How many sides does a triangle have?"
- "How many corners?"
- "Is this upside-down shape still a triangle?"
- "What''s different between a triangle and a square?"

MATERIALS:
- Triangle manipulatives
- Various triangle shapes
- Building sticks
- Triangle templates
- Real triangle objects

COMMON ERRORS AND RESPONSES:
Error: Saying upside-down triangle isn''t a triangle
Response: "Let''s count the sides. 1, 2, 3. Count the corners. 1, 2, 3. Three and three - still a triangle! Just turned."

Error: Saying a shape with 3 points but curved sides is a triangle
Response: "A triangle needs STRAIGHT sides. This one has curvy parts, so it''s not a true triangle."

CONNECTION TO FUTURE LEARNING:
Understanding triangles prepares students for polygon classification, geometric properties, and eventually concepts like area and angles.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Triangles' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Rectangles
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rectangles' AND grade_level_min = -1),
  'Rectangles Topic Guide',
  'Comprehensive teaching approach for identifying and describing rectangles',
  'RECTANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Square recognition (rectangle relationship)
- Understanding of corners and sides
- Counting to 4
- Vocabulary: longer, shorter

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify rectangles by sight
2. Describe rectangles as having 4 sides and 4 corners
3. Notice that rectangles have 2 long sides and 2 short sides
4. Find rectangles in the environment
5. Understand that squares are special rectangles

KEY CONCEPTS:
- Rectangles have 4 sides and 4 corners
- Rectangles have 2 long sides and 2 short sides
- Opposite sides of rectangles are equal
- Squares are special rectangles with all equal sides

COMMON MISCONCEPTIONS:
- Thinking rectangles and squares are completely different
- Not recognizing vertical rectangles
- Confusing rectangles with parallelograms
- Thinking only "stretched" shapes are rectangles

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Look at this door shape! It looks like a square but stretched! Let''s count the sides - 1, 2, 3, 4. It''s like a square''s cousin - a RECTANGLE!"

2. DIRECT INSTRUCTION (5 minutes):
"A rectangle has 4 sides and 4 corners like a square. But look - this side is long, this side is long, this side is short, this side is short. The two long sides match, the two short sides match." Compare to square.

3. GUIDED PRACTICE (5 minutes):
"Is this a rectangle? Count the sides. Count the corners. Does it have long sides and short sides?" Examine various rectangles.

4. INDEPENDENT APPLICATION (5 minutes):
Rectangle hunt. Draw rectangles. Build rectangles with sticks. Compare rectangles and squares.

DIFFERENTIATION:

For Struggling Learners:
- Clear difference between long and short sides
- Horizontal rectangles first
- Compare directly to squares
- Rectangle templates
- Real objects (books, doors)

For Advanced Learners:
- Find rectangles in different orientations
- Discuss squares as "special rectangles"
- Build rectangles from squares
- Create rectangle art
- Measure sides with cubes

ASSESSMENT INDICATORS:
- Identification: Correctly identifies rectangles
- Attributes: Says 4 sides, 4 corners
- Comparison: Explains long vs short sides
- Application: Finds rectangles in environment
- Relationship: Begins to understand square connection

REAL-WORLD CONNECTIONS:
- Doors
- Books
- Tables
- Pictures
- Phones and tablets

VOCABULARY:
rectangle, side, corner, long, short, opposite, four

QUESTIONING TECHNIQUES:
- "How is a rectangle like a square?"
- "How is it different?"
- "Which sides are the long ones?"
- "Can you find a rectangle in our room?"

MATERIALS:
- Rectangle manipulatives
- Shape sorting sets
- Building sticks
- Rectangle and square comparison
- Real rectangle objects

COMMON ERRORS AND RESPONSES:
Error: Saying all 4 sides are the same
Response: "Let''s look closely. These two sides are longer than these two sides. A rectangle has 2 long and 2 short sides."

Error: Not recognizing vertical rectangle
Response: "Let''s turn it. Now it looks like a door! Still 4 sides, 4 corners, 2 long, 2 short. It''s a rectangle turned sideways!"

CONNECTION TO FUTURE LEARNING:
Understanding rectangles prepares students for area and perimeter concepts, more complex quadrilaterals, and spatial reasoning.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rectangles' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SOLID SHAPES UNIT TOPICS
-- ============================================================================

-- Spheres and Cubes
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Spheres and Cubes' AND grade_level_min = -1),
  'Spheres and Cubes Topic Guide',
  'Comprehensive teaching approach for identifying spheres and cubes',
  'SPHERES AND CUBES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Circle and square recognition (2D versions)
- Understanding of flat vs not flat
- Vocabulary: round, corner
- Spatial awareness

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify spheres (3D circles) by sight
2. Identify cubes (3D squares) by sight
3. Describe spheres as ball-shaped with no corners
4. Describe cubes as box-shaped with corners
5. Find spheres and cubes in the environment

KEY CONCEPTS:
- Spheres are like 3D circles - round all over
- Cubes are like 3D squares - with 6 square faces
- Spheres roll in all directions
- Cubes do not roll - they stack

COMMON MISCONCEPTIONS:
- Confusing flat circles with spheres
- Thinking any box is a cube
- Not recognizing 3D nature of shapes
- Confusing cylinders with spheres

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Look at this ball! Is it flat like a circle? No! It''s round ALL OVER! It''s called a SPHERE! And this box has squares on every side - it''s a CUBE!"

2. DIRECT INSTRUCTION (5 minutes):
"A SPHERE is like a ball. It''s round everywhere you touch it. No corners! No flat parts! It rolls in every direction. A CUBE is like a box with square sides. It has corners and flat faces. It can stack but not roll."

3. GUIDED PRACTICE (5 minutes):
Sort objects - "Is it a sphere or a cube?" Feel the shapes. "Can you find a corner? Then it''s not a sphere!" Test: does it roll or stack?

4. INDEPENDENT APPLICATION (5 minutes):
Shape hunt for spheres and cubes. Rolling vs stacking experiments. Draw what you find.

DIFFERENTIATION:

For Struggling Learners:
- One shape at a time (sphere first)
- Obvious examples (ball vs building block)
- Lots of handling and feeling
- Roll vs no-roll sorting
- Connect to familiar objects

For Advanced Learners:
- Count faces on a cube (6)
- Compare sphere to circle, cube to square
- Find combinations (sphere on cube)
- Build with cubes
- Describe shapes in own words

ASSESSMENT INDICATORS:
- Identification: Names spheres and cubes correctly
- Description: Explains key attributes
- Discrimination: Tells them apart
- Application: Finds in environment
- Properties: Knows sphere rolls, cube stacks

REAL-WORLD CONNECTIONS:
- Balls (spheres)
- Dice, building blocks (cubes)
- Ornaments (spheres)
- Ice cubes (cubes)
- Oranges (spheres)

VOCABULARY:
sphere, cube, ball, box, round, corner, face, roll, stack

QUESTIONING TECHNIQUES:
- "Is this a sphere or a cube?"
- "Can this shape roll?"
- "Does this have corners?"
- "Where do you see spheres at home?"

MATERIALS:
- Balls of various sizes (spheres)
- Building blocks (cubes)
- Sorting containers
- Rolling surfaces
- Real-world examples

COMMON ERRORS AND RESPONSES:
Error: Calling a flat circle a sphere
Response: "A sphere is round ALL OVER - like a ball. This is flat - it''s a circle. Spheres are 3D, circles are flat."

Error: Calling a rectangular box a cube
Response: "A cube has squares on every side. Let''s look - is this side a square? This one is longer. This is a rectangular box, not a cube."

CONNECTION TO FUTURE LEARNING:
Understanding 3D shapes prepares students for geometry, volume concepts, and spatial reasoning.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Spheres and Cubes' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Cones and Cylinders
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Cones and Cylinders' AND grade_level_min = -1),
  'Cones and Cylinders Topic Guide',
  'Comprehensive teaching approach for identifying cones and cylinders',
  'CONES AND CYLINDERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Circle recognition
- Sphere and cube understanding
- Understanding of points and flat surfaces
- Spatial vocabulary

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify cones (ice cream cone shape) by sight
2. Identify cylinders (can shape) by sight
3. Describe key features of each shape
4. Find cones and cylinders in the environment
5. Compare to other 3D shapes

KEY CONCEPTS:
- Cones have a circular base and come to a point
- Cylinders have two circular ends connected by a curved surface
- Cones can balance on their flat base or tip over
- Cylinders roll but not like spheres

COMMON MISCONCEPTIONS:
- Confusing cones and cylinders
- Not recognizing cylinders in different orientations
- Thinking pyramids are cones
- Confusing cylinders with spheres

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"What shape is an ice cream cone? It has a point at the bottom! And what about a can of soup? Round on both ends! Let''s learn about CONES and CYLINDERS!"

2. DIRECT INSTRUCTION (5 minutes):
"A CONE has a circle on the bottom and comes to a point on top. Like a party hat or ice cream cone! A CYLINDER has a circle on top AND bottom. Like a can or a tube. It can roll sideways but not every direction like a ball."

3. GUIDED PRACTICE (5 minutes):
Sort objects. "Point or no point? Cone or cylinder?" Test rolling: "Cylinders roll sideways. Cones... what happens when we try to roll a cone?"

4. INDEPENDENT APPLICATION (5 minutes):
Shape hunt for cones and cylinders. Compare to spheres and cubes. Build with various 3D shapes.

DIFFERENTIATION:

For Struggling Learners:
- Obvious examples (party hat, soup can)
- Focus on point vs no point
- Handle and feel shapes
- One shape at a time
- Connect to familiar objects

For Advanced Learners:
- Find less obvious examples
- Describe shapes in detail
- Compare all four 3D shapes
- Create art with shape prints
- Predict rolling behavior

ASSESSMENT INDICATORS:
- Identification: Names cones and cylinders correctly
- Description: Explains key features (point, flat circles)
- Discrimination: Tells them apart
- Application: Finds in environment
- Comparison: Relates to other 3D shapes

REAL-WORLD CONNECTIONS:
- Ice cream cones
- Party hats
- Traffic cones
- Soup cans
- Paper towel rolls

VOCABULARY:
cone, cylinder, point, circle, flat, round, roll, stack

QUESTIONING TECHNIQUES:
- "Does this shape have a point?"
- "How many circles does a cylinder have?"
- "Where might you see a cone?"
- "Can this shape roll? How?"

MATERIALS:
- Cones (party hats, funnels, toy cones)
- Cylinders (cans, tubes, rollers)
- Sorting containers
- Rolling surfaces
- Real-world examples

COMMON ERRORS AND RESPONSES:
Error: Confusing cylinder with cone
Response: "Let''s check both ends. A cylinder has circles on BOTH ends. A cone has a circle on one end and a point on the other."

Error: Thinking pyramid is a cone
Response: "Feel the bottom. A cone has a round circle base. A pyramid has a square or triangle base with flat sides."

CONNECTION TO FUTURE LEARNING:
Understanding 3D shapes prepares students for geometry, volume concepts, and engineering/design thinking.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cones and Cylinders' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Flat vs Solid
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Flat vs Solid' AND grade_level_min = -1),
  'Flat vs Solid Topic Guide',
  'Comprehensive teaching approach for understanding 2D vs 3D shapes',
  'FLAT VS SOLID - TOPIC TEACHING GUIDE

PREREQUISITES:
- Knowledge of 2D shapes (circle, square, triangle)
- Knowledge of 3D shapes (sphere, cube)
- Vocabulary: flat, round, thick
- Spatial awareness

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Distinguish between flat (2D) and solid (3D) shapes
2. Explain that flat shapes can''t be picked up like solids
3. Connect 2D shapes to their 3D counterparts
4. Sort shapes by 2D vs 3D
5. Describe the key difference: "you can hold around a solid"

KEY CONCEPTS:
- Flat shapes are 2D - they have length and width only
- Solid shapes are 3D - they have depth too
- You can hold a solid shape all the way around
- Flat shapes are like shadows of solid shapes

COMMON MISCONCEPTIONS:
- Thinking paper shapes are 3D because paper has thickness
- Not understanding the flat/solid distinction
- Confusing shape names (circle vs sphere)
- Thinking 2D means not real

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Hold a flat circle cutout and a ball. "Can I hold around this circle? No, it''s flat! Can I hold around this ball? Yes! One is FLAT, one is SOLID. Let''s learn the difference!"

2. DIRECT INSTRUCTION (5 minutes):
"FLAT shapes are like pictures or shadows. We can''t really hold around them. SOLID shapes are like real things - we can hold them, turn them around, see all sides." Compare circle/sphere, square/cube.

3. GUIDED PRACTICE (5 minutes):
Sort shapes into flat and solid piles. "Can you hold around it? If yes, it''s solid. If it''s flat like paper, it''s flat/2D."

4. INDEPENDENT APPLICATION (5 minutes):
Match flat shapes to their solid partners (circle to sphere, square to cube). Draw flat shapes, build solid shapes.

DIFFERENTIATION:

For Struggling Learners:
- Physical "hold around it" test
- Clear flat vs obviously solid examples
- One pair at a time (circle/sphere)
- Lots of handling
- Simple sorting (flat pile, solid pile)

For Advanced Learners:
- Name connections (circle → sphere)
- Discuss faces of solids as flat shapes
- Trace faces of solids
- Create "flat to solid" matching games
- Describe differences in own words

ASSESSMENT INDICATORS:
- Classification: Correctly sorts 2D and 3D
- Description: Explains the difference
- Connection: Links 2D to 3D counterparts
- Vocabulary: Uses flat/solid appropriately
- Application: Identifies in environment

REAL-WORLD CONNECTIONS:
- Picture of ball vs real ball
- Drawing of house vs block house
- Shadows (flat) of objects (solid)
- Photos vs real objects

VOCABULARY:
flat, solid, 2D, 3D, dimension, around, hold, picture, real

QUESTIONING TECHNIQUES:
- "Is this flat or solid?"
- "Can you hold around it?"
- "What solid shape is like a flat circle?"
- "Why can''t we stack flat circles?"

MATERIALS:
- 2D shape cutouts
- Corresponding 3D shapes
- Sorting trays
- Pictures and real objects
- Flashlight for shadow play

COMMON ERRORS AND RESPONSES:
Error: Saying the paper circle is solid because you can hold it
Response: "You can pick up the paper, but can you hold AROUND it like the ball? The paper is flat - see how thin?"

Error: Not connecting circle to sphere
Response: "A sphere is like a circle that grew in all directions - now you can hold around it! Circle is the flat version, sphere is the solid version."

CONNECTION TO FUTURE LEARNING:
Understanding 2D vs 3D prepares students for geometry, understanding dimensions, and spatial reasoning.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Flat vs Solid' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- Shapes in Our World
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Shapes in Our World' AND grade_level_min = -1),
  'Shapes in Our World Topic Guide',
  'Comprehensive teaching approach for finding shapes in the real world',
  'SHAPES IN OUR WORLD - TOPIC TEACHING GUIDE

PREREQUISITES:
- Recognition of all basic 2D shapes
- Recognition of basic 3D shapes
- Vocabulary for describing shapes
- Observation skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find 2D and 3D shapes in everyday objects
2. Name shapes they observe in the environment
3. Describe why certain shapes are used for certain purposes
4. Create art using real-world shape observations
5. Develop "shape eyes" - noticing shapes everywhere

KEY CONCEPTS:
- Shapes are everywhere in our world
- People choose shapes for specific purposes
- Same shape can appear in different sizes
- Finding shapes helps us understand our world

COMMON MISCONCEPTIONS:
- Thinking shapes only exist in math class
- Not recognizing imperfect shapes
- Missing shapes that aren''t obvious
- Thinking all circles must be perfect

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Shapes are hiding everywhere! Let''s be shape detectives! I spy something that is a circle... the clock! Now you try - can you spy a shape?"

2. DIRECT INSTRUCTION (5 minutes):
Walk around the room or look at pictures. "The window is a rectangle - see the four sides? The globe is a sphere - round all over! Wheels are circles because circles roll! People choose shapes for reasons."

3. GUIDED PRACTICE (5 minutes):
Shape scavenger hunt with partners. "Find a triangle. Find a cylinder. Find a square." Share discoveries with the class.

4. INDEPENDENT APPLICATION (5 minutes):
Draw a picture of the room showing shapes you found. Label shapes. "My picture has circles for the clock, rectangles for the door..."

DIFFERENTIATION:

For Struggling Learners:
- Focus on finding one shape type
- Use shape viewers/frames
- Obvious examples first
- Point out shapes together
- Take photos of found shapes

For Advanced Learners:
- Find unusual shape examples
- Explain why that shape is used
- Create a "shape book"
- Design something using shapes
- Find shapes within shapes

ASSESSMENT INDICATORS:
- Finding: Locates shapes in environment
- Naming: Correctly identifies shape names
- Explaining: Tells why shapes are used
- Application: Creates shape-based art
- Generalization: Finds shapes in new contexts

REAL-WORLD CONNECTIONS:
- Architecture (windows, doors, roofs)
- Nature (sun, flowers, leaves)
- Transportation (wheels, signs)
- Household items (plates, tables, cans)
- Playground equipment

VOCABULARY:
shape, find, everywhere, world, look, notice, reason, design

QUESTIONING TECHNIQUES:
- "What shape do you see?"
- "Why do you think wheels are circles?"
- "Can you find a hidden triangle?"
- "What shapes is your house made of?"

MATERIALS:
- Shape viewers/frames
- Cameras (optional)
- Drawing materials
- Picture books with shapes
- Real objects to examine

COMMON ERRORS AND RESPONSES:
Error: Not recognizing imperfect circles
Response: "This might not be a perfect circle, but it''s round - close enough to be a circle shape in the real world!"

Error: Missing partial shapes
Response: "Look at just this part of the window. Can you see the rectangle? Sometimes shapes are part of bigger things."

CONNECTION TO FUTURE LEARNING:
Connecting shapes to real life builds practical geometry understanding, spatial reasoning, and appreciation for mathematical patterns in our world.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Shapes in Our World' AND grade_level_min = -1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Pre-K Math Topic Prompts
-- ============================================================================
-- Count to 3: 4 topics
-- Count to 5: 5 topics
-- Count to 10: 5 topics
-- Count to 20: 4 topics
-- Comparing: 3 topics
-- Positions: 4 topics
-- Classify and Sort: 3 topics
-- Patterns: 3 topics
-- Size and Measurement: 3 topics
-- Money Introduction: 2 topics
-- Flat Shapes: 4 topics
-- Solid Shapes: 4 topics
-- Total: 44 topic prompts
-- ============================================================================
