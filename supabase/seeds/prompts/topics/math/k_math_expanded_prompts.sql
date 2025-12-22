-- ============================================================================
-- KINDERGARTEN MATH EXPANDED TOPIC PROMPTS
-- ============================================================================
-- Prompts for topics added in 20241222000300_expand_k_math_curriculum.sql
-- ============================================================================

-- ============================================================================
-- COUNTING AND CARDINALITY EXPANDED TOPICS
-- ============================================================================

-- Ordinal Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ordinal Numbers' AND grade_level_min = 0),
  'Ordinal Numbers Topic Guide', 'Teaching position words first through tenth',
  'ORDINAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 10 with one-to-one correspondence
- Understanding of number sequence
- Concept of first/last in line
- Verbal ability to learn new vocabulary

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use ordinal words first through fifth
2. Extend ordinal words to tenth
3. Connect ordinal numbers to position in a line
4. Apply ordinals in real-world contexts
5. Write ordinal numbers (1st, 2nd, 3rd)

KEY CONCEPTS:
- Ordinal numbers describe position, not quantity
- The position depends on the starting point
- Ordinal words have consistent endings (-st, -nd, -rd, -th)
- Ordinals help us describe order and sequence

COMMON MISCONCEPTIONS:
- Confusing ordinal (position) with cardinal (quantity) numbers
- Starting count from zero instead of first
- Not understanding position depends on direction
- Thinking ordinals only apply to races or lines

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Line up 5 stuffed animals or toys. "Let''s have a race! Bear came in first place! Who came in second?" Use excitement to build interest in position words.

2. DIRECT INSTRUCTION (7 minutes):
"When we want to tell WHICH ONE in a line, we use special words. First means number one in line. Second means number two in line." Practice with fingers: "This finger is first, this one is second, third, fourth, fifth."

3. GUIDED PRACTICE (8 minutes):
Have students line up. "Who is first? Who is third?" Play "ordinal freeze dance" - call out positions and those students freeze. Use consistent left-to-right direction.

4. INDEPENDENT APPLICATION (7 minutes):
Coloring activity: "Color the third star red. Color the fifth heart blue." Drawing activity: "Draw what comes fourth in this pattern."

DIFFERENTIATION:

For Struggling Learners:
- Focus on first, second, third only
- Use physical movement and lining up
- Provide visual number line with ordinals
- Use consistent examples before varying

For Advanced Learners:
- Extend to ordinals beyond tenth
- Practice writing 1st, 2nd, 3rd format
- Apply to calendar (first day of the month)
- Solve ordinal word problems

ASSESSMENT INDICATORS:
- Correctly identifies positions first through fifth
- Uses ordinal vocabulary appropriately
- Applies ordinals to new situations
- Understands position depends on starting point

REAL-WORLD CONNECTIONS:
- Line order in class, "Who is first in line?"
- Race finishing positions
- Floors in a building
- Days of the week (first day is Sunday/Monday)
- Story sequence (first, then, finally)', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ordinal Numbers' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- One More and One Less
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'One More and One Less' AND grade_level_min = 0),
  'One More One Less Topic Guide', 'Finding numbers that are one more or one less',
  'ONE MORE AND ONE LESS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 20 with accuracy
- Number recognition 0-20
- Understanding of more and less/fewer
- One-to-one correspondence

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find the number that is one more than a given number
2. Find the number that is one less than a given number
3. Use a number line to find one more/less
4. Apply concept to solve simple problems
5. Recognize patterns in one more/one less

KEY CONCEPTS:
- One more means adding 1 to the number
- One less means taking away 1 from the number
- Numbers have neighbors on both sides
- This builds foundation for addition and subtraction

COMMON MISCONCEPTIONS:
- Confusing one more with next when counting (skipping numbers)
- Difficulty with one less (harder than one more)
- Not connecting to number line position
- Saying "one less than 0" is a number

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"I have 5 blocks. Watch! I add one more. How many now? 6! Now I take one away. How many? 5!" Use manipulatives dramatically.

2. DIRECT INSTRUCTION (7 minutes):
Use a number line. "When we find one more, we move one space forward. When we find one less, we move one space back." Practice with numbers 1-10, pointing on number line.

3. GUIDED PRACTICE (8 minutes):
"Show me 4 fingers. Now show one more. How many? 5!" "Show 7 cubes. Take one away. How many left? 6!" Use ten frames for visual support.

4. INDEPENDENT APPLICATION (7 minutes):
Worksheet: Fill in one more and one less for given numbers. Number line hopping game. Partner practice with dice.

DIFFERENTIATION:

For Struggling Learners:
- Use manipulatives exclusively
- Focus on one more before one less
- Keep numbers within 0-10
- Provide number line for reference

For Advanced Learners:
- Extend to two more/two less
- Work with numbers to 100
- Create one more/less patterns
- Solve word problems

ASSESSMENT INDICATORS:
- Accurately states one more for numbers 0-19
- Accurately states one less for numbers 1-20
- Uses number line to verify answers
- Explains reasoning for answers', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'One More and One Less' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Number Sequences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Sequences' AND grade_level_min = 0),
  'Number Sequences Topic Guide', 'Fill in missing numbers in sequences',
  'NUMBER SEQUENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 20 forward and backward
- Number recognition 0-20
- One more and one less concept
- Understanding of patterns

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify missing numbers in a counting sequence
2. Fill in blanks in forward sequences
3. Fill in blanks in backward sequences
4. Recognize counting patterns
5. Extend number sequences

KEY CONCEPTS:
- Numbers follow a predictable order
- Missing numbers can be found by counting
- Sequences can go forward or backward
- Each number has specific neighbors

COMMON MISCONCEPTIONS:
- Skipping numbers when counting quickly
- Difficulty with backward sequences
- Not checking by counting from the beginning
- Confusing sequence order

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"1, 2, 3, __, 5! What''s missing? Hmm, let''s be number detectives and find the missing numbers!" Make it a mystery game.

2. DIRECT INSTRUCTION (7 minutes):
Write: 1, 2, __, 4, 5. "To find missing numbers, we count! 1, 2... what comes next? 3! Let''s check: 1, 2, 3, 4, 5. Yes!" Practice with multiple examples.

3. GUIDED PRACTICE (8 minutes):
Provide sequences with blanks. Students use number lines or counting to find missing numbers. Work as partners to check each other.

4. INDEPENDENT APPLICATION (7 minutes):
Complete sequence worksheets. Create their own sequence puzzles for classmates. Play "fill in the blank" game on whiteboard.

DIFFERENTIATION:

For Struggling Learners:
- Use number lines as reference
- Start with one missing number only
- Keep sequences within 1-10
- Use manipulatives to count

For Advanced Learners:
- Multiple missing numbers
- Sequences to 100
- Backward sequences
- Skip counting sequences

ASSESSMENT INDICATORS:
- Fills in single missing numbers accurately
- Completes sequences with multiple blanks
- Works with forward and backward sequences
- Creates own sequence puzzles', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Sequences' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Counting by Ones to 100
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting by Ones to 100' AND grade_level_min = 0),
  'Counting to 100 Topic Guide', 'Count forward from any number to 100',
  'COUNTING BY ONES TO 100 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 20 with fluency
- Number recognition to 20
- Understanding of tens and ones (basic)
- Counting from numbers other than 1

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count from 1 to 100 by ones
2. Count starting from any number to 100
3. Recognize decade patterns (20, 30, 40...)
4. Use a hundred chart for reference
5. Count objects to 100 with accuracy

KEY CONCEPTS:
- Numbers continue beyond 20 following patterns
- After 19 comes 20, after 29 comes 30, etc.
- Decade numbers (20, 30, 40) mark groups of ten
- The pattern repeats: 21, 22, 23... 31, 32, 33...

COMMON MISCONCEPTIONS:
- Difficulty at decade transitions (29 to 30)
- Skipping numbers in the teens
- Confusing similar-sounding numbers (15/50)
- Losing track when counting large groups

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"How high can you count? Can you count to 100? That''s like counting all your fingers TEN times! Let''s try!" Build excitement for the challenge.

2. DIRECT INSTRUCTION (10 minutes):
Use hundred chart. Point and count together, emphasizing decade transitions. "After 29, what comes? 30! It''s like starting over but with a 3 in front!" Chant in groups of 10.

3. GUIDED PRACTICE (10 minutes):
Count together stopping at decade numbers. Play "What comes next after __?" Practice counting from random starting points: "Start at 34 and count to 50."

4. INDEPENDENT APPLICATION (10 minutes):
Hundred chart fill-in activities. Counting collections (class gets 100 objects to count together). Counting exercise (jumping jacks to 100 by 10s).

DIFFERENTIATION:

For Struggling Learners:
- Focus on counting to 50 first
- Use hundred chart as constant reference
- Practice decade transitions specifically
- Count along with recordings

For Advanced Learners:
- Count backward from 100
- Count by 2s, 5s, 10s to 100
- Find patterns in hundred chart
- Extend beyond 100

ASSESSMENT INDICATORS:
- Counts to 100 with minimal errors
- Counts starting from various numbers
- Navigates decade transitions smoothly
- Uses hundred chart effectively', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting by Ones to 100' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- OPERATIONS EXPANDED TOPICS
-- ============================================================================

-- Number Bonds to 5
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Bonds to 5' AND grade_level_min = 0),
  'Number Bonds to 5 Topic Guide', 'Learn ways to make 5 using two numbers',
  'NUMBER BONDS TO 5 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 5 with accuracy
- Understanding of addition concept
- Combining groups of objects
- Part-part-whole understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Know all combinations that make 5
2. Use number bond diagrams
3. See 5 as composed of two parts
4. Recall bonds to 5 with fluency
5. Apply bonds to solve problems

KEY CONCEPTS:
- 5 can be made from: 0+5, 1+4, 2+3, 3+2, 4+1, 5+0
- The parts can switch places (commutative property)
- Number bonds show part-part-whole relationships
- Knowing bonds builds addition fluency

COMMON MISCONCEPTIONS:
- Thinking there is only one way to make 5
- Not recognizing switched pairs as the same
- Confusing the whole with the parts
- Not connecting to addition

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"I have 5 fingers on one hand. Watch! Some fingers stand up, some bend down. How many up? How many down? That''s a number bond!" Demonstrate different combinations.

2. DIRECT INSTRUCTION (8 minutes):
Use counters and a number bond mat. "5 is our whole. Let''s find all the ways to break it into two parts." Systematically find: 0+5, 1+4, 2+3. Record each bond.

3. GUIDED PRACTICE (8 minutes):
Students use two-color counters (5 total). Shake and spill. Record the bond. "I got 2 red and 3 yellow. 2 and 3 make 5!" Repeat to find all bonds.

4. INDEPENDENT APPLICATION (6 minutes):
Complete number bond diagrams. Draw pictures showing ways to make 5. Play "Make 5" card game.

DIFFERENTIATION:

For Struggling Learners:
- Use concrete manipulatives exclusively
- Focus on 2-3 bonds at a time
- Provide visual bond charts
- Use five frames for support

For Advanced Learners:
- Extend to number bonds to 10
- Write addition equations for bonds
- Find bonds with three parts
- Create bond word problems

ASSESSMENT INDICATORS:
- Recalls all bonds to 5
- Completes number bond diagrams
- Explains that parts make whole
- Applies bonds to addition', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Bonds to 5' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Number Bonds to 10
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Bonds to 10' AND grade_level_min = 0),
  'Number Bonds to 10 Topic Guide', 'Learn ways to make 10 using two numbers',
  'NUMBER BONDS TO 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Number bonds to 5
- Counting to 10 with fluency
- Ten frame familiarity
- Basic addition understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Know all combinations that make 10
2. Use ten frames to find bonds
3. Recall bonds to 10 with increasing fluency
4. Apply bonds in problem-solving
5. Recognize 10 as an important benchmark

