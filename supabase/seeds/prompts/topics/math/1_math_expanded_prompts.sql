-- Grade 1 Math Expanded Topic Prompts
-- Comprehensive teaching prompts for 51 expanded Grade 1 Math topics
-- ============================================================================

-- ============================================================================
-- ADDITION AND SUBTRACTION EXPANSION (9 topics)
-- ============================================================================

-- Adding Within 20
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Within 20' AND grade_level_min = 1),
  'Adding Within 20 Topic Guide', 'Teaching addition with sums to 20',
  'ADDING WITHIN 20 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 20 with confidence
- Addition facts to 10 mastery
- Understanding of number bonds

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Add two one-digit numbers with sums up to 20
2. Use strategies like counting on and making ten
3. Develop fluency with teen number sums
4. Apply addition to solve word problems

KEY CONCEPTS:
- Adding through 10: Break apart to make ten, then add more
- Counting on from the larger number
- Using known facts (doubles) to find unknown sums
- Commutative property still applies

COMMON MISCONCEPTIONS:
- Forgetting to count on from the larger number
- Losing track when bridging through 10
- Confusing teen numbers (14 vs 16)
- Not recognizing equivalent expressions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present a story about collecting stickers: "You have 8 stickers and get 7 more. Let''s find how many!"

2. DIRECT INSTRUCTION (10 minutes):
   Model the "make a ten" strategy with manipulatives.
   Show: 8 + 5 = 8 + 2 + 3 = 10 + 3 = 13
   Use ten frames to visualize bridging through 10.

3. GUIDED PRACTICE (10 minutes):
   Work through problems together: 9+6, 7+8, 6+9
   Students use counters or drawings to show their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve addition problems with sums 11-20
   Include some word problems with context.

DIFFERENTIATION:
For Struggling Learners:
- Provide physical ten frames and counters
- Start with adding to 10 + small number
- Use number bonds showing the "make ten" split

For Advanced Learners:
- Add three numbers with sums to 20
- Find missing addends (? + 7 = 15)
- Create their own word problems

ASSESSMENT INDICATORS:
- Accurately adds with sums to 20
- Can explain a strategy used
- Solves problems within reasonable time
- Self-corrects using checking strategies', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Within 20' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Subtracting Within 20
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Within 20' AND grade_level_min = 1),
  'Subtracting Within 20 Topic Guide', 'Teaching subtraction within 20',
  'SUBTRACTING WITHIN 20 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Subtraction facts within 10
- Understanding subtraction as "taking away" or "finding difference"
- Counting backward from 20

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Subtract from numbers up to 20
2. Use counting back and counting up strategies
3. Connect subtraction to addition (fact families)
4. Solve subtraction word problems

KEY CONCEPTS:
- Subtracting through 10: Go to 10, then subtract more
- Think addition: 15 - 8 = ? means 8 + ? = 15
- Counting back vs counting up to find differences
- Subtraction as comparison (how many more/fewer)

COMMON MISCONCEPTIONS:
- Always counting forward even when subtracting
- Subtracting the smaller from larger regardless of position
- Not using inverse relationship with addition
- Confusing subtraction situations in word problems

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Story context: "There were 14 birds on a wire. 6 flew away. How many are left?"

2. DIRECT INSTRUCTION (10 minutes):
   Model multiple strategies:
   - Counting back (14, 13, 12, 11, 10, 9, 8)
   - Think addition (6 + ? = 14)
   - Go through 10 (14 - 4 = 10, 10 - 2 = 8)

3. GUIDED PRACTICE (10 minutes):
   Students solve problems with partner discussion about strategies.
   Try: 16 - 7, 13 - 5, 18 - 9

4. INDEPENDENT PRACTICE (10 minutes):
   Worksheet with varied subtraction problems and word problems.

DIFFERENTIATION:
For Struggling Learners:
- Number lines to visualize counting back
- Counters to physically remove objects
- Focus on subtracting single digits first

For Advanced Learners:
- Find missing numbers: 17 - ? = 9
- Write fact families for teen numbers
- Create multi-step word problems

ASSESSMENT INDICATORS:
- Correctly solves subtraction within 20
- Can describe strategy used
- Relates subtraction to addition
- Interprets word problem situations correctly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Within 20' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Addition Facts to 10
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Addition Facts to 10' AND grade_level_min = 1),
  'Addition Facts to 10 Topic Guide', 'Building fluency with facts to 10',
  'ADDITION FACTS TO 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 10
- Understanding addition concept
- Experience with number bonds

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recall addition facts within 10 automatically
2. Recognize patterns in addition facts
3. Use known facts to find unknown facts
4. Apply facts fluently in problem-solving

KEY CONCEPTS:
- All combinations that sum to 10 or less
- Patterns: adding 1 (count on), adding 0 (same)
- Doubles patterns (1+1, 2+2, 3+3, 4+4, 5+5)
- Commutative property: 3+2 = 2+3

COMMON MISCONCEPTIONS:
- Relying only on counting instead of recall
- Forgetting 0 + n = n facts
- Not using commutative property to reduce facts to learn
- Confusion between 2+3 and 3+2 as different facts

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Flash card game or quick facts warm-up to assess current fluency.

2. DIRECT INSTRUCTION (8 minutes):
   Organize facts by pattern groups:
   - Plus 0 facts (easy!)
   - Plus 1 facts (just count on)
   - Doubles (visual patterns)
   - Remaining facts (strategies)

3. GUIDED PRACTICE (10 minutes):
   Fact practice games: dice addition, card games, fact triangles.

4. INDEPENDENT PRACTICE (12 minutes):
   Timed practice (appropriate timing for confidence, not stress).
   Self-check with answer key.

DIFFERENTIATION:
For Struggling Learners:
- Focus on facts in smaller groups
- Use manipulatives longer
- More time with visual supports

For Advanced Learners:
- Work toward automaticity goals
- Play competitive fact games
- Apply facts in puzzle-solving

ASSESSMENT INDICATORS:
- Answers facts quickly without counting
- Self-corrects errors promptly
- Applies facts in problem contexts
- Shows confidence with fact recall', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Addition Facts to 10' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Subtraction Facts to 10
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtraction Facts to 10' AND grade_level_min = 1),
  'Subtraction Facts to 10 Topic Guide', 'Building fluency with subtraction facts',
  'SUBTRACTION FACTS TO 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Addition facts to 10
- Understanding subtraction concept
- Counting backward from 10

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recall subtraction facts within 10 automatically
2. Use addition facts to solve subtraction
3. Recognize subtraction patterns
4. Apply facts fluently in problem-solving

KEY CONCEPTS:
- Inverse relationship: if 4+3=7, then 7-3=4
- Subtracting 0 (number stays same)
- Subtracting 1 (count back one)
- Doubles facts lead to halving facts

COMMON MISCONCEPTIONS:
- Not connecting to addition knowledge
- Subtracting in wrong order
- Forgetting n - 0 = n
- Over-reliance on counting back

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Think addition" challenge: "If I know 5+4=9, what subtraction facts do I know?"

2. DIRECT INSTRUCTION (8 minutes):
   Show fact families: 3, 4, 7 → 3+4=7, 4+3=7, 7-3=4, 7-4=3
   Emphasize using addition facts to solve subtraction.

3. GUIDED PRACTICE (10 minutes):
   Fact family triangles - cover one number, find it using the relationship.
   Partner practice with flash cards.

4. INDEPENDENT PRACTICE (12 minutes):
   Mixed addition and subtraction fact practice.
   Match subtraction to addition helpers.

DIFFERENTIATION:
For Struggling Learners:
- Fact family cards with visual support
- Manipulatives to show relationship
- Focus on one fact family at a time

For Advanced Learners:
- Generate complete fact families quickly
- Find patterns across families
- Apply to mental math challenges

ASSESSMENT INDICATORS:
- Recalls subtraction facts fluently
- Explains connection to addition
- Uses efficient strategies (not just counting)
- Applies facts in problem contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtraction Facts to 10' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Doubles Facts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Doubles Facts' AND grade_level_min = 1),
  'Doubles Facts Topic Guide', 'Teaching doubles addition facts',
  'DOUBLES FACTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting by 2s familiarity
- Addition concept understanding
- Experience with matching groups

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recall doubles facts 1+1 through 10+10 automatically
2. Recognize doubles in real-world contexts
3. Connect doubles to skip counting by 2s
4. Use doubles as anchor facts for near-doubles

KEY CONCEPTS:
- Doubles: adding a number to itself (5+5=10)
- Visual patterns: two equal rows/groups
- Connection to skip counting
- Real-world doubles (eyes, legs, ears, wheels)

COMMON MISCONCEPTIONS:
- Confusing doubles with counting by 2s sequence
- Not recognizing doubles in different formats
- Mixing up larger doubles (7+7 vs 8+8)
- Forgetting doubles can help with near-doubles

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Doubles in our world" - brainstorm things that come in pairs.
   (eyes, ears, wheels on bicycle, wings on butterfly)

2. DIRECT INSTRUCTION (8 minutes):
   Build doubles facts with paired manipulatives.
   Create visual chart of all doubles 1+1 to 10+10.
   Chant or sing doubles facts.

3. GUIDED PRACTICE (10 minutes):
   Doubles matching game - match doubles to their sums.
   Draw pictures showing doubles facts.

4. INDEPENDENT PRACTICE (10 minutes):
   Doubles fact practice sheet.
   Find doubles in picture scenes.

DIFFERENTIATION:
For Struggling Learners:
- Concrete doubles with linking cubes
- Mirror images to show doubling
- Focus on facts to 5+5 first

For Advanced Learners:
- Extend to doubles of larger numbers
- Connect to multiplication concept
- Find doubles in number puzzles

ASSESSMENT INDICATORS:
- Recalls doubles facts automatically
- Identifies doubles in real situations
- Explains why answer is even
- Uses doubles to find near-doubles', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Doubles Facts' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Doubles Plus One
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Doubles Plus One' AND grade_level_min = 1),
  'Doubles Plus One Topic Guide', 'Using doubles to solve near-doubles',
  'DOUBLES PLUS ONE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Doubles facts fluency (1+1 through 10+10)
- Understanding of "one more"
- Addition within 20

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize near-doubles (consecutive numbers)
2. Use doubles to solve doubles plus one
3. Choose efficient strategy for near-doubles
4. Explain reasoning for using doubles strategy

KEY CONCEPTS:
- Near-doubles: addends differ by 1 (6+7, 4+5)
- Strategy: double the smaller, add 1
- OR: double the larger, subtract 1
- Connection between 6+6=12 and 6+7=13

COMMON MISCONCEPTIONS:
- Adding 1 to both addends instead of the sum
- Choosing wrong double to use
- Not recognizing near-doubles problems
- Over-complicating with counting instead

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Twins and neighbors" - show pairs of consecutive numbers.
   "If I know twins 5+5=10, what about their neighbor 5+6?"

2. DIRECT INSTRUCTION (10 minutes):
   Model with manipulatives: build 5+5, then add 1 more to show 5+6.
   Practice: "What doubles fact helps with 7+8?"
   Show both strategies (double smaller+1 OR double larger-1).

3. GUIDED PRACTICE (10 minutes):
   Sort problems: doubles vs near-doubles.
   Solve near-doubles by stating the helper double first.

4. INDEPENDENT PRACTICE (10 minutes):
   Practice sheet with near-doubles.
   Explain which double helped for each.

DIFFERENTIATION:
For Struggling Learners:
- Use manipulatives to build doubles, then add one
- Provide doubles chart for reference
- Focus on smaller near-doubles first

For Advanced Learners:
- Extend to larger near-doubles
- Find "doubles minus one" strategy
- Compare efficiency of different strategies

