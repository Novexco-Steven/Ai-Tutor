-- ============================================================================
-- KINDERGARTEN MATH TOPIC PROMPTS
-- ============================================================================
-- Comprehensive pedagogical prompts for each Math topic
-- Each prompt (500+ words) includes prerequisites, objectives, concepts,
-- misconceptions, teaching sequence, differentiation, and assessment
-- ============================================================================

-- ============================================================================
-- COUNTING AND CARDINALITY TOPICS
-- ============================================================================

-- Counting to 10
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting to 10' AND grade_level_min = 0),
  'Counting to 10 Topic Guide',
  'Comprehensive teaching approach for counting to 10',
  'COUNTING TO 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Verbal counting exposure (hearing counting in daily life)
- Understanding of "one" and "two" as quantities
- Fine motor skills for pointing
- Ability to attend to a task briefly

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recite the counting sequence 1-10 accurately
2. Count objects 1-10 with one-to-one correspondence
3. Understand cardinality (the last number tells "how many")
4. Count objects in different arrangements
5. Answer "how many?" without recounting

KEY CONCEPTS:
- Numbers represent quantities in a specific order
- Each counted object gets exactly one number word
- The last number said tells the total quantity (cardinality)
- The quantity doesn''t change with arrangement

COMMON MISCONCEPTIONS:
- Saying number words without matching to objects (rote counting without correspondence)
- Skipping objects or counting the same object twice
- Not understanding that the last number represents the total
- Believing that rearranging objects changes the count
- Confusing "counting" with "touching while reciting"

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Sing a counting song with movements (Head, Shoulders, Knees; counting fingers). Make counting joyful and physical. "Let''s count how many students are here today!"

2. DIRECT INSTRUCTION (10 minutes):
Model one-to-one correspondence explicitly. Use large objects students can see you touch. Say: "Watch how I count. I touch one object and say one number. One... two... three..." After counting, ask: "How many? I counted to 5, so there are 5. The last number tells me how many."

3. GUIDED PRACTICE (10 minutes):
Students count along while you model. Provide individual counting mats with objects. Circulate and guide: "Touch each one as you count. Did you count them all? How many are there?" Immediate feedback is crucial.

4. INDEPENDENT APPLICATION (10 minutes):
Counting stations with various objects (cubes, bears, buttons). Students count collections and tell a partner "how many." Include different arrangements (lines, circles, scattered).

DIFFERENTIATION:

For Struggling Learners:
- Start with smaller quantities (1-5)
- Use hand-over-hand guidance for touching objects
- Provide tactile objects that stay in place
- Slow the pace and repeat often
- Use counting strips as visual support

For Advanced Learners:
- Extend to counting to 15 or 20
- Count backward from 10
- Count starting from a number other than 1
- Compare two groups (which has more?)
- Begin writing numerals

ASSESSMENT INDICATORS:
- Accuracy: Can count objects correctly (no skips, no repeats)
- Cardinality: Answers "how many?" with the last number counted
- Flexibility: Counts objects in various arrangements
- Independence: Counts without constant adult support
- Application: Uses counting in authentic situations

REAL-WORLD CONNECTIONS:
- Count snacks at snack time
- Count students in line
- Count toys during clean-up
- Count steps while walking
- Count objects in stories and pictures

VOCABULARY:
count, number, one through ten, how many, total, each, all, same, different

QUESTIONING TECHNIQUES:
- "How many are there?" (After counting)
- "How do you know?"
- "What if I add one more? Now how many?"
- "If I move these around, how many now?" (Without recounting)
- "Can you show me 5 cubes?"

MATERIALS:
- Counting objects (cubes, bears, counters)
- Counting mats
- Number cards 1-10
- Counting songs and rhymes
- Real-world collections to count

COMMON ERRORS AND RESPONSES:
Error: Saying numbers without touching objects
Response: "Let''s slow down. Touch each one as you say the number."

Error: Recounting when asked "how many?"
Response: "You counted to 7. That tells us how many. There are 7."

Error: Saying "5" for both groups even when quantities differ
Response: "Let''s count this group together. 1, 2, 3. There are 3. Now let''s count this group."

CONNECTION TO FUTURE LEARNING:
This foundational counting leads directly to counting to 20, then 100. Cardinality understanding supports addition and subtraction (combining and separating quantities). One-to-one correspondence develops into algebraic thinking about relationships.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting to 10' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Counting to 20
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting to 20' AND grade_level_min = 0),
  'Counting to 20 Topic Guide',
  'Comprehensive teaching approach for counting to 20',
  'COUNTING TO 20 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Fluent counting and cardinality to 10
- Understanding of teen numbers conceptually
- One-to-one correspondence mastered
- Recognition of numerals 1-10

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count objects accurately from 1-20
2. Recognize the pattern in teen number names
3. Write or identify numerals 11-20
4. Compare groups of objects up to 20
5. Count on from any number within 20