KEY CONCEPTS:
- 10 can be made from: 0+10, 1+9, 2+8, 3+7, 4+6, 5+5
- Ten is a foundational number in our system
- Knowing bonds to 10 helps with larger calculations
- The rainbow pattern: 1+9, 2+8, 3+7, 4+6, 5+5

COMMON MISCONCEPTIONS:
- Overwhelming to learn all bonds at once
- Not seeing the pattern in bonds
- Forgetting 5+5 is special (doubles)
- Not connecting to subtraction

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show a ten frame with some filled. "How many more to make 10?" This visual shows bonds instantly. "10 is a super important number!"

2. DIRECT INSTRUCTION (10 minutes):
Build bonds systematically using ten frame. "1 red counter and... how many yellow to fill the frame? 9! 1 and 9 make 10." Create rainbow visual connecting pairs.

3. GUIDED PRACTICE (10 minutes):
Partner practice: One partner shows a number 0-10 with fingers, other shows how many more to make 10. Use "Make 10" game with cards.

4. INDEPENDENT APPLICATION (7 minutes):
Complete ten frame bond activities. Draw rainbow bonds poster. Practice bond flashcards.

DIFFERENTIATION:

For Struggling Learners:
- Use ten frames constantly
- Learn doubles first (5+5)
- Focus on 3-4 bonds at a time
- Use songs to memorize

For Advanced Learners:
- Extend to bonds beyond 10
- Connect to subtraction facts
- Mental math with making 10
- Word problems using bonds

ASSESSMENT INDICATORS:
- Recalls bonds to 10 within 3 seconds
- Uses ten frame to verify bonds
- Applies bonds in addition
- Explains the relationship between parts and whole', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Bonds to 10' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Missing Addends
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Missing Addends' AND grade_level_min = 0),
  'Missing Addends Topic Guide', 'Find the missing number in addition problems',
  'MISSING ADDENDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Number bonds to 5 and 10
- Understanding of addition
- Part-part-whole concept
- Counting on strategy

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find missing addends in equations like 3 + __ = 5
2. Use manipulatives to find unknowns
3. Apply number bonds to solve
4. Understand the unknown can be in different positions
5. Connect to subtraction concepts

KEY CONCEPTS:
- An unknown addend can be found using known parts
- Number bonds help solve missing addend problems
- Counting on from the known part finds the missing part
- The unknown can appear: __ + 3 = 5 or 3 + __ = 5

COMMON MISCONCEPTIONS:
- Adding the two given numbers instead
- Not understanding what the blank means
- Difficulty when blank is first: __ + 3 = 5
- Not checking answer makes sense

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"I have some cookies. I need 5 total. I have 2 cookies. How many more do I need?" Use real objects to make it concrete and interesting.

2. DIRECT INSTRUCTION (8 minutes):
Use part-part-whole mat. "The whole is 5. One part is 3. What is the other part?" Show multiple representations: 3 + __ = 5, __ + 3 = 5.

3. GUIDED PRACTICE (10 minutes):
Use counters to solve missing addend problems. Cover part of a number bond. "2 + __ = 7. Let''s count on from 2: 3, 4, 5, 6, 7. We counted 5 more! 2 + 5 = 7."

4. INDEPENDENT APPLICATION (7 minutes):
Worksheet with missing addend problems. Balance scale activities. Partner quiz games.

DIFFERENTIATION:

For Struggling Learners:
- Use manipulatives for every problem
- Sums to 5 only
- Missing addend always second: 2 + __ = 5
- Draw pictures to solve

For Advanced Learners:
- Sums to 20
- Missing addend in any position
- Connect to subtraction equations
- Word problem contexts

ASSESSMENT INDICATORS:
- Solves missing addend problems accurately
- Uses counting on or bonds strategy
- Works with blank in any position
- Explains solving strategy', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Missing Addends' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Comparing Sums
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Sums' AND grade_level_min = 0),
  'Comparing Sums Topic Guide', 'Compare addition results to determine greater or less',
  'COMPARING SUMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Addition within 10
- Comparing numbers (greater, less, equal)
- Understanding of comparison symbols
- Addition fluency developing

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Add two numbers and compare the sums
2. Determine which sum is greater or less
3. Use comparison symbols with sums
4. Explain reasoning for comparisons
5. Estimate before calculating

KEY CONCEPTS:
- We can compare sums without knowing the exact answers
- Larger addends often (but not always) make larger sums
- We must calculate before comparing
- Equal sums are possible with different addends

COMMON MISCONCEPTIONS:
- Comparing addends instead of sums
- Not calculating before comparing
- Thinking larger first number means larger sum
- Difficulty with equal sums from different expressions

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Team A has 2 + 3 points. Team B has 1 + 4 points. Which team is winning?" Create a competitive context that motivates comparison.

2. DIRECT INSTRUCTION (8 minutes):
"To compare sums, first we ADD, then we COMPARE." Model: 2 + 5 vs 3 + 3. Calculate each, then compare. "7 is greater than 6, so 2 + 5 > 3 + 3."

3. GUIDED PRACTICE (10 minutes):
Students work with partner. Each draws two number cards, makes addition problem. Compare sums. Record with symbols. Discuss surprising results.

4. INDEPENDENT APPLICATION (7 minutes):
Worksheet comparing sums. Circle the greater sum activity. Create own comparison problems.

DIFFERENTIATION:

For Struggling Learners:
- Use cubes to build each sum
- Sums to 5 only
- Calculate one at a time
- Provide comparison mat

For Advanced Learners:
- Sums to 20
- Three-way comparisons
- Predict before calculating
- Find expressions with equal sums

ASSESSMENT INDICATORS:
- Accurately calculates both sums
- Correctly compares using symbols
- Explains comparison reasoning
- Recognizes when sums are equal', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Sums' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SKIP COUNTING TOPICS
-- ============================================================================

-- Skip Counting by 2s
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 2s' AND grade_level_min = 0),
  'Skip Counting by 2s Topic Guide', 'Count by 2s: 2, 4, 6, 8, 10 and beyond',
  'SKIP COUNTING BY 2s - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting by 1s to 20
- Understanding of "more" and patterns
- Ability to recognize even numbers
- Basic number sequence understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Skip count by 2s from 2 to 20
2. Extend skip counting to 100
3. Recognize the pattern in counting by 2s
4. Apply skip counting to count pairs
5. Connect to concept of even numbers

KEY CONCEPTS:
- Counting by 2s means adding 2 each time
- All numbers when counting by 2s are even
- Skip counting is faster than counting by 1s
- Pattern: 2, 4, 6, 8, 10... ends in 0, 2, 4, 6, 8

COMMON MISCONCEPTIONS:
- Mixing up with counting by 1s
- Stopping at 10 or 20
- Not recognizing the pattern
- Starting from 1 instead of 2

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Line up students in pairs. Count the pairs: "One pair, two pairs, three pairs..." Now count the people: "2, 4, 6, 8!" Make it physical and fun.

2. DIRECT INSTRUCTION (7 minutes):
Use hundred chart, color every second number. "Watch the pattern! 2, 4, 6, 8, 10. We skip every other number!" Chant together with rhythm.

3. GUIDED PRACTICE (8 minutes):
Count pairs of objects: shoes, mittens, socks. "How many socks for 5 people? Let''s count by 2s!" Use hopping on number line by 2s.

4. INDEPENDENT APPLICATION (7 minutes):
Color by 2s worksheet. Count objects grouped in pairs. Skip counting songs and games.

DIFFERENTIATION:

For Struggling Learners:
- Focus on 2 to 10 first
- Always use pairs of objects
- Hundred chart with 2s highlighted
- Repeat chants daily

For Advanced Learners:
- Skip count to 100 by 2s
- Start from numbers other than 2
- Count backward by 2s
- Connect to even numbers concept

ASSESSMENT INDICATORS:
- Counts by 2s to 20 fluently
- Recognizes pattern continues
- Uses skip counting for pair problems
- Identifies numbers in the sequence', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 2s' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Skip Counting by 5s
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 5s' AND grade_level_min = 0),
  'Skip Counting by 5s Topic Guide', 'Count by 5s: 5, 10, 15, 20 and beyond',
  'SKIP COUNTING BY 5s - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting by 1s to 50
- Skip counting by 2s developing
- Recognizing patterns
- Groups of 5 (like fingers)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Skip count by 5s from 5 to 50
2. Extend skip counting to 100
3. Recognize the 5, 10, 15, 20 pattern
4. Count groups of 5 efficiently
5. Connect to nickel counting

KEY CONCEPTS:
- Counting by 5s means adding 5 each time
- Pattern alternates: 5, 0, 5, 0 in ones place
- Skip counting by 5s is related to telling time
- Hands have 5 fingers - natural grouping

COMMON MISCONCEPTIONS:
- Missing numbers in sequence (especially teens)
- Confusing with counting by 2s
- Not seeing the 5, 0 pattern
- Stopping at 50

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"How many fingers does everyone at your table have? Let''s count by 5s!" Count hands around the room. Make it interactive.

2. DIRECT INSTRUCTION (7 minutes):
Use hundred chart, color 5s pattern. "5, 10, 15, 20... look! The pattern is 5, 0, 5, 0 at the end!" Use hand movements - one hand for each 5.

3. GUIDED PRACTICE (8 minutes):
Count nickels (play money). "Each nickel is 5 cents. 5, 10, 15, 20..." Count tally marks in groups of 5. Practice with movement.

4. INDEPENDENT APPLICATION (7 minutes):
Connect dots by 5s activities. Count objects in groups of 5. Fill in missing numbers in 5s sequence.

DIFFERENTIATION:

For Struggling Learners:
- Use hands as constant reference
- Focus on 5 to 30 first
- Hundred chart always visible
- Physical counting (jumps, claps)

For Advanced Learners:
- Skip count to 100 and beyond
- Start from different numbers
- Count backward by 5s
- Connect to clock counting

ASSESSMENT INDICATORS:
- Counts by 5s to 50 fluently
- Continues pattern beyond 50
- Identifies missing numbers in sequence
- Applies to counting problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 5s' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Skip Counting by 10s
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 10s' AND grade_level_min = 0),
  'Skip Counting by 10s Topic Guide', 'Count by 10s: 10, 20, 30 up to 100',
  'SKIP COUNTING BY 10s - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 100 developing
- Skip counting by 5s
- Understanding of ten as a group
- Ten frame familiarity

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Skip count by 10s from 10 to 100
2. Recognize decade numbers
3. Count groups of 10 efficiently
4. Connect to place value concepts
5. Use skip counting for larger quantities

KEY CONCEPTS:
- Counting by 10s: 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
- All decade numbers end in 0
- Ten 10s make 100
- Skip counting by 10s is the fastest skip count

COMMON MISCONCEPTIONS:
- Difficulty with -ty pronunciation (fifty, not fivety)
- Forgetting 100 comes after 90
- Not connecting to groups of 10 objects
- Confusing decade names

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"We can count to 100 really fast! Watch: 10, 20, 30, 40, 50, 60, 70, 80, 90, 100! You try!" Build excitement for the speed.

2. DIRECT INSTRUCTION (5 minutes):
Display ten frames filled with 10. Stack them. Count: "10, 20, 30..." Show how each ten frame is one "jump." "All these numbers end in 0!"

3. GUIDED PRACTICE (8 minutes):
Count dimes (play money). Count bundles of 10 straws. March around room counting each step as 10. "10, 20, 30..."

4. INDEPENDENT APPLICATION (7 minutes):
Fill in decade numbers on number line. Count objects in groups of 10. Decade number ordering activities.

DIFFERENTIATION:

For Struggling Learners:
- Use physical bundles of 10
- Focus on 10-50 first
- Practice decade names
- Use songs and chants

For Advanced Learners:
- Count beyond 100 by 10s
- Start from non-decade numbers
- Count backward by 10s
- Solve problems: "How many 10s in 70?"

