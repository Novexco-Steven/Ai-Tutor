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

-- Counting to 20
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting to 20' AND grade_level_min = 0),
  'Counting to 20 Topic Guide',
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting to 20' AND grade_level_min = 0)
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

-- Writing Numbers
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Numbers' AND grade_level_min = 0),
  'Writing Numbers Topic Guide',
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Numbers' AND grade_level_min = 0)
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

-- Addition Concepts
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Addition Concepts' AND grade_level_min = 0),
  'Addition Concepts Topic Guide',
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Addition Concepts' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Subtraction Concepts
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtraction Concepts' AND grade_level_min = 0),
  'Subtraction Concepts Topic Guide',
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtraction Concepts' AND grade_level_min = 0)
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

-- Comparing Sizes
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Sizes' AND grade_level_min = 0),
  'Comparing Sizes Topic Guide',
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Sizes' AND grade_level_min = 0)
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
-- ADDITIONAL COUNTING AND CARDINALITY TOPICS
-- ============================================================================

-- Ordinal Numbers
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ordinal Numbers' AND grade_level_min = 0),
  'Ordinal Numbers Topic Guide',
  'Comprehensive teaching approach for ordinal numbers',
  'ORDINAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting objects to 10
- Understanding of number sequence
- Ability to identify first and last
- Experience with lines and sequences

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use ordinal numbers first through tenth
2. Identify position in a line or sequence
3. Connect ordinal words to everyday situations
4. Understand ordinal numbers describe position, not quantity

KEY CONCEPTS:
- Ordinal numbers describe position (first, second, third)
- Position depends on where you start counting
- Same object can be "third" from one end and "eighth" from the other
- Ordinal numbers use special endings (-st, -nd, -rd, -th)

COMMON MISCONCEPTIONS:
- Confusing ordinal (position) with cardinal (quantity)
- Thinking "third" means "three things"
- Not understanding position changes based on direction
- Difficulty with irregular forms (first, second, third)

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Let''s line up for lunch! Who is first? Who is second?" Use real classroom situations. "I''m going to give prizes. The first person gets a blue sticker..."

2. DIRECT INSTRUCTION (10 minutes):
Use a line of objects or students. Point and count: "First, second, third, fourth, fifth..." Emphasize: "First means position number 1. It tells us WHERE something is, not how many."

3. GUIDED PRACTICE (10 minutes):
Students identify positions in various contexts: books on a shelf, beads on a string, cars in a line. "Touch the third car. Who is fifth in line?"

4. INDEPENDENT APPLICATION (15 minutes):
Ordinal number activities: coloring the "fourth" object, putting things in order and naming positions, story problems involving order.

DIFFERENTIATION:

For Struggling Learners:
- Focus on first, second, third only
- Use consistent visual supports
- Always count from the same direction
- Use physical positioning of students
- Pair ordinal words with gestures

For Advanced Learners:
- Extend to ordinal numbers beyond tenth
- Practice counting from both directions
- Explore ordinal abbreviations (1st, 2nd, 3rd)
- Create stories using ordinal numbers
- Connect to calendars (January is the first month)

ASSESSMENT INDICATORS:
- Correctly identifies ordinal positions
- Uses ordinal vocabulary appropriately
- Understands position vs. quantity
- Applies ordinals in real contexts

REAL-WORLD CONNECTIONS:
- Line order at school
- Floor numbers in buildings
- Race finish order
- Birth order in families
- Days of the week (Monday is first)

VOCABULARY:
first, second, third, fourth, fifth, sixth, seventh, eighth, ninth, tenth, position, order

QUESTIONING TECHNIQUES:
- "Who is third in line?"
- "What position is the red car?"
- "If you are second, how many people are in front of you?"
- "Touch the fifth block from the left."

MATERIALS:
- Position cards with ordinal words
- Lined-up objects (cars, animals, blocks)
- Ordinal number books
- Games requiring order (races, relay)

COMMON ERRORS AND RESPONSES:
Error: Counting "one, two, three" instead of "first, second, third"
Response: "When we talk about position, we use special words. Instead of ''three,'' we say ''third'' to mean position number three."

Error: Pointing to three objects when asked for "third"
Response: "Third means position three - just one thing. Let''s count positions: first, second, third. Touch just the third one."

CONNECTION TO FUTURE LEARNING:
Ordinal numbers connect to calendar work (first of the month), to sequences and patterns, to fractions (one-third), and to reading comprehension (identifying order of events).',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ordinal Numbers' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- One More and One Less
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'One More and One Less' AND grade_level_min = 0),
  'One More and One Less Topic Guide',
  'Comprehensive teaching approach for one more and one less',
  'ONE MORE AND ONE LESS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 20 with cardinality
- Number recognition to 20
- Understanding of number sequence
- Concept of "more" and "less"

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find the number that is one more than a given number
2. Find the number that is one less than a given number
3. Use a number line to find one more and one less
4. Apply concept to real-world situations

KEY CONCEPTS:
- One more means the next number when counting
- One less means the number before when counting
- Numbers have neighbors on both sides
- Adding one and taking away one are related

COMMON MISCONCEPTIONS:
- Thinking "one more" means counting all from the beginning
- Confusing one more/less with simply adding objects
- Difficulty with one less (subtraction harder than addition)
- Not connecting to counting sequence

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"I have 5 blocks. Watch - I get one more block. Now how many?" Physical demonstration with objects. "What if I take one away?"

2. DIRECT INSTRUCTION (10 minutes):
Use number line and objects together. "6 has neighbors. The number just before 6 is 5 - that''s one less. The number just after 6 is 7 - that''s one more."

3. GUIDED PRACTICE (10 minutes):
Students use ten frames and number lines to find one more and one less for various numbers. "Show me 4 cubes. Now show me one more. How many?"

4. INDEPENDENT APPLICATION (15 minutes):
Partner games and activities finding number neighbors. Matching games, number line hopping, "what comes next" puzzles.

DIFFERENTIATION:

For Struggling Learners:
- Start with very small numbers (1-5)
- Always use physical objects
- Focus on one more first, add one less later
- Use consistent language
- Provide number line reference

For Advanced Learners:
- Extend to two more and two less
- Work with larger numbers
- Mental math without manipulatives
- Story problems with one more/less
- Connect to addition and subtraction notation

ASSESSMENT INDICATORS:
- Quickly names one more than a number
- Quickly names one less than a number
- Uses number line independently
- Applies concept in word problems

REAL-WORLD CONNECTIONS:
- "If you have 3 stickers and get one more..."
- "There were 5 birds and one flew away..."
- Ages: "You are 5, next year you''ll be..."
- Countdown: "3, 2, 1, blast off!"

VOCABULARY:
one more, one less, before, after, next, neighbor, increase, decrease

QUESTIONING TECHNIQUES:
- "What is one more than 7?"
- "What number comes right before 9?"
- "If I have 4 and get one more, how many?"
- "What are the neighbors of 6?"

MATERIALS:
- Number lines (floor-sized and desktop)
- Ten frames with counters
- Number cards
- Dice for games
- Counting manipulatives