KEY CONCEPTS:
- Teen numbers follow a pattern (though naming is irregular)
- Teen numbers are "ten and some more"
- The counting sequence continues past 10 with the same pattern
- Larger numbers come after smaller numbers

COMMON MISCONCEPTIONS:
- Confusing 14 and 40 (or other teens with decades)
- Thinking 12 and 20 are the same
- Skipping 13 or 15 due to irregular naming
- Not connecting verbal counting to written numerals
- Believing 11-19 are unrelated to 10

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Count everyday objects beyond 10: crayons in a box, books on a shelf. "We need more numbers! Let''s learn to count higher." Show a collection clearly more than 10.

2. DIRECT INSTRUCTION (10 minutes):
Teach teen numbers as "10 and more." Use a double ten-frame: fill one completely (10), then add more. "10 and 3 more is 13." Address tricky names: "11 sounds like ''eleventeen'' doesn''t it? It''s actually ''eleven.'' Twelve is tricky too. But look: 13, 14, 15 - we hear the ones digit first."

3. GUIDED PRACTICE (10 minutes):
Build numbers with ten-frames and count together. "Let''s make 16. First we need 10... now 6 more... 11, 12, 13, 14, 15, 16. How many? 16!"

4. INDEPENDENT APPLICATION (15 minutes):
Counting collections of 11-20 objects. Recording the count (with number, drawing, or both). Partner counting games.

DIFFERENTIATION:

For Struggling Learners:
- Focus on 11-15 first, then 16-20
- Use consistent, visible ten-frames
- Provide oral and visual cues together
- Practice teen number chants and songs
- Connect to physical groups of 10 + some

For Advanced Learners:
- Extend to counting to 30 or beyond
- Compare quantities and determine differences
- Count backward from 20
- Count by 2s within 20
- Solve simple story problems to 20

ASSESSMENT INDICATORS:
- Accurately counts collections of 11-20 objects
- Correctly identifies teen numerals
- Explains teen numbers as "10 and __"
- Counts on from numbers within 20
- Orders numbers correctly

REAL-WORLD CONNECTIONS:
- Count all the pencils in the pencil box
- Count shoes in the classroom (pairs extend to 20+)
- Count days on the calendar
- Count steps on walks
- Count items in larger collections

VOCABULARY:
eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen, twenty, teen, ones, ten

QUESTIONING TECHNIQUES:
- "What comes after 14?"
- "How many tens? How many more ones?"
- "Can you count from 8 to 15?"
- "Which is more: 13 or 17? How do you know?"
- "What number is one more than 19?"

MATERIALS:
- Double ten-frames
- Counting objects (20+ per student)
- Number cards 1-20
- Counting books with 11-20 objects
- Number line to 20

COMMON ERRORS AND RESPONSES:
Error: Saying "10-11, 10-12" (treating teens as "10-something")
Response: "I hear you''re thinking about 10 and more. Listen: 10, 11, 12. The name eleven comes after 10."

Error: Skipping 13 or saying "10-3"
Response: "13 is tricky! It''s called thirteen. Thir-teen. Can you say it with me?"

Error: Writing 51 for 15
Response: "15 is a teen number - it starts with 1 because there''s one group of 10. The 5 comes second because there are 5 more ones."

CONNECTION TO FUTURE LEARNING:
Counting to 20 prepares for counting to 100 and understanding place value with two-digit numbers. The "10 and more" understanding is foundational for addition and for understanding our base-ten number system.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting to 20' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Number Recognition
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Recognition' AND grade_level_min = 0),
  'Number Recognition Topic Guide',
  'Comprehensive teaching approach for number recognition',
  'NUMBER RECOGNITION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Verbal counting to 10+
- Understanding that numbers represent quantities
- Visual discrimination skills
- Letter recognition in progress

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Instantly recognize numerals 0-10
2. Match numerals to quantities
3. Order numerals 0-10 correctly
4. Recognize numerals in the environment
5. Begin recognizing numerals 11-20

KEY CONCEPTS:
- Numerals are symbols that represent quantities
- Each numeral has a consistent form
- Numerals can be ordered from least to greatest
- The same numeral always means the same quantity

COMMON MISCONCEPTIONS:
- Confusing similar-looking numbers (6/9, 1/7)
- Reversing numerals when writing
- Not connecting numeral to quantity
- Thinking different fonts are different numbers
- Confusing numerals with letters (5/S, 8/B)

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Number hunt! "Numbers are everywhere! Let''s find them in our classroom." Point out clock, calendar, page numbers. "Today we''ll learn to recognize these number friends."

2. DIRECT INSTRUCTION (10 minutes):
Introduce numerals systematically with quantities. Show numeral, say name, show quantity. "This is the number 3. Three. See how it has curves? Here are 3 cubes. Three." Use consistent visual displays.

3. GUIDED PRACTICE (10 minutes):
Numeral-quantity matching games. Flash numeral, students show that many fingers or grab that many objects. "I see 4. Can you show me 4 fingers?"

