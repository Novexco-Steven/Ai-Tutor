-- Grade 4 Math Topic Prompts
-- Comprehensive 500+ word teaching guides for each topic

-- ============================================
-- MULTI-DIGIT MULTIPLICATION UNIT
-- ============================================

-- Multiplying by 10, 100, 1000
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying by 10, 100, 1000' AND grade_level_min = 4),
  'Multiplying by Powers of 10 Topic Guide',
  'Comprehensive teaching approach for powers of 10 patterns',
  'MULTIPLYING BY 10, 100, 1000 - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand place value to thousands, multiply by 10 from grade 3, know basic multiplication facts, and understand that digits shift in place value.

LEARNING OBJECTIVES:
Students will multiply any whole number by 10, 100, and 1000, explain the pattern using place value understanding, apply patterns to mental math, and extend to multiplying multiples of 10.

KEY CONCEPTS:
1. Multiplying by 10 shifts all digits one place left (ones become tens)
2. Multiplying by 100 shifts all digits two places left
3. Multiplying by 1000 shifts all digits three places left
4. Zeros appear as placeholders in vacated places
5. This pattern works because of our base-10 number system

COMMON MISCONCEPTIONS:
- Thinking "just add zeros" without understanding why
- Errors with numbers containing zeros (40 × 100 = 400 instead of 4000)
- Not extending pattern consistently
- Confusing multiplication by 10 with addition of 10
- Difficulty applying to multi-digit multipliers

TEACHING SEQUENCE:

Hook/Engagement:
"I can multiply 347 × 1000 in my head instantly: 347,000! Want to know how? It''s all about understanding how our number system works."

Direct Instruction:
×10: "When we multiply by 10, every digit moves one place to the left. 23 × 10: the 2 tens become 2 hundreds, the 3 ones become 3 tens, and we need 0 ones. Result: 230."

×100: "Multiply by 100 means every digit shifts TWO places left. 23 × 100: 2 becomes 2000 (thousands), 3 becomes 300 (hundreds), zeros in tens and ones. Result: 2300."

×1000: "Shift three places. 23 × 1000 = 23,000."

With zeros in the number: "40 × 100: The 4 tens (40) becomes 4 thousands (4000), so 40 × 100 = 4,000."

Show with place value chart to visualize the shift.

Guided Practice:
Practice each multiplier, mixed practice with all three, word problems in context, explain the pattern to a partner.

Independent Application:
Mental math challenges, estimation problems, real-world applications (money, distance), extend to larger multipliers.

DIFFERENTIATION:

Struggling Learners:
- Use place value charts for every problem
- Focus on ×10 before ×100 before ×1000
- Emphasize "shift" rather than "add zeros"
- Color-code the shifts
- Use base-ten blocks if needed

Advanced Learners:
- Multiply by 10,000 and beyond
- Divide by 10, 100, 1000 (reverse pattern)
- Mental math with combinations (50 × 400)
- Connect to scientific notation concepts
- Explore decimal applications

ASSESSMENT INDICATORS:
- Multiplies by 10, 100, 1000 accurately
- Explains the pattern using place value
- Applies pattern to numbers with zeros
- Uses pattern for mental math
- Connects to place value understanding

VOCABULARY:
multiply, powers of 10, place value, shift, placeholder, mental math, pattern

CONNECTION TO FUTURE LEARNING:
Powers of 10 patterns are essential for scientific notation, metric conversions, and understanding our decimal number system.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying by 10, 100, 1000' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Area Model Multiplication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area Model Multiplication' AND grade_level_min = 4),
  'Area Model Multiplication Topic Guide',
  'Comprehensive teaching approach for visual multiplication',
  'AREA MODEL MULTIPLICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand area concepts, use the distributive property, multiply by multiples of 10, and have fact fluency.

LEARNING OBJECTIVES:
Students will use area models to multiply two-digit by two-digit numbers, connect area models to the distributive property, understand why the standard algorithm works, and record the partial products method.

KEY CONCEPTS:
1. Area model breaks multiplication into parts (partial products)
2. Multiply each part of one factor by each part of the other
3. Add all partial products for the final answer
4. Area = length × width visualizes the multiplication
5. This method connects place value to multiplication

COMMON MISCONCEPTIONS:
- Forgetting a partial product (not multiplying all combinations)
- Errors in individual partial products
- Difficulty organizing the work
- Not connecting to the standard algorithm
- Misaligning place values when adding

TEACHING SEQUENCE:

Hook/Engagement:
"To find 23 × 45, we could add 23 forty-five times. But there''s a much smarter way using rectangles! Let''s see how area helps us multiply."

Direct Instruction:
Set up the area model: "23 × 45. I draw a rectangle with 23 on one side and 45 on the other. I split 23 into 20 + 3 and 45 into 40 + 5."

Create four sections:
- 20 × 40 = 800
- 20 × 5 = 100
- 3 × 40 = 120
- 3 × 5 = 15

"Now add all parts: 800 + 100 + 120 + 15 = 1,035. So 23 × 45 = 1,035!"

Show the connection to distributive property:
23 × 45 = (20 + 3) × (40 + 5) = 20×40 + 20×5 + 3×40 + 3×5

Guided Practice:
Draw area models together, calculate partial products, add to find totals, compare results to standard algorithm.

Independent Application:
Independent area model practice, word problems using area models, connect to standard algorithm, explain method to partner.

DIFFERENTIATION:

Struggling Learners:
- Provide area model templates
- Use graph paper for accurate models
- Focus on two-digit × one-digit first
- Color-code partial products
- Calculate one partial product at a time

Advanced Learners:
- Three-digit × two-digit using area models
- Connect to algebraic notation
- Create their own problems
- Find errors in given area models
- Extend to polynomial multiplication preview

ASSESSMENT INDICATORS:
- Draws accurate area models
- Calculates all partial products
- Adds partial products correctly
- Explains the method clearly
- Connects to distributive property

VOCABULARY:
area model, partial products, distributive property, factor, product, decompose, tens, ones

CONNECTION TO FUTURE LEARNING:
Area models connect to the standard algorithm, polynomial multiplication, and algebraic understanding of the distributive property.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area Model Multiplication' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Standard Algorithm
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Standard Algorithm' AND grade_level_min = 4),
  'Standard Algorithm Multiplication Topic Guide',
  'Comprehensive teaching approach for multi-digit multiplication algorithm',
  'STANDARD ALGORITHM FOR MULTIPLICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand area model and partial products, have multiplication fact fluency, understand place value, and add multi-digit numbers.

LEARNING OBJECTIVES:
Students will use the standard algorithm for multi-digit multiplication, understand why the algorithm works, handle regrouping correctly, and multiply up to four-digit by one-digit and two-digit by two-digit numbers.

KEY CONCEPTS:
1. The algorithm is a shortcut for partial products
2. Multiply by ones digit, then by tens digit
3. Shift the second row left (because you''re multiplying by tens)
4. Add the partial products for final answer
5. Regrouping tracks overflow from one place to the next

COMMON MISCONCEPTIONS:
- Forgetting to shift when multiplying by tens digit
- Regrouping errors (adding carried digit at wrong time)
- Forgetting to multiply all digits
- Misaligning columns when adding
- Not understanding WHY the algorithm works

TEACHING SEQUENCE:

Hook/Engagement:
"The area model works great, but takes a lot of space. Mathematicians developed a compact method that does the same thing faster. Let''s learn the standard algorithm!"

Direct Instruction:
Connect to area model: "For 34 × 52, the area model gives us four partial products. The algorithm combines these efficiently."

Model the algorithm:
    34
  × 52
  ----
    68  (34 × 2)
  170   (34 × 5, shifted because it''s really 34 × 50)
  ----
  1768

Emphasize the shift: "When I multiply by 5, I''m really multiplying by 50, so I start in the tens place."

Show regrouping: "3 × 7 = 21. Write 1, carry the 2 to the next column."

Guided Practice:
Work through problems together, compare to area model results, practice regrouping, check with estimation.

Independent Application:
Independent practice, varied digit combinations, word problems, error analysis.

DIFFERENTIATION:

Struggling Learners:
- Use graph paper for alignment
- Continue comparing to area model
- Practice without regrouping first
- Highlight the shift
- Step-by-step checklist

Advanced Learners:
- Three-digit by two-digit
- Four-digit by one-digit
- Mental checks using estimation
- Create challenge problems
- Multiple multiplication methods

ASSESSMENT INDICATORS:
- Uses algorithm accurately
- Regroups correctly
- Shifts appropriately for tens
- Checks with estimation
- Explains why algorithm works

VOCABULARY:
standard algorithm, regrouping, carrying, partial product, factor, product, shift, multiply

CONNECTION TO FUTURE LEARNING:
The standard algorithm efficiency is needed for larger multiplication, division algorithms, and efficient calculation throughout mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Standard Algorithm' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Multi-Step Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multi-Step Word Problems' AND grade_level_min = 4),
  'Multi-Step Word Problems Topic Guide',
  'Comprehensive teaching approach for complex problem solving',
  'MULTI-STEP WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should use all four operations fluently, solve two-step problems, use multiplication and division algorithms, and understand problem-solving strategies.

LEARNING OBJECTIVES:
Students will solve problems requiring three or more steps, determine which operations are needed, organize work to track steps, use estimation to check reasonableness, and represent problems with equations.

KEY CONCEPTS:
1. Multi-step problems require multiple operations
2. Order of operations matters (but focus is on logic, not PEMDAS yet)
3. Breaking problems into smaller steps aids solving
4. Estimation checks reasonableness
5. Variables or letters can represent unknowns