ASSESSMENT INDICATORS:
- Identifies near-doubles problems
- States helper double before answering
- Explains reasoning clearly
- Solves near-doubles accurately and efficiently', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Doubles Plus One' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Making Ten Strategy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Making Ten Strategy' AND grade_level_min = 1),
  'Making Ten Strategy Topic Guide', 'Breaking apart to make ten when adding',
  'MAKING TEN STRATEGY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Number bonds to 10 (what pairs make 10)
- Addition within 10 fluency
- Understanding of breaking apart numbers

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify when making ten is helpful
2. Break apart an addend to make ten
3. Add fluently using the make ten strategy
4. Explain the steps of making ten

KEY CONCEPTS:
- Pairs that make 10: 9+1, 8+2, 7+3, 6+4, 5+5
- Breaking apart the second addend to make ten with the first
- Example: 8+5 → 8+2+3 → 10+3 = 13
- Ten frames visualize this strategy

COMMON MISCONCEPTIONS:
- Not knowing pairs that make 10
- Breaking apart the wrong number
- Forgetting to add the remaining part
- Trying to use strategy when not efficient

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "10 is a friendly number!" Review bonds to 10 with fingers or ten frame.

2. DIRECT INSTRUCTION (12 minutes):
   Model with ten frame: 9+4
   "9 needs 1 more to make 10. Take 1 from the 4. Now: 10+3=13"
   Show multiple examples: 8+6, 7+5, 9+7

3. GUIDED PRACTICE (10 minutes):
   Students use ten frames to solve problems.
   Verbalize: "To make ten, I need ___, so I break apart ___ into ___ and ___"

4. INDEPENDENT PRACTICE (10 minutes):
   Practice problems showing the make ten steps.
   Draw ten frames to illustrate solutions.

DIFFERENTIATION:
For Struggling Learners:
- Physical ten frames with counters
- Focus on 9+ facts first (only need 1 to make 10)
- Number bonds chart for reference

For Advanced Learners:
- Apply to larger numbers (19+5, 38+4)
- Compare make ten to other strategies
- Explain when make ten is most efficient

ASSESSMENT INDICATORS:
- Correctly identifies what''s needed to make 10
- Breaks apart second addend appropriately
- Arrives at correct sum
- Can explain strategy steps', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Making Ten Strategy' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Missing Addends
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Missing Addends' AND grade_level_min = 1),
  'Missing Addends Topic Guide', 'Finding missing numbers in addition',
  'MISSING ADDENDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Addition facts fluency
- Subtraction concept understanding
- Number bond familiarity

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that ? + 5 = 12 asks "what plus 5 makes 12"
2. Use counting up or subtraction to find missing addends
3. Solve problems with missing addend in either position
4. Apply to word problems with unknown quantities

KEY CONCEPTS:
- Missing addend: the unknown in an addition equation
- Relationship: if a + b = c, then c - b = a
- Counting up: start at known addend, count to sum
- Part-part-whole model: know whole and one part, find other part

COMMON MISCONCEPTIONS:
- Adding instead of finding the missing part
- Not understanding the question is asking
- Confusion when ? is in different positions
- Not connecting to subtraction relationship

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Story problem: "I have 5 apples. I need 12 for the party. How many more do I need?"

2. DIRECT INSTRUCTION (10 minutes):
   Use part-part-whole mat: whole is 12, one part is 5, find other part.
   Show counting up strategy: 5...6,7,8,9,10,11,12 (count 7)
   Show subtraction: 12 - 5 = 7
   Practice both: 4 + ? = 11, ? + 6 = 14

3. GUIDED PRACTICE (10 minutes):
   Number bond puzzles with one part missing.
   Partner practice explaining strategies.

4. INDEPENDENT PRACTICE (10 minutes):
   Mixed practice with missing addends.
   Word problems requiring finding unknown quantities.

DIFFERENTIATION:
For Struggling Learners:
- Part-part-whole mats with counters
- Number line for counting up
- Start with smaller sums

For Advanced Learners:
- Equations with expressions: 7 + ? = 6 + 9
- Multiple missing addend problems
- Create own missing addend word problems

ASSESSMENT INDICATORS:
- Correctly identifies what the problem asks
- Uses valid strategy to find missing addend
- Checks answer by adding
- Solves in various formats (? + a = b, a + ? = b)', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Missing Addends' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Three Addends
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Three Addends' AND grade_level_min = 1),
  'Three Addends Topic Guide', 'Adding three numbers together',
  'THREE ADDENDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Addition facts fluency
- Adding within 20
- Making ten strategy

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Add three one-digit numbers
2. Look for combinations that make 10
3. Use order flexibility (associative property)
4. Solve three-addend word problems

KEY CONCEPTS:
- You can add in any order (commutative/associative properties)
- Look for "friendly" combinations first (make 10, doubles)
- Examples: 4+6+3 → (4+6)+3 → 10+3 = 13
- Group addends strategically for efficiency

COMMON MISCONCEPTIONS:
- Thinking you must add left to right only
- Missing opportunities to make 10
- Losing track of what''s been added
- Adding only two numbers and forgetting the third

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Three friends brought toys: Tim has 3, Maya has 7, Eli has 5. How many altogether?"

2. DIRECT INSTRUCTION (12 minutes):
   Model looking for tens: 3+7+5 → "I see 3+7=10! Then 10+5=15"
   Show reordering: 2+8+4 → "8+2=10, then +4=14"
   Practice finding friendly pairs in: 6+5+4, 9+1+8, 5+5+7

3. GUIDED PRACTICE (10 minutes):
   Cards with three addends - students find and circle friendly pairs.
   Explain why they grouped numbers that way.

4. INDEPENDENT PRACTICE (10 minutes):
   Practice sheet with three addends.
   Show grouping with circles or parentheses.

DIFFERENTIATION:
For Struggling Learners:
- Use manipulatives to combine physically
- Circle the "make 10" pair before adding
- Provide number bond hints

For Advanced Learners:
- Add four addends
- Find multiple ways to group the same problem
- Create their own three-addend problems

ASSESSMENT INDICATORS:
- Finds efficient groupings
- Correctly adds three numbers
- Explains grouping strategy
- Applies to word problem contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Three Addends' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PLACE VALUE EXPANSION (5 topics)
-- ============================================================================

-- Representing Numbers to 100
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Representing Numbers to 100' AND grade_level_min = 1),
  'Representing Numbers to 100 Topic Guide', 'Showing numbers with blocks and drawings',
  'REPRESENTING NUMBERS TO 100 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 100
- Understanding of tens and ones
- Experience with base-ten blocks

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Represent any two-digit number with base-ten blocks
2. Draw quick pictures (sticks and dots) for numbers
3. Match different representations of the same number
4. Understand that 10 ones = 1 ten

KEY CONCEPTS:
- Place value representation: tens rod = 10 unit cubes
- Quick pictures: vertical line = ten, dot = one
- Multiple representations: 34 = 3 tens 4 ones = 34 ones
- Compose and decompose two-digit numbers

COMMON MISCONCEPTIONS:
- Drawing ones instead of tens for the tens digit
- Confusing place values (writing 52 for 25)
- Not understanding equivalence (1 ten = 10 ones)
- Miscounting when many blocks are shown

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Build my number!" - show a two-digit number, students race to build with blocks.

2. DIRECT INSTRUCTION (10 minutes):
   Demonstrate building 47: "4 tens (show rods) and 7 ones (show cubes)"
   Show quick picture method: 4 lines and 7 dots.
   Count to verify: 10, 20, 30, 40, 41, 42, 43, 44, 45, 46, 47

3. GUIDED PRACTICE (10 minutes):
   Given numbers, students build with blocks and draw quick pictures.
   Given pictures, students write the number.

4. INDEPENDENT PRACTICE (10 minutes):
   Match representations to numbers.
   Draw representations for given numbers.

DIFFERENTIATION:
For Struggling Learners:
- Physical blocks before pictures
- Place value mat to organize
- Count by tens to verify

For Advanced Learners:
- Extend to numbers near 100
- Show same number multiple ways
- Begin three-digit representations

ASSESSMENT INDICATORS:
- Correctly builds numbers with blocks
- Draws accurate quick pictures
- Matches representations correctly
- Explains tens and ones in a number', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Representing Numbers to 100' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Number Words to 100
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Words to 100' AND grade_level_min = 1),
  'Number Words to 100 Topic Guide', 'Reading and writing number words',
  'NUMBER WORDS TO 100 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Number words to 20
- Two-digit number recognition
- Understanding of tens and ones

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read number words for numbers 1-100
2. Write number words for two-digit numbers
3. Match number words to numerals
4. Recognize patterns in number word names

KEY CONCEPTS:
- Decade words: twenty, thirty, forty, fifty, sixty, seventy, eighty, ninety
- Hyphenated number words: twenty-one, thirty-five
- Pattern: decade word + ones word (sixty-three)
- Special words: one hundred

COMMON MISCONCEPTIONS:
- Spelling errors (fourty for forty, ninty for ninety)
- Forgetting hyphens in compound numbers
- Confusion with similar sounds (thirteen vs thirty)
- Writing numbers as one word (thirtyfive)

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Number word treasure hunt - find hidden number words around room.

2. DIRECT INSTRUCTION (10 minutes):
   Teach decade words with visual chart.
   Show pattern: thirty + seven = thirty-seven
   Practice reading and writing several examples.
   Highlight tricky spellings (forty, not fourty).

3. GUIDED PRACTICE (10 minutes):
   Match game: numerals to number words.
   Write number words for displayed numerals.

4. INDEPENDENT PRACTICE (10 minutes):
   Complete number word sentences.
   Read number word problems.

DIFFERENTIATION:
For Struggling Learners:
- Word bank of decade words
- Focus on one decade at a time
- Trace then write practice

For Advanced Learners:
- Write expanded sentences: "I am thirty-seven years old"
- Include number words in stories
- Extend to larger numbers

ASSESSMENT INDICATORS:
- Correctly reads number words aloud
- Writes number words with proper spelling
- Uses hyphens correctly
- Matches numerals to words accurately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Words to 100' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Ordering Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ordering Numbers' AND grade_level_min = 1),
  'Ordering Numbers Topic Guide', 'Putting numbers in order',
  'ORDERING NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Comparing two numbers (greater/less)
- Understanding tens and ones place value
- Number recognition to 100

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Order three or more numbers from least to greatest
2. Order numbers from greatest to least
3. Use place value to compare numbers
4. Find positions of numbers in a sequence

KEY CONCEPTS:
- Compare tens place first, then ones
- Ascending order: least to greatest (getting bigger)
- Descending order: greatest to least (getting smaller)
- Number line shows order visually

COMMON MISCONCEPTIONS:
- Only looking at ones digit to compare
- Confusing least/greatest directions
- Not using place value systematically
- Difficulty with numbers having same tens digit

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Line up!" Students with number cards order themselves least to greatest.

2. DIRECT INSTRUCTION (10 minutes):
   Compare 47, 53, 45: "Compare tens first. 4 tens vs 5 tens..."
   Show on number line where each falls.
   Demonstrate systematic comparison process.

3. GUIDED PRACTICE (10 minutes):
   Order sets of 3-4 numbers together.
   Practice both ascending and descending order.

4. INDEPENDENT PRACTICE (10 minutes):
   Ordering exercises with varied numbers.
   Include some sets with same tens digit.

DIFFERENTIATION:
For Struggling Learners:
- Use number line for placement
- Base-ten blocks to compare visually
- Start with just three numbers

For Advanced Learners:
- Order 5+ numbers at once
- Include numbers near 100
- Explain ordering reasoning in writing

ASSESSMENT INDICATORS:
- Orders numbers correctly
- Uses place value to compare
- Distinguishes ascending/descending
- Explains reasoning for order', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ordering Numbers' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Number Patterns to 120
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Patterns to 120' AND grade_level_min = 1),
  'Number Patterns to 120 Topic Guide', 'Identifying and continuing number patterns',
  'NUMBER PATTERNS TO 120 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 120