4. INDEPENDENT APPLICATION (15 minutes):
Number recognition activities: matching games, number puzzles, numeral stamps with counting. Multiple exposures across formats.

DIFFERENTIATION:

For Struggling Learners:
- Focus on fewer numbers at a time (0-5, then 6-10)
- Use tactile numerals (sandpaper, raised)
- Pair numeral with consistent image (4 with dog with 4 legs)
- Provide reference charts at desk
- Practice with consistent fonts first

For Advanced Learners:
- Extend to 11-20 recognition
- Order numbers and find missing numbers
- Match numerals in different fonts
- Connect numerals to quantity comparison
- Begin numeral writing

ASSESSMENT INDICATORS:
- Names numerals 0-10 instantly (automaticity)
- Matches numerals to correct quantities
- Orders numerals correctly
- Finds numerals in different contexts
- Distinguishes similar numerals (6/9, 1/7)

REAL-WORLD CONNECTIONS:
- Page numbers in books
- Clock numerals
- Calendar dates
- Addresses and phone numbers
- Prices and quantities in stores

VOCABULARY:
number, numeral, zero through ten, recognize, match, same, different, order

QUESTIONING TECHNIQUES:
- "What number is this?" (flash recognition)
- "Can you find the number 7 on our wall?"
- "What number comes after 5?"
- "How many dots are here? What numeral shows that many?"
- "Are these the same number?" (different fonts)

MATERIALS:
- Large numeral cards
- Tactile/textured numerals
- Number puzzles
- Environmental print with numbers
- Quantity-numeral matching materials

COMMON ERRORS AND RESPONSES:
Error: Calling 6 "nine" or vice versa
Response: "6 and 9 look similar! 6 has its circle on the bottom. 9 has its circle on top. Let me show you."

Error: Not connecting numeral to quantity
Response: "This says 4. Can you count 4 cubes? Let''s put them next to the number."

Error: Confusing numerals with letters
Response: "This looks like the letter S, but it''s the number 5. Numbers tell us how many. What letter does 5 look like?"

CONNECTION TO FUTURE LEARNING:
Number recognition is foundational for all mathematics. Students must instantly recognize numerals to work with written math. This automaticity frees cognitive resources for computation and problem-solving.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Recognition' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Comparing Numbers
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Numbers' AND grade_level_min = 0),
  'Comparing Numbers Topic Guide',
  'Comprehensive teaching approach for comparing numbers',
  'COMPARING NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting objects to 10 with cardinality
- Number recognition 0-10
- Understanding of "more" and "less" in everyday contexts
- One-to-one correspondence

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare two groups using one-to-one matching
2. Use vocabulary: more, less, fewer, same, equal
3. Compare numbers to 10 without counting (subitizing small numbers)
4. Write or use symbols to show comparison
5. Order numbers from least to greatest

KEY CONCEPTS:
- Quantities can be compared by matching one-to-one
- Numbers later in counting sequence are greater
- "More" and "fewer/less" describe quantity relationships
- Numbers can be equal (same quantity)

COMMON MISCONCEPTIONS:
- Thinking a longer row has "more" regardless of quantity
- Confusing "more" with "bigger" (size vs. quantity)
- Believing the group counted first is "more"
- Not understanding that equal means same amount
- Thinking numbers are only for counting, not comparing

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Snack time problem! We have 6 crackers for 5 friends. Is that enough? How can we figure it out?" Use a real scenario requiring comparison.

2. DIRECT INSTRUCTION (10 minutes):
Demonstrate one-to-one matching for comparison. Line up objects in two rows, match them up. "Each bear gets a chair. Are there more bears or more chairs? Let''s match them up and see!" Point to unmatched objects: "These don''t have partners. There are more bears than chairs."

3. GUIDED PRACTICE (10 minutes):
Students compare sets using matching. Compare dot cards, cube towers, picture collections. Practice vocabulary: "There are more ___ than ___. There are fewer ___ than ___."

4. INDEPENDENT APPLICATION (15 minutes):
Comparison stations: cards to match and compare, balance scales, cube tower building and comparing. Recording comparisons with drawings.

DIFFERENTIATION:

For Struggling Learners:
- Use physical matching (line up objects)
- Focus on obviously different quantities first
- Practice "more" before "fewer" (more intuitive)
- Use only small quantities (1-5)
- Provide visual models and vocabulary cards

For Advanced Learners:
- Compare larger quantities (to 20)
- Compare without counting (reasoning)
- Compare using numerals instead of objects
- Introduce comparison symbols
- Solve comparison word problems

ASSESSMENT INDICATORS:
- Accurately determines which group has more/fewer
- Uses comparison vocabulary correctly
- Matches objects one-to-one for comparison
- Compares without being fooled by arrangement
- Orders numbers correctly