COMMON MISCONCEPTIONS:
- Missing steps (not solving completely)
- Performing operations in wrong order
- Using wrong operations
- Not checking if answer makes sense
- Difficulty tracking intermediate answers

TEACHING SEQUENCE:

Hook/Engagement:
"Real-world math is rarely just one step. When you plan a party, you might need to figure out how many pizzas, how much each costs, whether you have enough money, and how much is left. That''s multi-step math!"

Direct Instruction:
Model the problem-solving process:
1. Read and understand (what am I finding?)
2. Plan (what operations? what order?)
3. Solve step-by-step
4. Check (does it make sense?)

Example: "A school orders 24 boxes of pencils with 12 pencils each. They distribute 150 pencils to Grade 4 and divide the rest equally among 3 other grades. How many pencils does each of the other grades get?"

Step 1: Total pencils = 24 × 12 = 288
Step 2: Remaining after Grade 4 = 288 - 150 = 138
Step 3: Each other grade = 138 ÷ 3 = 46 pencils

Guided Practice:
Work through problems together, identify steps before calculating, estimate first, check final answers.

Independent Application:
Varied multi-step problems, create own problems, explain solution process, justify answers.

DIFFERENTIATION:

Struggling Learners:
- Start with two-step problems
- Use graphic organizers
- Break problems into explicit steps
- Use simpler numbers while learning
- Highlight key information

Advanced Learners:
- Four+ step problems
- Problems with extra information
- Create problems for classmates
- Multiple solution paths
- Algebraic representations

ASSESSMENT INDICATORS:
- Identifies all needed steps
- Performs operations correctly
- Organizes work clearly
- Checks reasonableness
- Explains solution process

VOCABULARY:
multi-step, operations, plan, solve, check, estimate, reasonable, equation

CONNECTION TO FUTURE LEARNING:
Multi-step problem solving is essential for algebraic reasoning, real-world applications, and all higher mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multi-Step Word Problems' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================
-- MULTI-DIGIT DIVISION UNIT
-- ============================================

-- Division with Remainders
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Division with Remainders' AND grade_level_min = 4),
  'Division with Remainders Topic Guide',
  'Comprehensive teaching approach for interpreting remainders',
  'DIVISION WITH REMAINDERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand division concepts, have multiplication fact fluency, understand the relationship between multiplication and division, and solve division problems without remainders.

LEARNING OBJECTIVES:
Students will divide and find remainders, interpret remainders in context (drop, round up, use as fraction, or include as remainder), understand that the remainder must be less than the divisor, and check division using multiplication and addition.

KEY CONCEPTS:
1. Sometimes division doesn''t "come out even"
2. The remainder is what''s left over after equal sharing/grouping
3. Remainder must be less than the divisor
4. Context determines how to handle the remainder
5. Check: quotient × divisor + remainder = dividend

COMMON MISCONCEPTIONS:
- Thinking division is "wrong" if there''s a remainder
- Remainder larger than divisor (didn''t divide enough)
- Always treating remainder the same way regardless of context
- Not knowing how to check with remainders
- Confusing remainder with quotient

TEACHING SEQUENCE:

Hook/Engagement:
"23 students need to get into cars that hold 4 each. Can they do it with 5 cars? (5 × 4 = 20... not quite!) They need 6 cars, with some empty seats. Welcome to remainders!"

Direct Instruction:
Model division with remainder: "23 ÷ 4. I ask: how many 4s fit into 23? 5 × 4 = 20 (fits), 6 × 4 = 24 (too many). So 5 with 3 left over. 23 ÷ 4 = 5 R3."

Check: "5 × 4 + 3 = 20 + 3 = 23 ✓"

Remainder rule: "If my remainder is 4 or more, I could fit another group of 4. Remainder must be less than divisor!"

Context interpretation:
- Drop remainder: "23 cookies, 4 per bag. How many FULL bags? 5 bags (ignore the 3 extra)"
- Round up: "23 students, 4 per car. How many cars needed? 6 cars (can''t leave 3 students!)"
- Include as remainder: "Share 23 stickers among 4 friends equally. Each gets 5, with 3 left over."
- Use as fraction: "23 pizzas shared among 4 groups. Each gets 5¾ pizzas."

Guided Practice:
Divide with remainders, interpret in various contexts, check with multiplication, compare different context interpretations.

Independent Application:
Mixed practice problems, context-based word problems, explain remainder interpretation, error analysis.

DIFFERENTIATION:

Struggling Learners:
- Use manipulatives for division
- Focus on finding the quotient first
- Practice remainder vs divisor comparison
- One interpretation type at a time
- Step-by-step checking process

Advanced Learners:
- Larger dividends
- Express remainders as fractions or decimals
- Create context problems for given divisions
- Explore patterns in remainders
- Connect to divisibility

ASSESSMENT INDICATORS:
- Divides accurately with remainders
- Remainder is less than divisor
- Interprets remainder appropriately for context
- Checks using multiplication and addition
- Explains why remainder is what''s left

VOCABULARY:
divide, divisor, dividend, quotient, remainder, left over, context, interpret

CONNECTION TO FUTURE LEARNING:
Understanding remainders prepares students for long division, fractions as division, and decimal division.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Division with Remainders' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Partial Quotients
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Partial Quotients' AND grade_level_min = 4),
  'Partial Quotients Topic Guide',
  'Comprehensive teaching approach for division strategy',
  'PARTIAL QUOTIENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand division concepts, multiply by 10 and multiples of 10, subtract multi-digit numbers, and have basic fact fluency.

LEARNING OBJECTIVES:
Students will use partial quotients to divide larger numbers, estimate partial quotients efficiently, record work systematically, and check answers using multiplication.

KEY CONCEPTS:
1. Subtract convenient multiples of the divisor repeatedly
2. Add up all partial quotients for the answer
3. Larger partial quotients are more efficient
4. Any multiple of the divisor works (flexibility)
5. Eventually reduces to standard algorithm thinking

COMMON MISCONCEPTIONS:
- Using partial quotients that are too small (inefficient)
- Subtraction errors
- Forgetting to add all partial quotients
- Not checking the final answer
- Thinking there''s only one correct series of partial quotients

TEACHING SEQUENCE:

Hook/Engagement:
"How would you divide 156 by 4? Repeated subtraction of 4 would take forever! Let''s subtract BIGGER chunks—groups of 40 (that''s 10 fours) or 80 (that''s 20 fours). Much faster!"

Direct Instruction:
Model partial quotients for 156 ÷ 4:

156
-80  (20 groups of 4)
---
 76
-40  (10 groups of 4)
---
 36
-36  (9 groups of 4)
---
  0

20 + 10 + 9 = 39. So 156 ÷ 4 = 39.

Check: 39 × 4 = 156 ✓

Show flexibility: "I could have also done 40 + 40 + 40 + 36. Still get 10+10+10+9 = 39."

Encourage efficient choices: "Using 80 (20 groups) is more efficient than using 40 twice."

Guided Practice:
Practice with various dividends, encourage efficient partial quotients, record work systematically, check with multiplication.

Independent Application:
Independent practice, word problems, compare different partial quotient approaches, transition toward standard algorithm.

DIFFERENTIATION:

Struggling Learners:
- Start with multiples of 10 only (10, 20, 30...)
- Provide reference sheet of divisor multiples
- Use smaller dividends initially
- Focus on organization
- Celebrate any correct path

Advanced Learners:
- Larger dividends
- Challenge to minimize partial quotients
- Connect to long division algorithm
- Divide with remainders
- Explain why method works

ASSESSMENT INDICATORS:
- Uses partial quotients correctly
- Subtracts accurately
- Adds partial quotients for final answer
- Checks with multiplication
- Uses reasonably efficient partial quotients

VOCABULARY:
partial quotients, divide, subtract, multiple, estimate, efficient, quotient

CONNECTION TO FUTURE LEARNING:
Partial quotients builds understanding for the long division algorithm and division with larger dividends.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Partial Quotients' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Long Division
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Long Division' AND grade_level_min = 4),
  'Long Division Topic Guide',
  'Comprehensive teaching approach for the division algorithm',
  'LONG DIVISION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must use partial quotients, understand division with remainders, have multiplication fact fluency, and subtract multi-digit numbers accurately.

LEARNING OBJECTIVES:
Students will use the standard long division algorithm, understand each step (divide, multiply, subtract, bring down), handle multi-digit dividends, and check answers using multiplication.

KEY CONCEPTS:
1. Long division follows: Divide, Multiply, Subtract, Bring Down (DMSB)
2. Work from left to right, one place value at a time
3. The quotient digit goes above the corresponding dividend digit
4. "Bring down" moves to the next place value
5. Continue until all digits are processed

COMMON MISCONCEPTIONS:
- Skipping steps or doing them out of order
- Not knowing where to place quotient digits
- Errors in the multiply or subtract steps
- Not handling zeros in the quotient
- Stopping too early (not bringing down all digits)

TEACHING SEQUENCE:

Hook/Engagement:
"Partial quotients works, but takes lots of space. Long division is a compact version that mathematicians have used for centuries. It takes practice, but becomes very efficient!"

Direct Instruction:
Model DMSB for 847 ÷ 3:

"Does 3 go into 8? Yes! 3 × 2 = 6 (fits), 3 × 3 = 9 (too much). Write 2 above the 8. Multiply: 2 × 3 = 6. Subtract: 8 - 6 = 2. Bring down the 4."

"Does 3 go into 24? Yes! 3 × 8 = 24. Write 8 above the 4. Multiply: 8 × 3 = 24. Subtract: 24 - 24 = 0. Bring down the 7."

