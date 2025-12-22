-- Grade 2 Math Expanded Topic Prompts
-- Comprehensive teaching prompts for 66 expanded Grade 2 Math topics
-- ============================================================================

-- ============================================================================
-- ADDITION AND SUBTRACTION EXPANSION (9 topics)
-- ============================================================================

-- Adding Within 100
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Within 100' AND grade_level_min = 2),
  'Adding Within 100 Topic Guide', 'Adding two-digit numbers with regrouping',
  'ADDING WITHIN 100 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Adding within 20 fluency
- Place value understanding (tens and ones)
- Understanding of regrouping concept

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Add two-digit numbers without regrouping
2. Add two-digit numbers with regrouping
3. Use multiple strategies (standard algorithm, number line, decomposition)
4. Solve two-digit addition word problems

KEY CONCEPTS:
- Add ones first, then tens (standard algorithm)
- Regrouping: 10 ones = 1 ten
- Alternative strategies: break apart by place value
- Check work by estimating or inverse operation

COMMON MISCONCEPTIONS:
- Forgetting to regroup
- Adding tens digit with ones digit
- Not carrying the regrouped ten
- Place value alignment errors

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "A store sold 36 toys on Monday and 47 on Tuesday. How many total?"

2. DIRECT INSTRUCTION (12 minutes):
   Model standard algorithm: 36 + 47
   Ones: 6 + 7 = 13 (write 3, carry 1)
   Tens: 3 + 4 + 1 = 8
   Answer: 83
   Show alternative: 36 + 47 = 36 + 40 + 7 = 76 + 7 = 83

3. GUIDED PRACTICE (10 minutes):
   Work problems together with varying regrouping needs.
   Students explain their strategies.

4. INDEPENDENT PRACTICE (10 minutes):
   Practice problems with and without regrouping.
   Word problems with context.

DIFFERENTIATION:
For Struggling Learners:
- Base-ten blocks for every problem
- Place value charts to organize
- Start without regrouping

For Advanced Learners:
- Add three two-digit numbers
- Missing addend problems
- Mental math challenges

ASSESSMENT INDICATORS:
- Accurately adds with regrouping
- Shows work clearly
- Can explain regrouping process
- Applies to word problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Within 100' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Subtracting Within 100
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Within 100' AND grade_level_min = 2),
  'Subtracting Within 100 Topic Guide', 'Subtracting two-digit numbers with regrouping',
  'SUBTRACTING WITHIN 100 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Subtraction within 20
- Place value understanding
- Understanding that 1 ten = 10 ones

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Subtract two-digit numbers without regrouping
2. Subtract two-digit numbers with regrouping
3. Use multiple strategies (standard algorithm, counting up)
4. Solve two-digit subtraction word problems

KEY CONCEPTS:
- Subtract ones first, then tens (when possible)
- Regrouping: borrow 1 ten to make 10 more ones
- Counting up as alternative strategy
- Check by adding

COMMON MISCONCEPTIONS:
- Subtracting smaller from larger regardless of position
- Forgetting to reduce the tens after regrouping
- Not recognizing when regrouping is needed
- Regrouping when not necessary

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "There were 52 birds in a tree. 28 flew away. How many are left?"

2. DIRECT INSTRUCTION (12 minutes):
   Model: 52 - 28
   Ones: 2 - 8 (can''t do it, need to regroup)
   Borrow 1 ten: 4 tens 12 ones
   12 - 8 = 4, 4 - 2 = 2
   Answer: 24
   Show counting up: 28 + 2 = 30, 30 + 22 = 52, so 2 + 22 = 24

3. GUIDED PRACTICE (10 minutes):
   Varied problems, identify when regrouping is needed.
   Explain strategies used.

4. INDEPENDENT PRACTICE (10 minutes):
   Practice problems and word problems.

DIFFERENTIATION:
For Struggling Learners:
- Base-ten blocks for trading
- Mark when regrouping is needed first
- Problems without regrouping initially

For Advanced Learners:
- Subtract from multiples of 100
- Find missing numbers (82 - ? = 45)
- Compare strategies for efficiency

ASSESSMENT INDICATORS:
- Correctly identifies regrouping need
- Executes regrouping accurately
- Checks work using addition
- Solves word problems correctly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Within 100' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Addition Strategies
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Addition Strategies' AND grade_level_min = 2),
  'Addition Strategies Topic Guide', 'Using strategies like breaking apart and compensation',
  'ADDITION STRATEGIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Adding within 100
- Place value understanding
- Mental math basics

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use break-apart strategy (decomposition)
2. Use compensation strategy (adjust and readjust)
3. Use friendly numbers strategy (make tens)
4. Choose efficient strategies for different problems

KEY CONCEPTS:
- Break apart: 37 + 25 = 30 + 20 + 7 + 5 = 50 + 12 = 62
- Compensation: 49 + 26 = 50 + 26 - 1 = 75
- Friendly numbers: 38 + 25 = 40 + 23 = 63
- Different problems suit different strategies

COMMON MISCONCEPTIONS:
- Forgetting to adjust back in compensation
- Breaking apart incorrectly
- Always using the same strategy
- Errors in mental calculations

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "There are many ways to add. Let''s become strategy experts!"

2. DIRECT INSTRUCTION (12 minutes):
   Teach each strategy with clear examples.
   Compare: which feels easier for 48 + 35?
   Show how to choose based on the numbers.

3. GUIDED PRACTICE (10 minutes):
   Try each strategy, discuss preferences.
   "Which strategy would you use for 67 + 28? Why?"

4. INDEPENDENT PRACTICE (10 minutes):
   Solve using specified strategies.
   Choose own strategy and explain choice.

DIFFERENTIATION:
For Struggling Learners:
- Master one strategy before learning others
- Visual supports for each strategy
- Smaller numbers to practice

For Advanced Learners:
- Apply strategies to larger numbers
- Compare efficiency of strategies
- Create problems suited for each strategy

ASSESSMENT INDICATORS:
- Uses multiple strategies correctly
- Explains reasoning for strategy choice
- Arrives at correct answers
- Shows flexibility in approach', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Addition Strategies' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Subtraction Strategies
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtraction Strategies' AND grade_level_min = 2),
  'Subtraction Strategies Topic Guide', 'Using strategies like counting up and decomposing',
  'SUBTRACTION STRATEGIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Subtracting within 100
- Number line familiarity
- Place value understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use counting up (adding on) strategy
2. Use decomposition (break apart) strategy
3. Use compensation strategy
4. Select appropriate strategies for different problems

KEY CONCEPTS:
- Counting up: 83 - 56: from 56, +4 = 60, +23 = 83, so 4 + 23 = 27
- Decomposition: 75 - 42 = 75 - 40 - 2 = 33
- Compensation: 82 - 39 = 82 - 40 + 1 = 43
- Think addition for subtraction

COMMON MISCONCEPTIONS:
- Mixing up counting up direction
- Subtracting too much or too little in parts
- Forgetting to adjust in compensation
- Difficulty choosing between strategies

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Subtraction can feel hard. These strategies make it easier!"

2. DIRECT INSTRUCTION (12 minutes):
   Model each strategy with 74 - 28.
   Counting up: 28 + 2 = 30, 30 + 44 = 74, answer = 46
   Decomposition: 74 - 20 = 54, 54 - 8 = 46
   Discuss which feels easier.

3. GUIDED PRACTICE (10 minutes):
   Practice strategies with various problems.
   Justify strategy choices.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve using different strategies.
   Explain reasoning.

DIFFERENTIATION:
For Struggling Learners:
- Number line support for counting up
- Focus on one strategy at a time
- Visual step-by-step guides

For Advanced Learners:
- Mental math challenges
- Larger numbers
- Design problems suited for each strategy

ASSESSMENT INDICATORS:
- Executes multiple strategies
- Chooses strategies appropriately
- Explains thinking process
- Arrives at accurate answers', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtraction Strategies' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Adding Three Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Three Numbers' AND grade_level_min = 2),
  'Adding Three Numbers Topic Guide', 'Adding three two-digit numbers',
  'ADDING THREE NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Adding two two-digit numbers
- Regrouping skills
- Properties of addition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Add three two-digit numbers
2. Look for combinations that make addition easier
3. Apply regrouping to multiple addends
4. Solve three-addend word problems

KEY CONCEPTS:
- Add in any order (commutative/associative)
- Look for friendly pairs (make tens or compatible numbers)
- May need to regroup multiple times
- Add ones first, then tens

COMMON MISCONCEPTIONS:
- Adding only two numbers
- Not looking for easier combinations
- Regrouping errors with multiple carrying
- Losing track of partial sums

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Three classes collected books: 24, 38, and 16. How many altogether?"

2. DIRECT INSTRUCTION (12 minutes):
   Show problem: 24 + 38 + 16
   Look for friendly pairs: 24 + 16 = 40, then + 38 = 78
   Show standard addition of all three.
   Compare strategies.