REAL-WORLD CONNECTIONS:
- Do we have enough crayons for everyone?
- Are there more boys or girls today?
- Which book has more pages?
- Is your collection bigger than mine?
- Do we have enough napkins?

VOCABULARY:
more, less, fewer, same, equal, compare, greater, most, fewest, enough

QUESTIONING TECHNIQUES:
- "Which group has more? How do you know?"
- "Are there enough chairs for everyone?"
- "These look the same to me. How can we check?"
- "Which number is greater: 5 or 8?"
- "Can you put these numbers in order from smallest to biggest?"

MATERIALS:
- Comparison mats
- Matching objects (bears and chairs, etc.)
- Dot cards for quick comparison
- Number cards
- Pan balance (concrete comparison)

COMMON ERRORS AND RESPONSES:
Error: Saying the longer row has "more"
Response: "Let''s not just look - let''s match them up. Each one here gets a partner from there. Now which has more?"

Error: Confusing more/fewer
Response: "More means a bigger group. Fewer means a smaller group. Which group would you want if you wanted a lot?"

Error: Comparing by size instead of quantity
Response: "These are bigger, but we''re counting how many, not how big. Let''s count each group."

CONNECTION TO FUTURE LEARNING:
Comparison is foundational for addition and subtraction (how many more?), for ordering numbers, and for understanding number lines. The concept of inequality leads to algebraic thinking with greater than and less than.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Numbers' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- OPERATIONS AND ALGEBRAIC THINKING TOPICS
-- ============================================================================

-- Addition Stories
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Addition Stories' AND grade_level_min = 0),
  'Addition Stories Topic Guide',
  'Comprehensive teaching approach for addition stories',
  'ADDITION STORIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting objects to 10 with cardinality
- Understanding of "more" and "together"
- Ability to attend to a story
- Basic counting on skills (emerging)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Act out addition story problems with objects
2. Represent addition stories with pictures
3. Understand that addition means combining groups
4. Solve addition problems within 5, then 10
5. Connect stories to addition equations

KEY CONCEPTS:
- Addition means putting groups together
- The total is how many in all
- Story problems describe real situations with numbers
- We can represent stories with objects, pictures, and equations

COMMON MISCONCEPTIONS:
- Counting just one group as the answer
- Counting all from 1 even after combining (not counting on)
- Thinking addition always makes "a lot"
- Not connecting the story to the math
- Difficulty identifying what to add

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Tell a story from classroom life. "This morning, 2 friends were at the block center. Then 3 more friends came to play. How many friends are playing now?" Act it out with students.

2. DIRECT INSTRUCTION (10 minutes):
Model solving addition stories with objects. Tell a story, represent with counters, combine groups, count total. "2 birds were on the branch. 3 more flew over. Let''s put 2 counters here... now 3 more... now let''s count them all. 1, 2, 3, 4, 5. There are 5 birds altogether."

3. GUIDED PRACTICE (10 minutes):
Students act out stories with manipulatives. Provide story problems, students build and solve. Share solutions and strategies. "How did you figure it out?"

4. INDEPENDENT APPLICATION (15 minutes):
Story problem stations with objects and recording sheets. Students solve, draw, and share. Include pictures that tell addition stories.

DIFFERENTIATION:

For Struggling Learners:
- Use very small numbers (within 5)
- Provide physical acting out before objects
- Use consistent story structures
- Offer sentence frames for explaining
- Use number lines for counting

For Advanced Learners:
- Increase to sums beyond 10
- Include missing addend stories
- Connect to equations formally
- Create original story problems
- Compare addition strategies

ASSESSMENT INDICATORS:
- Solves addition stories accurately
- Represents stories with objects and pictures
- Explains thinking process
- Recognizes addition situations
- Connects stories to number sentences

REAL-WORLD CONNECTIONS:
- Students joining an activity
- Collecting items
- Combining food items at lunch
- Counting combined materials
- Adding toys or books together

VOCABULARY:
add, plus, altogether, in all, sum, total, join, combine, story problem, equation

QUESTIONING TECHNIQUES:
- "How many did we start with?"
- "Then what happened?"
- "How many are there now?"
- "Can you show me with cubes?"
- "How could we write this as a number sentence?"

MATERIALS:
- Counters and manipulatives
- Number mats
- Story problem cards with pictures
- Recording sheets
- Part-part-whole mats

COMMON ERRORS AND RESPONSES:
Error: Only counting one group
Response: "You counted the first group. What about the ones that joined? We need to count all of them together."

Error: Losing track while counting all
Response: "Let''s organize them. Put these in a line, then add the others at the end."

Error: Not connecting story to math
Response: "Let''s read it again. How many did we have first? Put that many cubes. What happened next?"

CONNECTION TO FUTURE LEARNING:
Addition stories develop into formal addition with equations, fact fluency, and multi-digit addition. Story problems become increasingly complex, requiring multiple steps and varied operations. This narrative approach builds algebraic thinking.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Addition Stories' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Subtraction Stories
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtraction Stories' AND grade_level_min = 0),
  'Subtraction Stories Topic Guide',
  'Comprehensive teaching approach for subtraction stories',
  'SUBTRACTION STORIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of addition as combining
