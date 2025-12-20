-- Grade 5 Math Topic Prompts
-- Comprehensive 500+ word teaching guides for each topic

-- ============================================
-- PLACE VALUE AND DECIMALS UNIT
-- ============================================

-- Place Value Patterns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Place Value Patterns' AND grade_level_min = 5),
  'Place Value Patterns Topic Guide',
  'Comprehensive teaching approach for decimal place value relationships',
  'PLACE VALUE PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand whole number place value, multiply and divide by powers of 10, understand decimal notation to hundredths, and recognize patterns in number systems.

LEARNING OBJECTIVES:
Students will understand that moving one place left means multiplying by 10, understand that moving one place right means dividing by 10, extend place value understanding to thousandths, explain the relationship between adjacent place values, and apply patterns to read and write very large and very small numbers.

KEY CONCEPTS:
1. Each place is 10 times the place to its right
2. Each place is 1/10 the place to its left
3. The pattern extends infinitely in both directions
4. Decimal point separates whole from parts
5. Place value names: thousands, hundreds, tens, ones, tenths, hundredths, thousandths

COMMON MISCONCEPTIONS:
- Thinking decimal places work differently from whole number places
- Confusion about "times 10" vs "divided by 10" direction
- Difficulty with thousandths (too small to visualize)
- Not seeing the symmetry around the decimal point
- Thinking 0.30 and 0.3 represent different amounts

TEACHING SEQUENCE:

Hook/Engagement:
"What happens when you slide a digit one place to the left? It becomes 10 times bigger! And to the right? 10 times smaller! This pattern is the secret behind our entire number system."

Direct Instruction:
Build the pattern: Create a place value chart from thousands to thousandths. Show that 3 ones is 10 times 3 tenths, and 3 tenths is 10 times 3 hundredths.

Demonstrate: "In 333.333, each 3 has a different value: 300, 30, 3, 0.3, 0.03, 0.003. Notice each is 10× the one to its right!"

Use blocks: Show 1 whole, then 1 tenth (1/10 as big), then 1 hundredth (1/10 of that), then 1 thousandth.

Connect to powers of 10: Ones = 10⁰, tens = 10¹, hundreds = 10², tenths = 10⁻¹...

Guided Practice:
Identify relationships between place values, predict what happens when shifting digits, compare values in different places, create numbers with specific relationships.

Independent Application:
Place value challenges, number comparisons, real-world applications (money, measurements), pattern extension.

DIFFERENTIATION:

Struggling Learners:
- Use physical place value blocks
- Focus on one step at a time
- Visual charts always available
- Practice with familiar decimals (money)
- Gradual extension to thousandths

Advanced Learners:
- Extend to millionths
- Scientific notation preview
- Powers of 10 exploration
- Create place value problems
- Investigate other base systems

ASSESSMENT INDICATORS:
- Explains 10× relationship
- Identifies values of digits
- Extends pattern in both directions
- Applies to reading/writing numbers
- Compares place values

VOCABULARY:
place value, digit, tenths, hundredths, thousandths, times 10, divided by 10, decimal point

CONNECTION TO FUTURE LEARNING:
Place value understanding is essential for decimal operations, scientific notation, and understanding our base-10 system.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Place Value Patterns' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Reading and Writing Decimals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reading and Writing Decimals' AND grade_level_min = 5),
  'Reading and Writing Decimals Topic Guide',
  'Comprehensive teaching approach for decimal notation',
  'READING AND WRITING DECIMALS TO THOUSANDTHS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should read and write decimals to hundredths, understand place value patterns, convert between fractions and decimals for tenths/hundredths, and use proper decimal notation.

LEARNING OBJECTIVES:
Students will read decimals to thousandths in standard and word form, write decimals from word form and expanded form, understand thousandths as fractions with denominator 1000, connect decimal notation to fraction notation, and use decimals in real-world contexts.

KEY CONCEPTS:
1. Thousandths place is three places right of decimal point
2. Read decimal as: whole number "and" fraction part (e.g., 4.523 = "four and five hundred twenty-three thousandths")
3. 0.001 = 1/1000 (one thousandth)
4. Expanded form shows each place value: 4.523 = 4 + 0.5 + 0.02 + 0.003
5. Trailing zeros don''t change value: 4.5 = 4.500

COMMON MISCONCEPTIONS:
- Reading "4.523" as "four point five two three" (informal, not place value based)
- Confusing "hundred thousandths" with "thousandths"
- Thinking more digits after decimal means larger number
- Difficulty with zero as a placeholder (0.032)
- Not connecting to fraction representations

TEACHING SEQUENCE:

Hook/Engagement:
"An Olympic swimmer wins by 0.001 seconds—one one-thousandth of a second! These tiny numbers matter. Let''s learn to read and write them precisely."

Direct Instruction:
Reading decimals: "The last place tells the name. 0.456 ends in the thousandths place, so we read it as ''four hundred fifty-six thousandths.''"

"3.14159 is ''three and fourteen thousand one hundred fifty-nine hundred-thousandths.''"

Writing from words: "Five and thirty-two thousandths → 5.032. Notice the zero in the hundredths place because we need thirty-two thousandths, not thirty-two hundredths."

Expanded form: "4.725 = 4 + 0.7 + 0.02 + 0.005 = 4 + 7/10 + 2/100 + 5/1000"

Fraction connection: "0.375 = 375/1000 = 3/8 (when simplified)"

Guided Practice:
Read decimals aloud, write from dictation, convert between forms, find decimals in real contexts.

Independent Application:
Mixed form conversions, decimal reading practice, measurement contexts, create decimal problems.

DIFFERENTIATION:

Struggling Learners:
- Focus on place value chart
- Practice hundredths before thousandths
- Use money for familiarity
- Sentence starters for reading
- One form at a time

Advanced Learners:
- Ten-thousandths and beyond
- Non-terminating decimal introduction
- Decimal-fraction equivalents
- Create challenging decimals
- Real-world research (very precise measurements)

ASSESSMENT INDICATORS:
- Reads decimals correctly
- Writes decimals from word form
- Uses expanded form
- Connects to fractions
- Identifies place values accurately

VOCABULARY:
thousandths, ten-thousandths, decimal, place value, expanded form, standard form, word form

CONNECTION TO FUTURE LEARNING:
Reading and writing decimals supports all decimal operations and scientific notation.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading and Writing Decimals' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Comparing Decimals (Grade 5)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Decimals' AND grade_level_min = 5),
  'Comparing Decimals to Thousandths Topic Guide',
  'Comprehensive teaching approach for decimal comparison',
  'COMPARING DECIMALS TO THOUSANDTHS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should compare decimals to hundredths, understand place value to thousandths, use comparison symbols, and order numbers on number lines.

LEARNING OBJECTIVES:
Students will compare decimals to thousandths using place value, order multiple decimals from least to greatest, use symbols <, >, and = correctly, understand that equivalent decimals may look different, and apply comparison to real-world contexts.

KEY CONCEPTS:
1. Compare from left to right, one place at a time
2. Align decimal points for comparison
3. Adding trailing zeros helps comparison: 0.5 = 0.500
4. The first different digit determines the comparison
5. Number lines visualize relative positions

COMMON MISCONCEPTIONS:
- Thinking 0.125 > 0.2 because 125 > 2
- Comparing decimal part and whole number part separately
- Ignoring the importance of place value
- Not aligning decimal points
- Thinking longer decimals are always larger

TEACHING SEQUENCE:

Hook/Engagement:
"Two runners finish at 10.375 seconds and 10.38 seconds. Who was faster? The difference of 0.005 seconds determines the winner! Let''s master decimal comparison."

Direct Instruction:
Align and compare: "Compare 0.375 and 0.38. Write 0.38 as 0.380. Now compare: 375 thousandths vs 380 thousandths. 0.375 < 0.380"

Place value method: "Compare 2.456 and 2.46. Start with ones (2=2). Tenths (4=4). Hundredths (5 vs 6). Since 5 < 6, we have 2.456 < 2.46."

Number line placement: Show decimals on a number line to visualize relative positions.

Multiple decimals: "Order 0.5, 0.508, 0.58, 0.085. Write all with three decimal places: 0.500, 0.508, 0.580, 0.085. Order: 0.085 < 0.500 < 0.508 < 0.580"

Guided Practice:
Compare pairs, order sets, place on number lines, find decimals between two given decimals.

Independent Application:
Mixed comparison problems, real-world ordering (measurements, times), create comparison challenges, error analysis.

DIFFERENTIATION:

Struggling Learners:
- Always write with same decimal places
- Use place value charts
- Focus on pairs before sets
- Visual models (grids)
- Practice aligning decimal points

Advanced Learners:
- Order many decimals at once
- Find decimals between any two
- Mix with fractions
- Create ordering puzzles
- Real-world precision contexts

ASSESSMENT INDICATORS:
- Compares accurately using place value
- Orders sets correctly
- Writes equivalent forms for comparison
- Uses symbols correctly
- Explains comparison reasoning

VOCABULARY:
compare, order, greater than, less than, equivalent, thousandths, place value, align

CONNECTION TO FUTURE LEARNING:
Decimal comparison supports ordering, estimation, and operations with decimals.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Decimals' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Adding and Subtracting Decimals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding and Subtracting Decimals' AND grade_level_min = 5),
  'Adding and Subtracting Decimals Topic Guide',
  'Comprehensive teaching approach for decimal operations',
  'ADDING AND SUBTRACTING DECIMALS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should add and subtract whole numbers with regrouping, understand decimal place value, align numbers by place value, and estimate sums and differences.