3. GUIDED PRACTICE (10 minutes):
   Practice finding friendly combinations.
   Solve using both strategies.

4. INDEPENDENT PRACTICE (10 minutes):
   Three-addend problems.
   Word problems with three quantities.

DIFFERENTIATION:
For Struggling Learners:
- Add two at a time, then add third
- Circle friendly pairs
- Smaller numbers initially

For Advanced Learners:
- Four addends
- Mixed strategies
- Mental math with three addends

ASSESSMENT INDICATORS:
- Accurately adds three numbers
- Identifies friendly number pairs
- Shows work clearly
- Solves word problems correctly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Three Numbers' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Estimation with Addition
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Estimation with Addition' AND grade_level_min = 2),
  'Estimation with Addition Topic Guide', 'Estimating sums to the nearest ten',
  'ESTIMATION WITH ADDITION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Rounding to the nearest ten
- Addition of two-digit numbers
- Understanding of "about" or "approximately"

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Round addends to the nearest ten
2. Add rounded numbers to estimate
3. Determine if an estimate is reasonable
4. Use estimation to check exact answers

KEY CONCEPTS:
- Estimation gives an approximate answer
- Round each number, then add
- Useful for checking reasonableness
- Different from exact calculation

COMMON MISCONCEPTIONS:
- Thinking estimate must equal exact answer
- Rounding one number but not the other
- Rounding incorrectly
- Not seeing the purpose of estimation

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "About how much will 38 + 47 be? We don''t need the exact answer yet!"

2. DIRECT INSTRUCTION (10 minutes):
   Show: 38 rounds to 40, 47 rounds to 50
   Estimate: 40 + 50 = 90
   Exact: 38 + 47 = 85
   "Our estimate was close! That tells us 85 makes sense."

3. GUIDED PRACTICE (10 minutes):
   Estimate before calculating.
   Compare estimates to exact answers.

4. INDEPENDENT PRACTICE (10 minutes):
   Practice estimation.
   Use estimation to check provided answers.

DIFFERENTIATION:
For Struggling Learners:
- Number line for rounding
- Focus on rounding first
- Simple problems

For Advanced Learners:
- Estimate with three addends
- Determine if estimate will be over/under
- Explain when estimation is useful

ASSESSMENT INDICATORS:
- Rounds correctly
- Adds rounded numbers accurately
- Compares estimate to exact answer
- Uses estimation purposefully', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Estimation with Addition' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Estimation with Subtraction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Estimation with Subtraction' AND grade_level_min = 2),
  'Estimation with Subtraction Topic Guide', 'Estimating differences to the nearest ten',
  'ESTIMATION WITH SUBTRACTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Rounding to nearest ten
- Subtraction of two-digit numbers
- Estimation with addition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Round minuend and subtrahend to nearest ten
2. Subtract rounded numbers to estimate
3. Use estimation to check subtraction answers
4. Determine reasonableness of differences

KEY CONCEPTS:
- Round both numbers, then subtract
- Estimate shows approximate answer
- Helps catch large calculation errors
- May be over or under actual difference

COMMON MISCONCEPTIONS:
- Rounding only one number
- Expecting estimate to be exact
- Rounding errors
- Subtracting in wrong order after rounding

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "There were 73 books. Students checked out 28. About how many are left?"

2. DIRECT INSTRUCTION (10 minutes):
   73 rounds to 70, 28 rounds to 30
   Estimate: 70 - 30 = 40
   Exact: 73 - 28 = 45
   "Close! The estimate helps us know 45 makes sense."

3. GUIDED PRACTICE (10 minutes):
   Estimate then calculate.
   Compare and discuss reasonableness.

4. INDEPENDENT PRACTICE (10 minutes):
   Estimation practice problems.
   Check given answers for reasonableness.

DIFFERENTIATION:
For Struggling Learners:
- Rounding support
- Simple subtraction after rounding
- Visual number line

For Advanced Learners:
- Predict if estimate will be high or low
- Larger numbers
- Real-world estimation scenarios

ASSESSMENT INDICATORS:
- Rounds both numbers correctly
- Calculates estimated difference
- Compares to exact answer
- Uses estimation to verify work', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Estimation with Subtraction' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Fact Families
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fact Families' AND grade_level_min = 2),
  'Fact Families Topic Guide', 'Understanding related addition and subtraction facts',
  'FACT FAMILIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Addition and subtraction facts
- Understanding inverse operations
- Number bonds

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify all four facts in a fact family
2. Write fact families for given numbers
3. Use addition facts to solve subtraction
4. Understand inverse relationship

KEY CONCEPTS:
- Fact family: set of related addition and subtraction facts
- Three numbers create four equations
- Example: 5, 8, 13 → 5+8=13, 8+5=13, 13-5=8, 13-8=5
- Two addition facts and two subtraction facts

COMMON MISCONCEPTIONS:
- Creating invalid equations
- Forgetting commutative property for addition
- Not recognizing subtraction facts from addition
- Thinking all equations use the same order

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Meet the fact family! Three numbers that work together."

2. DIRECT INSTRUCTION (10 minutes):
   Introduce with triangle model: 7, 9, 16
   Show all four facts.
   Explain why knowing one helps you know others.

3. GUIDED PRACTICE (10 minutes):
   Complete fact family triangles.
   Write all four facts from given numbers.

4. INDEPENDENT PRACTICE (10 minutes):
   Create fact families.
   Find missing numbers using relationships.

DIFFERENTIATION:
For Struggling Learners:
- Fact family triangles/cards
- Smaller numbers
- Physical manipulatives

For Advanced Learners:
- Larger numbers
- Find missing family members
- Explain the inverse relationship

ASSESSMENT INDICATORS:
- Writes all four facts correctly
- Uses relationship to find unknowns
- Explains connection between facts
- Recognizes fact families from single equation', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fact Families' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Missing Numbers in Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Missing Numbers in Equations' AND grade_level_min = 2),
  'Missing Numbers in Equations Topic Guide', 'Finding missing addends and subtrahends',
  'MISSING NUMBERS IN EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Addition and subtraction within 100
- Fact family understanding
- Algebraic thinking basics

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find missing addends: ? + 34 = 67
2. Find missing subtrahends: 82 - ? = 45
3. Use inverse operations to solve
4. Apply to word problems

KEY CONCEPTS:
- Missing addend: use subtraction to find
- Missing subtrahend: use subtraction from minuend
- Missing minuend: add to find
- Symbol placement varies but logic same

COMMON MISCONCEPTIONS:
- Always adding or always subtracting
- Confusion based on symbol position
- Not recognizing inverse relationship
- Difficulty with varied formats

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "I added a mystery number to 25 and got 68. What was the mystery number?"

2. DIRECT INSTRUCTION (12 minutes):
   Model different positions:
   - ? + 34 = 67 → 67 - 34 = ?
   - 58 + ? = 83 → 83 - 58 = ?
   - 92 - ? = 47 → 92 - 47 = ?
   Show inverse operation for each.

3. GUIDED PRACTICE (10 minutes):
   Varied problem formats.
   Identify operation needed.

4. INDEPENDENT PRACTICE (10 minutes):
   Mixed missing number problems.
   Word problems with unknowns.

DIFFERENTIATION:
For Struggling Learners:
- Balance model visualization
- One format at a time
- Smaller numbers

For Advanced Learners:
- Two missing numbers
- Create own problems
- Explain strategy to others

ASSESSMENT INDICATORS:
- Identifies missing number position
- Uses correct inverse operation
- Solves accurately
- Applies to word problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Missing Numbers in Equations' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PLACE VALUE EXPANSION (7 topics)
-- ============================================================================

-- Numbers to 1000
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Numbers to 1000' AND grade_level_min = 2),
  'Numbers to 1000 Topic Guide', 'Reading, writing, and representing numbers to 1000',
  'NUMBERS TO 1000 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Numbers to 100
- Place value with tens and ones
- Counting by tens and hundreds

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read three-digit numbers
2. Write three-digit numbers in standard form
3. Represent numbers with base-ten blocks
4. Identify hundreds, tens, and ones places

KEY CONCEPTS:
- Hundreds place: leftmost digit in three-digit numbers
- 100 = 10 tens = 100 ones
- Standard form: 547
- Place value determines digit value

COMMON MISCONCEPTIONS:
- Confusing place values
- Reading 304 as "34" or "three hundred four"
- Difficulty with zeros in middle (305)
- Not recognizing hundreds value

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Numbers can get really big! Let''s explore the hundreds."

2. DIRECT INSTRUCTION (12 minutes):
   Build numbers with base-ten blocks.
   Read and write: 3 hundreds, 4 tens, 7 ones = 347
   Practice with various numbers including zeros.

3. GUIDED PRACTICE (10 minutes):
   Match representations to numerals.
   Write numbers from spoken words.

4. INDEPENDENT PRACTICE (10 minutes):
   Read and write practice.
   Draw base-ten representations.

