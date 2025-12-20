-- Grade 2 Math Topic Prompts
-- Comprehensive 500+ word teaching guides for each topic

-- ============================================
-- ADDITION AND SUBTRACTION FLUENCY UNIT
-- ============================================

-- Adding Within 100
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Within 100' AND grade_level_min = 2),
  'Adding Within 100 Topic Guide',
  'Comprehensive teaching approach for two-digit addition',
  'ADDING WITHIN 100 - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have mastery of addition facts within 20, understand place value for two-digit numbers (tens and ones), be able to count by 10s starting from any number, and have experience with number lines and hundred charts.

LEARNING OBJECTIVES:
By the end of this topic, students will add two-digit numbers using multiple strategies including adding tens then ones, using an open number line, applying the break-apart strategy, and using compensation. Students will explain their reasoning and choose appropriate strategies for different problems.

KEY CONCEPTS:
1. Place value is foundational - adding tens to tens and ones to ones
2. Multiple valid strategies exist for the same problem
3. Regrouping happens when ones sum exceeds 9
4. Mental math strategies increase efficiency
5. Estimation helps verify reasonableness

COMMON MISCONCEPTIONS:
- Adding all digits as if they were ones (45 + 23 = 68 but student writes 410)
- Forgetting to regroup when ones exceed 9
- Regrouping when unnecessary (adding a 1 even when ones don''t exceed 9)
- Writing regrouped ten in the ones column
- Difficulty with problems like 58 + 7 (crossing a decade)

TEACHING SEQUENCE:

Hook/Engagement:
Present a story: "Maria has 34 stickers. Her friend gives her 25 more. How many does she have now?" Use actual stickers or counters that students can physically group and count, making the abstract concrete.

Direct Instruction:
Model the break-apart strategy: 34 + 25 = (30 + 20) + (4 + 5) = 50 + 9 = 59
Show on an open number line: start at 34, jump +20 to 54, jump +5 to 59
Demonstrate with base-ten blocks: 3 tens + 2 tens = 5 tens, 4 ones + 5 ones = 9 ones
Introduce the regrouping scenario: 36 + 28 where 6 + 8 = 14 ones = 1 ten and 4 ones

Guided Practice:
Students work in pairs solving problems like 42 + 35, 57 + 26, and 38 + 45. They explain their chosen strategy to their partner. Use whiteboards for quick formative assessment. Circulate and ask "How did you know to regroup?" or "Why did you start with the tens?"

Independent Application:
Provide a variety of problems including ones without regrouping, ones requiring regrouping, and word problems in context. Include problems where students must choose between strategies.

DIFFERENTIATION:

Struggling Learners:
- Provide base-ten blocks for every problem initially
- Use hundred charts for visual support
- Give problems that don''t require regrouping first
- Create step-by-step graphic organizers
- Allow extra time and reduce problem quantity
- Pair with supportive peer tutors

Advanced Learners:
- Introduce three-addend problems (23 + 34 + 21)
- Add missing addend challenges (45 + ___ = 72)
- Create real-world problems for classmates
- Explore patterns in addition (what happens when you add 9?)
- Begin mental math challenges with larger numbers

ASSESSMENT INDICATORS:
- Student correctly adds without regrouping 90%+ of the time
- Student correctly regroups when needed
- Student can explain at least two different strategies
- Student estimates before calculating and checks reasonableness
- Student applies addition to word problems accurately

REAL-WORLD CONNECTIONS:
Counting money when combining coins and bills, combining collections (cards, stickers), measuring and adding lengths for crafts, keeping score in games, figuring out total items when shopping.

VOCABULARY:
addend, sum, plus, equals, regroup, tens place, ones place, mental math, estimate, strategy, compensation, break-apart

QUESTIONING TECHNIQUES:
"How did you decide which strategy to use?"
"What makes this problem harder/easier than the last one?"
"How do you know your answer is reasonable?"
"Can you solve it a different way to check?"
"What happens to the ones when they add up to more than 9?"

COMMON ERRORS AND RESPONSES:
Error: 47 + 35 = 712 (student wrote each place value sum separately)
Response: "Let''s use blocks. How many tens in 47? In 35? What''s 4 tens plus 3 tens? Now what about the ones?"

CONNECTION TO FUTURE LEARNING:
This topic builds toward adding within 1000, multi-digit addition with multiple regroupings, and addition of decimals and fractions in later grades.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Within 100' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Subtracting Within 100
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Within 100' AND grade_level_min = 2),
  'Subtracting Within 100 Topic Guide',
  'Comprehensive teaching approach for two-digit subtraction',
  'SUBTRACTING WITHIN 100 - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need fluency with subtraction facts within 20, understanding of place value for two-digit numbers, familiarity with number lines, and the relationship between addition and subtraction.

LEARNING OBJECTIVES:
Students will subtract two-digit numbers using strategies including counting back, using an open number line, break-apart method, and adding up to subtract. They will determine when regrouping (borrowing) is necessary and explain their reasoning.

KEY CONCEPTS:
1. Subtraction can mean "take away" or "find the difference"
2. Regrouping is needed when there aren''t enough ones
3. One ten can be exchanged for 10 ones
4. Addition can check subtraction
5. Multiple strategies work for the same problem

COMMON MISCONCEPTIONS:
- Subtracting smaller digit from larger regardless of position (52 - 37 = 25 because 7-2=5 and 5-3=2)
- Regrouping but forgetting to reduce the tens
- Always regrouping even when unnecessary
- Confusing addition and subtraction procedures
- Difficulty with zeros (50 - 23)

TEACHING SEQUENCE:

Hook/Engagement:
Story problem: "Tyler had 63 baseball cards. He gave 28 to his brother. How many does he have left?" Let students act it out with manipulatives or drawings before introducing formal strategies.

Direct Instruction:
Model with base-ten blocks: 63 has 6 tens and 3 ones. To take away 8 ones, we need more ones. Trade 1 ten for 10 ones. Now we have 5 tens and 13 ones. Take away 28 (2 tens and 8 ones). Left with 3 tens and 5 ones = 35.

Show the counting-up strategy: 28 + ___ = 63. Count from 28 to 30 (add 2), from 30 to 60 (add 30), from 60 to 63 (add 3). Total: 2 + 30 + 3 = 35.

Demonstrate the open number line: start at 63, jump back 20 to 43, jump back 8 to 35.

Guided Practice:
Partner work on problems like 74 - 38, 82 - 45, 60 - 27. Students explain their thinking: "I knew I needed to regroup because..." Use think-pair-share to promote discussion.

Independent Application:
Mixed practice with and without regrouping, word problems with "how many more" and "how many left" language, and comparison problems.

DIFFERENTIATION:

Struggling Learners:
- Always start with manipulatives
- Use place value charts with space for regrouping notes
- Color-code tens and ones
- Provide step-by-step checklists
- Practice non-regrouping problems first
- Use hundred chart for counting strategies

Advanced Learners:
- Multi-step problems involving both addition and subtraction
- Subtract from numbers with zeros (100 - 46)
- Create their own word problems
- Explore subtraction patterns
- Mental math challenges

ASSESSMENT INDICATORS:
- Accurately determines when regrouping is needed
- Correctly performs the regrouping procedure
- Uses addition to check subtraction
- Solves word problems identifying subtraction situations
- Explains strategy choice and reasoning

REAL-WORLD CONNECTIONS:
Making change when buying items, finding differences in heights or ages, tracking points in games, measuring remaining time, comparing quantities of collections.

VOCABULARY:
subtract, difference, minus, take away, regroup, borrow, compare, remaining, left over, fewer

QUESTIONING TECHNIQUES:
"How did you know you needed to regroup?"
"What did you do to the tens when you regrouped?"
"Can you check your answer using addition?"
"Is your answer reasonable? How do you know?"

COMMON ERRORS AND RESPONSES:
Error: 52 - 37 = 25 (subtracted smaller from larger in each place)
Response: "Let''s look at the ones place. We have 2 ones and need to take away 7. Do we have enough ones? What can we do?"

