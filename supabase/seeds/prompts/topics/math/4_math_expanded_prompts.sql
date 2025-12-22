-- Grade 4 Math Expanded Topic Prompts
-- Comprehensive teaching prompts for 122 expanded Grade 4 Math topics
-- ============================================================================

-- ============================================================================
-- PLACE VALUE EXPANSION (6 topics)
-- ============================================================================

-- Numbers to Millions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Numbers to Millions' AND grade_level_min = 4),
  'Numbers to Millions Topic Guide', 'Teaching large numbers to millions',
  'NUMBERS TO MILLIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Mastery of place value to thousands
- Understanding of place value patterns
- Ability to read and write 4-digit numbers
- Knowledge of grouping by tens

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read and write numbers up to one million in standard, word, and expanded form
2. Identify the place value of each digit in numbers to millions
3. Recognize patterns in the place value system
4. Use commas correctly to separate periods in large numbers

KEY CONCEPTS:
- Each period (ones, thousands, millions) has three places
- Commas separate periods to make numbers easier to read
- Place value follows a consistent pattern of powers of 10
- Zero acts as a placeholder in multi-digit numbers
- Standard form uses digits, word form uses words, expanded form shows place values

COMMON MISCONCEPTIONS:
- Forgetting to use commas or placing them incorrectly
- Reading numbers incorrectly (saying "one hundred thousand" instead of "one million")
- Not understanding that zero can be a placeholder
- Confusing the value of digits in different places

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show population numbers of major cities or states. Ask: "How do we read these huge numbers?"
   Display: 8,175,000 (New York City population)

2. DIRECT INSTRUCTION (12 minutes):
   Use a place value chart extending to millions.
   Model reading: 3,456,789 as "three million, four hundred fifty-six thousand, seven hundred eighty-nine"
   Show how commas separate periods (ones, thousands, millions).
   Demonstrate writing numbers in standard, word, and expanded form.

3. GUIDED PRACTICE (12 minutes):
   Read numbers aloud together: 1,234,567 / 5,000,008 / 2,050,300
   Write numbers from word form to standard form as a class.
   Use place value charts to identify the value of specific digits.

4. INDEPENDENT PRACTICE (10 minutes):
   Students read and write numbers to millions.
   Complete exercises converting between forms.
   Identify the value of underlined digits in large numbers.

DIFFERENTIATION:
For Struggling Learners:
- Provide place value charts with period labels
- Start with numbers to hundred thousands before millions
- Use color-coding for different periods
- Practice with concrete manipulatives like base-ten blocks

For Advanced Learners:
- Extend to numbers beyond millions (billions)
- Compare and order numbers to millions
- Solve word problems involving populations, distances, etc.
- Create their own real-world examples with large numbers

ASSESSMENT INDICATORS:
- Correctly reads numbers to millions without hesitation
- Writes numbers with proper comma placement
- Accurately converts between standard, word, and expanded forms
- Explains the value of digits in different places', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Numbers to Millions' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Place Value Relationships
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Place Value Relationships' AND grade_level_min = 4),
  'Place Value Relationships Topic Guide', 'Understanding 10 times and 1/10 relationships',
  'PLACE VALUE RELATIONSHIPS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Strong understanding of place value
- Multiplication by 10, 100, 1000
- Division by 10
- Understanding of patterns in the base-ten system

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize that a digit in one place is 10 times the value of the same digit in the place to its right
2. Understand that a digit is 1/10 of the value of the same digit in the place to its left
3. Apply these relationships to compare numbers and solve problems
4. Use place value relationships to multiply and divide by powers of 10

KEY CONCEPTS:
- Each place value is 10 times greater than the place to its right
- Each place value is 1/10 of the place to its left
- Moving a digit one place to the left multiplies its value by 10
- Moving a digit one place to the right divides its value by 10
- These patterns extend infinitely in both directions

COMMON MISCONCEPTIONS:
- Confusing "10 times greater" with "10 more"
- Not understanding that 1/10 is the inverse of 10 times
- Thinking the relationships only work with specific numbers
- Forgetting that these patterns work in both directions

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show the number 3,333. Ask: "How is each 3 different? How are they related?"
   Guide students to see that each 3 is 10 times the value of the 3 to its right.

2. DIRECT INSTRUCTION (11 minutes):
   Create a place value chart: 3,000 / 300 / 30 / 3
   Show that 300 is 10 times 30, and 30 is 1/10 of 300.
   Use arrows to show relationships between places.
   Demonstrate with different numbers: 5,555 and 2,222.
   Connect to multiplication and division by 10.

3. GUIDED PRACTICE (12 minutes):
   Complete statements: "7,000 is ___ times 700" and "40 is 1/10 of ___"
   Identify relationships in numbers like 8,888 and 4,444.
   Solve problems: "If 6 = 6 ones, what does 60 equal? 600?"

4. INDEPENDENT PRACTICE (10 minutes):
   Fill in missing values using 10x and 1/10 relationships.
   Compare pairs of digits in large numbers.
   Apply relationships to solve multiplication/division problems.

DIFFERENTIATION:
For Struggling Learners:
- Use base-ten blocks to show concrete relationships
- Provide a reference chart showing 10x and 1/10 patterns
- Start with simpler numbers (tens and hundreds only)
- Use color-coding to highlight place value positions

For Advanced Learners:
- Extend patterns to decimals (tenths and hundredths)
- Explore relationships across multiple place values
- Apply to scientific notation introduction
- Create real-world problems demonstrating these relationships

ASSESSMENT INDICATORS:
- Correctly identifies 10x and 1/10 relationships
- Explains why these patterns work using place value
- Applies relationships to multiply and divide by powers of 10
- Recognizes patterns in numbers with repeated digits', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Place Value Relationships' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Comparing Large Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Large Numbers' AND grade_level_min = 4),
  'Comparing Large Numbers Topic Guide', 'Compare numbers to millions',
  'COMPARING LARGE NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Reading and writing numbers to millions
- Understanding place value positions
- Using comparison symbols (<, >, =)
- Comparing numbers to thousands

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare two numbers up to one million using place value
2. Use symbols <, >, and = correctly with large numbers
3. Identify which digit determines the comparison
4. Explain comparison reasoning using place value language

KEY CONCEPTS:
- Always compare starting from the leftmost place (highest value)
- The first place where digits differ determines the comparison
- If a number has more digits, it is greater (given both are positive)
- Equal numbers have the same digit in every place value position
- Commas help organize numbers but don\'t affect comparison

COMMON MISCONCEPTIONS:
- Comparing the number of digits without considering place value
- Comparing from right to left instead of left to right
- Being confused by zeros in the middle of numbers
- Thinking longer numbers are always greater (without checking places)

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present two city populations: 3,456,789 vs 3,498,012
   Ask: "Which city has more people? How can we tell?"

2. DIRECT INSTRUCTION (10 minutes):
   Model the comparison process step-by-step:
   - Align numbers by place value
   - Compare from left to right
   - Stop at the first place where digits differ
   Use examples: 4,567,890 vs 4,562,000
   Show that the ten-thousands place (6 vs 6, then 7 vs 2) determines the answer.

3. GUIDED PRACTICE (12 minutes):
   Compare numbers together: 2,345,678 ___ 2,354,678
   Discuss which place value "decides" the comparison.
   Practice with numbers that have zeros: 5,003,000 ___ 5,030,000
   Include numbers with different digit counts: 999,999 ___ 1,000,000

4. INDEPENDENT PRACTICE (12 minutes):
   Students compare pairs of large numbers.
   Circle the digit that determines each comparison.
   Write comparison statements using <, >, =.
   Create their own number pairs to compare.

DIFFERENTIATION:
For Struggling Learners:
- Provide place value charts to align numbers
- Use highlighters to mark the deciding digit
- Start with numbers that differ in the millions place
- Practice with fewer digits before extending to millions

For Advanced Learners:
- Compare three or more numbers at once
- Order large numbers from least to greatest
- Create comparison problems with specific constraints
- Apply to real-world data (populations, distances, budgets)

ASSESSMENT INDICATORS:
- Correctly compares numbers to millions
- Identifies the place value that determines comparison
- Uses comparison symbols accurately
- Explains reasoning using place value terminology', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Large Numbers' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Ordering Large Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ordering Large Numbers' AND grade_level_min = 4),
  'Ordering Large Numbers Topic Guide', 'Order numbers from least to greatest',
  'ORDERING LARGE NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Comparing two numbers to millions
- Understanding of place value
- Using number lines with large numbers
- Concepts of "least" and "greatest"

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Order three or more numbers from least to greatest
2. Order numbers from greatest to least
3. Use place value strategies to organize numbers
4. Apply ordering to real-world contexts

KEY CONCEPTS:
- Least to greatest means ascending order (smallest to largest)
- Greatest to least means descending order (largest to smallest)
- Compare numbers systematically using place value
- Numbers can be organized by comparing leftmost digits first
- Visual representations (number lines) can help order numbers

COMMON MISCONCEPTIONS:
- Confusing ascending and descending order
- Not systematically comparing all numbers
- Assuming that numbers with more digits are always greater
- Making careless errors when writing numbers in order

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show distances from Earth to different planets in miles.
   Ask: "Can we put these in order from closest to farthest?"
   (Mercury: 48,000,000 / Venus: 162,000,000 / Mars: 140,000,000)

2. DIRECT INSTRUCTION (11 minutes):
   Model ordering 4 numbers: 3,456,789 / 3,465,000 / 3,400,000 / 3,499,999
   Strategy 1: Compare all numbers to find the smallest, then repeat
   Strategy 2: Organize by the leftmost differing digit
   Use a place value chart to align and compare
   Show how to write numbers in both ascending and descending order

3. GUIDED PRACTICE (12 minutes):
   Order numbers together: 5,234,567 / 5,243,000 / 5,230,000 / 5,299,999
   Discuss which number is least, which is greatest, and how we know
   Practice ordering from both least to greatest and greatest to least
   Use number lines to visualize the ordering

4. INDEPENDENT PRACTICE (11 minutes):
   Students order sets of 4-5 large numbers
   Include ascending and descending order tasks
   Apply to real-world data (populations, distances, budgets)
   Create their own sets of numbers to order

DIFFERENTIATION:
For Struggling Learners:
- Start with ordering just 3 numbers
- Provide place value charts for alignment
- Use color-coding to highlight the deciding digits
- Allow use of comparison symbols to scaffold the process

For Advanced Learners:
- Order 6 or more numbers
- Mix numbers with different digit counts
- Create ordering problems with specific rules
- Analyze real datasets and explain patterns

ASSESSMENT INDICATORS:
- Accurately orders numbers from least to greatest
- Correctly orders from greatest to least
- Uses systematic strategies rather than guessing
- Explains the reasoning behind their ordering decisions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ordering Large Numbers' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Rounding Large Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rounding Large Numbers' AND grade_level_min = 4),
  'Rounding Large Numbers Topic Guide', 'Round to any place value',
  'ROUNDING LARGE NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding place value to millions
- Rounding to nearest 10 and 100
- Number line skills
- Understanding "about" vs "exact"

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Round numbers to any place value (tens through millions)
2. Use the rounding rule: 5 or greater rounds up, less than 5 rounds down
3. Identify when rounding is appropriate in real-world contexts
4. Estimate using rounded numbers

KEY CONCEPTS:
- Rounding makes numbers easier to work with mentally
- Identify the place you\'re rounding to, then look at the digit to its right
- If the digit is 5 or greater, round up; if less than 5, round down
- All digits to the right of the rounding place become zeros
- Rounded numbers are estimates, not exact values

COMMON MISCONCEPTIONS:
- Rounding all digits instead of just changing one place
- Forgetting to change digits to the left when rounding up (e.g., 4,987 → 4,000 instead of 5,000)
- Not understanding when to use rounded vs exact numbers
- Confusing which place value to round to

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show a news headline: "Nearly 3,000,000 people attended the festival"
   Ask: "Do you think exactly 3,000,000 people came? Why might they round?"
   Discuss when estimates are useful vs when exact numbers matter.

2. DIRECT INSTRUCTION (12 minutes):
   Review the rounding rule with a number line visual
   Model rounding 3,456,789 to different place values:
   - Nearest ten: 3,456,790
   - Nearest hundred: 3,456,800
   - Nearest thousand: 3,457,000
   - Nearest ten thousand: 3,460,000
   - Nearest hundred thousand: 3,500,000
   - Nearest million: 3,000,000
   Emphasize identifying the place, checking the digit to the right, and applying the rule

3. GUIDED PRACTICE (11 minutes):
   Round numbers together to various places:
   - Round 5,678,234 to the nearest hundred thousand
   - Round 2,345,678 to the nearest ten thousand
   - Round 999,499 to the nearest thousand (watch for place value changes!)
   Discuss real-world scenarios: populations, distances, money amounts

4. INDEPENDENT PRACTICE (10 minutes):
   Students round large numbers to specified place values
   Include problems that require rounding to different places
   Apply rounding to estimate sums and differences
   Determine when rounding is appropriate in word problems

DIFFERENTIATION:
For Struggling Learners:
- Provide number lines for each rounding task
- Use highlighting to mark the place being rounded to
- Practice with smaller numbers before extending to millions
- Create a step-by-step checklist for the rounding process

For Advanced Learners:
- Explore how different rounding places affect accuracy
- Round to estimate products and quotients
- Analyze when rounding up vs down makes more sense contextually
- Investigate cumulative rounding errors

ASSESSMENT INDICATORS:
- Rounds numbers accurately to any specified place value
- Explains the rounding process using mathematical language
- Recognizes when rounding is appropriate in context
- Uses rounded numbers to estimate calculations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rounding Large Numbers' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Roman Numerals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Roman Numerals' AND grade_level_min = 4),
  'Roman Numerals Topic Guide', 'Read and write Roman numerals to 100',
  'ROMAN NUMERALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of number values 1-100
- Pattern recognition skills
- Addition and subtraction within 100
- Familiarity with symbols representing quantities

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read and write Roman numerals from I to C (1 to 100)
2. Understand the additive and subtractive principles of Roman numerals
3. Convert between Roman numerals and standard numbers
4. Recognize Roman numerals in real-world contexts

KEY CONCEPTS:
- Seven basic symbols: I=1, V=5, X=10, L=50, C=100
- Additive principle: Larger values before smaller add together (VI = 6)
- Subtractive principle: Smaller before larger means subtract (IV = 4)
- Never use more than three of the same symbol in a row
- Only I, X, and C can be subtracted, and only from the next two higher values

COMMON MISCONCEPTIONS:
- Writing four I\'s instead of IV
- Incorrectly subtracting (like IL for 49 instead of XLIX)
- Not understanding when to add vs subtract
- Confusing the order and thinking smaller values always subtract

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show examples of Roman numerals in real life: clock faces, Super Bowl numbers, book chapters
   Ask: "Where have you seen these symbols? Why do we still use them?"

2. DIRECT INSTRUCTION (13 minutes):
   Introduce the seven basic symbols with visuals
   Teach additive principle: III = 3, VI = 6, VIII = 8
   Teach subtractive principle: IV = 4, IX = 9, XL = 40, XC = 90
   Show the pattern for numbers 1-10, then extend to tens
   Model converting: 47 = XLVII (40 + 5 + 2)
   Explain why we don\'t write XXXXVII