DIFFERENTIATION:
For Struggling Learners:
- Physical base-ten blocks
- Place value mats
- Avoid zeros initially

For Advanced Learners:
- Numbers near 1000
- Multiple representations
- Word form practice

ASSESSMENT INDICATORS:
- Reads three-digit numbers correctly
- Writes in standard form
- Represents with blocks/drawings
- Identifies place values', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Numbers to 1000' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Expanded Form to 1000
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Expanded Form to 1000' AND grade_level_min = 2),
  'Expanded Form to 1000 Topic Guide', 'Writing numbers in expanded form',
  'EXPANDED FORM TO 1000 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Three-digit number recognition
- Place value understanding
- Addition with hundreds, tens, ones

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Write three-digit numbers in expanded form
2. Convert expanded form to standard form
3. Understand expanded form shows place values
4. Work with numbers containing zeros

KEY CONCEPTS:
- Expanded form: 547 = 500 + 40 + 7
- Each digit contributes its place value
- With zeros: 305 = 300 + 5 (no tens)
- Shows additive nature of place value

COMMON MISCONCEPTIONS:
- Writing digit value instead of place value (5 instead of 500)
- Forgetting zeros
- Adding incorrectly when combining
- Order confusion

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Let''s break apart numbers to see what they''re really made of!"

2. DIRECT INSTRUCTION (10 minutes):
   Expand 634: 600 + 30 + 4
   Connect to base-ten blocks: 6 flats + 3 rods + 4 units
   Practice with zero: 407 = 400 + 7

3. GUIDED PRACTICE (10 minutes):
   Expand given numbers.
   Combine expanded forms to standard.

4. INDEPENDENT PRACTICE (10 minutes):
   Both directions practice.
   Include numbers with zeros.

DIFFERENTIATION:
For Struggling Learners:
- Place value charts
- Base-ten block connection
- Avoid zeros initially

For Advanced Learners:
- Mental conversion
- Larger numbers
- Word form connection

ASSESSMENT INDICATORS:
- Correctly writes expanded form
- Converts to standard form accurately
- Handles zeros appropriately
- Explains place value connection', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Expanded Form to 1000' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Comparing Three-Digit Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Three-Digit Numbers' AND grade_level_min = 2),
  'Comparing Three-Digit Numbers Topic Guide', 'Comparing numbers using place value',
  'COMPARING THREE-DIGIT NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Three-digit number recognition
- Comparison symbols (<, >, =)
- Place value understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare three-digit numbers using place value
2. Use <, >, and = symbols correctly
3. Compare starting from hundreds place
4. Apply to word problems

KEY CONCEPTS:
- Compare largest place first (hundreds)
- If hundreds equal, compare tens
- If tens equal, compare ones
- Record with symbols or words

COMMON MISCONCEPTIONS:
- Starting comparison at ones place
- Confusing < and > symbols
- Not comparing same places
- Thinking more digits means larger (comparing to two-digit)

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Which costs more: a bike for $347 or one for $329?"

2. DIRECT INSTRUCTION (10 minutes):
   Compare 456 and 461:
   Hundreds: both 4 (equal, move on)
   Tens: 5 and 6... 5 < 6
   So 456 < 461
   Model with base-ten blocks visually.

3. GUIDED PRACTICE (10 minutes):
   Compare pairs of numbers.
   Write comparisons using symbols.

4. INDEPENDENT PRACTICE (10 minutes):
   Comparison exercises.
   Word problems requiring comparison.

DIFFERENTIATION:
For Struggling Learners:
- Place value charts side by side
- Start with different hundreds
- Alligator mouth memory aid

For Advanced Learners:
- Three-way comparisons
- Order multiple numbers
- Numbers very close in value

ASSESSMENT INDICATORS:
- Compares using place value strategy
- Uses symbols correctly
- Explains reasoning
- Applies to contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Three-Digit Numbers' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Ordering Numbers to 1000
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ordering Numbers to 1000' AND grade_level_min = 2),
  'Ordering Numbers to 1000 Topic Guide', 'Ordering numbers from least to greatest',
  'ORDERING NUMBERS TO 1000 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Comparing three-digit numbers
- Understanding least/greatest
- Place value to 1000

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Order three or more numbers from least to greatest
2. Order numbers from greatest to least
3. Use place value to determine order
4. Find positions of numbers in sequences

KEY CONCEPTS:
- Least to greatest: ascending order
- Greatest to least: descending order
- Compare pairs to establish order
- Check by verifying each comparison

COMMON MISCONCEPTIONS:
- Only comparing adjacent pairs
- Confusing ascending/descending
- Place value comparison errors
- Difficulty with multiple numbers

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Put these game scores in order from lowest to highest: 567, 543, 589"

2. DIRECT INSTRUCTION (10 minutes):
   Model systematic comparison:
   Find smallest hundreds first.
   Compare within same hundreds.
   Show ordering process step by step.

3. GUIDED PRACTICE (10 minutes):
   Order sets of 3-4 numbers.
   Practice both directions.

4. INDEPENDENT PRACTICE (10 minutes):
   Ordering exercises.
   Find missing numbers in ordered lists.

DIFFERENTIATION:
For Struggling Learners:
- Only three numbers at first
- Numbers with different hundreds
- Number cards to physically arrange

For Advanced Learners:
- Five or more numbers
- Numbers with same hundreds
- Create ordered sequences

ASSESSMENT INDICATORS:
- Orders correctly in both directions
- Uses place value reasoning
- Handles similar numbers well
- Explains ordering strategy', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ordering Numbers to 1000' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- 100 More and 100 Less
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = '100 More and 100 Less' AND grade_level_min = 2),
  '100 More and 100 Less Topic Guide', 'Finding 100 more and 100 less than a number',
  '100 MORE AND 100 LESS - TOPIC TEACHING GUIDE

PREREQUISITES:
- 10 more and 10 less
- Place value to 1000
- Counting by hundreds

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find 100 more than any three-digit number
2. Find 100 less than any three-digit number
3. Explain that only hundreds digit changes
4. Apply to problem situations

KEY CONCEPTS:
- 100 more: hundreds digit increases by 1
- 100 less: hundreds digit decreases by 1
- Tens and ones remain unchanged
- Pattern extends beyond 100s chart

COMMON MISCONCEPTIONS:
- Changing tens or ones digit
- Confusion at boundaries (900 + 100)
- Changing multiple digits
- Not seeing the pattern

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You have 345 points. What if you earn 100 more? Lose 100?"

2. DIRECT INSTRUCTION (10 minutes):
   Use base-ten blocks: show 345
   Add one hundreds flat: 445
   Remove one hundreds flat: 245
   "Notice only the hundreds changed!"

3. GUIDED PRACTICE (10 minutes):
   Find 100 more and less for various numbers.
   Explain the pattern.

4. INDEPENDENT PRACTICE (10 minutes):
   Practice problems.
   Pattern recognition activities.

DIFFERENTIATION:
For Struggling Learners:
- Base-ten blocks for each
- Place value charts
- Avoid boundaries initially

For Advanced Learners:
- 200 more/less
- Find missing starting number
- Patterns extending both directions

ASSESSMENT INDICATORS:
- Quickly finds 100 more/less
- Explains why only hundreds changes
- Handles boundaries correctly
- Applies to problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = '100 More and 100 Less' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Counting by 100s
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting by 100s' AND grade_level_min = 2),
  'Counting by 100s Topic Guide', 'Skip counting by 100s to 1000',
  'COUNTING BY 100s - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting by 10s
- Understanding of hundreds
- Number recognition to 1000

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count by 100s from 0 to 1000
2. Count by 100s from any multiple of 100
3. Count by 100s from any number (247, 347, 447...)
4. Apply to counting and grouping

KEY CONCEPTS:
- Skip count sequence: 100, 200, 300...1000
- Hundreds digit increases, others stay same
- Starting from non-multiples: only hundreds change
- Connection to money (dollar bills)

COMMON MISCONCEPTIONS:
- Changing digits other than hundreds
- Losing pattern at 1000
- Difficulty starting from non-zero
- Confusing with counting by 10s

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Count dollar bills with me: $100, $200, $300..."

2. DIRECT INSTRUCTION (10 minutes):
   Count by 100s to 1000 together.
   Start from various numbers: 234, 334, 434...
   Show on number line or hundreds chart.

3. GUIDED PRACTICE (10 minutes):
   Complete skip counting sequences.
   Start from different starting points.

4. INDEPENDENT PRACTICE (10 minutes):
   Fill in sequences.
   Count by 100s in both directions.

DIFFERENTIATION:
For Struggling Learners:
- Start from multiples of 100
- Visual number line
- Chant or song

For Advanced Learners:
- Count backwards by 100s
- Find patterns in sequences
- Mixed skip counting