- Skip counting by 1s, 2s, 5s, 10s
- Number recognition through 120

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify rules in number patterns
2. Continue patterns following the rule
3. Find missing numbers in patterns
4. Create their own number patterns

KEY CONCEPTS:
- Pattern rule: what happens each time (add 2, add 5, subtract 1)
- Growing patterns: numbers increase
- Shrinking patterns: numbers decrease
- Skip counting creates patterns

COMMON MISCONCEPTIONS:
- Only looking at first two numbers
- Not maintaining consistent rule
- Confusing counting with adding the rule amount
- Missing that patterns can decrease

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "What comes next?" Show 2, 4, 6, 8, ___. Students predict and explain.

2. DIRECT INSTRUCTION (10 minutes):
   Analyze patterns to find rules:
   - 5, 10, 15, 20 (rule: add 5)
   - 100, 90, 80, 70 (rule: subtract 10)
   Show hundred chart patterns.

3. GUIDED PRACTICE (10 minutes):
   Given patterns, identify rules and continue.
   Fill in missing numbers in patterns.

4. INDEPENDENT PRACTICE (10 minutes):
   Continue various patterns.
   Create own patterns for partner to solve.

DIFFERENTIATION:
For Struggling Learners:
- Hundred chart for reference
- Start with add 1, add 2 patterns
- Manipulatives to build patterns

For Advanced Learners:
- Two-rule patterns (add 2, add 3, add 2...)
- Find multiple possible rules
- Patterns starting from any number

ASSESSMENT INDICATORS:
- Identifies pattern rules correctly
- Continues patterns accurately
- Finds missing numbers in sequences
- Creates valid patterns', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Patterns to 120' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- 10 More and 10 Less
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = '10 More and 10 Less' AND grade_level_min = 1),
  '10 More and 10 Less Topic Guide', 'Finding 10 more and 10 less than a number',
  '10 MORE AND 10 LESS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Place value understanding (tens and ones)
- Skip counting by 10s
- Numbers to 100 recognition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Mentally find 10 more than any two-digit number
2. Mentally find 10 less than any two-digit number
3. Explain why only tens digit changes
4. Apply to solve problems

KEY CONCEPTS:
- 10 more: tens digit increases by 1, ones digit stays same
- 10 less: tens digit decreases by 1, ones digit stays same
- Place value reasoning explains the pattern
- Connection to hundred chart (up/down columns)

COMMON MISCONCEPTIONS:
- Adding/subtracting from ones digit
- Changing both digits
- Confusion at decade boundaries (10 less than 50)
- Not seeing the pattern

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Hundred chart exploration: "If I''m on 34, where is 10 more? 10 less?"

2. DIRECT INSTRUCTION (10 minutes):
   Use base-ten blocks: show 45 with 4 tens and 5 ones.
   Add one more ten rod: now 55 (10 more).
   Remove one ten rod: now 35 (10 less).
   Emphasize: "Ones stay the same!"

3. GUIDED PRACTICE (10 minutes):
   Practice finding 10 more/less with hundred chart.
   Mental math challenges without chart.

4. INDEPENDENT PRACTICE (10 minutes):
   Practice problems finding 10 more and 10 less.
   Include word problems using the concept.

DIFFERENTIATION:
For Struggling Learners:
- Hundred chart always available
- Base-ten blocks for each problem
- Focus on multiples of 10 first

For Advanced Learners:
- Find 20 more, 20 less
- Find 10 more and 10 less in sequence
- Apply to 3-digit numbers

ASSESSMENT INDICATORS:
- Quickly finds 10 more/less mentally
- Explains why ones digit unchanged
- Uses hundred chart efficiently
- Applies to problem situations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = '10 More and 10 Less' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- COUNTING AND NUMBER PATTERNS UNIT (9 topics)
-- ============================================================================

-- Skip Counting by 2s (Grade 1)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 2s' AND grade_level_min = 1),
  'Skip Counting by 2s Topic Guide', 'Counting by 2s to 100',
  'SKIP COUNTING BY 2s - GRADE 1 TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 100 by 1s
- Understanding of "two more"
- Even number recognition beginning

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Skip count by 2s starting from 0 to 100
2. Skip count by 2s starting from any even number
3. Recognize the pattern of even numbers
4. Apply skip counting to solve problems

KEY CONCEPTS:
- Skip counting sequence: 2, 4, 6, 8, 10, 12...
- All numbers in skip count by 2s are even
- Pattern: always ends in 0, 2, 4, 6, or 8
- Connection to pairs and groups of 2

COMMON MISCONCEPTIONS:
- Starting from 1 instead of 0 or 2
- Mixing with counting by 1s sequence
- Losing rhythm at decade changes (18, 20, 22)
- Thinking odd numbers are included

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Pair up shoes/socks: "Let''s count by 2s! One pair is 2, two pairs is 4..."

2. DIRECT INSTRUCTION (10 minutes):
   Chant and clap the 2s pattern to 20, then extend.
   Mark on hundred chart to see visual pattern.
   Practice starting from different numbers: "Start at 36, count by 2s."

3. GUIDED PRACTICE (10 minutes):
   Fill in skip counting sequences.
   Hundred chart coloring for 2s pattern.

4. INDEPENDENT PRACTICE (10 minutes):
   Complete skip counting worksheets.
   Solve problems using skip counting by 2s.

DIFFERENTIATION:
For Struggling Learners:
- Hundred chart with every other number highlighted
- Count paired objects physically
- Focus on 2-20 first

For Advanced Learners:
- Skip count backwards by 2s
- Start from odd numbers (impossible - explain why)
- Connect to multiplication preview

ASSESSMENT INDICATORS:
- Fluently counts by 2s to 100
- Can start from any even number
- Identifies pattern in sequence
- Applies to counting pairs problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 2s' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Skip Counting by 5s (Grade 1)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 5s' AND grade_level_min = 1),
  'Skip Counting by 5s Topic Guide', 'Counting by 5s to 100',
  'SKIP COUNTING BY 5s - GRADE 1 TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 100 by 1s
- Skip counting by 10s familiarity
- Understanding of "five more"

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Skip count by 5s starting from 0 to 100
2. Start skip counting from any multiple of 5
3. Recognize the 5s pattern (ends in 0 or 5)
4. Connect to telling time and counting money

KEY CONCEPTS:
- Skip counting sequence: 5, 10, 15, 20, 25...
- Pattern: alternates between ending in 5 and 0
- Two 5s equal 10 (connection to 10s)
- Useful for counting nickels and clock minutes

COMMON MISCONCEPTIONS:
- Confusing 5s with 2s pattern
- Difficulty around 55, 60, 65
- Thinking 51, 52, 53 comes after 50 in 5s
- Not recognizing 0 and 5 ending pattern

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Count fingers by 5s: "One hand is 5, two hands is 10, three hands is 15..."

2. DIRECT INSTRUCTION (10 minutes):
   Clap and count by 5s with rhythm.
   Show on hundred chart - every 5th number.
   Connect to nickel counting for real-world meaning.

3. GUIDED PRACTICE (10 minutes):
   Fill-in-the-blank sequences.
   Count groups of 5 objects.
   Clock minute counting preview.

4. INDEPENDENT PRACTICE (10 minutes):
   Skip counting practice sheets.
   Problem solving with groups of 5.

DIFFERENTIATION:
For Struggling Learners:
- Highlighted hundred chart
- Physical groups of 5 to count
- Focus on 5-50 first

For Advanced Learners:
- Skip count backwards by 5s
- Start from various multiples of 5
- Mix 5s and 10s counting

ASSESSMENT INDICATORS:
- Counts by 5s fluently to 100
- Starts from any multiple of 5
- Recognizes 0/5 ending pattern
- Applies to real contexts (money, time)', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 5s' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Skip Counting by 10s to 120
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 10s to 120' AND grade_level_min = 1),
  'Skip Counting by 10s to 120 Topic Guide', 'Counting by 10s to 120',
  'SKIP COUNTING BY 10s TO 120 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting by 10s to 100
- Understanding of "ten more"
- Place value basics

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Skip count by 10s from 0 to 120
2. Start from any multiple of 10
3. Continue past 100 confidently
4. Apply to counting dimes and other contexts

KEY CONCEPTS:
- Skip counting sequence: 10, 20, 30...100, 110, 120
- Pattern extends past 100: 100, 110, 120
- All numbers end in 0
- Connection to place value (tens place changes)

COMMON MISCONCEPTIONS:
- Stopping at 100
- Uncertainty about 100, 110, 120 pattern
- Saying "onety" or other invented words
- Losing track of place in sequence

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Decade countdown" - practice going backwards from 100. Now let''s go past 100!

2. DIRECT INSTRUCTION (10 minutes):
   Count bundles of 10 straws past 100.
   Use 120 chart to see extended pattern.
   Emphasize: "After 100 comes 110, 120, just like after 0 comes 10, 20."

3. GUIDED PRACTICE (10 minutes):
   Complete sequences that cross 100.
   Count stacks of dimes to various amounts.

4. INDEPENDENT PRACTICE (10 minutes):
   Fill-in sequences to 120.
   Problem solving counting by 10s.

DIFFERENTIATION:
For Struggling Learners:
- 120 chart reference
- Physical ten-bundles to count
- Focus on 80-120 transition

For Advanced Learners:
- Count by 10s starting from non-zero (13, 23, 33...)
- Count backwards from 120
- Extend beyond 120

ASSESSMENT INDICATORS:
- Counts by 10s fluently to 120
- Crosses 100 confidently
- Starts from any multiple of 10
- Applies to counting contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 10s to 120' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Even and Odd Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Even and Odd Numbers' AND grade_level_min = 1),
  'Even and Odd Numbers Topic Guide', 'Identifying even and odd numbers',
  'EVEN AND ODD NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Skip counting by 2s
- Understanding of "pairs"
- Number recognition to 100

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define even numbers as amounts that pair evenly
2. Identify odd numbers as having one left over
3. Recognize even/odd by ones digit
4. Sort numbers into even and odd groups

KEY CONCEPTS:
- Even: can make pairs with none left over (0, 2, 4, 6, 8...)
- Odd: one left over when making pairs (1, 3, 5, 7, 9...)
- Ones digit determines even/odd
- Even ones digits: 0, 2, 4, 6, 8
- Odd ones digits: 1, 3, 5, 7, 9

COMMON MISCONCEPTIONS:
- Thinking larger numbers are always even
- Confusing even/odd with other properties
- Not looking at ones digit for two-digit numbers
- Thinking 0 is neither even nor odd (it is even)

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Partner up!" activity - can everyone find a partner? (Even class = yes, odd = one left)

2. DIRECT INSTRUCTION (10 minutes):
   Model pairing with manipulatives for numbers 1-10.
   Show ones digit pattern: 2, 4, 6, 8, 0 = even; 1, 3, 5, 7, 9 = odd
   Extend to larger numbers: 47 is odd because 7 is odd.

3. GUIDED PRACTICE (10 minutes):
   Sort numbers 1-20 into even/odd groups.
   Extend to larger numbers using ones digit rule.

4. INDEPENDENT PRACTICE (10 minutes):
   Even/odd identification worksheets.
   Number sort activities.

DIFFERENTIATION:
For Struggling Learners:
- Physical manipulatives for pairing
- Even/odd chart reference
- Focus on numbers 1-20 first

For Advanced Learners:
- What happens when you add even+even, odd+odd?
- Find patterns in even/odd sequences
- Apply to larger numbers