LEARNING OBJECTIVES:
Students will add decimals to hundredths (and beyond), subtract decimals including with regrouping, align decimal points before computing, use estimation to check reasonableness, and solve word problems with decimal operations.

KEY CONCEPTS:
1. Line up decimal points, not right sides
2. Add/subtract like place values (hundredths to hundredths, etc.)
3. Use zeros as placeholders when needed (5.3 + 2.17 → 5.30 + 2.17)
4. Regroup just like with whole numbers
5. Estimation verifies reasonableness

COMMON MISCONCEPTIONS:
- Right-aligning instead of decimal-aligning
- Forgetting to align with different decimal lengths
- Regrouping errors
- Placing decimal point in wrong position
- Not estimating to check

TEACHING SEQUENCE:

Hook/Engagement:
"You buy items for $4.75, $12.30, and $0.89. What''s the total? This is addition with decimals—a skill you''ll use throughout life!"

Direct Instruction:
Alignment is key: "Line up the decimal points! 4.75 + 12.30 + 0.89 becomes:
  4.75
 12.30
  0.89
------"

Adding: Add column by column from right. 5+0+9=14, write 4 carry 1. 7+3+8+1=19, write 9 carry 1. Continue...

Subtracting with regrouping: "15.4 - 8.67. Write as 15.40 - 8.67. Regroup as needed."

Estimation: "15.4 - 8.67 ≈ 15 - 9 = 6. Answer should be close to 6."

Guided Practice:
Add decimals with alignment, subtract with regrouping, mixed operations, word problems, estimate before computing.

Independent Application:
Mixed practice, money problems, measurement contexts, multi-step problems, error analysis.

DIFFERENTIATION:

Struggling Learners:
- Graph paper for alignment
- Add zeros to make same length
- Practice without regrouping first
- Money context (familiar)
- Step-by-step checklist

Advanced Learners:
- More decimal places
- Multiple addends
- Multi-step word problems
- Mixed operations
- Create real-world problems

ASSESSMENT INDICATORS:
- Aligns decimal points correctly
- Computes accurately with regrouping
- Uses zeros as placeholders
- Estimates to check
- Solves word problems

VOCABULARY:
decimal, align, add, subtract, regroup, estimate, place value, sum, difference

CONNECTION TO FUTURE LEARNING:
Decimal operations extend to multiplication, division, and all applications involving precise measurements and money.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding and Subtracting Decimals' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Multiplying Decimals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Decimals' AND grade_level_min = 5),
  'Multiplying Decimals Topic Guide',
  'Comprehensive teaching approach for decimal multiplication',
  'MULTIPLYING DECIMALS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should multiply multi-digit whole numbers, understand decimal place value, estimate products, and understand that multiplication can result in smaller numbers (when multiplying by numbers less than 1).

LEARNING OBJECTIVES:
Students will multiply decimals by whole numbers, multiply decimals by decimals, place the decimal point correctly in products, use estimation to verify reasonableness, and understand why the decimal placement rule works.

KEY CONCEPTS:
1. Multiply as if there were no decimals
2. Count total decimal places in both factors
3. Place that many decimal places in the product
4. Multiplying by <1 results in smaller product
5. Estimation checks reasonableness

COMMON MISCONCEPTIONS:
- Aligning decimal points (like addition) when multiplying
- Placing decimal point without counting places
- Thinking multiplication always makes bigger
- Forgetting to count decimal places in both factors
- Not checking with estimation

TEACHING SEQUENCE:

Hook/Engagement:
"Gas costs $3.45 per gallon. You buy 12.5 gallons. What''s the total? Decimal multiplication solves this real-world problem!"

Direct Instruction:
The algorithm: "Multiply 3.4 × 2.5. First, multiply 34 × 25 = 850. Now count decimal places: 3.4 has 1, 2.5 has 1. Total = 2 places. Place decimal: 8.50 or 8.5"

Why it works: "3.4 × 2.5 = (34/10) × (25/10) = (34 × 25)/(10 × 10) = 850/100 = 8.50"

Estimation check: "3.4 ≈ 3 and 2.5 ≈ 3. So product ≈ 9. Our answer of 8.5 is reasonable!"

Practice with varied examples, including products requiring leading zeros (0.2 × 0.3 = 0.06).

Guided Practice:
Multiply with various decimal places, count places correctly, use estimation, identify when product is less than a factor.

Independent Application:
Mixed practice, word problems (shopping, measurement), error analysis, explain reasoning.

DIFFERENTIATION:

Struggling Learners:
- Start with decimal × whole number
- Emphasize place-counting strategy
- Estimate every problem
- Use area models to visualize
- Practice counting decimal places

Advanced Learners:
- Multi-digit decimal products
- Products requiring leading zeros
- Real-world applications
- Connect to percent
- Explore patterns

ASSESSMENT INDICATORS:
- Counts decimal places correctly
- Places decimal in product accurately
- Uses estimation to check
- Understands effect of multiplying by <1
- Solves word problems

VOCABULARY:
multiply, product, factor, decimal places, estimate, reasonable

CONNECTION TO FUTURE LEARNING:
Decimal multiplication supports percent calculations, unit rates, and scientific applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Decimals' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Dividing Decimals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Decimals' AND grade_level_min = 5),
  'Dividing Decimals Topic Guide',
  'Comprehensive teaching approach for decimal division',
  'DIVIDING DECIMALS BY WHOLE NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should divide multi-digit whole numbers, understand decimal place value, use estimation for division, and understand the relationship between multiplication and division.

LEARNING OBJECTIVES:
Students will divide decimals by whole numbers, place the decimal point correctly in quotients, interpret remainders as decimals, use estimation to check reasonableness, and solve word problems involving decimal division.

KEY CONCEPTS:
1. Divide as with whole numbers, but track the decimal point
2. Decimal point in quotient aligns with decimal in dividend
3. Can add zeros to continue dividing (e.g., 7 ÷ 4 = 1.75)
4. Division by whole number: quotient has same number of decimal places as dividend
5. Estimation verifies reasonableness

COMMON MISCONCEPTIONS:
- Ignoring the decimal point
- Placing decimal point in wrong position
- Stopping division too early
- Not understanding when to add zeros
- Confusion about quotient size vs divisor

TEACHING SEQUENCE:

Hook/Engagement:
"$45.75 shared equally among 3 people—how much does each get? Dividing decimals tells us exactly!"

Direct Instruction:
Basic algorithm: "Divide 8.4 ÷ 3. Set up long division with decimal. Bring decimal up to quotient. 3 goes into 8 two times (2), remainder 2. Bring down 4 → 24. 24 ÷ 3 = 8. Answer: 2.8"

Decimal placement: "The decimal point in the quotient goes directly above the decimal in the dividend."

Extending division: "14 ÷ 4: After dividing 14, you get 3 remainder 2. Add a decimal and zeros: 14.0 ÷ 4 = 3.5"

Adding zeros: "7 ÷ 8 = 0.875. Add zeros as needed to continue."

Estimation: "45.75 ÷ 3 ≈ 45 ÷ 3 = 15. Answer should be near 15."

Guided Practice:
Divide with aligned decimals, extend quotients with zeros, estimate before dividing, word problems.

Independent Application:
Mixed practice, money division, measurement contexts, check with multiplication.

DIFFERENTIATION:

Struggling Learners:
- Practice decimal placement extensively
- Start with decimals that divide evenly
- Estimation every time
- Graph paper for alignment
- Step-by-step guide

Advanced Learners:
- Extend to more decimal places
- Divide to find unit rates
- Repeating decimal introduction
- Divide by decimals (preview)
- Complex word problems

ASSESSMENT INDICATORS:
- Places decimal correctly in quotient
- Divides accurately
- Adds zeros when needed
- Uses estimation to check
- Solves word problems

VOCABULARY:
divide, quotient, dividend, divisor, decimal point, align, estimate

CONNECTION TO FUTURE LEARNING:
Decimal division supports dividing by decimals, unit rates, proportional reasoning, and percent applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Decimals' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================
-- FRACTION OPERATIONS UNIT
-- ============================================

-- Adding Unlike Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Unlike Fractions' AND grade_level_min = 5),
  'Adding Unlike Fractions Topic Guide',
  'Comprehensive teaching approach for adding fractions with different denominators',
  'ADDING FRACTIONS WITH UNLIKE DENOMINATORS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must add fractions with like denominators, find equivalent fractions, find common multiples, and understand the need for same-sized pieces.

LEARNING OBJECTIVES:
Students will find common denominators for fraction addition, create equivalent fractions with common denominators, add fractions with unlike denominators, simplify sums when possible, and add mixed numbers with unlike denominators.

KEY CONCEPTS:
1. Can only add like pieces (same denominator)
2. Find LCD (Least Common Denominator) or any common denominator
3. Convert each fraction to equivalent fraction with common denominator
4. Add numerators, keep common denominator
5. Simplify if needed

COMMON MISCONCEPTIONS:
- Adding numerators AND denominators
- Thinking fractions with different denominators can''t be added
- Finding equivalent for only one fraction
- Forgetting to simplify
- Errors in finding common denominators

TEACHING SEQUENCE:

Hook/Engagement:
"You walk 1/3 mile then 1/4 mile. How far total? We can''t add thirds and fourths directly—we need the same kind of pieces!"

Direct Instruction:
Need for common pieces: "1/3 + 1/4. Thirds and fourths are different-sized pieces. We need to rename them using the same denominator."

Find LCD: "What number works for both 3 and 4? LCM of 3 and 4 is 12."

Convert: "1/3 = 4/12 (multiply by 4/4). 1/4 = 3/12 (multiply by 3/3)."

Add: "4/12 + 3/12 = 7/12"

Visual verification: Show fraction models that confirm the result.

Mixed numbers: "2 1/3 + 1 1/4 = 2 4/12 + 1 3/12 = 3 7/12"

Guided Practice:
Find common denominators, convert, add, simplify, practice with mixed numbers.

Independent Application:
Mixed practice, word problems, explain the process, error analysis.

DIFFERENTIATION:

Struggling Learners:
- Practice finding LCD first
- Focus on simple denominators (halves, thirds, fourths)
- Visual models for every problem
- Step-by-step organizers
- Add proper fractions before mixed numbers

Advanced Learners:
- Larger denominators
- Multiple addends
- Add mixed numbers requiring regrouping
- Real-world applications
- Mental estimation before calculating

ASSESSMENT INDICATORS:
- Finds common denominators
- Creates correct equivalent fractions
- Adds accurately
- Simplifies results
- Explains the process

VOCABULARY:
unlike denominators, common denominator, LCD, equivalent fraction, convert, simplify

CONNECTION TO FUTURE LEARNING:
Adding unlike fractions is essential for fraction operations and algebraic manipulation.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Unlike Fractions' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Subtracting Unlike Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Unlike Fractions' AND grade_level_min = 5),
  'Subtracting Unlike Fractions Topic Guide',
  'Comprehensive teaching approach for subtracting fractions with different denominators',
  'SUBTRACTING FRACTIONS WITH UNLIKE DENOMINATORS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should add fractions with unlike denominators, subtract fractions with like denominators, find common denominators, and work with mixed numbers.

LEARNING OBJECTIVES:
Students will subtract fractions with unlike denominators, handle regrouping with mixed number subtraction, find common denominators efficiently, simplify differences when possible, and solve word problems with subtraction.

KEY CONCEPTS:
1. Same process as addition: find common denominator first
2. Convert both fractions to equivalent fractions
3. Subtract numerators, keep common denominator
4. Regrouping may be needed with mixed numbers
5. Simplify when possible

COMMON MISCONCEPTIONS:
- Subtracting numerators AND denominators
- Not finding common denominator
- Regrouping errors with mixed numbers
- Forgetting to simplify
- Confusion about when to regroup

TEACHING SEQUENCE:

Hook/Engagement:
"You have 3/4 of a pizza. You eat 1/3 of the whole pizza. How much is left? Different-sized pieces need the same denominator!"

Direct Instruction:
Basic process: "3/4 - 1/3. LCD of 4 and 3 is 12. Convert: 3/4 = 9/12, 1/3 = 4/12. Subtract: 9/12 - 4/12 = 5/12"

Mixed numbers without regrouping: "3 2/3 - 1 1/4 = 3 8/12 - 1 3/12 = 2 5/12"

Mixed numbers WITH regrouping: "5 1/4 - 2 1/2 = 5 1/4 - 2 2/4. But I can''t subtract 2/4 from 1/4! Regroup: 5 1/4 = 4 5/4. Now: 4 5/4 - 2 2/4 = 2 3/4"

Guided Practice:
Subtract with common denominators, practice regrouping, word problems, check with addition.

Independent Application:
Mixed practice, comparison problems, real-world contexts, create problems for classmates.

DIFFERENTIATION:

Struggling Learners:
- Practice finding LCD separately
- No regrouping before regrouping
- Visual models
- Step-by-step guides
- Check every answer with addition

Advanced Learners:
- Complex regrouping
- Multi-step problems
- Mixed operations
- Real-world applications
- Mental math strategies

ASSESSMENT INDICATORS:
- Finds common denominators
- Subtracts correctly
- Regroups when needed
- Simplifies results
- Checks with addition

VOCABULARY:
subtract, difference, unlike denominators, common denominator, regroup, simplify

CONNECTION TO FUTURE LEARNING:
Fraction subtraction supports all fraction operations and algebraic fraction work.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Unlike Fractions' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Multiplying Fractions (Grade 5)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Fractions' AND grade_level_min = 5),
  'Multiplying Fractions by Fractions Topic Guide',
  'Comprehensive teaching approach for fraction multiplication',
  'MULTIPLYING FRACTIONS BY FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should multiply fractions by whole numbers, understand fractions as division, use area models, and simplify fractions.

LEARNING OBJECTIVES:
Students will multiply two fractions, understand that multiplying by <1 gives a smaller result, use area models to visualize fraction multiplication, simplify before or after multiplying, and solve word problems.

KEY CONCEPTS:
1. Multiply numerators together, multiply denominators together
2. "Of" means multiply: 1/2 of 3/4 = 1/2 × 3/4
3. Multiplying by a fraction less than 1 gives a smaller result
4. Can simplify before multiplying (cross-cancel) or after
5. Area model shows why the algorithm works

COMMON MISCONCEPTIONS:
- Finding common denominators (that''s for adding!)
- Thinking multiplication always makes bigger
- Forgetting to simplify
- Not understanding the area model
- Confusion about "of" meaning multiplication

TEACHING SEQUENCE:

Hook/Engagement:
"If you have 1/2 of a pizza and eat 1/3 OF that, how much did you eat? That''s 1/3 × 1/2—multiplying fractions!"

Direct Instruction:
The algorithm: "2/3 × 4/5 = (2 × 4)/(3 × 5) = 8/15"

Area model: Draw a rectangle divided into 5 columns. Shade 4 columns (4/5). Now divide into 3 rows and shade 2 rows of the already shaded part. Count: 8 out of 15 total squares. 2/3 × 4/5 = 8/15.

Effect on size: "1/2 × 3/4 = 3/8. Is 3/8 less than 3/4? Yes! When we take a fraction of something, we get less."

Simplifying: "3/4 × 2/9. Can simplify before: 3 and 9 share factor 3, 4 and 2 share factor 2. Simplify: 1/2 × 1/3 = 1/6"

Guided Practice:
Multiply using algorithm, verify with area models, simplify, word problems with "of" language.

Independent Application:
Mixed practice, area model verification, word problems, explain the effect on size.

DIFFERENTIATION:

Struggling Learners:
- Area models for every problem
- Focus on unit fractions first
- No simplifying initially
- Emphasize "part of a part"
- Concrete fraction pieces

Advanced Learners:
- Cross-canceling (simplify before)
- Mixed number multiplication
- Complex word problems
- Pattern exploration
- Connect to percent

ASSESSMENT INDICATORS:
- Multiplies correctly
- Uses area model to verify
- Understands size effect
- Simplifies appropriately
- Interprets "of" as multiplication

VOCABULARY:
multiply, product, of, fraction, numerator, denominator, simplify, cross-cancel

CONNECTION TO FUTURE LEARNING:
Fraction multiplication is essential for ratios, proportions, probability, and algebraic expressions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Fractions' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Multiplying Mixed Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Mixed Numbers' AND grade_level_min = 5),
  'Multiplying Mixed Numbers Topic Guide',
  'Comprehensive teaching approach for mixed number multiplication',
  'MULTIPLYING MIXED NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should multiply fractions, convert between mixed numbers and improper fractions, estimate products, and simplify fractions.

LEARNING OBJECTIVES:
Students will convert mixed numbers to improper fractions, multiply improper fractions, convert answers back to mixed numbers, estimate to check reasonableness, and solve word problems.

KEY CONCEPTS:
1. Convert mixed numbers to improper fractions first
2. Multiply using fraction algorithm
3. Convert the answer back to mixed number
4. Simplify when possible
5. Estimation helps check reasonableness

COMMON MISCONCEPTIONS:
- Multiplying whole parts and fraction parts separately
- Errors in converting to improper fractions
- Forgetting to convert answer back
- Not simplifying
- Difficulty with estimation

TEACHING SEQUENCE:

Hook/Engagement:
"A recipe calls for 2 1/2 cups of flour. If you triple it, how much flour do you need? That''s 3 × 2 1/2—mixed number multiplication!"

Direct Instruction:
The process:
1. Convert to improper: 2 1/2 = 5/2, 1 3/4 = 7/4
2. Multiply: 5/2 × 7/4 = 35/8
3. Convert back: 35/8 = 4 3/8

Estimation: "2 1/2 × 1 3/4 ≈ 2.5 × 2 = 5. Our answer of 4 3/8 is reasonable."

Simplifying: Can simplify before or after converting.

Multiplying by whole numbers: "3 × 2 1/2 = 3 × 5/2 = 15/2 = 7 1/2"

Guided Practice:
Convert, multiply, convert back, estimate, word problems.

Independent Application:
Mixed practice, recipes and measurements, area problems, error analysis.

DIFFERENTIATION:

Struggling Learners:
- Practice conversions separately first
- Step-by-step organizers
- Estimate every problem
- Whole number × mixed number first
- Visual models when possible

Advanced Learners:
- Multiple mixed numbers
- Complex simplifying
- Real-world multi-step problems
- Mental estimation strategies
- Connect to decimal multiplication