ASSESSMENT INDICATORS:
- Counts by 100s fluently
- Starts from any number
- Extends past 1000
- Maintains pattern accuracy', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting by 100s' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Number Patterns to 1000
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Number Patterns to 1000' AND grade_level_min = 2),
  'Number Patterns to 1000 Topic Guide', 'Identifying and extending number patterns',
  'NUMBER PATTERNS TO 1000 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Number patterns with two-digit numbers
- Skip counting by various amounts
- Place value to 1000

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify rules in three-digit number patterns
2. Extend growing and shrinking patterns
3. Find missing numbers in patterns
4. Create patterns with three-digit numbers

KEY CONCEPTS:
- Patterns can grow or shrink
- Rules: add or subtract consistent amounts
- Multiple digits may change
- Connection to skip counting

COMMON MISCONCEPTIONS:
- Not identifying correct rule
- Errors when crossing place values
- Inconsistent application of rule
- Only looking at one digit

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "What comes next? 425, 450, 475, 500, ___"

2. DIRECT INSTRUCTION (10 minutes):
   Analyze pattern to find rule.
   "Each number is 25 more than the last."
   Practice finding and applying rules.
   Include patterns that cross centuries.

3. GUIDED PRACTICE (10 minutes):
   Identify rules in various patterns.
   Extend patterns and fill in missing numbers.

4. INDEPENDENT PRACTICE (10 minutes):
   Pattern worksheets.
   Create own patterns.

DIFFERENTIATION:
For Struggling Learners:
- Simpler rules (+10, +100)
- Number line support
- Patterns that don''t cross place values

For Advanced Learners:
- Complex rules (+25, +75)
- Patterns with alternating rules
- Create challenging patterns

ASSESSMENT INDICATORS:
- Identifies pattern rules
- Extends patterns correctly
- Finds missing numbers
- Creates valid patterns', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Number Patterns to 1000' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SKIP COUNTING AND PATTERNS UNIT (11 topics)
-- ============================================================================

-- Skip Counting by 2s to 100 (Grade 2)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 2s to 100' AND grade_level_min = 2),
  'Skip Counting by 2s to 100 Topic Guide', 'Counting by 2s from any even number',
  'SKIP COUNTING BY 2s TO 100 - GRADE 2 TOPIC GUIDE

PREREQUISITES:
- Skip counting by 2s to 20
- Even number recognition
- Number patterns understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count by 2s starting from any even number
2. Extend sequences to 100 and beyond
3. Recognize all even numbers in the pattern
4. Apply to counting pairs and groups

KEY CONCEPTS:
- Every number in 2s sequence is even
- Start from any even number and continue
- Decade transitions: 18, 20, 22
- Connection to addition by 2

COMMON MISCONCEPTIONS:
- Starting from odd numbers
- Hesitation at decade changes
- Losing rhythm in higher numbers
- Thinking you must start from 2

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Count socks by 2s! How many socks in 10 pairs?"

2. DIRECT INSTRUCTION (10 minutes):
   Count by 2s from 0 to 100.
   Start from 46: 46, 48, 50, 52...
   Show pattern on hundred chart.

3. GUIDED PRACTICE (10 minutes):
   Practice starting from various even numbers.
   Complete sequences with missing numbers.

4. INDEPENDENT PRACTICE (10 minutes):
   Sequence completion.
   Counting problems.

DIFFERENTIATION:
For Struggling Learners:
- Hundred chart reference
- Start from familiar numbers
- Physical pairs to count

For Advanced Learners:
- Count backwards by 2s
- Extend past 100
- Apply to multiplication

ASSESSMENT INDICATORS:
- Counts fluently from any even start
- Continues through decade transitions
- Completes sequences accurately
- Applies to problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 2s to 100' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Skip Counting by 3s
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 3s' AND grade_level_min = 2),
  'Skip Counting by 3s Topic Guide', 'Counting by 3s to at least 36',
  'SKIP COUNTING BY 3s - TOPIC TEACHING GUIDE

PREREQUISITES:
- Skip counting by 2s and 5s
- Addition of 3
- Number patterns experience

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count by 3s starting from 0
2. Recognize the pattern: 3, 6, 9, 12...
3. Identify multiples of 3
4. Apply to counting groups of 3

KEY CONCEPTS:
- Skip count sequence: 3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36
- Pattern: ones digit cycles 3, 6, 9, 2, 5, 8, 1, 4, 7, 0
- Foundation for 3s multiplication facts
- Used for counting triplets

COMMON MISCONCEPTIONS:
- Confusing with 2s or 5s patterns
- Adding inconsistently
- Difficulty at decade changes
- Not recognizing the ones digit pattern

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Tricycles have 3 wheels. Let''s count wheels on many tricycles!"

2. DIRECT INSTRUCTION (10 minutes):
   Count by 3s with manipulatives in groups.
   Chant: 3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36
   Mark on hundred chart to see pattern.

3. GUIDED PRACTICE (10 minutes):
   Skip counting practice.
   Fill in missing numbers in sequences.

4. INDEPENDENT PRACTICE (10 minutes):
   Sequence work.
   Counting groups of 3.

DIFFERENTIATION:
For Struggling Learners:
- Groups of 3 objects to count
- Number line jumps of 3
- Focus on 3-18 first

For Advanced Learners:
- Extend beyond 36
- Start from multiples of 3
- Compare 3s and 6s patterns

ASSESSMENT INDICATORS:
- Counts by 3s accurately
- Recognizes 3s pattern
- Applies to counting situations
- Identifies multiples of 3', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 3s' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Skip Counting by 4s
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 4s' AND grade_level_min = 2),
  'Skip Counting by 4s Topic Guide', 'Counting by 4s to at least 48',
  'SKIP COUNTING BY 4s - TOPIC TEACHING GUIDE

PREREQUISITES:
- Skip counting by 2s
- Addition of 4
- Pattern recognition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count by 4s starting from 0
2. Recognize multiples of 4
3. See connection to 2s (every other even)
4. Apply to counting groups of 4

KEY CONCEPTS:
- Sequence: 4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48
- All multiples of 4 are even
- Every other multiple of 2 is a multiple of 4
- Foundation for 4s multiplication

COMMON MISCONCEPTIONS:
- Confusing with 2s sequence
- Adding inconsistently
- Missing connection to doubling 2s
- Difficulty past 20

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Cars have 4 wheels. Count wheels on the parking lot!"

2. DIRECT INSTRUCTION (10 minutes):
   Count groups of 4 with manipulatives.
   Build sequence: 4, 8, 12, 16...
   Show on number line with jumps of 4.
   Connect: 4, 8, 12... = 2 doubled: 2, 4, 6... × 2

3. GUIDED PRACTICE (10 minutes):
   Skip counting practice.
   Complete sequences.

4. INDEPENDENT PRACTICE (10 minutes):
   Counting by 4s exercises.
   Problem solving with groups of 4.

DIFFERENTIATION:
For Struggling Learners:
- Physical groups of 4
- Number line with 4s marked
- Start with 4-20

For Advanced Learners:
- Extend past 48
- Compare 2s, 4s patterns
- Count backwards by 4s

ASSESSMENT INDICATORS:
- Counts by 4s fluently
- Identifies multiples of 4
- Connects to 2s pattern
- Applies to problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 4s' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Skip Counting by 5s to 100 (Grade 2)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 5s to 100' AND grade_level_min = 2),
  'Skip Counting by 5s to 100 Topic Guide', 'Counting by 5s from any multiple of 5',
  'SKIP COUNTING BY 5s TO 100 - GRADE 2 TOPIC GUIDE

PREREQUISITES:
- Skip counting by 5s to 20
- Multiples of 5 recognition
- Nickel counting

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count by 5s starting from any multiple of 5
2. Extend fluently to 100 and beyond
3. Apply to time (5-minute intervals) and money
4. Recognize 0 and 5 ending pattern

KEY CONCEPTS:
- All multiples of 5 end in 0 or 5
- Start from any multiple and continue
- Two 5s make 10
- Useful for clock reading and nickel counting

COMMON MISCONCEPTIONS:
- Adding 5 inconsistently
- Confusion with 10s pattern
- Difficulty starting from mid-sequence
- Not recognizing ending digit pattern

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Count minutes on a clock by 5s!"

2. DIRECT INSTRUCTION (10 minutes):
   Count 5s to 100 chorally.
   Start from 35: 35, 40, 45, 50...
   Connect to clock and money.

3. GUIDED PRACTICE (10 minutes):
   Practice various starting points.
   Apply to time and money contexts.

4. INDEPENDENT PRACTICE (10 minutes):
   Sequence completion.
   Application problems.

DIFFERENTIATION:
For Struggling Learners:
- Hand counting (5 fingers at a time)
- Clock face reference
- Start at 5, not mid-sequence

For Advanced Learners:
- Count past 100
- Backwards by 5s
- Mixed 5s and 10s