3. GUIDED PRACTICE (12 minutes):
   Convert together: 23 (XXIII), 49 (XLIX), 68 (LXVIII), 94 (XCIV)
   Read Roman numerals and write as standard numbers
   Identify errors in incorrectly written Roman numerals
   Practice with clock faces showing Roman numeral hours

4. INDEPENDENT PRACTICE (9 minutes):
   Students convert numbers to Roman numerals
   Read and interpret Roman numerals
   Create their own "codebook" of Roman numerals 1-100
   Apply to real-world contexts (copyright dates, outlines)

DIFFERENTIATION:
For Struggling Learners:
- Provide a reference chart with key values
- Start with numbers 1-20 before extending to 100
- Use manipulatives or tally marks to build understanding
- Color-code additive vs subtractive combinations

For Advanced Learners:
- Extend to larger numbers beyond 100 (D=500, M=1000)
- Explore historical uses and why we switched to Arabic numerals
- Create mathematical expressions using Roman numerals
- Research and present on Roman numeral applications

ASSESSMENT INDICATORS:
- Correctly reads Roman numerals from I to C
- Writes numbers 1-100 in Roman numeral form
- Applies both additive and subtractive principles accurately
- Identifies and explains errors in Roman numeral notation', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Roman Numerals' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MULTI-DIGIT MULTIPLICATION TOPICS (12 topics)
-- ============================================================================

-- Multiplying by 10 100 1000
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying by 10 100 1000' AND grade_level_min = 4),
  'Multiplying by Powers of 10 Topic Guide', 'Use patterns for multiplying by powers of 10',
  'MULTIPLYING BY 10, 100, 1000 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of place value patterns
- Basic multiplication facts
- Skip counting by 10s
- Understanding of zero as a placeholder

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply whole numbers by 10, 100, and 1000 using patterns
2. Recognize that multiplying by 10 shifts digits one place to the left
3. Apply the pattern to mental math strategies
4. Explain why the pattern works using place value understanding

KEY CONCEPTS:
- Multiplying by 10 adds one zero to the end (shifts digits left one place)
- Multiplying by 100 adds two zeros (shifts digits left two places)
- Multiplying by 1000 adds three zeros (shifts digits left three places)
- Each zero represents a power of 10
- This pattern works because of our base-ten place value system

COMMON MISCONCEPTIONS:
- Thinking you "just add zeros" without understanding place value shifts
- Not extending the pattern to larger numbers correctly
- Confusing multiplication by 10 with addition of 10
- Forgetting that this pattern only works with powers of 10

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present a scenario: "If one box holds 10 books, how many books are in 1 box? 2 boxes? 5 boxes?"
   Record: 10, 20, 50 and notice the pattern

2. DIRECT INSTRUCTION (10 minutes):
   Start with concrete: 3 × 10 using place value blocks or arrays
   Show the pattern: 3 × 10 = 30, 3 × 100 = 300, 3 × 1000 = 3000
   Use place value charts to show digit shifts
   Extend to larger numbers: 47 × 10 = 470, 47 × 100 = 4700
   Explain WHY: multiplying by 10 makes everything 10 times larger

3. GUIDED PRACTICE (12 minutes):
   Multiply together: 8 × 10, 8 × 100, 8 × 1000
   Then: 23 × 10, 23 × 100, 156 × 10
   Discuss the pattern and how digits shift position
   Solve word problems: "A case has 100 cans. How many cans in 12 cases?"

4. INDEPENDENT PRACTICE (12 minutes):
   Students multiply various numbers by 10, 100, 1000
   Include both small numbers (single digit) and larger numbers
   Apply to real-world contexts (money, measurements, quantities)
   Create their own word problems using this pattern

DIFFERENTIATION:
For Struggling Learners:
- Use place value charts to visually track digit movement
- Start with single-digit numbers only
- Provide manipulatives showing groups of 10
- Color-code the zeros being added

For Advanced Learners:
- Multiply by 10,000 or higher powers of 10
- Divide by 10, 100, 1000 (inverse pattern)
- Explore patterns with decimals (preview)
- Solve multi-step problems combining operations

ASSESSMENT INDICATORS:
- Quickly multiplies any number by 10, 100, or 1000
- Explains the pattern using place value language
- Applies the pattern to solve word problems
- Recognizes when this strategy is appropriate', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying by 10 100 1000' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Multiplying by Multiples of 10
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying by Multiples of 10' AND grade_level_min = 4),
  'Multiplying by Multiples of 10 Topic Guide', 'Multiply like 30 × 40',
  'MULTIPLYING BY MULTIPLES OF 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multiplying by 10, 100, 1000
- Basic multiplication facts fluency
- Understanding of the distributive property
- Place value to thousands

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply multiples of 10 using basic facts and patterns (30 × 40)
2. Break apart multiples of 10 to simplify multiplication
3. Use mental math strategies for these calculations
4. Apply this skill to estimation and problem-solving

KEY CONCEPTS:
- 30 × 40 can be thought of as (3 × 10) × (4 × 10) = (3 × 4) × (10 × 10)
- Multiply the basic facts, then adjust for the zeros
- 30 × 40 = 3 × 4 × 100 = 12 × 100 = 1200
- The number of zeros in factors equals zeros in the product
- This is an efficient mental math strategy

COMMON MISCONCEPTIONS:
- Counting zeros incorrectly (thinking 30 × 40 = 120 instead of 1200)
- Not multiplying the basic facts first
- Adding instead of multiplying the zeros
- Forgetting to include all zeros in the final answer

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "Each box has 20 items. You have 30 boxes. How many items total?"
   Ask: "Is there a quick way to solve this without adding 30 times?"

2. DIRECT INSTRUCTION (11 minutes):
   Model the thought process for 30 × 40:
   - Break apart: (3 × 10) × (4 × 10)
   - Rearrange: (3 × 4) × (10 × 10)
   - Calculate: 12 × 100 = 1200
   Use arrays or area models to show why this works
   Practice with different examples: 20 × 50, 60 × 30, 80 × 70
   Show the shortcut: multiply the basic facts, count the zeros, attach them

3. GUIDED PRACTICE (12 minutes):
   Solve together: 40 × 50, 20 × 70, 60 × 60
   Break down each problem step by step
   Verify with estimation: 40 × 50 is close to 40 × 50 = 2000
   Include word problems with context

4. INDEPENDENT PRACTICE (11 minutes):
   Students multiply multiples of 10
   Include problems like 30 × 40, 50 × 80, 90 × 60
   Apply to area problems (60 ft × 40 ft room)
   Use for estimation in real-world scenarios

DIFFERENTIATION:
For Struggling Learners:
- Provide a step-by-step process chart
- Use place value blocks or hundred charts
- Start with problems involving 10 (10 × 30, 10 × 50)
- Allow calculators to verify answers while learning

For Advanced Learners:
- Multiply three multiples of 10 (20 × 30 × 10)
- Extend to numbers like 200 × 300
- Create and solve their own word problems
- Explore why this pattern works algebraically

ASSESSMENT INDICATORS:
- Accurately multiplies multiples of 10 mentally
- Explains the strategy using place value or basic facts
- Applies the strategy to estimate products
- Recognizes when to use this mental math technique', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying by Multiples of 10' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Estimating Products
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Estimating Products' AND grade_level_min = 4),
  'Estimating Products Topic Guide', 'Estimate products using rounding',
  'ESTIMATING PRODUCTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Rounding to any place value
- Multiplying by multiples of 10
- Understanding of "about" vs "exact"
- Basic multiplication facts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Estimate products by rounding factors to the nearest ten or hundred
2. Determine if an estimate is reasonable
3. Use estimation to check exact calculations
4. Apply estimation strategies to real-world problem-solving

KEY CONCEPTS:
- Estimation provides a quick approximate answer
- Round factors to make multiplication easier
- Front-end estimation uses the leading digit
- Rounding to different places gives different levels of accuracy
- Estimates help verify if exact answers are reasonable

COMMON MISCONCEPTIONS:
- Thinking estimates should equal exact answers
- Rounding incorrectly and getting poor estimates
- Not understanding when estimation is sufficient
- Forgetting that estimates are approximations

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present a shopping scenario: "32 boxes of markers at $18 each. About how much will it cost?"
   Ask: "Do we need the exact price or an estimate? Why?"

2. DIRECT INSTRUCTION (11 minutes):
   Model estimating 28 × 43:
   - Round to nearest ten: 30 × 40 = 1200
   - Discuss if this is reasonable
   - Compare to exact answer: 1204 (very close!)
   Show different rounding strategies:
   - Both factors to nearest ten
   - Front-end estimation (20 × 40 = 800)
   - Compatible numbers
   Practice with 67 × 52, 89 × 31, 142 × 48

3. GUIDED PRACTICE (12 minutes):
   Estimate products together: 38 × 52, 74 × 26, 213 × 41
   Discuss which rounding strategy works best for each
   Use estimates to check reasonableness of calculations
   Compare estimates to exact answers

4. INDEPENDENT PRACTICE (10 minutes):
   Students estimate various products
   Determine if given exact answers are reasonable
   Apply estimation to word problems
   Choose appropriate rounding strategies based on context

DIFFERENTIATION:
For Struggling Learners:
- Provide step-by-step estimation guides
- Start with rounding to nearest ten only
- Use number lines to help with rounding
- Compare estimates to exact answers for feedback

For Advanced Learners:
- Estimate products with 3-digit numbers
- Determine which rounding strategy gives best estimates
- Explore over-estimation vs under-estimation
- Apply to complex multi-step problems

ASSESSMENT INDICATORS:
- Rounds factors appropriately to estimate
- Produces reasonable estimates quickly
- Uses estimates to verify exact calculations
- Explains why an estimate is or isn\'t close to the exact value', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Estimating Products' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Area Model Multiplication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area Model Multiplication' AND grade_level_min = 4),
  'Area Model Multiplication Topic Guide', 'Use area models for 2-digit by 2-digit',
  'AREA MODEL MULTIPLICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of area as length × width
- Place value understanding (tens and ones)
- Single-digit multiplication fluency
- Breaking apart numbers (expanded form)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use area models to multiply 2-digit by 2-digit numbers
2. Break apart factors by place value to create partial products
3. Connect area models to the distributive property
4. Visualize multiplication as finding the area of a rectangle

KEY CONCEPTS:
- Each factor can be broken into tens and ones (or other place values)
- The area model creates a rectangle divided into 4 sections
- Each section represents a partial product
- Add all partial products to find the total product
- This model shows WHY the standard algorithm works

COMMON MISCONCEPTIONS:
- Forgetting to add all four partial products
- Incorrectly decomposing numbers by place value
- Not aligning partial products correctly
- Confusing the area model with arrays

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a rectangle labeled 23 ft by 15 ft. Ask: "How can we find the area if we don\'t know 23 × 15?"
   Suggest: "What if we break it into smaller parts we DO know?"

2. DIRECT INSTRUCTION (14 minutes):
   Model 23 × 15 using an area model:
   - Draw rectangle, divide into 4 parts
   - Label sides: 20 + 3 and 10 + 5
   - Calculate each section: 20×10=200, 20×5=100, 3×10=30, 3×5=15
   - Add partial products: 200 + 100 + 30 + 15 = 345
   Connect to distributive property: (20+3) × (10+5)
   Show another example: 34 × 26
   Emphasize place value in each partial product

3. GUIDED PRACTICE (13 minutes):
   Draw area models together for: 24 × 18, 32 × 25, 41 × 19
   Label each section and calculate partial products
   Add partial products to find total
   Verify with estimation
   Discuss how this connects to the standard algorithm

4. INDEPENDENT PRACTICE (10 minutes):
   Students create area models for given multiplication problems
   Calculate 2-digit by 2-digit products using this method
   Compare to other strategies they know
   Apply to word problems involving area

DIFFERENTIATION:
For Struggling Learners:
- Pre-draw area model grids
- Start with one factor as a single digit (23 × 4)
- Use graph paper for organization
- Provide labeled examples as reference

For Advanced Learners:
- Extend to 3-digit by 2-digit multiplication
- Compare efficiency of area model vs standard algorithm
- Explore algebraic representation (FOIL connection)
- Create word problems requiring area model solutions

ASSESSMENT INDICATORS:
- Correctly decomposes factors by place value
- Accurately calculates all partial products
- Adds partial products to find total product
- Explains connection between area model and multiplication', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area Model Multiplication' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Partial Products
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Partial Products' AND grade_level_min = 4),
  'Partial Products Topic Guide', 'Break apart numbers to multiply',
  'PARTIAL PRODUCTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of place value
- Multiplying single digits by multiples of 10
- Basic multiplication facts fluency
- Understanding of the distributive property

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply multi-digit numbers using the partial products strategy
2. Break apart factors by place value to create manageable calculations
3. Organize partial products and add them correctly
4. Connect partial products to other multiplication strategies

KEY CONCEPTS:
- Partial products means multiplying each place value separately
- For 23 × 4: multiply (20 × 4) and (3 × 4), then add
- For 23 × 14: multiply (20×10), (20×4), (3×10), (3×4), then add
- This strategy builds conceptual understanding
- Partial products connects to the distributive property

COMMON MISCONCEPTIONS:
- Forgetting to multiply all combinations of place values
- Not keeping place values aligned when adding
- Confusing partial products with the standard algorithm
- Missing zeros in products (20 × 10 = 200, not 20)

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "You need to solve 34 × 12. If you forget the standard algorithm, is there another way?"
   Activate prior knowledge of breaking apart numbers

2. DIRECT INSTRUCTION (12 minutes):
   Model 24 × 13 using partial products:
   Step 1: Break apart: (20 + 4) × (10 + 3)
   Step 2: Multiply each part:
     20 × 10 = 200
     20 × 3 = 60
     4 × 10 = 40
     4 × 3 = 12
   Step 3: Add partial products: 200 + 60 + 40 + 12 = 312
   Show organized vertical format for recording
   Connect to area model visually

3. GUIDED PRACTICE (13 minutes):
   Work through problems together: 32 × 15, 43 × 22, 51 × 18
   Students identify all partial products before adding
   Check work by comparing to estimates
   Discuss why place value matters in each step

4. INDEPENDENT PRACTICE (9 minutes):
   Students multiply using partial products strategy
   Include 2-digit by 1-digit and 2-digit by 2-digit
   Organize work vertically or horizontally
   Verify answers using another strategy

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers showing which parts to multiply
- Start with 2-digit by 1-digit (fewer partial products)
- Use color-coding for different place values
- Relate to area model for visual support

For Advanced Learners:
- Extend to 3-digit by 2-digit problems
- Compare efficiency with other strategies
- Minimize steps by combining mentally
- Explore connection to algebraic expansion

ASSESSMENT INDICATORS:
- Identifies all necessary partial products
- Calculates each partial product correctly
- Adds partial products accurately
- Explains why this strategy works using place value', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Partial Products' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Multiply 2-Digit by 1-Digit
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiply 2-Digit by 1-Digit' AND grade_level_min = 4),
  'Multiply 2-Digit by 1-Digit Topic Guide', 'Standard algorithm with 2-digit numbers',
  'MULTIPLY 2-DIGIT BY 1-DIGIT - TOPIC TEACHING GUIDE