CONNECTION TO FUTURE LEARNING:
This builds toward subtracting within 1000, multi-digit subtraction, and understanding subtraction as the inverse of addition for algebraic thinking.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Within 100' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Two-Step Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Two-Step Word Problems' AND grade_level_min = 2),
  'Two-Step Word Problems Topic Guide',
  'Comprehensive teaching approach for multi-step problem solving',
  'TWO-STEP WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must be proficient with one-step addition and subtraction word problems, understand key vocabulary (altogether, remaining, more than, fewer), and be able to identify the question being asked.

LEARNING OBJECTIVES:
Students will identify that two operations are needed, determine which operations to use and in what order, represent problems with equations, and solve accurately while showing their work.

KEY CONCEPTS:
1. Some problems require more than one step
2. The answer to the first step becomes part of the second step
3. Reading carefully reveals what operations are needed
4. Problems can be represented with equations
5. Checking reasonableness is essential

COMMON MISCONCEPTIONS:
- Performing only one step
- Adding all numbers without considering the problem
- Using wrong operations
- Not understanding what the question asks
- Losing track of intermediate answers

TEACHING SEQUENCE:

Hook/Engagement:
Present a relatable scenario: "Emma had 25 crayons. She bought a box of 24 more. Then she gave 12 to her sister. How many does Emma have now?" Have students discuss what they need to figure out first.

Direct Instruction:
Use the "CUBES" strategy: Circle numbers, Underline the question, Box key words, Evaluate (what operations?), Solve and check.

Model think-aloud: "First I need to find how many crayons Emma had after buying more: 25 + 24 = 49. Now she gives some away, so I subtract: 49 - 12 = 37. Emma has 37 crayons."

Write equations: 25 + 24 = 49, then 49 - 12 = 37, or combined: 25 + 24 - 12 = 37

Guided Practice:
Students work on problems in pairs, using graphic organizers that have spaces for "Step 1" and "Step 2." Discuss as a class which operations to use and why.

Independent Application:
Variety of problem types: add-then-add, add-then-subtract, subtract-then-add, subtract-then-subtract. Include problems with extra information students must ignore.

DIFFERENTIATION:

Struggling Learners:
- Use simpler numbers while teaching the two-step process
- Provide visual organizers with boxes for each step
- Act out problems with manipulatives
- Highlight key words
- Give one type of problem at a time

Advanced Learners:
- Three-step problems
- Problems requiring students to formulate the question
- Problems with extra information to filter
- Create problems for classmates
- Use larger numbers

ASSESSMENT INDICATORS:
- Correctly identifies that two steps are needed
- Chooses appropriate operations
- Shows work for both steps
- Arrives at correct final answer
- Can explain their solution process

REAL-WORLD CONNECTIONS:
Shopping scenarios (buy items, pay, get change), collecting and sharing items, game scores over multiple rounds, measuring for projects with adjustments.

VOCABULARY:
altogether, total, remaining, left over, in all, difference, how many more, how many fewer, combined, equation, step

QUESTIONING TECHNIQUES:
"What do we need to find out first?"
"What information does that first answer give us?"
"How did you decide which operation to use?"
"Does your final answer make sense?"

CONNECTION TO FUTURE LEARNING:
This builds toward multi-step problems with multiplication and division, and develops the problem-solving skills needed for algebraic word problems.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Two-Step Word Problems' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Mental Math
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Mental Math' AND grade_level_min = 2),
  'Mental Math Topic Guide',
  'Comprehensive teaching approach for mental calculation strategies',
  'MENTAL MATH - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need solid understanding of place value, fluency with basic facts within 20, ability to decompose numbers, and familiarity with adding/subtracting 10 from any number.

LEARNING OBJECTIVES:
Students will develop mental math strategies including making tens, using doubles, compensation, and adding/subtracting in parts. They will calculate without paper and pencil and explain their mental strategies.

KEY CONCEPTS:
1. Mental math uses number relationships
2. Breaking numbers apart makes calculation easier
3. Friendly numbers (10s, 100s) are easy to work with
4. Different problems suggest different strategies
5. Efficiency increases with practice

COMMON MISCONCEPTIONS:
- Believing only one correct method exists
- Trying to visualize the standard algorithm mentally
- Not recognizing opportunities for efficient strategies
- Rushing and making careless errors
- Not using known facts to derive unknown facts

TEACHING SEQUENCE:

Hook/Engagement:
"I can add 39 + 25 in my head in two seconds. Want to know my trick?" Share that 39 is almost 40. Add 40 + 25 = 65, then subtract 1 = 64. "Your brain is a powerful calculator when you know the tricks!"

Direct Instruction:
Teach specific strategies:
1. Make a Ten: 38 + 5 → 38 + 2 = 40, 40 + 3 = 43
2. Use Doubles: 35 + 36 → I know 35 + 35 = 70, so 35 + 36 = 71
3. Compensation: 49 + 32 → 50 + 32 = 82, subtract 1 = 81
4. Add in Parts: 45 + 23 → 45 + 20 = 65, 65 + 3 = 68

Model thinking aloud for each strategy with multiple examples.

Guided Practice:
"Number Talks" - display a problem, have students solve mentally, then share strategies. Validate multiple approaches. "Who did it a different way?"

Independent Application:
Mental math challenges, timed practice with appropriate expectations, partner games where students verbalize strategies.

DIFFERENTIATION:

Struggling Learners:
- Focus on one strategy at a time
- Use smaller numbers
- Allow visual supports initially (number line)
- Practice with ten-frame cards
- Repetition with the same type of problem

Advanced Learners:
- Larger numbers
- Three addends
- Challenge: find multiple strategies for one problem
- Create problems that work well with specific strategies
- Introduce mental multiplication readiness

ASSESSMENT INDICATORS:
- Calculates accurately without pencil/paper
- Names the strategy used
- Chooses efficient strategies for different problems
- Explains thinking clearly
- Shows increasing speed with maintained accuracy

REAL-WORLD CONNECTIONS:
Quick calculations while shopping, mental scorekeeping in games, figuring tips, making change, everyday estimation.

VOCABULARY:
mental math, strategy, compensation, friendly numbers, make a ten, doubles, near doubles, estimate

CONNECTION TO FUTURE LEARNING:
Mental math strategies become essential for estimation, checking calculator work, algebraic manipulation, and everyday mathematics throughout life.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mental Math' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Addition and Subtraction Fluency
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Addition and Subtraction Fluency' AND grade_level_min = 2),
  'Addition and Subtraction Fluency Topic Guide',
  'Comprehensive teaching approach for fact fluency within 20',
  'ADDITION AND SUBTRACTION FLUENCY - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand the concepts of addition and subtraction, have experience with manipulatives and models, know some facts from memory, and understand the relationship between addition and subtraction.

LEARNING OBJECTIVES:
Students will demonstrate fluency (accuracy, efficiency, flexibility) with all addition and subtraction facts within 20. They will recall facts from memory, derive unknown facts from known facts, and apply fluency to larger computations.

KEY CONCEPTS:
1. Fluency means accurate, efficient, and flexible
2. Strategies help derive facts before memorization
3. Related facts support each other (fact families)
4. Knowing facts frees mental energy for problem-solving
5. Regular practice builds automaticity

COMMON MISCONCEPTIONS:
- Fluency means only speed (ignoring accuracy and flexibility)
- Facts must be memorized without understanding
- Counting on fingers forever is acceptable
- All facts are equally difficult
- Practice alone, without strategy, builds fluency

TEACHING SEQUENCE:

Hook/Engagement:
"Imagine you''re playing a game and need to add scores quickly. Would you rather spend 30 seconds counting or know the answer instantly? Today we''re building our math superpowers!"

Direct Instruction:
Introduce fact strategies systematically:
- Doubles (6 + 6 = 12)
- Doubles Plus One (6 + 7 = 6 + 6 + 1 = 13)
- Make a Ten (8 + 5 = 8 + 2 + 3 = 10 + 3 = 13)
- Related Subtraction (13 - 6 = ? because 6 + 7 = 13)

Show fact families: 4 + 9 = 13, 9 + 4 = 13, 13 - 4 = 9, 13 - 9 = 4