ASSESSMENT INDICATORS:
- Converts correctly
- Multiplies improper fractions
- Converts answer to mixed number
- Estimates reasonably
- Solves word problems

VOCABULARY:
mixed number, improper fraction, convert, multiply, estimate, simplify

CONNECTION TO FUTURE LEARNING:
Mixed number multiplication supports complex fraction operations and practical applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Mixed Numbers' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Dividing with Unit Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing with Unit Fractions' AND grade_level_min = 5),
  'Dividing with Unit Fractions Topic Guide',
  'Comprehensive teaching approach for fraction division basics',
  'DIVIDING WITH UNIT FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand division concepts, multiply fractions, understand unit fractions, and use visual models for fractions.

LEARNING OBJECTIVES:
Students will divide a whole number by a unit fraction, divide a unit fraction by a whole number, understand the meaning of fraction division, use visual models to support understanding, and solve word problems.

KEY CONCEPTS:
1. Dividing by a fraction asks "how many of this fraction fit in that number?"
2. 3 ÷ 1/2 = 6 (how many halves are in 3?)
3. 1/2 ÷ 3 = 1/6 (split 1/2 into 3 equal parts)
4. Dividing by a fraction can be done by multiplying by the reciprocal
5. Division by fractions can make numbers larger

COMMON MISCONCEPTIONS:
- Thinking division always makes smaller
- Confusing the two types (whole ÷ fraction vs fraction ÷ whole)
- Not understanding why multiplying by reciprocal works
- Difficulty interpreting the result
- Mixing up dividend and divisor

TEACHING SEQUENCE:

Hook/Engagement:
"You have 3 pizzas. If each serving is 1/4 pizza, how many servings? That''s 3 ÷ 1/4. The answer might surprise you—it''s 12!"

Direct Instruction:
Whole ÷ Unit Fraction: "4 ÷ 1/3 asks ''how many thirds are in 4?'' Each whole has 3 thirds, so 4 wholes have 4 × 3 = 12 thirds. 4 ÷ 1/3 = 12."

Visual: Draw 4 rectangles, divide each into thirds, count all pieces.

Unit Fraction ÷ Whole: "1/2 ÷ 4 asks ''what is 1/2 split into 4 parts?'' Each part is 1/8. 1/2 ÷ 4 = 1/8."

Visual: Draw 1/2, divide it into 4 equal pieces.

Pattern: "Dividing by 1/n is the same as multiplying by n. 4 ÷ 1/3 = 4 × 3 = 12."

Guided Practice:
Both types of problems, visual models, word problems, explore patterns.

Independent Application:
Mixed practice, real-world contexts, explain reasoning, create problems.

DIFFERENTIATION:

Struggling Learners:
- Visual models for every problem
- One type at a time
- Focus on meaning, not just procedure
- Simple unit fractions (1/2, 1/3, 1/4)
- Lots of word problems for context

Advanced Learners:
- Non-unit fractions (preview)
- Connect to reciprocals
- Create word problems
- Multiple step problems
- Explore why reciprocal works

ASSESSMENT INDICATORS:
- Divides correctly in both directions
- Uses visual models to explain
- Understands why quotient can be large
- Solves word problems
- Explains the process

VOCABULARY:
divide, quotient, unit fraction, reciprocal, how many fit, split

CONNECTION TO FUTURE LEARNING:
Unit fraction division builds toward general fraction division and understanding inverse operations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing with Unit Fractions' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Fraction Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fraction Word Problems' AND grade_level_min = 5),
  'Fraction Word Problems Topic Guide',
  'Comprehensive teaching approach for fraction problem solving',
  'FRACTION WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should perform all fraction operations, read and comprehend word problems, identify operation needed, and estimate reasonable answers.

LEARNING OBJECTIVES:
Students will identify which operation is needed, solve multi-step problems with fractions, interpret answers in context, use estimation to verify, and explain solution strategies.

KEY CONCEPTS:
1. Addition: combining parts
2. Subtraction: finding differences, what''s left
3. Multiplication: "of" language, scaling
4. Division: sharing equally, how many fit
5. Context determines the operation

COMMON MISCONCEPTIONS:
- Choosing wrong operation
- Not completing all steps
- Answer doesn''t fit context
- Not simplifying or converting as needed
- Difficulty with multi-step problems

TEACHING SEQUENCE:

Hook/Engagement:
"Real life is full of fraction problems—cooking, measuring, sharing. Let''s become problem-solving experts who can tackle any fraction challenge!"

Direct Instruction:
Identify operations by context:

Addition: "Jaylen ran 2 1/4 miles yesterday and 1 3/4 miles today. How far total?" (combining)

Subtraction: "A board is 5 1/2 feet. After cutting off 2 3/4 feet, how long?" (what''s left)

Multiplication: "A recipe needs 2/3 cup sugar. Making half the recipe uses..." (fraction of a fraction)

Division: "How many 1/4 cup servings are in 3 cups?" (how many fit)

Multi-step: "Sam had $20. She spent 1/4 on a book and 1/3 of what remained on lunch. How much is left?"

Guided Practice:
Identify operation before solving, solve and interpret, multi-step practice, create problems.

Independent Application:
Varied word problems, explain operation choice, multi-step challenges, real-world scenarios.

DIFFERENTIATION:

Struggling Learners:
- Categorize problem types
- Draw diagrams
- Highlight key words (but focus on meaning)
- One-step problems first
- Step-by-step problem solving

Advanced Learners:
- Complex multi-step problems
- Extra information to filter
- Create challenging problems
- Real-world projects
- Explain multiple solution paths

ASSESSMENT INDICATORS:
- Identifies correct operation
- Computes accurately
- Interprets in context
- Handles multi-step problems
- Explains reasoning

VOCABULARY:
operation, add, subtract, multiply, divide, total, remaining, of, each, share

CONNECTION TO FUTURE LEARNING:
Fraction problem solving develops the reasoning skills needed for ratio, proportion, and algebraic word problems.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fraction Word Problems' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================
-- ALGEBRAIC THINKING UNIT
-- ============================================

-- Order of Operations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Order of Operations' AND grade_level_min = 5),
  'Order of Operations Topic Guide',
  'Comprehensive teaching approach for evaluating expressions',
  'ORDER OF OPERATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should use all four operations, understand parentheses as grouping, evaluate simple expressions, and follow multi-step directions.

LEARNING OBJECTIVES:
Students will evaluate expressions with parentheses, brackets, and braces, apply order of operations (PEMDAS/GEMDAS), understand why order matters, write expressions with grouping symbols, and evaluate expressions with exponents (basic).

KEY CONCEPTS:
1. Grouping symbols first (parentheses, brackets, braces)
2. Exponents (later in grade 5)
3. Multiplication and Division (left to right)
4. Addition and Subtraction (left to right)
5. The order prevents ambiguity—everyone gets the same answer

COMMON MISCONCEPTIONS:
- Always doing multiplication before division (they''re equal, go left to right)
- Always doing addition before subtraction (they''re equal, go left to right)
- Ignoring nested grouping symbols
- Not understanding WHY order matters
- Thinking order is arbitrary

TEACHING SEQUENCE:

Hook/Engagement:
"What is 3 + 4 × 2? Is it 14 or 11? Without order of operations, we''d get different answers! Mathematicians agreed on rules so everyone gets the same answer."

Direct Instruction:
Introduce PEMDAS: Parentheses, Exponents, Multiplication/Division, Addition/Subtraction

"Remember: M and D are equal (left to right), A and S are equal (left to right)."

Example: "Evaluate 3 + 4 × 2. No parentheses. No exponents. Multiply: 4 × 2 = 8. Add: 3 + 8 = 11."

With parentheses: "(3 + 4) × 2. Parentheses first: 7. Then multiply: 7 × 2 = 14."

Nested grouping: "2 × [(3 + 4) × 5] = 2 × [7 × 5] = 2 × 35 = 70"

Guided Practice:
Evaluate step-by-step, compare expressions with different groupings, identify errors, write expressions for given values.

Independent Application:
Mixed expressions, error analysis, create expressions, compare different groupings.

DIFFERENTIATION:

Struggling Learners:
- Write steps vertically
- Circle what to do first
- No exponents initially
- Simple expressions before complex
- Mnemonic devices for order

Advanced Learners:
- Nested groupings
- Include exponents
- Create expression puzzles
- "Find the error" challenges
- Connect to algebraic expressions

ASSESSMENT INDICATORS:
- Applies order correctly
- Handles grouping symbols
- Evaluates multi-step expressions
- Explains why order matters
- Writes expressions with proper grouping

VOCABULARY:
order of operations, PEMDAS, parentheses, brackets, braces, evaluate, expression, exponent

CONNECTION TO FUTURE LEARNING:
Order of operations is essential for algebraic expressions, equation solving, and all higher mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Order of Operations' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Writing Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Expressions' AND grade_level_min = 5),
  'Writing Expressions Topic Guide',
  'Comprehensive teaching approach for translating words to math',
  'WRITING NUMERICAL AND ALGEBRAIC EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand operations, use parentheses, evaluate expressions, and connect words to operations.

LEARNING OBJECTIVES:
Students will translate verbal phrases to numerical expressions, use parentheses to show order of operations, write expressions for real-world situations, interpret expressions without evaluating, and begin using variables for unknowns.