ASSESSMENT INDICATORS:
- Correctly identifies even and odd
- Uses ones digit efficiently
- Explains reasoning for classification
- Applies to various number sizes', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Even and Odd Numbers' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Number Line Counting
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Line Counting' AND grade_level_min = 1),
  'Number Line Counting Topic Guide', 'Using number lines to count',
  'NUMBER LINE COUNTING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 100
- Understanding of number order
- Before and after concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count forward on a number line
2. Count backward on a number line
3. Locate numbers on a number line
4. Use number lines for addition and subtraction

KEY CONCEPTS:
- Number lines show numbers in order from left to right
- Moving right means increasing (adding)
- Moving left means decreasing (subtracting)
- Equal spacing between consecutive numbers

COMMON MISCONCEPTIONS:
- Moving wrong direction for add/subtract
- Counting tick marks instead of jumps
- Starting count at 0 when should start at given number
- Confusion with number lines not starting at 0

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Floor number line - students walk forward/backward to count.

2. DIRECT INSTRUCTION (10 minutes):
   Show number line structure and conventions.
   Model: "Find 8, count forward 4. Point at each: 9, 10, 11, 12"
   Practice locating numbers between given endpoints.

3. GUIDED PRACTICE (10 minutes):
   Use number lines for counting on/back.
   Place given numbers on partially-labeled number lines.

4. INDEPENDENT PRACTICE (10 minutes):
   Number line worksheets.
   Simple addition/subtraction on number lines.

DIFFERENTIATION:
For Struggling Learners:
- Large floor number line to walk
- Partial number lines (0-20)
- Focus on locating, then adding

For Advanced Learners:
- Number lines with varied scales
- Missing number on number lines
- Number lines for problem solving

ASSESSMENT INDICATORS:
- Counts correctly on number lines
- Locates numbers accurately
- Uses for addition and subtraction
- Interprets number line representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Line Counting' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Before After Between
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Before After Between' AND grade_level_min = 1),
  'Before After Between Topic Guide', 'Finding numbers before, after, and between',
  'BEFORE, AFTER, BETWEEN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting forward and backward
- Number recognition to 100+
- Understanding of number order

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the number that comes before a given number
2. Identify the number that comes after a given number
3. Find numbers that come between two given numbers
4. Apply concepts using number lines and sequences

KEY CONCEPTS:
- Before: one less (57 comes before 58)
- After: one more (59 comes after 58)
- Between: numbers in the middle (between 25 and 28 are 26, 27)
- Relationship to counting forward/backward

COMMON MISCONCEPTIONS:
- Confusing before/after directions
- Thinking "between" only means one number
- Difficulty at decade crossings (after 39, before 50)
- Not connecting to counting skills

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Number neighbors" - What numbers live next to 25?

2. DIRECT INSTRUCTION (10 minutes):
   Define before, after, between with number line visual.
   Practice: "What comes just before 70? Just after?"
   Extend: "What numbers are between 45 and 50?"

3. GUIDED PRACTICE (10 minutes):
   Fill in before/after boxes.
   Complete "between" sequences.
   Include decade crossing examples.

4. INDEPENDENT PRACTICE (10 minutes):
   Mixed before/after/between worksheets.
   Sequence completion activities.

DIFFERENTIATION:
For Struggling Learners:
- Number line always available
- Focus on before/after first
- Use smaller numbers

For Advanced Learners:
- Multiple "between" numbers
- Work with numbers to 120
- Create puzzles for classmates

ASSESSMENT INDICATORS:
- Correctly identifies before and after
- Finds numbers between accurately
- Handles decade crossings
- Explains reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Before After Between' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Growing Number Patterns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Growing Number Patterns' AND grade_level_min = 1),
  'Growing Number Patterns Topic Guide', 'Identifying and extending growing patterns',
  'GROWING NUMBER PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Skip counting experience
- Understanding of "more"
- Pattern recognition basics

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the rule in a growing pattern
2. Extend growing patterns
3. Find missing numbers in patterns
4. Create their own growing patterns

KEY CONCEPTS:
- Growing pattern: numbers increase by a consistent amount
- Rule: what you add each time (add 2, add 3, add 5)
- Look at differences between consecutive numbers
- Connection to skip counting

COMMON MISCONCEPTIONS:
- Thinking any increasing sequence is a pattern
- Not finding consistent rule
- Adding wrong amount
- Difficulty with rules other than +1, +2

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Growing stairs" - build staircases with blocks: 1, 2, 3, 4... What''s next?

2. DIRECT INSTRUCTION (10 minutes):
   Present pattern: 5, 8, 11, 14, ___
   "What''s happening? Adding 3 each time!"
   Show how to find rule by looking at differences.

3. GUIDED PRACTICE (10 minutes):
   Analyze patterns together to find rules.
   Extend patterns and fill in missing numbers.

4. INDEPENDENT PRACTICE (10 minutes):
   Pattern worksheets with varied rules.
   Create own patterns for partner.

DIFFERENTIATION:
For Struggling Learners:
- Start with +1, +2 patterns
- Use manipulatives to build
- Number line support

For Advanced Learners:
- Larger number patterns
- Find multiple missing numbers
- Patterns with rules like +10, +5

ASSESSMENT INDICATORS:
- Identifies pattern rules correctly
- Extends patterns accurately
- Finds missing numbers
- Creates valid growing patterns', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Growing Number Patterns' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Shrinking Number Patterns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Shrinking Number Patterns' AND grade_level_min = 1),
  'Shrinking Number Patterns Topic Guide', 'Identifying and extending decreasing patterns',
  'SHRINKING NUMBER PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting backward
- Subtraction concepts
- Growing patterns experience

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the rule in a shrinking pattern
2. Extend decreasing patterns
3. Find missing numbers in shrinking patterns
4. Compare shrinking and growing patterns

KEY CONCEPTS:
- Shrinking pattern: numbers decrease by a consistent amount
- Rule: what you subtract each time (subtract 2, subtract 5)
- Numbers get smaller as pattern continues
- Connection to counting backward

COMMON MISCONCEPTIONS:
- Trying to add instead of subtract
- Confusing direction of change
- Stopping at 0 or going negative unexpectedly
- Rule inconsistency

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Countdown" - 10, 9, 8, 7... This is a shrinking pattern!

2. DIRECT INSTRUCTION (10 minutes):
   Present: 50, 45, 40, 35, ___
   "Numbers are getting smaller. Subtracting 5 each time!"
   Practice finding "subtract" rules.

3. GUIDED PRACTICE (10 minutes):
   Work through shrinking patterns together.
   Compare: growing vs shrinking versions.

4. INDEPENDENT PRACTICE (10 minutes):
   Mixed pattern worksheets.
   Create shrinking patterns.

DIFFERENTIATION:
For Struggling Learners:
- Start with -1, -2 patterns
- Number line counting backward
- Smaller starting numbers

For Advanced Learners:
- Larger subtraction rules (-10, -5)
- Patterns that approach or reach 0
- Pattern creation challenges

ASSESSMENT INDICATORS:
- Identifies decreasing rules
- Extends shrinking patterns
- Distinguishes from growing patterns
- Finds missing numbers accurately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Shrinking Number Patterns' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Counting Forward and Backward
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting Forward and Backward' AND grade_level_min = 1),
  'Counting Forward and Backward Topic Guide', 'Counting in both directions from any number',
  'COUNTING FORWARD AND BACKWARD - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 100
- Understanding of "more" and "less"
- Number order concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count forward from any number to 120
2. Count backward from any number
3. Switch between forward and backward fluently
4. Apply counting in problem contexts

KEY CONCEPTS:
- Forward: getting larger (+1 each time)
- Backward: getting smaller (-1 each time)
- Start anywhere and continue in either direction
- Decade crossings require attention (49, 50, 51 or 51, 50, 49)

COMMON MISCONCEPTIONS:
- Difficulty at decade crossings backward
- Losing track of direction
- Uncertainty starting from middle of sequence
- Stopping at round numbers unnecessarily

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Traffic light counting" - green = forward, red = stop, reverse = backward

2. DIRECT INSTRUCTION (10 minutes):
   Model counting from various starting points.
   Practice decade crossings both directions.
   Show on number line/hundred chart.

3. GUIDED PRACTICE (10 minutes):
   Count aloud in specified directions.
   Fill in sequences going forward and backward.

4. INDEPENDENT PRACTICE (10 minutes):
   Worksheet with mixed direction counting.
   Number sequence puzzles.

DIFFERENTIATION:
For Struggling Learners:
- Hundred chart for support
- Focus on one direction at a time
- Practice decade crossings explicitly

For Advanced Learners:
- Quick direction switches
- Count beyond 100
- Apply to mental addition/subtraction

ASSESSMENT INDICATORS:
- Counts fluently in both directions
- Starts from any number confidently
- Crosses decades without hesitation
- Applies to problem solving', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting Forward and Backward' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TIME AND MONEY UNIT (9 topics)
-- ============================================================================

-- Time to the Hour
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Time to the Hour' AND grade_level_min = 1),
  'Time to the Hour Topic Guide', 'Telling and writing time to the hour',
  'TIME TO THE HOUR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Number recognition to 12
- Understanding of "o''clock"
- Clock familiarity

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the hour and minute hands
2. Tell time when minute hand is on 12
3. Write time in digital format (3:00)
4. Draw clock hands showing hour times

KEY CONCEPTS:
- Short hand = hour hand (points to the hour)
- Long hand = minute hand (on 12 for o''clock times)
- "O''clock" means "of the clock" - exact hour
- Digital format: hour:00

COMMON MISCONCEPTIONS:
- Confusing hour and minute hands
- Reading the number minute hand points to as the time
- Not recognizing that minute hand on 12 = :00
- Difficulty drawing clock hands correctly

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "What time do you wake up? Go to bed?" Connect time to daily life.

2. DIRECT INSTRUCTION (10 minutes):
   Introduce analog clock parts: face, numbers, hands.
   Model: "The short hand tells the hour. It''s pointing to 3. The long hand is on 12. It''s 3 o''clock!"
   Show matching digital time: 3:00

3. GUIDED PRACTICE (10 minutes):
   Read times on demonstration clocks.
   Match analog and digital times.
   Write times shown on clocks.

4. INDEPENDENT PRACTICE (10 minutes):
   Clock reading worksheets.
   Draw hands for given times.

DIFFERENTIATION:
For Struggling Learners:
- Large demonstration clock
- Focus on hours 1-6 first
- Color-coded hands

For Advanced Learners:
- Include times like 12:00
- Connect to daily schedule
- Begin half-hour preview

ASSESSMENT INDICATORS:
- Identifies clock hands correctly
- Tells o''clock times accurately
- Writes digital format correctly
- Draws hands for given hours', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Time to the Hour' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Time to the Half Hour
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Time to the Half Hour' AND grade_level_min = 1),
  'Time to the Half Hour Topic Guide', 'Telling time to the half hour',
  'TIME TO THE HALF HOUR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Time to the hour mastery
- Understanding of "half"
- Skip counting by 5s

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Tell time when minute hand is on 6
2. Understand "half past" means 30 minutes
3. Write half-hour times in digital format (2:30)
4. Draw clock hands showing half-hour times

KEY CONCEPTS:
- Minute hand on 6 = half past (30 minutes)
- Hour hand is between two numbers at half past
- "Half past three" = 3:30
- 30 minutes = halfway around the clock

COMMON MISCONCEPTIONS:
- Hour hand pointing exactly at a number at half past
- Reading "6:30" when minute hand is on 6
- Not understanding "half past" terminology
- Confusion about where hour hand points

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Split a circle in half. "Half a clock is 30 minutes. The minute hand shows half by pointing at 6."

2. DIRECT INSTRUCTION (12 minutes):
   Show clock: minute hand on 6, hour hand between 3 and 4.
   "The hour hand has moved halfway from 3 to 4. It''s half past 3, or 3:30."
   Practice reading several half-hour times.