Guided Practice:
Flashcard games with strategy focus, partner practice, fact sorts (which strategy works best?), triangle fact family cards.

Independent Application:
Daily fact practice (short, frequent sessions), games like "Around the World," online fact practice, timed challenges tracking personal growth (not comparison to others).

DIFFERENTIATION:

Struggling Learners:
- Focus on fewer facts at a time
- Heavy emphasis on strategies before memorization
- Use concrete supports longer
- Celebrate small improvements
- Avoid high-pressure timed tests initially

Advanced Learners:
- Extend to larger numbers using the same strategies
- Explore patterns in facts
- Challenge: fastest mental strategy for each fact
- Help tutor classmates
- Introduce multiplication facts

ASSESSMENT INDICATORS:
- Answers within 3 seconds consistently
- Accuracy rate above 90%
- Can explain at least one strategy for deriving facts
- Applies known facts to two-digit computation
- Uses related facts flexibly

REAL-WORLD CONNECTIONS:
Quick mental calculations in daily life, game scoring, counting money, telling time, measuring for cooking.

VOCABULARY:
fluency, fact family, related facts, doubles, make a ten, automaticity, derived fact

CONNECTION TO FUTURE LEARNING:
Fact fluency is essential for multi-digit computation, multiplication and division facts, fraction operations, and all future mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Addition and Subtraction Fluency' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================
-- PLACE VALUE TO 1000 UNIT
-- ============================================

-- Understanding Hundreds
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Hundreds' AND grade_level_min = 2),
  'Understanding Hundreds Topic Guide',
  'Comprehensive teaching approach for hundred as a unit',
  'UNDERSTANDING HUNDREDS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand tens and ones, count by 10s to 100, know that 10 ones = 1 ten, and have experience with base-ten blocks (units and rods).

LEARNING OBJECTIVES:
Students will understand that 100 equals 10 tens or 100 ones, represent hundreds using models and symbols, count by 100s to 1000, and begin working with three-digit numbers.

KEY CONCEPTS:
1. 10 tens = 1 hundred = 100 ones
2. The hundreds place is a new place value position
3. Patterns in counting by 100s mirror counting by 1s
4. Place value determines a digit''s value
5. Three-digit numbers have hundreds, tens, and ones

COMMON MISCONCEPTIONS:
- Difficulty visualizing the size of 100
- Confusing hundreds, tens, and ones places
- Thinking 100 is just "a lot" without structure
- Not understanding 100 as 10 groups of 10
- Reading numbers like 304 as "thirty-four"

TEACHING SEQUENCE:

Hook/Engagement:
"If I gave you one penny every second, how long would it take to get 100 pennies?" Count together to experience how long 100 takes. Then show a hundred chart and 100 items (stickers, blocks, etc.) to visualize.

Direct Instruction:
Build with base-ten blocks: Stack 10 unit cubes to make a rod (1 ten). Stack 10 rods to make a flat (1 hundred). "100 is made of 10 tens. See how they trade?"

Count by 100s together: 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000. Notice the pattern.

Introduce the hundreds place: In 324, the 3 means 3 hundreds or 300.

Guided Practice:
Build three-digit numbers with blocks and write them. Match written numbers to block representations. Play "What''s My Number?" with clues about hundreds, tens, and ones.

Independent Application:
Represent numbers in multiple ways, count collections and group by hundreds, solve riddles about place value.

DIFFERENTIATION:

Struggling Learners:
- Extended time with manipulatives
- Focus on 100, 200, 300 before mixed numbers
- Practice trading 10 tens for 1 hundred repeatedly
- Use place value charts consistently
- Connect to money (100 pennies = 1 dollar)

Advanced Learners:
- Work with thousands
- Compare and order three-digit numbers
- Add and subtract hundreds mentally
- Explore what happens after 999
- Number puzzles with place value

ASSESSMENT INDICATORS:
- Correctly identifies hundreds, tens, and ones in three-digit numbers
- Represents numbers with models accurately
- Counts by 100s fluently
- Explains that 10 tens equal 1 hundred
- Reads and writes three-digit numbers

VOCABULARY:
hundred, hundreds place, place value, three-digit number, thousand, flat (base-ten block), expanded form

CONNECTION TO FUTURE LEARNING:
This topic builds toward understanding thousands and larger numbers, multi-digit addition and subtraction, and the base-ten system''s structure.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Hundreds' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Reading and Writing Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reading and Writing Numbers' AND grade_level_min = 2),
  'Reading and Writing Numbers Topic Guide',
  'Comprehensive teaching approach for three-digit number representation',
  'READING AND WRITING NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need to read and write two-digit numbers, understand place value to hundreds, count by 1s, 10s, and 100s, and know number words to ninety-nine.

LEARNING OBJECTIVES:
Students will read three-digit numbers in standard, word, and expanded form, write numbers given verbal or expanded descriptions, and correctly use number words through nine hundred ninety-nine.

KEY CONCEPTS:
1. Standard form: 347
2. Word form: three hundred forty-seven
3. Expanded form: 300 + 40 + 7
4. Each digit''s position determines its value
5. Zero as a placeholder (305, 340, 400)

COMMON MISCONCEPTIONS:
- Writing "three hundred and forty-seven" (and is incorrect)
- Reading 305 as "thirty-five" (ignoring zero)
- Confusing expanded form with addition problems
- Switching digit positions when writing
- Reading 460 as "four hundred sixty-zero"

TEACHING SEQUENCE:

Hook/Engagement:
Show a number like 528 and ask: "How many different ways can we describe this number?" Record ideas and introduce the three forms.

Direct Instruction:
Model the three forms with base-ten blocks visible:
- Standard: 528
- Word: five hundred twenty-eight
- Expanded: 500 + 20 + 8

Emphasize the role of zero: In 407, the zero shows no tens. We still say "four hundred seven" and write 400 + 0 + 7 or 400 + 7.

Guided Practice:
Matching games with the three forms, dictation exercises, building numbers then writing them, partner practice reading numbers aloud.

Independent Application:
Worksheets converting between forms, word problem contexts requiring number reading/writing, number of the day routine.

DIFFERENTIATION:

Struggling Learners:
- Place value chart always visible
- Focus on numbers without zeros first
- Use blocks to support writing
- Word banks for number words
- One form at a time before converting

Advanced Learners:
- Extend to four-digit numbers
- Number puzzles: "Write a number where the hundreds digit is 3 more than the ones digit"
- Create word problems requiring specific numbers
- Work with number words to one thousand

ASSESSMENT INDICATORS:
- Reads three-digit numbers correctly
- Writes numbers in all three forms
- Correctly handles zeros in any position
- Matches equivalent representations
- Uses forms flexibly in problem contexts

VOCABULARY:
standard form, word form, expanded form, digit, place value, hundreds, tens, ones, placeholder

CONNECTION TO FUTURE LEARNING:
These representation skills extend to larger numbers, decimals, and understanding mathematical notation throughout mathematics education.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading and Writing Numbers' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Comparing Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Numbers' AND grade_level_min = 2),
  'Comparing Numbers Topic Guide',
  'Comprehensive teaching approach for comparing three-digit numbers',
  'COMPARING NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand place value to hundreds, read three-digit numbers, compare two-digit numbers, and use comparison symbols with smaller numbers.

LEARNING OBJECTIVES:
Students will compare three-digit numbers using place value understanding, use symbols <, >, and = correctly, order multiple three-digit numbers, and explain their comparison reasoning.

KEY CONCEPTS:
1. Compare hundreds first, then tens, then ones
2. The symbol points to the smaller number
3. Equal numbers have the same value in all places
4. More digits doesn''t always mean greater value (in this grade level, it does)
5. Number lines show relative position

COMMON MISCONCEPTIONS:
- Comparing individual digits regardless of place
- Confusing < and > symbols
- Thinking more digits always means bigger (e.g., 98 vs 203)
- Only looking at the ones place
- Not knowing what to do when some places are equal

TEACHING SEQUENCE:

Hook/Engagement:
Present a scenario: "Two friends are comparing their sticker collections. Kai has 347 stickers and Maya has 329. Who has more?" Have students predict and discuss their reasoning.