"Does 3 go into 7? Yes! 3 × 2 = 6. Write 2 above the 7. Multiply: 2 × 3 = 6. Subtract: 7 - 6 = 1."

"Answer: 282 R1. Check: 282 × 3 + 1 = 847 ✓"

Guided Practice:
Practice DMSB steps, verbalize each step, check all answers, gradually increase complexity.

Independent Application:
Independent practice, word problems, error analysis (find and fix mistakes), timed practice for fluency.

DIFFERENTIATION:

Struggling Learners:
- Color-code each step
- Use graph paper for alignment
- Provide step-by-step guides
- Practice single-digit divisors only
- Verbalize steps aloud

Advanced Learners:
- Two-digit divisors
- Zeros in quotient
- Larger dividends
- Connect to decimal division
- Multiple methods comparison

ASSESSMENT INDICATORS:
- Follows DMSB correctly
- Places quotient digits accurately
- Handles remainders correctly
- Checks with multiplication
- Works efficiently

VOCABULARY:
long division, divide, multiply, subtract, bring down, quotient, divisor, dividend, remainder

CONNECTION TO FUTURE LEARNING:
Long division mastery is essential for dividing larger numbers, decimal division, and polynomial division in algebra.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Long Division' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Division Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Division Word Problems' AND grade_level_min = 4),
  'Division Word Problems Topic Guide',
  'Comprehensive teaching approach for contextual division',
  'DIVISION WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand division algorithms, interpret remainders, recognize division situations, and solve multi-step problems.

LEARNING OBJECTIVES:
Students will identify division situations in context, choose appropriate division methods, interpret answers including remainders, and solve multi-step problems involving division.

KEY CONCEPTS:
1. Equal sharing and grouping require division
2. Context determines remainder interpretation
3. Some problems require division combined with other operations
4. Estimation helps verify reasonableness
5. Answer must make sense in context

COMMON MISCONCEPTIONS:
- Using wrong operation (multiplying instead of dividing)
- Not interpreting remainder correctly for context
- Computation errors affecting final answer
- Not checking if answer is reasonable
- Missing multi-step requirements

TEACHING SEQUENCE:

Hook/Engagement:
"A restaurant has 348 customers and each table seats 6. How many tables are needed? This is a REAL problem that requires division—and careful thinking about what to do with the remainder!"

Direct Instruction:
Identify division contexts:
- Equal sharing: "128 stickers shared among 8 friends"
- Equal grouping: "How many groups of 6 can we make from 42?"
- Finding unit rate: "If 5 items cost $35, how much is one?"
- Comparing: "How many times longer is 240 than 60?"

Model solving:
1. Read carefully—what are we finding?
2. Identify operation(s) needed
3. Calculate accurately
4. Interpret answer in context
5. Check reasonableness

Remainder interpretation review:
- Round up (tables, buses, containers)
- Drop remainder (complete sets)
- Express as fraction/decimal
- Report as remainder

Guided Practice:
Identify division vs other operations, solve and interpret, multi-step problems, explain reasoning.

Independent Application:
Varied word problems, create own division problems, explain solutions, error analysis.

DIFFERENTIATION:

Struggling Learners:
- Categorize problem types
- Use diagrams and drawings
- Focus on one-step first
- Highlight key information
- Provide sentence starters for explanations

Advanced Learners:
- Complex multi-step problems
- Problems with extraneous information
- Create challenging problems
- Real-world investigation projects
- Algebraic representations

ASSESSMENT INDICATORS:
- Identifies division situations correctly
- Computes accurately
- Interprets remainders appropriately
- Checks reasonableness
- Explains problem-solving process

VOCABULARY:
divide, share equally, groups of, quotient, remainder, interpret, reasonable, each

CONNECTION TO FUTURE LEARNING:
Division problem solving extends to ratio, proportion, and rate problems in later grades.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Division Word Problems' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================
-- FRACTIONS AND DECIMALS UNIT
-- ============================================

-- Equivalent Fractions (Grade 4)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equivalent Fractions' AND grade_level_min = 4),
  'Equivalent Fractions Grade 4 Topic Guide',
  'Comprehensive teaching approach for generating equivalents',
  'EQUIVALENT FRACTIONS (GRADE 4) - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand fraction concepts, recognize equivalent fractions from grade 3, use visual models, and understand multiplication and division.

LEARNING OBJECTIVES:
Students will generate equivalent fractions systematically, simplify fractions to lowest terms, recognize when fractions are equivalent, and use equivalence for comparison and computation.

KEY CONCEPTS:
1. Multiply numerator AND denominator by same number to get equivalent
2. Divide numerator AND denominator by same number to simplify
3. n/n = 1, so multiplying by n/n doesn''t change value
4. Simplest form means numerator and denominator share no common factors
5. Many equivalent fractions exist for any fraction

COMMON MISCONCEPTIONS:
- Adding same number to num and denom (not multiplying)
- Simplifying incorrectly (dividing by different numbers)
- Not simplifying completely to lowest terms
- Thinking equivalent fractions look the same on different wholes
- Difficulty finding the "right" equivalent for comparison

TEACHING SEQUENCE:

Hook/Engagement:
"Is 12/16 the same as 3/4? They look different, but let''s prove they''re equivalent—and learn to find ALL the fractions equivalent to any fraction!"

Direct Instruction:
Generate equivalents by multiplying:
2/3 = 4/6 = 6/9 = 8/12 = 10/15... (multiply num and denom by 2, 3, 4, 5...)

Explain why it works: "2/3 × 2/2 = 4/6. Since 2/2 = 1, we haven''t changed the value!"

Simplify by dividing:
12/16: Both divisible by 4. 12÷4 = 3, 16÷4 = 4. So 12/16 = 3/4.

Find GCF for efficient simplifying: "The greatest common factor of 12 and 16 is 4."

Check: "Is 6/9 equivalent to 2/3? 6÷3 = 2, 9÷3 = 3. Yes! 6/9 = 2/3."

Guided Practice:
Generate equivalent fractions, simplify to lowest terms, compare fractions using equivalence, find specific equivalents.

Independent Application:
Mixed practice, comparison problems, word problems requiring equivalence, create equivalent fraction chains.

DIFFERENTIATION:

Struggling Learners:
- Use fraction strips to visualize
- Multiply by 2 before other numbers
- Provide factor lists
- Focus on simplifying before generating
- Visual verification

Advanced Learners:
- Larger numerators and denominators
- Find equivalents for comparison with unlike denominators
- GCF and LCM applications
- Fraction puzzles
- Connect to ratio concepts

ASSESSMENT INDICATORS:
- Generates equivalent fractions correctly
- Simplifies to lowest terms
- Identifies equivalent pairs
- Uses equivalence for comparison
- Explains why equivalence works

VOCABULARY:
equivalent, simplify, lowest terms, simplest form, numerator, denominator, common factor, GCF

CONNECTION TO FUTURE LEARNING:
Equivalent fractions are essential for adding/subtracting unlike denominators and understanding proportional relationships.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equivalent Fractions' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Adding Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Fractions' AND grade_level_min = 4),
  'Adding Fractions Topic Guide',
  'Comprehensive teaching approach for fraction addition',
  'ADDING FRACTIONS WITH LIKE DENOMINATORS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand fraction concepts, work with equivalent fractions, use visual fraction models, and add whole numbers.

LEARNING OBJECTIVES:
Students will add fractions with like denominators, understand why we add numerators and keep denominators, represent addition with visual models, simplify answers when possible, and solve word problems with fraction addition.

KEY CONCEPTS:
1. Same denominator = same size pieces
2. Add the numerators (number of pieces)
3. Denominator stays the same (size of pieces doesn''t change)
4. Simplify if possible
5. Mixed numbers may result from improper fractions

COMMON MISCONCEPTIONS:
- Adding denominators too (3/8 + 2/8 ≠ 5/16)
- Not simplifying answers
- Difficulty with sums exceeding 1
- Not connecting to visual models
- Thinking addition changes the size of pieces

TEACHING SEQUENCE:

Hook/Engagement:
"If you eat 2/8 of a pizza and then 3/8 more, how much did you eat? You''re putting eighths together—same size pieces! Let''s see why fraction addition makes sense."

Direct Instruction:
Model with visuals: Show a fraction bar divided into 8 equal parts. Shade 2/8 in one color, 3/8 in another. "How many eighths total? 2 + 3 = 5 eighths, or 5/8."

Explain the rule: "We add the numerators because we''re combining pieces. The denominator stays the same because the SIZE of the pieces doesn''t change—they''re still eighths."

Written form: 2/8 + 3/8 = 5/8

When sum exceeds 1: 5/6 + 4/6 = 9/6 = 1 3/6 = 1 1/2

Simplifying: 2/8 + 2/8 = 4/8 = 1/2

Guided Practice:
Add with models, add symbolically, simplify answers, convert improper fractions, word problems.

Independent Application:
Mixed practice, word problems in context, error analysis, create own problems.

DIFFERENTIATION:

Struggling Learners:
- Always use visual models
- Practice without simplifying first
- Stay with proper fraction sums initially
- Fraction strips for hands-on
- Emphasize "same size pieces"

Advanced Learners:
- Mixed number addition
- Problems requiring simplification
- Multi-addend problems
- Create word problems
- Preview unlike denominators

ASSESSMENT INDICATORS:
- Adds numerators correctly
- Keeps denominator the same
- Simplifies when possible
- Converts improper fractions
- Explains the process with models

VOCABULARY:
add, sum, numerator, denominator, like denominators, improper fraction, mixed number, simplify