COMMON ERRORS AND RESPONSES:
Error: Saying "8" when asked for one more than 8
Response: "Let''s count: 8, then what comes next? 8, 9! One more than 8 is 9."

Error: Starting from 1 every time
Response: "You don''t need to start over. Just find 6 on the number line. Now hop one spot forward."

CONNECTION TO FUTURE LEARNING:
One more and one less is the foundation for addition and subtraction. Understanding number neighbors leads to mental math strategies, counting on, and algebraic thinking about number relationships.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'One More and One Less' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SKIP COUNTING TOPICS
-- ============================================================================

-- Skip Counting by 2s
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 2s' AND grade_level_min = 0),
  'Skip Counting by 2s Topic Guide',
  'Comprehensive teaching approach for skip counting by 2s',
  'SKIP COUNTING BY 2s - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 20 by ones
- Understanding of "two more"
- Recognition of even numbers (emerging)
- Number line familiarity

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Skip count by 2s to at least 20
2. Identify the pattern in counting by 2s
3. Connect skip counting to counting pairs
4. Recognize skip counting on a number line

KEY CONCEPTS:
- Skip counting means adding the same amount each time
- Counting by 2s: 2, 4, 6, 8, 10, 12, 14, 16, 18, 20
- These are the even numbers
- Skip counting is faster than counting by ones

COMMON MISCONCEPTIONS:
- Inserting odd numbers (2, 3, 4, 6...)
- Starting at 1 instead of 2
- Losing the rhythm partway through
- Not connecting to pairs or groups of 2

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Count shoes in the classroom - "We could count one at a time, but there''s a faster way! Each person has 2 shoes. Let''s count by 2s!"

2. DIRECT INSTRUCTION (10 minutes):
Chant the sequence with rhythm and movement: "2, 4, 6, 8, who do we appreciate!" Use visuals - two dots, then two more, creating pairs. Point on number line while counting.

3. GUIDED PRACTICE (10 minutes):
Students count objects in pairs, touch number line as counting by 2s, complete partially filled sequences. "What comes next? 2, 4, 6, ___"

4. INDEPENDENT APPLICATION (15 minutes):
Counting pairs activities, coloring patterns on hundred charts, skip counting songs and games.

DIFFERENTIATION:

For Struggling Learners:
- Limit to 10 first
- Use physical pairs to count
- Add movement (jumping, clapping)
- Provide strong visual patterns
- Allow singing the sequence

For Advanced Learners:
- Extend to 30 or beyond
- Count backwards by 2s
- Start skip counting from any even number
- Connect to doubles (2+2, 4+4)
- Begin written notation

ASSESSMENT INDICATORS:
- Accurately counts by 2s to 20
- Recognizes and continues 2s pattern
- Counts pairs of objects by 2s
- Identifies next number in sequence

REAL-WORLD CONNECTIONS:
- Counting pairs of shoes, socks, mittens
- Counting eyes, ears on people or animals
- Skip counting is like counting groups
- Bicycles have 2 wheels each

VOCABULARY:
skip count, pairs, even, two more, pattern, sequence

QUESTIONING TECHNIQUES:
- "What comes after 8 when we count by 2s?"
- "How many shoes are there? Let''s count by 2s."
- "What pattern do you notice?"
- "If you have 4 and add 2 more, what do you get?"

MATERIALS:
- Pairs of objects (socks, shoes, mittens)
- Number line with even numbers highlighted
- Skip counting songs
- Hundred chart for coloring pattern

COMMON ERRORS AND RESPONSES:
Error: Saying "2, 4, 5, 6, 8..."
Response: "We skip the in-between numbers. 2... skip 3... 4... skip 5... 6. We only say the even numbers."

Error: Starting at 1 (1, 3, 5...)
Response: "When we count by 2s, we start at 2. Try again: 2, 4, 6..."

CONNECTION TO FUTURE LEARNING:
Skip counting by 2s leads to understanding even and odd numbers, builds foundation for multiplication by 2, and develops number pattern recognition essential for higher mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 2s' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Skip Counting by 5s
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 5s' AND grade_level_min = 0),
  'Skip Counting by 5s Topic Guide',
  'Comprehensive teaching approach for skip counting by 5s',
  'SKIP COUNTING BY 5s - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 50 by ones
- Understanding of skip counting concept
- Recognition of 5 and 10
- Experience with counting groups

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Skip count by 5s to at least 50
2. Recognize the alternating 5, 0 pattern
3. Connect skip counting to groups of 5
4. Use skip counting by 5s to count objects efficiently

KEY CONCEPTS:
- Skip counting by 5s: 5, 10, 15, 20, 25, 30...
- The ones digit alternates: 5, 0, 5, 0
- Five fingers on each hand helps us count by 5s
- Skip counting by 5s relates to telling time

COMMON MISCONCEPTIONS:
- Mixing up 5s and 10s patterns
- Forgetting numbers between 15 and 20
- Not recognizing the 5, 0 pattern in ones place
- Difficulty starting from a number other than 5

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Hold up your hand. "How many fingers on one hand? 5! Two hands? 10! Let''s count hands around the room by 5s."

2. DIRECT INSTRUCTION (10 minutes):
Use hand visuals or tally marks. "5, 10, 15, 20..." Point out the pattern: "Look at the ones place: 5, 0, 5, 0. It keeps going like that!"

3. GUIDED PRACTICE (10 minutes):
Count objects in groups of 5 (fingers, tally marks, nickels). Fill in missing numbers on a 5s chart. Circle 5s on a hundred chart.

4. INDEPENDENT APPLICATION (15 minutes):
Partner counting activities, nickels counting, tally mark practice, hundred chart patterns.

DIFFERENTIATION:

For Struggling Learners:
- Start with counting to 25 only
- Use hands as primary manipulative
- Connect to familiar songs
- Provide visual number sequence
- Practice daily in routines

For Advanced Learners:
- Extend to 100 and beyond
- Count backwards by 5s
- Start from different multiples of 5
- Connect to money (nickels)
- Begin telling time by 5 minutes

ASSESSMENT INDICATORS:
- Counts by 5s to at least 50
- Recognizes and continues the pattern
- Counts groups of 5 objects
- Identifies missing numbers in sequence

REAL-WORLD CONNECTIONS:
- Hands have 5 fingers
- Tally marks use groups of 5
- Nickels are worth 5 cents each
- Clock shows minutes in 5s
- Star shapes have 5 points

VOCABULARY:
skip count, fives, pattern, groups of five, tally marks

QUESTIONING TECHNIQUES:
- "What comes after 25 when counting by 5s?"
- "How many nickels make 30 cents?"
- "What pattern do you see in the ones place?"
- "Can you count these tally marks by 5s?"

MATERIALS:
- Hand cutouts or posters
- Tally mark cards
- Play nickels
- Hundred chart
- Skip counting songs

COMMON ERRORS AND RESPONSES:
Error: Saying "5, 10, 15, 25..."
Response: "Let''s use our pattern. After 15 comes... 5, 0, 5, 0... so 15 ends in 5, next is 20."

Error: Counting "5, 10, 20, 30..."
Response: "You''re jumping by 10s sometimes. Let''s add just 5 each time. After 10 is... 11, 12, 13, 14, 15!"