PREREQUISITES:
- All multiplication facts to 9 × 9
- Understanding of regrouping in addition
- Place value understanding
- Partial products or area model exposure

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply 2-digit numbers by 1-digit numbers using the standard algorithm
2. Regroup (carry) when products exceed 9
3. Record multiplication steps accurately and efficiently
4. Solve word problems using 2-digit by 1-digit multiplication

KEY CONCEPTS:
- Multiply from right to left (ones first, then tens)
- Regroup when a product is 10 or greater
- The regrouped amount represents tens
- Align digits by place value
- This algorithm is efficient and generalizes to larger numbers

COMMON MISCONCEPTIONS:
- Forgetting to add regrouped amounts
- Writing regrouped digits in the wrong place
- Multiplying in the wrong order
- Not understanding why regrouping is necessary

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "There are 24 students. Each student needs 3 pencils. How many pencils total?"
   Ask: "What multiplication sentence represents this? How can we solve it efficiently?"

2. DIRECT INSTRUCTION (12 minutes):
   Model 24 × 3 step-by-step:
   - Multiply ones: 3 × 4 = 12 (write 2, regroup 1)
   - Multiply tens: 3 × 2 = 6, add regrouped 1 = 7
   - Answer: 72
   Show with place value blocks to visualize regrouping
   Model problems with and without regrouping: 32 × 3 (no regrouping), 47 × 6 (regrouping)
   Emphasize writing regrouped amount above the problem

3. GUIDED PRACTICE (13 minutes):
   Multiply together: 23 × 4, 35 × 5, 48 × 7, 62 × 8
   Students talk through each step
   Identify where regrouping occurs
   Check answers with estimation
   Solve word problems requiring this skill

4. INDEPENDENT PRACTICE (9 minutes):
   Students practice 2-digit by 1-digit multiplication
   Include problems with and without regrouping
   Apply to real-world contexts
   Verify answers using an alternative strategy

DIFFERENTIATION:
For Struggling Learners:
- Use graph paper to align place values
- Provide step-by-step checklists
- Review regrouping in addition first
- Start with no-regrouping problems

For Advanced Learners:
- Extend to 3-digit by 1-digit
- Multiply by 2-digit factors
- Create and solve their own word problems
- Compare standard algorithm to partial products

ASSESSMENT INDICATORS:
- Multiplies 2-digit by 1-digit accurately
- Regroups correctly when necessary
- Aligns digits by place value
- Explains each step of the algorithm', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiply 2-Digit by 1-Digit' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Multiply 3-Digit by 1-Digit
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiply 3-Digit by 1-Digit' AND grade_level_min = 4),
  'Multiply 3-Digit by 1-Digit Topic Guide', 'Extend algorithm to 3-digit numbers',
  'MULTIPLY 3-DIGIT BY 1-DIGIT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multiplying 2-digit by 1-digit numbers
- Regrouping across multiple place values
- Understanding place value to hundreds
- Estimation skills for checking work

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply 3-digit numbers by 1-digit numbers using the standard algorithm
2. Regroup across multiple place values as needed
3. Maintain accuracy with longer multiplication problems
4. Apply this skill to solve real-world problems

KEY CONCEPTS:
- The standard algorithm extends to any number of digits
- Multiply from right to left: ones, tens, hundreds
- Regroup at each step when necessary
- Sometimes regrouping happens multiple times in one problem
- Organization and alignment are critical for accuracy

COMMON MISCONCEPTIONS:
- Losing track of regrouped amounts across multiple steps
- Forgetting to add regrouped amounts to the next place
- Misaligning digits when writing the answer
- Not estimating to check if the answer is reasonable

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "A factory produces 324 toys per day. How many toys in 6 days?"
   Connect to previous learning: "This is just like 2-digit multiplication, but with one more place!"

2. DIRECT INSTRUCTION (13 minutes):
   Model 324 × 6:
   - Ones: 6 × 4 = 24 (write 4, regroup 2)
   - Tens: 6 × 2 = 12, add regrouped 2 = 14 (write 4, regroup 1)
   - Hundreds: 6 × 3 = 18, add regrouped 1 = 19 (write 19)
   - Answer: 1,944
   Show with place value blocks or area model
   Model another: 567 × 4 (multiple regrouping steps)
   Emphasize estimating first (324 × 6 ≈ 300 × 6 = 1,800)

3. GUIDED PRACTICE (12 minutes):
   Multiply together: 234 × 5, 456 × 3, 578 × 7, 629 × 8
   Students guide the teacher through each step
   Check answers against estimates
   Identify common error patterns
   Solve word problems in context

4. INDEPENDENT PRACTICE (9 minutes):
   Students multiply 3-digit by 1-digit numbers
   Include varied levels of regrouping complexity
   Apply to area, volume, and scaling problems
   Use estimation to verify reasonableness

DIFFERENTIATION:
For Struggling Learners:
- Provide graph paper for organization
- Use step-by-step process cards
- Practice 2-digit by 1-digit for extra support
- Highlight place values with color-coding

For Advanced Learners:
- Extend to 4-digit by 1-digit
- Solve problems with multiple steps
- Multiply by 2-digit numbers
- Analyze error patterns in sample student work

ASSESSMENT INDICATORS:
- Accurately multiplies 3-digit by 1-digit numbers
- Regroups correctly across all place values
- Maintains organization and alignment throughout
- Uses estimation to verify answers', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiply 3-Digit by 1-Digit' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Multiply 4-Digit by 1-Digit
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiply 4-Digit by 1-Digit' AND grade_level_min = 4),
  'Multiply 4-Digit by 1-Digit Topic Guide', 'Extend to larger numbers',
  'MULTIPLY 4-DIGIT BY 1-DIGIT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multiplying 3-digit by 1-digit numbers
- Place value to thousands
- Regrouping across multiple places
- Strong organization skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply 4-digit numbers by 1-digit numbers accurately
2. Manage regrouping across four place values
3. Maintain precision and organization with longer problems
4. Apply to real-world problems involving large quantities

KEY CONCEPTS:
- The algorithm works the same regardless of number of digits
- Multiply each place value from right to left
- Carry regrouped amounts carefully through all steps
- Thousands place may require regrouping to ten-thousands
- Estimation is essential for checking large calculations

COMMON MISCONCEPTIONS:
- Making errors due to length and complexity of problem
- Losing track of regrouped amounts
- Misaligning digits in the product
- Not recognizing when answers are unreasonable

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show: "The stadium holds 2,345 people. If it\'s full for 8 games, how many total attendees?"
   Ask: "Does this problem seem harder just because the numbers are bigger?"

2. DIRECT INSTRUCTION (12 minutes):
   Model 2,345 × 7:
   - Ones: 7 × 5 = 35 (write 5, regroup 3)
   - Tens: 7 × 4 = 28, add 3 = 31 (write 1, regroup 3)
   - Hundreds: 7 × 3 = 21, add 3 = 24 (write 4, regroup 2)
   - Thousands: 7 × 2 = 14, add 2 = 16 (write 16)
   - Answer: 16,415
   Estimate first: 2,000 × 7 = 14,000 (answer seems reasonable)
   Model another example: 5,678 × 4
   Emphasize careful recording of regrouped amounts

3. GUIDED PRACTICE (13 minutes):
   Multiply together: 3,456 × 5, 4,789 × 6, 6,234 × 8
   Students direct each step while teacher records
   Verify with estimates
   Discuss real-world contexts: populations, distances, budgets
   Troubleshoot common errors

4. INDEPENDENT PRACTICE (9 minutes):
   Students multiply 4-digit by 1-digit numbers
   Include word problems with context
   Compare answers with partners
   Reflect on strategies for staying organized

DIFFERENTIATION:
For Struggling Learners:
- Use lined or graph paper for alignment
- Break problems into smaller steps with checkpoints
- Provide worked examples for reference
- Allow use of calculators to verify answers

For Advanced Learners:
- Multiply 5-digit numbers or larger
- Solve multi-step problems with 4-digit numbers
- Begin 2-digit by 2-digit multiplication
- Create their own real-world applications

ASSESSMENT INDICATORS:
- Multiplies 4-digit by 1-digit numbers accurately
- Manages regrouping across all place values
- Maintains careful organization throughout
- Recognizes and corrects errors using estimation', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiply 4-Digit by 1-Digit' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Multiply 2-Digit by 2-Digit
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiply 2-Digit by 2-Digit' AND grade_level_min = 4),
  'Multiply 2-Digit by 2-Digit Topic Guide', 'Standard algorithm for 2 by 2 digit',
  'MULTIPLY 2-DIGIT BY 2-DIGIT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multiplying multi-digit by 1-digit numbers
- Understanding of partial products
- Place value understanding
- Multiplying by multiples of 10

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply 2-digit by 2-digit numbers using the standard algorithm
2. Understand the algorithm as combining two separate multiplications
3. Align partial products correctly by place value
4. Solve complex word problems requiring 2 by 2 multiplication

KEY CONCEPTS:
- Multiply by the ones digit first, then by the tens digit
- The second partial product represents tens, so shift it left
- Add the two partial products to find the final answer
- This extends the 1-digit multiplier algorithm
- Area models help visualize why the algorithm works

COMMON MISCONCEPTIONS:
- Forgetting to shift the second partial product left
- Not understanding why the shift is necessary
- Adding regrouped amounts to the wrong partial product
- Confusing the two multiplication steps

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present: "A classroom has 24 rows with 18 chairs in each row. How many chairs total?"
   Connect to area models students have learned

2. DIRECT INSTRUCTION (14 minutes):
   Model 24 × 18 step-by-step:
   - Multiply by ones (8): 24 × 8 = 192
   - Multiply by tens (10): 24 × 10 = 240
   - Add partial products: 192 + 240 = 432
   Show standard algorithm format with proper alignment
   Emphasize the "0" or left-shift for the tens multiplication
   Connect to area model: (20+4) × (10+8)
   Model another: 36 × 27

3. GUIDED PRACTICE (13 minutes):
   Multiply together: 32 × 24, 45 × 16, 53 × 38
   Students guide each step
   Compare to area model or partial products
   Check with estimation
   Solve word problems requiring 2-digit multiplication

4. INDEPENDENT PRACTICE (10 minutes):
   Students multiply 2-digit by 2-digit numbers
   Include real-world applications (area, arrays, groups)
   Verify using alternative strategies
   Reflect on the efficiency of the standard algorithm

DIFFERENTIATION:
For Struggling Learners:
- Use graph paper for alignment
- Explicitly show the "0" in the second partial product
- Practice with area models alongside algorithm
- Start with one factor being a teen number

For Advanced Learners:
- Extend to 3-digit by 2-digit multiplication
- Minimize steps by multiplying mentally when possible
- Create complex multi-step word problems
- Compare efficiency of different strategies

ASSESSMENT INDICATORS:
- Accurately multiplies 2-digit by 2-digit numbers
- Aligns partial products correctly
- Adds partial products without errors
- Explains the role of each step in the algorithm', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiply 2-Digit by 2-Digit' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Multiply 3-Digit by 2-Digit
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiply 3-Digit by 2-Digit' AND grade_level_min = 4),
  'Multiply 3-Digit by 2-Digit Topic Guide', 'Extend to larger factors',
  'MULTIPLY 3-DIGIT BY 2-DIGIT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multiplying 2-digit by 2-digit numbers
- Multiplying 3-digit by 1-digit numbers
- Regrouping across multiple place values
- Strong estimation skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply 3-digit by 2-digit numbers using the standard algorithm
2. Manage complex regrouping across all place values
3. Align and add larger partial products accurately
4. Apply to authentic problems with large numbers

KEY CONCEPTS:
- The algorithm extends seamlessly to larger numbers
- Two partial products are created (ones and tens)
- Careful alignment is critical with longer numbers
- Estimation helps verify reasonableness of answers
- Organization and neatness prevent errors

COMMON MISCONCEPTIONS:
- Misaligning partial products
- Forgetting to shift the second partial product
- Making regrouping errors due to problem complexity
- Not checking reasonableness of large products

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "A plane flies 345 miles per hour. How far does it travel in 24 hours?"
   Ask: "What strategy will help us multiply these larger numbers?"

2. DIRECT INSTRUCTION (13 minutes):
   Model 345 × 24:
   - Multiply by ones (4): 345 × 4 = 1,380
   - Multiply by tens (20): 345 × 20 = 6,900
   - Add partial products: 1,380 + 6,900 = 8,280
   Show with place value organization
   Estimate first: 350 × 25 ≈ 350 × 25 = 8,750 (close to 8,280)
   Model another: 567 × 38
   Emphasize checking work carefully

3. GUIDED PRACTICE (13 minutes):
   Multiply together: 234 × 15, 456 × 27, 678 × 34
   Students work on whiteboards or paper
   Share strategies for staying organized
   Verify with estimates
   Solve real-world problems in context

4. INDEPENDENT PRACTICE (10 minutes):
   Students multiply 3-digit by 2-digit numbers
   Include word problems with authentic contexts
   Partner-check for accuracy
   Reflect on organizational strategies that worked

DIFFERENTIATION:
For Struggling Learners:
- Provide pre-structured workspace with lines
- Break into smaller steps with checkpoints
- Use color-coding for different partial products
- Allow extra time and reference materials

For Advanced Learners:
- Multiply 4-digit by 2-digit or 3-digit by 3-digit
- Solve multi-step problems with multiplication
- Explore mental math shortcuts
- Analyze and explain error patterns

ASSESSMENT INDICATORS:
- Multiplies 3-digit by 2-digit numbers accurately
- Aligns partial products correctly by place value
- Adds complex partial products without errors
- Uses estimation to verify reasonableness', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiply 3-Digit by 2-Digit' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Multiplication Properties
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplication Properties' AND grade_level_min = 4),
  'Multiplication Properties Topic Guide', 'Apply distributive property',
  'MULTIPLICATION PROPERTIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic multiplication facts fluency
- Understanding of properties in addition
- Breaking apart numbers by place value
- Partial products experience

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify and apply the commutative property of multiplication
2. Use the associative property to simplify multiplication
3. Apply the distributive property to break apart and solve problems
4. Recognize when properties make calculations easier