CONNECTION TO FUTURE LEARNING:
Adding like denominators prepares students for adding unlike denominators and fraction computation in general.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Fractions' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Subtracting Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Fractions' AND grade_level_min = 4),
  'Subtracting Fractions Topic Guide',
  'Comprehensive teaching approach for fraction subtraction',
  'SUBTRACTING FRACTIONS WITH LIKE DENOMINATORS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should add fractions with like denominators, understand fraction concepts, use visual models, and subtract whole numbers.

LEARNING OBJECTIVES:
Students will subtract fractions with like denominators, understand why we subtract numerators and keep denominators, represent subtraction with visual models, simplify answers when possible, and solve word problems.

KEY CONCEPTS:
1. Same denominator = same size pieces
2. Subtract the numerators
3. Denominator stays the same
4. Simplify if possible
5. Subtracting from a whole requires converting

COMMON MISCONCEPTIONS:
- Subtracting denominators too
- Errors when subtracting from 1 whole
- Not simplifying answers
- Confusion about what the difference represents
- Subtracting larger from smaller (getting confused with order)

TEACHING SEQUENCE:

Hook/Engagement:
"You have 7/8 of a birthday cake left. Your family eats 3/8. How much is left now? Same size pieces, just fewer of them. Fraction subtraction to the rescue!"

Direct Instruction:
Model with visuals: Show 7/8 shaded. "Taking away 3/8 means removing 3 of those eighths." Cross out 3 pieces. "4 eighths remain. 7/8 - 3/8 = 4/8 = 1/2."

Explain the rule: "We subtract numerators because we''re removing pieces. The denominator stays the same—still eighths."

Subtracting from 1 whole: "1 - 3/5 = 5/5 - 3/5 = 2/5. I rename 1 as 5/5 first."

Simplifying: 6/8 - 2/8 = 4/8 = 1/2

Guided Practice:
Subtract with models, subtract symbolically, simplify answers, subtract from 1 whole, word problems.

Independent Application:
Mixed practice, comparison of addition and subtraction, word problems, error analysis.

DIFFERENTIATION:

Struggling Learners:
- Always use visual models
- Practice without simplifying first
- Avoid subtracting from 1 initially
- Use fraction strips
- Connect to whole number subtraction

Advanced Learners:
- Mixed number subtraction
- Regrouping with mixed numbers
- Multi-operation problems
- Create word problems
- Preview unlike denominators

ASSESSMENT INDICATORS:
- Subtracts numerators correctly
- Keeps denominator the same
- Simplifies when possible
- Handles subtracting from 1
- Explains process with models

VOCABULARY:
subtract, difference, numerator, denominator, like denominators, simplify, rename

CONNECTION TO FUTURE LEARNING:
Subtracting like denominators prepares students for subtracting unlike denominators and complex fraction operations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Fractions' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Multiplying Fractions (by whole numbers)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Fractions' AND grade_level_min = 4),
  'Multiplying Fractions by Whole Numbers Topic Guide',
  'Comprehensive teaching approach for fraction multiplication introduction',
  'MULTIPLYING FRACTIONS BY WHOLE NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand fraction concepts, add fractions with like denominators, understand multiplication as repeated addition, and work with visual models.

LEARNING OBJECTIVES:
Students will multiply fractions by whole numbers, understand this as repeated addition, represent multiplication with visual and symbolic models, simplify products when possible, and solve word problems.

KEY CONCEPTS:
1. 4 × 2/3 means 4 groups of 2/3
2. 4 × 2/3 = 2/3 + 2/3 + 2/3 + 2/3 = 8/3
3. Multiply the whole number by the numerator, keep denominator
4. Result may be an improper fraction (convert to mixed number)
5. Can simplify before or after multiplying

COMMON MISCONCEPTIONS:
- Multiplying denominator too (4 × 2/3 ≠ 8/12)
- Not connecting to repeated addition
- Difficulty interpreting improper fraction results
- Thinking multiplication always makes bigger
- Confusion about which number to multiply

TEACHING SEQUENCE:

Hook/Engagement:
"Each person gets 2/5 of a pizza. If 3 people each get 2/5, how much pizza total? It''s not 3/5—it''s 3 times 2/5. Let''s discover how to multiply fractions!"

Direct Instruction:
Connect to repeated addition: "3 × 2/5 = 2/5 + 2/5 + 2/5 = 6/5 = 1 1/5"

Show with visual: Three copies of 2/5 combined make 6/5.

Develop the rule: "Multiply the whole number by the numerator. 3 × 2/5 = (3×2)/5 = 6/5"

Why denominator stays same: "We still have fifths—just more of them!"

Simplify when possible: 4 × 3/8 = 12/8 = 3/2 = 1 1/2

Guided Practice:
Model with repeated addition, use visual models, apply the rule, convert to mixed numbers, simplify.

Independent Application:
Mixed practice, word problems, error analysis, explain reasoning.

DIFFERENTIATION:

Struggling Learners:
- Always start with repeated addition
- Use visual models extensively
- Small whole numbers (2, 3, 4)
- Keep denominators simple
- Focus on understanding, not speed

Advanced Learners:
- Larger whole numbers
- Simplify before multiplying
- Multi-step problems
- Preview fraction × fraction
- Explore patterns

ASSESSMENT INDICATORS:
- Multiplies correctly
- Connects to repeated addition
- Converts improper fractions
- Simplifies products
- Solves word problems

VOCABULARY:
multiply, product, groups of, repeated addition, improper fraction, mixed number, simplify

CONNECTION TO FUTURE LEARNING:
This prepares students for multiplying fraction by fraction and understanding multiplication of numbers less than 1.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Fractions' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Decimal Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Decimal Notation' AND grade_level_min = 4),
  'Decimal Notation Topic Guide',
  'Comprehensive teaching approach for fraction-decimal connection',
  'DECIMAL NOTATION FOR FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand fractions, understand place value, work with tenths and hundredths as fractions, and use equivalent fractions.

LEARNING OBJECTIVES:
Students will convert fractions with denominators 10 and 100 to decimals, understand decimal place value (tenths, hundredths), read and write decimals correctly, connect decimals to everyday uses (money, measurement), and understand that decimals are another way to write fractions.

KEY CONCEPTS:
1. Decimals are fractions with denominators of 10, 100, etc.
2. 3/10 = 0.3 (three tenths), 25/100 = 0.25 (twenty-five hundredths)
3. The decimal point separates wholes from parts
4. Place value extends to the right: tenths, hundredths
5. 0.3 = 0.30 = 30/100 = 3/10 (equivalent forms)

COMMON MISCONCEPTIONS:
- Reading 0.25 as "zero point twenty-five" instead of "twenty-five hundredths"
- Thinking 0.5 and 0.50 are different values
- Confusing tenths and hundredths places
- Difficulty with decimal point placement
- Not connecting to fraction understanding

TEACHING SEQUENCE:

Hook/Engagement:
"You know money: $0.25 is a quarter—that''s 25/100 of a dollar! Decimals and fractions are connected. Let''s explore how to move between them."

Direct Instruction:
Build from fractions:
"3/10 means 3 out of 10 equal parts. We write this as 0.3. The 3 is in the tenths place."

"25/100 means 25 out of 100 parts. We write this as 0.25. The 2 is in the tenths place, the 5 is in the hundredths place."

Extend place value chart to include tenths and hundredths.

Read decimals: "0.7 is read ''seven tenths.'' 0.45 is ''forty-five hundredths.''"

Connect to money: "$0.75 = 75/100 = 75 cents = 3/4 of a dollar."

Equivalence: "0.3 = 0.30 because 3/10 = 30/100."

Guided Practice:
Convert fractions to decimals, convert decimals to fractions, read and write decimals, connect to money.

Independent Application:
Mixed conversions, money problems, measurement contexts, place value challenges.

DIFFERENTIATION:

Struggling Learners:
- Focus on tenths before hundredths
- Use money extensively (familiar context)
- Place value charts always visible
- Lots of reading practice
- Connect to visual models

Advanced Learners:
- Extend to thousandths
- Repeating decimals introduction
- Convert other fractions (1/4 = 0.25)
- Decimal operations preview
- Real-world measurement applications

ASSESSMENT INDICATORS:
- Converts 10ths and 100ths to decimals
- Writes fractions for decimals
- Reads decimals correctly
- Uses place value understanding
- Connects to money contexts

VOCABULARY:
decimal, decimal point, tenths, hundredths, place value, equivalent, notation

CONNECTION TO FUTURE LEARNING:
Decimal understanding is essential for decimal operations, percent, and applications in science and finance.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Decimal Notation' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Comparing Decimals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Decimals' AND grade_level_min = 4),
  'Comparing Decimals Topic Guide',
  'Comprehensive teaching approach for decimal comparison',
  'COMPARING DECIMALS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand decimal notation, know place value for tenths and hundredths, compare whole numbers, and understand equivalent decimals.

LEARNING OBJECTIVES:
Students will compare decimals to the hundredths place, use symbols <, >, = correctly, understand that 0.5 = 0.50 for comparison, order multiple decimals, and explain comparison reasoning.

KEY CONCEPTS:
1. Compare by place value: start with largest place
2. Align decimal points for comparison
3. 0.5 = 0.50 (can add zeros without changing value)
4. Tenths place is more significant than hundredths
5. Number lines help visualize relative position

COMMON MISCONCEPTIONS:
- Thinking 0.19 > 0.2 because 19 > 2 (ignoring place value)
- Comparing digit by digit without alignment
- Thinking more digits means larger value
- Difficulty when comparing tenths to hundredths
- Not using equivalent decimals strategically