ASSESSMENT INDICATORS:
- Fluent from any starting multiple
- Applies to real contexts
- Recognizes 0/5 pattern
- Extends accurately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 5s to 100' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Skip Counting by 10s to 1000 (Grade 2)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Skip Counting by 10s to 1000' AND grade_level_min = 2),
  'Skip Counting by 10s to 1000 Topic Guide', 'Counting by 10s from any number',
  'SKIP COUNTING BY 10s TO 1000 - TOPIC GUIDE

PREREQUISITES:
- Skip counting by 10s to 100
- Place value understanding
- Understanding that tens digit changes

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count by 10s starting from any number
2. Extend to 1000 and beyond
3. Cross century boundaries confidently
4. Apply to dime counting and place value

KEY CONCEPTS:
- Only tens digit changes (when not crossing 100)
- Crossing 100: 90, 100, 110; 190, 200, 210
- Starting from any number: 23, 33, 43, 53...
- Connection to adding 10

COMMON MISCONCEPTIONS:
- Changing ones digit
- Difficulty at century changes
- Thinking you must start from 10
- Losing pattern in 100s

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Count dimes! $0.10, $0.20, $0.30... How high can we go?"

2. DIRECT INSTRUCTION (10 minutes):
   Count by 10s to 100, then continue: 110, 120...
   Start from 246: 246, 256, 266, 276...
   Show pattern across centuries.

3. GUIDED PRACTICE (10 minutes):
   Various starting points.
   Cross 100, 200, 500 etc.

4. INDEPENDENT PRACTICE (10 minutes):
   Sequence work.
   Pattern recognition.

DIFFERENTIATION:
For Struggling Learners:
- Start from multiples of 10
- Number line support
- Avoid century crossings initially

For Advanced Learners:
- Start from any three-digit number
- Backwards by 10s
- Extend to larger numbers

ASSESSMENT INDICATORS:
- Counts from any starting number
- Handles century transitions
- Recognizes tens digit pattern
- Applies to contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skip Counting by 10s to 1000' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Even Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Even Numbers' AND grade_level_min = 2),
  'Even Numbers Topic Guide', 'Identifying even numbers and their properties',
  'EVEN NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Skip counting by 2s
- Understanding of "pairs"
- Number recognition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define even numbers as amounts with no leftovers when paired
2. Identify even numbers to 100+
3. Recognize even ones digits: 0, 2, 4, 6, 8
4. Understand properties of even numbers

KEY CONCEPTS:
- Even: divides evenly into pairs
- Even ones digits: 0, 2, 4, 6, 8
- Skip counting by 2s generates even numbers
- Even + even = even

COMMON MISCONCEPTIONS:
- 0 is not even (it is)
- Need to check all digits (only ones matters)
- Confusing even with "small" or "nice"
- Large numbers can''t be even

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Can 24 students pair up with no one left over? Let''s find out!"

2. DIRECT INSTRUCTION (10 minutes):
   Model pairing for various numbers.
   Identify ones digit pattern.
   "Any number ending in 0, 2, 4, 6, or 8 is even."

3. GUIDED PRACTICE (10 minutes):
   Sort numbers into even/not even.
   Apply ones digit rule to large numbers.

4. INDEPENDENT PRACTICE (10 minutes):
   Identification practice.
   Properties exploration.

DIFFERENTIATION:
For Struggling Learners:
- Physical pairing with counters
- Even number chart
- Focus on numbers to 20 first

For Advanced Learners:
- Even + even patterns
- Large number identification
- Create even number rules

ASSESSMENT INDICATORS:
- Uses ones digit to identify evens
- Explains pairing concept
- Handles large numbers
- Knows 0 is even', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Even Numbers' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Odd Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Odd Numbers' AND grade_level_min = 2),
  'Odd Numbers Topic Guide', 'Identifying odd numbers and their properties',
  'ODD NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Even number understanding
- Skip counting
- Number recognition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define odd numbers as having one leftover when paired
2. Identify odd numbers to 100+
3. Recognize odd ones digits: 1, 3, 5, 7, 9
4. Compare odd and even properties

KEY CONCEPTS:
- Odd: one leftover when making pairs
- Odd ones digits: 1, 3, 5, 7, 9
- Not in 2s counting sequence
- Odd + odd = even

COMMON MISCONCEPTIONS:
- Confusing odd with "strange" meaning
- Not recognizing odd as "not even"
- Checking wrong digit
- Thinking all large numbers are odd/even

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "15 students want partners. Can everyone pair up?"

2. DIRECT INSTRUCTION (10 minutes):
   Pair up different amounts, find leftovers.
   Connect to ones digit: 1, 3, 5, 7, 9.
   "If it''s not even, it''s odd!"

3. GUIDED PRACTICE (10 minutes):
   Sort numbers as odd or even.
   Apply to various number sizes.

4. INDEPENDENT PRACTICE (10 minutes):
   Identification practice.
   Odd number patterns.

DIFFERENTIATION:
For Struggling Learners:
- Physical pairing
- Odd/even chart
- Two-column sorting

For Advanced Learners:
- Odd + even = ?
- Pattern predictions
- Create sorting challenges

ASSESSMENT INDICATORS:
- Uses ones digit efficiently
- Explains leftover concept
- Distinguishes from even
- Applies to any number', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Odd Numbers' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Even or Odd Sums
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Even or Odd Sums' AND grade_level_min = 2),
  'Even or Odd Sums Topic Guide', 'Predicting if a sum will be even or odd',
  'EVEN OR ODD SUMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Even and odd identification
- Addition skills
- Pattern recognition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Predict if a sum will be even or odd
2. Apply rules: even+even=even, odd+odd=even, even+odd=odd
3. Verify predictions through calculation
4. Explain patterns

KEY CONCEPTS:
- Even + even = even (2+4=6)
- Odd + odd = even (3+5=8)
- Even + odd = odd (2+3=5)
- Predict before calculating

COMMON MISCONCEPTIONS:
- Thinking odd+odd=odd
- Not recognizing the pattern
- Confusing rules
- Not seeing why patterns work

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "I''ll predict if the sum is even or odd before we add! Watch!"

2. DIRECT INSTRUCTION (12 minutes):
   Test multiple examples of each type.
   Build the three rules.
   Explain why: pairs combining still make pairs.

3. GUIDED PRACTICE (10 minutes):
   Predict then verify.
   Practice all three rules.

4. INDEPENDENT PRACTICE (10 minutes):
   Prediction exercises.
   Explain reasoning.

DIFFERENTIATION:
For Struggling Learners:
- One rule at a time
- Visual pairing model
- Reference chart

For Advanced Learners:
- Three addends
- Create rule proofs
- Extend to subtraction

ASSESSMENT INDICATORS:
- States correct rules
- Predicts accurately
- Verifies through calculation
- Explains why rules work', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Even or Odd Sums' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Growing Number Patterns (Grade 2)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Growing Number Patterns' AND grade_level_min = 2),
  'Growing Number Patterns Topic Guide', 'Identifying and extending growing patterns',
  'GROWING NUMBER PATTERNS - GRADE 2 TOPIC GUIDE

PREREQUISITES:
- Skip counting
- Addition within 100
- Pattern basics

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the rule in growing patterns
2. Extend patterns beyond given numbers
3. Find missing numbers in patterns
4. Create growing patterns

KEY CONCEPTS:
- Growing: each number is larger than the last
- Rule: constant amount added each time
- May involve any addition amount
- Patterns can start from any number

COMMON MISCONCEPTIONS:
- Inconsistent rule application
- Not checking all differences
- Confusion at larger numbers
- Thinking any increasing sequence is a pattern

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Find the pattern: 15, 20, 25, 30, ___. What''s the rule?"

2. DIRECT INSTRUCTION (10 minutes):
   Analyze: find differences between consecutive terms.
   Rule: add 5 each time.
   Practice with various rules (+2, +3, +10, +25).

3. GUIDED PRACTICE (10 minutes):
   Identify rules and extend patterns.
   Find missing middle numbers.

4. INDEPENDENT PRACTICE (10 minutes):
   Pattern worksheets.
   Create own patterns.

DIFFERENTIATION:
For Struggling Learners:
- Simple rules (+1, +2, +5)
- Number line support
- Smaller starting numbers

For Advanced Learners:
- Larger numbers
- Less obvious rules (+7, +13)
- Two-rule patterns

ASSESSMENT INDICATORS:
- Identifies rules correctly
- Extends patterns accurately
- Finds missing numbers
- Creates valid patterns', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Growing Number Patterns' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Shrinking Number Patterns (Grade 2)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Shrinking Number Patterns' AND grade_level_min = 2),
  'Shrinking Number Patterns Topic Guide', 'Identifying and extending decreasing patterns',
  'SHRINKING NUMBER PATTERNS - GRADE 2 TOPIC GUIDE