Direct Instruction:
Model the comparison process: "First I compare hundreds. 347 has 3 hundreds. 329 has 3 hundreds. They''re equal, so I look at tens. 347 has 4 tens. 329 has 2 tens. 4 tens is more than 2 tens, so 347 > 329."

Teach the symbol meanings with the "alligator mouth" or "arrow pointing to smaller" mnemonics.

Show on a number line where numbers fall relative to each other.

Guided Practice:
Partner comparisons with base-ten blocks, symbol practice with self-checking cards, ordering sets of three numbers, explaining reasoning aloud.

Independent Application:
Comparison worksheets, ordering activities, word problems involving comparisons, create comparison problems for classmates.

DIFFERENTIATION:

Struggling Learners:
- Use base-ten blocks for every comparison initially
- Place value chart with highlighters
- Focus on numbers different in hundreds first
- < and > reference card on desk
- Practice with just two numbers before ordering three

Advanced Learners:
- Compare four-digit numbers
- Order five or more numbers
- Find numbers between two given numbers
- Missing digit problems (4_3 > 429)
- Create comparison word problems

ASSESSMENT INDICATORS:
- Correctly uses <, >, = symbols
- Explains comparison using place value
- Orders three or more numbers accurately
- Applies comparison to word problems
- Handles cases with zeros correctly

VOCABULARY:
greater than, less than, equal to, compare, order, least, greatest, ascending, descending

CONNECTION TO FUTURE LEARNING:
Comparison skills extend to larger numbers, decimals, fractions, and algebraic inequalities throughout mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Numbers' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Skip Counting
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting' AND grade_level_min = 2),
  'Skip Counting Topic Guide',
  'Comprehensive teaching approach for skip counting patterns',
  'SKIP COUNTING - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should count by 1s to 1000, understand place value, recognize number patterns, and have experience with counting by 2s, 5s, and 10s within 100.

LEARNING OBJECTIVES:
Students will skip count by 5s, 10s, and 100s within 1000, starting from any appropriate number, recognize patterns in skip counting, and apply skip counting to solve problems.

KEY CONCEPTS:
1. Skip counting is repeated addition
2. Patterns are predictable (count by 5s always ends in 0 or 5)
3. Skip counting from different starting points
4. Skip counting connects to multiplication
5. Efficient counting of groups

COMMON MISCONCEPTIONS:
- Losing the pattern when crossing century boundaries (198, 208, 218...)
- Thinking skip counting must start at zero
- Mixing up which digit changes when counting by 5, 10, or 100
- Difficulty continuing patterns after 100
- Not seeing skip counting as addition

TEACHING SEQUENCE:

Hook/Engagement:
"I need to count these 100 cubes. Counting by ones takes forever! Is there a faster way?" Demonstrate that counting by 10s takes 10 counts instead of 100.

Direct Instruction:
Model each skip counting sequence:
- By 5s: 5, 10, 15, 20... Note: always ends in 0 or 5
- By 10s: 10, 20, 30, 40... Note: ones digit is always 0
- By 100s: 100, 200, 300... Note: only hundreds digit changes

Start from non-zero points: "Let''s count by 10s starting at 235: 235, 245, 255, 265..."

Show on number lines and hundreds charts to visualize patterns.

Guided Practice:
Choral counting as a class, hundred chart coloring patterns, partner counting from different starting points, fill-in-the-blank sequences.

Independent Application:
Complete number patterns, count objects in groups, word problems using skip counting, create patterns for others to continue.

DIFFERENTIATION:

Struggling Learners:
- Use hundred charts with visual support
- Count by 10s before 5s
- Stay within 100 before extending
- Physical movement while counting (hop, clap)
- Count objects in groups to make abstract concrete

Advanced Learners:
- Count by 3s, 4s, or other numbers
- Count backward by 5s, 10s, 100s
- Find patterns in skip counting charts
- Connect explicitly to multiplication
- Skip count with larger starting points

ASSESSMENT INDICATORS:
- Skip counts fluently by 5, 10, and 100
- Starts from any appropriate number
- Recognizes and continues patterns
- Applies skip counting to count objects
- Identifies errors in skip counting sequences

VOCABULARY:
skip count, pattern, sequence, continue, increase, decrease, by fives, by tens, by hundreds

CONNECTION TO FUTURE LEARNING:
Skip counting directly prepares students for multiplication, recognizing multiples, finding common multiples, and understanding number patterns.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================
-- MEASUREMENT UNIT
-- ============================================

-- Measuring with Rulers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Measuring with Rulers' AND grade_level_min = 2),
  'Measuring with Rulers Topic Guide',
  'Comprehensive teaching approach for standard measurement',
  'MEASURING WITH RULERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand the concept of length, have experience with non-standard measurement, compare lengths directly, and use terms like longer, shorter, and same length.

LEARNING OBJECTIVES:
Students will measure objects using inch and centimeter rulers, align objects correctly with the ruler, measure to the nearest whole unit, and understand why standard units are important.

KEY CONCEPTS:
1. Measurement starts at 0, not 1
2. The object must align with the ruler''s starting point
3. Inches and centimeters are different-sized units
4. Measurement is approximate (nearest whole unit)
5. Standard units allow communication of measurements

COMMON MISCONCEPTIONS:
- Starting measurement at 1 instead of 0
- Not aligning object with ruler correctly
- Confusing inches and centimeters
- Reading the wrong side of a dual-unit ruler
- Measuring from the end of the ruler instead of the 0 mark

TEACHING SEQUENCE:

Hook/Engagement:
"My friend said their pencil is 5 paper clips long. My paper clips are bigger than theirs. Is it fair to compare?" Discuss why standard units matter for communicating measurements.

Direct Instruction:
Model proper ruler use: Place the object flat, align with 0 (not the edge), look at where object ends, read the number. Practice with inch ruler first, then centimeter ruler.

Demonstrate common errors: starting at 1, starting at ruler edge, tilting the object. Have students identify the mistakes.

Guided Practice:
Measure classroom objects together, partner measuring with peer checking, measurement stations with various objects, recording measurements in a chart.

Independent Application:
Measure assigned objects and record, measurement scavenger hunt (find something about 6 inches long), solve word problems involving measurement.

DIFFERENTIATION:

Struggling Learners:
- Use rulers with only inches or only centimeters
- Highlight the 0 on rulers
- Provide larger objects to measure
- Use rulers with larger numbers
- Guided practice with physical assistance

Advanced Learners:
- Measure to the nearest half-inch
- Convert between inches and centimeters (estimate)
- Measure curved objects using string
- Estimate before measuring
- Measure and compare body parts

ASSESSMENT INDICATORS:
- Aligns object with 0 correctly
- Reads measurement accurately
- Distinguishes between inches and centimeters
- Measures multiple objects independently
- Explains measurement process

VOCABULARY:
ruler, inch, centimeter, length, width, measure, standard unit, estimate, approximately

CONNECTION TO FUTURE LEARNING:
This topic prepares students for measuring to fractional units, perimeter, area calculations, and the metric system.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measuring with Rulers' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Telling Time
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Telling Time' AND grade_level_min = 2),
  'Telling Time Topic Guide',
  'Comprehensive teaching approach for reading clocks',
  'TELLING TIME - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should count by 5s to 60, recognize numbers 1-12, tell time to the hour and half hour, and understand the daily routine in terms of time of day.

LEARNING OBJECTIVES:
Students will tell time to the nearest five minutes using analog clocks, read digital clocks, connect time to daily activities, and understand a.m. and p.m.

KEY CONCEPTS:
1. The short hand shows hours, long hand shows minutes
2. Each number on the clock represents 5 minutes
3. Minutes go from :00 to :55
4. a.m. is morning, p.m. is afternoon/evening
5. Analog and digital show the same time differently

COMMON MISCONCEPTIONS:
- Reading the hour hand position for minutes
- Confusing the hour when minute hand is past 6
- Saying "twelve-thirty" as "30:12"
- Not understanding the hour changes at :00
- Reading 3:45 as "3:45" but saying "three and forty-five"

TEACHING SEQUENCE:

Hook/Engagement:
"What time do you eat lunch? Go to bed? Wake up?" Connect time to students'' daily schedules. Show that understanding time helps us plan and be on time.