ASSESSMENT INDICATORS:
- Counts by 10s to 100 fluently
- Names decade numbers correctly
- Counts groups of 10 objects
- Recognizes pattern of 0s', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 10s' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Skip Counting Patterns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting Patterns' AND grade_level_min = 0),
  'Skip Counting Patterns Topic Guide', 'Recognize and continue skip counting patterns',
  'SKIP COUNTING PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Skip counting by 2s, 5s, and 10s
- Pattern recognition basics
- Number sequence understanding
- Hundred chart familiarity

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify patterns in skip counting sequences
2. Recognize visual patterns on hundred chart
3. Continue skip counting patterns
4. Compare different skip counting patterns
5. Predict numbers in a sequence

KEY CONCEPTS:
- Skip counting creates predictable patterns
- Patterns can be seen visually on hundred chart
- Different skip counts create different patterns
- Patterns help us predict and check our counting

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show hundred chart with 2s colored. "What pattern do you see?" Show 5s colored. "Now what pattern?" Students notice different designs.

2. DIRECT INSTRUCTION (7 minutes):
Compare colored patterns on hundred chart. "When we count by 2s, we color every other number. When we count by 5s, we color a zigzag!" Discuss visual patterns.

3. GUIDED PRACTICE (8 minutes):
Give students hundred charts to color their own patterns. Identify the skip count from a pattern. Play "What comes next?" with sequences.

4. INDEPENDENT APPLICATION (7 minutes):
Pattern matching activities. Continue the sequence worksheets. Create own skip counting patterns.

DIFFERENTIATION:

For Struggling Learners:
- Focus on one pattern at a time
- Pre-colored hundred charts
- Identify rather than create
- Use one skip count type per session

For Advanced Learners:
- Compare multiple patterns
- Identify skip count from pattern alone
- Create patterns for others to guess
- Explore patterns for 3s, 4s

ASSESSMENT INDICATORS:
- Identifies skip count type from pattern
- Continues patterns accurately
- Describes patterns verbally
- Creates valid patterns', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting Patterns' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Skip Counting on Number Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting on Number Lines' AND grade_level_min = 0),
  'Skip Counting Number Lines Topic Guide', 'Use number lines to skip count',
  'SKIP COUNTING ON NUMBER LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Skip counting by 2s, 5s, 10s
- Number line familiarity
- Left to right progression
- Number ordering

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Represent skip counting with hops on number line
2. Draw jumps to show skip counting
3. Use number lines to verify skip counting
4. Visualize addition through jumps
5. Connect number line to calculation

KEY CONCEPTS:
- Each jump represents adding the skip count number
- Jumps are equal sized for each skip count
- Number lines show the sequence visually
- Bigger jumps mean bigger skip counts

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Create floor number line with tape. "Let''s be frogs! We hop by 2s!" Students hop on numbers: 2, 4, 6, 8...

2. DIRECT INSTRUCTION (7 minutes):
Draw number line on board. Show jumps of 2: arcs from 0 to 2, 2 to 4, etc. "Each jump is +2!" Repeat for 5s and 10s, showing different sized jumps.

3. GUIDED PRACTICE (8 minutes):
Students draw skip count jumps on number lines. Match jump patterns to skip count type. Use toy animals to hop on desk number lines.

4. INDEPENDENT APPLICATION (7 minutes):
Complete jump number line worksheets. Create own number line with jumps. Solve: "If I start at 0 and make 4 jumps of 5, where do I land?"

DIFFERENTIATION:

For Struggling Learners:
- Use physical number lines
- Focus on jumps of 2
- Pre-marked landing spots
- Trace jump arcs

For Advanced Learners:
- Open number lines
- Mix different jump sizes
- Backward jumps
- Word problems with number lines

ASSESSMENT INDICATORS:
- Draws accurate jump sequences
- Identifies skip count from jumps
- Uses number line to check counting
- Explains connection to addition', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting on Number Lines' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Skip Counting Backwards
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting Backwards' AND grade_level_min = 0),
  'Skip Counting Backwards Topic Guide', 'Count backwards by 2s, 5s, and 10s',
  'SKIP COUNTING BACKWARDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Skip counting forward by 2s, 5s, 10s
- Counting backward by 1s
- Number sequence understanding
- Subtraction concept developing

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Skip count backward by 10s from 100
2. Skip count backward by 5s from 50
3. Skip count backward by 2s from 20
4. Connect backward counting to subtraction
5. Apply to countdown situations

KEY CONCEPTS:
- Counting backward means subtracting each time
- Same patterns, opposite direction
- More challenging than forward counting
- Useful for subtraction and counting down

COMMON MISCONCEPTIONS:
- Mixing forward and backward sequences
- Skipping numbers or going to wrong number
- Difficulty starting from non-decade numbers
- Not connecting to subtraction

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Blast off countdown! 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, BLAST OFF!" Now: "Let''s try counting back by 10s from 100!" Make it exciting.

2. DIRECT INSTRUCTION (8 minutes):
Start with 10s from 100: "100, 90, 80, 70, 60, 50, 40, 30, 20, 10, 0!" Use hundred chart, go backwards. "We''re taking away 10 each time."

3. GUIDED PRACTICE (10 minutes):
Practice each skip count backward. Use number line with backward jumps. Play "Countdown" games with different starting points.

4. INDEPENDENT APPLICATION (7 minutes):
Fill in backward sequences. Countdown activities. Match forward and backward sequences.

DIFFERENTIATION:

For Struggling Learners:
- Start with 10s only
- Use number line support
- Shorter sequences
- Say forward first, then backward

For Advanced Learners:
- Start from any number
- Mix skip count types
- Backward from 100 by 2s
- Connect to subtraction facts

ASSESSMENT INDICATORS:
- Counts backward by 10s from 100
- Counts backward by 5s from 50
- Counts backward by 2s from 20
- Explains connection to subtraction', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting Backwards' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TIME AND CALENDAR TOPICS
-- ============================================================================

-- Clock Parts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Clock Parts' AND grade_level_min = 0),
  'Clock Parts Topic Guide', 'Learn about hour hand, minute hand, and clock face',
  'CLOCK PARTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Number recognition to 12
- Understanding of "hand" vocabulary
- Fine motor skills for pointing
- Circle shape recognition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the clock face and numbers
2. Distinguish the hour hand from minute hand
3. Know the hour hand is shorter
4. Know the minute hand is longer
5. Understand hands move around the clock

KEY CONCEPTS:
- Clocks have two hands: hour and minute
- The short hand shows the hour
- The long hand shows the minutes
- Numbers 1-12 go around the clock
- Hands move in one direction (clockwise)

COMMON MISCONCEPTIONS:
- Confusing which hand is which
- Not noticing the length difference
- Thinking numbers go beyond 12
- Not knowing direction hands move

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show a large demonstration clock. "Clocks help us know when to do things! When do we eat lunch? The clock tells us!" Build relevance.

2. DIRECT INSTRUCTION (7 minutes):
"This is the clock face - it''s like the clock''s body. See the numbers 1, 2, 3... up to 12. These are the hands." Compare hand lengths. "Short hand = hour, Long hand = minutes."

3. GUIDED PRACTICE (8 minutes):
Students point to parts as named. Play "Simon Says" with clock parts. Make clock with paper plate - add hands.

4. INDEPENDENT APPLICATION (7 minutes):
Label clock parts worksheet. Build own paper plate clock. Clock parts matching game.

DIFFERENTIATION:

For Struggling Learners:
- Focus on numbers and face first
- Add hands concept separately
- Use color-coded hands
- Large manipulative clocks

For Advanced Learners:
- Introduce clockwise direction
- Begin matching hands to times
- Discuss digital clocks too
- Second hand concept

ASSESSMENT INDICATORS:
- Points to clock face when asked
- Identifies hour hand correctly
- Identifies minute hand correctly
- Knows numbers 1-12 on clock', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Clock Parts' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Time to the Hour
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Time to the Hour' AND grade_level_min = 0),
  'Time to Hour Topic Guide', 'Tell time when the minute hand is on 12',
  'TIME TO THE HOUR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Clock parts knowledge
- Number recognition to 12
- Understanding of short and long hands
- Counting sequence to 12

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read time when minute hand is on 12
2. State time as "___ o''clock"
3. Set a clock to show hour times
4. Connect hour times to daily activities
5. Write times in digital format

KEY CONCEPTS:
- When minute hand points to 12, it is "o''clock"
- The hour hand points to the hour number
- O''clock means "on the clock" or exact hour
- Times relate to our daily schedule

COMMON MISCONCEPTIONS:
- Looking at wrong hand for the hour
- Not noticing minute hand must be on 12
- Confusing similar looking positions
- Thinking 12 o''clock is midnight only

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"We eat lunch at 12 o''clock. What does that look like on a clock?" Show the clock. "Let''s learn to read these special times!"

2. DIRECT INSTRUCTION (8 minutes):
"When the long hand points straight up to 12, we look at the short hand. It tells us the hour!" Model several times. "Short hand on 3, long hand on 12 = 3 o''clock!"

3. GUIDED PRACTICE (10 minutes):
Students read times on demonstration clock. Set clocks to given hour times. Match clock faces to digital times.

4. INDEPENDENT APPLICATION (7 minutes):
Time matching worksheets. Draw hands for given times. Connect activities to times.

DIFFERENTIATION:

For Struggling Learners:
- Always emphasize "long hand on 12"
- Focus on a few hours at a time
- Use color-coded hands
- Daily schedule connections

For Advanced Learners:
- Introduce half hour times
- AM vs PM discussion
- Write digital times
- Calculate time differences

ASSESSMENT INDICATORS:
- Reads o''clock times accurately
- Sets clock to hour times
- States time using "o''clock"
- Connects times to activities', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Time to the Hour' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Time to the Half Hour
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Time to the Half Hour' AND grade_level_min = 0),
  'Time to Half Hour Topic Guide', 'Tell time when the minute hand is on 6',
  'TIME TO THE HALF HOUR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Time to the hour mastery
- Clock parts knowledge
- Understanding of "half"
- Number recognition on clock

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read time when minute hand is on 6
2. State time as "half past ___" or "___ thirty"
3. Notice hour hand is between numbers
4. Set clock to half hour times
5. Write times as ___:30

KEY CONCEPTS:
- When minute hand points to 6, it is half past
- Half past means 30 minutes after the hour
- The hour hand is between two numbers at half past
- Two ways to say it: "half past 3" or "3:30"

COMMON MISCONCEPTIONS:
- Reading the hour wrong when hand is between numbers
- Not recognizing minute hand on 6 means :30
- Confusing which hour it is half past
- Thinking hour hand stays on exact number

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"At half past 2, we have recess! But what does half past look like?" Show clock. "The long hand went halfway around!"

2. DIRECT INSTRUCTION (10 minutes):
"When long hand points to 6, it''s half past. The short hand is now BETWEEN numbers." Show the hour hand movement. "It''s half past the number it just passed."

3. GUIDED PRACTICE (10 minutes):
Practice reading half hour times. Compare hour to half hour positions. Set clocks to half hour. Mix hour and half hour practice.

4. INDEPENDENT APPLICATION (7 minutes):
Matching half hour clocks to times. Draw hands for half hour times. Daily schedule with half hours.

DIFFERENTIATION:

For Struggling Learners:
- Emphasize minute hand on 6
- Practice hour hand "between" concept
- Use "half past" language primarily
- Compare to o''clock times

For Advanced Learners:
- Mix hour and half hour practice
- Introduce :15 and :45 times
- Digital clock emphasis
- Time elapsed problems

ASSESSMENT INDICATORS:
- Reads half hour times accurately
- Sets clock to half hour times
- Uses both "half past" and ":30"
- Distinguishes from o''clock times', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Time to the Half Hour' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Days of the Week
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Days of the Week' AND grade_level_min = 0),
  'Days of Week Topic Guide', 'Name and order the seven days of the week',
  'DAYS OF THE WEEK - TOPIC TEACHING GUIDE