CONNECTION TO FUTURE LEARNING:
Skip counting by 5s is essential for telling time, counting money, and understanding multiplication by 5. The pattern recognition develops algebraic thinking about number sequences.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 5s' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Skip Counting by 10s
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 10s' AND grade_level_min = 0),
  'Skip Counting by 10s Topic Guide',
  'Comprehensive teaching approach for skip counting by 10s',
  'SKIP COUNTING BY 10s - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 100 by ones
- Understanding of "10 more"
- Recognition that 10 ones make a ten
- Experience with ten frames

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Skip count by 10s to 100
2. Recognize that only the tens digit changes
3. Connect skip counting to groups of 10
4. Identify the pattern on a hundred chart

KEY CONCEPTS:
- Skip counting by 10s: 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
- Only the tens digit changes; ones digit stays 0
- Adding 10 is adding one more group of ten
- This is the foundation for place value understanding

COMMON MISCONCEPTIONS:
- Saying "10, 20, 21, 22..." (switching back to ones)
- Stopping at 100 without understanding continuation
- Not recognizing the ones digit pattern
- Confusing decade names (forty vs. fourteen)

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Stack ten-frame towers. "How many in this tower? 10. Two towers? Let''s count by 10s to find out: 10, 20!"

2. DIRECT INSTRUCTION (10 minutes):
Count dimes, ten-frames, or base-ten rods. Point to hundred chart columns. "Watch the ones place - it''s always zero! The tens place goes 1, 2, 3, 4..."

3. GUIDED PRACTICE (10 minutes):
Students build towers of 10 and count them. Point and count on hundred chart. Fill in missing decade numbers.

4. INDEPENDENT APPLICATION (15 minutes):
Dime counting, decade hopscotch, hundred chart coloring, decade matching games.

DIFFERENTIATION:

For Struggling Learners:
- Limit to 50 initially
- Use physical ten-frames to stack
- Emphasize the decade names
- Practice with movement (jumping)
- Sing counting songs

For Advanced Learners:
- Extend to 120 and beyond
- Count backwards by 10s
- Start from any decade (30, 40, 50...)
- Add 10 to any two-digit number
- Connect to dimes and dollar

ASSESSMENT INDICATORS:
- Counts by 10s to 100 accurately
- Recognizes the pattern in decade numbers
- Counts groups of 10 objects
- Fills in missing decade numbers

REAL-WORLD CONNECTIONS:
- Dimes are worth 10 cents each
- Pages often numbered by 10s
- Decades in age (10, 20, 30 years)
- Buying things in packs of 10
- Scoring in sports (bowling)

VOCABULARY:
skip count, tens, decade, groups of ten, ten more, hundred

QUESTIONING TECHNIQUES:
- "What comes after 40 when counting by 10s?"
- "How many dimes make 70 cents?"
- "What pattern do you see?"
- "Count these towers by 10s."

MATERIALS:
- Ten-frame towers or stacks
- Base-ten rods
- Play dimes
- Hundred chart
- Decade number cards

COMMON ERRORS AND RESPONSES:
Error: Saying "10, 20, 30, 31, 32..."
Response: "Keep skip counting! We''re jumping 10 each time. 30... jump 10... 40!"

Error: Confusing "fourteen" and "forty"
Response: "Fourteen is 14 - one ten and four ones. Forty is 40 - four tens and zero ones. Listen to the ending: four-TEEN, for-TY."

CONNECTION TO FUTURE LEARNING:
Skip counting by 10s is foundational for place value understanding, mental math strategies, counting money, and understanding our base-ten number system. It directly supports multi-digit addition and subtraction.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 10s' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TIME AND CALENDAR TOPICS
-- ============================================================================

-- Clock Parts
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Clock Parts' AND grade_level_min = 0),
  'Clock Parts Topic Guide',
  'Comprehensive teaching approach for clock parts',
  'CLOCK PARTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Number recognition 1-12
- Understanding of "longer" and "shorter"
- Basic spatial awareness
- Experience seeing clocks in environment

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the hour hand and minute hand
2. Recognize the numbers 1-12 on the clock face
3. Understand that the short hand shows hours
4. Understand that the long hand shows minutes

KEY CONCEPTS:
- Clocks have two hands that point to numbers
- The short hand (hour hand) tells the hour
- The long hand (minute hand) tells the minutes
- Numbers go around the clock in order 1-12

COMMON MISCONCEPTIONS:
- Confusing which hand is which
- Thinking both hands mean the same thing
- Not understanding that hands move at different speeds
- Focusing only on the hour hand

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"What tells us when it''s time for lunch? When it''s time to go home? A clock! Let''s learn about the parts of a clock."

2. DIRECT INSTRUCTION (10 minutes):
Use large demonstration clock. "This is the clock face. See the numbers? They go 1, 2, 3... around in a circle. Here are two arrows called hands. The short one is the HOUR hand. The long one is the MINUTE hand."

3. GUIDED PRACTICE (10 minutes):
Students identify parts on individual clocks. Point to the hour hand. Point to the minute hand. Find specific numbers. Move the hands and observe.

4. INDEPENDENT APPLICATION (15 minutes):
Clock part labeling activities, building paper plate clocks, clock sorting games.

DIFFERENTIATION:

For Struggling Learners:
- Color-code the hands (short=red, long=blue)
- Focus only on clock face and numbers first
- Use songs about clock parts
- Larger demonstration models
- Physical movement (short arms, long arms)

For Advanced Learners:
- Introduce what each hand measures
- Observe how hands move during the day
- Notice clocks in classroom and school
- Compare digital and analog clocks
- Begin time to the hour

ASSESSMENT INDICATORS:
- Correctly identifies hour hand
- Correctly identifies minute hand
- Names numbers 1-12 on clock face
- Understands short hand vs. long hand

REAL-WORLD CONNECTIONS:
- Classroom clock
- Kitchen or living room clocks
- Watches
- Clock towers
- Digital clocks (brief comparison)

VOCABULARY:
clock, clock face, hour hand, minute hand, numbers, hands, short, long, analog

QUESTIONING TECHNIQUES:
- "Which hand is shorter?"
- "What numbers do you see on the clock?"
- "Point to the hour hand."
- "Why do you think clocks have two hands?"

MATERIALS:
- Large demonstration clock
- Individual student clocks
- Paper plate clock craft materials
- Clock posters and labels
- Real clocks to observe

COMMON ERRORS AND RESPONSES:
Error: Pointing to minute hand when asked for hour hand
Response: "Remember, the HOUR hand is the SHORT one. Hours are important, but there are fewer of them in a day, so the hand is small."

Error: Thinking the 12 means 12 hours
Response: "The 12 is where both hands point when it''s exactly the hour. We''ll learn more about that soon!"

CONNECTION TO FUTURE LEARNING:
Understanding clock parts is essential for telling time. Students will build on this knowledge to read time to the hour, half hour, and eventually to the minute. Time concepts connect to daily schedules, elapsed time, and mathematical reasoning about intervals.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Clock Parts' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Time to the Hour
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Time to the Hour' AND grade_level_min = 0),
  'Time to the Hour Topic Guide',
  'Comprehensive teaching approach for telling time to the hour',
  'TIME TO THE HOUR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Identification of clock parts (hour hand, minute hand)