KEY CONCEPTS:
- Commutative: a × b = b × a (order doesn\'t matter)
- Associative: (a × b) × c = a × (b × c) (grouping doesn\'t matter)
- Distributive: a × (b + c) = (a × b) + (a × c)
- Identity property: any number × 1 = that number
- Zero property: any number × 0 = 0

COMMON MISCONCEPTIONS:
- Thinking properties are "tricks" rather than mathematical truths
- Confusing properties with each other
- Not recognizing when properties are useful
- Applying properties incorrectly (like distributive division)

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present two ways to solve 6 × 8: use the fact directly, or use (6 × 5) + (6 × 3)
   Ask: "Why do both methods work? Which is easier for you?"

2. DIRECT INSTRUCTION (13 minutes):
   Teach each property with examples:
   - Commutative: 7 × 8 = 8 × 7 (can flip to use easier fact)
   - Associative: (2 × 5) × 7 = 2 × (5 × 7) = 2 × 35 = 70
   - Distributive: 7 × 12 = 7 × (10 + 2) = 70 + 14 = 84
   Show how properties connect to strategies already learned
   Demonstrate using area models for distributive property
   Practice identifying which property is being used

3. GUIDED PRACTICE (12 minutes):
   Apply properties to simplify: 25 × 4 × 7, 6 × 19, 8 × 5 × 11
   Identify properties in given equations
   Choose efficient strategies based on properties
   Connect properties to real-world situations

4. INDEPENDENT PRACTICE (10 minutes):
   Students use properties to solve multiplication problems
   Identify which property makes each problem easier
   Create their own examples of each property
   Explain why properties work using models or reasoning

DIFFERENTIATION:
For Struggling Learners:
- Focus on one property at a time
- Use concrete manipulatives to demonstrate
- Provide property reference cards
- Practice identifying properties before applying them

For Advanced Learners:
- Explore why properties work algebraically
- Apply multiple properties in one problem
- Investigate which properties hold for division
- Create teaching examples for other students

ASSESSMENT INDICATORS:
- Correctly identifies multiplication properties
- Applies properties to simplify calculations
- Explains why properties work using models or reasoning
- Chooses appropriate properties strategically', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplication Properties' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Multiplication Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplication Word Problems' AND grade_level_min = 4),
  'Multiplication Word Problems Topic Guide', 'Solve multi-step problems',
  'MULTIPLICATION WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multi-digit multiplication fluency
- Reading comprehension skills
- Identifying key information in word problems
- Understanding of multiplication contexts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Solve multi-step word problems involving multiplication
2. Identify relevant information and operations needed
3. Apply multiplication to comparison, measurement, and rate problems
4. Verify solutions using estimation and reasoning

KEY CONCEPTS:
- Read carefully to understand what the problem asks
- Identify what information is given and what is needed
- Determine which operation(s) to use
- Solve step-by-step and check reasonableness
- Multiplication represents equal groups, arrays, area, comparison, and scaling

COMMON MISCONCEPTIONS:
- Using the wrong operation based on keywords only
- Not reading the entire problem before solving
- Forgetting units in the answer
- Not checking if the answer makes sense in context

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present: "A school has 28 classrooms. Each classroom has 24 students. The library has 15 times as many books as students. How many books?"
   Ask: "What do we need to find first? What steps are needed?"

2. DIRECT INSTRUCTION (13 minutes):
   Teach a problem-solving framework:
   1. READ and understand the problem
   2. IDENTIFY what you need to find
   3. PLAN the steps and operations
   4. SOLVE step-by-step
   5. CHECK for reasonableness
   Model with multi-step problems:
   - Equal groups: "32 boxes with 24 items each"
   - Comparison: "6 times as many as 45"
   - Area: "A room is 23 ft by 18 ft"

3. GUIDED PRACTICE (13 minutes):
   Solve problems together using the framework
   - "There are 16 rows of 18 chairs. How many chairs? If 3 more rows are added, how many chairs now?"
   - "A store sold 47 bikes in June and 3 times as many in July. How many total bikes?"
   Students explain their thinking and strategies
   Discuss how to identify multi-step problems

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied multiplication word problems
   Include one-step and multi-step problems
   Require written explanations of reasoning
   Create their own word problems for partners

DIFFERENTIATION:
For Struggling Learners:
- Provide problems with simpler numbers first
- Use graphic organizers for problem-solving steps
- Underline or highlight key information
- Start with one-step problems before multi-step

For Advanced Learners:
- Solve problems with extraneous information
- Create complex multi-step scenarios
- Write problems for given equations
- Analyze multiple solution pathways

ASSESSMENT INDICATORS:
- Identifies appropriate operation(s) to use
- Solves multi-step problems accurately
- Explains reasoning clearly
- Checks solutions for reasonableness in context', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplication Word Problems' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MULTI-DIGIT DIVISION TOPICS (12 topics)
-- ============================================================================

-- Dividing by 10 100 1000
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing by 10 100 1000' AND grade_level_min = 4),
  'Dividing by Powers of 10 Topic Guide', 'Use patterns for dividing by powers of 10',
  'DIVIDING BY 10, 100, 1000 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of division as inverse of multiplication
- Place value patterns
- Multiplying by 10, 100, 1000
- Basic division facts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide whole numbers by 10, 100, and 1000 using patterns
2. Recognize that dividing by 10 shifts digits one place to the right
3. Apply the pattern to mental math strategies
4. Explain the relationship to multiplication patterns

KEY CONCEPTS:
- Dividing by 10 removes one zero (shifts digits right one place)
- Dividing by 100 removes two zeros (shifts right two places)
- Dividing by 1000 removes three zeros (shifts right three places)
- This is the inverse of multiplying by powers of 10
- Place value understanding explains why the pattern works

COMMON MISCONCEPTIONS:
- Simply "removing zeros" without understanding place value
- Not recognizing that this only works with powers of 10
- Confusing division by 10 with subtraction of 10
- Applying the pattern when there aren\'t enough zeros to remove

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "You have 350 stickers to share equally among 10 friends. How many does each get?"
   Connect to inverse: "We know 35 × 10 = 350, so 350 ÷ 10 = ?"

2. DIRECT INSTRUCTION (11 minutes):
   Show the pattern: 450 ÷ 10 = 45, 450 ÷ 100 = 4.5 (for now, stay with whole numbers)
   Use place value charts to show digit shifts
   Model: 7,000 ÷ 10 = 700, 7,000 ÷ 100 = 70, 7,000 ÷ 1000 = 7
   Connect to multiplication: if 47 × 10 = 470, then 470 ÷ 10 = 47
   Emphasize that this is the inverse operation

3. GUIDED PRACTICE (13 minutes):
   Divide together: 820 ÷ 10, 3,600 ÷ 100, 9,000 ÷ 1000
   Discuss the pattern and place value shifts
   Solve word problems: "4,500 apples in boxes of 100. How many boxes?"
   Verify using multiplication

4. INDEPENDENT PRACTICE (10 minutes):
   Students divide various numbers by 10, 100, 1000
   Include word problems with context
   Connect to measurement conversions
   Create their own problems using the pattern

DIFFERENTIATION:
For Struggling Learners:
- Use place value charts to visualize shifts
- Start with simple numbers (multiples of 10, 100, 1000)
- Provide concrete examples with manipulatives
- Relate to multiplication patterns learned earlier

For Advanced Learners:
- Explore division with remainders (850 ÷ 100)
- Preview decimal quotients
- Divide by larger powers of 10
- Apply to metric conversion problems

ASSESSMENT INDICATORS:
- Quickly divides numbers by 10, 100, 1000
- Explains the pattern using place value language
- Connects division pattern to multiplication pattern
- Applies pattern to solve contextual problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing by 10 100 1000' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Estimating Quotients
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Estimating Quotients' AND grade_level_min = 4),
  'Estimating Quotients Topic Guide', 'Estimate quotients using compatible numbers',
  'ESTIMATING QUOTIENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Division facts fluency
- Understanding of compatible numbers
- Rounding skills
- Multiplying by multiples of 10

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Estimate quotients using compatible numbers
2. Round dividend and/or divisor to make division easier
3. Use estimation to check reasonableness of exact quotients
4. Apply estimation strategies in problem-solving

KEY CONCEPTS:
- Compatible numbers are easy to divide mentally
- Round numbers to create compatible pairs (e.g., 182 ÷ 9 → 180 ÷ 9)
- Estimates provide quick approximate answers
- Estimation helps verify if exact division is reasonable
- Different rounding strategies give different levels of accuracy

COMMON MISCONCEPTIONS:
- Thinking estimates should be exact
- Rounding both numbers without considering compatibility
- Not understanding when estimation is appropriate
- Choosing incompatible numbers that are still hard to divide

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present: "You have 238 candies to share among 6 friends. About how many will each get?"
   Ask: "Do we need an exact answer or an estimate? How can we estimate?"

2. DIRECT INSTRUCTION (12 minutes):
   Teach compatible numbers strategy:
   - 238 ÷ 6 → Think: what number close to 238 divides easily by 6?
   - 240 ÷ 6 = 40 (240 and 6 are compatible)
   - So 238 ÷ 6 is about 40
   Show multiple examples: 187 ÷ 4 → 200 ÷ 4 = 50
   Discuss choosing compatible numbers wisely
   Compare to exact answers to see how close estimates are

3. GUIDED PRACTICE (12 minutes):
   Estimate together: 275 ÷ 7, 362 ÷ 9, 478 ÷ 6
   Discuss which compatible numbers work best
   Use estimates to predict if exact quotients are reasonable
   Apply to word problems requiring estimation

4. INDEPENDENT PRACTICE (9 minutes):
   Students estimate quotients using compatible numbers
   Determine if given exact quotients are reasonable
   Solve problems where estimation is sufficient
   Reflect on how to choose good compatible numbers

DIFFERENTIATION:
For Struggling Learners:
- Provide lists of compatible number pairs
- Use number lines to visualize rounding
- Start with divisors that are factors of 10
- Practice with simpler numbers first

For Advanced Learners:
- Estimate quotients with 2-digit divisors
- Determine over-estimation vs under-estimation
- Refine estimates by adjusting
- Create contexts where estimation is more useful than exact answers

ASSESSMENT INDICATORS:
- Chooses appropriate compatible numbers
- Estimates quotients quickly and reasonably
- Uses estimates to verify exact division
- Explains reasoning behind estimation choices', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Estimating Quotients' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Division with Remainders
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Division with Remainders' AND grade_level_min = 4),
  'Division with Remainders Topic Guide', 'Understand and interpret remainders',
  'DIVISION WITH REMAINDERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Division facts fluency
- Understanding division as equal sharing
- Multiplication to check division
- Basic subtraction skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide numbers when the quotient has a remainder
2. Express remainders correctly as "R" notation
3. Verify division with remainders using multiplication
4. Understand what remainders mean in context

KEY CONCEPTS:
- A remainder is what\'s left over after equal sharing
- Remainders must always be less than the divisor
- Check division: (quotient × divisor) + remainder = dividend
- Remainders are written as "R" followed by the number
- In real life, remainders may need different interpretations

COMMON MISCONCEPTIONS:
- Thinking there\'s an error when division doesn\'t come out even
- Writing remainders that are larger than the divisor
- Not understanding what to do with remainders in context
- Forgetting to include the remainder in the answer

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "You have 23 cookies to share equally among 4 friends. How many does each get? What happens to the extras?"
   Model with actual objects or drawings

2. DIRECT INSTRUCTION (12 minutes):
   Model 23 ÷ 4 with manipulatives:
   - Make 4 equal groups
   - Distribute: 5 in each group, with 3 left over
   - Write: 23 ÷ 4 = 5 R3
   Check: (5 × 4) + 3 = 20 + 3 = 23 ✓
   Show the long division notation
   Model more examples: 37 ÷ 6, 50 ÷ 7
   Emphasize that remainder < divisor always

3. GUIDED PRACTICE (13 minutes):
   Divide together: 29 ÷ 5, 44 ÷ 6, 58 ÷ 8
   Write answers with R notation
   Check using multiplication
   Discuss what remainders mean in real scenarios
   Identify errors when remainders are too large

4. INDEPENDENT PRACTICE (9 minutes):
   Students divide and express remainders correctly
   Check division using multiplication
   Solve word problems interpreting remainders
   Create their own division problems with remainders

DIFFERENTIATION:
For Struggling Learners:
- Use manipulatives to model division concretely
- Provide division facts charts
- Start with smaller dividends
- Use pictorial representations

For Advanced Learners:
- Divide larger numbers with remainders
- Explore fraction or decimal notation for remainders (preview)
- Solve complex word problems requiring remainder interpretation
- Analyze when to round quotients up or down

ASSESSMENT INDICATORS:
- Divides accurately and identifies remainders
- Expresses remainders correctly in R notation
- Verifies division using multiplication
- Explains what remainders mean in context', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Division with Remainders' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Divide 2-Digit by 1-Digit
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Divide 2-Digit by 1-Digit' AND grade_level_min = 4),
  'Divide 2-Digit by 1-Digit Topic Guide', 'Divide with no remainder',
  'DIVIDE 2-DIGIT BY 1-DIGIT - TOPIC TEACHING GUIDE

PREREQUISITES:
- All division facts to 81 ÷ 9
- Understanding of place value
- Regrouping understanding from subtraction
- Multiplication to check division

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide 2-digit numbers by 1-digit numbers using long division
2. Regroup tens to ones when necessary
3. Record division steps systematically
4. Verify quotients using multiplication

KEY CONCEPTS:
- Divide starting with the largest place value (tens first)
- Regroup when the digit is too small to divide
- Bring down the ones digit and continue dividing
- Check your work: quotient × divisor = dividend
- The algorithm provides a systematic approach

COMMON MISCONCEPTIONS:
- Not regrouping tens to ones correctly
- Forgetting to bring down the ones digit
- Writing digits in the wrong place in the quotient
- Not checking work with multiplication

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "You have 84 books to organize into 4 equal shelves. How many per shelf?"
   Connect to fact knowledge: "This is just 84 ÷ 4. How can we solve it systematically?"

2. DIRECT INSTRUCTION (13 minutes):
   Model 84 ÷ 4 using long division:
   - Divide tens: 8 tens ÷ 4 = 2 tens (write 2 above)
   - Multiply: 2 × 4 = 8 tens (write below)
   - Subtract: 8 tens - 8 tens = 0
   - Bring down ones: 4
   - Divide ones: 4 ÷ 4 = 1 (write 1 above)
   - Answer: 21
   Check: 21 × 4 = 84 ✓
   Model with regrouping: 56 ÷ 4, 72 ÷ 3
   Use place value blocks to show concretely

3. GUIDED PRACTICE (13 minutes):
   Divide together: 68 ÷ 4, 93 ÷ 3, 75 ÷ 5
   Students guide each step
   Check answers with multiplication
   Solve word problems requiring 2-digit division
   Discuss the purpose of each step

4. INDEPENDENT PRACTICE (10 minutes):
   Students practice 2-digit by 1-digit division
   Include problems with and without regrouping
   Verify all answers using multiplication
   Apply to real-world sharing and grouping problems

DIFFERENTIATION:
For Struggling Learners:
- Use graph paper to organize work
- Provide step-by-step checklists
- Start with no-regrouping problems
- Use manipulatives to model division

For Advanced Learners:
- Extend to 3-digit dividends
- Include problems with remainders
- Divide larger 2-digit numbers
- Solve multi-step word problems

ASSESSMENT INDICATORS:
- Divides 2-digit by 1-digit accurately
- Uses long division algorithm correctly
- Regroups when necessary
- Verifies answers using multiplication', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Divide 2-Digit by 1-Digit' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Divide 2-Digit with Remainder
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Divide 2-Digit with Remainder' AND grade_level_min = 4),
  'Divide 2-Digit with Remainder Topic Guide', 'Divide with remainders',
  'DIVIDE 2-DIGIT WITH REMAINDER - TOPIC TEACHING GUIDE

PREREQUISITES:
- Dividing 2-digit by 1-digit without remainders
- Understanding remainders conceptually
- Long division algorithm steps
- Checking division with multiplication

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide 2-digit numbers by 1-digit numbers with remainders
2. Express remainders correctly in the quotient
3. Verify division with remainders using the checking formula
4. Interpret remainders appropriately in word problems

KEY CONCEPTS:
- Follow the same division steps; remainder is what\'s left at the end
- Remainder must be less than the divisor
- Check: (quotient × divisor) + remainder = dividend
- Division algorithm works the same whether there\'s a remainder or not
- Context determines how to interpret the remainder

COMMON MISCONCEPTIONS:
- Trying to force division to "come out even"
- Writing remainders larger than the divisor
- Not including remainders in the final answer
- Misinterpreting what remainders mean in context

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "You have 47 pencils to put into boxes of 6. How many boxes can you fill? How many pencils are left?"
   Connect to division with remainders learned earlier

2. DIRECT INSTRUCTION (12 minutes):
   Model 47 ÷ 6 using long division:
   - Divide tens: 4 tens can\'t be divided by 6 (too small)
   - Regroup: 4 tens = 40, plus 7 ones = 47
   - Divide: 47 ÷ 6 = 7 R5
   - Check: (7 × 6) + 5 = 42 + 5 = 47 ✓
   Show with manipulatives
   Model more: 59 ÷ 4, 73 ÷ 5
   Emphasize checking work

3. GUIDED PRACTICE (13 minutes):
   Divide together: 38 ÷ 5, 67 ÷ 8, 79 ÷ 9
   Write remainders correctly
   Check each answer using the formula
   Solve word problems and interpret remainders contextually
   (Sometimes round up, sometimes round down, sometimes remainder is the answer)

4. INDEPENDENT PRACTICE (9 minutes):
   Students divide 2-digit numbers with remainders
   Check all work using multiplication formula
   Interpret remainders in word problem contexts
   Create division problems with specific remainders

DIFFERENTIATION:
For Struggling Learners:
- Provide checking formula as reference
- Use manipulatives to show remainders concretely
- Highlight the remainder in a different color
- Practice with smaller dividends first

For Advanced Learners:
- Divide 3-digit numbers with remainders
- Find dividends that produce specific remainders
- Explore patterns in remainders
- Write word problems requiring different remainder interpretations

ASSESSMENT INDICATORS:
- Divides 2-digit numbers with remainders accurately
- Expresses remainders correctly
- Checks division using (Q × D) + R = dividend
- Interprets remainders appropriately in context', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Divide 2-Digit with Remainder' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Divide 3-Digit by 1-Digit
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Divide 3-Digit by 1-Digit' AND grade_level_min = 4),
  'Divide 3-Digit by 1-Digit Topic Guide', 'Extend to 3-digit dividends',
  'DIVIDE 3-DIGIT BY 1-DIGIT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Dividing 2-digit by 1-digit numbers
- Understanding place value to hundreds
- Long division algorithm proficiency
- Regrouping across multiple place values

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide 3-digit numbers by 1-digit numbers using long division
2. Manage regrouping across three place values
3. Handle problems with and without remainders
4. Apply to real-world problems with larger numbers

KEY CONCEPTS:
- The algorithm extends to any number of digits
- Divide, multiply, subtract, bring down—repeat for each place value
- Start with hundreds, then tens, then ones
- Organization and careful recording prevent errors
- Estimation helps verify reasonableness

COMMON MISCONCEPTIONS:
- Making errors due to length and complexity
- Forgetting to bring down digits
- Misaligning digits in the quotient
- Not regrouping correctly across multiple places

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "A factory produced 456 toys. They pack 3 toys per box. How many boxes?"
   Connect: "This is like 2-digit division, just with one more place value!"

2. DIRECT INSTRUCTION (13 minutes):
   Model 456 ÷ 3:
   - Hundreds: 4 ÷ 3 = 1 R1, regroup to tens
   - Tens: 15 tens ÷ 3 = 5
   - Ones: 6 ÷ 3 = 2
   - Answer: 152
   Check: 152 × 3 = 456 ✓
   Show with place value blocks
   Model with remainder: 567 ÷ 4 = 141 R3
   Estimate first to check reasonableness

3. GUIDED PRACTICE (13 minutes):
   Divide together: 348 ÷ 4, 567 ÷ 5, 789 ÷ 6
   Students direct each step
   Check with multiplication
   Estimate first, then compare to exact quotient
   Solve contextual word problems

4. INDEPENDENT PRACTICE (10 minutes):
   Students divide 3-digit by 1-digit numbers
   Include problems with and without remainders
   Apply to real-world contexts
   Verify all answers using multiplication

DIFFERENTIATION:
For Struggling Learners:
- Use graph paper for organization
- Provide step-by-step process cards
- Start with dividends that divide evenly
- Allow use of manipulatives or drawings

For Advanced Learners:
- Extend to 4-digit dividends
- Include 2-digit divisors
- Solve multi-step problems with division
- Analyze and explain common error patterns

ASSESSMENT INDICATORS:
- Divides 3-digit by 1-digit numbers accurately
- Manages regrouping across all place values
- Organizes work systematically
- Uses estimation to verify answers', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Divide 3-Digit by 1-Digit' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Divide 4-Digit by 1-Digit
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Divide 4-Digit by 1-Digit' AND grade_level_min = 4),
  'Divide 4-Digit by 1-Digit Topic Guide', 'Extend to 4-digit dividends',
  'DIVIDE 4-DIGIT BY 1-DIGIT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Dividing 3-digit by 1-digit numbers
- Place value to thousands
- Strong organizational skills
- Proficiency with long division algorithm

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide 4-digit numbers by 1-digit numbers accurately
2. Manage complex regrouping across four place values
3. Maintain precision with longer division problems
4. Apply to authentic problems involving large quantities

KEY CONCEPTS:
- The algorithm works the same regardless of the number of digits
- Divide, multiply, subtract, bring down—repeat for each place
- Careful organization is essential with longer problems
- Estimation is critical for checking large quotients
- Each step follows the same pattern

COMMON MISCONCEPTIONS:
- Making careless errors due to problem length
- Losing track of which digit to bring down
- Misaligning digits in the quotient
- Not estimating to catch unreasonable answers

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "A stadium holds 5,678 people. Seats are arranged in 6 sections. About how many seats per section?"
   Ask: "Does the longer number make this harder, or just longer?"

2. DIRECT INSTRUCTION (13 minutes):
   Model 5,678 ÷ 6:
   - Thousands: 5 ÷ 6 = 0 R5, regroup
   - Hundreds: 56 ÷ 6 = 9 R2, regroup
   - Tens: 27 ÷ 6 = 4 R3, regroup
   - Ones: 38 ÷ 6 = 6 R2
   - Answer: 946 R2
   Check: (946 × 6) + 2 = 5,676 + 2 = 5,678 ✓
   Estimate: 6,000 ÷ 6 = 1,000 (answer is reasonable)
   Emphasize careful recording at each step

3. GUIDED PRACTICE (13 minutes):
   Divide together: 3,456 ÷ 4, 6,789 ÷ 5, 8,234 ÷ 7
   Students guide each step while teacher records
   Check with multiplication formula
   Estimate first to predict quotient size
   Solve real-world problems with context

4. INDEPENDENT PRACTICE (10 minutes):
   Students divide 4-digit by 1-digit numbers
   Include problems with and without remainders
   Apply to authentic contexts (distances, populations, budgets)
   Partner-check for accuracy

DIFFERENTIATION:
For Struggling Learners:
- Use lined or graph paper for alignment
- Provide worked examples for reference
- Break into checkpoints (complete hundreds, then tens, etc.)
- Allow calculators to verify answers

For Advanced Learners:
- Divide 5-digit or larger numbers
- Include 2-digit divisors
- Solve complex multi-step problems
- Create real-world applications and present solutions

ASSESSMENT INDICATORS:
- Divides 4-digit by 1-digit numbers accurately
- Manages all regrouping steps correctly
- Maintains organization throughout the process
- Uses estimation to verify reasonableness', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Divide 4-Digit by 1-Digit' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Partial Quotients Method
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Partial Quotients Method' AND grade_level_min = 4),
  'Partial Quotients Method Topic Guide', 'Use repeated subtraction strategy',
  'PARTIAL QUOTIENTS METHOD - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding division as repeated subtraction
- Multiplying by multiples of 10
- Basic division facts
- Subtraction fluency

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide using the partial quotients strategy
2. Break division into manageable chunks
3. Add partial quotients to find the total quotient
4. Choose efficient partial quotients

KEY CONCEPTS:
- Partial quotients means subtracting groups repeatedly
- Start with easy multiples (10×, 5×, etc.)
- Subtract each group and keep track
- Add all partial quotients for the final answer
- This builds conceptual understanding of division

COMMON MISCONCEPTIONS:
- Taking too many small steps (inefficient)
- Forgetting to add all partial quotients
- Subtracting more than what remains
- Not understanding when to stop subtracting

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present: "We have 156 apples to pack into boxes of 6. Instead of long division, let\'s think: How many boxes of 10 can we fill? Then what?"
   Build on understanding division as "how many groups?"

2. DIRECT INSTRUCTION (14 minutes):
   Model 156 ÷ 6 using partial quotients:
   - 10 groups of 6 = 60, subtract: 156 - 60 = 96 (quotient so far: 10)
   - 10 more groups of 6 = 60, subtract: 96 - 60 = 36 (quotient: 10 + 10 = 20)
   - 5 groups of 6 = 30, subtract: 36 - 30 = 6 (quotient: 20 + 5 = 25)
   - 1 group of 6 = 6, subtract: 6 - 6 = 0 (quotient: 25 + 1 = 26)
   - Answer: 26
   Show the vertical recording format
   Model more efficiently: 156 ÷ 6 using 20 groups first, then 6
   Discuss flexibility in choosing partial quotients

3. GUIDED PRACTICE (12 minutes):
   Use partial quotients together: 144 ÷ 8, 195 ÷ 5, 234 ÷ 6
   Students suggest which groups to subtract
   Compare different approaches (efficient vs less efficient)
   Connect to long division algorithm
   Solve word problems using this method

4. INDEPENDENT PRACTICE (9 minutes):
   Students divide using partial quotients
   Include 2-digit and 3-digit dividends
   Reflect on which partial quotients were most efficient
   Compare to standard long division

DIFFERENTIATION:
For Struggling Learners:
- Start with multiples of 10 or 5
- Use fewer, smaller partial quotients
- Provide multiplication charts for reference
- Allow drawings or models to visualize groups

For Advanced Learners:
- Minimize the number of steps by choosing larger partial quotients
- Divide with 2-digit divisors
- Explore division with remainders using this method
- Compare efficiency of different strategies

ASSESSMENT INDICATORS:
- Uses partial quotients to divide accurately
- Adds all partial quotients correctly
- Chooses reasonably efficient partial quotients
- Explains the connection to division as repeated subtraction', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Partial Quotients Method' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Divide by 2-Digit Divisors
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Divide by 2-Digit Divisors' AND grade_level_min = 4),
  'Divide by 2-Digit Divisors Topic Guide', 'Divide by numbers 10-99',
  'DIVIDE BY 2-DIGIT DIVISORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Dividing by 1-digit divisors proficiently
- Estimating quotients using compatible numbers
- Multiplying 2-digit by 1-digit numbers
- Strong place value understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide by 2-digit divisors using long division
2. Estimate quotient digits using rounding and trial
3. Adjust estimates when necessary
4. Verify quotients using multiplication

KEY CONCEPTS:
- Round the divisor to estimate quotient digits
- Use trial and error to find the correct digit
- Adjust if the product is too large or too small
- The algorithm is the same, but estimation is more critical
- Check work by multiplying quotient × divisor

COMMON MISCONCEPTIONS:
- Not estimating quotient digits before trying
- Giving up when first estimate doesn\'t work
- Forgetting that trial and error is part of the process
- Not checking work to verify accuracy

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present: "You have 168 marbles and containers that hold 24 each. How many containers?"
   Ask: "How can we estimate? What number close to 24 is easier to work with?"

2. DIRECT INSTRUCTION (15 minutes):
   Model 168 ÷ 24:
   - Estimate: round 24 to 20; 168 ÷ 20 ≈ 8
   - Try 8: 24 × 8 = 192 (too big!)
   - Try 7: 24 × 7 = 168 (perfect!)
   - Answer: 7
   Show the long division format
   Model with remainder: 195 ÷ 23
   Emphasize that adjusting estimates is normal
   Teach the checking strategy

3. GUIDED PRACTICE (13 minutes):
   Divide together: 144 ÷ 12, 234 ÷ 18, 345 ÷ 23
   Students estimate quotient digits
   Practice adjusting when estimates don\'t work
   Check all answers with multiplication
   Solve word problems requiring 2-digit divisors

4. INDEPENDENT PRACTICE (10 minutes):
   Students divide by 2-digit divisors
   Include problems with and without remainders
   Emphasize estimation and checking
   Apply to real-world contexts

DIFFERENTIATION:
For Struggling Learners:
- Start with divisors that are multiples of 10
- Provide multiplication charts for checking
- Use partial quotients as an alternative strategy
- Allow more time for trial and error

For Advanced Learners:
- Divide larger dividends (4-digit) by 2-digit divisors
- Minimize adjustments through better estimation
- Solve complex multi-step word problems
- Explore decimal quotients (preview)

ASSESSMENT INDICATORS:
- Divides by 2-digit divisors accurately
- Estimates quotient digits using rounding
- Adjusts estimates when necessary
- Verifies answers using multiplication', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Divide by 2-Digit Divisors' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Interpreting Remainders
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Interpreting Remainders' AND grade_level_min = 4),
  'Interpreting Remainders Topic Guide', 'Decide how to use remainders',
  'INTERPRETING REMAINDERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Division with remainders fluency
- Understanding of remainders conceptually
- Reading comprehension for word problems
- Reasoning about real-world contexts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Interpret remainders differently based on context
2. Decide when to round quotients up, down, or use the remainder as the answer
3. Explain reasoning for remainder interpretation
4. Apply appropriate interpretations to solve problems

KEY CONCEPTS:
- Sometimes the remainder is the answer (leftover items)
- Sometimes round up (need one more container)
- Sometimes round down (can\'t have partial groups)
- Sometimes ignore the remainder (not relevant to the question)
- Context determines the correct interpretation

COMMON MISCONCEPTIONS:
- Always rounding up or always rounding down
- Not considering what the remainder represents
- Giving decimal answers when they don\'t make sense in context
- Not reading the question carefully

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Present three scenarios with 23 ÷ 4 = 5 R3:
   A) "23 students in groups of 4. How many complete groups?" (Answer: 5)
   B) "23 people need cars that seat 4. How many cars?" (Answer: 6, round up)
   C) "23 cookies, 4 per bag. How many cookies left over?" (Answer: 3, the remainder)
   Discuss why the same division has different answers