Direct Instruction:
Use a teaching clock (geared clock where hands move together). Show that as the minute hand goes around, the hour hand slowly moves. Count by 5s around the clock face: 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60 (or :00).

Model reading times: "The short hand points between 4 and 5, so it''s 4-something. The long hand points to 7, which means 35 minutes. It''s 4:35."

Introduce a.m. (morning) and p.m. (afternoon/evening) with the daily schedule.

Guided Practice:
Set clocks to given times, read times and write them, match analog to digital, schedule planning with times, partner quiz games.

Independent Application:
Worksheet practice, time-related word problems, keeping a time diary, classroom clock checks throughout the day.

DIFFERENTIATION:

Struggling Learners:
- Focus on o''clock, :30, and :15/:45 before :05 intervals
- Use clocks with minute labels
- Color-code hour and minute hands
- Practice one skill at a time
- Connect to personal schedule

Advanced Learners:
- Tell time to the minute
- Solve elapsed time problems
- Work with time in different time zones
- Create schedules
- Explore 24-hour time

ASSESSMENT INDICATORS:
- Reads analog clocks to nearest 5 minutes
- Writes time correctly in digital format
- Identifies a.m. and p.m. appropriately
- Connects time to daily activities
- Matches analog and digital times

VOCABULARY:
analog, digital, hour hand, minute hand, o''clock, half past, quarter past, quarter to, a.m., p.m., noon, midnight

CONNECTION TO FUTURE LEARNING:
This topic prepares students for elapsed time, scheduling, and time calculations needed in daily life and problem-solving.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Telling Time' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Counting Money
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting Money' AND grade_level_min = 2),
  'Counting Money Topic Guide',
  'Comprehensive teaching approach for coin and bill values',
  'COUNTING MONEY - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should recognize coins (penny, nickel, dime, quarter), skip count by 5s and 10s, understand basic addition, and have some experience with dollar bills.

LEARNING OBJECTIVES:
Students will count collections of coins and bills, make amounts using different coin combinations, solve word problems involving money, and understand the relationship between coins and dollars.

KEY CONCEPTS:
1. Each coin has a specific value (1¢, 5¢, 10¢, 25¢)
2. A dollar equals 100 cents
3. Count from greatest to least value for efficiency
4. Same amount can be made with different combinations
5. Money uses decimal notation ($1.25)

COMMON MISCONCEPTIONS:
- Counting coins by quantity rather than value
- Thinking bigger coins are worth more (nickel vs dime)
- Difficulty with the 25-cent jump for quarters
- Confusing dollar sign and cents symbol placement
- Not understanding decimal notation for money

TEACHING SEQUENCE:

Hook/Engagement:
Set up a classroom store with items priced at various amounts. "How would you pay for this 35¢ eraser?" Show multiple solutions and explain we''re learning to be money experts.

Direct Instruction:
Review coin values with visuals. Model counting strategy: Start with highest value, then count on. Example: 25¢, 35¢, 45¢, 50¢, 51¢, 52¢ (quarter, dime, nickel, 2 pennies = 52¢).

Introduce dollar bills and combinations: 1 dollar = 100 pennies = 4 quarters = 10 dimes.

Show writing money: $1.35 or 135¢ or $1 and 35¢.

Guided Practice:
Sort and count coin collections, make specific amounts multiple ways, shopping scenarios with making change, partner trading games.

Independent Application:
Count and record money amounts, solve money word problems, design items for classroom store with prices, budget activities.

DIFFERENTIATION:

Struggling Learners:
- Focus on one coin type at a time
- Use larger coin manipulatives
- Create coin value charts for reference
- Practice skip counting extensively
- Work with smaller amounts first

Advanced Learners:
- Make change from larger amounts
- Solve multi-step money problems
- Explore coins from other countries
- Budget projects
- Work with amounts over $10

ASSESSMENT INDICATORS:
- Correctly identifies coin values
- Counts mixed coins accurately
- Makes amounts using multiple combinations
- Writes money correctly
- Solves money word problems

VOCABULARY:
penny, nickel, dime, quarter, dollar, cents, value, total, change, coins, bills, amount

CONNECTION TO FUTURE LEARNING:
Money skills connect to decimals, addition and subtraction with regrouping, consumer mathematics, and financial literacy.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting Money' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Line Plots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Line Plots' AND grade_level_min = 2),
  'Line Plots Topic Guide',
  'Comprehensive teaching approach for data representation',
  'LINE PLOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should measure in whole units, organize data, count, and have experience with simple graphs like tally charts and picture graphs.

LEARNING OBJECTIVES:
Students will create line plots from measurement data, interpret line plots to answer questions, use line plots to compare data, and understand line plots as a data representation tool.

KEY CONCEPTS:
1. Line plots show data along a number line
2. X marks or dots represent individual data points
3. Multiple marks at one value show frequency
4. Line plots reveal patterns in data
5. Data can be collected, organized, and displayed

COMMON MISCONCEPTIONS:
- Confusing line plots with line graphs
- Not understanding what each X represents
- Difficulty with spacing on the number line
- Forgetting to include all data points
- Not labeling the number line correctly

TEACHING SEQUENCE:

Hook/Engagement:
"Let''s find out how long everyone''s shoes are!" Measure shoes to the nearest inch and record. "How can we show everyone this information quickly?" Introduce line plots as a way to display measurement data.

Direct Instruction:
Model creating a line plot: Draw a number line with appropriate range. Add X marks above each value for each data point. Title the plot and label the axis.

Demonstrate reading: "How many students have 7-inch shoes? Which length is most common? What''s the range from shortest to longest?"

Guided Practice:
Create line plots from class data (hand spans, crayon lengths), answer questions about provided line plots, partner data collection and plotting.

Independent Application:
Collect and plot individual data sets, interpret given line plots, compare multiple line plots, write questions for classmates about plots.

DIFFERENTIATION:

Struggling Learners:
- Use pre-drawn number lines
- Fewer data points initially
- Physical manipulatives before drawing
- Focus on reading before creating
- Partner support for plotting

Advanced Learners:
- Larger data sets
- Half-unit measurements
- Compare multiple data sets
- Calculate differences using plots
- Design data collection investigations

ASSESSMENT INDICATORS:
- Creates accurate line plots from data
- Correctly spaces and labels number line
- Interprets line plots to answer questions
- Compares data using line plots
- Collects appropriate data for plotting

VOCABULARY:
line plot, data, number line, frequency, range, most common, least common, compare, measurement data

CONNECTION TO FUTURE LEARNING:
Line plots prepare students for more complex data representations including histograms, and develops skills in data analysis and statistics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Line Plots' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Comparing Lengths
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Lengths' AND grade_level_min = 2),
  'Comparing Lengths Topic Guide',
  'Comprehensive teaching approach for length comparison',
  'COMPARING LENGTHS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should measure in whole inches and centimeters, subtract within 100, compare two-digit numbers, and use vocabulary like longer, shorter, taller.

LEARNING OBJECTIVES:
Students will measure two objects and compare their lengths, calculate how much longer or shorter one object is than another, use comparison vocabulary precisely, and solve comparison word problems.

KEY CONCEPTS:
1. Comparison requires measuring both objects
2. Subtraction finds the difference in lengths
3. The difference tells "how much more" or "how much less"
4. Objects must be measured in the same units to compare
5. Comparison can be stated two ways (A is 3 inches longer than B; B is 3 inches shorter than A)

COMMON MISCONCEPTIONS:
- Comparing without measuring (visual estimation only)
- Not using the same unit for both objects
- Subtracting incorrectly
- Confusion about which is longer when subtracting
- Difficulty expressing comparisons in word form

TEACHING SEQUENCE:

Hook/Engagement:
"Is my pencil longer or shorter than yours? By how much?" Demonstrate measuring both pencils and finding the difference. Connect to real situations: "If you needed a 6-inch stick and only had a 4-inch one, how much more do you need?"

Direct Instruction:
Model the complete process: Measure object A (9 inches), measure object B (5 inches), find the difference (9 - 5 = 4), state the comparison ("The book is 4 inches longer than the eraser" OR "The eraser is 4 inches shorter than the book").