3. GUIDED PRACTICE (10 minutes):
   Read half-hour times on various clocks.
   Write times: "half past seven" = 7:30
   Match analog to digital.

4. INDEPENDENT PRACTICE (10 minutes):
   Mixed hour and half-hour time reading.
   Drawing hands for half-hour times.

DIFFERENTIATION:
For Struggling Learners:
- Geared clocks showing hand relationship
- Focus on language "half past"
- Practice hours first, then half hours

For Advanced Learners:
- Elapsed time (1 hour after 2:30 is...)
- Daily schedule with half hours
- Preview quarter hours

ASSESSMENT INDICATORS:
- Reads half-hour times correctly
- Writes :30 in digital format
- Draws minute hand on 6
- Positions hour hand between numbers', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Time to the Half Hour' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Digital and Analog Clocks
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Digital and Analog Clocks' AND grade_level_min = 1),
  'Digital and Analog Clocks Topic Guide', 'Reading time on both types of clocks',
  'DIGITAL AND ANALOG CLOCKS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Time to the hour
- Time to the half hour
- Number recognition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read time on analog clocks
2. Read time on digital clocks
3. Match equivalent times on both clock types
4. Identify which type of clock is shown

KEY CONCEPTS:
- Analog: has face with hands that move
- Digital: shows numbers directly
- Same time looks different on each type
- Colon separates hours from minutes on digital

COMMON MISCONCEPTIONS:
- Reading digital minutes as the time (3:30 read as "3:3")
- Not connecting analog and digital representations
- Confusion about leading zeros (09:00)
- Thinking they show different times

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show various clocks from classroom/home. "Where do you see clocks?"

2. DIRECT INSTRUCTION (10 minutes):
   Compare same time on both clock types.
   Analog 4:00 = Digital 4:00
   Practice matching pairs.
   Discuss when you might see each type.

3. GUIDED PRACTICE (10 minutes):
   Matching games: connect analog to digital.
   Given one type, draw/write the other.

4. INDEPENDENT PRACTICE (10 minutes):
   Mixed clock reading practice.
   Conversion between types.

DIFFERENTIATION:
For Struggling Learners:
- Focus on one type before matching
- Paired clocks always visible
- Hour times only at first

For Advanced Learners:
- Include half-hour matching
- Real clocks around school
- Time scavenger hunt

ASSESSMENT INDICATORS:
- Reads both clock types
- Matches equivalent times
- Converts between types
- Identifies clock types correctly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Digital and Analog Clocks' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Elapsed Time in Hours
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Elapsed Time in Hours' AND grade_level_min = 1),
  'Elapsed Time in Hours Topic Guide', 'Finding how many hours have passed',
  'ELAPSED TIME IN HOURS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Time to the hour
- Counting forward
- Understanding duration

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand elapsed time as time that passes
2. Count hours between two o''clock times
3. Find ending times given start time and hours elapsed
4. Solve simple elapsed time problems

KEY CONCEPTS:
- Elapsed time: how much time passes between start and end
- Count hours by counting hour hand movements
- 2:00 to 5:00 = 3 hours elapsed
- Can go forward (what time will it be?) or backward (what time was it?)

COMMON MISCONCEPTIONS:
- Subtracting instead of counting when crossing 12
- Confusing start and end times
- Not accounting for all hours
- Difficulty with questions going backward in time

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "School starts at 8:00. We go home at 3:00. How many hours is that?"

2. DIRECT INSTRUCTION (10 minutes):
   Use clock to show hour hand moving: 8, 9, 10, 11, 12, 1, 2, 3 = 7 hours
   Practice: "From 2:00 to 5:00 is how many hours?"
   Count on fingers or clock face.

3. GUIDED PRACTICE (10 minutes):
   Elapsed time word problems with daily activities.
   Use clock to count hours.

4. INDEPENDENT PRACTICE (10 minutes):
   Worksheet problems finding elapsed hours.
   Simple story problems.

DIFFERENTIATION:
For Struggling Learners:
- Clock to manipulate
- Smaller time spans (1-3 hours)
- No crossing of 12

For Advanced Learners:
- Spans crossing 12
- "How long until...?" questions
- Create own time problems

ASSESSMENT INDICATORS:
- Counts hours accurately
- Solves elapsed time questions
- Uses clock or counting appropriately
- Interprets time story problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Elapsed Time in Hours' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Coin Values
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Coin Values' AND grade_level_min = 1),
  'Coin Values Topic Guide', 'Learning penny, nickel, dime, quarter values',
  'COIN VALUES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Number recognition
- Understanding of "worth" or "value"
- Counting to 100

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify penny, nickel, dime, and quarter by appearance
2. State the value of each coin in cents
3. Understand that different coins have different values
4. Begin connecting size to value (larger ≠ worth more)

KEY CONCEPTS:
- Penny = 1 cent (¢), copper colored
- Nickel = 5 cents, larger and silver
- Dime = 10 cents, smallest silver coin
- Quarter = 25 cents, largest silver coin
- Cent symbol: ¢

COMMON MISCONCEPTIONS:
- Bigger coin = more value (nickel vs dime)
- All silver coins are the same
- Confusing coin names
- Not recognizing both sides of coins

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Display real or plastic coins. "Who knows what these are called?"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce each coin: name, appearance, value.
   Special attention to nickel/dime: "The dime is smaller but worth more!"
   Coin rhymes or chants to memorize values.

3. GUIDED PRACTICE (10 minutes):
   Sorting coins by type.
   Matching coins to values.
   "Show me a coin worth 5 cents."

4. INDEPENDENT PRACTICE (10 minutes):
   Coin identification worksheets.
   Value matching activities.

DIFFERENTIATION:
For Struggling Learners:
- Real coins to handle
- Focus on two coins at a time
- Visual reference chart

For Advanced Learners:
- Coin equivalencies (5 pennies = 1 nickel)
- Start combining coins
- Compare coin values

ASSESSMENT INDICATORS:
- Names coins correctly
- States values accurately
- Identifies coins by description
- Understands size vs value relationship', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Coin Values' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Counting Like Coins
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting Like Coins' AND grade_level_min = 1),
  'Counting Like Coins Topic Guide', 'Counting groups of the same coin',
  'COUNTING LIKE COINS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Coin value knowledge
- Skip counting by 1s, 5s, 10s, 25s
- Counting objects

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count groups of pennies by 1s
2. Count groups of nickels by 5s
3. Count groups of dimes by 10s
4. Count groups of quarters by 25s

KEY CONCEPTS:
- Count pennies: 1, 2, 3, 4... (by 1s)
- Count nickels: 5, 10, 15, 20... (by 5s)
- Count dimes: 10, 20, 30... (by 10s)
- Count quarters: 25, 50, 75, 100... (by 25s)
- Answer is total cents

COMMON MISCONCEPTIONS:
- Counting coins instead of their values
- Using wrong skip count sequence
- Forgetting cents symbol
- Stopping at wrong number

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You found a pile of dimes! Let''s count how much money!"

2. DIRECT INSTRUCTION (10 minutes):
   Model counting each coin type.
   Connect to skip counting: "Nickels are easy - just count by 5s!"
   Practice with various amounts.

3. GUIDED PRACTICE (10 minutes):
   Count displayed coin groups together.
   Write amounts with cents symbol.

4. INDEPENDENT PRACTICE (10 minutes):
   Worksheets with groups of like coins.
   Count and record totals.

DIFFERENTIATION:
For Struggling Learners:
- Start with pennies and dimes (easier patterns)
- Skip count chart visible
- Fewer coins per group

For Advanced Learners:
- Larger groups of coins
- "How many nickels make 45¢?"
- Multiple groups to compare

ASSESSMENT INDICATORS:
- Uses correct skip count for each coin
- Counts accurately
- Writes answer with ¢ symbol
- Connects coins to skip counting', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting Like Coins' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Counting Mixed Coins
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting Mixed Coins' AND grade_level_min = 1),
  'Counting Mixed Coins Topic Guide', 'Counting collections of different coins',
  'COUNTING MIXED COINS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Individual coin values
- Counting like coins
- Skip counting flexibility

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Sort coins before counting
2. Count on from larger coins to smaller
3. Find the total value of mixed coins
4. Use efficient counting strategies

KEY CONCEPTS:
- Start with highest value coins (quarters first)
- Count on as you add each coin type
- Sort coins to organize counting
- Keep running total in head

COMMON MISCONCEPTIONS:
- Counting coins by quantity not value
- Starting with smaller coins
- Losing track of running total
- Mixing up skip counting sequences

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Empty a change purse. "How much money is here?"

2. DIRECT INSTRUCTION (12 minutes):
   Model: "First sort: 1 quarter, 2 dimes, 1 nickel, 3 pennies"
   Count: "25... 35, 45... 50... 51, 52, 53 cents!"
   Show counting on strategy with different examples.

3. GUIDED PRACTICE (10 minutes):
   Sort and count coin collections together.
   Practice counting on from different starting points.

4. INDEPENDENT PRACTICE (10 minutes):
   Mixed coin counting worksheets.
   Draw coins that match given totals.

DIFFERENTIATION:
For Struggling Learners:
- Sort coins physically first
- Written amounts for each step
- Limit to two coin types

For Advanced Learners:
- More coins and higher totals
- Multiple ways to make same amount
- Missing coin problems

ASSESSMENT INDICATORS:
- Sorts coins efficiently
- Counts on correctly
- Arrives at accurate total
- Uses efficient strategies', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting Mixed Coins' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Dollar Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dollar Introduction' AND grade_level_min = 1),
  'Dollar Introduction Topic Guide', 'Understanding 100 cents equals one dollar',
  'DOLLAR INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 100
- Coin values and counting
- Understanding of equivalence

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that 100 cents = 1 dollar
2. Recognize dollar bill and dollar coin
3. Write dollar amounts with $ symbol
4. Begin exchanging cents for dollars

KEY CONCEPTS:
- 100 cents = 1 dollar
- Dollar symbol: $
- Decimal point separates dollars and cents: $1.00
- 4 quarters = 1 dollar
- 10 dimes = 1 dollar

COMMON MISCONCEPTIONS:
- Dollar amount = 100 (not understanding exchange)
- Confusion with $ and ¢ symbols
- Not recognizing dollar coin
- Thinking dollars and cents don''t mix

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "What can you buy with a dollar?" Discuss familiar purchases.

2. DIRECT INSTRUCTION (10 minutes):
   Show dollar bill and dollar coin.
   Count 100 pennies: "This equals 1 dollar!"
   Count 4 quarters to 100 cents = 1 dollar.
   Introduce notation: $1.00

3. GUIDED PRACTICE (10 minutes):
   Find different ways to make a dollar.
   Practice writing dollar amounts.

4. INDEPENDENT PRACTICE (10 minutes):
   Dollar equivalence worksheets.
   "Do these coins make a dollar?" activities.

DIFFERENTIATION:
For Struggling Learners:
- Physical coin counting to 100
- Focus on quarters to dollar
- Dollar amount practice

For Advanced Learners:
- Dollars and cents together ($1.25)
- Multiple dollars
- Making change preview

ASSESSMENT INDICATORS:
- States 100 cents = 1 dollar
- Recognizes dollar forms
- Writes $ notation correctly
- Shows ways to make a dollar', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dollar Introduction' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Money Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Money Word Problems' AND grade_level_min = 1),
  'Money Word Problems Topic Guide', 'Solving problems involving coins',
  'MONEY WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Coin counting skills
- Addition and subtraction
- Word problem experience

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify what the problem is asking
2. Count money in problem situations
3. Add and subtract money amounts
4. Determine if they have enough money