2. DIRECT INSTRUCTION (13 minutes):
   Teach the four interpretation types:
   1. Use the quotient only (ignore remainder): "How many complete groups?"
   2. Round up (add 1 to quotient): "How many containers needed?"
   3. Use the remainder as the answer: "How many left over?"
   4. Express as a fraction or decimal (preview): "Exactly how much per person?"
   Model each type with examples and visuals
   Emphasize reading the question carefully

3. GUIDED PRACTICE (13 minutes):
   Solve and interpret together:
   - "47 photos, 6 per page. How many pages needed?" (Round up: 8)
   - "47 books, 6 per shelf. How many complete shelves?" (Quotient: 7)
   - "47 stickers, 6 per student. How many extra?" (Remainder: 5)
   Discuss why each interpretation makes sense
   Students justify their reasoning

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve division word problems
   Determine appropriate remainder interpretation for each
   Explain reasoning in writing
   Create their own problems with different interpretations

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids or manipulatives
- Categorize problems by interpretation type
- Use graphic organizers for problem-solving
- Start with concrete, relatable contexts

For Advanced Learners:
- Write problems requiring each interpretation type
- Analyze ambiguous problems and discuss
- Explore fractional and decimal interpretations
- Solve multi-step problems with remainders

ASSESSMENT INDICATORS:
- Correctly interprets remainders based on context
- Explains reasoning for interpretation choices
- Recognizes when to round up, round down, or use remainder
- Applies appropriate interpretations consistently', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Interpreting Remainders' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Division Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Division Word Problems' AND grade_level_min = 4),
  'Division Word Problems Topic Guide', 'Solve real-world division problems',
  'DIVISION WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multi-digit division fluency