Emphasize measuring with the same units and aligning properly.

Guided Practice:
Partner measuring and comparing, recording comparisons in complete sentences, word problems with missing information (the difference is 3 inches, one object is 8 inches, what''s the other?).

Independent Application:
Measure and compare classroom objects, solve comparison word problems, create comparison problems for classmates.

DIFFERENTIATION:

Struggling Learners:
- Use objects with obvious differences
- Provide sentence frames for comparisons
- Focus on the subtraction separately
- Visual supports for the process
- Smaller numbers initially

Advanced Learners:
- Compare multiple objects
- Mixed units (estimate conversions)
- Two-step problems with comparisons
- Create measurement comparison projects
- Measure and compare perimeters

ASSESSMENT INDICATORS:
- Measures both objects accurately
- Uses subtraction to find differences
- States comparisons correctly using both perspectives
- Solves word problems involving comparison
- Uses appropriate vocabulary

VOCABULARY:
compare, difference, longer, shorter, taller, how much more, how much less, measure, length, width, height

CONNECTION TO FUTURE LEARNING:
Length comparison builds toward perimeter, understanding measurement relationships, and solving multi-step measurement problems.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Lengths' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================
-- INTRODUCTION TO MULTIPLICATION UNIT
-- ============================================

-- Equal Groups
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equal Groups' AND grade_level_min = 2),
  'Equal Groups Topic Guide',
  'Comprehensive teaching approach for multiplication foundations',
  'EQUAL GROUPS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should be able to count objects, understand addition, count by 2s, 5s, and 10s, and use words like "groups" and "each."

LEARNING OBJECTIVES:
Students will identify equal groups in pictures and real objects, count equal groups to find totals, recognize that equal groups have the same number in each, and describe situations using "groups of" language.

KEY CONCEPTS:
1. Equal groups have the same number in each group
2. Total = number of groups × number in each group
3. "3 groups of 4" means 3 groups with 4 in each
4. Equal groups is the foundation for multiplication
5. Not all groups are equal groups

COMMON MISCONCEPTIONS:
- Confusing "groups of" with total amount
- Thinking any grouping is "equal groups" even when unequal
- Difficulty distinguishing number of groups from number in each
- Counting all items without recognizing the group structure
- Confusing rows and groups

TEACHING SEQUENCE:

Hook/Engagement:
Show images: "Here are 3 bags with 5 apples each. Here are 3 bags with different amounts. Which shows equal groups? Why does it matter?" Discuss how equal groups make counting and sharing easier.

Direct Instruction:
Model with manipulatives: "I''m putting 4 counters in each cup. How many cups? How many in each? That''s 3 groups of 4."

Count the total: "I can skip count by 4s: 4, 8, 12. Or I can add: 4 + 4 + 4 = 12. There are 12 total."

Show non-examples: Groups of 3, 4, and 5 are NOT equal groups.

Guided Practice:
Identify equal groups in pictures, create equal groups with objects, describe groups using "__ groups of __" language, count totals using skip counting or repeated addition.

Independent Application:
Draw equal groups, solve word problems, identify equal groups in real-world contexts (egg cartons, muffin tins, packs of items).

DIFFERENTIATION:

Struggling Learners:
- Start with groups of 2
- Use physical manipulatives
- Practice identifying equal vs unequal first
- Sentence frames for description
- Focus on small numbers of groups

Advanced Learners:
- Larger groups and more groups
- Write word problems using equal groups
- Explore what happens with 0 groups or groups of 0
- Connect to multiplication notation
- Solve comparison problems

ASSESSMENT INDICATORS:
- Identifies equal groups correctly
- Uses "groups of" language accurately
- Counts totals using appropriate strategies
- Creates equal groups given specifications
- Applies concept to word problems

VOCABULARY:
equal groups, groups of, each, total, in all, same number, different, share equally

CONNECTION TO FUTURE LEARNING:
Equal groups is the conceptual foundation for multiplication, division, and understanding of factors and multiples.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equal Groups' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Arrays
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Arrays' AND grade_level_min = 2),
  'Arrays Topic Guide',
  'Comprehensive teaching approach for array understanding',
  'ARRAYS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand equal groups, count objects in various arrangements, recognize rows and columns, and use skip counting.

LEARNING OBJECTIVES:
Students will identify and describe arrays using rows and columns, count objects in arrays efficiently, create arrays to represent equal groups, and connect arrays to addition and later to multiplication.

KEY CONCEPTS:
1. Arrays have objects in rows and columns
2. Each row has the same number of objects
3. Each column has the same number of objects
4. Arrays can be counted by rows or by columns
5. Rotating an array changes rows to columns but not the total

COMMON MISCONCEPTIONS:
- Confusing rows (horizontal) and columns (vertical)
- Not recognizing rotated arrays as related
- Counting each object instead of using the structure
- Difficulty creating arrays (making rows uneven)
- Not connecting arrays to equal groups

TEACHING SEQUENCE:

Hook/Engagement:
Show real-world arrays: egg cartons, muffin tins, windows in buildings, keyboard keys. "What do you notice? How are these arranged?" Introduce the word "array."

Direct Instruction:
Build arrays with manipulatives: "Let''s make an array with 3 rows and 4 in each row. How many total?" Show two ways to count: by rows (4 + 4 + 4 = 12 or 4, 8, 12) or by columns (3 + 3 + 3 + 3 = 12 or 3, 6, 9, 12).

Rotate the array: "Now it has 4 rows with 3 each. Still 12 total!"

Guided Practice:
Build arrays from descriptions, describe arrays using rows and columns, match descriptions to pictures, find totals using skip counting or repeated addition.

Independent Application:
Draw arrays for given descriptions, describe arrays in pictures, solve array word problems, find arrays in the environment.

DIFFERENTIATION:

Struggling Learners:
- Start with 2 rows only
- Use grid paper for drawing
- Physical manipulatives always
- Label rows and columns
- Focus on building before counting

Advanced Learners:
- Larger arrays
- Write equations for arrays
- Find all arrays for a given total (12 = 3×4 = 2×6 = 1×12)
- Design real-world items using arrays
- Connect to area concepts

ASSESSMENT INDICATORS:
- Describes arrays using rows and columns correctly
- Creates arrays matching given descriptions
- Counts arrays efficiently (not one by one)
- Recognizes rotated arrays as related
- Connects arrays to equal groups

VOCABULARY:
array, row, column, arrangement, in each row, in each column, total, turn, rotate

CONNECTION TO FUTURE LEARNING:
Arrays are fundamental to multiplication understanding, the commutative property, and area concepts in geometry.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Arrays' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Repeated Addition
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Repeated Addition' AND grade_level_min = 2),
  'Repeated Addition Topic Guide',
  'Comprehensive teaching approach for multiplication as repeated addition',
  'REPEATED ADDITION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand equal groups and arrays, add multiple addends, skip count by 2s, 5s, and 10s, and write addition sentences.

LEARNING OBJECTIVES:
Students will write repeated addition sentences for equal groups and arrays, solve repeated addition problems, connect repeated addition to skip counting, and understand repeated addition as the basis for multiplication.

KEY CONCEPTS:
1. Repeated addition means adding the same number multiple times
2. 4 + 4 + 4 represents 3 groups of 4
3. Skip counting is a form of repeated addition
4. Repeated addition can be written with the multiplication symbol (introduction)
5. The order of addends doesn''t change the sum

COMMON MISCONCEPTIONS:
- Writing unequal addends (4 + 5 + 4)
- Confusing number of groups with the addend
- Difficulty seeing the connection to skip counting
- Adding incorrectly with many addends
- Not recognizing when repeated addition applies

TEACHING SEQUENCE:

Hook/Engagement:
"If you eat 3 cookies every day for 5 days, how many cookies is that?" Write: 3 + 3 + 3 + 3 + 3. "This is called repeated addition. Let''s explore why it''s so useful!"

Direct Instruction:
Connect representations: Show 4 groups of 5 objects. Write: 5 + 5 + 5 + 5 = 20. Count by 5s to verify: 5, 10, 15, 20. "All three show the same thing!"