KEY CONCEPTS:
- "How much altogether?" = add
- "How much left?" or "How much more?" = subtract
- "Do you have enough?" = compare
- Draw or use coins to model problems

COMMON MISCONCEPTIONS:
- Adding coin quantities instead of values
- Choosing wrong operation
- Not answering what''s asked
- Forgetting cents notation

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You have 2 dimes and a nickel. Can you buy a pencil for 30 cents?"

2. DIRECT INSTRUCTION (10 minutes):
   Model problem-solving process:
   1. What do I have? (count coins)
   2. What do I need to find?
   3. What operation helps?
   Practice with various scenarios.

3. GUIDED PRACTICE (10 minutes):
   Solve problems together step by step.
   Use coins or drawings to model.

4. INDEPENDENT PRACTICE (12 minutes):
   Word problem practice.
   Include "enough money" problems.

DIFFERENTIATION:
For Struggling Learners:
- Coins to manipulate
- Problems with visual supports
- Focus on counting problems first

For Advanced Learners:
- Multi-step problems
- Making change situations
- Create own money problems

ASSESSMENT INDICATORS:
- Understands what problem asks
- Counts money correctly
- Chooses appropriate operation
- Answers with correct notation', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Money Word Problems' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- FRACTIONS INTRODUCTION UNIT (6 topics)
-- ============================================================================

-- Equal Parts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equal Parts' AND grade_level_min = 1),
  'Equal Parts Topic Guide', 'Understanding fractions as equal-sized parts',
  'EQUAL PARTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Shape recognition
- Understanding of "same" and "different"
- Sharing concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify when shapes are divided into equal parts
2. Distinguish equal parts from unequal parts
3. Understand "equal" means same size
4. Partition shapes into equal parts

KEY CONCEPTS:
- Equal parts: all pieces are the same size
- Unequal parts: pieces are different sizes
- Fair shares: everyone gets the same amount
- Shapes can be divided many ways

COMMON MISCONCEPTIONS:
- Thinking any division creates equal parts
- Confusing "same number" with "same size"
- Believing equal parts must look identical
- Not recognizing rotated equal parts

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "How do we share a cookie fairly with a friend?" Cut paper "cookie" to model.

2. DIRECT INSTRUCTION (10 minutes):
   Show examples of equal vs unequal divisions.
   "These are equal - same size. These are NOT equal - different sizes."
   Practice identifying which divisions are equal.

3. GUIDED PRACTICE (10 minutes):
   Sort shapes: equal parts or not?
   Draw lines to create equal parts.

4. INDEPENDENT PRACTICE (10 minutes):
   Worksheets identifying equal parts.
   Create own equal divisions.

DIFFERENTIATION:
For Struggling Learners:
- Physical folding paper
- Cut out pieces to compare sizes
- Focus on halves only first

For Advanced Learners:
- More complex shapes
- Multiple equal divisions
- Explain why parts are equal

ASSESSMENT INDICATORS:
- Identifies equal parts correctly
- Distinguishes equal from unequal
- Creates own equal divisions
- Explains reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equal Parts' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Halves
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Halves' AND grade_level_min = 1),
  'Halves Topic Guide', 'Identifying and creating halves',
  'HALVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Equal parts understanding
- Understanding of 2
- Sharing fairly

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that halves means 2 equal parts
2. Identify when a shape shows halves
3. Divide shapes into halves
4. Use language "half" and "halves"

KEY CONCEPTS:
- Half: one of two equal parts
- Halves: both parts (plural)
- A whole divided into halves has 2 equal pieces
- Each half is the same size as the other

COMMON MISCONCEPTIONS:
- Any two pieces are halves
- Halves must be oriented the same way
- Confusing "2 parts" with "2 equal parts"
- Not recognizing different-looking halves as equal

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Share this sandwich with your friend. Each gets half!"

2. DIRECT INSTRUCTION (10 minutes):
   Fold paper in half - show two equal parts.
   "This is one half. This is the other half. Together, halves!"
   Show halves of different shapes: circle, square, rectangle.

3. GUIDED PRACTICE (10 minutes):
   Identify which shapes show halves.
   Fold/draw to create halves.

4. INDEPENDENT PRACTICE (10 minutes):
   Color half of shapes.
   Draw lines to show halves.

DIFFERENTIATION:
For Struggling Learners:
- Physical folding first
- Simple shapes (circles, rectangles)
- Matching halves activities

For Advanced Learners:
- Different ways to show halves
- Half of groups of objects
- Introduce "one half" notation

ASSESSMENT INDICATORS:
- Correctly identifies halves
- Creates halves accurately
- Uses vocabulary correctly
- Explains why something is/isn''t halves', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Halves' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Fourths
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fourths' AND grade_level_min = 1),
  'Fourths Topic Guide', 'Identifying and creating fourths',
  'FOURTHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of halves
- Equal parts concept
- Counting to 4

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand fourths means 4 equal parts
2. Identify when a shape shows fourths
3. Divide shapes into fourths
4. Use language "fourth" and "quarter"

KEY CONCEPTS:
- Fourth (quarter): one of four equal parts
- Fourths: all four parts
- Fold in half, then half again = fourths
- Each fourth is the same size

COMMON MISCONCEPTIONS:
- Any four pieces are fourths
- Fourths must be squares
- Not recognizing equivalent fourths
- Confusing with halves

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Four friends sharing a pizza. How do we cut it fairly?"

2. DIRECT INSTRUCTION (10 minutes):
   Fold paper in half, then half again - open to show fourths.
   "Each piece is one fourth, or one quarter."
   Show fourths of different shapes.

3. GUIDED PRACTICE (10 minutes):
   Identify shapes showing fourths.
   Create fourths through folding/drawing.

4. INDEPENDENT PRACTICE (10 minutes):
   Color one fourth of shapes.
   Draw lines to create fourths.

DIFFERENTIATION:
For Struggling Learners:
- Fold paper to create fourths
- Focus on squares and circles
- Compare to halves size

For Advanced Learners:
- Multiple ways to show fourths
- Fourths of groups
- Compare halves and fourths

ASSESSMENT INDICATORS:
- Identifies fourths correctly
- Creates fourths accurately
- Uses vocabulary (fourth, quarter)
- Distinguishes from halves', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fourths' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Half vs Fourth
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Half vs Fourth' AND grade_level_min = 1),
  'Half vs Fourth Topic Guide', 'Comparing halves and fourths',
  'HALF VS FOURTH - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of halves
- Understanding of fourths
- Comparing sizes

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare the size of halves and fourths
2. Understand that halves are larger than fourths
3. Explain why more pieces means smaller pieces
4. Identify halves and fourths in the same shape

KEY CONCEPTS:
- Same whole: half is bigger than fourth
- More equal parts = smaller pieces
- 2 fourths = 1 half
- Half is half of the whole; fourth is half of a half

COMMON MISCONCEPTIONS:
- More parts means bigger pieces
- Fourths are bigger because 4 > 2
- Comparing parts from different wholes
- Not seeing the inverse relationship

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Would you rather have half a pizza or a fourth? Why?"

2. DIRECT INSTRUCTION (10 minutes):
   Compare same-sized shapes: one in halves, one in fourths.
   "The whole is the same size, but half is bigger than fourth."
   Overlay pieces to show size difference.

3. GUIDED PRACTICE (10 minutes):
   Sort pieces by size.
   "Which would you rather have?" activities.

4. INDEPENDENT PRACTICE (10 minutes):
   Comparison worksheets.
   Circle the larger piece.

DIFFERENTIATION:
For Struggling Learners:
- Physical pieces to compare
- Same shape examples
- Visual overlapping

For Advanced Learners:
- How many fourths in a half?
- Preview thirds comparison
- Explain reasoning in words

ASSESSMENT INDICATORS:
- Correctly compares halves and fourths
- Explains size relationship
- Applies to sharing situations
- Uses vocabulary correctly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Half vs Fourth' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Partitioning Shapes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Partitioning Shapes' AND grade_level_min = 1),
  'Partitioning Shapes Topic Guide', 'Dividing shapes into equal parts',
  'PARTITIONING SHAPES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Halves and fourths understanding
- Line drawing skills
- Equal parts concept

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Partition circles into halves and fourths
2. Partition rectangles into halves and fourths
3. Describe parts using "half of" and "fourth of"
4. Verify that parts are equal

KEY CONCEPTS:
- Partition: to divide into parts
- Different shapes partition differently
- Circles: draw diameters (lines through center)
- Rectangles: draw horizontal or vertical lines

COMMON MISCONCEPTIONS:
- Lines not going through center
- Creating unequal parts
- Partitioning into wrong number of parts
- Not checking if parts are equal

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You''re a pizza chef! How do you cut pizzas fairly?"

2. DIRECT INSTRUCTION (10 minutes):
   Model partitioning circles: fold first, then draw lines.
   Model partitioning rectangles: fold or measure.
   Show multiple correct ways.

3. GUIDED PRACTICE (10 minutes):
   Practice partitioning various shapes.
   Check work by comparing part sizes.

4. INDEPENDENT PRACTICE (10 minutes):
   Partition shapes on worksheets.
   Explain how you know parts are equal.

DIFFERENTIATION:
For Struggling Learners:
- Pre-folded shapes to trace
- Dotted guide lines
- Focus on rectangles first

For Advanced Learners:
- Multiple ways to partition same shape
- Create own shapes to partition
- Partition into more parts

ASSESSMENT INDICATORS:
- Partitions shapes into correct number of parts
- Creates equal parts
- Uses various methods
- Verifies equality', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Partitioning Shapes' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Fair Shares
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fair Shares' AND grade_level_min = 1),
  'Fair Shares Topic Guide', 'Dividing objects into equal groups',
  'FAIR SHARES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Equal parts understanding
- Division concept (sharing equally)
- Counting objects

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide objects into equal groups
2. Determine how many each person gets
3. Identify when shares are fair (equal)
4. Solve fair share problems

KEY CONCEPTS:
- Fair share: everyone gets the same amount
- Divide objects among people equally
- Sometimes there are leftovers
- Connect to fraction concepts

COMMON MISCONCEPTIONS:
- Unequal distribution being seen as fair
- Not accounting for all objects
- Forgetting about remainders
- Confusion with "more people = more each"

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You have 8 cookies and 4 friends. How can you share fairly?"

2. DIRECT INSTRUCTION (10 minutes):
   Model sharing strategies:
   - One for you, one for you... (dealing out)
   - Making equal groups
   Show what happens with remainders.

3. GUIDED PRACTICE (10 minutes):
   Sharing problems with manipulatives.
   "Is this fair? Why or why not?"

4. INDEPENDENT PRACTICE (10 minutes):
   Fair share word problems.
   Draw to show sharing.

DIFFERENTIATION:
For Struggling Learners:
- Physical objects to distribute
- Small numbers of objects
- Equal groups always possible

For Advanced Learners:
- Situations with remainders
- What if one more/less object?
- Create own sharing problems

ASSESSMENT INDICATORS:
- Divides objects equally
- Determines fair share amounts
- Identifies unfair distributions
- Handles simple remainder situations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fair Shares' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DATA AND GRAPHS UNIT (7 topics)
-- ============================================================================

-- Tally Charts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Tally Charts' AND grade_level_min = 1),
  'Tally Charts Topic Guide', 'Making and reading tally charts',
  'TALLY CHARTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting objects
- One-to-one correspondence
- Understanding of "five"

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read tally marks and convert to numbers
2. Create tally marks for given quantities
3. Collect data using tally charts
4. Answer questions about tally chart data

KEY CONCEPTS:
- Tally mark: one line for each count
- Fifth tally crosses the four: ////  with slash through = 5
- Groups of 5 make counting easier
- Tally charts organize data by category