- Understanding of division contexts
- Interpreting remainders appropriately
- Reading comprehension skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Solve multi-step word problems involving division
2. Identify when division is the appropriate operation
3. Interpret remainders correctly based on context
4. Verify solutions for reasonableness

KEY CONCEPTS:
- Division represents equal sharing, equal grouping, and comparison
- Key phrases: "per," "each," "divide equally," "share," "how many groups"
- Multi-step problems may combine operations
- Always verify that answers make sense in context
- Remainders must be interpreted appropriately

COMMON MISCONCEPTIONS:
- Relying only on keywords without understanding the problem
- Not reading the entire problem before solving
- Using the wrong operation based on misunderstanding context
- Forgetting units in answers

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present: "A baker made 144 cupcakes. She packs 8 in each box. How many boxes does she need? If she sells boxes for $12 each, how much does she earn?"
   Ask: "What operations do we need? What do we need to find first?"

2. DIRECT INSTRUCTION (13 minutes):
   Teach a problem-solving framework:
   1. READ carefully and understand the context
   2. IDENTIFY what you need to find
   3. DETERMINE which operation(s) to use
   4. SOLVE step-by-step
   5. CHECK for reasonableness
   Model with various division contexts:
   - Equal sharing: "375 tickets shared among 5 classes"
   - Equal grouping: "168 students in teams of 24"
   - Comparison: "One number is 6 times another"
   Show multi-step problems combining division with other operations

3. GUIDED PRACTICE (13 minutes):
   Solve problems together using the framework:
   - "A store has 456 books. They display 8 per shelf. How many shelves? If 3 shelves break, how many books must be moved?"
   - "235 students go on a field trip. Buses hold 48 students. How many buses needed?"
   Students explain their reasoning
   Interpret remainders appropriately
   Discuss alternative solution pathways

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied division word problems
   Include one-step and multi-step problems
   Require written explanations of thinking
   Create their own word problems for partners to solve

DIFFERENTIATION:
For Struggling Learners:
- Provide simpler numbers initially
- Use graphic organizers for problem-solving steps
- Highlight or underline key information
- Start with one-step problems

For Advanced Learners:
- Include extraneous information in problems
- Create complex multi-step scenarios
- Write problems for given equations
- Analyze multiple solution methods

ASSESSMENT INDICATORS:
- Identifies division as the appropriate operation
- Solves multi-step problems accurately
- Interprets remainders correctly based on context
- Explains solution methods clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Division Word Problems' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Connecting Multiplication and Division
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Connecting Multiplication and Division' AND grade_level_min = 4),
  'Connecting Multiplication and Division Topic Guide', 'Check division with multiplication',
  'CONNECTING MULTIPLICATION AND DIVISION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multiplication and division fluency
- Understanding of inverse operations
- Fact family knowledge
- Checking strategies

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize multiplication and division as inverse operations
2. Use multiplication to check division answers
3. Apply the relationship to solve missing number problems
4. Create fact families with larger numbers

KEY CONCEPTS:
- Multiplication and division "undo" each other
- If a ÷ b = c, then c × b = a
- For remainders: (quotient × divisor) + remainder = dividend
- Fact families show the relationship among numbers
- This relationship helps verify answers

COMMON MISCONCEPTIONS:
- Not understanding that operations are inverses
- Forgetting to add the remainder when checking
- Confusing which numbers to multiply
- Not recognizing fact family relationships with larger numbers

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "If 144 ÷ 12 = 12, how can we check if this is correct?"
   Guide students to see that 12 × 12 should equal 144

2. DIRECT INSTRUCTION (12 minutes):
   Review fact families with basic facts: 6, 8, 48
   - 6 × 8 = 48, 8 × 6 = 48, 48 ÷ 6 = 8, 48 ÷ 8 = 6
   Extend to larger numbers: 24, 6, 144
   - 24 × 6 = 144, 6 × 24 = 144, 144 ÷ 6 = 24, 144 ÷ 24 = 6
   Show checking with remainders: 145 ÷ 6 = 24 R1
   - Check: (24 × 6) + 1 = 144 + 1 = 145 ✓
   Model missing number problems: ? × 12 = 156, so 156 ÷ 12 = ?

3. GUIDED PRACTICE (13 minutes):
   Create fact families together: 234, 6, 39
   Check division problems using multiplication
   Solve missing number problems: 23 × ? = 345
   Discuss how multiplication/division relationship helps problem-solving
   Apply to word problems requiring inverse thinking

4. INDEPENDENT PRACTICE (9 minutes):
   Students create fact families with larger numbers
   Check division work using multiplication
   Solve missing factor and missing dividend problems
   Explain the inverse relationship in their own words

DIFFERENTIATION:
For Struggling Learners:
- Start with smaller numbers
- Use arrays or area models to show relationship
- Provide fact family templates
- Practice basic fact families before extending

For Advanced Learners:
- Work with 3 and 4-digit numbers
- Solve algebraic-style problems (3x = 144)
- Create complex word problems using inverse operations
- Explore other inverse relationships (addition/subtraction)

ASSESSMENT INDICATORS:
- Identifies multiplication and division as inverse operations
- Uses multiplication to check division accurately
- Creates fact families with multi-digit numbers
- Applies inverse relationship to solve problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Connecting Multiplication and Division' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- FACTORS AND MULTIPLES TOPICS (13 topics)
-- ============================================================================

-- Understanding Factors
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Factors' AND grade_level_min = 4),
  'Understanding Factors Topic Guide', 'Find factors of a number',
  'UNDERSTANDING FACTORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multiplication facts fluency
- Understanding of division
- Array and area model knowledge
- Skip counting skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define factors as numbers that divide evenly into another number
2. Find all factors of a given number systematically
3. Represent factors using arrays and equations
4. Understand that factors always come in pairs

KEY CONCEPTS:
- A factor divides a number with no remainder
- Every number has at least two factors: 1 and itself
- Factors come in pairs: if a × b = n, then a and b are both factors of n
- Arrays show factors visually (rows × columns)
- Finding factors systematically prevents missing any

COMMON MISCONCEPTIONS:
- Thinking factors and multiples are the same
- Forgetting 1 and the number itself as factors
- Listing factors in random order and missing some
- Not understanding that factors are ≤ the number

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "We need to arrange 24 chairs in equal rows for an assembly. What are all the possible arrangements?"
   Connect to arrays showing different factor pairs

2. DIRECT INSTRUCTION (12 minutes):
   Define factors using 24 as example:
   - Factors of 24: numbers that divide 24 evenly
   - Systematic search: 1×24, 2×12, 3×8, 4×6
   - List factors: 1, 2, 3, 4, 6, 8, 12, 24
   Show with arrays: 1×24, 2×12, 3×8, 4×6
   Teach systematic approach: start with 1, test each number
   Model finding factors of 36 and 20
   Emphasize factor pairs

3. GUIDED PRACTICE (13 minutes):
   Find factors together: 18, 30, 28, 32
   Use arrays or area models to verify
   Write factor pairs for each number
   Discuss patterns (even numbers have 2 as a factor, etc.)
   Check work by multiplication

4. INDEPENDENT PRACTICE (9 minutes):
   Students find all factors of given numbers
   Draw arrays showing factor pairs
   Verify using division
   Identify numbers with specific factor counts

DIFFERENTIATION:
For Struggling Learners:
- Provide hundreds charts to test divisibility
- Start with smaller numbers (under 20)
- Use physical manipulatives to build arrays
- Provide factor tables to complete

For Advanced Learners:
- Find factors of larger numbers (50-100)
- Identify perfect squares (numbers with odd number of factors)
- Explore why some numbers have many factors
- Find numbers with exactly a certain number of factors

ASSESSMENT INDICATORS:
- Defines factors correctly
- Finds all factors of a number systematically
- Represents factors using arrays or equations
- Recognizes factor pairs', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Factors' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Factor Pairs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Factor Pairs' AND grade_level_min = 4),
  'Factor Pairs Topic Guide', 'Find all factor pairs of a number',
  'FACTOR PAIRS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding factors
- Multiplication facts fluency
- Division understanding
- Array knowledge

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify all factor pairs of a given number
2. Use factor pairs to organize factor-finding systematically
3. Recognize that factor pairs multiply to give the original number
4. Apply factor pairs to solve area and array problems

KEY CONCEPTS:
- A factor pair is two numbers that multiply to give the target number
- Factor pairs are symmetric: if (a, b) is a pair, so is (b, a)
- Perfect squares have one factor pair where both factors are the same
- Listing factor pairs ensures all factors are found
- Factor pairs relate to rectangular arrays

COMMON MISCONCEPTIONS:
- Listing the same pair twice in different orders
- Missing factor pairs in the middle range
- Not recognizing perfect squares have a middle pair
- Confusing factor pairs with factor lists

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "24 tiles can make different rectangles. What are all the length-width combinations?"
   Show: 1×24, 2×12, 3×8, 4×6 (and their reverses)

2. DIRECT INSTRUCTION (11 minutes):
   Teach systematic factor pair finding for 30:
   - Start with 1: 1 × 30 = 30 → (1, 30)
   - Try 2: 2 × 15 = 30 → (2, 15)
   - Try 3: 3 × 10 = 30 → (3, 10)
   - Try 4: doesn\'t divide evenly
   - Try 5: 5 × 6 = 30 → (5, 6)
   - Stop when factors start repeating
   Factor pairs: (1,30), (2,15), (3,10), (5,6)
   Show with 36 (including perfect square pair 6×6)
   Connect to area problems

3. GUIDED PRACTICE (13 minutes):
   Find factor pairs together: 24, 48, 40, 49
   Draw rectangles showing each pair
   Discuss when to stop searching
   Identify perfect squares by the "middle" pair
   Apply to word problems

4. INDEPENDENT PRACTICE (10 minutes):
   Students find all factor pairs for given numbers
   Verify using multiplication
   Identify which numbers are perfect squares
   Solve problems requiring factor pair knowledge

DIFFERENTIATION:
For Struggling Learners:
- Provide multiplication charts
- Start with smaller numbers
- Use grid paper to draw rectangles
- Highlight when to stop searching

For Advanced Learners:
- Find factor pairs of large numbers
- Determine how many factor pairs without listing
- Explore relationships between number of factors and perfect squares
- Create problems requiring specific factor pairs

ASSESSMENT INDICATORS:
- Finds all factor pairs systematically
- Recognizes when to stop searching
- Uses factor pairs to organize information
- Connects factor pairs to arrays and area', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factor Pairs' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Divisibility Rules 2 5 10
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Divisibility Rules 2 5 10' AND grade_level_min = 4),
  'Divisibility Rules 2, 5, 10 Topic Guide', 'Test divisibility by 2, 5, and 10',
  'DIVISIBILITY RULES 2, 5, 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of even and odd numbers
- Place value knowledge (ones place)
- Basic multiplication and division
- Understanding of remainders

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Apply the divisibility rule for 2 (even numbers)
2. Apply the divisibility rule for 5 (ends in 0 or 5)
3. Apply the divisibility rule for 10 (ends in 0)
4. Use divisibility rules to quickly test factors

KEY CONCEPTS:
- Divisible by 2: last digit is 0, 2, 4, 6, or 8 (even)
- Divisible by 5: last digit is 0 or 5
- Divisible by 10: last digit is 0
- These rules use only the ones place digit
- Divisibility means "divides evenly with no remainder"

COMMON MISCONCEPTIONS:
- Confusing divisibility with division calculation
- Thinking rules work for other numbers the same way
- Not understanding why the ones place determines divisibility
- Forgetting that divisibility means "no remainder"

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present a large number: 3,456
   Ask: "Without dividing, can you tell if this is divisible by 2? By 5? By 10?"
   Introduce the idea of "shortcuts"

2. DIRECT INSTRUCTION (12 minutes):
   Teach each rule with pattern exploration:
   Divisibility by 2:
   - List multiples: 2, 4, 6, 8, 10, 12... notice pattern in ones place
   - Rule: even numbers are divisible by 2
   Divisibility by 5:
   - List multiples: 5, 10, 15, 20, 25... notice 0 or 5 pattern
   - Rule: ends in 0 or 5
   Divisibility by 10:
   - List multiples: 10, 20, 30, 40... notice 0 pattern
   - Rule: ends in 0
   Test with large numbers: 4,678 / 3,445 / 5,670

3. GUIDED PRACTICE (13 minutes):
   Test numbers together: 1,234 / 6,785 / 3,490 / 9,875
   Determine divisibility by 2, 5, and 10
   Verify a few by actual division
   Discuss why these rules work (place value)
   Apply to factor-finding tasks

4. INDEPENDENT PRACTICE (9 minutes):
   Students test divisibility of given numbers
   Sort numbers by divisibility (2, 5, 10, multiple, or none)
   Find numbers in a range divisible by each
   Explain why the rules work

DIFFERENTIATION:
For Struggling Learners:
- Create charts showing multiples with patterns highlighted
- Use color-coding for ones place digits
- Practice with 2-digit numbers before larger ones
- Provide divisibility rule reference cards

For Advanced Learners:
- Explore divisibility by 4 and 8 (using last 2 or 3 digits)
- Find numbers divisible by multiple rules
- Create visual proofs of why rules work
- Investigate patterns in numbers divisible by 2, 5, and 10

ASSESSMENT INDICATORS:
- Correctly applies divisibility rules for 2, 5, and 10
- Tests divisibility quickly without full division
- Explains why each rule works
- Uses rules to identify factors efficiently', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Divisibility Rules 2 5 10' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Divisibility Rules 3 6 9
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Divisibility Rules 3 6 9' AND grade_level_min = 4),
  'Divisibility Rules 3, 6, 9 Topic Guide', 'Test divisibility by 3, 6, and 9',
  'DIVISIBILITY RULES 3, 6, 9 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Divisibility rules for 2, 5, 10