- Counting backward from 10
- Concept of "take away" and "left"
- Cardinality understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Act out subtraction story problems
2. Represent subtraction with objects and pictures
3. Understand subtraction as "taking away" and "finding what''s left"
4. Solve subtraction problems within 5, then 10
5. Connect subtraction to addition

KEY CONCEPTS:
- Subtraction means taking away from a group
- The answer tells how many are left
- Subtraction and addition are related (inverse operations)
- We can count back or count what remains

COMMON MISCONCEPTIONS:
- Adding instead of subtracting (more common action)
- Counting the removed items as the answer
- Thinking subtraction always means "nothing left"
- Not understanding comparison subtraction ("how many more")
- Difficulty with the "take away" action

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Act out a take-away scenario. "I have 5 stickers. I give 2 to my friend. Watch..." Actually remove objects. "How many do I have now?" Make subtraction visible and physical.

2. DIRECT INSTRUCTION (10 minutes):
Model subtraction stories with objects. Start with a group, remove some, count what''s left. "5 birds were on the fence. 2 flew away. Let''s start with 5 counters... now take away 2... how many are left? 1, 2, 3. There are 3 birds left."

3. GUIDED PRACTICE (10 minutes):
Students act out stories with manipulatives. Provide stories, students build the start, remove the amount, count what''s left. "Can you show me what happened?"

4. INDEPENDENT APPLICATION (15 minutes):
Subtraction story stations. Include take-away, missing part, and comparison stories at accessible level.

DIFFERENTIATION:

For Struggling Learners:
- Use very small numbers (within 5)
- Always start with physical objects
- Use consistent "take away" language first
- Provide visual supports showing before/after
- Connect to counting backward

For Advanced Learners:
- Include larger numbers (to 10+)
- Introduce comparison subtraction
- Connect to missing addend
- Write subtraction equations
- Create original subtraction stories

ASSESSMENT INDICATORS:
- Solves take-away stories accurately
- Represents stories with objects and pictures
- Explains what happens in subtraction
- Distinguishes addition from subtraction situations
- Connects subtraction to addition (fact families emerging)

REAL-WORLD CONNECTIONS:
- Eating snacks (5 crackers, eat 2)
- Friends leaving an activity
- Using supplies up
- Books checked out from library
- Counting down to an event

VOCABULARY:
subtract, take away, minus, left, remain, difference, fewer, how many left

QUESTIONING TECHNIQUES:
- "How many did we start with?"
- "What happened? How many went away?"
- "How many are left?"
- "How is this different from adding?"
- "If I know this subtraction, what addition do I also know?"

MATERIALS:
- Counters and manipulatives
- Subtraction story cards
- Recording sheets
- Number lines
- Before/after mats

COMMON ERRORS AND RESPONSES:
Error: Counting what was removed instead of what''s left
Response: "You counted the ones that went away. But the question asks ''how many are left.'' Count the ones still here."

Error: Adding instead of subtracting
Response: "Let''s read the story again. Did more come, or did some go away? When some go away, we subtract."

Error: Saying zero when some remain
Response: "Let''s check. You had 5 and took away 2. Count what''s still here. 1, 2, 3. There are 3 left."

CONNECTION TO FUTURE LEARNING:
Subtraction stories build toward subtraction facts, regrouping, and multi-digit subtraction. Comparison subtraction ("how many more?") connects to measurement and data analysis. Relating addition and subtraction develops algebraic thinking about inverse operations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtraction Stories' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GEOMETRY TOPICS
-- ============================================================================

-- 2D Shapes
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = '2D Shapes' AND grade_level_min = 0),
  '2D Shapes Topic Guide',
  'Comprehensive teaching approach for 2D shapes',
  'TWO-DIMENSIONAL SHAPES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Visual discrimination skills
- Vocabulary for describing (big, small, same, different)
- Ability to match and sort objects
- Fine motor skills for tracing

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify circles, squares, triangles, and rectangles
2. Describe shapes by their attributes (sides, corners)
3. Find shapes in the environment
4. Sort shapes by attributes
5. Distinguish 2D shapes from 3D shapes

KEY CONCEPTS:
- Shapes are defined by their attributes (sides, corners), not appearance
- The same shape can look different (different sizes, colors, orientations)
- 2D shapes are flat (like drawings and outlines)
- Shape names describe specific attributes

COMMON MISCONCEPTIONS:
- Thinking a rotated triangle is not a triangle
- Believing shapes must be a certain color or size
- Calling all quadrilaterals "squares"
- Confusing 2D and 3D shapes (circle vs. sphere)
- Only recognizing "prototypical" examples

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Shape hunt! "Shapes are everywhere! I spy something shaped like a circle... who can find it?" Engage students in finding shapes in the classroom.