- Number recognition 1-12
- Understanding of "hour" as a unit of time
- Knowledge that short hand shows hours

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Tell time when the minute hand is on 12
2. Read and say "__ o''clock"
3. Set clocks to show a specific hour
4. Connect clock times to daily activities

KEY CONCEPTS:
- When minute hand points to 12, read the hour hand
- We say "o''clock" for times on the hour
- The hour hand points directly at a number for o''clock times
- 1:00, 2:00, etc. means the hour with zero extra minutes

COMMON MISCONCEPTIONS:
- Looking at the wrong hand to determine the hour
- Not noticing when minute hand isn''t on 12
- Thinking 12:00 is "0 o''clock"
- Confusing the hour hand position when between numbers

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"What time do you wake up? What time is lunch? Let''s learn to read the clock so YOU can tell the time!"

2. DIRECT INSTRUCTION (10 minutes):
"When the long hand points to 12, we can read the time easily. Look at where the short hand points. It says 3. So the time is 3 o''clock." Show multiple examples.

3. GUIDED PRACTICE (10 minutes):
Students read times on displayed clocks. Practice saying "__ o''clock." Set clocks to given times. Match times to daily activities.

4. INDEPENDENT APPLICATION (15 minutes):
Time matching games, "My Day" clock activities, practice clocks, drawing clock hands.

DIFFERENTIATION:

For Struggling Learners:
- Use clocks with only hour hand initially
- Color-code 12 on the clock face
- Practice with same time repeatedly
- Connect to one specific daily event
- Provide sentence frame "It is ___ o''clock"

For Advanced Learners:
- Include 12:00 and discuss noon/midnight
- Sequence multiple times in order
- Connect to written notation (3:00)
- Begin digital clock comparison
- Estimate times during the day

ASSESSMENT INDICATORS:
- Correctly reads o''clock times
- Says times using "o''clock"
- Sets clocks to given hours
- Identifies when it is NOT an o''clock time

REAL-WORLD CONNECTIONS:
- Breakfast, lunch, dinner times
- School start and end times
- Favorite TV show times
- Bedtime
- Sports practice times

VOCABULARY:
o''clock, hour, time, clock, hour hand, minute hand, twelve

QUESTIONING TECHNIQUES:
- "What time does the clock show?"
- "Show me 5 o''clock on your clock."
- "What do you do at 8 o''clock in the morning?"
- "How do you know it''s o''clock?"

MATERIALS:
- Student clocks with moveable hands
- Time matching cards
- Daily schedule posters with clocks
- Digital and analog clock display
- Practice worksheets

COMMON ERRORS AND RESPONSES:
Error: Saying "12 o''clock" for 3:00 because minute hand is on 12
Response: "The long hand on 12 tells us it''s exactly an o''clock time. Now look at the SHORT hand - what number does it point to? That''s our hour!"

Error: Confusing 6 and 9 o''clock
Response: "Let''s check. Point to where the short hand is pointing. Is it pointing at 6 (down) or 9 (left)? That''s our time."

CONNECTION TO FUTURE LEARNING:
Telling time to the hour is the foundation for all time-telling. Students will progress to half hours, then 5-minute intervals, and eventually precise times. Understanding time supports daily routines, scheduling, and elapsed time calculations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Time to the Hour' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Days of the Week
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Days of the Week' AND grade_level_min = 0),
  'Days of the Week Topic Guide',
  'Comprehensive teaching approach for days of the week',
  'DAYS OF THE WEEK - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of "day" as a period of time
- Concept of "today," "tomorrow," "yesterday"
- Ability to recognize some words or symbols
- Experience with daily routines

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Name all seven days of the week in order
2. Identify today, yesterday, and tomorrow
3. Understand that the week repeats in a cycle
4. Connect days to weekly activities

KEY CONCEPTS:
- There are 7 days in a week
- Days follow a set order that repeats
- Each day has a name
- The week cycles: after Sunday comes Monday again

COMMON MISCONCEPTIONS:
- Thinking there are more or fewer than 7 days
- Not understanding the cyclical nature
- Confusing day names (Tuesday/Thursday)
- Thinking the week has an "end" that doesn''t repeat

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Sing a days of the week song. "Today is ___! What special things do we do today? What will we do tomorrow?"

2. DIRECT INSTRUCTION (10 minutes):
Display days in a circle or linear sequence. Point and chant each day. Highlight today. "After Sunday, we start again with Monday. The days go in a circle!"

3. GUIDED PRACTICE (10 minutes):
Calendar routines - identify today, yesterday, tomorrow. Order day cards. Match days to activities (Pizza Friday, Library Tuesday).

4. INDEPENDENT APPLICATION (15 minutes):
Day sorting activities, weekly schedule books, day of the week puzzles.

DIFFERENTIATION:

For Struggling Learners:
- Use consistent songs with motions
- Focus on today/tomorrow first
- Use visual cues for each day
- Practice during daily calendar time
- Connect to one memorable event per day

For Advanced Learners:
- Learn day abbreviations
- Explore weekend vs. weekday
- Count days until an event
- Learn "day before yesterday," "day after tomorrow"
- Begin reading day words

ASSESSMENT INDICATORS:
- Names all seven days in order
- Identifies today correctly
- Determines yesterday and tomorrow
- Understands the repeating cycle

REAL-WORLD CONNECTIONS:
- School days vs. weekend
- Special weekly activities (library, gym, music)
- Family traditions (Taco Tuesday)
- TV show schedules
- Sports practices

VOCABULARY:
Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, today, tomorrow, yesterday, day, week, weekend

QUESTIONING TECHNIQUES:
- "What day is it today?"
- "What day comes after Wednesday?"
- "What day was it yesterday?"
- "What do we do on Fridays?"

MATERIALS:
- Days of the week cards or chart
- Calendar display
- Days of the week songs
- Weekly schedule visuals
- Day ordering activities

COMMON ERRORS AND RESPONSES:
Error: Confusing Tuesday and Thursday
Response: "Tuesday starts with T-U. Thursday starts with T-H. Let''s say them: TUES-day, THURS-day. Can you hear the difference?"

Error: Thinking Sunday comes after Saturday then stops
Response: "The week is like a circle. After Saturday comes Sunday, and then Monday starts a new week. It keeps going round and round!"

CONNECTION TO FUTURE LEARNING:
Understanding days of the week supports calendar reading, scheduling, planning, and time organization. It builds toward understanding weeks, months, and years, and supports reading comprehension involving sequence of events.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Days of the Week' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MONEY BASICS TOPICS
-- ============================================================================

-- Identifying Coins
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Identifying Coins' AND grade_level_min = 0),
  'Identifying Coins Topic Guide',
  'Comprehensive teaching approach for identifying coins',
  'IDENTIFYING COINS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Visual discrimination skills
- Size comparison ability
- Color recognition
- Interest in "real-world" materials

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify pennies, nickels, dimes, and quarters by sight
2. Name each coin correctly
3. Describe coins by their attributes (size, color)
4. Sort coins by type