- Adding multi-digit numbers
- Understanding of divisibility
- Multiplication facts for 3, 6, 9

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Apply the divisibility rule for 3 (sum of digits divisible by 3)
2. Apply the divisibility rule for 9 (sum of digits divisible by 9)
3. Apply the divisibility rule for 6 (divisible by both 2 and 3)
4. Use these rules to test factors quickly

KEY CONCEPTS:
- Divisible by 3: sum of digits is divisible by 3
- Divisible by 9: sum of digits is divisible by 9
- Divisible by 6: must be divisible by both 2 and 3 (even AND digit sum divisible by 3)
- These rules require adding digits
- Multiple divisibility rules can be combined

COMMON MISCONCEPTIONS:
- Looking at last digit only (like with 2, 5, 10 rules)
- Not adding all digits
- Forgetting that 6 requires two conditions
- Confusing the rules for 3 and 9

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present: 12,345
   Ask: "Can we tell if this huge number is divisible by 3 without dividing?"
   Build curiosity about digit sum rules

2. DIRECT INSTRUCTION (14 minutes):
   Teach divisibility by 3:
   - Example: 2,478 → 2+4+7+8 = 21 → 21÷3 = 7, so yes
   - Test: 1,234 → 1+2+3+4 = 10 → not divisible by 3
   Teach divisibility by 9:
   - Example: 5,679 → 5+6+7+9 = 27 → 27÷9 = 3, so yes
   - Test: 2,478 → 21 → not divisible by 9
   Teach divisibility by 6:
   - Must be even (divisible by 2) AND digit sum divisible by 3
   - Example: 5,748 → even? yes, digit sum? 24, divisible by 3? yes → divisible by 6
   Practice with various numbers

3. GUIDED PRACTICE (13 minutes):
   Test together: 3,456 / 7,893 / 4,236 / 8,145
   Calculate digit sums
   Apply rules for 3, 6, and 9
   Verify some by actual division
   Discuss relationships between rules

4. INDEPENDENT PRACTICE (10 minutes):
   Students test divisibility for given numbers
   Sort numbers by divisibility
   Find numbers divisible by 3 but not 9
   Find numbers divisible by 6
   Explain why the rules work

DIFFERENTIATION:
For Struggling Learners:
- Provide digit sum worksheets
- Start with 2-digit numbers
- Use calculators to verify digit sums
- Create reference posters with rules

For Advanced Learners:
- Explore why digit sum rules work (mod arithmetic preview)
- Find patterns in numbers divisible by 3, 6, and 9
- Create numbers with specific divisibility properties
- Investigate divisibility by 12 and 18

ASSESSMENT INDICATORS:
- Correctly calculates digit sums
- Applies divisibility rules for 3, 6, and 9
- Combines rules for 6 (divisible by 2 and 3)
- Explains reasoning for divisibility conclusions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Divisibility Rules 3 6 9' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Divisibility Rules 4
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Divisibility Rules 4' AND grade_level_min = 4),
  'Divisibility Rule for 4 Topic Guide', 'Test divisibility by 4',
  'DIVISIBILITY RULE FOR 4 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Divisibility rules for 2
- Understanding of place value (tens and ones)
- Division by 4 fluency
- Reading two-digit numbers

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Apply the divisibility rule for 4 (last two digits divisible by 4)
2. Test two-digit numbers for divisibility by 4
3. Extend the rule to large numbers
4. Explain why the rule works using place value

KEY CONCEPTS:
- Divisible by 4: last two digits form a number divisible by 4
- Only check the tens and ones places
- Hundreds, thousands, etc. are already divisible by 4 (100 = 4 × 25)
- This rule is more efficient than full division for large numbers
- Must be even to be divisible by 4 (subset of even numbers)

COMMON MISCONCEPTIONS:
- Checking only the ones place (like rule for 2)
- Thinking all even numbers are divisible by 4
- Not understanding why only last two digits matter
- Confusing the rule with divisibility by 2

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: 3,456,712
   Ask: "Is this huge number divisible by 4? Do we need to divide all of it?"
   Build understanding that we can use a shortcut

2. DIRECT INSTRUCTION (12 minutes):
   Explore why only last two digits matter:
   - 500 ÷ 4 = 125 (all hundreds are divisible by 4)
   - 3,400 ÷ 4 = 850 (all hundreds)
   - So for 3,456, just check 56
   - 56 ÷ 4 = 14, so 3,456 is divisible by 4
   Teach the rule: look at last two digits only
   Practice: 1,728 → check 28 → 28÷4 = 7 ✓
   Practice: 5,634 → check 34 → not divisible by 4
   Show pattern: multiples of 4 end in 00, 04, 08, 12, 16, 20, 24, 28, 32...

3. GUIDED PRACTICE (13 minutes):
   Test together: 3,416 / 7,854 / 2,628 / 5,736
   Identify the last two digits
   Test divisibility by 4
   Verify with a few actual divisions
   Find all numbers divisible by 4 in a range (like 40-60)

4. INDEPENDENT PRACTICE (9 minutes):
   Students test divisibility of large numbers by 4
   Identify last two digits and apply rule
   Sort numbers by divisibility
   Find numbers that are divisible by 4 but not 8
   Explain why the rule works

DIFFERENTIATION:
For Struggling Learners:
- Provide lists of two-digit multiples of 4
- Use highlighters to mark last two digits
- Practice with 2-digit numbers before extending
- Provide a reference chart of multiples of 4

For Advanced Learners:
- Explore divisibility by 8 (last 3 digits)
- Find patterns in numbers divisible by 4
- Create numbers with specific divisibility properties
- Prove why the rule works using place value

ASSESSMENT INDICATORS:
- Identifies last two digits of a number
- Correctly applies divisibility rule for 4
- Explains why only last two digits matter
- Uses rule to quickly test large numbers', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Divisibility Rules 4' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Prime Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Prime Numbers' AND grade_level_min = 4),
  'Prime Numbers Topic Guide', 'Identify prime numbers',
  'PRIME NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of factors
- Finding all factors of a number
- Multiplication facts fluency
- Divisibility rules knowledge

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define prime numbers as numbers with exactly two factors
2. Identify prime numbers up to 100
3. Understand that 1 is neither prime nor composite
4. Use divisibility tests to determine if a number is prime

KEY CONCEPTS:
- A prime number has exactly two factors: 1 and itself
- The first few primes: 2, 3, 5, 7, 11, 13, 17, 19, 23, 29...
- 2 is the only even prime number
- 1 is not prime (it has only one factor)
- Prime numbers are the "building blocks" of all numbers

COMMON MISCONCEPTIONS:
- Thinking 1 is prime (it has only one factor, not two)
- Thinking all odd numbers are prime
- Confusing prime with odd
- Not recognizing 2 as prime because it\'s even

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present: "Some numbers can only be divided into two groups: 1 row or 1 column. They can\'t make other rectangles!"
   Show with 7 objects: only 1×7 or 7×1 arrays possible
   Introduce term "prime"

2. DIRECT INSTRUCTION (13 minutes):
   Define prime: exactly two factors (1 and itself)
   Test small numbers:
   - 2: factors are 1, 2 → prime
   - 3: factors are 1, 3 → prime
   - 4: factors are 1, 2, 4 → NOT prime (composite)
   - 5: factors are 1, 5 → prime
   Continue pattern through 20
   Explain why 1 is neither prime nor composite
   Show Sieve of Eratosthenes to find primes to 100
   Teach quick test: check divisibility by 2, 3, 5, 7...

3. GUIDED PRACTICE (13 minutes):
   Identify primes together: numbers 20-40
   Use divisibility rules to test
   Create a hundreds chart and highlight all primes
   Discuss patterns (many primes end in 1, 3, 7, 9)
   Practice finding factors to verify

4. INDEPENDENT PRACTICE (10 minutes):
   Students identify primes in given ranges
   Find all primes between 50 and 80
   Classify numbers as prime or composite
   Explain why specific numbers are or aren\'t prime
   Find prime numbers in real-world contexts

DIFFERENTIATION:
For Struggling Learners:
- Provide factor charts for reference
- Start with numbers under 30
- Use hundred charts with primes pre-highlighted
- Practice finding factors before classifying

For Advanced Learners:
- Find primes above 100
- Explore patterns in prime numbers
- Research famous primes (Mersenne primes, twin primes)
- Investigate why there are infinitely many primes

ASSESSMENT INDICATORS:
- Correctly defines prime numbers
- Identifies primes up to 100
- Explains why 1 is not prime
- Uses divisibility rules to test for primality', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Prime Numbers' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Composite Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Composite Numbers' AND grade_level_min = 4),
  'Composite Numbers Topic Guide', 'Identify composite numbers',
  'COMPOSITE NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of prime numbers
- Finding factors of numbers
- Multiplication and division fluency
- Array representation of numbers

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define composite numbers as numbers with more than two factors
2. Identify composite numbers up to 100
3. Distinguish between prime and composite numbers
4. Represent composite numbers as products of factors

KEY CONCEPTS:
- A composite number has more than two factors
- Composite numbers can be represented by multiple rectangular arrays
- Every composite number can be built from prime factors
- All whole numbers >1 are either prime or composite (except 1)
- 4 is the smallest composite number

COMMON MISCONCEPTIONS:
- Confusing composite with even
- Thinking all composite numbers are even
- Forgetting that 1 is neither prime nor composite
- Not recognizing that composite means "more than 2 factors"

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "Unlike primes, some numbers can make many different rectangular arrangements!"
   Show 12 objects: 1×12, 2×6, 3×4 arrays
   Introduce term "composite" (composed of factors)

2. DIRECT INSTRUCTION (12 minutes):
   Define composite: more than two factors
   Test small numbers:
   - 4: factors 1, 2, 4 → composite
   - 6: factors 1, 2, 3, 6 → composite
   - 8: factors 1, 2, 4, 8 → composite
   - 9: factors 1, 3, 9 → composite
   Show arrays for each to visualize multiple factor pairs
   Compare to primes (only one rectangular array beyond 1×n)
   Identify all composites 1-20
   Discuss: all even numbers >2 are composite (divisible by 2)

3. GUIDED PRACTICE (13 minutes):
   Classify numbers 20-40 as prime or composite
   Find all factors to verify composite status
   Draw arrays showing composite numbers
   Identify odd composite numbers (9, 15, 21, 25, 27...)
   Discuss patterns in composite numbers

4. INDEPENDENT PRACTICE (9 minutes):
   Students identify composite numbers in ranges
   Find all composites between 50-70
   Explain why numbers are composite (list factors)
   Represent composite numbers with arrays or area models
   Compare prime and composite in Venn diagrams

DIFFERENTIATION:
For Struggling Learners:
- Use manipulatives to build arrays
- Provide factor-finding tools
- Start with numbers under 30
- Color-code prime vs composite on hundreds charts

For Advanced Learners:
- Find largest composite in a range with fewest/most factors
- Explore highly composite numbers
- Investigate why every composite can be built from primes
- Find consecutive composite numbers

ASSESSMENT INDICATORS:
- Correctly defines composite numbers
- Identifies composites up to 100
- Lists factors to verify composite status
- Distinguishes between prime and composite', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Composite Numbers' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Prime Factorization
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Prime Factorization' AND grade_level_min = 4),
  'Prime Factorization Topic Guide', 'Write numbers as product of primes',
  'PRIME FACTORIZATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Identifying prime and composite numbers
- Finding factors systematically
- Understanding factor pairs
- Divisibility rules mastery

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Express composite numbers as products of prime factors
2. Use factor trees to find prime factorization
3. Write prime factorization in exponential form
4. Understand that prime factorization is unique for each number

KEY CONCEPTS:
- Every composite number can be written as a product of primes
- Prime factorization is unique (Fundamental Theorem of Arithmetic)
- Factor trees help systematically break down numbers
- The same prime may appear multiple times (use exponents)
- Prime factorization is the "building block" representation

COMMON MISCONCEPTIONS:
- Stopping factoring before reaching all primes
- Including 1 in prime factorization
- Thinking different factor trees give different prime factorizations
- Not using exponents for repeated primes

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present: "Every composite number is built from primes, like LEGO bricks!"
   Show: 12 = 2 × 2 × 3 and 30 = 2 × 3 × 5
   Ask: "How can we break any number down to its prime building blocks?"

2. DIRECT INSTRUCTION (14 minutes):
   Teach factor tree method for 24:
   - Start: 24
   - Branch into any factors: 4 × 6
   - Continue: 4 = 2 × 2, and 6 = 2 × 3
   - Prime factorization: 2 × 2 × 2 × 3 = 2³ × 3
   Show different trees arrive at same prime factorization:
   - 24 = 3 × 8 → 3 × (2 × 4) → 3 × 2 × 2 × 2
   Model for 36, 50, 60
   Introduce exponential notation for repeated primes
   Emphasize stopping when all factors are prime

3. GUIDED PRACTICE (13 minutes):
   Create factor trees together: 18, 40, 45, 72
   Write prime factorizations
   Compare different factor tree paths for same number
   Use exponential notation
   Verify by multiplying primes back together

4. INDEPENDENT PRACTICE (10 minutes):
   Students find prime factorizations using factor trees
   Write in both expanded and exponential form
   Verify by multiplication
   Compare classmates\' factor trees for same numbers
   Find numbers with specific prime factorizations

DIFFERENTIATION:
For Struggling Learners:
- Start with smaller numbers
- Provide partially completed factor trees
- Use color-coding for prime vs composite
- Allow calculators for checking

For Advanced Learners:
- Find prime factorizations of larger numbers (100+)
- Explore unique prime factorization theorem
- Use prime factorization to find GCF and LCM
- Investigate numbers with same prime factors (like 12 and 18)

ASSESSMENT INDICATORS:
- Creates accurate factor trees
- Writes complete prime factorizations
- Uses exponential notation correctly
- Explains why prime factorization is unique', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Prime Factorization' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Understanding Multiples
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Multiples' AND grade_level_min = 4),
  'Understanding Multiples Topic Guide', 'Find multiples of a number',
  'UNDERSTANDING MULTIPLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Skip counting fluency
- Multiplication facts mastery
- Understanding of patterns
- Distinguishing multiples from factors

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define multiples as products of a number and whole numbers
2. Generate multiples of any given number
3. Identify multiples in a sequence
4. Distinguish between factors and multiples

KEY CONCEPTS:
- Multiples are the products when you multiply by whole numbers (1, 2, 3...)
- Multiples of n: n×1, n×2, n×3, n×4...
- Every number is a multiple of itself and of 1
- Multiples extend infinitely (no largest multiple)
- Multiples are ≥ the original number (except 0)

COMMON MISCONCEPTIONS:
- Confusing multiples with factors
- Thinking there\'s a limited number of multiples
- Not recognizing that multiples get larger
- Confusing multiples of n with numbers divisible by n

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "A bus arrives every 15 minutes. At what times will it come?"
   Connect to skip counting: 15, 30, 45, 60...
   These are multiples of 15!