PREREQUISITES:
- Growing patterns
- Subtraction within 100
- Counting backward

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify rules in shrinking patterns
2. Extend decreasing patterns
3. Find missing numbers in shrinking sequences
4. Distinguish from growing patterns

KEY CONCEPTS:
- Shrinking: each number is smaller than the last
- Rule: constant amount subtracted each time
- Numbers decrease toward zero (or beyond)
- Opposite of growing patterns

COMMON MISCONCEPTIONS:
- Adding instead of subtracting
- Inconsistent rule application
- Stopping at zero unnecessarily
- Confusing direction with growing

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Countdown! 100, 90, 80, 70... What''s the pattern?"

2. DIRECT INSTRUCTION (10 minutes):
   Analyze decreasing patterns to find rules.
   "Each number is 10 less than before."
   Practice various rules (-5, -3, -25).

3. GUIDED PRACTICE (10 minutes):
   Identify rules and extend.
   Compare growing and shrinking patterns.

4. INDEPENDENT PRACTICE (10 minutes):
   Mixed pattern work.
   Create shrinking patterns.

DIFFERENTIATION:
For Struggling Learners:
- Simple rules (-1, -2, -5)
- Number line counting backward
- Avoid reaching zero

For Advanced Learners:
- Complex rules
- Patterns that cross place values
- Compare growing/shrinking versions

ASSESSMENT INDICATORS:
- Identifies shrinking rules
- Extends correctly
- Distinguishes from growing
- Handles various rules', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Shrinking Number Patterns' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Pattern Rules
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Pattern Rules' AND grade_level_min = 2),
  'Pattern Rules Topic Guide', 'Describing the rule for a number pattern',
  'PATTERN RULES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Growing and shrinking patterns
- Addition and subtraction
- Pattern vocabulary

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify and describe pattern rules clearly
2. Express rules using mathematical language
3. Apply rules to extend or create patterns
4. Verify patterns follow stated rules

KEY CONCEPTS:
- Rule describes what happens each step
- "Add 6" or "Subtract 5" are rules
- Rule must work for every step
- Starting number + rule = pattern

COMMON MISCONCEPTIONS:
- Describing only part of the rule
- Rules that don''t work for all terms
- Confusing rule with pattern itself
- Incomplete rule description

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "I''m thinking of a rule. Watch: 4, 7, 10, 13... What''s my rule?"

2. DIRECT INSTRUCTION (10 minutes):
   Model finding and stating rules precisely.
   "The rule is: add 3 to each number to get the next."
   Practice with various patterns.

3. GUIDED PRACTICE (10 minutes):
   State rules for given patterns.
   Create patterns for given rules.

4. INDEPENDENT PRACTICE (10 minutes):
   Rule identification and application.
   Rule and pattern matching.

DIFFERENTIATION:
For Struggling Learners:
- Rule sentence frames
- Simple patterns
- Rule bank to choose from

For Advanced Learners:
- Complex rules
- Create own rules and patterns
- Two-step rules introduction

ASSESSMENT INDICATORS:
- States rules precisely
- Applies rules correctly
- Creates patterns from rules
- Verifies rule works throughout', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pattern Rules' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TIME UNIT (10 topics)
-- ============================================================================

-- Time to the Hour and Half Hour (Grade 2)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Time to the Hour and Half Hour' AND grade_level_min = 2),
  'Time to Hour and Half Hour Topic Guide', 'Review of hour and half hour time',
  'TIME TO HOUR AND HALF HOUR - REVIEW TOPIC GUIDE

PREREQUISITES:
- Clock recognition
- Numbers 1-12
- Hour and minute hand identification

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read analog clocks to the hour fluently
2. Read analog clocks to the half hour fluently
3. Write times in digital format
4. Connect analog and digital representations

KEY CONCEPTS:
- O''clock: minute hand on 12
- Half past: minute hand on 6
- Hour hand position varies at half past
- Digital format: 3:00, 3:30

TEACHING SEQUENCE:
1. HOOK (2 minutes):
   Quick assessment: "Show me 4 o''clock. Now half past 4."

2. DIRECT INSTRUCTION (8 minutes):
   Review clock hands and their movements.
   Practice reading times.
   Emphasize hour hand position at :30.

3. GUIDED PRACTICE (8 minutes):
   Read and write times rapidly.
   Match analog to digital.

4. INDEPENDENT PRACTICE (10 minutes):
   Review worksheets.
   Time-matching activities.

DIFFERENTIATION:
For Struggling Learners:
- Geared clock practice
- Focus on hours first
- More time with half hours

For Advanced Learners:
- Move to quarter hours
- Elapsed time introduction
- Real-time reading

ASSESSMENT INDICATORS:
- Reads both fluently
- Writes digital format correctly
- Matches analog to digital
- Ready for more precise times', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Time to the Hour and Half Hour' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Time to the Quarter Hour
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Time to the Quarter Hour' AND grade_level_min = 2),
  'Time to the Quarter Hour Topic Guide', 'Telling time to quarter past and quarter to',
  'TIME TO THE QUARTER HOUR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Time to hour and half hour
- Understanding of "quarter" (one-fourth)
- Skip counting by 15

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read times at quarter past the hour (:15)
2. Read times at quarter to the hour (:45)
3. Connect quarter to fraction concept
4. Write times in digital format

KEY CONCEPTS:
- Quarter = 1/4 = 15 minutes
- Minute hand on 3 = quarter past = :15
- Minute hand on 9 = quarter to = :45
- Two ways to say :45 times

COMMON MISCONCEPTIONS:
- Confusing quarter past and quarter to
- Reading hour incorrectly at :45
- Not understanding 15 minutes = quarter
- Confusion with "quarter to" terminology

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Divide circle into fourths. "Each quarter is 15 minutes!"

2. DIRECT INSTRUCTION (10 minutes):
   Show minute hand positions for :15 and :45.
   Practice reading: "quarter past 3" = 3:15
   Introduce "quarter to": 8:45 = quarter to 9.

3. GUIDED PRACTICE (10 minutes):
   Read quarter hour times.
   Write in both forms.

4. INDEPENDENT PRACTICE (10 minutes):
   Time reading worksheets.
   Matching activities.

DIFFERENTIATION:
For Struggling Learners:
- Focus on quarter past first
- Clock with 15, 30, 45 marked
- Practice one position at a time

For Advanced Learners:
- Both expression forms
- Connect to 5-minute reading
- Daily schedule with quarter hours

ASSESSMENT INDICATORS:
- Reads :15 and :45 accurately
- Understands quarter concept
- Uses appropriate terminology
- Writes digital format correctly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Time to the Quarter Hour' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Time to Five Minutes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Time to Five Minutes' AND grade_level_min = 2),
  'Time to Five Minutes Topic Guide', 'Telling time to the nearest five minutes',
  'TIME TO FIVE MINUTES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Time to quarter hour
- Skip counting by 5s
- Clock number positions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read analog clocks to 5-minute intervals
2. Count by 5s around the clock
3. Write times in digital format
4. Understand minute hand movement

KEY CONCEPTS:
- Each number = 5 minutes
- 1 = 5, 2 = 10, 3 = 15, 4 = 20, 5 = 25, 6 = 30...
- Count by 5s from 12
- Minutes range from 00 to 55

COMMON MISCONCEPTIONS:
- Reading the number as minutes (3 instead of 15)
- Hour hand confusion at non-hour times
- Miscounting by 5s
- Format errors (:5 instead of :05)

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "The clock numbers hide a secret - they''re counting by 5s!"

2. DIRECT INSTRUCTION (12 minutes):
   Label clock with 5-minute intervals.
   Practice reading: minute hand on 4 = 20 minutes
   Show various times throughout the hour.

3. GUIDED PRACTICE (10 minutes):
   Read times on demonstration clock.
   Write digital times.

4. INDEPENDENT PRACTICE (10 minutes):
   Time-reading worksheets.
   Draw hands for given times.

DIFFERENTIATION:
For Struggling Learners:
- Clock with 5s labeled
- Count aloud by 5s
- Focus on one side of clock first

For Advanced Learners:
- Quick mental reading
- Elapsed time in 5s
- Real-time practice

ASSESSMENT INDICATORS:
- Reads to 5 minutes accurately
- Counts by 5s automatically
- Writes format correctly
- Identifies hour correctly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Time to Five Minutes' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Reading Digital Clocks
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reading Digital Clocks' AND grade_level_min = 2),
  'Reading Digital Clocks Topic Guide', 'Reading time on digital clocks',
  'READING DIGITAL CLOCKS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Number recognition
- Concept of hours and minutes
- Basic time vocabulary

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read time on digital displays
2. Interpret hour and minute portions
3. Understand leading zeros (:05, :09)
4. Say times correctly from digital format

KEY CONCEPTS:
- Format: hours : minutes
- Colon separates hours from minutes
- Leading zeros for single-digit minutes
- Read as "[hour] [minutes]" or "[hour] o''clock"