TEACHING SEQUENCE:

Hook/Engagement:
"Which is larger: 0.3 or 0.25? At first glance, 25 seems bigger than 3. But which decimal represents more? Place value is the key!"

Direct Instruction:
Align and compare: "0.3 vs 0.25. Rewrite 0.3 as 0.30. Now compare: 30 hundredths vs 25 hundredths. 0.30 > 0.25."

Place value approach: "Compare tenths first. 0.3 has 3 tenths. 0.25 has 2 tenths. Since 3 > 2, we know 0.3 > 0.25 without looking further."

Number line: Place 0.25 and 0.3 on a number line from 0 to 1. Visually see which is greater.

Order multiple decimals: "Put in order: 0.4, 0.45, 0.39. First, 0.4 = 0.40. Compare tenths: 0.39 (3 tenths), 0.40 (4 tenths), 0.45 (4 tenths). Between 0.40 and 0.45, compare hundredths. Order: 0.39 < 0.4 < 0.45."

Guided Practice:
Compare pairs of decimals, order sets of decimals, use number lines, explain reasoning.

Independent Application:
Mixed comparison practice, ordering activities, real-world contexts (measurements, money), error analysis.

DIFFERENTIATION:

Struggling Learners:
- Always write with same number of decimal places
- Use place value charts
- Visual models and number lines
- Focus on tenths only first
- Lots of examples

Advanced Learners:
- Extend to thousandths
- Compare decimals and fractions
- Order without rewriting
- Create comparison problems
- Decimal puzzles

ASSESSMENT INDICATORS:
- Compares decimals correctly
- Uses symbols accurately
- Applies place value reasoning
- Handles different lengths (0.3 vs 0.25)
- Explains comparison strategy

VOCABULARY:
compare, greater than, less than, equal, place value, tenths, hundredths, equivalent

CONNECTION TO FUTURE LEARNING:
Decimal comparison supports ordering, rounding, and operations with decimals.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Decimals' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================
-- FACTORS AND MULTIPLES UNIT
-- ============================================

-- Factor Pairs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Factor Pairs' AND grade_level_min = 4),
  'Factor Pairs Topic Guide',
  'Comprehensive teaching approach for finding factors',
  'FACTOR PAIRS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand multiplication, have fact fluency, understand division, and know the relationship between multiplication and division.

LEARNING OBJECTIVES:
Students will find all factor pairs for numbers 1-100, understand that factors multiply to give a product, use systematic approaches to find all factors, recognize that 1 and the number itself are always factors, and apply factors to problem-solving.

KEY CONCEPTS:
1. Factors are numbers that multiply to give a product
2. Every number has at least two factors: 1 and itself
3. Factor pairs come in twos (except perfect squares)
4. Use systematic testing to find all factors
5. Arrays can represent factor pairs

COMMON MISCONCEPTIONS:
- Missing factor pairs (not being systematic)
- Confusing factors with multiples
- Forgetting 1 and the number itself
- Stopping before finding all pairs
- Thinking factors must be less than the number (they are!)

TEACHING SEQUENCE:

Hook/Engagement:
"I''m thinking of a number. It has exactly 6 factors. What could it be? Learning about factors helps us understand numbers in a whole new way!"

Direct Instruction:
Define factor: "A factor of 24 is a number that divides 24 evenly. If 24 ÷ ? has no remainder, ? is a factor."

Systematic search: "To find factors of 24, I test each number starting from 1:
- 24 ÷ 1 = 24 ✓ Factor pair: 1 and 24
- 24 ÷ 2 = 12 ✓ Factor pair: 2 and 12
- 24 ÷ 3 = 8 ✓ Factor pair: 3 and 8
- 24 ÷ 4 = 6 ✓ Factor pair: 4 and 6
- 24 ÷ 5 = 4.8 ✗
I can stop at 6 because 6 × 6 = 36 > 24."

Connect to arrays: "24 can make arrays: 1×24, 2×12, 3×8, 4×6."

Guided Practice:
Find factor pairs systematically, use arrays to visualize, identify when to stop checking, compare factor counts.

Independent Application:
Find factors for various numbers, factor pair challenges, word problems using factors, compare numbers by their factors.

DIFFERENTIATION:

Struggling Learners:
- Use multiplication tables as reference
- Start with smaller numbers
- Draw arrays for each factor pair
- Provide factor pair organizers
- Practice division skills

Advanced Learners:
- Numbers beyond 100
- Find numbers with exactly n factors
- Explore patterns in factor counts
- Connect to prime factorization
- Perfect squares investigation

ASSESSMENT INDICATORS:
- Finds all factor pairs
- Uses systematic approach
- Includes 1 and the number
- Connects to multiplication/division
- Applies to problems

VOCABULARY:
factor, factor pair, product, divisible, array, multiply

CONNECTION TO FUTURE LEARNING:
Factor understanding supports prime factorization, GCF, LCM, and simplifying fractions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factor Pairs' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Prime and Composite
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Prime and Composite' AND grade_level_min = 4),
  'Prime and Composite Topic Guide',
  'Comprehensive teaching approach for number classification',
  'PRIME AND COMPOSITE NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should find factor pairs, understand factors, use division for testing, and recognize multiples.

LEARNING OBJECTIVES:
Students will distinguish prime from composite numbers, understand that prime numbers have exactly two factors, identify all prime numbers to 100, recognize 1 as neither prime nor composite, and apply prime/composite concepts.

KEY CONCEPTS:
1. Prime: exactly 2 factors (1 and itself)—examples: 2, 3, 5, 7
2. Composite: more than 2 factors—examples: 4, 6, 8, 9
3. 1 is neither prime nor composite (only 1 factor)
4. 2 is the only even prime number
5. All composites can be expressed as products of primes

COMMON MISCONCEPTIONS:
- Thinking 1 is prime (it only has ONE factor)
- Thinking all odd numbers are prime
- Not recognizing 2 as prime (only even prime)
- Confusing prime with odd
- Not understanding why the definitions matter

TEACHING SEQUENCE:

Hook/Engagement:
"Some numbers can only be divided by 1 and themselves—they''re called PRIME. Others have more divisors—they''re COMPOSITE. This classification has been studied for thousands of years!"

Direct Instruction:
Define prime: "A prime number has exactly 2 factors: 1 and itself. For example, 7 has factors 1 and 7 only. Seven is prime."

Define composite: "A composite number has more than 2 factors. For example, 12 has factors 1, 2, 3, 4, 6, and 12. Twelve is composite."

Clarify 1: "One has only ONE factor (itself). Prime numbers need exactly two different factors, so 1 is NOT prime. We say 1 is neither prime nor composite."

Explore 2: "Two is special—it''s the ONLY even prime! All other even numbers are divisible by 2, so they have more than 2 factors."

Use the Sieve of Eratosthenes to find all primes to 100.

Guided Practice:
Classify numbers as prime or composite, use the Sieve method, explain classifications, find primes in different ranges.

Independent Application:
Prime hunts, classification practice, Sieve activities, number puzzles.

DIFFERENTIATION:

Struggling Learners:
- List factors first, then classify
- Start with small numbers (1-30)
- Color-coded Sieve
- Focus on testing for divisibility
- Prime reference chart

Advanced Learners:
- Find primes beyond 100
- Explore twin primes
- Goldbach''s conjecture exploration
- Prime factorization introduction
- Patterns in primes

ASSESSMENT INDICATORS:
- Correctly classifies prime and composite
- Explains reasoning using factors
- Knows 1 is neither prime nor composite
- Identifies 2 as only even prime
- Finds primes efficiently

VOCABULARY:
prime, composite, factor, divisor, Sieve of Eratosthenes, classify

CONNECTION TO FUTURE LEARNING:
Prime and composite understanding supports prime factorization, cryptography concepts, and number theory.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Prime and Composite' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Multiples
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiples' AND grade_level_min = 4),
  'Multiples Topic Guide',
  'Comprehensive teaching approach for understanding multiples',
  'MULTIPLES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand multiplication, skip count fluently, know multiplication facts, and understand factors.

LEARNING OBJECTIVES:
Students will find multiples of any number, understand that multiples are products of a number and whole numbers, recognize the infinite nature of multiples, distinguish multiples from factors, and use multiples in problem-solving.

KEY CONCEPTS:
1. Multiples are products: 3 × 1 = 3, 3 × 2 = 6, 3 × 3 = 9... (multiples of 3)
2. Skip counting generates multiples
3. Every number has infinitely many multiples
4. A multiple is always ≥ the original number (for whole number multipliers)
5. Factors and multiples are related but different

COMMON MISCONCEPTIONS:
- Confusing multiples with factors
- Thinking multiples stop at some point
- Not including the number itself as a multiple
- Thinking multiples must be small
- Confusion between "multiple of" and "factor of"

TEACHING SEQUENCE:

Hook/Engagement:
"Multiples of 5: 5, 10, 15, 20... they go on forever! Multiples are like the multiplication table stretched to infinity. Let''s explore patterns and uses of multiples."

Direct Instruction:
Define multiple: "Multiples of 4 are what you get when you multiply 4 by 1, 2, 3, 4... So: 4, 8, 12, 16, 20, 24..."

Connect to skip counting: "Skip counting by 6 gives multiples of 6: 6, 12, 18, 24, 30..."

Infinite multiples: "There''s no largest multiple—they go forever!"

Distinguish from factors: "Factors of 12 divide 12 evenly: 1, 2, 3, 4, 6, 12. Multiples of 12 are 12 multiplied by whole numbers: 12, 24, 36, 48... Factors are small; multiples keep growing!"