KEY CONCEPTS:
1. Words signal operations: "sum" = add, "product" = multiply, etc.
2. Order of words may differ from order of operations
3. "Less than" reverses order: "5 less than n" = n - 5
4. Parentheses show grouping: "twice the sum of 3 and 4" = 2 × (3 + 4)
5. Expressions represent quantities without solving

COMMON MISCONCEPTIONS:
- Word order = operation order (not always)
- "5 less than 8" = 5 - 8 (wrong—it''s 8 - 5)
- Not using parentheses when needed
- Confusing expression and equation
- Difficulty with variable representation

TEACHING SEQUENCE:

Hook/Engagement:
"''Add 3 to the product of 5 and 4'' becomes 3 + 5 × 4... or is it (3 + 5) × 4? Learning to translate words to math precisely is a superpower!"

Direct Instruction:
Operation vocabulary:
- Add: sum, plus, more than, increased by
- Subtract: difference, minus, less than, decreased by
- Multiply: product, times, of
- Divide: quotient, divided by, per

Translation examples:
"The sum of 8 and 5" → 8 + 5
"10 less than 25" → 25 - 10 (note: 10 comes second!)
"Twice the sum of 3 and 7" → 2 × (3 + 7)
"5 more than a number" → n + 5

Interpret without evaluating: "2 × (8 + 3) represents twice the sum of 8 and 3."

Guided Practice:
Translate phrases, use parentheses correctly, interpret given expressions, write expressions for scenarios.

Independent Application:
Mixed translation, real-world contexts, interpret expressions, create own word phrases.

DIFFERENTIATION:

Struggling Learners:
- Vocabulary reference chart
- Practice "less than" extensively
- Simple phrases before complex
- Focus on numerical before variable
- Draw to represent

Advanced Learners:
- Multiple variables
- Complex nested expressions
- Interpret without evaluating
- Create word problems for expressions
- Connect to equations

ASSESSMENT INDICATORS:
- Translates accurately
- Uses parentheses correctly
- Handles "less than" properly
- Interprets expressions
- Writes expressions for contexts

VOCABULARY:
expression, sum, difference, product, quotient, translate, variable, interpret

CONNECTION TO FUTURE LEARNING:
Writing expressions is foundational for algebra, equation writing, and mathematical communication.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Expressions' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Analyzing Patterns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Analyzing Patterns' AND grade_level_min = 5),
  'Analyzing Patterns Topic Guide',
  'Comprehensive teaching approach for pattern recognition',
  'ANALYZING NUMERICAL PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should extend simple patterns, use operations fluently, recognize relationships, and work with tables.

LEARNING OBJECTIVES:
Students will identify and extend numerical patterns, describe patterns using rules, generate terms from rules, compare related patterns, and discover relationships between patterns.

KEY CONCEPTS:
1. Patterns follow rules that can be described mathematically
2. Rules can be written as expressions
3. Two related patterns can reveal relationships
4. Patterns can increase, decrease, or alternate
5. Input-output tables show pattern relationships

COMMON MISCONCEPTIONS:
- Finding only one pattern when multiple exist
- Errors in extending patterns
- Difficulty expressing rules mathematically
- Not seeing relationships between patterns
- Confusing the pattern rule with the terms

TEACHING SEQUENCE:

Hook/Engagement:
"Pattern A: 0, 3, 6, 9... Pattern B: 0, 6, 12, 18... What''s the relationship between them? B is always twice A! Discovering these connections is mathematical detective work."

Direct Instruction:
Single patterns: "3, 7, 11, 15... Rule: Start at 3, add 4 each time. Or: term = 4n - 1 for term number n."

Related patterns:
"Pattern X (add 2): 0, 2, 4, 6, 8...
Pattern Y (add 6): 0, 6, 12, 18, 24...
Relationship: Each Y term is 3 times the corresponding X term!"

Input-output tables: Show how rules transform inputs to outputs.

Describe relationships: "When X increases by 2, Y increases by 6."

Guided Practice:
Extend patterns, write rules, compare two patterns, find relationships, create patterns.

Independent Application:
Mixed pattern problems, create related patterns, discover relationships, real-world pattern contexts.

DIFFERENTIATION:

Struggling Learners:
- Simple addition patterns first
- Visual patterns to start
- Tables for organization
- Focus on extension before rules
- Concrete examples

Advanced Learners:
- Geometric patterns
- Multiple pattern relationships
- Write algebraic rules
- Complex relationships
- Create pattern challenges

ASSESSMENT INDICATORS:
- Extends patterns correctly
- Writes rules for patterns
- Identifies relationships between patterns
- Describes patterns mathematically
- Creates related patterns

VOCABULARY:
pattern, rule, term, relationship, input, output, sequence, extend, generate

CONNECTION TO FUTURE LEARNING:
Pattern analysis develops algebraic thinking and prepares students for functions and sequences.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Analyzing Patterns' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Graphing Patterns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Patterns' AND grade_level_min = 5),
  'Graphing Patterns Topic Guide',
  'Comprehensive teaching approach for visualizing patterns',
  'GRAPHING PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should analyze numerical patterns, plot points on coordinate planes, work with input-output tables, and describe relationships between patterns.

LEARNING OBJECTIVES:
Students will generate two patterns from given rules, form ordered pairs from corresponding terms, plot ordered pairs on coordinate plane, interpret graphed relationships, and identify patterns on graphs.

KEY CONCEPTS:
1. Each corresponding pair of pattern terms forms an ordered pair
2. Graphing reveals visual relationships
3. Linear patterns create straight lines
4. The graph shows the relationship between two patterns
5. Points should all follow a pattern/trend

COMMON MISCONCEPTIONS:
- Reversing x and y coordinates
- Errors in forming ordered pairs
- Not seeing the visual pattern
- Difficulty interpreting the graph
- Confusion about which pattern is x vs y

TEACHING SEQUENCE:

Hook/Engagement:
"What if we could SEE the relationship between two patterns? Graphs turn numbers into pictures, making patterns visible!"

Direct Instruction:
Generate patterns:
"Pattern A (rule: add 3): 0, 3, 6, 9, 12
Pattern B (rule: add 6): 0, 6, 12, 18, 24"

Form ordered pairs: (0,0), (3,6), (6,12), (9,18), (12,24)

Plot on coordinate plane: x-axis for Pattern A, y-axis for Pattern B.

Observe: "The points form a line! For every increase of 3 in A, B increases by 6. B is always twice A."

Interpret: "If A = 15, what is B? Following the pattern: B = 30."

Guided Practice:
Generate patterns, form pairs, plot, identify visual patterns, interpret relationships.

Independent Application:
Create and graph patterns, analyze given graphs, predict from graphs, real-world pattern graphs.

DIFFERENTIATION:

Struggling Learners:
- Provide coordinate plane templates
- Guide through each step
- Simpler patterns
- Careful with ordered pair formation
- Connect visual to numerical

Advanced Learners:
- More complex patterns
- Non-linear patterns (quadratic preview)
- Write equations for graphs
- Real-world data patterns
- Create graphing challenges

ASSESSMENT INDICATORS:
- Forms ordered pairs correctly
- Plots accurately
- Identifies visual patterns
- Interprets relationships from graphs
- Predicts using patterns

VOCABULARY:
ordered pair, coordinate plane, x-axis, y-axis, plot, graph, linear, relationship, trend

CONNECTION TO FUTURE LEARNING:
Graphing patterns is foundational for understanding functions, linear relationships, and data analysis.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Patterns' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================
-- MEASUREMENT AND VOLUME UNIT
-- ============================================

-- Understanding Volume
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Volume' AND grade_level_min = 5),
  'Understanding Volume Topic Guide',
  'Comprehensive teaching approach for volume concepts',
  'UNDERSTANDING VOLUME - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand area, work with 3D shapes, multiply multi-digit numbers, and understand measurement units.

LEARNING OBJECTIVES:
Students will understand volume as space inside a 3D shape, recognize that volume is measured in cubic units, distinguish volume from area, relate volume to real-world containers, and understand a unit cube.

KEY CONCEPTS:
1. Volume measures 3-dimensional space
2. Volume is measured in cubic units (cubic inches, cubic cm)
3. A unit cube has volume of 1 cubic unit
4. Volume answers "how much space is inside?"
5. Area is 2D (square units); Volume is 3D (cubic units)

COMMON MISCONCEPTIONS:
- Confusing volume with area
- Using square units instead of cubic
- Thinking volume is the same as surface area
- Difficulty visualizing 3D from 2D drawings
- Not understanding what "cubic" means

TEACHING SEQUENCE:

Hook/Engagement:
"How much water can this box hold? How many sugar cubes fit inside? That''s volume—the amount of 3D space inside a container!"

Direct Instruction:
Define volume: "Volume is the space inside a 3D shape. We measure it by counting how many unit cubes fit inside."

Unit cube: "A unit cube measures 1 unit on each edge. It has a volume of 1 cubic unit."

Compare to area: "Area measures flat space (2D). Volume measures filled space (3D). Area uses square units; volume uses cubic units."

Real-world: "Volume tells us capacity—how much a box holds, how much water fills a tank, how much space in a room."

Build with cubes: Stack unit cubes to fill rectangular prisms and count.

Guided Practice:
Build with cubes, count to find volume, distinguish area from volume, identify cubic unit labels.

Independent Application:
Volume counting activities, real-world identification, compare area and volume, estimation challenges.

DIFFERENTIATION:

Struggling Learners:
- Lots of hands-on building
- Focus on counting before formulas
- Emphasize "cubic" in labels
- Compare area and volume explicitly
- Real objects to measure

Advanced Learners:
- Complex shapes
- Estimate volumes of objects
- Connect to formulas preview
- Volume of non-rectangular prisms
- Design challenges

ASSESSMENT INDICATORS:
- Defines volume correctly
- Uses cubic units
- Distinguishes from area
- Counts cubes accurately
- Connects to real-world

VOCABULARY:
volume, cubic unit, unit cube, space, capacity, three-dimensional, rectangular prism

CONNECTION TO FUTURE LEARNING:
Volume understanding supports volume formulas, composite shapes, and applications in science and engineering.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Volume' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Measuring Volume
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Measuring Volume' AND grade_level_min = 5),
  'Measuring Volume by Counting Topic Guide',
  'Comprehensive teaching approach for finding volume with cubes',
  'MEASURING VOLUME BY COUNTING UNIT CUBES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand volume concepts, use unit cubes, count systematically, and multiply multi-digit numbers.

LEARNING OBJECTIVES:
Students will count unit cubes to find volume, use systematic counting strategies, find volume of rectangular prisms, connect counting to layers and multiplication, and solve word problems.

KEY CONCEPTS:
1. Count all cubes that fill the shape
2. Counting by layers is efficient: cubes per layer × number of layers
3. This leads to V = length × width × height
4. Missing cubes on the inside still count
5. Volume is additive (sum of parts)

COMMON MISCONCEPTIONS:
- Counting only visible cubes
- Miscounting layers
- Forgetting hidden cubes
- Counting surface area instead
- Not being systematic

TEACHING SEQUENCE:

Hook/Engagement:
"Without the formula, how can we find the volume of this box? By counting every cube inside! Let''s develop efficient counting strategies."

Direct Instruction:
Basic counting: "This box has cubes. Count them all: 1, 2, 3... 24 cubes = 24 cubic units."

Layer strategy: "Each layer has 8 cubes. There are 3 layers. 8 × 3 = 24 cubic units."

Connect to dimensions: "The bottom layer is 4 × 2 = 8 cubes. Stack 3 layers: 8 × 3 = 24 cubes. That''s 4 × 2 × 3 = 24!"

Hidden cubes: "When viewing from outside, some cubes are hidden. Count layers to find all cubes."

Guided Practice:
Count cubes in various prisms, use layer strategy, verify by multiplication, word problems.

Independent Application:
Counting challenges, complex shapes, estimate then count, create cube structures to measure.

DIFFERENTIATION:

Struggling Learners:
- Build with actual cubes
- Simple prisms first
- Practice layer counting
- Label dimensions
- Focus on one strategy

Advanced Learners:
- Composite shapes (L-shaped, etc.)
- Missing cubes (volume of pool with step)
- Create shapes for given volumes
- Connect to formula derivation
- Real-world applications

ASSESSMENT INDICATORS:
- Counts cubes accurately
- Uses layer strategy
- Connects to dimensions
- Accounts for hidden cubes
- Solves word problems

VOCABULARY:
volume, unit cube, layer, count, systematic, rectangular prism, cubic units

CONNECTION TO FUTURE LEARNING:
Counting cubes builds understanding for the volume formula V = l × w × h.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measuring Volume' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Volume Formulas
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume Formulas' AND grade_level_min = 5),
  'Volume Formulas Topic Guide',
  'Comprehensive teaching approach for V = l × w × h',
  'VOLUME FORMULAS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should count cubes to find volume, understand dimensions, multiply multi-digit numbers, and know area formulas.

LEARNING OBJECTIVES:
Students will use V = l × w × h for rectangular prisms, understand V = B × h (base area × height), apply formulas to solve problems, work with composite figures, and use appropriate cubic units.

KEY CONCEPTS:
1. V = length × width × height
2. V = B × h where B = area of base
3. The formulas are shortcuts for counting cubes
4. Additive volume: total = sum of non-overlapping parts
5. Units must be cubic (cm³, in³, m³, ft³)

COMMON MISCONCEPTIONS:
- Confusing area and volume formulas
- Forgetting cubic units
- Errors with composite shapes
- Difficulty identifying dimensions
- Confusing base area with volume

TEACHING SEQUENCE:

Hook/Engagement:
"Counting cubes works, but imagine counting cubes for a swimming pool! Formulas make finding volume fast and efficient."

Direct Instruction:
Derive the formula: "Bottom layer has l × w cubes. Stack h layers: (l × w) × h = l × w × h"

V = l × w × h: "For a box 5 cm × 3 cm × 4 cm: V = 5 × 3 × 4 = 60 cubic centimeters (cm³)"

V = B × h: "If the base is a 5 × 3 rectangle, B = 15 cm². Height is 4 cm. V = 15 × 4 = 60 cm³"

Composite shapes: "For an L-shaped figure, split into two rectangular prisms, find each volume, add them."

Guided Practice:
Apply formula, practice with various dimensions, composite shapes, word problems.

Independent Application:
Mixed problems, real-world applications (boxes, rooms, containers), design challenges, compare volumes.

DIFFERENTIATION:

Struggling Learners:
- Verify formula with cube counting
- Label all dimensions
- One formula at a time
- Step-by-step calculations
- Focus on rectangular prisms only

Advanced Learners:
- Complex composite shapes
- Work backward (given volume, find dimension)
- Real-world volume projects
- Explore other formulas (cylinders)
- Optimization problems

ASSESSMENT INDICATORS:
- Applies V = l × w × h correctly
- Uses appropriate units
- Handles composite shapes
- Solves word problems
- Explains why formula works

VOCABULARY:
volume, formula, length, width, height, base area, cubic units, composite, rectangular prism

CONNECTION TO FUTURE LEARNING:
Volume formulas extend to other 3D shapes including cylinders, cones, spheres, and composite figures.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume Formulas' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Unit Conversion (Grade 5)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Unit Conversion' AND grade_level_min = 5),
  'Unit Conversion Grade 5 Topic Guide',
  'Comprehensive teaching approach for measurement conversions',
  'UNIT CONVERSION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should convert units from grade 4, multiply and divide with decimals, understand relative sizes of units, and work within metric and customary systems.

LEARNING OBJECTIVES:
Students will convert units within the metric system, convert units within the customary system, use conversion factors fluently, solve multi-step problems requiring conversion, and apply conversions to real-world contexts.

KEY CONCEPTS:
1. Metric: based on powers of 10 (kilo-, hecto-, deka-, base, deci-, centi-, milli-)
2. Customary: memorize relationships (12 in = 1 ft, 3 ft = 1 yd, etc.)
3. Larger unit to smaller: multiply
4. Smaller unit to larger: divide
5. Conversions enable comparison and computation

COMMON MISCONCEPTIONS:
- Multiplying when should divide
- Confusing metric and customary
- Not knowing conversion factors
- Multi-step conversion errors
- Difficulty with metric prefixes

TEACHING SEQUENCE:

Hook/Engagement:
"An athlete runs 5 kilometers. Another runs 3,000 meters. Who ran farther? We need conversions to compare! Conversions are essential for real-world problem solving."

Direct Instruction:
Metric system:
"Kilo- = 1000, Centi- = 0.01, Milli- = 0.001
1 km = 1000 m, 1 m = 100 cm, 1 cm = 10 mm
1 kg = 1000 g, 1 L = 1000 mL"

Customary:
"Length: 12 in = 1 ft, 3 ft = 1 yd, 5280 ft = 1 mi
Capacity: 8 fl oz = 1 cup, 2 cups = 1 pint, 2 pints = 1 quart, 4 quarts = 1 gallon
Weight: 16 oz = 1 lb, 2000 lb = 1 ton"

Conversion process: "5 km to m: larger to smaller = multiply. 5 × 1000 = 5000 m"
"450 cm to m: smaller to larger = divide. 450 ÷ 100 = 4.5 m"

Guided Practice:
Practice both systems, multi-step conversions, word problems, compare quantities.

Independent Application:
Mixed conversions, real-world problems, comparison challenges, create conversion problems.

DIFFERENTIATION:

Struggling Learners:
- Conversion charts always available
- Focus on one system at a time
- Practice "larger → smaller = multiply" rule
- Simple one-step conversions
- Real-world context

Advanced Learners:
- Multi-step conversions
- Compare across systems (approximate)
- Rate problems with conversion
- Create complex problems
- Explore less common units

ASSESSMENT INDICATORS:
- Converts within metric system
- Converts within customary system
- Chooses correct operation
- Solves multi-step problems
- Applies to real contexts

VOCABULARY:
convert, metric, customary, kilo-, centi-, milli-, capacity, weight, length

CONNECTION TO FUTURE LEARNING:
Unit conversion supports scientific applications, rate problems, and proportional reasoning.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Unit Conversion' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================
-- COORDINATE PLANE UNIT
-- ============================================

-- The Coordinate System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'The Coordinate System' AND grade_level_min = 5),
  'The Coordinate System Topic Guide',
  'Comprehensive teaching approach for coordinate plane basics',
  'THE COORDINATE SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should use number lines, understand axes as perpendicular lines, locate whole numbers on number lines, and follow directions.

LEARNING OBJECTIVES:
Students will identify the x-axis, y-axis, and origin, understand that two numbers describe any location, write and read ordered pairs (x, y), identify quadrant I (first quadrant), and understand the purpose of the coordinate system.