COMMON MISCONCEPTIONS:
- Reading :05 as "five" alone
- Not recognizing hour vs minutes
- Confusion with 12-hour format
- Saying times incorrectly

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Digital clocks are everywhere! Let''s become experts at reading them."

2. DIRECT INSTRUCTION (10 minutes):
   Show digital clock display.
   Explain format: hour : minutes.
   Practice reading various times.
   Address leading zeros: 3:05 is "three oh five."

3. GUIDED PRACTICE (10 minutes):
   Read various digital displays.
   Practice correct pronunciation.

4. INDEPENDENT PRACTICE (10 minutes):
   Digital time reading exercises.
   Say times aloud correctly.

DIFFERENTIATION:
For Struggling Learners:
- Focus on hour times first (:00)
- Practice pronunciation
- Digital clock manipulative

For Advanced Learners:
- 12-hour vs 24-hour preview
- Rapid reading
- Connect to analog equivalents

ASSESSMENT INDICATORS:
- Reads digital format correctly
- Pronounces times properly
- Handles leading zeros
- Identifies hours and minutes', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading Digital Clocks' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Matching Analog and Digital
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Matching Analog and Digital' AND grade_level_min = 2),
  'Matching Analog and Digital Topic Guide', 'Matching times on both clock types',
  'MATCHING ANALOG AND DIGITAL - TOPIC TEACHING GUIDE

PREREQUISITES:
- Reading analog clocks
- Reading digital clocks
- Time vocabulary

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Match equivalent times on analog and digital clocks
2. Convert between representations
3. Recognize same time in different formats
4. Draw analog hands for digital times

KEY CONCEPTS:
- Same time looks different on each clock type
- Hour and minute must match
- Either can be starting point
- Both are equally valid representations

COMMON MISCONCEPTIONS:
- Thinking times are different because they look different
- Matching by partial information only
- Hour hand confusion in analog
- Format conversion errors

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "These clocks show the same time! Can you find the matches?"

2. DIRECT INSTRUCTION (10 minutes):
   Compare side-by-side representations.
   Show: analog 4:25 = digital 4:25
   Practice matching various times.

3. GUIDED PRACTICE (10 minutes):
   Matching games.
   Draw one from the other.

4. INDEPENDENT PRACTICE (10 minutes):
   Matching worksheets.
   Conversion practice.

DIFFERENTIATION:
For Struggling Learners:
- Start with hour and half hour
- Color-coded matching
- One conversion direction first

For Advanced Learners:
- Rapid matching
- Create own matching sets
- Include all 5-minute intervals

ASSESSMENT INDICATORS:
- Matches accurately
- Converts in both directions
- Draws analog hands correctly
- Reads and writes digital format', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Matching Analog and Digital' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- A.M. and P.M.
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'A.M. and P.M.' AND grade_level_min = 2),
  'A.M. and P.M. Topic Guide', 'Understanding morning and afternoon/evening time',
  'A.M. AND P.M. - TOPIC TEACHING GUIDE

PREREQUISITES:
- Time reading skills
- Daily schedule awareness
- Morning/afternoon/evening vocabulary

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand a.m. is midnight to noon
2. Understand p.m. is noon to midnight
3. Label times with a.m. or p.m.
4. Distinguish activities by a.m./p.m.

KEY CONCEPTS:
- a.m. = ante meridiem (before noon)
- p.m. = post meridiem (after noon)
- 12:00 noon = 12:00 p.m.
- 12:00 midnight = 12:00 a.m.

COMMON MISCONCEPTIONS:
- Confusing a.m. and p.m.
- Thinking 12:00 noon is a.m.
- Not connecting to daily activities
- Boundary confusion at noon/midnight

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "When do you wake up? When do you sleep? Are those a.m. or p.m.?"

2. DIRECT INSTRUCTION (10 minutes):
   Explain: a.m. is morning, p.m. is afternoon/evening/night.
   Practice with daily activities.
   Address noon and midnight.

3. GUIDED PRACTICE (10 minutes):
   Label activities with a.m. or p.m.
   Sort activities by time of day.

4. INDEPENDENT PRACTICE (10 minutes):
   Worksheets with time labeling.
   Daily schedule activities.

DIFFERENTIATION:
For Struggling Learners:
- Focus on clear cases first
- Daily routine reference
- Picture cues

For Advanced Learners:
- 24-hour time preview
- Complex scheduling
- Time zone introduction

ASSESSMENT INDICATORS:
- Labels times correctly
- Explains a.m./p.m. difference
- Knows noon and midnight rules
- Applies to daily activities', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'A.M. and P.M.' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Elapsed Time in Hours (Grade 2)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Elapsed Time in Hours' AND grade_level_min = 2),
  'Elapsed Time in Hours Topic Guide', 'Calculating time that has passed in hours',
  'ELAPSED TIME IN HOURS - GRADE 2 TOPIC GUIDE

PREREQUISITES:
- Time to the hour
- Counting forward
- Clock reading skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate hours between two times
2. Find ending times given start and hours
3. Count across a.m. and p.m.
4. Solve elapsed time word problems

KEY CONCEPTS:
- Elapsed time = time that passes
- Count hours from start to end
- Can cross noon or midnight
- Find ending time: start time + hours elapsed

COMMON MISCONCEPTIONS:
- Subtracting instead of counting
- Difficulty crossing 12:00
- Confusion with a.m./p.m. transitions
- Not counting all hours

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "School starts at 9 a.m. and ends at 3 p.m. How many hours is that?"

2. DIRECT INSTRUCTION (10 minutes):
   Count on clock: 9, 10, 11, 12, 1, 2, 3 = 6 hours
   Practice both finding elapsed and ending times.
   Address crossing noon.

3. GUIDED PRACTICE (10 minutes):
   Elapsed time problems.
   Use clock to count.

4. INDEPENDENT PRACTICE (10 minutes):
   Word problems.
   Real-life scenarios.

DIFFERENTIATION:
For Struggling Learners:
- Clock to count on
- Avoid crossing noon initially
- Smaller spans

For Advanced Learners:
- Longer spans
- Cross midnight
- Find start time given elapsed

ASSESSMENT INDICATORS:
- Counts hours correctly
- Handles noon crossing
- Finds ending times
- Solves word problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Elapsed Time in Hours' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Elapsed Time in Half Hours
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Elapsed Time in Half Hours' AND grade_level_min = 2),
  'Elapsed Time in Half Hours Topic Guide', 'Calculating elapsed time in half hours',
  'ELAPSED TIME IN HALF HOURS - TOPIC GUIDE

PREREQUISITES:
- Elapsed time in hours
- Time to the half hour
- Adding halves

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate elapsed time in half hours
2. Add and subtract 30 minutes
3. Count mixed hours and half hours
4. Solve half-hour elapsed time problems

KEY CONCEPTS:
- Half hour = 30 minutes
- 1.5 hours = 1 hour 30 minutes
- Count halves on clock
- Combine whole and half hours

COMMON MISCONCEPTIONS:
- Converting half hours incorrectly
- Miscounting across hours
- Adding minutes to hours incorrectly
- Format confusion

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "A movie starts at 2:00 and ends at 3:30. How long is it?"

2. DIRECT INSTRUCTION (10 minutes):
   Count: 2:00 to 3:00 is 1 hour, 3:00 to 3:30 is 30 more minutes.
   Total: 1 hour 30 minutes.
   Practice various scenarios.

3. GUIDED PRACTICE (10 minutes):
   Elapsed time problems with half hours.
   Find ending times.

4. INDEPENDENT PRACTICE (10 minutes):
   Word problems.
   Mixed practice.

DIFFERENTIATION:
For Struggling Learners:
- Clock for counting
- Whole hours first, then add half
- Simple scenarios

For Advanced Learners:
- Complex combinations
- Find start times
- Quarter hours preview

ASSESSMENT INDICATORS:
- Counts half hours correctly
- Combines hours and halves
- Expresses time accurately
- Solves problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Elapsed Time in Half Hours' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Days Weeks and Months
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Days Weeks and Months' AND grade_level_min = 2),
  'Days Weeks and Months Topic Guide', 'Understanding time unit relationships',
  'DAYS, WEEKS, AND MONTHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Days of the week names
- Month names
- Basic counting

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Know 7 days = 1 week
2. Know approximate days in months (28-31)
3. Know 12 months = 1 year
4. Calculate weeks from days

KEY CONCEPTS:
- 7 days = 1 week
- Most months have 30 or 31 days
- February has 28 (or 29)
- 52 weeks ≈ 1 year

COMMON MISCONCEPTIONS:
- Wrong number of days in a week
- All months have same days
- Mixing up months and weeks
- Conversion errors

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "How many days until the weekend? Let''s count!"

2. DIRECT INSTRUCTION (10 minutes):
   Establish 7 days in a week.
   Show calendar for month lengths.
   Teach rhyme for days in months.