KEY CONCEPTS:
- Four main coins: penny, nickel, dime, quarter
- Each coin looks different (size, color, images)
- Bigger doesn''t always mean worth more
- Coins have different pictures on front and back

COMMON MISCONCEPTIONS:
- Thinking bigger coins are always worth more
- Confusing nickel and quarter (both silver)
- Calling all coins "money" without specific names
- Thinking penny is same as dime (both small)

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Look what I found in my pocket! Coins! Let''s learn the names of these coins. They each have a special name."

2. DIRECT INSTRUCTION (10 minutes):
Introduce one coin at a time with clear attributes: "This is a PENNY. It''s copper colored - kind of orange. It''s small and has Abraham Lincoln on it." Compare sizes and colors systematically.

3. GUIDED PRACTICE (10 minutes):
Sorting activities. "Find all the pennies. Now find all the dimes. How do you know which is which?" Coin identification games with real or play coins.

4. INDEPENDENT APPLICATION (15 minutes):
Coin sorting stations, coin matching games, coin attribute books.

DIFFERENTIATION:

For Struggling Learners:
- Start with only two coins (penny and quarter)
- Emphasize color difference first
- Use magnified images
- Repeated exposure through games
- Physical handling of real coins

For Advanced Learners:
- Learn front and back images
- Compare coin sizes precisely
- Begin learning values
- Sort and count same coins
- Explore coin combinations

ASSESSMENT INDICATORS:
- Names all four coins correctly
- Identifies coins by sight
- Sorts coins accurately
- Describes coin attributes

REAL-WORLD CONNECTIONS:
- Coins in piggy banks
- Paying at stores
- Vending machines
- Finding coins at home
- Coin collections

VOCABULARY:
coin, penny, nickel, dime, quarter, copper, silver, heads, tails, front, back

QUESTIONING TECHNIQUES:
- "What coin is this?"
- "How do you know that''s a nickel?"
- "Which coin is the biggest?"
- "What color is a penny?"

MATERIALS:
- Real coins or play money coins
- Coin identification posters
- Coin sorting mats
- Coin matching games
- Magnifying glasses

COMMON ERRORS AND RESPONSES:
Error: Calling a nickel a quarter
Response: "Look at the size. A quarter is bigger than a nickel. A nickel is the same size as a quarter but thicker. This smaller one is a nickel."

Error: Calling all silver coins the same name
Response: "They are both silver, but look at the sizes! The nickel is smaller and thicker. The quarter is bigger. The dime is smallest of all."

CONNECTION TO FUTURE LEARNING:
Coin identification is essential for understanding money values and counting money. This foundational skill supports addition, problem-solving with money, and real-world financial literacy throughout school and life.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Identifying Coins' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Counting Pennies
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting Pennies' AND grade_level_min = 0),
  'Counting Pennies Topic Guide',
  'Comprehensive teaching approach for counting pennies',
  'COUNTING PENNIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting objects to 10
- Penny identification
- Understanding that penny = 1 cent
- One-to-one correspondence

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that each penny is worth 1 cent
2. Count pennies to find total cents
3. Count pennies up to 10 cents
4. Represent penny amounts with the cent symbol

KEY CONCEPTS:
- One penny = one cent
- Counting pennies is like counting objects (one-to-one)
- The total tells us how many cents
- We write cents with ¢ symbol

COMMON MISCONCEPTIONS:
- Thinking pennies are worth different amounts
- Not connecting counting to money value
- Confusion about cent vs. dollar
- Thinking more pennies always means more money than other coins

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"If you found 5 pennies, how much money would you have? Each penny is worth ONE cent. Let''s count and find out!"

2. DIRECT INSTRUCTION (10 minutes):
Count pennies together, saying "1 cent, 2 cents, 3 cents..." Touch each penny as counting. "You have 6 pennies, so you have 6 cents. We write it like this: 6¢"

3. GUIDED PRACTICE (10 minutes):
Students count small groups of pennies. Match penny groups to cent values. Practice writing cents with ¢ symbol.

4. INDEPENDENT APPLICATION (15 minutes):
Penny counting stations, store role-play with penny prices, penny counting games.

DIFFERENTIATION:

For Struggling Learners:
- Limit to 5 pennies initially
- Use counting mats
- Count aloud each time
- Focus on counting accuracy
- Delay cent symbol writing

For Advanced Learners:
- Count beyond 10 cents
- Match pennies to items with prices
- Simple "buying" scenarios
- Connect to skip counting (groups of pennies)
- Begin adding penny groups

ASSESSMENT INDICATORS:
- Counts pennies accurately to 10
- States total in cents
- Understands 1 penny = 1 cent
- Attempts cent symbol usage

REAL-WORLD CONNECTIONS:
- Buying small items
- Saving pennies in a jar
- Finding pennies in pockets
- Penny wishes in fountains
- Piggy banks

VOCABULARY:
penny, cent, cents, count, worth, value, money, ¢

QUESTIONING TECHNIQUES:
- "How many cents is this?"
- "Count these pennies for me."
- "If one thing costs 4 cents, do you have enough?"
- "How many pennies make 7 cents?"

MATERIALS:
- Real or play pennies
- Cent value cards
- Price tags with cent amounts
- Counting mats
- Play store items

COMMON ERRORS AND RESPONSES:
Error: Saying "5 pennies" instead of "5 cents" when asked "how much"
Response: "You counted 5 pennies - that''s right! Each penny is worth 1 cent, so 5 pennies = 5 cents. We say ''5 cents'' for the value."

Error: Losing count or double counting
Response: "Let''s organize them in a line. Now touch each one as you count. That way we won''t skip any or count any twice."

CONNECTION TO FUTURE LEARNING:
Counting pennies is the simplest form of money counting and builds toward counting mixed coins, making change, and solving money word problems. Understanding that each penny has a consistent value is foundational to all money concepts.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting Pennies' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PATTERNS AND POSITIONS TOPICS
-- ============================================================================

-- Color Patterns
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Color Patterns' AND grade_level_min = 0),
  'Color Patterns Topic Guide',
  'Comprehensive teaching approach for color patterns',
  'COLOR PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Color recognition
- Understanding of "same" and "different"
- Ability to copy a sequence
- Basic vocabulary for common colors

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify repeating color patterns
2. Extend color patterns
3. Create simple AB, ABB, and ABC patterns
4. Describe patterns using color words

KEY CONCEPTS:
- A pattern is something that repeats
- Colors can be arranged in a repeating sequence
- We identify the "core" of the pattern (the part that repeats)
- Patterns help us predict what comes next

COMMON MISCONCEPTIONS:
- Thinking any arrangement is a pattern
- Not identifying when the pattern repeats
- Unable to find the core unit
- Adding random colors when extending

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Create a simple pattern with colored cubes: red, blue, red, blue, red... "What do you notice? What color should come next? How do you know?"

2. DIRECT INSTRUCTION (10 minutes):
"This is a PATTERN. The red and blue repeat over and over. Red, blue, red, blue - that''s the pattern! The part that repeats is called the CORE. Our core is red, blue." Show various pattern types.

3. GUIDED PRACTICE (10 minutes):
Students identify patterns, name the core, and predict what comes next. Create patterns together using colored objects.