KEY CONCEPTS:
1. The coordinate plane has a horizontal x-axis and vertical y-axis
2. The origin (0, 0) is where the axes cross
3. Ordered pairs (x, y) describe locations
4. First number = horizontal distance, second = vertical
5. Quadrant I contains positive x and y values

COMMON MISCONCEPTIONS:
- Reversing x and y in ordered pairs
- Starting from the wrong axis
- Confusing the origin with (1, 1)
- Not understanding "ordered" means sequence matters
- Difficulty with points on axes

TEACHING SEQUENCE:

Hook/Engagement:
"How do you tell someone exactly where to find something on a map? You use coordinates! The coordinate plane is like a math map where every point has a unique address."

Direct Instruction:
Set up the plane: "Draw a horizontal line (x-axis) and vertical line (y-axis). They cross at the origin (0, 0)."

Ordered pairs: "Every point has an address (x, y). The x-coordinate tells how far right, the y-coordinate tells how far up."

Example: "(3, 5) means go right 3 and up 5."

Origin: "(0, 0) is where you start—at the intersection."

Points on axes: "(4, 0) is on the x-axis. (0, 6) is on the y-axis."

Guided Practice:
Identify parts, plot points, read coordinates of plotted points, practice ordered pair notation.

Independent Application:
Plotting practice, coordinate games, create coordinate drawings, error analysis.

DIFFERENTIATION:

Struggling Learners:
- Large coordinate grids
- Practice x-first, y-second repeatedly
- Color-code axes
- Start with small coordinates
- Kinesthetic: walk the coordinate plane

Advanced Learners:
- All four quadrants preview
- Negative coordinates
- Coordinate patterns
- Create coordinate pictures
- Connect to distance concepts

ASSESSMENT INDICATORS:
- Identifies axes and origin
- Writes ordered pairs correctly
- Reads coordinates of plotted points
- Explains (x, y) meaning
- Plots points accurately

VOCABULARY:
coordinate plane, x-axis, y-axis, origin, ordered pair, coordinates, quadrant, horizontal, vertical

CONNECTION TO FUTURE LEARNING:
The coordinate system is essential for graphing equations, geometry, and data analysis.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Coordinate System' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Plotting Points
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Plotting Points' AND grade_level_min = 5),
  'Plotting Points Topic Guide',
  'Comprehensive teaching approach for graphing coordinates',
  'PLOTTING POINTS ON THE COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand the coordinate system, know x and y axes, work with ordered pairs, and understand number lines.

LEARNING OBJECTIVES:
Students will plot ordered pairs accurately, read coordinates from plotted points, connect plotted points to form shapes, distinguish between (x, y) and (y, x), and plot points for real-world data.

KEY CONCEPTS:
1. Start at origin, move right for x, up for y
2. Order matters: (3, 5) ≠ (5, 3)
3. Points can be connected to show relationships
4. Every point has exactly one ordered pair
5. Plotting is reversible (can read coordinates from points)

COMMON MISCONCEPTIONS:
- Moving up before right
- Confusing (x, y) order
- Plotting from wrong starting point
- Errors when coordinates are 0
- Not using grid lines accurately

TEACHING SEQUENCE:

Hook/Engagement:
"Let''s play a treasure hunt on the coordinate plane! The treasure is at (7, 4). Can you find it? Plotting skills are essential for finding any location!"

Direct Instruction:
Plotting process: "To plot (3, 5): Start at origin. Go right 3 (along x-axis direction). Go up 5 (along y-axis direction). Mark the point."

Demonstrate multiple points: Plot (2, 4), (4, 2), (5, 0), (0, 3). Emphasize that order matters!

Reading points: "What is this point? Count right from origin: 6. Count up from x-axis: 2. The point is (6, 2)."

Connecting points: "Plot (1, 1), (4, 1), (4, 5), (1, 5), (1, 1). Connect them. What shape?"

Guided Practice:
Plot given points, read coordinates, connect to make shapes, plot and identify errors.

Independent Application:
Coordinate picture activities, mystery drawings, real data plotting, create coordinate challenges.

DIFFERENTIATION:

Struggling Learners:
- Large grids with clear lines
- Say "right first, up second"
- Practice with small coordinates
- Check each plotted point
- Color-coded directions

Advanced Learners:
- Coordinate art projects
- Negative coordinates (quadrants II-IV)
- Predict shapes before connecting
- Find missing coordinates
- Real-world data graphing

ASSESSMENT INDICATORS:
- Plots points accurately
- Reads coordinates correctly
- Understands order importance
- Creates shapes by connecting
- Self-checks accuracy

VOCABULARY:
plot, ordered pair, coordinate, x-coordinate, y-coordinate, grid, locate, origin

CONNECTION TO FUTURE LEARNING:
Plotting skills are essential for graphing equations, data analysis, and geometry transformations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Plotting Points' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Interpreting Graphs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Interpreting Graphs' AND grade_level_min = 5),
  'Interpreting Coordinate Graphs Topic Guide',
  'Comprehensive teaching approach for analyzing graphed data',
  'INTERPRETING COORDINATE GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should plot and read points, understand ordered pairs, analyze data, and connect graphs to real-world contexts.

LEARNING OBJECTIVES:
Students will interpret points on coordinate graphs, answer questions using graph data, understand what x and y represent in context, compare data points on graphs, and draw conclusions from graphed information.

KEY CONCEPTS:
1. Each axis represents a different quantity
2. Points show relationships between quantities
3. Graphs tell stories about data
4. Labels and titles provide context
5. Patterns in graphs reveal relationships

COMMON MISCONCEPTIONS:
- Reading axes incorrectly
- Ignoring labels
- Confusing correlation with causation
- Difficulty interpolating between points
- Not connecting graph to real situation

TEACHING SEQUENCE:

Hook/Engagement:
"This graph shows a runner''s distance over time. Can you tell when she stopped to rest? When she ran fastest? Graphs reveal stories in data!"

Direct Instruction:
Reading graphs: "First, read the title. Then identify what x and y represent. Now we can understand what each point means."

Example graph: Temperature vs. Time of Day
"Point (8, 60) means at 8:00 AM, the temperature was 60°F."
"Point (14, 85) means at 2:00 PM, the temperature was 85°F."
"What pattern do you see? Temperature increased during the day."

Answering questions: "What was the temperature at noon? Find x = 12, read y value."
"When was the temperature highest? Find the point highest on the graph."

Guided Practice:
Read various graphs, answer questions, identify patterns, make comparisons.

Independent Application:
Interpret multiple graphs, answer context questions, create questions for graphs, compare different graphs.

DIFFERENTIATION:

Struggling Learners:
- Simple two-point graphs first
- Clear labels always visible
- Guided question answering
- Real-world familiar contexts
- Practice reading both axes

Advanced Learners:
- Complex multi-point graphs
- Interpolation and extrapolation
- Compare multiple data sets
- Create graphs from scenarios
- Analyze graphs for trends

ASSESSMENT INDICATORS:
- Reads points correctly
- Answers questions accurately
- Identifies patterns
- Understands context from labels
- Draws reasonable conclusions

VOCABULARY:
interpret, axes, data, pattern, trend, relationship, context, labels, title

CONNECTION TO FUTURE LEARNING:
Graph interpretation skills are essential for data analysis, functions, and scientific investigation.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Interpreting Graphs' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Patterns on Graphs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Patterns on Graphs' AND grade_level_min = 5),
  'Patterns on Graphs Topic Guide',
  'Comprehensive teaching approach for coordinate pattern recognition',
  'PATTERNS ON GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should plot points, analyze numerical patterns, interpret graphs, and understand relationships between quantities.

LEARNING OBJECTIVES:
Students will identify patterns in graphed data, describe relationships shown by graphs, predict points based on patterns, connect numerical and graphical patterns, and explain why patterns form straight lines or curves.

KEY CONCEPTS:
1. Linear patterns create straight lines
2. The relationship between x and y can be described with a rule
3. Patterns allow prediction of new points
4. The rate of change affects the steepness
5. Graphs visualize abstract relationships

COMMON MISCONCEPTIONS:
- Not recognizing patterns unless points are connected
- Difficulty finding rules from graphs
- Thinking all patterns are linear
- Errors in predicting new points
- Not connecting visual to numerical patterns

TEACHING SEQUENCE:

Hook/Engagement:
"These points form a pattern: (1, 3), (2, 6), (3, 9), (4, 12). If we graph them, what will we see? A straight line! The pattern is y = 3x. Graphs make patterns visible!"

Direct Instruction:
Graph patterns: Plot (1, 2), (2, 4), (3, 6), (4, 8). "What pattern do you see? Each y is twice its x. Rule: y = 2x"

Visualize: "The points form a straight line because the relationship is consistent—every time x increases by 1, y increases by 2."

Predict: "What point comes next? (5, 10). What about (0, 0)? Yes, that fits too!"

Compare patterns: Graph y = x and y = 2x on same plane. "y = 2x is steeper because y increases faster."

Non-linear preview: Show y = x² pattern—it curves!

Guided Practice:
Graph numerical patterns, find rules, predict points, compare different patterns.

Independent Application:
Create and graph patterns, find rules from graphs, prediction challenges, pattern design.

DIFFERENTIATION:

Struggling Learners:
- Simple patterns (add 1, add 2)
- Plot first, then find pattern
- Tables to organize data
- Connect to numerical work
- Focus on linear patterns only