Model with arrays: A 3×6 array can be written as 6 + 6 + 6 = 18 or 3 + 3 + 3 + 3 + 3 + 3 = 18.

Introduce the multiplication symbol: "Instead of writing 4 + 4 + 4, mathematicians write 3 × 4. It means the same thing!"

Guided Practice:
Write repeated addition for pictures, draw pictures for repeated addition, connect to skip counting, solve with sums, introduce × notation.

Independent Application:
Match equal groups to repeated addition, solve word problems, write repeated addition from descriptions, begin using × symbol.

DIFFERENTIATION:

Struggling Learners:
- Use manipulatives for every problem
- Smaller addends (2s, 5s, 10s)
- Fewer addends (2-3 groups)
- Visual supports for each step
- Skip counting as the primary solving strategy

Advanced Learners:
- More groups and larger addends
- Write × equations independently
- Solve for missing addends
- Create word problems
- Explore properties (order doesn''t matter)

ASSESSMENT INDICATORS:
- Writes correct repeated addition from pictures
- Draws pictures for repeated addition sentences
- Finds sums accurately
- Connects repeated addition to skip counting
- Begins using multiplication notation

VOCABULARY:
repeated addition, addend, groups of, times, multiply, equals, sum, total

CONNECTION TO FUTURE LEARNING:
Repeated addition is the conceptual bridge to multiplication, helping students understand what multiplication means before memorizing facts.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Repeated Addition' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Even and Odd Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Even and Odd Numbers' AND grade_level_min = 2),
  'Even and Odd Numbers Topic Guide',
  'Comprehensive teaching approach for number classification',
  'EVEN AND ODD NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should count to at least 100, pair objects, understand equal sharing, and recognize number patterns.

LEARNING OBJECTIVES:
Students will determine if a number is even or odd using models and rules, identify patterns in even and odd numbers, apply even/odd classification to solve problems, and understand why numbers are classified this way.

KEY CONCEPTS:
1. Even numbers can be split into two equal groups
2. Odd numbers have one left over when split into two groups
3. Even numbers end in 0, 2, 4, 6, or 8
4. Odd numbers end in 1, 3, 5, 7, or 9
5. Alternating pattern: even, odd, even, odd...

COMMON MISCONCEPTIONS:
- Thinking even means "the same"
- Confusing even and odd
- Thinking only single-digit numbers are even or odd
- Not understanding why the ones digit determines even/odd
- Difficulty with 0 (is it even?)

TEACHING SEQUENCE:

Hook/Engagement:
"I have 8 cookies to share with a friend. Can we each get the same number? What about 7 cookies?" Demonstrate that 8 splits into 4 and 4, but 7 splits into 3 and 3 with 1 left over.

Direct Instruction:
Model with cubes: Pair up cubes for several numbers. Even numbers pair up evenly; odd numbers have one left over.

Show the pattern: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10... Odd, Even, Odd, Even...

Teach the shortcut: "The ones digit tells us. If it ends in 0, 2, 4, 6, or 8 = even. If it ends in 1, 3, 5, 7, or 9 = odd."

Address 0: "Zero is even because 0 ÷ 2 = 0 with nothing left over."

Guided Practice:
Classify numbers using pairing, classify using the ones digit rule, sort numbers into even and odd, complete patterns alternating even and odd.

Independent Application:
Classify larger numbers, solve riddles (I''m even, greater than 10, less than 15...), explore sums of evens and odds, apply to real situations (fair sharing).

DIFFERENTIATION:

Struggling Learners:
- Use manipulatives for every classification
- Focus on single-digit numbers first
- Create reference charts
- Practice pairing extensively
- Use color-coding for even/odd

Advanced Learners:
- Explore patterns: even + even = ?, odd + odd = ?
- Work with larger numbers
- Predict without checking
- Investigate why the ones digit rule works
- Create even/odd riddles

ASSESSMENT INDICATORS:
- Correctly classifies numbers as even or odd
- Uses models to prove classification
- Applies the ones digit rule
- Extends to larger numbers
- Explains why a number is even or odd

VOCABULARY:
even, odd, pair, left over, split, equal groups, ones digit, pattern, share equally

CONNECTION TO FUTURE LEARNING:
Even and odd concepts connect to divisibility rules, factors, and more advanced number theory in later grades.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Even and Odd Numbers' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================
-- GEOMETRY UNIT
-- ============================================

-- Shape Attributes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Shape Attributes' AND grade_level_min = 2),
  'Shape Attributes Topic Guide',
  'Comprehensive teaching approach for geometric properties',
  'SHAPE ATTRIBUTES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should recognize basic shapes (triangle, square, rectangle, circle), use vocabulary like side and corner, sort objects by characteristics, and identify shapes in the environment.

LEARNING OBJECTIVES:
Students will identify shapes by the number of sides and angles, describe attributes using geometric vocabulary, recognize that shapes can look different but have the same attributes, and classify shapes based on attributes.

KEY CONCEPTS:
1. Shapes have specific numbers of sides and angles
2. A side is a straight line segment
3. An angle is where two sides meet (vertex/corner)
4. Same shape type can look different (all triangles have 3 sides but can be fat, thin, tall)
5. Attributes define the shape, not size or orientation

COMMON MISCONCEPTIONS:
- Thinking a shape isn''t a triangle if it''s rotated or "skinny"
- Counting curved lines as sides
- Confusing angles with corners
- Thinking all rectangles must have horizontal/vertical sides
- Not recognizing that a square is also a rectangle

TEACHING SEQUENCE:

Hook/Engagement:
"I spy with my mathematical eye... a shape with 4 sides and 4 square corners. What could it be?" Play shape riddles based on attributes, building excitement about shape properties.

Direct Instruction:
Examine shapes systematically: "This shape has... let me count... 1, 2, 3 sides. And 1, 2, 3 corners where the sides meet. It''s a triangle because it has 3 sides and 3 angles."

Show variety within categories: Many different triangles all have 3 sides and 3 angles. The same for pentagons (5 sides, 5 angles) and hexagons (6 sides, 6 angles).

Introduce angle vocabulary: right angles (square corners), angles smaller than right angles, angles larger than right angles.

Guided Practice:
Sort shapes by attributes, describe shapes without naming them (partner guesses), identify shapes in different orientations, create attribute comparison charts.

Independent Application:
Shape attribute worksheets, shape hunt recording sides and angles, draw shapes given attributes, shape riddles.

DIFFERENTIATION:

Struggling Learners:
- Focus on triangles, squares, rectangles first
- Use attribute blocks for hands-on exploration
- Provide vocabulary cards with pictures
- Practice counting sides and angles slowly
- Use sticky notes on vertices

Advanced Learners:
- Explore pentagons, hexagons, octagons
- Investigate irregular shapes
- Classify by multiple attributes
- Create Venn diagrams of shape properties
- Explore 3D shape faces

ASSESSMENT INDICATORS:
- Counts sides and angles accurately
- Names shapes by attributes
- Recognizes shapes in various orientations
- Uses geometric vocabulary correctly
- Classifies shapes by properties

VOCABULARY:
attribute, side, angle, vertex (corner), triangle, quadrilateral, pentagon, hexagon, right angle, straight, closed figure

CONNECTION TO FUTURE LEARNING:
Shape attributes build toward understanding geometric classification systems, angle measurement, and properties that define shape families.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Shape Attributes' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Quadrilaterals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quadrilaterals' AND grade_level_min = 2),
  'Quadrilaterals Topic Guide',
  'Comprehensive teaching approach for four-sided shapes',
  'QUADRILATERALS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should recognize squares and rectangles, count sides and angles, understand that shapes have specific attributes, and use vocabulary like side and corner.

LEARNING OBJECTIVES:
Students will identify quadrilaterals as shapes with 4 sides and 4 angles, recognize various types of quadrilaterals, understand hierarchical relationships (a square is a rectangle is a quadrilateral), and compare and contrast different quadrilaterals.