PREREQUISITES:
- Sequencing understanding
- First, next, last concepts
- Verbal memory for lists
- Calendar exposure

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Name all seven days in order
2. Identify today, yesterday, tomorrow
3. Recognize weekend vs weekday
4. Spell day names
5. Connect days to weekly activities

KEY CONCEPTS:
- There are 7 days in a week
- Days follow a repeating cycle
- Weekend: Saturday, Sunday. Weekdays: Mon-Fri
- Each day has specific activities

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"What day is today? What do we do today?" Sing a days of the week song to a familiar tune.

2. DIRECT INSTRUCTION (7 minutes):
Show days on calendar row. Chant days with motions. "Sunday starts the week on the calendar. Then Monday, Tuesday..." Connect to activities.

3. GUIDED PRACTICE (8 minutes):
Order day cards. Play "What comes after Tuesday?" Find today on classroom calendar. Identify weekend days.

4. INDEPENDENT APPLICATION (7 minutes):
Days of week puzzles. Match days to activities. Complete missing day sequences.

DIFFERENTIATION:

For Struggling Learners:
- Daily calendar routine
- Song with motions
- Focus on today/tomorrow first
- Visual day cards

For Advanced Learners:
- Spelling day names
- Days before/after questions
- Count days between dates
- Create weekly schedule

ASSESSMENT INDICATORS:
- Recites days in order
- Identifies today/yesterday/tomorrow
- Distinguishes weekdays from weekend
- Uses days in context', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Days of the Week' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Months of the Year
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Months of the Year' AND grade_level_min = 0),
  'Months of Year Topic Guide', 'Name and order the twelve months',
  'MONTHS OF THE YEAR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Days of the week
- Sequencing skills
- Counting to 12
- Season awareness

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Name all twelve months in order
2. Identify current month
3. Know their birthday month
4. Connect months to seasons and holidays
5. Locate months on calendar

KEY CONCEPTS:
- There are 12 months in a year
- Months follow a repeating yearly cycle
- Months have different numbers of days
- Seasons span multiple months

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"What month is it right now? What special things happen this month?" Share birthday month chart.

2. DIRECT INSTRUCTION (8 minutes):
Sing months song. Show calendar pages flipping. Connect months to seasons. "January is cold, July is hot!"

3. GUIDED PRACTICE (8 minutes):
Order month cards. Match months to holidays/events. Find classmates'' birthday months. Current month activities.

4. INDEPENDENT APPLICATION (7 minutes):
Month sequencing puzzles. Month and season matching. Personal timeline: "In September I started school..."

DIFFERENTIATION:

For Struggling Learners:
- Songs with motions
- Focus on current month first
- Season grouping
- Birthday month emphasis

For Advanced Learners:
- Days in each month
- Abbreviations
- "What month comes 3 after March?"
- Historical dates

ASSESSMENT INDICATORS:
- Recites months in order
- Identifies current month
- Connects months to seasons
- Knows own birthday month', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Months of the Year' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Reading a Calendar
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reading a Calendar' AND grade_level_min = 0),
  'Reading Calendar Topic Guide', 'Find dates and special days on a calendar',
  'READING A CALENDAR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Days of the week
- Months of the year
- Number recognition to 31
- Left-to-right reading

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find specific dates on a calendar
2. Identify the day of week for any date
3. Locate holidays and special events
4. Count days to upcoming events
5. Read the month and year

KEY CONCEPTS:
- Calendar grid: rows are weeks, columns are days
- Each box is one day
- Reading left to right, then next row
- Numbers show date within month

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"When is our next field trip? Let''s find it on the calendar!" Show classroom calendar.

2. DIRECT INSTRUCTION (8 minutes):
Explain calendar layout. "Days go across. This column is always Monday." Find today, count to next Friday.

3. GUIDED PRACTICE (10 minutes):
Find dates on calendar. Answer: "What day of the week is the 15th?" Count days until events. Mark special dates.

4. INDEPENDENT APPLICATION (7 minutes):
Calendar scavenger hunt. Mark personal events. Answer calendar questions.

DIFFERENTIATION:

For Struggling Learners:
- Large format calendars
- One month at a time
- Today marker
- Guided finger tracing

For Advanced Learners:
- Multi-month questions
- Days until calculations
- Create own calendar
- Year comparison

ASSESSMENT INDICATORS:
- Locates specific dates
- Identifies day for any date
- Counts days between dates
- Reads month/year information', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading a Calendar' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Yesterday Today Tomorrow
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Yesterday Today Tomorrow' AND grade_level_min = 0),
  'Yesterday Today Tomorrow Topic Guide', 'Understand time words for days',
  'YESTERDAY TODAY TOMORROW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Days of the week
- Before and after concepts
- Sequence understanding
- Present/past/future awareness

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define yesterday, today, tomorrow
2. Name the day for each time word
3. Use time words in context
4. Understand the relationship between these days
5. Apply to personal experiences

KEY CONCEPTS:
- Today is the current day
- Yesterday was the day before today
- Tomorrow will be the day after today
- These words describe relative time

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Today is ___. What did you do yesterday? What will you do tomorrow?" Personal connection to time words.

2. DIRECT INSTRUCTION (7 minutes):
Use three-day visual. "Yesterday was behind us, today is now, tomorrow is ahead." Practice with day names.

3. GUIDED PRACTICE (8 minutes):
Daily calendar routine with time words. "If today is Tuesday, yesterday was...? Tomorrow will be...?"

4. INDEPENDENT APPLICATION (7 minutes):
Complete sentences: "Yesterday I ___. Tomorrow I will ___." Time words matching. Journal writing.

DIFFERENTIATION:

For Struggling Learners:
- Consistent daily routine
- Visual three-day chart
- Focus on today first
- Personal examples

For Advanced Learners:
- Two days ago/from now
- Days of week calculations
- Time word stories
- Extended past/future

ASSESSMENT INDICATORS:
- Uses time words correctly
- Names day for yesterday/tomorrow
- Applies to personal events
- Understands relative meaning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Yesterday Today Tomorrow' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Morning Afternoon Evening
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Morning Afternoon Evening' AND grade_level_min = 0),
  'Parts of Day Topic Guide', 'Distinguish parts of the day',
  'MORNING AFTERNOON EVENING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Daily routine awareness
- Sequence understanding
- Time concept developing
- Sun position awareness

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Name three parts of the day
2. Match activities to time of day
3. Sequence morning, afternoon, evening, night
4. Relate to sun position
5. Use time-of-day words correctly

KEY CONCEPTS:
- Days are divided into parts
- Morning: wake up to noon
- Afternoon: noon to evening
- Evening: dinner time to bedtime
- Night: sleeping time

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"What did you do this morning before school? What will you do this evening?" Connect to daily life.

2. DIRECT INSTRUCTION (7 minutes):
Show sun path visual. "Morning: sun rises. Afternoon: sun is high. Evening: sun sets. Night: dark." Match activities.

3. GUIDED PRACTICE (8 minutes):
Sort activity cards into time of day. Create daily schedule. Play "When do you...?" game.

4. INDEPENDENT APPLICATION (7 minutes):
Draw activity for each time. Complete sentences about daily routine. Time of day matching.

DIFFERENTIATION:

For Struggling Learners:
- Focus on two parts first
- Use familiar activities
- Sun position pictures
- Daily routine chart

For Advanced Learners:
- Connect to clock times
- AM/PM introduction
- Compare daily routines
- Weekend vs weekday differences

ASSESSMENT INDICATORS:
- Names parts of day in order
- Matches activities correctly
- Uses vocabulary appropriately
- Connects to sun position', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Morning Afternoon Evening' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Continue with more topics...
-- This file continues with all remaining K Math expanded topics

-- ============================================================================
-- MONEY BASICS TOPICS
-- ============================================================================

-- Identifying Coins
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Identifying Coins' AND grade_level_min = 0),
  'Identifying Coins Topic Guide', 'Recognize penny, nickel, dime, and quarter',
  'IDENTIFYING COINS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Color recognition
- Size comparison skills
- Matching abilities
- Fine motor development

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify a penny by appearance
2. Identify a nickel by appearance
3. Identify a dime by appearance
4. Identify a quarter by appearance
5. Sort mixed coins by type

KEY CONCEPTS:
- Each coin has unique size, color, and images
- Penny: copper colored, smallest value
- Nickel: silver, larger than penny
- Dime: silver, smallest size
- Quarter: silver, largest

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show a handful of real coins. "These are coins! We use them to buy things. Each one is different!"

2. DIRECT INSTRUCTION (8 minutes):
Introduce one coin at a time. "This is a penny. It''s copper colored - that means brownish orange." Describe size, color, images for each.

3. GUIDED PRACTICE (10 minutes):
Coin sorting activities. Coin matching games. "Find all the pennies in this pile."

4. INDEPENDENT APPLICATION (7 minutes):
Coin identification worksheets. Coin rubbing art. Coin sorting centers.

DIFFERENTIATION:

For Struggling Learners:
- Focus on two coins at a time
- Use real coins for tactile learning
- Emphasize color differences first
- Sorting by one attribute

For Advanced Learners:
- Identify front and back images
- Learn coin names (Lincoln, Jefferson)
- Begin value introduction
- Mixed coin identification

ASSESSMENT INDICATORS:
- Identifies coins by name
- Describes coin characteristics
- Sorts coins accurately
- Distinguishes similar coins', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Identifying Coins' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Penny Value
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Penny Value' AND grade_level_min = 0),
  'Penny Value Topic Guide', 'Understand a penny is worth 1 cent',
  'PENNY VALUE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Penny identification
- Counting to 10
- One-to-one correspondence
- Concept of worth/value

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Know a penny is worth 1 cent
2. Count pennies to find total value
3. Understand the cent symbol (¢)
4. Use pennies in simple transactions
5. Connect penny counting to regular counting

KEY CONCEPTS:
- One penny = one cent = 1¢
- Counting pennies is like counting by 1s
- Cents measure money value
- Pennies are the smallest value coin

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"If I have 5 pennies, how much money is that?" Count together. "1 cent, 2 cents, 3 cents, 4 cents, 5 cents!"

2. DIRECT INSTRUCTION (7 minutes):
"Each penny is worth 1 cent. We write cents with this symbol: ¢" Practice counting pennies, emphasizing each is 1 cent.

3. GUIDED PRACTICE (10 minutes):
Count penny collections. Play store with penny prices. Match penny amounts to cent values.

4. INDEPENDENT APPLICATION (7 minutes):
Counting pennies worksheets. Penny value matching. Simple "buying" activities.

DIFFERENTIATION:

For Struggling Learners:
- Amounts to 5¢ only
- One-to-one counting emphasis
- Real pennies to touch
- Simple matching

For Advanced Learners:
- Count to 100 pennies
- Written cent notation
- Compare penny amounts
- Simple addition with pennies

ASSESSMENT INDICATORS:
- States penny value as 1 cent
- Counts pennies accurately
- Writes amounts with ¢
- Uses pennies in transactions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Penny Value' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Nickel Value
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Nickel Value' AND grade_level_min = 0),
  'Nickel Value Topic Guide', 'Understand a nickel is worth 5 cents',
  'NICKEL VALUE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Penny value knowledge
- Skip counting by 5s
- Nickel identification
- Coin value concept

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Know a nickel is worth 5 cents
2. Count nickels using skip counting
3. Understand nickel = 5 pennies
4. Count mixed nickels and pennies
5. Apply to simple money problems

KEY CONCEPTS:
- One nickel = 5 cents = 5¢
- Counting nickels uses skip counting by 5s
- 1 nickel = 5 pennies (equivalence)
- Nickels are more efficient than pennies

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"A nickel is worth 5 cents! That''s like 5 pennies in one coin!" Show equivalence with real coins.

2. DIRECT INSTRUCTION (8 minutes):
Count nickels: "5, 10, 15, 20..." Connect to skip counting by 5s. Show 5 pennies = 1 nickel trade.