4. INDEPENDENT APPLICATION (15 minutes):
Pattern building stations with various colored materials, pattern strips to extend, pattern creating activities.

DIFFERENTIATION:

For Struggling Learners:
- Start with simple AB patterns only
- Use only 2 colors
- Provide pattern strips to match
- Physical manipulation of materials
- Verbal repetition of pattern

For Advanced Learners:
- Create ABB, ABC, AABB patterns
- Use more colors
- Find patterns in the environment
- Translate patterns to different materials
- Create original complex patterns

ASSESSMENT INDICATORS:
- Identifies repeating patterns
- Correctly extends patterns
- Names the core of a pattern
- Creates simple patterns independently

REAL-WORLD CONNECTIONS:
- Striped clothing (shirts, socks)
- Bead necklaces and bracelets
- Wallpaper and tile designs
- Nature patterns (flower petals)
- Flag designs

VOCABULARY:
pattern, repeat, core, extend, continue, same, different, next, predict

QUESTIONING TECHNIQUES:
- "What is the pattern?"
- "What comes next? How do you know?"
- "What is the core - the part that repeats?"
- "Can you make your own pattern?"

MATERIALS:
- Colored linking cubes
- Pattern blocks
- Beads and string
- Color tiles
- Pattern cards and strips

COMMON ERRORS AND RESPONSES:
Error: Adding random colors when extending
Response: "Let''s find the pattern core first. Red, blue repeats. So after blue comes... red again! The pattern keeps going."

Error: Thinking red, blue, green, yellow is a pattern
Response: "A pattern repeats. Does this part repeat? Let''s see - red, blue, green, yellow... then what? For a pattern, we need to see the same thing again."

CONNECTION TO FUTURE LEARNING:
Pattern recognition is fundamental to mathematics. Recognizing patterns leads to understanding number patterns, algebraic thinking, and mathematical structures. Pattern work develops logical reasoning and prediction skills.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Color Patterns' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Position Words
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Position Words' AND grade_level_min = 0),
  'Position Words Topic Guide',
  'Comprehensive teaching approach for position words',
  'POSITION WORDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Spatial awareness
- Understanding of "where" questions
- Ability to follow simple directions
- Observation skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use words to describe where objects are
2. Understand above, below, beside, in front, behind
3. Follow directions using position words
4. Give directions using position words

KEY CONCEPTS:
- Position words describe location relative to something else
- The same object can be described differently depending on reference point
- Position words help us communicate location precisely
- These words are used in giving and following directions

COMMON MISCONCEPTIONS:
- Confusing "above" with "on top of"
- Mixing up "in front of" and "behind" (perspective matters)
- Not understanding relative positions
- Using position words inconsistently

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Play "Where is it?" with a hidden object. "Is the teddy bear ABOVE the table? BELOW the table? BESIDE the table?" Make it a game.

2. DIRECT INSTRUCTION (10 minutes):
Use clear demonstrations. Place a ball ABOVE the box, BELOW the box, BESIDE the box. "The ball is ABOVE the box. It''s up high, over the box." Use gestures and movement.

3. GUIDED PRACTICE (10 minutes):
Students place objects following directions. "Put the block BEHIND the book." Students describe where objects are. "Where is the crayon?"

4. INDEPENDENT APPLICATION (15 minutes):
Position word games, barrier games (describing to a partner), position picture activities.

DIFFERENTIATION:

For Struggling Learners:
- Focus on one position word at a time
- Use consistent objects and locations
- Add physical movement (stand BEHIND the chair)
- Provide visual cue cards
- Repeat in routines throughout day

For Advanced Learners:
- Combine position words (above AND beside)
- Use more precise terms (between, next to)
- Give multi-step directions
- Describe positions in pictures
- Write or draw position situations

ASSESSMENT INDICATORS:
- Uses position words correctly
- Follows position word directions
- Describes object locations accurately
- Gives directions using position words

REAL-WORLD CONNECTIONS:
- Finding things at home
- Following directions to places
- Organizing belongings
- Playing games
- Describing pictures and scenes

VOCABULARY:
above, below, beside, next to, in front of, behind, between, under, over, near, far

QUESTIONING TECHNIQUES:
- "Where is the ball?"
- "Put the cup BEHIND the book."
- "What is ABOVE the table?"
- "Is the chair in front of or behind you?"

MATERIALS:
- Common classroom objects
- Position word cards
- Picture scenes for describing
- Barrier game materials
- Stuffed animals/toys for placing

COMMON ERRORS AND RESPONSES:
Error: Confusing "in front of" and "behind"
Response: "Let''s think about it. Stand in front of me - you''re facing me. Now go behind me - I can''t see you. In front is where you face; behind is where you can''t see."

Error: Using "up" and "down" instead of "above" and "below"
Response: "Those are similar! We can also say ABOVE when something is up higher, and BELOW when something is down lower. The bird is ABOVE us in the sky."

CONNECTION TO FUTURE LEARNING:
Position words support geometry understanding, map reading, following written directions, and spatial reasoning. These concepts extend to coordinate graphing, measurement, and understanding relative positions in mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Position Words' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DATA AND PROBABILITY TOPICS
-- ============================================================================

-- Collecting Data
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Collecting Data' AND grade_level_min = 0),
  'Collecting Data Topic Guide',
  'Comprehensive teaching approach for collecting data',
  'COLLECTING DATA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting objects with cardinality
- Sorting by one attribute
- Ability to ask and answer simple questions
- Understanding of categories

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that we can collect information by asking questions
2. Gather data by counting, observing, or surveying
3. Record collected data in an organized way
4. Answer questions using collected data

KEY CONCEPTS:
- Data is information we collect
- We collect data to answer questions
- Data can be collected by counting, asking, or observing
- Collected data should be organized

COMMON MISCONCEPTIONS:
- Thinking data is only numbers
- Not understanding the purpose of collecting data
- Difficulty recording data consistently
- Not connecting data to original question

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"I wonder if more people in our class like apples or bananas? How could we find out?" Generate curiosity about answering questions with data.

2. DIRECT INSTRUCTION (10 minutes):
"When we want to find out something, we can COLLECT DATA. That means gathering information. Let''s ask everyone: Do you like apples or bananas better?" Model tallying responses.

3. GUIDED PRACTICE (10 minutes):
As a class, collect data on a simple topic (favorite color, pets at home). Students participate in surveying and recording.

4. INDEPENDENT APPLICATION (15 minutes):
Partner surveys on simple topics, counting and recording observations, organizing collected information.

DIFFERENTIATION:

For Struggling Learners:
- Use binary choices (yes/no, this/that)
- Provide recording templates
- Collect as whole class first
- Use physical objects to record
- Limited categories

For Advanced Learners:
- Multiple categories to choose from
- Record data in different ways
- Compare data sets
- Generate their own survey questions
- Make predictions before collecting

ASSESSMENT INDICATORS:
- Participates in data collection
- Records data with assistance
- Answers questions about collected data
- Understands purpose of data collection

REAL-WORLD CONNECTIONS:
- Finding out class preferences
- Weather tracking
- Counting items at home
- Surveys in magazines
- Sports statistics