2. DIRECT INSTRUCTION (11 minutes):
   Define multiples using 4 as example:
   - 4×1=4, 4×2=8, 4×3=12, 4×4=16, 4×5=20...
   - Multiples of 4: 4, 8, 12, 16, 20, 24, 28...
   Show on number line by skip counting
   Generate multiples of 7: 7, 14, 21, 28, 35, 42...
   Compare to factors: factors of 12 are 1,2,3,4,6,12; multiples of 12 are 12,24,36...
   Emphasize: multiples GO UP, factors are WITHIN

3. GUIDED PRACTICE (13 minutes):
   List first 10 multiples together: 6, 9, 12, 15
   Identify multiples in sequences (circle multiples of 5 in 1-50)
   Determine if given numbers are multiples (Is 56 a multiple of 7?)
   Discuss patterns in multiples
   Apply to word problems

4. INDEPENDENT PRACTICE (10 minutes):
   Students generate multiples of given numbers
   Identify multiples in number ranges
   Determine yes/no for "Is X a multiple of Y?"
   Find common multiples of two numbers (preview)
   Create real-world scenarios involving multiples

DIFFERENTIATION:
For Struggling Learners:
- Use hundred charts to skip count
- Start with easier numbers (2, 5, 10)
- Provide multiplication charts
- Visual aids showing skip counting

For Advanced Learners:
- Find multiples of 2-digit numbers
- Identify patterns in multiples (like multiples of 9)
- Explore multiples in different bases
- Find common multiples of multiple numbers

ASSESSMENT INDICATORS:
- Generates multiples correctly
- Identifies multiples in sequences
- Distinguishes multiples from factors
- Applies multiples to solve problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Multiples' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Common Multiples
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Common Multiples' AND grade_level_min = 4),
  'Common Multiples Topic Guide', 'Find common multiples of two numbers',
  'COMMON MULTIPLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Finding multiples of numbers
- Understanding of multiples concept
- Listing sequences
- Identifying patterns

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find common multiples of two or more numbers
2. List multiples systematically to identify commonality
3. Apply common multiples to solve real-world problems
4. Understand that common multiples extend infinitely

KEY CONCEPTS:
- Common multiples appear in the multiple lists of both/all numbers
- List multiples of each number, then identify which appear in all lists
- Every pair of numbers has infinitely many common multiples
- The smallest common multiple is called the LCM (preview)
- Common multiples are useful in solving pattern problems

COMMON MISCONCEPTIONS:
- Confusing common multiples with common factors
- Thinking there are only a few common multiples
- Not listing enough multiples to find commonality
- Confusing "common" with "greatest" or "least"

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present: "Two buses leave the station: one every 6 minutes, one every 8 minutes. When will both buses leave at the same time again?"
   Connect to finding multiples that appear in both patterns

2. DIRECT INSTRUCTION (13 minutes):
   Model finding common multiples of 4 and 6:
   - Multiples of 4: 4, 8, 12, 16, 20, 24, 28, 32, 36, 40...
   - Multiples of 6: 6, 12, 18, 24, 30, 36, 42, 48...
   - Common multiples: 12, 24, 36... (infinitely many more)
   Use number lines or skip counting to visualize
   Model another: common multiples of 3 and 5
   - Multiples of 3: 3, 6, 9, 12, 15, 18, 21, 24, 27, 30...
   - Multiples of 5: 5, 10, 15, 20, 25, 30...
   - Common multiples: 15, 30, 45...

3. GUIDED PRACTICE (13 minutes):
   Find common multiples together: (2,5), (3,4), (6,8), (5,10)
   List multiples systematically
   Circle or highlight common ones
   Discuss patterns noticed
   Apply to word problems involving cycles or patterns

4. INDEPENDENT PRACTICE (10 minutes):
   Students find common multiples of number pairs
   Identify first three common multiples
   Solve problems requiring common multiples
   Create their own "bus schedule" or pattern problems
   Explore common multiples of three numbers

DIFFERENTIATION:
For Struggling Learners:
- Use hundreds charts to track multiples with different colors
- Start with easier pairs (2 and 3, 2 and 5)
- Provide partially completed multiple lists
- Visual aids with overlapping circles

For Advanced Learners:
- Find common multiples of three or more numbers
- Identify patterns that predict common multiples
- Connect to least common multiple (LCM)
- Explore real-world applications (gear ratios, schedules)

ASSESSMENT INDICATORS:
- Lists multiples systematically for each number
- Correctly identifies common multiples
- Explains what "common multiple" means
- Applies to real-world pattern problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Common Multiples' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Least Common Multiple
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Least Common Multiple' AND grade_level_min = 4),
  'Least Common Multiple Topic Guide', 'Find the LCM of two numbers',
  'LEAST COMMON MULTIPLE (LCM) - TOPIC TEACHING GUIDE

PREREQUISITES:
- Finding common multiples
- Listing multiples systematically
- Comparing numbers
- Understanding "least" and "greatest"

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find the least common multiple (LCM) of two numbers
2. Use listing and prime factorization methods
3. Apply LCM to solve real-world problems
4. Understand why LCM is useful

KEY CONCEPTS:
- LCM is the smallest number that is a multiple of all given numbers
- List multiples of each number until you find the first match
- LCM is useful for finding when events occur together
- The LCM of two numbers is ≥ the larger number
- Prime factorization can help find LCM efficiently

COMMON MISCONCEPTIONS:
- Confusing LCM with GCF (greatest common factor)
- Thinking LCM is always the product of the two numbers
- Stopping at the first multiple instead of finding the least common one
- Not understanding when to use LCM vs GCF

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present: "At a factory, Machine A completes a cycle every 12 seconds, Machine B every 8 seconds. When will both finish a cycle at the exact same time?"
   Connect to finding the least common multiple

2. DIRECT INSTRUCTION (14 minutes):
   Model finding LCM of 6 and 8 by listing:
   - Multiples of 6: 6, 12, 18, 24, 30...
   - Multiples of 8: 8, 16, 24, 32...
   - LCM = 24 (first one that appears in both)
   Show alternative method using prime factorization:
   - 6 = 2 × 3
   - 8 = 2 × 2 × 2
   - LCM = 2³ × 3 = 24 (use highest power of each prime)
   Model another: LCM of 4 and 10
   Discuss when LCM equals the product vs when it\'s less

3. GUIDED PRACTICE (13 minutes):
   Find LCM together: (4,6), (5,7), (9,12), (10,15)
   Use both listing and prime factorization methods
   Compare results from different methods
   Apply to word problems (scheduling, patterns, cycles)
   Discuss which method is more efficient for different numbers

4. INDEPENDENT PRACTICE (10 minutes):
   Students find LCM of number pairs
   Use both methods and compare
   Solve real-world problems requiring LCM
   Find LCM of three numbers (challenge)
   Reflect on when LCM is useful

DIFFERENTIATION:
For Struggling Learners:
- Start with pairs that have easy LCMs
- Use hundred charts to visualize multiples
- Focus on listing method first
- Provide multiplication charts for reference

For Advanced Learners:
- Find LCM of three or more numbers
- Use only prime factorization method
- Explore relationship between LCM and GCF
- Create complex word problems requiring LCM

ASSESSMENT INDICATORS:
- Finds LCM correctly using listing method
- Applies prime factorization to find LCM
- Solves real-world problems requiring LCM
- Explains the meaning and purpose of LCM', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Least Common Multiple' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Common Factors
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Common Factors' AND grade_level_min = 4),
  'Common Factors Topic Guide', 'Find common factors of two numbers',
  'COMMON FACTORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Finding all factors of a number
- Understanding factors
- Comparing lists
- Distinguishing factors from multiples

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find common factors of two or more numbers
2. List factors systematically to identify commonality
3. Apply common factors to solve real-world problems
4. Understand that common factors are ≤ the smaller number

KEY CONCEPTS:
- Common factors appear in the factor lists of all given numbers
- 1 is always a common factor
- Common factors are ≤ the smallest number
- Listing factors systematically helps find all common ones
- Common factors are useful for grouping and sharing problems

COMMON MISCONCEPTIONS:
- Confusing common factors with common multiples
- Forgetting that 1 is always a common factor
- Not finding all factors before identifying common ones
- Thinking common factors are always small

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present: "You have 12 red beads and 18 blue beads. What group sizes could you use to organize them so each group has the same number of each color?"
   Connect to finding common factors

2. DIRECT INSTRUCTION (12 minutes):
   Model finding common factors of 12 and 18:
   - Factors of 12: 1, 2, 3, 4, 6, 12
   - Factors of 18: 1, 2, 3, 6, 9, 18
   - Common factors: 1, 2, 3, 6
   Circle or highlight common factors
   Model another: common factors of 24 and 36
   Discuss that common factors ≤ smaller number
   Show how common factors relate to dividing both numbers evenly

3. GUIDED PRACTICE (13 minutes):
   Find common factors together: (8,12), (15,20), (30,45), (16,24)
   List all factors of each number
   Identify which factors are common
   Apply to grouping and sharing word problems
   Discuss patterns in common factors

4. INDEPENDENT PRACTICE (9 minutes):
   Students find common factors of number pairs
   List all common factors for each pair
   Solve word problems requiring common factors
   Find number pairs with specific common factors
   Create their own grouping/sharing problems

DIFFERENTIATION:
For Struggling Learners:
- Use manipulatives to find factors concretely
- Provide factor charts or hundreds charts
- Start with smaller numbers
- Use Venn diagrams to organize factors visually

For Advanced Learners:
- Find common factors of three or more numbers
- Explore relationship to GCF
- Use prime factorization to identify common factors
- Create complex real-world scenarios

ASSESSMENT INDICATORS:
- Lists all factors of each number correctly
- Identifies all common factors
- Explains what "common factor" means
- Applies common factors to solve problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Common Factors' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Greatest Common Factor
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Greatest Common Factor' AND grade_level_min = 4),
  'Greatest Common Factor Topic Guide', 'Find the GCF of two numbers',
  'GREATEST COMMON FACTOR (GCF) - TOPIC TEACHING GUIDE

PREREQUISITES:
- Finding all factors of numbers
- Finding common factors
- Comparing numbers to find greatest
- Prime factorization understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find the greatest common factor (GCF) of two numbers
2. Use listing and prime factorization methods
3. Apply GCF to solve real-world problems
4. Understand when GCF is useful

KEY CONCEPTS:
- GCF is the largest number that is a factor of all given numbers
- Find all common factors, then identify the greatest one
- GCF is useful for simplifying fractions and grouping problems
- GCF is always ≤ the smallest number
- Prime factorization can help find GCF efficiently

COMMON MISCONCEPTIONS:
- Confusing GCF with LCM
- Thinking GCF is always small
- Forgetting that the number itself can be the GCF
- Not finding all factors before identifying GCF

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present: "You have 24 pencils and 36 erasers to make identical supply kits. What\'s the largest number of kits you can make with no items left over?"
   Connect to finding the greatest common factor

2. DIRECT INSTRUCTION (14 minutes):
   Model finding GCF of 24 and 36 by listing:
   - Factors of 24: 1, 2, 3, 4, 6, 8, 12, 24
   - Factors of 36: 1, 2, 3, 4, 6, 9, 12, 18, 36
   - Common factors: 1, 2, 3, 4, 6, 12
   - GCF = 12 (the greatest/largest one)
   Show prime factorization method:
   - 24 = 2³ × 3
   - 36 = 2² × 3²
   - GCF = 2² × 3 = 12 (use lowest power of common primes)
   Model another: GCF of 18 and 30
   Discuss when GCF equals one of the numbers

3. GUIDED PRACTICE (13 minutes):
   Find GCF together: (12,18), (20,30), (45,60), (16,40)
   Use both listing and prime factorization methods
   Compare results from different methods
   Apply to word problems (grouping, simplifying, sharing)
   Discuss which method is more efficient

4. INDEPENDENT PRACTICE (10 minutes):
   Students find GCF of number pairs
   Use both methods and verify
   Solve real-world problems requiring GCF
   Find pairs with specific GCFs
   Reflect on when GCF is useful vs LCM

DIFFERENTIATION:
For Struggling Learners:
- Start with smaller numbers
- Focus on listing method first
- Use Venn diagrams to organize factors
- Provide worked examples for reference

For Advanced Learners:
- Find GCF of three or more numbers
- Use only prime factorization method
- Explore relationship between GCF and LCM (product relationship)
- Apply GCF to simplify fractions

ASSESSMENT INDICATORS:
- Finds GCF correctly using listing method
- Applies prime factorization to find GCF
- Solves real-world problems requiring GCF
- Explains the meaning and purpose of GCF', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Greatest Common Factor' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DECIMALS TOPICS (13 topics)
-- ============================================================================

-- Understanding Hundredths
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Hundredths' AND grade_level_min = 4),
  'Understanding Hundredths Topic Guide', 'Explore hundredths as parts of a whole',
  'UNDERSTANDING HUNDREDTHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding tenths as parts of a whole
- Fractions with denominators of 10 and 100
- Place value to hundreds
- Visual models (grids, number lines)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand hundredths as parts of a whole divided into 100 equal parts
2. Represent hundredths using grids and models
3. Read and write hundredths as fractions and decimals
4. Recognize the relationship between tenths and hundredths

KEY CONCEPTS:
- One whole divided into 100 equal parts creates hundredths
- One hundredth = 1/100 = 0.01
- 10 hundredths = 1 tenth (10/100 = 1/10)
- Hundredths grids (10×10) visualize the concept
- Hundredths place is two places to the right of the decimal point

COMMON MISCONCEPTIONS:
- Confusing hundredths with hundreds
- Not understanding that 0.10 = 0.1 (same value)
- Thinking hundredths are larger than tenths
- Misreading 0.05 as "five hundredths" vs "fifty hundredths"

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a dollar bill: "A penny is one hundredth of a dollar. How many pennies in a dollar?"
   Connect money to hundredths: $0.01 = 1/100

2. DIRECT INSTRUCTION (12 minutes):
   Use a 10×10 grid to show hundredths
   Shade different amounts: 23/100, 7/100, 50/100
   Connect to decimal notation: 23/100 = 0.23
   Show relationship: 10 hundredths = 1 tenth
   Model on number lines between 0 and 1
   Compare: 0.3 vs 0.30 (same value)

3. GUIDED PRACTICE (13 minutes):
   Shade hundredths grids together
   Write fractions and decimals for shaded amounts
   Identify hundredths on number lines
   Convert between fraction and decimal forms
   Use money context: $0.47 = 47 pennies = 47/100

4. INDEPENDENT PRACTICE (9 minutes):
   Students shade grids to show hundredths
   Write decimals for given fraction hundredths
   Identify and compare hundredths
   Apply to money problems

DIFFERENTIATION:
For Struggling Learners:
- Use physical pennies and dollar charts
- Provide pre-printed hundredths grids
- Focus on money context first
- Use color-coding for place values

For Advanced Learners:
- Explore thousandths (preview)
- Convert complex fractions to hundredths
- Compare and order mixed tenths and hundredths
- Create real-world hundredths scenarios

ASSESSMENT INDICATORS:
- Represents hundredths using grids accurately
- Writes hundredths as both fractions and decimals
- Explains the relationship between tenths and hundredths
- Applies hundredths in money contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Hundredths' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;