3. GUIDED PRACTICE (10 minutes):
Trade 5 pennies for nickel activities. Count nickel collections. Compare penny and nickel amounts.

4. INDEPENDENT APPLICATION (7 minutes):
Nickel counting worksheets. Trading games. Simple purchase problems with nickels.

DIFFERENTIATION:

For Struggling Learners:
- Emphasize 5 pennies = 1 nickel
- Use skip counting supports
- Focus on 1-3 nickels
- Visual equivalence charts

For Advanced Learners:
- Count many nickels
- Mix nickels and pennies
- Calculate "how many more"
- Word problems

ASSESSMENT INDICATORS:
- States nickel value as 5 cents
- Counts nickels by 5s
- Trades pennies for nickels
- Solves nickel problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Nickel Value' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Dime Value
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dime Value' AND grade_level_min = 0),
  'Dime Value Topic Guide', 'Understand a dime is worth 10 cents',
  'DIME VALUE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Penny and nickel values
- Skip counting by 10s
- Dime identification
- Equivalence understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Know a dime is worth 10 cents
2. Count dimes using skip counting by 10s
3. Understand dime = 10 pennies = 2 nickels
4. Recognize dime is small but valuable
5. Count mixed coins including dimes

KEY CONCEPTS:
- One dime = 10 cents = 10¢
- Counting dimes uses skip counting by 10s
- Dime is smallest but worth more than penny or nickel
- 1 dime = 10 pennies = 2 nickels

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"The dime is tiny but mighty! It''s worth 10 cents!" Show size comparison with equivalences.

2. DIRECT INSTRUCTION (8 minutes):
Count dimes: "10, 20, 30, 40..." Connect to skip counting by 10s. Demonstrate equivalences. Discuss size vs value.

3. GUIDED PRACTICE (10 minutes):
Dime trading activities. Count dime collections. Compare dime to penny/nickel amounts.

4. INDEPENDENT APPLICATION (7 minutes):
Dime counting practice. Value matching games. Mixed coin activities.

DIFFERENTIATION:

For Struggling Learners:
- Focus on dime = 10 pennies
- Use 10s counting supports
- Limited coin amounts
- Visual equivalence charts

For Advanced Learners:
- Count many dimes
- Mix all three coins
- More/less than comparisons
- Multi-step problems

ASSESSMENT INDICATORS:
- States dime value as 10 cents
- Counts dimes by 10s
- Explains equivalences
- Compares coin values', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dime Value' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Quarter Value
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quarter Value' AND grade_level_min = 0),
  'Quarter Value Topic Guide', 'Understand a quarter is worth 25 cents',
  'QUARTER VALUE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Penny, nickel, dime values
- Counting to 25
- Quarter identification
- Skip counting developing

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Know a quarter is worth 25 cents
2. Understand quarter is the most valuable common coin
3. Know basic equivalences (25 pennies, 5 nickels)
4. Count by 25s for multiple quarters
5. Recognize quarter in transactions

KEY CONCEPTS:
- One quarter = 25 cents = 25¢
- Quarter is largest and most valuable common coin
- 4 quarters = 1 dollar (introduction)
- "Quarter" means one-fourth

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"The quarter is the champion coin! It''s worth 25 cents!" Show how it compares to other coins.

2. DIRECT INSTRUCTION (8 minutes):
Introduce quarter value. Show equivalences: 25 pennies = 1 quarter. Count by 25s: "25, 50, 75, 100!" Connect to dollar.

3. GUIDED PRACTICE (10 minutes):
Quarter trading activities. Count quarters. Compare quarter to other coin combinations.

4. INDEPENDENT APPLICATION (7 minutes):
Quarter value activities. Coin comparison worksheets. Simple shopping scenarios.

DIFFERENTIATION:

For Struggling Learners:
- Focus on quarter = 25 pennies visual
- 1-2 quarters only
- Comparison activities
- Real coin handling

For Advanced Learners:
- Count many quarters
- Mix all four coins
- Calculate to $1.00
- Real-world pricing

ASSESSMENT INDICATORS:
- States quarter value as 25 cents
- Understands quarter is highest value
- Counts multiple quarters
- Applies to transactions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quarter Value' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Counting Pennies
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting Pennies' AND grade_level_min = 0),
  'Counting Pennies Topic Guide', 'Count groups of pennies up to 10 cents',
  'COUNTING PENNIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Penny identification and value
- Counting to 10
- One-to-one correspondence
- Grouping objects

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count pennies accurately to 10
2. Write amounts using cent symbol
3. Compare penny amounts
4. Solve simple penny problems
5. Make exact penny amounts

KEY CONCEPTS:
- Each penny adds 1 cent to the total
- Counting pennies = counting by 1s
- Organize pennies to count accurately
- Check by recounting

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Dump out a pile of pennies. "How much money is here? Let''s count to find out!"

2. DIRECT INSTRUCTION (7 minutes):
Model counting: touch each penny, say the amount. "1 cent, 2 cents, 3 cents..." Organize while counting. Write the total.

3. GUIDED PRACTICE (10 minutes):
Count various penny amounts. Record totals. Compare: "Which pile has more?"

4. INDEPENDENT APPLICATION (7 minutes):
Counting penny worksheets. Make given amounts. Penny comparison activities.

DIFFERENTIATION:

For Struggling Learners:
- Amounts to 5¢ only
- Use ten frames for organizing
- Touch and count
- Pre-sorted groups

For Advanced Learners:
- Count to 25+ pennies
- Write equations
- Word problems
- Exchange for nickels

ASSESSMENT INDICATORS:
- Counts pennies accurately
- Writes amounts correctly
- Compares amounts
- Makes given amounts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting Pennies' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Counting Mixed Coins
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting Mixed Coins' AND grade_level_min = 0),
  'Counting Mixed Coins Topic Guide', 'Count small groups of mixed coins',
  'COUNTING MIXED COINS - TOPIC TEACHING GUIDE

PREREQUISITES:
- All individual coin values
- Skip counting by 5s and 10s
- Counting on from a number
- Sorting skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Sort coins before counting
2. Count starting with highest value
3. Switch skip count types as needed
4. Find total value of mixed coins
5. Apply to simple purchases

KEY CONCEPTS:
- Sort by type, start with highest value
- Count on: skip count by 10s, then 5s, then 1s
- Different combinations can equal same amount
- Organizing makes counting easier

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show mixed coin pile. "How do we count all these different coins?" Introduce the strategy.

2. DIRECT INSTRUCTION (10 minutes):
"First, sort! Put dimes here, nickels here, pennies here." Model counting: "10, 20, 25, 26, 27." Switching skip counts.

3. GUIDED PRACTICE (10 minutes):
Practice with small mixed sets. Sort and count together. Verify by counting differently.

4. INDEPENDENT APPLICATION (7 minutes):
Mixed coin worksheets. Create given amounts. Shopping activities.

DIFFERENTIATION:

For Struggling Learners:
- Two coin types only
- Small amounts
- Sorting support
- Counting mats

For Advanced Learners:
- All four coin types
- Larger amounts
- Multiple ways to make amount
- Real-world problems

ASSESSMENT INDICATORS:
- Sorts coins by type
- Counts mixed coins accurately
- Explains counting strategy
- Applies to transactions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting Mixed Coins' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Dollar Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dollar Introduction' AND grade_level_min = 0),
  'Dollar Introduction Topic Guide', 'Recognize a dollar bill and understand 100 cents = 1 dollar',
  'DOLLAR INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- All coin values
- Counting to 100
- Understanding of equivalence
- Skip counting by 10s

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize a one dollar bill
2. Know 100 cents = 1 dollar
3. Understand 4 quarters = 1 dollar
4. Compare coins to dollars
5. Know dollar is larger unit

KEY CONCEPTS:
- Dollar is paper money
- 100 cents = 1 dollar = $1.00
- 4 quarters = 10 dimes = 20 nickels = 100 pennies = $1
- Dollar symbol: $

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show a dollar bill. "This is a dollar! It''s like having 100 pennies or 4 quarters all in one!"

2. DIRECT INSTRUCTION (8 minutes):
Introduce dollar bill. "100 cents make a dollar." Count 100 pennies, trade for dollar. Count 4 quarters: "25, 50, 75, 100 = 1 dollar!"

3. GUIDED PRACTICE (10 minutes):
Trading activities to make a dollar. Compare coin combinations. Identify dollar symbol $.

4. INDEPENDENT APPLICATION (7 minutes):
Dollar equivalence activities. Matching coins to dollar. Simple over/under dollar decisions.

DIFFERENTIATION:

For Struggling Learners:
- Focus on 4 quarters = $1
- Visual equivalence chart
- Hands-on trading only
- Simple comparisons

For Advanced Learners:
- Multiple dollar amounts
- Making change concept
- Dollar + cents notation
- Real pricing activities

ASSESSMENT INDICATORS:
- Identifies dollar bill
- States 100 cents = 1 dollar
- Names coin equivalences
- Uses dollar symbol', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dollar Introduction' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PATTERNS AND POSITIONS TOPICS
-- ============================================================================

-- Color Patterns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Color Patterns' AND grade_level_min = 0),
  'Color Patterns Topic Guide', 'Identify and extend patterns using colors',
  'COLOR PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Color recognition
- Sequencing understanding
- "Same" and "different" concepts
- Attention to visual details

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify repeating color patterns
2. Continue color patterns (AB, ABC)
3. Describe pattern rules
4. Create original color patterns
5. Find patterns in the environment

KEY CONCEPTS:
- Patterns repeat in a predictable way
- Pattern core: the part that repeats
- Common patterns: AB, ABC, ABB, AAB
- Patterns help us predict what comes next

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show string of colored beads: red, blue, red, blue. "What comes next? How did you know?" Introduce pattern concept.

2. DIRECT INSTRUCTION (7 minutes):
"A pattern repeats over and over. This is red, blue, red, blue - an AB pattern!" Show different pattern types with colors.

3. GUIDED PRACTICE (8 minutes):
Continue given patterns. Identify the core. Create patterns with colored cubes or beads.

4. INDEPENDENT APPLICATION (7 minutes):
Pattern worksheets. Create pattern bracelets. Find classroom patterns.

DIFFERENTIATION:

For Struggling Learners:
- AB patterns only
- High-contrast colors
- Physical manipulatives
- Verbal pattern chanting

For Advanced Learners:
- Complex patterns (AABB, ABC)
- Create patterns for others
- Missing element in pattern
- Pattern extension

ASSESSMENT INDICATORS:
- Continues patterns correctly
- Identifies pattern core
- Creates valid patterns
- Describes pattern rule', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Color Patterns' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Shape Patterns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Shape Patterns' AND grade_level_min = 0),
  'Shape Patterns Topic Guide', 'Identify and extend patterns using shapes',
  'SHAPE PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Shape recognition
- Color pattern understanding
- Pattern concept introduction
- Visual discrimination

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify repeating shape patterns
2. Continue shape patterns
3. Create original shape patterns
4. Find missing shapes in patterns
5. Describe shape pattern rules

KEY CONCEPTS:
- Shapes can form patterns like colors
- Same pattern rules apply
- Patterns can combine shape and color
- Real-world objects form patterns

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show shape pattern: circle, square, circle, square. "This is a pattern! But instead of colors, we use shapes!"

2. DIRECT INSTRUCTION (7 minutes):
"Circle, square, circle, square - what comes next? Circle!" Model finding the core, extending pattern.

3. GUIDED PRACTICE (8 minutes):
Continue shape patterns. Create patterns with pattern blocks. Find missing shapes.

4. INDEPENDENT APPLICATION (7 minutes):
Shape pattern worksheets. Block pattern creations. Environmental shape patterns.

DIFFERENTIATION:

For Struggling Learners:
- AB shape patterns only
- Large, clear shapes
- Pattern matching first
- Same size shapes