2. DIRECT INSTRUCTION (10 minutes):
Introduce shapes with multiple examples. "This is a triangle. It has 3 sides and 3 corners. Here''s another triangle - it looks different but it''s still a triangle. Why? It has 3 sides and 3 corners." Show many variations of each shape.

3. GUIDED PRACTICE (10 minutes):
Shape sorting with explicit reasoning. "Is this a square? How can we check? Count the sides... count the corners... are the sides the same length?" Students explain their sorting.

4. INDEPENDENT APPLICATION (15 minutes):
Shape centers: pattern blocks, shape puzzles, shape stamps, shape books. Students identify and work with shapes in various contexts.

DIFFERENTIATION:

For Struggling Learners:
- Focus on fewer shapes at a time
- Use tactile shapes (felt, sandpaper)
- Consistent examples before variations
- Verbal reinforcement with visual
- Shape reference charts

For Advanced Learners:
- Introduce more shapes (hexagon, pentagon)
- Explore non-examples (why isn''t this a...?)
- Begin 3D shape introduction
- Compose shapes from other shapes
- Describe location using shape names

ASSESSMENT INDICATORS:
- Names basic shapes accurately
- Describes shapes by attributes
- Identifies shapes in various orientations
- Finds shapes in the environment
- Distinguishes shapes from each other

REAL-WORLD CONNECTIONS:
- Shapes in the classroom (clock = circle, door = rectangle)
- Shapes in nature (sun, leaves, snowflakes)
- Shapes in food (pizza slice = triangle)
- Shapes in signs and symbols
- Shapes in books and art

VOCABULARY:
circle, square, triangle, rectangle, side, corner (vertex), flat, round, curved, straight

QUESTIONING TECHNIQUES:
- "What shape is this? How do you know?"
- "What makes a triangle a triangle?"
- "Can you find something shaped like a rectangle?"
- "These are both triangles but they look different. How?"
- "Is this shape a circle? Why or why not?"

MATERIALS:
- Shape manipulatives (pattern blocks, attribute blocks)
- Shape sorting mats
- Real-world shape pictures
- Shape puzzles
- Shape drawing templates

COMMON ERRORS AND RESPONSES:
Error: Calling a rectangle a "long square"
Response: "Rectangles do look like stretched squares! A rectangle has 4 sides and 4 corners like a square, but the sides don''t have to be the same length."

Error: Not recognizing rotated shapes
Response: "Let''s count the sides. 1, 2, 3. How many corners? 3. It still has 3 sides and 3 corners, so it''s still a triangle - just turned!"

Error: Confusing circle with sphere
Response: "This ball is round, but it''s not flat. A circle is flat like this." (Show 2D circle vs. 3D ball)

CONNECTION TO FUTURE LEARNING:
2D shape recognition leads to understanding shape properties, composing shapes, and geometry concepts. Attribute-based thinking develops logical reasoning. Shape understanding supports measurement (area, perimeter) and spatial reasoning in all math.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = '2D Shapes' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- 3D Shapes
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = '3D Shapes' AND grade_level_min = 0),
  '3D Shapes Topic Guide',
  'Comprehensive teaching approach for 3D shapes',
  'THREE-DIMENSIONAL SHAPES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Recognition of 2D shapes (circle, square, triangle, rectangle)
- Understanding of "flat" versus "solid"
- Vocabulary for describing objects
- Experience with building and stacking blocks

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify spheres, cubes, cones, and cylinders
2. Describe 3D shapes by their attributes (faces, edges)
3. Compare 2D and 3D shapes
4. Find 3D shapes in the environment
5. Build and explore with 3D shapes

KEY CONCEPTS:
- 3D shapes are solid (not flat) - you can hold them
- 3D shapes have faces that are 2D shapes
- Different 3D shapes have different properties (roll, stack)
- 3D shapes are named by their specific attributes

COMMON MISCONCEPTIONS:
- Calling a ball a "circle" (confusing 2D and 3D)
- Thinking 3D shapes are just "fat" 2D shapes
- Not recognizing that boxes have 2D faces
- Confusing cube with square
- Difficulty with vocabulary (face, edge)

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Explore real 3D objects. "Let''s look at this ball. Can you hold it? Does it feel flat? This is called a sphere. Let''s find more spheres!" Build curiosity about solid shapes.

2. DIRECT INSTRUCTION (10 minutes):
Introduce 3D shapes with physical objects and vocabulary. "This is a cube. Feel it - it has flat sides called faces. The face is shaped like a square. How many faces can you count?" Roll, stack, and examine each shape.

3. GUIDED PRACTICE (10 minutes):
Shape exploration stations. Students examine, sort, and describe 3D shapes. "Can this shape roll? Stack? What shape are its faces?"

4. INDEPENDENT APPLICATION (15 minutes):
Building activities with 3D shapes. 3D shape hunt around the room. Sorting 3D shapes by properties.

DIFFERENTIATION:

For Struggling Learners:
- Focus on two shapes at a time
- Emphasize handling and exploring
- Connect to very familiar objects (ball, box)
- Provide many examples of each
- Use simple vocabulary first

For Advanced Learners:
- Introduce additional shapes (prism, pyramid)
- Count faces, edges, vertices
- Compare 2D faces on 3D shapes
- Build structures and describe
- Connect to real-world architecture

ASSESSMENT INDICATORS:
- Names basic 3D shapes
- Distinguishes 3D from 2D shapes
- Describes 3D shapes by attributes
- Identifies 3D shapes in environment
- Uses shapes purposefully (building)

REAL-WORLD CONNECTIONS:
- Ball = sphere, can = cylinder
- Box = rectangular prism (like a cube stretched)
- Ice cream cone = cone
- Building blocks and construction
- Packages and containers

VOCABULARY:
sphere, cube, cylinder, cone, face, edge, corner (vertex), solid, 3D, roll, stack, slide

QUESTIONING TECHNIQUES:
- "Is this shape flat or solid?"
- "Can you show me a face on this cube?"
- "What 2D shape is this face?"
- "Will this shape roll? Why or why not?"
- "What 3D shapes do you see in our classroom?"

MATERIALS:
- 3D shape manipulatives
- Real 3D objects (balls, cans, boxes)
- Building blocks
- Shape sorting activities
- 3D shape posters with real examples

COMMON ERRORS AND RESPONSES:
Error: Calling a ball a "circle"
Response: "A ball does look like a circle from the front! But can you hold a circle? A circle is flat. This is solid - we call it a sphere."

Error: Confusing cube with square
Response: "Let''s look closely. A square is flat - you can''t pick it up. A cube is solid. The cube has square faces on it."

Error: Not recognizing real-world examples
Response: "This can looks different from our cylinder block, but let''s check. Does it have circles on the ends? Can it roll? It''s a cylinder too!"

CONNECTION TO FUTURE LEARNING:
3D shape understanding leads to spatial reasoning, geometry in later grades, and real-world applications in engineering and architecture. Understanding faces connects 2D and 3D geometry. These foundations support volume and surface area concepts.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = '3D Shapes' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MEASUREMENT AND DATA TOPICS
-- ============================================================================

-- Comparing Lengths
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Lengths' AND grade_level_min = 0),
  'Comparing Lengths Topic Guide',
  'Comprehensive teaching approach for comparing lengths',
  'COMPARING LENGTHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of comparison concepts (more, less, same)
- Ability to line up objects
- Visual discrimination skills
- Vocabulary for size (big, small, long, short)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare lengths of two objects by direct comparison
2. Use vocabulary: longer, shorter, taller, same length
3. Order objects by length
4. Understand that length comparison requires alignment
5. Describe objects using length words

KEY CONCEPTS:
- Length is a measurable attribute of objects
- Objects can be compared by placing them side by side
- Objects must be aligned at one end to compare fairly
- Length vocabulary describes relative size

COMMON MISCONCEPTIONS:
- Thinking a higher-positioned object is "longer"
- Not aligning objects for fair comparison
- Confusing length with height with width
- Believing longer is always "better"
- Judging by overall size instead of length

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"We need to hang two pictures but only one hook! Which picture is longer?" Create authentic need for comparison. Use student-relevant contexts.

2. DIRECT INSTRUCTION (10 minutes):
Demonstrate proper comparison. "To compare lengths, we need to line them up at one end. See how they start at the same place? Now I can see which is longer. This one is longer because it goes further."

3. GUIDED PRACTICE (10 minutes):
Partner comparisons. Give pairs two objects to compare. "Who has the longer object? How did you decide?" Ensure alignment is emphasized.

4. INDEPENDENT APPLICATION (15 minutes):
Comparison stations: ribbon sorting, tower building, height/length exploration. Students compare, order, and describe.

DIFFERENTIATION:

For Struggling Learners:
- Use very different lengths first
- Provide alignment guides (mats with starting line)
- Focus on one comparison word at a time
- Use consistent objects (all crayons, all sticks)
- Hand-over-hand guidance for alignment

For Advanced Learners:
- Order three or more objects by length
- Compare indirectly using a third object
- Estimate before comparing
- Explore non-standard measurement
- Compare height and width of same object

ASSESSMENT INDICATORS:
- Compares two objects by length accurately
- Aligns objects for fair comparison
- Uses comparison vocabulary correctly
- Orders objects by length
- Describes objects using length words

REAL-WORLD CONNECTIONS:
- Comparing pencils in the classroom
- Who is taller - you or your friend?
- Which book is wider?
- Arranging items by length (train tracks, links)
- Height charts and growth

VOCABULARY:
long, short, longer, shorter, tall, taller, short (height), shorter, same length, compare

QUESTIONING TECHNIQUES:
- "Which is longer? How do you know?"
- "How can we compare fairly?"
- "What if I move this one up here? Is it still longer?"
- "Can you find something longer than this pencil?"
- "Put these in order from shortest to longest."