Advanced Learners:
- Find rules algebraically
- Compare multiple patterns
- Non-linear pattern exploration
- Create pattern challenges
- Real-world modeling

ASSESSMENT INDICATORS:
- Identifies patterns in graphs
- Describes relationships
- Predicts new points accurately
- Connects to numerical patterns
- Explains why patterns look certain ways

VOCABULARY:
pattern, linear, relationship, rule, predict, rate of change, steepness, trend

CONNECTION TO FUTURE LEARNING:
Pattern recognition on graphs leads directly to understanding functions and linear equations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Patterns on Graphs' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================
-- GEOMETRY UNIT
-- ============================================

-- Classifying Quadrilaterals (Grade 5)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Classifying Quadrilaterals' AND grade_level_min = 5),
  'Classifying Quadrilaterals Grade 5 Topic Guide',
  'Comprehensive teaching approach for quadrilateral hierarchy',
  'CLASSIFYING QUADRILATERALS (GRADE 5) - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should identify basic quadrilaterals, understand parallel and perpendicular lines, classify by attributes, and use precise vocabulary.

LEARNING OBJECTIVES:
Students will understand the hierarchy of quadrilaterals, classify quadrilaterals using properties, explain subset relationships, identify all classifications a shape meets, and use properties to solve problems.

KEY CONCEPTS:
1. Quadrilateral → Parallelogram → Rectangle → Square
2. Quadrilateral → Parallelogram → Rhombus → Square
3. Every square is a rectangle AND a rhombus
4. Properties are inherited from broader categories
5. Classification depends on defining properties

COMMON MISCONCEPTIONS:
- Thinking rectangles and squares are separate categories
- Not understanding that properties are inherited
- Confusing necessary vs sufficient conditions
- Difficulty with "all/some/no" statements
- Not recognizing shapes in non-standard orientations

TEACHING SEQUENCE:

Hook/Engagement:
"Is a square a rectangle? Is a rectangle a square? These aren''t trick questions—they depend on understanding the hierarchy of shapes. Let''s become classification experts!"

Direct Instruction:
Build the hierarchy:
"Quadrilateral: 4 sides
Parallelogram: opposite sides parallel
Rectangle: parallelogram with 4 right angles
Rhombus: parallelogram with 4 equal sides
Square: 4 right angles AND 4 equal sides (rectangle + rhombus)"

True statements:
- All squares are rectangles (TRUE)
- All rectangles are squares (FALSE)
- All rhombuses are parallelograms (TRUE)
- All parallelograms are rhombuses (FALSE)

Venn diagrams show relationships visually.

Guided Practice:
Classify shapes at multiple levels, complete hierarchy charts, evaluate true/false statements, identify properties.

Independent Application:
Classification challenges, Venn diagram activities, property-based reasoning, create always/sometimes/never statements.

DIFFERENTIATION:

Struggling Learners:
- Visual hierarchy charts
- Focus on two shapes at a time
- Attribute checklists
- Lots of examples
- Manipulatives for exploration

Advanced Learners:
- Include trapezoids and kites
- Prove relationships using properties
- Coordinate geometry connections
- Create assessment questions
- Explore 3D shape hierarchies

ASSESSMENT INDICATORS:
- Classifies at multiple levels
- Explains subset relationships
- Evaluates statements about quadrilaterals
- Uses properties for reasoning
- Understands inheritance of properties

VOCABULARY:
quadrilateral, parallelogram, rectangle, rhombus, square, trapezoid, hierarchy, properties, subset

CONNECTION TO FUTURE LEARNING:
Understanding shape hierarchy develops logical reasoning for geometry proofs and mathematical classification.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Classifying Quadrilaterals' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Properties of Triangles (Grade 5)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Properties of Triangles' AND grade_level_min = 5),
  'Properties of Triangles Grade 5 Topic Guide',
  'Comprehensive teaching approach for triangle classification and properties',
  'PROPERTIES OF TRIANGLES (GRADE 5) - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should classify triangles by sides and angles, measure angles, understand angle types, and use classification vocabulary.

LEARNING OBJECTIVES:
Students will classify triangles using both side and angle criteria, understand properties of each type, recognize that classification can be dual, explore the relationship between sides and angles, and apply properties to solve problems.

KEY CONCEPTS:
1. By sides: equilateral, isosceles, scalene
2. By angles: acute, right, obtuse
3. Dual classification: right isosceles, obtuse scalene, etc.
4. Equilateral triangles are also equiangular (60° each)
5. Sum of angles = 180° (introduction)

COMMON MISCONCEPTIONS:
- Thinking classification by sides and angles are either/or
- Not recognizing triangles in various orientations
- Assuming equilateral triangles are always "upright"
- Difficulty with dual classification terminology
- Not understanding angle-side relationships

TEACHING SEQUENCE:

Hook/Engagement:
"This triangle has two equal sides AND a right angle. What do we call it? A right isosceles triangle! Let''s explore how triangles can be classified in multiple ways."

Direct Instruction:
Side classification review:
- Equilateral: 3 equal sides (also 3 equal angles: 60° each)
- Isosceles: at least 2 equal sides (base angles are equal)
- Scalene: no equal sides (no equal angles)

Angle classification review:
- Acute: all angles < 90°
- Right: one angle = 90°
- Obtuse: one angle > 90°

Combine: "An acute isosceles triangle has 2 equal sides AND all acute angles."

Special property: "In an equilateral triangle, all angles are exactly 60°. Why? Total is 180°, all equal, so each is 180° ÷ 3 = 60°."

Guided Practice:
Dual classification, identify properties, explore angle-side relationships, problem solving with properties.

Independent Application:
Mixed classification, create triangles with specific properties, investigate relationships, property puzzles.

DIFFERENTIATION:

Struggling Learners:
- Focus on one classification system at a time
- Visual reference charts
- Measure to verify
- Standard orientations first
- Property checklists

Advanced Learners:
- Explore impossible combinations
- Investigate angle sum property
- Coordinate geometry triangles
- Create proofs
- Triangle congruence preview

ASSESSMENT INDICATORS:
- Uses dual classification
- Identifies all properties
- Recognizes in various orientations
- Applies properties to problems
- Explains angle-side relationships

VOCABULARY:
equilateral, isosceles, scalene, acute, right, obtuse, equiangular, properties

CONNECTION TO FUTURE LEARNING:
Triangle properties are foundational for geometry proofs, congruence, similarity, and trigonometry.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties of Triangles' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Shape Hierarchy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Shape Hierarchy' AND grade_level_min = 5),
  'Shape Hierarchy Topic Guide',
  'Comprehensive teaching approach for understanding shape relationships',
  'SHAPE HIERARCHY - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should classify quadrilaterals and triangles, understand properties of shapes, use logical reasoning, and work with classification systems.

LEARNING OBJECTIVES:
Students will understand that shapes can belong to multiple categories, use Venn diagrams to show relationships, evaluate statements about shape categories, explain why subcategories exist, and apply hierarchical thinking to new shapes.

KEY CONCEPTS:
1. Shapes inherit properties from parent categories
2. Subcategories have additional defining properties
3. "All A are B" doesn''t mean "All B are A"
4. Venn diagrams show hierarchical relationships
5. Classification is based on definitions, not appearance

COMMON MISCONCEPTIONS:
- Thinking categories are mutually exclusive
- Not understanding property inheritance
- Confusing subset with equal
- Difficulty with "some, all, none" logic
- Over-reliance on visual appearance

TEACHING SEQUENCE:

Hook/Engagement:
"A Labrador is a dog. A dog is a mammal. A mammal is an animal. This is a hierarchy! Shapes work the same way. Let''s explore shape family trees!"

Direct Instruction:
Build hierarchies:
"Polygon → Quadrilateral → Parallelogram → Rectangle → Square"

Each step adds properties:
- Polygon: closed figure with straight sides
- Quadrilateral: polygon with 4 sides
- Parallelogram: quadrilateral with opposite sides parallel
- Rectangle: parallelogram with 4 right angles
- Square: rectangle with 4 equal sides

Venn diagrams: Show rectangles inside parallelograms inside quadrilaterals. Show squares inside rectangles.

Logic statements:
- All squares are rectangles (TRUE—squares have all rectangle properties plus more)
- Some parallelograms are rectangles (TRUE—the ones with right angles)
- No trapezoids are parallelograms (depends on definition!)

Guided Practice:
Complete hierarchy diagrams, evaluate true/false statements, create Venn diagrams, explain relationships.

Independent Application:
Shape relationship challenges, create own hierarchies, evaluate complex statements, design classification systems.

DIFFERENTIATION:

Struggling Learners:
- Simple two-level hierarchies first
- Visual Venn diagrams always
- Lots of examples and non-examples
- Focus on quadrilaterals
- Concrete before abstract

Advanced Learners:
- Complex multi-level hierarchies
- Create new classification systems
- Explore 3D shape hierarchies
- Formal logic connections
- Design proofs

ASSESSMENT INDICATORS:
- Explains hierarchical relationships
- Creates accurate Venn diagrams
- Evaluates logical statements
- Understands property inheritance
- Applies to new situations

VOCABULARY:
hierarchy, category, subcategory, subset, Venn diagram, inherit, properties, all, some, none

CONNECTION TO FUTURE LEARNING:
Hierarchical thinking is essential for logical reasoning, geometry proofs, and mathematical classification throughout education.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Shape Hierarchy' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;