COMMON MISCONCEPTIONS:
- Making fifth mark without crossing
- Miscounting groups of five
- Recording in wrong category
- Not bundling every fifth mark

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Let''s take a vote: cats or dogs? We''ll use tally marks to count!"

2. DIRECT INSTRUCTION (10 minutes):
   Model making tally marks: 1, 2, 3, 4, then cross for 5.
   Show how to count tallies quickly by 5s then add extras.
   Create sample tally chart together.

3. GUIDED PRACTICE (10 minutes):
   Class survey using tally chart.
   Practice reading existing tally charts.

4. INDEPENDENT PRACTICE (10 minutes):
   Convert between tallies and numbers.
   Answer questions about tally chart data.

DIFFERENTIATION:
For Struggling Learners:
- Pre-made tally chart templates
- Smaller numbers
- Practice bundling in 5s

For Advanced Learners:
- Larger data sets
- Create own surveys
- Compare categories

ASSESSMENT INDICATORS:
- Creates accurate tally marks
- Reads tallies correctly
- Bundles by 5s properly
- Uses tally charts for data', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Tally Charts' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Reading Pictographs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reading Pictographs' AND grade_level_min = 1),
  'Reading Pictographs Topic Guide', 'Reading and interpreting pictographs',
  'READING PICTOGRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting objects
- Understanding of "more" and "less"
- Reading titles and labels

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that each picture represents one item
2. Count pictures to find totals
3. Compare categories in a pictograph
4. Answer questions about pictograph data

KEY CONCEPTS:
- Pictograph: uses pictures to show data
- Each picture = one item (at this level)
- Title tells what data is about
- Labels tell categories

COMMON MISCONCEPTIONS:
- Ignoring the title/labels
- Miscounting pictures
- Confusing which row/column to count
- Not understanding picture representation

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show pictograph of favorite fruits. "What can we learn from this picture?"

2. DIRECT INSTRUCTION (10 minutes):
   Identify parts: title, labels, pictures.
   "How many like apples? Count the apple pictures."
   Compare: "Which has more? How many more?"

3. GUIDED PRACTICE (10 minutes):
   Read various pictographs together.
   Answer questions: how many, most, least, more than.

4. INDEPENDENT PRACTICE (10 minutes):
   Pictograph interpretation worksheets.
   Multiple choice and open-ended questions.

DIFFERENTIATION:
For Struggling Learners:
- Simple two-category pictographs
- Clear, distinct pictures
- Fewer pictures per category

For Advanced Learners:
- More categories
- Multi-step questions
- Create comparison statements

ASSESSMENT INDICATORS:
- Counts pictures accurately
- Identifies most/least
- Compares categories
- Uses pictograph vocabulary', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading Pictographs' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Making Pictographs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Making Pictographs' AND grade_level_min = 1),
  'Making Pictographs Topic Guide', 'Creating pictographs from data',
  'MAKING PICTOGRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Reading pictographs
- Collecting data
- One-to-one correspondence

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Collect data through surveys or counting
2. Create a pictograph with title and labels
3. Draw correct number of pictures for each category
4. Share information from their pictograph

KEY CONCEPTS:
- Data collection comes first
- Title describes the data
- Each category needs a label and row
- One picture represents one item

COMMON MISCONCEPTIONS:
- Drawing too many/few pictures
- Forgetting title or labels
- Pictures not aligned properly
- Not representing all data

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Let''s find out our class''s favorite color. Then we''ll make a pictograph!"

2. DIRECT INSTRUCTION (10 minutes):
   Collect class data using tally chart.
   Model creating pictograph step by step:
   - Add title
   - Add category labels
   - Draw pictures to match data

3. GUIDED PRACTICE (10 minutes):
   Create group pictograph from provided data.
   Check accuracy together.

4. INDEPENDENT PRACTICE (12 minutes):
   Create pictograph from given data.
   Include title, labels, correct pictures.

DIFFERENTIATION:
For Struggling Learners:
- Pre-made graph template
- Fewer categories
- Sticker pictures instead of drawing

For Advanced Learners:
- Collect own data first
- More categories
- Write questions about their graph

ASSESSMENT INDICATORS:
- Includes title and labels
- Correct number of pictures
- Pictures aligned properly
- Can explain their pictograph', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Making Pictographs' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Reading Bar Graphs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reading Bar Graphs' AND grade_level_min = 1),
  'Reading Bar Graphs Topic Guide', 'Reading and interpreting bar graphs',
  'READING BAR GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Pictograph experience
- Number line understanding
- Comparing quantities

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify parts of a bar graph (title, labels, scale, bars)
2. Read values from bar heights
3. Compare bar lengths to compare data
4. Answer questions about bar graph data

KEY CONCEPTS:
- Bar graph: uses bars to show amounts
- Scale shows numbers
- Bar height/length shows quantity
- Taller/longer bar = more

COMMON MISCONCEPTIONS:
- Reading wrong axis
- Not starting from 0 when counting
- Comparing bar widths instead of heights
- Misreading between scale numbers

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show bar graph about pets. "This looks different from a pictograph. What do you notice?"

2. DIRECT INSTRUCTION (10 minutes):
   Point out graph parts: title, category labels, number scale, bars.
   "The cat bar goes up to 6. That means 6 students have cats."
   Practice reading several bars.

3. GUIDED PRACTICE (10 minutes):
   Read bar graphs together.
   Compare bars: "Which has more? How can you tell?"

4. INDEPENDENT PRACTICE (10 minutes):
   Bar graph worksheets.
   Variety of questions.

DIFFERENTIATION:
For Struggling Learners:
- Horizontal bar graphs first
- Scale by 1s
- Clear grid lines

For Advanced Learners:
- Scales by 2s or 5s
- Multi-step comparison questions
- Explain how to read to a partner

ASSESSMENT INDICATORS:
- Identifies graph components
- Reads bar values correctly
- Compares bars appropriately
- Answers various question types', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading Bar Graphs' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Making Bar Graphs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Making Bar Graphs' AND grade_level_min = 1),
  'Making Bar Graphs Topic Guide', 'Creating bar graphs from data',
  'MAKING BAR GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Reading bar graphs
- Data collection
- Number line concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Set up a bar graph with title and labels
2. Draw bars to represent data
3. Ensure bars are accurate heights/lengths
4. Create bar graphs from given data

KEY CONCEPTS:
- Start with organized data
- Title describes the data
- Scale must fit the data
- Bars should touch grid lines exactly

COMMON MISCONCEPTIONS:
- Bars not reaching correct height
- Forgetting to label
- Bars of inconsistent widths
- Not using gridlines

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "We collected data about favorite sports. Let''s show it as a bar graph!"

2. DIRECT INSTRUCTION (12 minutes):
   Model creation step by step:
   - Draw axes and add numbers
   - Label categories
   - Draw bars to correct height
   - Add title

3. GUIDED PRACTICE (10 minutes):
   Create graph together from class data.
   Check accuracy of each bar.

4. INDEPENDENT PRACTICE (12 minutes):
   Create bar graph from provided data.
   Write one question about your graph.

DIFFERENTIATION:
For Struggling Learners:
- Pre-made graph template
- Fewer categories
- Small numbers (1-5)

For Advanced Learners:
- Collect own data
- Larger numbers
- Compare to pictograph of same data

ASSESSMENT INDICATORS:
- Includes required elements
- Bars are accurate heights
- Work is neat and readable
- Can interpret own graph', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Making Bar Graphs' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Comparing Data
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Data' AND grade_level_min = 1),
  'Comparing Data Topic Guide', 'Comparing information in graphs',
  'COMPARING DATA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Reading pictographs and bar graphs
- Comparing quantities
- Subtraction concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find which category has most/least
2. Calculate "how many more" or "how many fewer"
3. Compare two categories
4. Make comparison statements about data

KEY CONCEPTS:
- Most: category with highest count
- Least: category with lowest count
- Difference: subtract to find "how many more/fewer"
- Comparison statements: "More people like ___ than ___"

COMMON MISCONCEPTIONS:
- Adding instead of subtracting for difference
- Confusing most with least
- Not looking at all categories
- Making incorrect comparison statements

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Looking at our graph, which is the winner? How do you know?"

2. DIRECT INSTRUCTION (10 minutes):
   Model finding most and least.
   Show how to find difference: "8 cats and 5 dogs. 8 minus 5 = 3 more cats."
   Practice making comparison statements.

3. GUIDED PRACTICE (10 minutes):
   Analyze graphs together.
   Answer comparison questions.

4. INDEPENDENT PRACTICE (10 minutes):
   Comparison question worksheets.
   Write own comparison statements.

DIFFERENTIATION:
For Struggling Learners:
- Only two categories to compare
- Visual supports for most/least
- Cubes to model subtraction

For Advanced Learners:
- Multiple comparisons
- Multi-step problems
- Create comparison questions for others

ASSESSMENT INDICATORS:
- Correctly identifies most and least
- Calculates differences accurately
- Makes valid comparison statements
- Answers variety of comparison questions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Data' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Asking Questions About Data
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Asking Questions About Data' AND grade_level_min = 1),
  'Asking Questions About Data Topic Guide', 'Asking and answering data questions',
  'ASKING QUESTIONS ABOUT DATA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Reading graphs
- Comparing data
- Question words (how many, which)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Generate questions that can be answered using a graph
2. Answer questions about data displays
3. Distinguish questions that can and cannot be answered from data
4. Use data to support answers

KEY CONCEPTS:
- Good data questions can be answered from the graph
- "How many" questions ask for totals
- "Which" questions ask for comparisons
- Data gives evidence for answers

COMMON MISCONCEPTIONS:
- Asking questions not answerable from data
- Not using graph to support answer
- Confusing opinion with data
- Vague or unclear questions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a graph. "I wonder... What questions could we ask about this data?"

2. DIRECT INSTRUCTION (10 minutes):
   Model asking good questions:
   - "How many people chose pizza?"
   - "Which food got the most votes?"
   - "How many more chose pizza than tacos?"
   Identify questions that CAN''T be answered: "Why do people like pizza?"

3. GUIDED PRACTICE (10 minutes):
   Generate questions together.
   Sort: can we answer this from the graph?
   Answer questions using data evidence.

4. INDEPENDENT PRACTICE (10 minutes):
   Write questions about given graph.
   Answer partner''s questions.

DIFFERENTIATION:
For Struggling Learners:
- Question starters provided
- Simple graphs
- Yes/no questions okay

For Advanced Learners:
- Multi-step questions
- Compare two graphs
- Explain why some questions can''t be answered

ASSESSMENT INDICATORS:
- Generates answerable questions
- Answers using data evidence
- Identifies unanswerable questions
- Communicates clearly about data', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Asking Questions About Data' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MEASUREMENT EXPANSION (3 topics)
-- ============================================================================

-- Measuring with Nonstandard Units
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Measuring with Nonstandard Units' AND grade_level_min = 1),
  'Measuring with Nonstandard Units Topic Guide', 'Measuring length with paper clips, cubes, etc.',
  'MEASURING WITH NONSTANDARD UNITS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of length
- Counting skills
- Comparing lengths

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Measure objects using paper clips, cubes, or other units
2. Line up units end-to-end without gaps or overlaps
3. Record measurements in units
4. Understand why same unit must be used to compare

KEY CONCEPTS:
- Nonstandard units: items used to measure (paper clips, cubes)
- End to end: units touch but don''t overlap
- Same unit throughout one measurement
- "The pencil is 7 paper clips long"

COMMON MISCONCEPTIONS:
- Gaps between units
- Overlapping units
- Starting at edge incorrectly
- Mixing unit sizes

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Let''s find out how long your desk is. We''ll use paper clips as our rulers!"

2. DIRECT INSTRUCTION (10 minutes):
   Model correct technique: start at edge, no gaps, no overlaps.
   Count units: "This book is 5 cubes long."
   Show common errors and how to avoid them.