KEY CONCEPTS:
1. Quadrilateral means 4 sides
2. All quadrilaterals have 4 sides and 4 angles
3. Special quadrilaterals: square, rectangle, rhombus, trapezoid
4. Squares are special rectangles (4 equal sides AND 4 right angles)
5. Shape names describe specific attributes

COMMON MISCONCEPTIONS:
- Thinking squares are not rectangles
- Believing all quadrilaterals must have right angles
- Not recognizing rotated rectangles
- Confusing rhombus with square
- Thinking any 4-sided shape can''t be a quadrilateral if it looks "weird"

TEACHING SEQUENCE:

Hook/Engagement:
"All of these shapes have something in common. What is it?" Display square, rectangle, rhombus, trapezoid, kite. Students identify they all have 4 sides. Introduce "quadrilateral."

Direct Instruction:
Explore each type:
- Rectangle: 4 sides, 4 right angles, opposite sides equal
- Square: 4 equal sides, 4 right angles (special rectangle!)
- Rhombus: 4 equal sides (angles may not be right)
- Trapezoid: At least one pair of parallel sides

Use attribute blocks and demonstrate that a square meets ALL rectangle requirements plus has equal sides.

Guided Practice:
Sort quadrilaterals, play "Which One Doesn''t Belong?", create a quadrilateral family tree, identify quadrilaterals in the environment, compare and contrast with Venn diagrams.

Independent Application:
Quadrilateral sort, draw quadrilaterals with specific attributes, true/false questions about quadrilateral properties, design using quadrilaterals.

DIFFERENTIATION:

Struggling Learners:
- Focus on rectangle and square first
- Use manipulatives for comparison
- Create attribute charts
- Practice with clear examples before tricky ones
- Visual reference cards on desk

Advanced Learners:
- Explore parallelograms and kites
- Create hierarchy diagrams
- Investigate angle sums in quadrilaterals
- Design tessellations with quadrilaterals
- Explore irregular quadrilaterals

ASSESSMENT INDICATORS:
- Identifies all shapes with 4 sides as quadrilaterals
- Names specific quadrilaterals by attributes
- Explains why a square is also a rectangle
- Compares and contrasts quadrilateral types
- Recognizes quadrilaterals in various orientations

VOCABULARY:
quadrilateral, rectangle, square, rhombus, trapezoid, parallel, opposite sides, equal sides, right angle

CONNECTION TO FUTURE LEARNING:
Understanding quadrilateral relationships prepares students for geometric hierarchies, parallelogram properties, and angle relationships in later grades.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quadrilaterals' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Partitioning Shapes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Partitioning Shapes' AND grade_level_min = 2),
  'Partitioning Shapes Topic Guide',
  'Comprehensive teaching approach for fractions foundations',
  'PARTITIONING SHAPES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should recognize basic shapes, understand equal sharing, divide objects in half, and use vocabulary like whole, part, and equal.

LEARNING OBJECTIVES:
Students will partition shapes into 2, 3, and 4 equal parts, name parts using fraction vocabulary (halves, thirds, fourths), understand that equal parts must be the same size, and connect partitioning to fair sharing.

KEY CONCEPTS:
1. Partitioning means dividing into parts
2. Equal parts are the same size (not necessarily same shape)
3. Halves = 2 equal parts, thirds = 3 equal parts, fourths = 4 equal parts
4. More parts = smaller parts
5. All parts together make the whole

COMMON MISCONCEPTIONS:
- Thinking any division creates equal parts
- Confusing the number of parts with the size of parts
- Believing equal parts must look identical
- Difficulty with thirds (not intuitive like halves)
- Thinking fourths are always squares

TEACHING SEQUENCE:

Hook/Engagement:
"I need to share this pizza fairly between 2 friends. How should I cut it?" Show correct and incorrect ways. "Why isn''t this fair?" (Unequal pieces) Connect fair sharing to equal parts.

Direct Instruction:
Model partitioning: Draw a rectangle. "If I cut it into 2 equal parts, each part is called a half. One half of the rectangle." Show multiple ways to make halves (horizontal, vertical, diagonal).

Extend to thirds and fourths: "3 equal parts are called thirds. 4 equal parts are called fourths or quarters."

Demonstrate that more parts = smaller pieces using same-sized rectangles divided differently.

Guided Practice:
Partition shapes in different ways, identify correct and incorrect partitions, match shapes to fraction names, create multiple ways to partition the same shape.

Independent Application:
Partition shapes for given fractions, shade parts of partitioned shapes, solve fair-sharing word problems, create partitioning puzzles.

DIFFERENTIATION:

Struggling Learners:
- Use paper folding for halves and fourths
- Focus on halves before thirds
- Use grid paper for even partitioning
- Color parts to visualize
- Connect to concrete sharing situations

Advanced Learners:
- Partition into fifths, sixths, eighths
- Explore area remains same regardless of how partitioned
- Write fractions symbolically
- Create and solve fraction puzzles
- Partition circles (more challenging)

ASSESSMENT INDICATORS:
- Partitions shapes into 2, 3, and 4 equal parts
- Identifies partitions as halves, thirds, or fourths
- Distinguishes equal from unequal parts
- Creates multiple partitions for the same fraction
- Connects partitioning to fair sharing

VOCABULARY:
partition, equal parts, half/halves, third/thirds, fourth/fourths, quarter, whole, divide, share equally

CONNECTION TO FUTURE LEARNING:
Partitioning shapes is the foundation for fraction understanding, leading to fraction operations and proportional reasoning.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Partitioning Shapes' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Drawing Shapes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Drawing Shapes' AND grade_level_min = 2),
  'Drawing Shapes Topic Guide',
  'Comprehensive teaching approach for shape construction',
  'DRAWING SHAPES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should identify shapes by attributes, count sides and angles, use vocabulary like side, angle, and vertex, and have experience with basic drawing tools.

LEARNING OBJECTIVES:
Students will draw shapes with specified numbers of sides and angles, construct shapes meeting specific attribute requirements, use tools like rulers and templates appropriately, and verify drawings meet criteria.

KEY CONCEPTS:
1. Shapes can be drawn to meet specific requirements
2. Tools help create straight lines and accurate shapes
3. Closed figures have all sides connected
4. Verification ensures the shape meets requirements
5. Same requirements can produce different-looking shapes

COMMON MISCONCEPTIONS:
- Difficulty making straight lines
- Not closing the shape completely
- Drawing the wrong number of sides
- Thinking there''s only one way to draw each shape type
- Not checking work against requirements

TEACHING SEQUENCE:

Hook/Engagement:
"I need a shape with exactly 5 sides for my robot design. Can you help me draw one?" Show that there are many possible pentagons, building excitement about shape creation.

Direct Instruction:
Model the drawing process: "I need to draw a quadrilateral with exactly 2 right angles. First, I''ll make a right angle here... then another here... now I connect them with two more sides... let me count: 1, 2, 3, 4 sides and 2 right angles. Done!"

Demonstrate tool use: rulers for straight lines, dot paper for angles, shape templates for tracing.

Emphasize checking: Count sides, count angles, verify requirements.

Guided Practice:
Draw shapes from descriptions, use dot paper for accurate shapes, partner challenges (describe a shape for partner to draw), verify drawings against criteria.

Independent Application:
Shape drawing worksheets with requirements, create shape art using specific shapes, draw shapes for riddles, design activities requiring shapes with attributes.

DIFFERENTIATION:

Struggling Learners:
- Use dot paper or graph paper
- Provide templates for tracing
- Start with 3-sided shapes
- Allow rulers for all lines
- Checklist for verification

Advanced Learners:
- Complex requirements (hexagon with 2 right angles)
- Draw shapes without grid support
- Create shape designs for specific purposes
- Draw 3D shapes
- Explore which requirements are possible/impossible

ASSESSMENT INDICATORS:
- Draws shapes with correct number of sides
- Uses tools appropriately
- Closes figures completely
- Meets specified attribute requirements
- Checks and verifies drawings

VOCABULARY:
draw, construct, straight, side, angle, vertex, closed figure, attribute, requirement, verify

CONNECTION TO FUTURE LEARNING:
Shape construction skills prepare students for geometric constructions, coordinate geometry, and understanding shape properties through creation.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Drawing Shapes' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;