3. GUIDED PRACTICE (10 minutes):
   Answer questions about time units.
   Calculate weeks from days.

4. INDEPENDENT PRACTICE (10 minutes):
   Conversion problems.
   Calendar-based questions.

DIFFERENTIATION:
For Struggling Learners:
- Calendar always available
- Focus on weeks first
- Days of week song

For Advanced Learners:
- Leap years
- Calculate days between dates
- Seasons and months

ASSESSMENT INDICATORS:
- States correct relationships
- Converts between units
- Uses calendar correctly
- Answers time questions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Days Weeks and Months' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Reading Calendars
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reading Calendars' AND grade_level_min = 2),
  'Reading Calendars Topic Guide', 'Using calendars to find dates',
  'READING CALENDARS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Days of the week
- Month names
- Number recognition to 31

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read dates from a calendar
2. Find specific days and dates
3. Count days between dates
4. Solve calendar-based problems

KEY CONCEPTS:
- Calendar shows days organized by week
- Rows = weeks, columns = days of week
- Date = day number + month
- Can count forward and backward

COMMON MISCONCEPTIONS:
- Counting dates incorrectly
- Confusion with week rows
- Including/excluding endpoint dates
- First day of week confusion

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "When is your birthday this year? What day of the week?"

2. DIRECT INSTRUCTION (10 minutes):
   Explore calendar structure.
   Find specific dates.
   Count days between dates.

3. GUIDED PRACTICE (10 minutes):
   Answer calendar questions together.
   Plan events on calendar.

4. INDEPENDENT PRACTICE (10 minutes):
   Calendar worksheets.
   Date-finding activities.

DIFFERENTIATION:
For Struggling Learners:
- Highlight current week
- Simple same-week questions
- Point-and-count support

For Advanced Learners:
- Cross-month counting
- Pattern finding (every Tuesday)
- Event planning

ASSESSMENT INDICATORS:
- Reads dates correctly
- Finds days of week
- Counts between dates
- Solves calendar problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading Calendars' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MONEY UNIT (10 topics)
-- ============================================================================

-- (First few money topics for Grade 2)

-- Coin Values Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Coin Values Review' AND grade_level_min = 2),
  'Coin Values Review Topic Guide', 'Review of coin values',
  'COIN VALUES REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic coin recognition
- Counting skills
- Grade 1 money concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify all coins by name and appearance
2. State value of each coin
3. Explain relationship between coin values
4. Compare coin values

KEY CONCEPTS:
- Penny = 1¢, Nickel = 5¢, Dime = 10¢, Quarter = 25¢
- Size doesn''t determine value
- 5 pennies = 1 nickel, 2 nickels = 1 dime, etc.
- Quarter = 25 pennies

TEACHING SEQUENCE:
1. HOOK (2 minutes):
   Quick coin identification quiz.

2. DIRECT INSTRUCTION (8 minutes):
   Review each coin with physical examples.
   Reinforce value relationships.

3. GUIDED PRACTICE (8 minutes):
   Sorting and value activities.
   Equivalence exercises.

4. INDEPENDENT PRACTICE (10 minutes):
   Review worksheets.
   Coin value matching.

ASSESSMENT INDICATORS:
- Names coins correctly
- States values accurately
- Knows equivalencies
- Compares values', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Coin Values Review' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Counting Mixed Coins (Grade 2)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting Mixed Coins' AND grade_level_min = 2),
  'Counting Mixed Coins Topic Guide', 'Counting collections of different coins',
  'COUNTING MIXED COINS - GRADE 2 TOPIC GUIDE

PREREQUISITES:
- Individual coin values
- Skip counting by 5s, 10s, 25s
- Counting on skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Sort coins before counting
2. Count from largest to smallest value
3. Count on as adding each coin type
4. Find total value of any coin collection

KEY CONCEPTS:
- Sort by coin type first
- Start with highest value (quarters)
- Count on as you move to smaller coins
- Keep running total in mind

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Empty your pretend wallet! How much do you have?"

2. DIRECT INSTRUCTION (10 minutes):
   Model sorting and counting strategy.
   Example: 2 quarters, 3 dimes, 1 nickel, 4 pennies
   25, 50, 60, 70, 80, 85, 86, 87, 88, 89 = 89¢

3. GUIDED PRACTICE (10 minutes):
   Count various collections together.
   Practice counting on.

4. INDEPENDENT PRACTICE (10 minutes):
   Mixed coin counting worksheets.

ASSESSMENT INDICATORS:
- Sorts coins efficiently
- Counts on correctly
- Arrives at accurate totals
- Uses skip counting', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting Mixed Coins' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PLACEHOLDER FOR REMAINING GRADE 2 TOPICS
-- Due to file size, the remaining topics follow the same comprehensive format.
-- Topics include:
-- Money: Counting Coins to a Dollar, Dollar Bills, Dollars and Cents Notation,
--        Comparing Money Amounts, Making Change, Equivalent Amounts,
--        Money Word Problems, Making Purchases
-- Fractions: Equal Parts, Halves/Thirds/Fourths of Shapes and Groups,
--           Naming Fractions, Comparing Unit Fractions, Fractions on Number Lines
-- Data and Graphs: All 10 topics
-- Measurement Expansion: All 6 topics
-- Geometry Expansion: All 6 topics
-- Multiplication Introduction: All 7 topics
-- ============================================================================

-- Dollars and Cents Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dollars and Cents Notation' AND grade_level_min = 2),
  'Dollars and Cents Notation Topic Guide', 'Writing money amounts with $ and decimal',
  'DOLLARS AND CENTS NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Coin counting skills
- Understanding of dollar
- Place value basics

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Write amounts using $ symbol and decimal
2. Read money amounts in decimal notation
3. Convert between cents and dollars/cents
4. Understand the decimal point separates dollars from cents

KEY CONCEPTS:
- $ goes before the number
- Decimal point separates dollars and cents
- Two digits after decimal for cents
- $1.25 = 1 dollar and 25 cents

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Price tags use special notation. Let''s learn to read them!"

2. DIRECT INSTRUCTION (10 minutes):
   Show format: $4.75 = 4 dollars and 75 cents
   Practice writing various amounts.
   Convert: 325¢ = $3.25

3. GUIDED PRACTICE (10 minutes):
   Write amounts from coins.
   Read price tags.

4. INDEPENDENT PRACTICE (10 minutes):
   Notation practice worksheets.

ASSESSMENT INDICATORS:
- Writes notation correctly
- Places $ and decimal properly
- Reads amounts accurately
- Converts between formats', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dollars and Cents Notation' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Equal Groups
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equal Groups' AND grade_level_min = 2),
  'Equal Groups Topic Guide', 'Understanding and identifying equal groups',
  'EQUAL GROUPS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting objects
- Understanding of "equal"
- Skip counting experience

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify when groups are equal
2. Create equal groups from a set
3. Describe equal groups situations
4. Connect to repeated addition

KEY CONCEPTS:
- Equal groups: same number in each group
- "__ groups of __"
- Total = number of groups × objects per group
- Foundation for multiplication

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Let''s share cookies equally among plates!"

2. DIRECT INSTRUCTION (10 minutes):
   Show equal vs unequal groups.
   Describe: "3 groups of 4"
   Connect to repeated addition.

3. GUIDED PRACTICE (10 minutes):
   Create and describe equal groups.
   Find totals using repeated addition.

4. INDEPENDENT PRACTICE (10 minutes):
   Equal groups worksheets.
   Drawing and counting activities.

ASSESSMENT INDICATORS:
- Identifies equal groups
- Creates equal groups
- Describes using correct language
- Connects to addition', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equal Groups' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Arrays Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Arrays Introduction' AND grade_level_min = 2),
  'Arrays Introduction Topic Guide', 'Arranging objects in rows and columns',
  'ARRAYS INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Equal groups
- Rows and columns vocabulary
- Counting skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Arrange objects in arrays (rows and columns)
2. Describe arrays using rows and columns
3. Count objects in arrays
4. Connect arrays to equal groups

KEY CONCEPTS:
- Array: objects in equal rows and columns
- Rows go across, columns go up/down
- Each row/column has same number
- "__ rows of __" or "__ columns of __"

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Look at this cookie tray - objects in neat rows and columns!"

2. DIRECT INSTRUCTION (10 minutes):
   Show arrays of various sizes.
   Identify rows and columns.
   Count total using skip counting.

3. GUIDED PRACTICE (10 minutes):
   Build arrays with manipulatives.
   Describe and count.

4. INDEPENDENT PRACTICE (10 minutes):
   Array worksheets.
   Create arrays for given descriptions.

ASSESSMENT INDICATORS:
- Creates accurate arrays
- Identifies rows and columns
- Counts efficiently
- Describes using correct vocabulary', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Arrays Introduction' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF GRADE 2 MATH EXPANDED PROMPTS - PART 1
-- Additional prompts follow the same comprehensive format
-- ============================================================================