VOCABULARY:
data, collect, survey, count, observe, record, question, answer, information, tally

QUESTIONING TECHNIQUES:
- "What do you want to find out?"
- "How can we collect this information?"
- "How many people said...?"
- "What did we learn from our data?"

MATERIALS:
- Survey question cards
- Tally charts and recording sheets
- Counting collections
- Clipboards for surveys
- Tokens for recording

COMMON ERRORS AND RESPONSES:
Error: Asking leading questions
Response: "We want to find out what people really think. Ask ''Which do you like better?'' not ''Don''t you think pizza is best?''"

Error: Not recording responses consistently
Response: "Let''s make a tally mark each time someone answers. One mark for each person. That way we remember everyone''s answer."

CONNECTION TO FUTURE LEARNING:
Data collection is foundational to statistics and data analysis. Students will progress to creating graphs, analyzing data, and using data to make decisions. These skills support scientific inquiry and critical thinking.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Collecting Data' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Reading Pictographs
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reading Pictographs' AND grade_level_min = 0),
  'Reading Pictographs Topic Guide',
  'Comprehensive teaching approach for reading pictographs',
  'READING PICTOGRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting objects with cardinality
- Understanding of categories
- Experience with data collection
- Comparison vocabulary (more, fewer, same)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that pictographs show data using pictures
2. Read a simple pictograph where each picture = 1
3. Count pictures to find quantities
4. Compare categories using pictograph data

KEY CONCEPTS:
- A pictograph uses pictures to show data
- Each picture represents one item (or sometimes more)
- Pictures are lined up so we can compare easily
- We can answer questions by looking at the pictograph

COMMON MISCONCEPTIONS:
- Not understanding each picture = one item
- Comparing by how far pictures extend rather than counting
- Difficulty reading category labels
- Not connecting pictograph to real-world data

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Show a pictograph about something familiar (favorite fruits, types of pets). "This picture graph tells us about our class. Each smiley face stands for one person!"

2. DIRECT INSTRUCTION (10 minutes):
Model reading a pictograph. "Let''s count the apples. 1, 2, 3, 4. That means 4 people chose apples. Now let''s count bananas..." Compare: "Which has more? How do you know?"

3. GUIDED PRACTICE (10 minutes):
Students read pictographs together. Answer questions: "How many chose...?" "Which has the most?" "How many more?"

4. INDEPENDENT APPLICATION (15 minutes):
Pictograph reading activities, matching data to pictographs, pictograph interpretation games.

DIFFERENTIATION:

For Struggling Learners:
- Use large, clear pictures
- Only 2-3 categories
- Small quantities to count
- One-to-one correspondence emphasized
- Teacher-guided reading

For Advanced Learners:
- More categories and larger numbers
- "How many more/fewer" questions
- Create pictographs from data
- Picture = 2 or more (scaled pictographs intro)
- Write questions about pictographs

ASSESSMENT INDICATORS:
- Correctly counts pictures in each category
- Answers "how many" questions
- Compares categories accurately
- Understands pictograph organization

REAL-WORLD CONNECTIONS:
- Weather graphs in newspapers
- Favorite food charts in class
- Book reading logs
- Pet surveys
- Sports team statistics

VOCABULARY:
pictograph, picture graph, data, category, count, compare, more, fewer, same, most, fewest

QUESTIONING TECHNIQUES:
- "How many pictures are in this row?"
- "Which category has the most?"
- "How many more ___ than ___?"
- "What does this pictograph tell us?"

MATERIALS:
- Simple pictographs on various topics
- Reading guide questions
- Comparison cards
- Class-created pictographs
- Pictograph templates

COMMON ERRORS AND RESPONSES:
Error: Looking at picture size rather than count
Response: "Each picture counts as one, no matter how they look. Let''s count them carefully: 1, 2, 3..."

Error: Saying the longer row has more without counting
Response: "It looks like more, but let''s check by counting. This row has 4. That row has 5. Which is more?"

CONNECTION TO FUTURE LEARNING:
Pictograph reading builds toward bar graphs, reading scaled pictographs, creating graphs from data, and analyzing data displays. These data literacy skills are essential throughout mathematics and science.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading Pictographs' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Certain Possible Impossible
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Certain Possible Impossible' AND grade_level_min = 0),
  'Certain Possible Impossible Topic Guide',
  'Comprehensive teaching approach for probability concepts',
  'CERTAIN, POSSIBLE, IMPOSSIBLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of cause and effect
- Real-world experiences with everyday events
- Ability to discuss "what might happen"
- Vocabulary for outcomes

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify events that are certain to happen
2. Identify events that are impossible
3. Identify events that are possible
4. Use probability vocabulary in context

KEY CONCEPTS:
- Certain means it WILL happen (100% sure)
- Impossible means it CANNOT happen (no chance)
- Possible means it MIGHT happen (some chance)
- We use these words to describe likelihood

COMMON MISCONCEPTIONS:
- Thinking "unlikely" means impossible
- Believing wishes can make impossible things happen
- Confusing possible with certain
- Not distinguishing between rare and impossible

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Is it CERTAIN the sun will rise tomorrow? Is it POSSIBLE you''ll find a dinosaur at lunch? Is it IMPOSSIBLE for fish to fly?" Discuss what we know about chances.

2. DIRECT INSTRUCTION (10 minutes):
Define each term with clear examples. "CERTAIN: I am certain the class pet is in the room. IMPOSSIBLE: It''s impossible for our fish to bark. POSSIBLE: It''s possible it will rain today."

3. GUIDED PRACTICE (10 minutes):
Sort events into certain, possible, impossible categories. Discuss reasoning. "Is it certain, possible, or impossible that you''ll grow taller this year?"

4. INDEPENDENT APPLICATION (15 minutes):
Probability sorting activities, spinner and dice predictions, real-world scenario discussions.

DIFFERENTIATION:

For Struggling Learners:
- Use very clear examples (sun rising vs. pig flying)
- Focus on certain and impossible first
- Use pictures and visual supports
- Connect to familiar daily events
- Consistent vocabulary reinforcement

For Advanced Learners:
- Introduce "likely" and "unlikely"
- Explore degrees of possibility
- Simple spinner activities
- Make predictions and test
- Discuss why some things are certain/impossible

ASSESSMENT INDICATORS:
- Correctly identifies certain events
- Correctly identifies impossible events
- Recognizes possible events
- Uses vocabulary appropriately

REAL-WORLD CONNECTIONS:
- Weather predictions
- Game outcomes
- Daily routines (certain events)
- Fantasy vs. reality
- Safety rules (why certain things are certain to hurt)

VOCABULARY:
certain, possible, impossible, will happen, might happen, cannot happen, sure, chance, maybe

QUESTIONING TECHNIQUES:
- "Is it certain, possible, or impossible?"
- "Could this ever happen?"
- "Why is this impossible?"
- "What makes you certain about this?"

MATERIALS:
- Scenario cards for sorting
- Three-column sorting mat (certain/possible/impossible)
- Spinners and dice for experiments
- Picture cards of events
- Yes/No prediction cards

COMMON ERRORS AND RESPONSES:
Error: Saying "impossible" for unlikely events
Response: "Rare things aren''t impossible - they''re just not likely. Finding a four-leaf clover is hard but possible. Growing wings overnight is actually impossible."