Patterns in multiples: "Multiples of 5 end in 0 or 5. Multiples of 2 are even. Multiples of 10 end in 0."

Guided Practice:
List multiples, identify if a number is a multiple, distinguish factors from multiples, find patterns.

Independent Application:
Multiple lists, true/false about multiples, word problems, pattern exploration.

DIFFERENTIATION:

Struggling Learners:
- Use skip counting
- Multiplication table reference
- Start with 2s, 5s, 10s
- Visual patterns on hundred chart
- Clear factor vs multiple comparison

Advanced Learners:
- Common multiples
- LCM introduction
- Multiples with larger numbers
- Multiple patterns investigation
- Application problems

ASSESSMENT INDICATORS:
- Lists multiples correctly
- Distinguishes from factors
- Recognizes patterns in multiples
- Understands infinite nature
- Applies to problems

VOCABULARY:
multiple, product, skip count, infinite, pattern

CONNECTION TO FUTURE LEARNING:
Understanding multiples prepares students for LCM, common denominators, and divisibility.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiples' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Common Factors and Multiples
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Common Factors and Multiples' AND grade_level_min = 4),
  'Common Factors and Multiples Topic Guide',
  'Comprehensive teaching approach for GCF and LCM foundations',
  'COMMON FACTORS AND MULTIPLES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must find factor pairs, list multiples, distinguish factors from multiples, and understand divisibility.

LEARNING OBJECTIVES:
Students will find common factors of two numbers, find the greatest common factor (GCF), find common multiples of two numbers, find the least common multiple (LCM), and apply these to problem-solving.

KEY CONCEPTS:
1. Common factors appear in the factor lists of both numbers
2. GCF is the largest common factor
3. Common multiples appear in the multiple lists of both numbers
4. LCM is the smallest common multiple
5. GCF and LCM have practical applications

COMMON MISCONCEPTIONS:
- Confusing GCF with LCM
- Finding common numbers incorrectly
- Stopping before finding greatest or least
- Confusing factors and multiples
- Not systematically listing

TEACHING SEQUENCE:

Hook/Engagement:
"When would you need a number that works for 6 AND 8? If hot dog buns come in packs of 6 and hot dogs in packs of 8, how many of each to buy for equal amounts? That''s where common multiples help!"

Direct Instruction:
Common Factors: "Factors of 12: 1, 2, 3, 4, 6, 12. Factors of 18: 1, 2, 3, 6, 9, 18. Common factors: 1, 2, 3, 6. GCF = 6 (greatest of the common factors)."

Common Multiples: "Multiples of 6: 6, 12, 18, 24, 30, 36... Multiples of 8: 8, 16, 24, 32, 40, 48... Common multiples: 24, 48... LCM = 24 (least of the common multiples)."

Applications:
- GCF: Simplifying fractions, finding largest tile size
- LCM: Common denominators, scheduling problems

Guided Practice:
Find common factors and GCF, find common multiples and LCM, solve application problems, compare approaches.

Independent Application:
Mixed GCF/LCM practice, word problems, real-world applications, explain reasoning.

DIFFERENTIATION:

Struggling Learners:
- List factors/multiples first
- Use Venn diagrams to find common
- Focus on one concept at a time
- Smaller numbers
- Visual organizers

Advanced Learners:
- Larger numbers
- Prime factorization method
- Relationship between GCF and LCM
- Complex application problems
- Explore GCF × LCM = product rule

ASSESSMENT INDICATORS:
- Finds common factors/multiples correctly
- Identifies GCF and LCM
- Distinguishes between the two concepts
- Applies to problems
- Explains the process

VOCABULARY:
common factor, common multiple, greatest common factor (GCF), least common multiple (LCM)

CONNECTION TO FUTURE LEARNING:
GCF and LCM are essential for fraction operations, simplifying, and algebraic factoring.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Common Factors and Multiples' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================
-- MEASUREMENT UNIT
-- ============================================

-- Unit Conversion
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Unit Conversion' AND grade_level_min = 4),
  'Unit Conversion Topic Guide',
  'Comprehensive teaching approach for measurement conversion',
  'UNIT CONVERSION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand measurement concepts, multiply and divide with larger numbers, understand relative sizes of units, and use measurement vocabulary.

LEARNING OBJECTIVES:
Students will convert between units in the same system, use conversion factors, understand relative sizes (larger unit = fewer of them), apply conversion to problem-solving, and work with customary and metric systems.

KEY CONCEPTS:
1. Larger units require fewer of them (12 inches = 1 foot)
2. To convert larger to smaller: multiply
3. To convert smaller to larger: divide
4. Conversion factors are multiplication/division relationships
5. Units must match for operations

COMMON MISCONCEPTIONS:
- Multiplying when should divide (and vice versa)
- Not knowing conversion factors
- Errors in multi-step conversions
- Confusing metric and customary
- Not considering reasonableness

TEACHING SEQUENCE:

Hook/Engagement:
"You run 2 miles. Your friend runs 10,000 feet. Who ran farther? We need to convert to compare! Unit conversion is essential for comparing and computing with measurements."

Direct Instruction:
Key conversions to know:
- Length: 12 in = 1 ft, 3 ft = 1 yd, 5280 ft = 1 mi
- Capacity: 8 oz = 1 cup, 2 cups = 1 pint, 2 pints = 1 quart, 4 quarts = 1 gallon
- Mass: 16 oz = 1 lb
- Metric: 100 cm = 1 m, 1000 m = 1 km, 1000 mL = 1 L, 1000 g = 1 kg

Model conversion: "Convert 5 feet to inches. Since 1 foot = 12 inches, I multiply: 5 × 12 = 60 inches."

Model opposite: "Convert 48 inches to feet. Since 12 inches = 1 foot, I divide: 48 ÷ 12 = 4 feet."

Reasonableness: "I should have more small units, fewer large units."

Guided Practice:
Convert in both directions, use tables to organize, word problems, check reasonableness.

Independent Application:
Mixed conversion practice, real-world problems, multi-step conversions, create conversion problems.

DIFFERENTIATION:

Struggling Learners:
- Conversion reference chart
- One system at a time
- Focus on common conversions
- Use ratio tables
- Check "more small units, fewer large units"

Advanced Learners:
- Multi-step conversions
- Mixed units (5 ft 3 in)
- Compare across systems
- Rate problems with conversions
- Create conversion challenges

ASSESSMENT INDICATORS:
- Converts accurately
- Chooses correct operation
- Knows key conversion factors
- Checks reasonableness
- Applies to problems

VOCABULARY:
convert, unit, measurement, equivalent, customary system, metric system, conversion factor

CONNECTION TO FUTURE LEARNING:
Unit conversion extends to rates, proportions, and scientific applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Unit Conversion' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Area and Perimeter Formulas
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area and Perimeter Formulas' AND grade_level_min = 4),
  'Area and Perimeter Formulas Topic Guide',
  'Comprehensive teaching approach for applying measurement formulas',
  'AREA AND PERIMETER FORMULAS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand area and perimeter concepts, multiply and add fluently, work with length measurements, and distinguish area from perimeter.

LEARNING OBJECTIVES:
Students will apply A = l × w for rectangles, apply P = 2l + 2w (or P = 2(l + w)) for rectangles, find side lengths given area or perimeter, solve multi-step problems, and use appropriate units.

KEY CONCEPTS:
1. Area = length × width (square units)
2. Perimeter = 2 × length + 2 × width (linear units)
3. For squares: A = s², P = 4s
4. Given area and one side, find the other: width = Area ÷ length
5. Formulas are efficient, but understanding why they work is essential

COMMON MISCONCEPTIONS:
- Confusing area and perimeter formulas
- Using wrong units (square vs linear)
- Difficulty finding missing dimensions
- Not understanding why formulas work
- Applying rectangle formulas to non-rectangles

TEACHING SEQUENCE:

Hook/Engagement:
"An architect needs to find the area and perimeter for hundreds of rooms. She can''t count squares each time! Formulas make calculations fast. Let''s master them!"

Direct Instruction:
Derive the formulas:
"Area: A rectangle has rows and columns. 8 columns, 5 rows = 8 × 5 = 40 square units. Area = length × width."

"Perimeter: Distance around. For a 8 by 5 rectangle: 8 + 5 + 8 + 5 = 26. That''s 2 × 8 + 2 × 5 = 2(8 + 5) = 26 units."

Apply formulas: "A room is 12 ft by 9 ft. Area = 12 × 9 = 108 sq ft. Perimeter = 2(12 + 9) = 2(21) = 42 ft."

Find missing dimensions: "Area = 48, length = 8. Width = 48 ÷ 8 = 6."

Guided Practice:
Apply formulas, find missing dimensions, solve word problems, distinguish area from perimeter in context.

Independent Application:
Mixed problems, real-world applications, design challenges, multi-step problems.

DIFFERENTIATION:

Struggling Learners:
- Formula reference cards
- Draw pictures for every problem
- Practice identifying which formula
- Use grid paper to check
- One formula at a time

Advanced Learners:
- Composite figures
- Design within constraints
- Optimization (maximize area for given perimeter)
- L-shaped rooms
- Connect to algebraic expressions

ASSESSMENT INDICATORS:
- Applies formulas correctly
- Uses appropriate units
- Finds missing dimensions
- Distinguishes area from perimeter
- Solves multi-step problems

VOCABULARY:
formula, area, perimeter, length, width, square units, linear units