For Advanced Learners:
- Complex shape patterns
- Shape + color combinations
- Growing shape patterns
- Pattern translations

ASSESSMENT INDICATORS:
- Continues shape patterns
- Identifies pattern core
- Creates original patterns
- Explains pattern rule', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Shape Patterns' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Size Patterns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Size Patterns' AND grade_level_min = 0),
  'Size Patterns Topic Guide', 'Identify and extend patterns using sizes',
  'SIZE PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Size comparison skills
- Pattern concept
- Color and shape patterns
- Big/small vocabulary

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify size patterns (big, small)
2. Continue size patterns
3. Create size patterns
4. Combine size with other attributes
5. Describe size pattern rules

KEY CONCEPTS:
- Size can form patterns
- Big-small, big-small is AB pattern
- Size patterns appear in nature
- Multiple attributes can pattern together

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show: big bear, small bear, big bear, small bear. "What comes next? How did you know?"

2. DIRECT INSTRUCTION (7 minutes):
"Big, small, big, small - it''s a pattern! The sizes repeat." Model with various objects.

3. GUIDED PRACTICE (8 minutes):
Continue size patterns. Create patterns with different sized objects. Combine size and color.

4. INDEPENDENT APPLICATION (7 minutes):
Size pattern worksheets. Create patterns with manipulatives. Find size patterns in books.

DIFFERENTIATION:

For Struggling Learners:
- Clear size differences
- Two sizes only
- Consistent objects (just different sizes)
- Matching before extending

For Advanced Learners:
- Three sizes (small, medium, large)
- Multiple attribute patterns
- Create for partner
- Growing patterns

ASSESSMENT INDICATORS:
- Continues size patterns
- Creates valid size patterns
- Describes pattern with size words
- Combines with other attributes', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Size Patterns' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Creating Patterns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Creating Patterns' AND grade_level_min = 0),
  'Creating Patterns Topic Guide', 'Make your own AB, ABC, and ABB patterns',
  'CREATING PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Pattern recognition skills
- Pattern extension skills
- Color, shape, size vocabulary
- Creative thinking

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Create AB patterns independently
2. Create ABC patterns
3. Create ABB/AAB patterns
4. Use various materials to make patterns
5. Explain their pattern rule

KEY CONCEPTS:
- Patterns must repeat consistently
- Pattern core determines the type
- Same core can use different materials
- Valid patterns follow a rule

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"You''re going to be pattern creators today! You''ll make your own patterns for others to continue!"

2. DIRECT INSTRUCTION (7 minutes):
Review pattern types: AB (red-blue), ABC (red-blue-green), ABB (red-blue-blue). Show how to plan and create.

3. GUIDED PRACTICE (10 minutes):
Create patterns with cubes, beads, stamps. Share with partner to continue. Verify patterns work.

4. INDEPENDENT APPLICATION (8 minutes):
Independent pattern creation. Pattern share gallery. Draw patterns in journal.

DIFFERENTIATION:

For Struggling Learners:
- AB patterns first
- Pattern starters provided
- Limited material choices
- Partner support

For Advanced Learners:
- Create all pattern types
- Multi-attribute patterns
- Pattern challenges
- Growing patterns

ASSESSMENT INDICATORS:
- Creates valid patterns
- Uses multiple pattern types
- Explains pattern rule
- Patterns can be continued', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Creating Patterns' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Position Words
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Position Words' AND grade_level_min = 0),
  'Position Words Topic Guide', 'Use above, below, beside, in front, behind',
  'POSITION WORDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Spatial awareness
- Vocabulary development
- Following directions
- Body awareness

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use "above" and "below" correctly
2. Use "beside" and "between"
3. Use "in front" and "behind"
4. Follow positional directions
5. Give positional descriptions

KEY CONCEPTS:
- Position words describe where things are
- Position is relative (depends on viewpoint)
- These words help us give clear directions
- Mathematics uses position vocabulary

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Play "Simon Says" with positions: "Simon says put your hands above your head! Simon says sit beside a friend!"

2. DIRECT INSTRUCTION (7 minutes):
Introduce each position word with demonstrations. "The book is above the table. Below means under. Beside means next to."

3. GUIDED PRACTICE (10 minutes):
Follow position directions. Describe object positions. Play position games with toys.

4. INDEPENDENT APPLICATION (8 minutes):
Position words worksheets. Give directions to partner. Draw objects in positions.

DIFFERENTIATION:

For Struggling Learners:
- Focus on opposite pairs
- Physical movement first
- Consistent reference objects
- Visual position cards

For Advanced Learners:
- Multiple position words together
- Complex directions
- Create position puzzles
- Written descriptions

ASSESSMENT INDICATORS:
- Uses position words correctly
- Follows positional directions
- Gives clear position descriptions
- Understands relative position', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Position Words' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Left and Right
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Left and Right' AND grade_level_min = 0),
  'Left and Right Topic Guide', 'Distinguish left from right',
  'LEFT AND RIGHT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Body awareness
- Position word basics
- Following directions
- Laterality developing

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify their left and right hands
2. Follow left/right directions
3. Describe positions using left/right
4. Apply to classroom and environment
5. Understand left/right are relative

KEY CONCEPTS:
- Left and right are sides of our body
- Writing hand often helps remember
- Left and right apply to objects and directions
- They are opposite directions

COMMON MISCONCEPTIONS:
- Confusing left and right (very common)
- Not realizing they switch when facing someone
- Thinking left/right are absolute
- Difficulty without visual cues

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Which hand do you write with? Make an L with your left hand - that''s an easy way to remember!"

2. DIRECT INSTRUCTION (7 minutes):
Practice identifying hands. "Your left hand makes an L. Your right hand is the other one." Use consistent cues.

3. GUIDED PRACTICE (10 minutes):
"Hokey Pokey" song with left/right. Follow directions games. Identify left/right in pictures.

4. INDEPENDENT APPLICATION (8 minutes):
Left/right worksheets. Give directions using left/right. Label left/right on drawings.

DIFFERENTIATION:

For Struggling Learners:
- Sticker on left hand
- Consistent cue (L for left)
- Practice on own body first
- Daily routine practice

For Advanced Learners:
- Multiple step directions
- Map following with left/right
- Partner facing challenges
- Written directions

ASSESSMENT INDICATORS:
- Identifies own left and right
- Follows left/right directions
- Uses terms correctly
- Applies to various situations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Left and Right' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Inside and Outside
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inside and Outside' AND grade_level_min = 0),
  'Inside Outside Topic Guide', 'Identify objects inside or outside a space',
  'INSIDE AND OUTSIDE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Spatial awareness
- Vocabulary understanding
- Boundary recognition
- Containment concept

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify objects inside a container/boundary
2. Identify objects outside a container/boundary
3. Place objects inside or outside as directed
4. Use inside/outside vocabulary
5. Apply to various contexts

KEY CONCEPTS:
- Inside means within a boundary or container
- Outside means beyond the boundary
- Boundaries can be physical or drawn
- Inside/outside is used in geometry

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Use a hula hoop on floor. "Who is inside the hoop? Who is outside? Let''s explore inside and outside!"

2. DIRECT INSTRUCTION (5 minutes):
Define inside (within) and outside (beyond). Use box, circle on floor, picture frame examples.

3. GUIDED PRACTICE (10 minutes):
Sort objects inside/outside boxes. Circle pictures of things inside/outside in worksheets. Games with boundaries.

4. INDEPENDENT APPLICATION (7 minutes):
Draw things inside/outside shapes. Follow inside/outside directions. Real-world applications.

DIFFERENTIATION:

For Struggling Learners:
- Clear physical boundaries
- Hands-on sorting
- Consistent vocabulary
- Movement activities

For Advanced Learners:
- Multiple boundaries
- Combine with other positions
- Create own inside/outside puzzles
- Geometric applications

ASSESSMENT INDICATORS:
- Identifies inside/outside correctly
- Places objects as directed
- Uses vocabulary appropriately
- Applies to new situations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inside and Outside' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Near and Far
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Near and Far' AND grade_level_min = 0),
  'Near and Far Topic Guide', 'Compare distances using near and far',
  'NEAR AND FAR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Spatial awareness
- Comparison vocabulary
- Distance concept developing
- Position word basics

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand near means close
2. Understand far means distant
3. Compare relative distances
4. Use near/far in descriptions
5. Apply to real-world situations

KEY CONCEPTS:
- Near means a short distance away
- Far means a long distance away
- Distance is relative (compared to something)
- Near and far are comparative terms

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"The door is near me. The playground is far away. What''s near you? What''s far away?"

2. DIRECT INSTRUCTION (5 minutes):
Demonstrate near (close) and far (away). Compare: "Is the board near or far from you?"

3. GUIDED PRACTICE (10 minutes):
Identify near/far objects in classroom. Sorting pictures by near/far. Movement games.

4. INDEPENDENT APPLICATION (7 minutes):
Near/far worksheets. Draw something near and far. Describe using vocabulary.

DIFFERENTIATION:

For Struggling Learners:
- Extreme examples first
- Physical comparisons
- Consistent reference point
- Partner support

For Advanced Learners:
- Relative comparisons
- Nearer/farther vocabulary
- Real-world applications
- Map concepts introduction

ASSESSMENT INDICATORS:
- Identifies near/far correctly
- Uses vocabulary appropriately
- Compares distances
- Applies to descriptions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Near and Far' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- First Second Third (Ordinal Positions)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'First Second Third' AND grade_level_min = 0),
  'Ordinal Positions Topic Guide', 'Use ordinal words to describe position',
  'FIRST SECOND THIRD - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 10
- Sequence understanding
- Position concept developing
- Left-to-right directionality

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use first, second, third accurately
2. Extend to fifth or beyond
3. Apply ordinals to objects in a row
4. Understand position vs quantity
5. Use ordinals in daily contexts

KEY CONCEPTS:
- Ordinal numbers tell position
- First = position 1, Second = position 2, etc.
- Position depends on starting point
- Ordinals describe "which one"

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Line up toys for a race. "Who came in first? Who was second? Third?" Connect to experience.

2. DIRECT INSTRUCTION (7 minutes):
Practice first through fifth with objects in a line. "Count from the left: first, second, third, fourth, fifth."

3. GUIDED PRACTICE (10 minutes):
Identify positions in lines of objects. Follow directions: "Color the third one." Games with ordinals.

4. INDEPENDENT APPLICATION (8 minutes):
Ordinal worksheets. Draw objects in ordinal positions. Story sequence with ordinals.

DIFFERENTIATION:

For Struggling Learners:
- First, second, third only
- Consistent left start
- Physical objects
- Daily routine practice

For Advanced Learners:
- Extend beyond fifth
- Different starting points
- Written ordinals (1st, 2nd)
- Complex directions

ASSESSMENT INDICATORS:
- Uses ordinals correctly
- Identifies positions accurately
- Follows ordinal directions
- Applies to various contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'First Second Third' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DATA AND PROBABILITY TOPICS
-- ============================================================================

-- Collecting Data
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Collecting Data' AND grade_level_min = 0),
  'Collecting Data Topic Guide', 'Gather information by asking questions and observing',
  'COLLECTING DATA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting skills
- Asking questions
- Recording information
- Categorizing ability

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Ask simple survey questions
2. Record responses with tally marks or objects
3. Organize data by categories
4. Count data in each category
5. Describe what the data shows

KEY CONCEPTS:
- Data is information we collect
- We can collect data by asking or observing
- Data needs to be organized to understand it
- Tally marks help us count

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"What''s your favorite fruit? Let''s collect this information from everyone!" Model asking and recording.

2. DIRECT INSTRUCTION (7 minutes):
"Data is information. We collect it by asking questions or looking carefully." Show tally marks. Model organizing responses.

3. GUIDED PRACTICE (10 minutes):
Class survey activity. Each student surveys classmates. Record with tally marks. Count totals.

4. INDEPENDENT APPLICATION (8 minutes):
Small group surveys. Record and count. Share findings.