Error: Mixing up certain and possible
Response: "Certain means it WILL DEFINITELY happen. The sun rising tomorrow is certain. Getting a toy for your birthday is possible - it might happen but isn''t sure."

CONNECTION TO FUTURE LEARNING:
Understanding certainty and possibility is foundational to probability. Students will progress to understanding likelihood, making predictions, and eventually calculating probabilities. These concepts support decision-making and risk assessment in daily life.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Certain Possible Impossible' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ADDITIONAL GEOMETRY TOPICS
-- ============================================================================

-- Corners and Sides
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Corners and Sides' AND grade_level_min = 0),
  'Corners and Sides Topic Guide',
  'Comprehensive teaching approach for counting corners and sides',
  'CORNERS AND SIDES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Recognition of basic 2D shapes
- Counting to 6
- Understanding of "straight" and "curved"
- Shape vocabulary (circle, square, triangle, rectangle)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count the sides of 2D shapes
2. Count the corners (vertices) of 2D shapes
3. Describe shapes using sides and corners
4. Compare shapes by their attributes

KEY CONCEPTS:
- Sides are the straight edges of shapes
- Corners are where two sides meet (vertices)
- Different shapes have different numbers of sides and corners
- Shapes with the same number of sides have the same number of corners

COMMON MISCONCEPTIONS:
- Thinking circles have one side
- Confusing sides with faces
- Not counting all sides systematically
- Thinking corners are only at the "top"

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"How many sides does a square have? Let''s count together! And what about these pointy parts where the sides meet? Those are called corners!"

2. DIRECT INSTRUCTION (10 minutes):
Trace sides with finger while counting. "Side 1, side 2, side 3, side 4. A square has 4 sides." Point to corners. "Corner 1, corner 2, corner 3, corner 4. A square has 4 corners."

3. GUIDED PRACTICE (10 minutes):
Students count sides and corners of various shapes. Record on a chart. Compare shapes: "What''s the same about squares and rectangles?"

4. INDEPENDENT APPLICATION (15 minutes):
Shape attribute sorting, counting sides/corners activities, shape description games.

DIFFERENTIATION:

For Struggling Learners:
- Mark each side as counted
- Use tactile shapes to trace
- Focus on triangle and square first
- Provide recording charts
- Count together slowly

For Advanced Learners:
- Explore shapes with 5, 6+ sides
- Create shapes with given attributes
- Compare and sort by attributes
- Investigate why sides = corners
- Design shape riddles

ASSESSMENT INDICATORS:
- Correctly counts sides of shapes
- Correctly counts corners of shapes
- Uses attribute vocabulary
- Compares shapes by attributes

REAL-WORLD CONNECTIONS:
- Shapes of signs
- Windows and doors
- Picture frames
- Tiles on floors
- Snack shapes (crackers, sandwiches)

VOCABULARY:
side, corner, vertex (corners), count, straight, triangle, square, rectangle, how many

QUESTIONING TECHNIQUES:
- "How many sides does this shape have?"
- "How many corners?"
- "Which shape has more corners?"
- "Find a shape with 3 sides."

MATERIALS:
- Various 2D shapes (pattern blocks, attribute blocks)
- Shape attribute cards
- Recording sheets
- Tactile shapes to trace
- Shape posters with labels

COMMON ERRORS AND RESPONSES:
Error: Counting corners without touching each one
Response: "Let''s touch each corner as we count. Start here: 1, 2, 3. Did we touch them all? Three corners!"

Error: Saying a circle has one side
Response: "A side is straight. Is a circle straight? A circle is curved all around. We say circles have no straight sides."

CONNECTION TO FUTURE LEARNING:
Counting sides and corners is foundational to geometry understanding. These attributes define shapes and lead to understanding polygons, angle measurement, and geometric properties in later grades.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Corners and Sides' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ADDITIONAL MEASUREMENT TOPICS
-- ============================================================================

-- Comparing Weights
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Weights' AND grade_level_min = 0),
  'Comparing Weights Topic Guide',
  'Comprehensive teaching approach for comparing weights',
  'COMPARING WEIGHTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of "same" and "different"
- Experience lifting objects
- Vocabulary for heavy and light
- Comparison concepts from length

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare two objects by weight using hands
2. Use vocabulary: heavier, lighter, same weight
3. Predict and verify weight comparisons
4. Understand that size doesn''t always indicate weight

KEY CONCEPTS:
- Weight is how heavy something is
- We can compare weights by holding objects
- Heavier objects feel like they pull down more
- Bigger doesn''t always mean heavier

COMMON MISCONCEPTIONS:
- Thinking bigger always means heavier
- Confusing weight with size
- Not understanding equal weight
- Difficulty with objects close in weight

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Hold a small rock and a large balloon. "Which is bigger? Which is heavier? Surprise - the small rock is heavier! Let''s explore weight."

2. DIRECT INSTRUCTION (10 minutes):
Model comparing weights. Hold one object in each hand. "I feel this one pulling down more. This book is HEAVIER than this crayon. The crayon is LIGHTER."

3. GUIDED PRACTICE (10 minutes):
Students compare pairs of objects. Use pan balance if available. "Which is heavier? How do you know? Were you surprised?"

4. INDEPENDENT APPLICATION (15 minutes):
Weight comparison stations, prediction and testing activities, sorting by weight.

DIFFERENTIATION:

For Struggling Learners:
- Use objects with obvious weight differences
- Allow plenty of handling time
- Focus on heavy vs. light vocabulary
- Consistent objects for practice
- Use arm movements to show "pulling down"

For Advanced Learners:
- Compare objects closer in weight
- Order multiple objects by weight
- Predict before comparing
- Explore why materials differ in weight
- Begin using balance scales

ASSESSMENT INDICATORS:
- Correctly identifies heavier object
- Uses weight vocabulary
- Understands size doesn''t determine weight
- Makes reasonable predictions

REAL-WORLD CONNECTIONS:
- Carrying groceries
- Choosing what to pack
- Understanding why some things are harder to lift
- Mailing packages
- Pet weights

VOCABULARY:
heavy, light, heavier, lighter, weight, same, compare, balance, lift

QUESTIONING TECHNIQUES:
- "Which is heavier?"
- "How do you know?"
- "Which would be harder to carry?"
- "Can small things be heavy?"

MATERIALS:
- Objects of varying weights
- Pan balance (optional)
- Prediction recording sheets
- Heavy/light sorting mats
- Objects where size is misleading (foam vs. metal)

COMMON ERRORS AND RESPONSES:
Error: Choosing bigger object as heavier
Response: "Let''s test it! Hold one in each hand. Which one pulls down more? Sometimes small things are heavier than big things!"

Error: Not detecting small weight differences
Response: "These are close! Hold them very still and pay attention to which hand feels more pulling down. It''s okay if they feel the same."

CONNECTION TO FUTURE LEARNING:
Weight comparison leads to measurement with units (pounds, kilograms), understanding mass, and scientific investigations. The concept that size ≠ weight connects to density and material properties in science.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Weights' AND grade_level_min = 0)
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