MATERIALS:
- Objects of varying lengths (straws, ribbons, sticks)
- Comparison mats with alignment lines
- Linking cubes for building
- Length sorting cards
- Real classroom objects to compare

COMMON ERRORS AND RESPONSES:
Error: Not aligning objects at one end
Response: "Let''s line them up so they start at the same place. Now we can see which goes further."

Error: Saying the higher object is "longer"
Response: "This one is up high, but let''s put them side by side to compare length. Now which goes further?"

Error: Confusing taller with longer
Response: "When something stands up, we say ''taller.'' When it''s lying down, we say ''longer.'' Let''s use both words!"

CONNECTION TO FUTURE LEARNING:
Length comparison prepares for measurement with units. Understanding that comparison requires fair alignment leads to understanding why we need to start measuring from zero. Length concepts extend to perimeter and linear measurement.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Lengths' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Sorting and Classifying
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sorting and Classifying' AND grade_level_min = 0),
  'Sorting and Classifying Topic Guide',
  'Comprehensive teaching approach for sorting and classifying',
  'SORTING AND CLASSIFYING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to observe similarities and differences
- Vocabulary for attributes (color, size, shape)
- Fine motor skills for manipulating objects
- Following simple directions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Sort objects by one attribute (color, size, shape)
2. Explain sorting rule ("These are all red")
3. Re-sort objects by a different attribute
4. Count objects in each group
5. Identify attributes used for sorting

KEY CONCEPTS:
- Objects can be grouped by shared attributes
- The same objects can be sorted different ways
- Sorting requires identifying a common attribute
- Classification leads to data organization

COMMON MISCONCEPTIONS:
- Sorting by appearance rather than stated attribute
- Not maintaining consistency within sort
- Difficulty articulating the sorting rule
- Thinking there''s only one "right way" to sort
- Mixing attributes while sorting

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"We need to organize our supplies! How should we sort these markers?" Let students brainstorm. Value multiple ideas - there''s no single right way.

2. DIRECT INSTRUCTION (10 minutes):
Model sorting explicitly. "I''m going to sort these buttons by color. I''ll put all the red ones here and all the blue ones here." Think aloud: "Is this one red? Yes, it goes in the red group."

3. GUIDED PRACTICE (10 minutes):
Guided sorting with feedback. "Now you sort these by shape. Show me your groups. How did you decide where each one goes?" Emphasize explaining the rule.

4. INDEPENDENT APPLICATION (15 minutes):
Free exploration sorting with various materials. Students choose attributes and sort. Count and record groups.

DIFFERENTIATION:

For Struggling Learners:
- Begin with two distinct groups
- Use one obvious attribute (color)
- Provide sorting mats with labels
- Limit number of objects
- Model extensively before practice

For Advanced Learners:
- Sort by two attributes
- Create graphs from sorted groups
- Sort objects in multiple ways
- Identify the "rule" from a pre-sorted set
- Sort using more subtle attributes

ASSESSMENT INDICATORS:
- Sorts objects consistently by one attribute
- Explains sorting rule clearly
- Re-sorts same objects by different attribute
- Counts objects in sorted groups
- Identifies attributes others used

REAL-WORLD CONNECTIONS:
- Organizing toys for cleanup
- Sorting laundry
- Putting groceries away
- Organizing collections
- Library book organization

VOCABULARY:
sort, group, same, different, attribute, color, size, shape, category, classify

QUESTIONING TECHNIQUES:
- "How did you sort these?"
- "Why does this one go in this group?"
- "Can you sort these a different way?"
- "What''s the same about all of these?"
- "How many are in each group?"

MATERIALS:
- Attribute blocks
- Sorting rings or mats
- Collections (buttons, shells, keys)
- Real objects to sort
- Sorting cards with pictures

COMMON ERRORS AND RESPONSES:
Error: Sorting by appearance ("I just put the pretty ones here")
Response: "Let''s pick one thing to sort by - color or size or shape. Which will you choose?"

Error: Inconsistent sorting
Response: "Let''s check. What''s your rule? These are all by shape. But is this one the same shape? Let''s look again."

Error: Can''t explain the rule
Response: "What''s the same about all of these? What makes them a group?"

CONNECTION TO FUTURE LEARNING:
Sorting and classifying develops data analysis skills. Counting sorted groups leads to graphing and data display. The logical thinking in classification supports mathematical reasoning and eventually set theory and categorical thinking.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sorting and Classifying' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VERIFICATION QUERY
-- ============================================================================
SELECT
  'K Math topic prompts' as category,
  COUNT(*) as total
FROM prompt_templates
WHERE prompt_type = 'topic_global'
  AND subject_id = (SELECT id FROM subjects WHERE name = 'Math')
  AND topic_id IN (SELECT id FROM topics WHERE grade_level_min = 0 AND grade_level_max = 0);