CONNECTION TO FUTURE LEARNING:
Formulas extend to other shapes, surface area, volume, and algebraic generalization.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area and Perimeter Formulas' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Angle Measurement
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angle Measurement' AND grade_level_min = 4),
  'Angle Measurement Topic Guide',
  'Comprehensive teaching approach for using protractors',
  'ANGLE MEASUREMENT - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should recognize angle types, understand that angles measure rotation, identify rays and vertices, and use measurement tools.

LEARNING OBJECTIVES:
Students will measure angles using a protractor, draw angles of specified measures, understand degree as a unit of angle measure, measure angles in different orientations, and solve problems involving angle measures.

KEY CONCEPTS:
1. Angles are measured in degrees (°)
2. A full rotation = 360°, straight angle = 180°, right angle = 90°
3. Protractors have two scales (for different orientations)
4. Align protractor correctly: vertex at center, one ray at 0°
5. Read the scale that starts at 0° for the aligned ray

COMMON MISCONCEPTIONS:
- Reading the wrong protractor scale
- Not aligning vertex at center point
- Not aligning ray at 0°
- Thinking angle size depends on ray length
- Difficulty with angles not in standard orientation

TEACHING SEQUENCE:

Hook/Engagement:
"Angles are everywhere—in architecture, sports, art. But how do we measure them precisely? A protractor is like a ruler for angles. Let''s learn to use this essential tool!"

Direct Instruction:
Protractor parts: "Two scales (0-180), center point, baseline."

Measuring:
1. Place vertex at center point
2. Align one ray with 0° line
3. Read where other ray crosses scale
4. Use the scale that starts at 0 for your aligned ray

Model measuring various angles, including non-standard orientations.

Drawing: "To draw a 65° angle: mark a point, draw a ray, align protractor, mark 65°, connect."

Guided Practice:
Measure angles, draw angles, measure in different orientations, compare estimates to measures.

Independent Application:
Mixed measuring and drawing, angle puzzles, real-world angle identification, error analysis.

DIFFERENTIATION:

Struggling Learners:
- Use protractors with single scale first
- Practice alignment extensively
- Estimate before measuring
- Angles in standard orientation first
- Large, clear protractors

Advanced Learners:
- Measure reflex angles (>180°)
- Angles in geometric figures
- Create angle art
- Angle relationships
- Connect to circle concepts

ASSESSMENT INDICATORS:
- Measures within 2° accuracy
- Draws angles accurately
- Uses protractor correctly
- Handles different orientations
- Identifies angle types

VOCABULARY:
angle, degree, protractor, vertex, ray, measure, acute, right, obtuse, straight

CONNECTION TO FUTURE LEARNING:
Angle measurement supports geometry, trigonometry, and applications in design and engineering.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angle Measurement' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Angles in Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angles in Problems' AND grade_level_min = 4),
  'Angles in Problems Topic Guide',
  'Comprehensive teaching approach for angle relationships',
  'ANGLES IN PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should measure angles with a protractor, understand degree measurement, know angle types, and add and subtract.

LEARNING OBJECTIVES:
Students will recognize that angles can be decomposed, understand that the sum of parts equals the whole, solve for unknown angles, apply angle relationships, and solve real-world angle problems.

KEY CONCEPTS:
1. Angles can be combined (added) or separated (subtracted)
2. If two angles share a ray, their measures add to the total
3. Complementary angles sum to 90°; supplementary angles sum to 180°
4. Unknown angles can be found using equations
5. Angle relationships appear in geometric figures

COMMON MISCONCEPTIONS:
- Not recognizing additive relationship
- Setting up equations incorrectly
- Forgetting that straight angles = 180°
- Not checking if answer is reasonable
- Difficulty visualizing angle combinations

TEACHING SEQUENCE:

Hook/Engagement:
"An angle is broken into two parts. One part measures 37°, and the total is 90°. What''s the other part? Angle problems use addition and subtraction—but with degrees!"

Direct Instruction:
Decomposing angles: "A 90° angle is split into two parts. If one part is 35°, the other is 90° - 35° = 55°."

Combining angles: "Two adjacent angles measure 48° and 62°. Together they form 48° + 62° = 110°."

Finding unknowns: "∠ABC = 72°. ∠ABD = 30°. If D is between B and C, find ∠DBC. Solution: 72° - 30° = 42°."

Special relationships:
- Complementary: ∠A + ∠B = 90°
- Supplementary: ∠A + ∠B = 180°

Guided Practice:
Solve missing angle problems, identify complementary/supplementary pairs, write equations for angle relationships, verify with measurement.

Independent Application:
Various angle problems, real-world contexts, create angle problems, justify answers.

DIFFERENTIATION:

Struggling Learners:
- Draw and label all angles
- Use color to identify parts
- Check answers with protractor
- Simple number combinations
- Step-by-step problem solving

Advanced Learners:
- Multiple unknown angles
- Angles in polygons
- Algebraic angle expressions
- Create challenging problems
- Explore angle theorems

ASSESSMENT INDICATORS:
- Recognizes angle addition/subtraction situations
- Sets up correct equations
- Solves for unknown angles
- Uses complementary/supplementary relationships
- Justifies answers

VOCABULARY:
decompose, adjacent angles, complementary, supplementary, unknown, equation

CONNECTION TO FUTURE LEARNING:
Angle relationships are foundational for geometry proofs, triangle properties, and parallel line theorems.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angles in Problems' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================
-- GEOMETRY UNIT
-- ============================================

-- Points, Lines, and Rays
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Points, Lines, and Rays' AND grade_level_min = 4),
  'Points Lines and Rays Topic Guide',
  'Comprehensive teaching approach for basic geometric elements',
  'POINTS, LINES, AND RAYS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should identify basic shapes, use rulers, understand straight vs curved, and follow precise directions.

LEARNING OBJECTIVES:
Students will identify and name points, lines, line segments, and rays, understand differences between these elements, use proper notation, draw elements accurately, and identify these in real-world contexts.

KEY CONCEPTS:
1. Point: exact location, no size (labeled with capital letter)
2. Line: extends infinitely in both directions (named by two points or lowercase letter)
3. Line segment: part of a line with two endpoints
4. Ray: starts at one point and extends infinitely in one direction
5. Notation: AB⃗ (ray), AB̄ (segment), AB↔ (line)

COMMON MISCONCEPTIONS:
- Thinking lines have endpoints
- Confusing rays and line segments
- Not understanding infinite extension
- Drawing without proper endpoints/arrows
- Reversing ray notation (ray BA vs AB is different)

TEACHING SEQUENCE:

Hook/Engagement:
"A flashlight beam is like a ray—it starts at the flashlight and goes on forever! A tightrope is like a line segment—it has definite endpoints. Let''s explore the building blocks of geometry!"

Direct Instruction:
Point: "A point is an exact location. It has no size—just position. We name it with a capital letter: Point A."

Line: "A line extends forever in both directions. We draw arrows on both ends. We name it by two points: Line AB or line l."

Line Segment: "A segment is part of a line between two endpoints. It has definite length. Segment AB or AB̄."

Ray: "A ray starts at a point and goes forever in one direction. The starting point comes first in the name. Ray AB starts at A and goes through B."

Draw each with proper notation.

Guided Practice:
Identify elements in diagrams, draw from descriptions, name using notation, find real-world examples.

Independent Application:
Mixed identification, drawing practice, notation exercises, geometry scavenger hunt.

DIFFERENTIATION:

Struggling Learners:
- Focus on one element at a time
- Emphasize endpoint vs arrow
- Use physical models
- Simplified notation
- Repeated practice with feedback

Advanced Learners:
- Multiple elements in one figure
- Intersection of lines
- Counting problems (how many lines through 4 points?)
- Explore planes
- Create geometric artwork

ASSESSMENT INDICATORS:
- Identifies all four elements correctly
- Uses proper notation
- Draws accurately with endpoints/arrows
- Explains differences
- Finds real-world examples

VOCABULARY:
point, line, line segment, ray, endpoint, extends, infinite, notation

CONNECTION TO FUTURE LEARNING:
These basic elements combine to form angles, shapes, and support all geometric study.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Points, Lines, and Rays' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Classifying Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Classifying Angles' AND grade_level_min = 4),
  'Classifying Angles Topic Guide',
  'Comprehensive teaching approach for angle types',
  'CLASSIFYING ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should recognize angles, understand that angles measure rotation, have some experience with right angles, and use rays and vertices.

LEARNING OBJECTIVES:
Students will classify angles as acute, right, obtuse, or straight, estimate angle measures, use a right angle as a benchmark, identify angles in shapes and real life, and understand the degree ranges for each type.

KEY CONCEPTS:
1. Right angle: exactly 90° (square corner)
2. Acute angle: less than 90° (smaller than right)
3. Obtuse angle: between 90° and 180° (larger than right, less than straight)
4. Straight angle: exactly 180° (forms a line)
5. Angles can be estimated by comparing to known benchmarks

COMMON MISCONCEPTIONS:
- Confusing acute and obtuse
- Thinking angle size depends on ray length
- Not recognizing rotated right angles
- Difficulty estimating without protractor
- Missing angles that aren''t in standard orientation

TEACHING SEQUENCE:

Hook/Engagement:
"Some doors are slightly open (acute), some are halfway open (right), some are almost closed from the other side (obtuse). Angles are everywhere—let''s learn to name them!"

Direct Instruction:
Right angle benchmark: "A right angle is exactly 90°—like the corner of a book. We mark it with a small square."

Acute: "An acute angle is LESS than 90°. It''s ''sharp''—think of the word ''acute'' meaning sharp. Examples: 30°, 45°, 60°."

Obtuse: "An obtuse angle is GREATER than 90° but less than 180°. It''s ''wide open.'' Examples: 100°, 120°, 150°."