3. GUIDED PRACTICE (10 minutes):
   Measure classroom objects together.
   Check each other''s work for accuracy.

4. INDEPENDENT PRACTICE (12 minutes):
   Measure assigned objects.
   Record in units.

DIFFERENTIATION:
For Struggling Learners:
- Larger units (easier to place)
- Straight-edged objects
- Partner support

For Advanced Learners:
- Measure same object with different units
- Discover why numbers differ
- Estimate before measuring

ASSESSMENT INDICATORS:
- Uses units end-to-end correctly
- Counts units accurately
- Records measurements with units
- Avoids gaps and overlaps', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measuring with Nonstandard Units' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Ordering by Length
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ordering by Length' AND grade_level_min = 1),
  'Ordering by Length Topic Guide', 'Putting objects in order from shortest to longest',
  'ORDERING BY LENGTH - TOPIC TEACHING GUIDE

PREREQUISITES:
- Comparing two lengths
- Understanding of shortest/longest
- Ordering concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Order three or more objects by length
2. Use comparison words: shortest, longer, longest
3. Line up objects to compare fairly
4. Explain reasoning for order

KEY CONCEPTS:
- Align objects at one end to compare fairly
- Order from shortest to longest (or reverse)
- Compare multiple objects, not just pairs
- Transitivity: if A < B and B < C, then A < C

COMMON MISCONCEPTIONS:
- Not aligning at common baseline
- Only comparing adjacent objects
- Confusing length with overall size
- Difficulty ordering more than 3 objects

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "These three pencils need to line up from shortest to longest. How do we figure it out?"

2. DIRECT INSTRUCTION (10 minutes):
   Show how to align objects at one end.
   Compare and order: "This is shortest. This is longer. This is longest."
   Model with various sets of objects.

3. GUIDED PRACTICE (10 minutes):
   Order sets of objects together.
   Explain reasoning.

4. INDEPENDENT PRACTICE (10 minutes):
   Order objects and record.
   Draw objects in order by length.

DIFFERENTIATION:
For Struggling Learners:
- Only 3 objects
- Noticeably different lengths
- Physical objects to manipulate

For Advanced Learners:
- 4-5 objects to order
- Similar lengths requiring careful comparison
- Order pictures without physical objects

ASSESSMENT INDICATORS:
- Aligns objects correctly
- Orders accurately
- Uses comparison vocabulary
- Explains reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ordering by Length' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Indirect Comparison
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Indirect Comparison' AND grade_level_min = 1),
  'Indirect Comparison Topic Guide', 'Comparing lengths using a third object',
  'INDIRECT COMPARISON - TOPIC TEACHING GUIDE

PREREQUISITES:
- Direct comparison of lengths
- Understanding of "longer than" and "shorter than"
- Transitive reasoning basics

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use a third object to compare two objects that cannot be moved
2. Understand that if A is longer than B, and B is longer than C, then A is longer than C
3. Choose appropriate tools for indirect comparison
4. Explain reasoning using indirect comparison

KEY CONCEPTS:
- Indirect comparison: using a third object to compare
- Use when objects can''t be moved side by side
- String, paper strip, or stick can be the comparing tool
- Logical reasoning: transitivity

COMMON MISCONCEPTIONS:
- Not understanding why indirect comparison is needed
- Using tool incorrectly (not marking length)
- Confusion with transitive reasoning
- Not realizing tool must be longer than object

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Is your desk longer than mine? We can''t move them. How can we compare?"

2. DIRECT INSTRUCTION (12 minutes):
   Model using string to measure one desk, then compare to other.
   Explain: "I measured your desk. Now I''ll hold this string against my desk."
   Practice with various immovable objects.

3. GUIDED PRACTICE (10 minutes):
   Compare classroom fixtures using string/paper strips.
   Record findings.

4. INDEPENDENT PRACTICE (10 minutes):
   Indirect comparison activities.
   Explain reasoning.

DIFFERENTIATION:
For Struggling Learners:
- Teacher demonstrates multiple times
- Simple two-object comparisons
- Hands-on with string

For Advanced Learners:
- Compare multiple objects indirectly
- Chain of reasoning problems
- Create own comparison scenarios

ASSESSMENT INDICATORS:
- Uses indirect comparison correctly
- Chooses appropriate tools
- Explains reasoning clearly
- Applies transitive logic', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Indirect Comparison' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GEOMETRY EXPANSION (4 topics)
-- ============================================================================

-- Defining Attributes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Defining Attributes' AND grade_level_min = 1),
  'Defining Attributes Topic Guide', 'Describing shapes by sides, corners, and curves',
  'DEFINING ATTRIBUTES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Shape recognition (basic)
- Vocabulary: sides, corners
- Sorting experience

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Describe shapes using number of sides and corners
2. Identify curved vs straight sides
3. Classify shapes by defining attributes
4. Understand that defining attributes determine the shape

KEY CONCEPTS:
- Sides: line segments that form the shape
- Corners (vertices): where two sides meet
- Triangle: 3 sides, 3 corners
- Rectangle: 4 sides, 4 corners (with right angles)
- Circle: no sides, no corners (curved)

COMMON MISCONCEPTIONS:
- Confusing sides with corners
- Thinking orientation changes the shape
- Not recognizing irregular versions of shapes
- Counting attributes incorrectly

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Let''s be shape detectives! We''ll describe shapes by their clues."

2. DIRECT INSTRUCTION (10 minutes):
   Introduce vocabulary: sides, corners, curves.
   Count sides and corners on various shapes.
   "A triangle ALWAYS has 3 sides and 3 corners."

3. GUIDED PRACTICE (10 minutes):
   Describe shapes by attributes.
   Sort shapes by number of sides.
   "Find all shapes with 4 corners."

4. INDEPENDENT PRACTICE (10 minutes):
   Shape attribute worksheets.
   Match descriptions to shapes.

DIFFERENTIATION:
For Struggling Learners:
- Physical shapes to touch and count
- Focus on triangles, squares, circles first
- Tracing sides with finger

For Advanced Learners:
- Pentagons, hexagons
- Create shape riddles
- Explain why a shape IS or ISN''T a certain type

ASSESSMENT INDICATORS:
- Counts sides and corners correctly
- Uses vocabulary appropriately
- Identifies shapes by attributes
- Distinguishes curved from straight', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Defining Attributes' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Non-Defining Attributes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Non-Defining Attributes' AND grade_level_min = 1),
  'Non-Defining Attributes Topic Guide', 'Understanding color and size do not define shapes',
  'NON-DEFINING ATTRIBUTES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Defining attributes of shapes
- Shape recognition
- Sorting by different criteria

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that color does not define a shape
2. Understand that size does not define a shape
3. Understand that orientation does not define a shape
4. Distinguish defining from non-defining attributes

KEY CONCEPTS:
- Non-defining attributes: color, size, orientation
- A red triangle and blue triangle are both triangles
- A big square and small square are both squares
- Rotated shapes are still the same shape

COMMON MISCONCEPTIONS:
- Thinking color changes the shape name
- Believing rotated shapes are different shapes
- Thinking size matters for shape identity
- Confusing attributes (squares must be big)

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show two triangles: one big and red, one small and blue. "Are these both triangles? Why?"

2. DIRECT INSTRUCTION (10 minutes):
   Compare shapes with different colors, sizes, orientations.
   Emphasize: "The number of sides and corners stays the same!"
   Show that rotating a square doesn''t make it a different shape.

3. GUIDED PRACTICE (10 minutes):
   Sort: "All triangles together - any color, any size!"
   Identify non-defining changes.

4. INDEPENDENT PRACTICE (10 minutes):
   Worksheets identifying same shapes despite differences.
   Circle all rectangles regardless of color/size/position.

DIFFERENTIATION:
For Struggling Learners:
- Same color examples first
- Focus on size variation
- Concrete manipulatives

For Advanced Learners:
- Explain why something IS a shape despite differences
- Create counter-examples
- Design shape posters showing variety

ASSESSMENT INDICATORS:
- Identifies shapes regardless of color/size
- Explains that non-defining attributes don''t change shape
- Recognizes rotated shapes correctly
- Distinguishes defining from non-defining', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Non-Defining Attributes' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Combining Shapes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Combining Shapes' AND grade_level_min = 1),
  'Combining Shapes Topic Guide', 'Using shapes to build larger shapes',
  'COMBINING SHAPES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Shape recognition
- Spatial awareness
- Puzzle experience

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Combine two or more shapes to make a larger shape
2. Identify what smaller shapes make up a larger shape
3. Create shapes using pattern blocks or other manipulatives
4. Describe compositions using shape names

KEY CONCEPTS:
- Composite shape: shape made from other shapes
- Same large shape can be made different ways
- 2 triangles can make a square, rectangle, or larger triangle
- 2 squares can make a rectangle

COMMON MISCONCEPTIONS:
- Thinking there''s only one way to make a shape
- Not recognizing composite shapes
- Difficulty visualizing before building
- Gaps or overlaps when combining

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Can you make a hexagon using only triangles?" (Pattern block challenge)

2. DIRECT INSTRUCTION (10 minutes):
   Model combining shapes: 2 triangles → square.
   Show multiple solutions to same challenge.
   Name the smaller shapes used.

3. GUIDED PRACTICE (10 minutes):
   Pattern block challenges.
   "Make a rectangle using these shapes."
   Document combinations.

4. INDEPENDENT PRACTICE (12 minutes):
   Shape combination worksheets.
   Create and describe compositions.

DIFFERENTIATION:
For Struggling Learners:
- Outlines to fill
- Fewer pieces needed
- Physical manipulatives only

For Advanced Learners:
- More complex compositions
- Multiple solutions for same shape
- Create own designs and describe

ASSESSMENT INDICATORS:
- Successfully combines shapes
- Identifies component shapes
- Finds multiple solutions
- Describes compositions accurately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Combining Shapes' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Partitioning Rectangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Partitioning Rectangles' AND grade_level_min = 1),
  'Partitioning Rectangles Topic Guide', 'Dividing rectangles into rows and columns',
  'PARTITIONING RECTANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Rectangle recognition
- Equal parts understanding
- Rows and columns vocabulary

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Partition rectangles into equal rows
2. Partition rectangles into equal columns
3. Describe partitions using rows and columns
4. Count total parts in a partitioned rectangle

KEY CONCEPTS:
- Row: horizontal group
- Column: vertical group
- Grid: rows and columns together
- Equal parts created by partitioning

COMMON MISCONCEPTIONS:
- Confusing rows and columns
- Unequal partitions
- Not counting total parts correctly
- Difficulty drawing straight lines

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a chocolate bar grid. "This bar has rows and columns of squares!"

2. DIRECT INSTRUCTION (10 minutes):
   Define rows (go across) and columns (go up and down).
   Partition rectangle into 2 rows and 3 columns.
   Count total parts: "2 rows of 3 = 6 parts"

3. GUIDED PRACTICE (10 minutes):
   Partition rectangles together.
   Describe: "__ rows and __ columns = __ parts"

4. INDEPENDENT PRACTICE (10 minutes):
   Partition rectangles as directed.
   Count and record total parts.

DIFFERENTIATION:
For Struggling Learners:
- Pre-printed grid lines to trace
- Focus on rows OR columns first
- Use color to highlight rows/columns

For Advanced Learners:
- More rows and columns
- Determine rows/columns needed for given total
- Connect to early multiplication

ASSESSMENT INDICATORS:
- Partitions accurately
- Distinguishes rows and columns
- Counts total parts correctly
- Describes partitions using vocabulary', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Partitioning Rectangles' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF GRADE 1 MATH EXPANDED PROMPTS
-- Total: 51 comprehensive teaching prompts for expanded Grade 1 Math topics
-- ============================================================================