DIFFERENTIATION:

For Struggling Learners:
- Two-category surveys
- Picture recording
- Partner support
- Pre-made recording sheets

For Advanced Learners:
- Multiple categories
- Compare data sets
- Draw conclusions
- Create survey questions

ASSESSMENT INDICATORS:
- Asks survey questions
- Records data accurately
- Organizes by category
- Counts and reports totals', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Collecting Data' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Sorting Data
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sorting Data' AND grade_level_min = 0),
  'Sorting Data Topic Guide', 'Organize data into groups',
  'SORTING DATA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Classification skills
- Attribute recognition
- Counting
- Categorizing by one attribute

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Sort objects by one attribute
2. Sort data into categories
3. Count items in each group
4. Compare group sizes
5. Explain sorting rule

KEY CONCEPTS:
- Sorting means grouping by shared attribute
- Items must clearly belong to one group
- Sorting helps us see patterns
- We can count after sorting

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Dump mixed objects. "This is messy! Let''s sort them so we can understand what we have."

2. DIRECT INSTRUCTION (7 minutes):
"When we sort, we put things that are alike together." Model sorting by color, then by shape. Count each group.

3. GUIDED PRACTICE (10 minutes):
Sort collections of objects. Choose own sorting rule. Record results. Compare group sizes.

4. INDEPENDENT APPLICATION (8 minutes):
Sorting worksheets. Sort and count activities. Explain sorting to partner.

DIFFERENTIATION:

For Struggling Learners:
- Two groups only
- Clear differences
- Same sorting rule
- Physical objects

For Advanced Learners:
- Multiple attributes
- Re-sort same set differently
- Create Venn diagrams
- Explain rule

ASSESSMENT INDICATORS:
- Sorts accurately by attribute
- Counts each group
- Compares group sizes
- Explains sorting rule', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sorting Data' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Reading Pictographs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reading Pictographs' AND grade_level_min = 0),
  'Reading Pictographs Topic Guide', 'Read simple picture graphs',
  'READING PICTOGRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting skills
- Picture recognition
- Left-to-right reading
- Comparison vocabulary

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand pictographs show data with pictures
2. Count symbols to find amounts
3. Compare quantities using pictographs
4. Answer questions from pictographs
5. Understand title and categories

KEY CONCEPTS:
- Pictograph uses pictures for data
- Each picture = 1 item (at this level)
- Count pictures to find the number
- Compare by counting

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show class pet survey pictograph. "This graph shows our favorite pets! Each picture is one person''s vote."

2. DIRECT INSTRUCTION (7 minutes):
"A pictograph uses pictures instead of numbers. Count the pictures to find how many." Model reading title, categories, counting.

3. GUIDED PRACTICE (10 minutes):
Read various pictographs together. Answer questions: "How many? Which has more?" Compare categories.

4. INDEPENDENT APPLICATION (8 minutes):
Pictograph worksheets. Answer questions from graphs. Simple pictograph interpretation.

DIFFERENTIATION:

For Struggling Learners:
- Simple pictographs (2 categories)
- Clear pictures to count
- Guided questions
- One-to-one correspondence

For Advanced Learners:
- More categories
- Complex comparison questions
- Create own pictograph
- Interpret "how many more"

ASSESSMENT INDICATORS:
- Counts pictures accurately
- Answers questions from graph
- Compares categories
- Understands pictograph purpose', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading Pictographs' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Creating Pictographs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Creating Pictographs' AND grade_level_min = 0),
  'Creating Pictographs Topic Guide', 'Make simple picture graphs with data',
  'CREATING PICTOGRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Reading pictographs
- Collecting data
- Counting and recording
- Drawing skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Create pictographs from collected data
2. Choose appropriate symbols
3. Draw correct number of symbols
4. Add title and labels
5. Use pictograph to share information

KEY CONCEPTS:
- Pictographs communicate data visually
- Each symbol represents one item
- Organization matters (rows, columns)
- Labels help readers understand

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"We collected data about shoe colors. Now let''s make a pictograph to show everyone what we found!"

2. DIRECT INSTRUCTION (10 minutes):
Model creating pictograph: title, labels, drawing symbols. "One red shoe picture for each person with red shoes."

3. GUIDED PRACTICE (10 minutes):
Class creates pictograph together from survey data. Each student contributes symbols.

4. INDEPENDENT APPLICATION (10 minutes):
Create own pictograph from given data. Share and explain to partner.

DIFFERENTIATION:

For Struggling Learners:
- Pre-made template
- Two categories only
- Stamp or sticker symbols
- Small numbers

For Advanced Learners:
- Collect and graph own data
- Multiple categories
- Title and label independently
- Compare two pictographs

ASSESSMENT INDICATORS:
- Creates organized pictograph
- Correct symbol count
- Includes title and labels
- Explains the pictograph', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Creating Pictographs' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Bar Graphs Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Bar Graphs Introduction' AND grade_level_min = 0),
  'Bar Graphs Intro Topic Guide', 'Read simple bar graphs',
  'BAR GRAPHS INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Pictograph reading
- Counting
- Comparing lengths
- One-to-one correspondence

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand bar graphs show data with bars
2. Read bar heights/lengths
3. Compare data using bar graphs
4. Answer questions from bar graphs
5. Connect to pictographs

KEY CONCEPTS:
- Bar graphs use bars instead of pictures
- Bar length/height shows the amount
- Bars are easier to compare than counting
- Scale helps us read values

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show simple bar graph alongside pictograph of same data. "This is another way to show the same information!"

2. DIRECT INSTRUCTION (8 minutes):
"In a bar graph, the bar goes up to show how many. The taller the bar, the more there are." Model reading values.

3. GUIDED PRACTICE (10 minutes):
Read various bar graphs. Answer "how many" and "which more/fewer" questions. Compare to pictographs.

4. INDEPENDENT APPLICATION (7 minutes):
Bar graph worksheets. Answer questions. Match bar graphs to data tables.

DIFFERENTIATION:

For Struggling Learners:
- Scale by 1s only
- Few categories
- Horizontal bars to start
- Counting squares

For Advanced Learners:
- Scale by 2s
- Compare multiple graphs
- Create simple bar graphs
- More/fewer how many

ASSESSMENT INDICATORS:
- Reads bar values correctly
- Compares bars accurately
- Answers questions from graph
- Understands bar vs pictograph', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Bar Graphs Introduction' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Certain Possible Impossible
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Certain Possible Impossible' AND grade_level_min = 0),
  'Certain Possible Impossible Topic Guide', 'Understand what might happen or cannot happen',
  'CERTAIN POSSIBLE IMPOSSIBLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Vocabulary development
- Logical thinking
- Real-world experience
- Yes/no reasoning

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define certain, possible, impossible
2. Classify events correctly
3. Give examples of each type
4. Explain reasoning for classification
5. Apply to real-world situations

KEY CONCEPTS:
- Certain: will definitely happen
- Possible: might happen, might not
- Impossible: cannot happen
- We can predict based on what we know

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"Will the sun rise tomorrow? Will you turn into a frog? Will it rain sometime this year?" Discuss likelihood.

2. DIRECT INSTRUCTION (7 minutes):
Define terms with examples. "Certain means it WILL happen - like your next birthday. Impossible means it CAN''T happen - like snow in summer in a hot desert."

3. GUIDED PRACTICE (10 minutes):
Sort event cards into certain, possible, impossible. Discuss tricky ones. Explain reasoning.

4. INDEPENDENT APPLICATION (8 minutes):
Classification worksheets. Create own examples. Draw certain, possible, impossible events.

DIFFERENTIATION:

For Struggling Learners:
- Clear-cut examples
- Two categories first
- Physical sorting cards
- Real-life examples

For Advanced Learners:
- Discuss "almost certain"
- Create own events
- Justify classifications
- Connect to probability

ASSESSMENT INDICATORS:
- Classifies events correctly
- Explains reasoning
- Creates valid examples
- Uses vocabulary appropriately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Certain Possible Impossible' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- More Likely Less Likely
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'More Likely Less Likely' AND grade_level_min = 0),
  'More Likely Less Likely Topic Guide', 'Compare chances of events happening',
  'MORE LIKELY LESS LIKELY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Certain, possible, impossible
- Comparison vocabulary
- Counting
- Logical reasoning

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare likelihood of events
2. Use "more likely" and "less likely"
3. Explain why something is more/less likely
4. Connect to quantities
5. Apply to simple probability situations

KEY CONCEPTS:
- Some possible events are more likely than others
- More of something = more likely to get it
- Less of something = less likely to get it
- We can compare without exact numbers

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Bag with 8 red and 2 blue blocks. "If you pick without looking, which color are you more likely to get? Why?"

2. DIRECT INSTRUCTION (8 minutes):
"More likely means better chance. Less likely means lower chance." Model with objects in bags. Connect to quantities.

3. GUIDED PRACTICE (10 minutes):
Predict from various collections. Compare likelihoods. Use spinners with unequal sections.

4. INDEPENDENT APPLICATION (7 minutes):
Likelihood worksheets. Explain predictions. Simple spinner activities.

DIFFERENTIATION:

For Struggling Learners:
- Obvious differences (9 vs 1)
- Physical objects to see
- Two choices only
- Clear visual comparison

For Advanced Learners:
- Closer comparisons
- "Equally likely" concept
- Design own probability experiments
- Justify with numbers

ASSESSMENT INDICATORS:
- Compares likelihood correctly
- Uses vocabulary appropriately
- Explains reasoning
- Connects to quantities', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'More Likely Less Likely' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Predicting Outcomes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Predicting Outcomes' AND grade_level_min = 0),
  'Predicting Outcomes Topic Guide', 'Make predictions about simple experiments',
  'PREDICTING OUTCOMES - TOPIC TEACHING GUIDE

PREREQUISITES:
- More likely, less likely
- Counting
- Logical reasoning
- Basic probability vocabulary

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Make predictions before experiments
2. Conduct simple probability experiments
3. Compare predictions to results
4. Understand predictions may not match exactly
5. Use evidence to make predictions

KEY CONCEPTS:
- Predictions are informed guesses
- We predict based on what we know
- Results may differ from predictions
- Many trials give better information

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"I have a bag with some cubes. I''ll show you what''s inside. Then predict what I''ll pull out!" Build suspense.

2. DIRECT INSTRUCTION (8 minutes):
"A prediction is what we think will happen. We use what we know to predict." Model predicting, then testing.

3. GUIDED PRACTICE (12 minutes):
Conduct simple experiments: coin flips, spinner spins, bag pulls. Predict first, then do. Compare and discuss.

4. INDEPENDENT APPLICATION (7 minutes):
Simple prediction activities. Record predictions and results. Discuss patterns.

DIFFERENTIATION:

For Struggling Learners:
- Clear probability situations
- Group participation
- Focus on prediction process
- Visual recording

For Advanced Learners:
- Multiple trials
- Tally results
- Compare to predictions quantitatively
- Design own experiments

ASSESSMENT INDICATORS:
- Makes reasonable predictions
- Conducts experiments correctly
- Compares predictions to results
- Explains thinking', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Predicting Outcomes' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GEOMETRY EXPANDED TOPICS
-- ============================================================================

-- Corners and Sides
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Corners and Sides' AND grade_level_min = 0),
  'Corners and Sides Topic Guide', 'Count corners and sides of shapes',
  'CORNERS AND SIDES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic shape recognition
- Counting to 8
- Fine motor pointing skills
- Vocabulary: corner, side

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify corners (vertices) on shapes
2. Identify sides on shapes
3. Count corners and sides accurately
4. Compare shapes by corners/sides
5. Use these attributes to identify shapes

KEY CONCEPTS:
- Corners are where two sides meet (points)
- Sides are the straight lines
- Different shapes have different numbers
- Corners = sides for polygons

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show triangle. "Let''s count! 1, 2, 3 corners. 1, 2, 3 sides. A triangle has 3 corners and 3 sides!"