Straight: "A straight angle is exactly 180°—the two rays form a straight line."

Practice identifying in various orientations.

Guided Practice:
Classify given angles, estimate before measuring, identify in shapes, sort angles by type.

Independent Application:
Angle hunts in the classroom, classification practice, estimation challenges, angle artwork.

DIFFERENTIATION:

Struggling Learners:
- Physical right angle tool for comparison
- Acute = smaller, Obtuse = bigger than right
- Focus on recognition before estimation
- Limited orientations initially
- Mnemonics for vocabulary

Advanced Learners:
- Reflex angles (>180°)
- Angles in regular polygons
- Precision estimation
- Classify then measure to verify
- Design with specific angle types

ASSESSMENT INDICATORS:
- Classifies angles correctly
- Uses right angle as benchmark
- Estimates reasonably
- Identifies angles in various contexts
- Uses vocabulary accurately

VOCABULARY:
acute angle, right angle, obtuse angle, straight angle, classify, degrees, benchmark

CONNECTION TO FUTURE LEARNING:
Angle classification supports angle measurement, triangle classification, and geometric reasoning.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Classifying Angles' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Parallel and Perpendicular Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parallel and Perpendicular Lines' AND grade_level_min = 4),
  'Parallel and Perpendicular Lines Topic Guide',
  'Comprehensive teaching approach for line relationships',
  'PARALLEL AND PERPENDICULAR LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand lines and line segments, recognize right angles, use straightedges, and identify angles in shapes.

LEARNING OBJECTIVES:
Students will identify parallel lines, identify perpendicular lines, draw parallel and perpendicular lines, find these relationships in shapes and environment, and understand the geometric definitions.

KEY CONCEPTS:
1. Parallel lines never intersect (always same distance apart)
2. Perpendicular lines intersect at 90° angles
3. Parallel lines can be different lengths (line segments)
4. Perpendicular lines form 4 right angles at intersection
5. These relationships appear in shapes (rectangle sides)

COMMON MISCONCEPTIONS:
- Thinking parallel lines must be the same length
- Thinking perpendicular means any intersection
- Difficulty seeing relationships in different orientations
- Confusing the two types
- Not recognizing relationships in shapes

TEACHING SEQUENCE:

Hook/Engagement:
"Railroad tracks are parallel—they never meet! Street intersections are often perpendicular—meeting at right angles. Let''s explore these special relationships!"

Direct Instruction:
Parallel: "Parallel lines never meet, no matter how far they extend. They''re always the same distance apart. We use the symbol ∥. Like railroad tracks or opposite sides of a rectangle."

Perpendicular: "Perpendicular lines meet at a right angle (90°). We use the symbol ⊥. They form 4 right angles at the intersection. Like the corner of this paper."

In shapes: "In a rectangle, opposite sides are parallel and adjacent sides are perpendicular. In a square, both relationships exist."

Drawing: "To draw parallel lines, use two edges of a ruler. To draw perpendicular lines, use the corner of a piece of paper as a guide."

Guided Practice:
Identify in diagrams and environment, draw parallel and perpendicular lines, find in shapes, verify with right angle check.

Independent Application:
Identification practice, drawing challenges, shape analysis, real-world hunt.

DIFFERENTIATION:

Struggling Learners:
- Parallel = "train tracks"
- Perpendicular = "plus sign"
- Use physical models
- Check with corner of paper
- One relationship at a time

Advanced Learners:
- Lines that are neither (intersecting but not perpendicular)
- Parallel and perpendicular in 3D
- Coordinate plane connections
- Geometric constructions
- Design projects

ASSESSMENT INDICATORS:
- Identifies parallel lines correctly
- Identifies perpendicular lines correctly
- Draws both types accurately
- Finds in shapes and environment
- Uses vocabulary and symbols

VOCABULARY:
parallel, perpendicular, intersect, right angle, relationship, symbol (∥, ⊥)

CONNECTION TO FUTURE LEARNING:
These relationships are essential for shape classification, coordinate geometry, and geometric proofs.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parallel and Perpendicular Lines' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Line Symmetry
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Line Symmetry' AND grade_level_min = 4),
  'Line Symmetry Topic Guide',
  'Comprehensive teaching approach for reflectional symmetry',
  'LINE SYMMETRY - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should recognize basic shapes, understand reflection/folding, identify matching parts, and use rulers.

LEARNING OBJECTIVES:
Students will identify lines of symmetry, determine how many lines of symmetry a shape has, draw lines of symmetry accurately, create symmetric designs, and recognize symmetry in nature and art.

KEY CONCEPTS:
1. A line of symmetry divides a shape into two matching parts
2. Folding along the line makes both sides match exactly
3. Some shapes have no lines of symmetry, some have one, some have many
4. Regular polygons have as many lines of symmetry as sides
5. Circles have infinite lines of symmetry

COMMON MISCONCEPTIONS:
- Thinking any line through the middle is a line of symmetry
- Missing diagonal lines of symmetry
- Thinking all shapes have symmetry
- Counting lines incorrectly for shapes
- Confusing lines of symmetry with lines of division

TEACHING SEQUENCE:

Hook/Engagement:
"Your face is almost symmetric! Butterflies are too. Nature loves symmetry. Let''s discover which shapes have this special property and how to find their lines of symmetry."

Direct Instruction:
Define symmetry: "If you can fold a shape along a line and both halves match exactly, that line is a line of symmetry."

Demonstrate with paper folding: Fold rectangle, square, equilateral triangle. Show the fold lines = lines of symmetry.

Count lines:
- Rectangle: 2 lines of symmetry
- Square: 4 lines of symmetry
- Equilateral triangle: 3 lines
- Circle: infinite lines
- Scalene triangle: 0 lines

Drawing lines: "Use a ruler. Check: would both sides match if you folded?"

Guided Practice:
Find lines in various shapes, count lines of symmetry, draw lines of symmetry, sort shapes by symmetry count.

Independent Application:
Symmetry worksheets, create symmetric designs, symmetry in letters/numbers, nature symmetry hunt.

DIFFERENTIATION:

Struggling Learners:
- Use paper folding extensively
- Mirror/reflection tools
- Focus on vertical lines first
- Simple shapes before complex
- Trace and fold

Advanced Learners:
- Rotational symmetry introduction
- Create shapes with specific symmetry counts
- 3D symmetry exploration
- Tessellation connections
- Symmetry in art/architecture analysis

ASSESSMENT INDICATORS:
- Identifies lines of symmetry correctly
- Counts lines accurately
- Draws lines of symmetry
- Creates symmetric designs
- Explains why a line is/isn''t a line of symmetry

VOCABULARY:
line of symmetry, symmetric, fold, reflection, match, regular polygon

CONNECTION TO FUTURE LEARNING:
Symmetry understanding supports geometry, coordinate reflections, and understanding transformations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Line Symmetry' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Classifying Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Classifying Triangles' AND grade_level_min = 4),
  'Classifying Triangles Topic Guide',
  'Comprehensive teaching approach for triangle classification',
  'CLASSIFYING TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should recognize triangles, classify angles, measure with rulers and protractors, and understand vocabulary for angles.

LEARNING OBJECTIVES:
Students will classify triangles by sides (scalene, isosceles, equilateral), classify triangles by angles (acute, right, obtuse), use dual classification (e.g., right isosceles), identify triangle types in various orientations, and understand properties of each type.

KEY CONCEPTS:
1. By sides: equilateral (3 equal), isosceles (2 equal), scalene (no equal sides)
2. By angles: acute (3 acute), right (1 right), obtuse (1 obtuse)
3. Triangles can be classified by BOTH criteria
4. Some combinations are impossible (equilateral right)
5. Classification doesn''t depend on orientation

COMMON MISCONCEPTIONS:
- Thinking equilateral is only one specific shape
- Not recognizing triangles in different orientations
- Confusing isosceles and equilateral
- Not applying dual classification
- Thinking right triangles must have the right angle at bottom

TEACHING SEQUENCE:

Hook/Engagement:
"Not all triangles are created equal! Some have matching sides, some have right angles. Let''s become triangle experts who can classify ANY triangle in two different ways!"

Direct Instruction:
By sides:
- Equilateral: "Equi" = equal. All 3 sides the same length. All angles are 60°.
- Isosceles: At least 2 sides equal. The angles opposite equal sides are also equal.
- Scalene: No sides equal. All angles different.

By angles:
- Acute: ALL three angles are less than 90°.
- Right: Exactly ONE angle is 90°.
- Obtuse: Exactly ONE angle is greater than 90°.

Combined: "This triangle is isosceles AND right—a right isosceles triangle!"

Show examples of each, including rotated versions.

Guided Practice:
Classify by sides, classify by angles, dual classification, measure to verify, sort triangles.

Independent Application:
Triangle classification practice, create triangles with specific classifications, triangle hunt, design projects.

DIFFERENTIATION:

Struggling Learners:
- One classification system at a time
- Visual reference charts
- Measure sides and angles explicitly
- Standard orientations first
- Fewer categories to start

Advanced Learners:
- All 6 classifications (combinations)
- Impossible combinations and why
- Triangle inequality exploration
- Angle sum property
- Construct specific triangle types

ASSESSMENT INDICATORS:
- Classifies by sides correctly
- Classifies by angles correctly
- Uses dual classification
- Recognizes in various orientations
- Explains classification reasoning

VOCABULARY:
equilateral, isosceles, scalene, acute triangle, right triangle, obtuse triangle, classify

CONNECTION TO FUTURE LEARNING:
Triangle classification supports triangle properties, congruence, similarity, and trigonometry.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Classifying Triangles' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;