2. DIRECT INSTRUCTION (7 minutes):
Define corners and sides with gestures. Count for each basic shape. Record in a chart.

3. GUIDED PRACTICE (10 minutes):
Count corners and sides on various shapes. Sort shapes by number of sides. Shape hunt in classroom.

4. INDEPENDENT APPLICATION (8 minutes):
Counting worksheets. Draw shapes with given sides. Shape attribute matching.

DIFFERENTIATION:

For Struggling Learners:
- Mark corners with dots
- Trace sides with finger
- Focus on triangle, square, rectangle
- Physical shape manipulatives

For Advanced Learners:
- Pentagons, hexagons
- Discover corners = sides rule
- Create shapes with given attributes
- Compare and contrast shapes

ASSESSMENT INDICATORS:
- Counts corners accurately
- Counts sides accurately
- Uses vocabulary correctly
- Compares shapes by attributes', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Corners and Sides' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Comparing Shapes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Shapes' AND grade_level_min = 0),
  'Comparing Shapes Topic Guide', 'Describe how shapes are alike and different',
  'COMPARING SHAPES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Shape recognition
- Corners and sides
- Comparison vocabulary
- Attribute awareness

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Describe how shapes are alike
2. Describe how shapes are different
3. Compare using attributes (sides, corners, size)
4. Sort shapes by similarities
5. Explain comparisons verbally

KEY CONCEPTS:
- Shapes can be compared by attributes
- Shapes may share some attributes but not others
- Same shape can be different sizes
- Comparing helps us understand shapes better

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show triangle and square. "How are these alike? How are they different?" Start the comparison discussion.

2. DIRECT INSTRUCTION (7 minutes):
Model comparing: "Both have straight sides. Both are flat. But triangle has 3 sides, square has 4." Use comparison language.

3. GUIDED PRACTICE (10 minutes):
Compare shape pairs. Venn diagram sorting. Describe to partner how shapes are alike/different.

4. INDEPENDENT APPLICATION (8 minutes):
Comparison worksheets. Draw shapes that are alike in one way. Write or draw comparisons.

DIFFERENTIATION:

For Struggling Learners:
- Compare two shapes only
- Focus on one attribute at a time
- Visual comparison charts
- Sentence starters

For Advanced Learners:
- Compare multiple shapes
- Multiple attributes at once
- "Same but different" challenges
- Create own comparisons

ASSESSMENT INDICATORS:
- States similarities correctly
- States differences correctly
- Uses attribute vocabulary
- Explains comparisons clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Shapes' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Shape Puzzles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Shape Puzzles' AND grade_level_min = 0),
  'Shape Puzzles Topic Guide', 'Put shapes together to make pictures',
  'SHAPE PUZZLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Shape recognition
- Spatial awareness
- Fine motor skills
- Part-whole understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Combine shapes to make new shapes
2. Complete shape puzzles
3. Create pictures using basic shapes
4. Understand shapes can combine
5. Develop spatial reasoning

KEY CONCEPTS:
- Shapes can be put together (composed)
- Shapes can be taken apart (decomposed)
- Same pieces can make different pictures
- Spatial reasoning develops through puzzles

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show tangram or pattern block picture. "Look! This house is made of shapes! Can you find the triangle?"

2. DIRECT INSTRUCTION (7 minutes):
Model combining shapes. "Two triangles can make a square! Four squares can make a bigger square!" Demonstrate compositions.

3. GUIDED PRACTICE (12 minutes):
Pattern block activities. Complete shape puzzles. Build given pictures with shapes.

4. INDEPENDENT APPLICATION (8 minutes):
Free shape creation. Puzzle completion. Draw pictures using shapes.

DIFFERENTIATION:

For Struggling Learners:
- Simple puzzles (2-3 pieces)
- Outline guides
- Limited shape choices
- Copy modeled pictures

For Advanced Learners:
- Complex puzzles
- Create without outline
- Multiple solutions
- Design own shape pictures

ASSESSMENT INDICATORS:
- Completes shape puzzles
- Creates pictures with shapes
- Identifies shapes in compositions
- Explains shape combinations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Shape Puzzles' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Symmetry Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Symmetry Introduction' AND grade_level_min = 0),
  'Symmetry Introduction Topic Guide', 'Find shapes that are the same on both sides',
  'SYMMETRY INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Shape recognition
- Comparison skills
- "Same" concept
- Visual discrimination

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand symmetry means matching halves
2. Identify line of symmetry
3. Recognize symmetric shapes
4. Create symmetric designs
5. Find symmetry in nature

KEY CONCEPTS:
- Symmetry means both sides match
- Line of symmetry divides shape into matching parts
- Many natural things are symmetric
- We can fold to check symmetry

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Fold paper in half, cut a shape, unfold. "Look! Both sides are the same! This is called symmetry."

2. DIRECT INSTRUCTION (7 minutes):
"Symmetric means both sides match. If we fold here (line of symmetry), both sides are identical." Show examples and non-examples.

3. GUIDED PRACTICE (10 minutes):
Fold paper shapes to check symmetry. Sort symmetric vs non-symmetric shapes. Find symmetry in classroom objects.

4. INDEPENDENT APPLICATION (8 minutes):
Complete symmetric designs (half given). Identify symmetric shapes. Nature symmetry hunt.

DIFFERENTIATION:

For Struggling Learners:
- Clear symmetric examples
- Folding activities only
- Large, simple shapes
- Butterfly examples

For Advanced Learners:
- Multiple lines of symmetry
- Create symmetric art
- Non-vertical symmetry
- Partial symmetry concept

ASSESSMENT INDICATORS:
- Identifies symmetric shapes
- Uses folding to verify
- Completes symmetric designs
- Explains symmetry concept', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Symmetry Introduction' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MEASUREMENT EXPANDED TOPICS
-- ============================================================================

-- Comparing Weights
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Weights' AND grade_level_min = 0),
  'Comparing Weights Topic Guide', 'Compare objects using heavy and light',
  'COMPARING WEIGHTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Comparison vocabulary
- Heavy/light experience
- Physical manipulation
- Balance concept

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare objects using heavy/light
2. Use balance scale to compare
3. Order objects by weight
4. Understand heavier and lighter
5. Predict weight based on appearance

KEY CONCEPTS:
- Heavy and light describe weight
- We compare weight by holding or balancing
- Size does not always indicate weight
- Heavier things make balance go down

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Hold feather and rock. "Which is heavier? How do you know?" Lift objects dramatically to show weight difference.

2. DIRECT INSTRUCTION (7 minutes):
"Heavy means weighs a lot. Light means doesn''t weigh much." Use balance scale. "The heavier side goes down!"

3. GUIDED PRACTICE (10 minutes):
Compare objects by holding. Use balance scales. Order objects heavy to light.

4. INDEPENDENT APPLICATION (8 minutes):
Weight comparison worksheets. Predict then verify weights. Draw heavy and light objects.

DIFFERENTIATION:

For Struggling Learners:
- Obvious weight differences
- Two objects at a time
- Physical lifting required
- Clear heavy/light examples

For Advanced Learners:
- Order multiple objects
- Predict before weighing
- Same size, different weight
- Weight conservation

ASSESSMENT INDICATORS:
- Compares weights correctly
- Uses vocabulary appropriately
- Uses balance scale
- Makes reasonable predictions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Weights' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Comparing Capacity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Capacity' AND grade_level_min = 0),
  'Comparing Capacity Topic Guide', 'Compare containers using full and empty',
  'COMPARING CAPACITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Full/empty vocabulary
- Pouring skills
- Comparison understanding
- More/less concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand full, empty, and half full
2. Compare container capacities
3. Predict which holds more
4. Use capacity vocabulary
5. Order containers by capacity

KEY CONCEPTS:
- Capacity is how much a container holds
- Tall is not always more (shape matters)
- We compare by filling and counting
- Full, half-full, empty describe amount

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
Show two different containers. "Which one holds more water? Let''s find out!" Create curiosity about capacity.

2. DIRECT INSTRUCTION (7 minutes):
"Capacity is how much fits inside. This container holds more than this one." Model pouring to compare. Introduce full, half-full, empty.

3. GUIDED PRACTICE (12 minutes):
Water table or rice table activities. Compare container capacities. Fill and count scoops.

4. INDEPENDENT APPLICATION (8 minutes):
Capacity comparison worksheets. Order containers by capacity. Draw full, half-full, empty.

DIFFERENTIATION:

For Struggling Learners:
- Obvious size differences
- Same shape, different size first
- Full/empty only
- Physical pouring activities

For Advanced Learners:
- Tricky comparisons (tall thin vs short wide)
- Count and compare scoops
- Estimate capacity
- Multiple containers

ASSESSMENT INDICATORS:
- Compares capacity correctly
- Uses vocabulary appropriately
- Understands shape affects capacity
- Orders by capacity', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Capacity' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Measuring with Objects
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Measuring with Objects' AND grade_level_min = 0),
  'Measuring with Objects Topic Guide', 'Measure length using paper clips or cubes',
  'MEASURING WITH OBJECTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting skills
- Longer/shorter vocabulary
- End-to-end alignment
- Number comparison

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use non-standard units to measure
2. Line up units without gaps or overlaps
3. Count units to determine length
4. Compare measurements
5. Understand measurement requires consistent units

KEY CONCEPTS:
- We can measure using same-size objects
- Units must be placed end-to-end
- No gaps or overlaps
- More units = longer length

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"How long is this book? Let''s measure using paper clips!" Demonstrate lining up clips.

2. DIRECT INSTRUCTION (8 minutes):
"When we measure, we put objects in a line with no gaps and no overlaps." Model measuring correctly. "This book is 8 paper clips long!"

3. GUIDED PRACTICE (12 minutes):
Measure various objects with cubes, clips, blocks. Record measurements. Compare: "Which is longer?"

4. INDEPENDENT APPLICATION (7 minutes):
Measurement worksheets. Measure items around room. Record and compare measurements.

DIFFERENTIATION:

For Struggling Learners:
- Pre-drawn lines to place units
- Large units (blocks)
- Short objects
- Focus on process

For Advanced Learners:
- Different unit types
- Discuss why different units give different numbers
- Estimate before measuring
- Longer objects

ASSESSMENT INDICATORS:
- Aligns units correctly
- Counts units accurately
- Records measurements
- Compares lengths using measurements', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measuring with Objects' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Ordering by Size
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ordering by Size' AND grade_level_min = 0),
  'Ordering by Size Topic Guide', 'Put objects in order from smallest to largest',
  'ORDERING BY SIZE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Size comparison vocabulary
- Comparison of two objects
- Sequencing skills
- Big/small concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Order three or more objects by size
2. Use smallest to largest order
3. Use largest to smallest order
4. Check ordering by comparison
5. Apply to various size attributes

KEY CONCEPTS:
- Objects can be put in size order
- We compare each object to others
- Order can be smallest to largest or reverse
- Ordering uses comparison skills

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (3 minutes):
"The three bears had different sized chairs! Let''s put them in order from smallest to largest."

2. DIRECT INSTRUCTION (7 minutes):
"First, find the smallest. Then find the next size. Then the largest." Model ordering with objects.

3. GUIDED PRACTICE (10 minutes):
Order sets of objects by size. Use ordering vocabulary. Check by comparing pairs.

4. INDEPENDENT APPLICATION (8 minutes):
Size ordering worksheets. Order classroom objects. Draw objects in size order.

DIFFERENTIATION:

For Struggling Learners:
- Three objects only
- Clear size differences
- Physical manipulation
- Find smallest first

For Advanced Learners:
- More objects (4-5)
- Closer sizes
- Both directions
- Order without physical objects

ASSESSMENT INDICATORS:
- Orders objects correctly
- Works in both directions
- Checks ordering
- Uses size vocabulary', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ordering by Size' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF KINDERGARTEN MATH EXPANDED PROMPTS
-- ============================================================================
