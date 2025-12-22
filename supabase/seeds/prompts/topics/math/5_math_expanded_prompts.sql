-- Grade 5 Math Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 5 Math expanded topics
-- ============================================================================

-- ============================================================================
-- PLACE VALUE EXPANSION (6 topics)
-- ============================================================================

-- Numbers to Billions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Numbers to Billions' AND grade_level_min = 5),
  'Numbers to Billions Topic Guide', 'Reading and writing numbers to billions',
  'NUMBERS TO BILLIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Place value understanding through millions
- Reading and writing numbers to millions
- Understanding of place value patterns
- Familiarity with periods (ones, thousands, millions)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read and write numbers to billions using standard form
2. Identify the value of digits in the billions period
3. Compare and order numbers in the billions
4. Apply billion-scale numbers to real-world contexts

KEY CONCEPTS:
- Billions period structure: hundred billions, ten billions, ones billions
- Each period has three places (hundreds, tens, ones)
- Commas separate periods for readability
- Place value pattern repeats every three digits
- Real-world applications: national budgets, populations, distances in space

COMMON MISCONCEPTIONS:
- Confusing the names of large number places
- Misplacing commas when writing large numbers
- Not recognizing the repeating pattern of periods
- Difficulty understanding the magnitude of billions

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Display fascinating billion-scale facts: "The U.S. population is about 330,000,000 people. How do we read this number?"

2. DIRECT INSTRUCTION (12 minutes):
   Review place value chart extending to billions.
   Model reading: 7,234,567,891 as "seven billion, two hundred thirty-four million, five hundred sixty-seven thousand, eight hundred ninety-one"
   Show how periods group digits by threes.
   Emphasize comma placement every three digits.

3. GUIDED PRACTICE (10 minutes):
   Students work in pairs to read and write billion-scale numbers.
   Use place value charts to organize digits.
   Practice: 5,678,901,234 and 12,345,678,901

4. INDEPENDENT PRACTICE (15 minutes):
   Read and write numbers to billions from real-world contexts.
   Compare numbers like national debts or planetary distances.
   Convert between standard and word form.

DIFFERENTIATION:
For Struggling Learners:
- Provide place value charts for reference
- Start with numbers just over one billion
- Use color-coding for different periods
- Practice with manipulatives representing periods

For Advanced Learners:
- Extend to trillions
- Solve problems involving operations with billions
- Research and present real-world billion-scale data
- Compare scientific notation representations

ASSESSMENT INDICATORS:
- Correctly reads numbers to billions with proper place names
- Writes numbers to billions with accurate comma placement
- Identifies digit values in any position through billions
- Applies billion-scale numbers to real-world scenarios', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Numbers to Billions' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Decimal Place Value to Thousandths
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Decimal Place Value to Thousandths' AND grade_level_min = 5),
  'Decimal Place Value to Thousandths Guide', 'Understanding thousandths place',
  'DECIMAL PLACE VALUE TO THOUSANDTHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding decimals to hundredths
- Knowledge of place value patterns
- Experience with decimal models (grids, number lines)
- Fraction and decimal connections

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify and name the thousandths place
2. Read and write decimals to thousandths
3. Understand the value of digits in the thousandths place
4. Connect thousandths to fraction equivalents

KEY CONCEPTS:
- Thousandths is 1/1000 or 0.001
- Each place to the right is 1/10 the previous place
- Three decimal places: tenths, hundredths, thousandths
- Decimal point separates whole numbers from decimal parts
- Zero placeholders maintain place value

COMMON MISCONCEPTIONS:
- Reading 0.125 as "one hundred twenty-five" instead of "one hundred twenty-five thousandths"
- Thinking more decimal places means larger number
- Confusing thousandths (0.001) with thousands (1,000)
- Not using zero placeholders correctly (0.5 vs 0.050)

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show a meter stick marked in millimeters: "One millimeter is one thousandth of a meter!"

2. DIRECT INSTRUCTION (12 minutes):
   Extend place value chart to include thousandths.
   Model with base-ten blocks: flat=1, rod=0.1, unit=0.01, tiny piece=0.001
   Read decimals: 0.375 is "three hundred seventy-five thousandths"
   Write fractions as decimals: 247/1000 = 0.247

3. GUIDED PRACTICE (12 minutes):
   Students build decimal numbers with place value disks.
   Practice reading: 0.456, 1.023, 0.009, 3.142
   Convert between decimal and fraction form.

4. INDEPENDENT PRACTICE (15 minutes):
   Identify place values in various decimal numbers.
   Read and write decimals to thousandths.
   Solve measurement problems using thousandths.

DIFFERENTIATION:
For Struggling Learners:
- Use decimal place value charts consistently
- Provide visual models (grids showing 1000 parts)
- Practice with numbers that have fewer non-zero digits
- Connect to money extended to thousandths of a dollar

For Advanced Learners:
- Extend to ten-thousandths and beyond
- Explore repeating decimals
- Convert complex fractions to decimal thousandths
- Investigate precision in real-world measurements

ASSESSMENT INDICATORS:
- Accurately identifies the thousandths place
- Reads decimals to thousandths using correct terminology
- Writes decimals from verbal descriptions
- Converts between fraction and decimal forms', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Decimal Place Value to Thousandths' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Comparing Decimals to Thousandths
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Decimals to Thousandths' AND grade_level_min = 5),
  'Comparing Decimals to Thousandths Guide', 'Compare decimals with precision',
  'COMPARING DECIMALS TO THOUSANDTHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding decimal place value to thousandths
- Ability to read decimals to thousandths
- Knowledge of comparing whole numbers
- Understanding of greater than/less than symbols

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare decimals to thousandths using <, >, = symbols
2. Order decimals from least to greatest or greatest to least
3. Use place value reasoning to compare decimals
4. Apply comparison skills to real-world decimal situations

KEY CONCEPTS:
- Compare digits from left to right, starting at the greatest place
- Align decimal points to compare accurately
- Use zero placeholders when needed (0.5 = 0.500)
- More decimal places does not mean larger value
- Number line positioning shows relative size

COMMON MISCONCEPTIONS:
- Thinking more digits means larger number (0.8 vs 0.125)
- Not aligning decimal points before comparing
- Comparing like whole numbers (thinking 0.25 > 0.7)
- Forgetting that 0.5 = 0.50 = 0.500

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present a scenario: "Who ran faster: 10.234 seconds or 10.24 seconds? How do we know?"

2. DIRECT INSTRUCTION (10 minutes):
   Model comparing process step-by-step:
   - Align decimal points vertically
   - Compare from left to right
   - Use placeholders: 0.5 vs 0.125 becomes 0.500 vs 0.125
   - First different digit determines comparison
   Demonstrate on number line for visual understanding.

3. GUIDED PRACTICE (12 minutes):
   Students compare pairs: 0.456 vs 0.465, 0.7 vs 0.699, 1.23 vs 1.230
   Order sets of decimals: {0.405, 0.45, 0.045, 0.4}
   Use visual models to verify comparisons.

4. INDEPENDENT PRACTICE (12 minutes):
   Compare and order various decimal sets.
   Apply to real contexts: race times, measurements, prices.
   Solve word problems requiring decimal comparison.

DIFFERENTIATION:
For Struggling Learners:
- Provide place value charts for alignment
- Use grid models to visualize decimal sizes
- Practice with decimals having same number of places first
- Color-code different decimal places

For Advanced Learners:
- Compare complex decimals with varying place values
- Create number puzzles with decimal comparisons
- Investigate density of decimals (infinite decimals between any two)
- Apply to scientific measurement precision

ASSESSMENT INDICATORS:
- Correctly compares decimals to thousandths
- Orders sets of decimals accurately
- Explains comparison reasoning using place value
- Applies comparison skills to solve real problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Decimals to Thousandths' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Rounding Decimals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rounding Decimals' AND grade_level_min = 5),
  'Rounding Decimals Topic Guide', 'Round decimals to any place',
  'ROUNDING DECIMALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding decimal place value
- Rounding whole numbers
- Number line familiarity
- Comparing decimals

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Round decimals to any specified place value
2. Apply rounding rules consistently
3. Understand when and why to round decimals
4. Estimate using rounded decimals

KEY CONCEPTS:
- Identify the rounding place, look at digit to the right
- If digit is 5 or greater, round up; if less than 5, round down
- Rounding to tenths, hundredths, or thousandths
- Rounding changes precision but maintains approximate value
- Real-world contexts determine rounding place

COMMON MISCONCEPTIONS:
- Rounding all digits instead of just to specified place
- Forgetting to look at the digit to the right
- Confusion about what "round up" means
- Not understanding that 4.999 rounds to 5.0, not 4.9

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Gas prices are $3.879 per gallon. How do we say this price in everyday language?"

2. DIRECT INSTRUCTION (12 minutes):
   Review rounding steps with whole numbers.
   Model decimal rounding process:
   - Underline the rounding place
   - Circle the digit to the right
   - Apply rule: 5+ rounds up, less than 5 rounds down
   Examples: 3.456 to nearest tenth = 3.5
            7.834 to nearest hundredth = 7.83
   Show on number line to visualize.

3. GUIDED PRACTICE (10 minutes):
   Students round decimals to specified places.
   Practice: Round 5.678 to tenths, hundredths, ones
   Round 0.445 to hundredths (emphasize 5 rounds up)
   Discuss real-world rounding contexts.

4. INDEPENDENT PRACTICE (15 minutes):
   Round various decimals to different place values.
   Solve word problems requiring appropriate rounding.
   Estimate sums and products using rounded values.

DIFFERENTIATION:
For Struggling Learners:
- Provide rounding rule reference cards
- Use number lines to visualize rounding
- Practice underlining and circling systematically
- Start with rounding to nearest whole number

For Advanced Learners:
- Round to significant figures
- Investigate rounding errors in calculations
- Solve problems involving compound rounding
- Analyze when rounding up vs down matters in real situations

ASSESSMENT INDICATORS:
- Correctly rounds decimals to specified places
- Identifies appropriate rounding place for context
- Explains rounding reasoning
- Applies rounding to estimate answers', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rounding Decimals' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Powers of 10 Patterns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Powers of 10 Patterns' AND grade_level_min = 5),
  'Powers of 10 Patterns Topic Guide', 'Multiply and divide by powers of 10',
  'POWERS OF 10 PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Place value understanding
- Multiplication and division basics
- Decimal place value
- Pattern recognition skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply whole numbers and decimals by 10, 100, 1,000
2. Divide whole numbers and decimals by 10, 100, 1,000
3. Recognize and describe patterns in powers of 10
4. Apply mental math strategies for powers of 10

KEY CONCEPTS:
- Multiplying by 10 shifts digits one place left
- Multiplying by 100 shifts two places left, by 1000 three places
- Dividing by 10 shifts digits one place right
- Decimal point appears to move (digits actually shift)
- Powers of 10: 10¹ = 10, 10² = 100, 10³ = 1,000

COMMON MISCONCEPTIONS:
- Just adding zeros without understanding place value shifts
- Confusion about which direction digits shift
- Not using placeholders when needed
- Thinking multiplication always makes numbers larger

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Magic trick: "I can multiply any number by 100 in my head instantly! Watch: 34 × 100 = 3,400!"

2. DIRECT INSTRUCTION (12 minutes):
   Use place value chart to show shifts:
   5.6 × 10: digit 5 moves to tens place, 6 to ones = 56
   5.6 × 100: shifts two places = 560
   5.6 ÷ 10: shifts right = 0.56
   Pattern: count zeros to determine number of place shifts.
   Connect to exponent notation.

3. GUIDED PRACTICE (12 minutes):
   Students practice with place value charts.
   Multiply: 3.7 × 10, 0.45 × 100, 23 × 1,000
   Divide: 450 ÷ 10, 6,700 ÷ 100, 8.5 ÷ 10
   Identify patterns in products and quotients.

4. INDEPENDENT PRACTICE (12 minutes):
   Mental math practice with powers of 10.
   Solve real-world problems: metric conversions, money problems.
   Create pattern tables showing relationships.

DIFFERENTIATION:
For Struggling Learners:
- Provide place value charts for all problems
- Start with whole numbers only
- Use manipulatives showing place shifts
- Practice one operation at a time (multiply before divide)

For Advanced Learners:
- Extend to larger powers of 10 (10,000, 100,000)
- Connect to scientific notation
- Solve multi-step problems with powers of 10
- Investigate negative powers of 10 (0.1, 0.01, 0.001)

ASSESSMENT INDICATORS:
- Accurately multiplies and divides by powers of 10
- Explains place value shift pattern
- Solves problems mentally with fluency
- Applies powers of 10 to metric conversions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Powers of 10 Patterns' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Place Value Relationships
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Place Value Relationships' AND grade_level_min = 5),
  'Place Value Relationships Guide', 'Understand 10x and 1/10 relationships',
  'PLACE VALUE RELATIONSHIPS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Strong place value understanding
- Multiplication and division by 10
- Understanding of fractions as division
- Pattern recognition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that each place is 10 times the place to its right
2. Recognize that each place is 1/10 of the place to its left
3. Apply multiplicative relationships between places
4. Use relationships to compare and convert numbers

KEY CONCEPTS:
- 10× relationship: moving left increases value by 10
- 1/10 relationship: moving right decreases value by factor of 10
- Reciprocal relationship between adjacent places
- Pattern extends infinitely in both directions
- Connects to metric system relationships

COMMON MISCONCEPTIONS:
- Thinking relationships are additive (+10) not multiplicative (×10)
- Confusing 1/10 with subtraction
- Not recognizing pattern extends to decimals
- Difficulty with bidirectional thinking

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "If a dime is 1/10 of a dollar, how many times larger is a dollar than a dime?"

2. DIRECT INSTRUCTION (12 minutes):
   Build place value chart showing relationships:
   hundreds (100) = 10 × tens, tens (10) = 1/10 × hundreds
   Show pattern: 1000, 100, 10, 1, 0.1, 0.01, 0.001
   Each step right: ×1/10 or ÷10
   Each step left: ×10
   Model with examples: 300 is 10 times 30, 30 is 1/10 of 300

3. GUIDED PRACTICE (12 minutes):
   Students complete relationship statements:
   "40 is 10 times ___" (4)
   "500 is 1/10 of ___" (5,000)
   Work with decimal relationships: 0.7 is 10 times 0.07
   Use manipulatives showing 10:1 ratios.

4. INDEPENDENT PRACTICE (15 minutes):
   Fill in missing values using 10× and 1/10 relationships.
   Solve problems requiring place value reasoning.
   Create visual models showing relationships.

DIFFERENTIATION:
For Struggling Learners:
- Use base-ten blocks showing physical 10:1 ratios
- Create anchor charts with arrows showing relationships
- Practice with whole numbers before decimals
- Provide sentence frames for relationship statements

For Advanced Learners:
- Extend to 100× and 1/100 relationships
- Investigate exponential notation for relationships
- Apply to scientific notation conversions
- Solve complex multi-step relationship problems

ASSESSMENT INDICATORS:
- Correctly identifies 10× and 1/10 relationships
- Explains relationships using mathematical language
- Applies relationships to solve problems
- Recognizes pattern across whole numbers and decimals', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Place Value Relationships' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- OPERATIONS WITH DECIMALS (13 topics)
-- ============================================================================

-- Adding Decimals to Hundredths
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Decimals to Hundredths' AND grade_level_min = 5),
  'Adding Decimals to Hundredths Guide', 'Add decimals with two decimal places',
  'ADDING DECIMALS TO HUNDREDTHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding decimal place value to hundredths
- Addition of whole numbers with regrouping
- Ability to line up numbers vertically
- Money addition experience

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Add decimals to hundredths with accurate alignment
2. Regroup across decimal places when necessary
3. Use estimation to verify reasonableness
4. Apply decimal addition to money and measurement problems

KEY CONCEPTS:
- Line up decimal points vertically
- Add from right to left, as with whole numbers
- Regroup tenths and hundredths as needed
- Decimal point in answer aligns with problem
- Use zeros as placeholders when needed

COMMON MISCONCEPTIONS:
- Lining up digits on the right instead of decimal points
- Forgetting to bring down the decimal point
- Adding without regrouping when needed
- Not using estimation to check answers

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You bought items for $3.45 and $2.78. What''s the total cost?"

2. DIRECT INSTRUCTION (10 minutes):
   Model vertical alignment: write decimal points in a column
   Show: 3.45 + 2.78 = ?
   Add hundredths: 5 + 8 = 13, write 3, regroup 1
   Add tenths: 4 + 7 + 1 = 12, write 2, regroup 1
   Add ones: 3 + 2 + 1 = 6
   Answer: 6.23
   Verify with estimation: 3 + 3 = 6 ✓

3. GUIDED PRACTICE (12 minutes):
   Students solve problems with partner support.
   Practice: 5.67 + 3.84, 12.45 + 8.99, 7.08 + 4.56
   Use grid paper to maintain alignment.
   Estimate before solving, compare after.

4. INDEPENDENT PRACTICE (15 minutes):
   Solve decimal addition problems independently.
   Apply to money word problems.
   Check answers with estimation or calculator.

DIFFERENTIATION:
For Struggling Learners:
- Provide grid paper for alignment
- Use money context (dollars and cents) exclusively
- Practice with no regrouping first
- Check each step with manipulatives or models

For Advanced Learners:
- Add three or more decimals
- Solve missing addend problems: 5.67 + ___ = 12.45
- Create word problems requiring decimal addition
- Work with measurements requiring unit conversions

ASSESSMENT INDICATORS:
- Correctly aligns decimal points vertically
- Accurately adds with regrouping
- Places decimal point correctly in sum
- Uses estimation to verify reasonableness', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Decimals to Hundredths' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Adding Decimals to Thousandths
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Decimals to Thousandths' AND grade_level_min = 5),
  'Adding Decimals to Thousandths Guide', 'Add decimals with three decimal places',
  'ADDING DECIMALS TO THOUSANDTHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Adding decimals to hundredths
- Understanding thousandths place value
- Regrouping skills
- Using zero placeholders

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Add decimals with up to three decimal places
2. Use zero placeholders appropriately
3. Regroup across multiple decimal places
4. Apply to precision measurements

KEY CONCEPTS:
- All addends need same number of decimal places (use zeros)
- Align decimal points precisely
- Regroup from thousandths to hundredths to tenths
- Greater precision requires more careful alignment
- Estimation becomes more important with smaller values

COMMON MISCONCEPTIONS:
- Not adding zeros to align decimal places
- Misaligning thousandths with hundredths
- Dropping zeros in answers when they''re significant
- Confusion about when zeros are placeholders vs significant

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "In Olympic timing, every thousandth of a second matters! Add these times: 10.234 + 9.876 seconds."

2. DIRECT INSTRUCTION (12 minutes):
   Model adding decimals with different decimal places:
   3.456 + 12.8 = ?
   Rewrite with placeholders: 3.456 + 12.800
   Align and add vertically
   Emphasize checking alignment before calculating
   Show regrouping across all places

3. GUIDED PRACTICE (12 minutes):
   Add: 7.845 + 3.267, 15.6 + 8.392, 0.456 + 0.789
   Practice adding numbers with different decimal lengths
   Use place value charts if needed
   Estimate to check reasonableness

4. INDEPENDENT PRACTICE (15 minutes):
   Solve varied decimal addition problems to thousandths.
   Apply to measurement contexts (meters, liters, grams).
   Multi-step word problems with precision requirements.

DIFFERENTIATION:
For Struggling Learners:
- Provide pre-printed place value columns
- Use highlighters to track regrouping
- Start with same-length decimals
- Practice placeholder zeros separately

For Advanced Learners:
- Add four or more decimals with thousandths
- Solve problems with ten-thousandths
- Calculate running totals in sequences
- Investigate rounding and precision effects

ASSESSMENT INDICATORS:
- Correctly adds decimals to thousandths
- Uses zero placeholders appropriately
- Regroups accurately across multiple places
- Applies skills to precision measurement contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Decimals to Thousandths' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Subtracting Decimals to Hundredths
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Decimals to Hundredths' AND grade_level_min = 5),
  'Subtracting Decimals to Hundredths Guide', 'Subtract decimals with two decimal places',
  'SUBTRACTING DECIMALS TO HUNDREDTHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Subtraction of whole numbers with regrouping
- Understanding decimal place value to hundredths
- Adding decimals to hundredths
- Money subtraction experience

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Subtract decimals to hundredths with proper alignment
2. Regroup across decimal places when necessary
3. Use zero placeholders in minuend when needed
4. Apply to money and measurement situations

KEY CONCEPTS:
- Align decimal points vertically
- Subtract from right to left
- Regroup from tenths to hundredths as needed
- Add zeros to minuend to match decimal places
- Decimal point in answer aligns with problem

COMMON MISCONCEPTIONS:
- Subtracting smaller number from larger regardless of position
- Not aligning decimal points
- Forgetting to use placeholders
- Difficulty with regrouping across zeros

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You have $10.00 and spend $6.75. How much change do you get?"

2. DIRECT INSTRUCTION (12 minutes):
   Model: 8.52 - 3.67 = ?
   Align decimal points vertically
   Regroup: can''t subtract 7 from 2 in hundredths
   Borrow from tenths: 12 - 7 = 5
   Regroup tenths: 4 - 6 needs borrowing
   Continue process, answer: 4.85
   Model problem with zeros: 5 - 2.34 = 5.00 - 2.34

3. GUIDED PRACTICE (12 minutes):
   Practice: 12.45 - 7.89, 10.00 - 3.67, 15.3 - 8.45
   Use grid paper for alignment
   Emphasize adding zeros to match decimal places
   Estimate to verify: 12 - 8 = 4, so 12.45 - 7.89 ≈ 4-5 ✓

4. INDEPENDENT PRACTICE (15 minutes):
   Solve decimal subtraction problems.
   Word problems with money and measurements.
   Check work using addition (inverse operation).

DIFFERENTIATION:
For Struggling Learners:
- Grid paper for alignment support
- Work with money context primarily
- Practice regrouping steps separately
- Use base-ten decimal models

For Advanced Learners:
- Missing minuend problems: ___ - 3.67 = 5.48
- Chain subtraction: start with large amount, subtract multiple times
- Create and solve word problems
- Combine addition and subtraction in multi-step problems

ASSESSMENT INDICATORS:
- Aligns decimal points correctly
- Regroups accurately when needed
- Uses zero placeholders appropriately
- Solves word problems with decimals', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Decimals to Hundredths' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Subtracting Decimals to Thousandths
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Decimals to Thousandths' AND grade_level_min = 5),
  'Subtracting Decimals to Thousandths Guide', 'Subtract decimals with three decimal places',
  'SUBTRACTING DECIMALS TO THOUSANDTHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Subtracting decimals to hundredths
- Place value to thousandths
- Regrouping across multiple places
- Using zero placeholders

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Subtract decimals with up to three decimal places
2. Regroup across thousandths, hundredths, and tenths
3. Work with numbers having different decimal lengths
4. Apply to precision measurement problems

KEY CONCEPTS:
- Extend all numbers to same decimal places with zeros
- Align decimal points precisely
- Regroup systematically from right to left
- Precision in measurement contexts
- Verification using estimation or inverse operations

COMMON MISCONCEPTIONS:
- Not extending minuend with sufficient zeros
- Misalignment of thousandths, hundredths, tenths
- Regrouping errors across multiple places
- Confusion about when trailing zeros matter

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Two Olympic swimmers'' times: 52.345 seconds and 52.189 seconds. What''s the difference?"

2. DIRECT INSTRUCTION (12 minutes):
   Model: 15.6 - 8.347 = ?
   Rewrite: 15.600 - 8.347
   Align and show regrouping process step-by-step
   Emphasize systematic regrouping from right to left
   Check: 8.347 + 7.253 should equal 15.6
   Practice with whole number minus decimal: 12 - 7.456

3. GUIDED PRACTICE (12 minutes):
   Subtract: 10.456 - 3.789, 8 - 2.345, 16.234 - 9.876
   Use place value charts as needed
   Estimate first: 10.456 - 3.789 ≈ 10 - 4 = 6
   Check answers by adding

4. INDEPENDENT PRACTICE (15 minutes):
   Varied subtraction problems to thousandths.
   Measurement word problems requiring precision.
   Find differences in scientific data or sports times.

DIFFERENTIATION:
For Struggling Learners:
- Pre-printed place value grids
- Color-code each decimal place
- Work through regrouping step-by-step
- Provide regrouping reference cards

For Advanced Learners:
- Work with ten-thousandths
- Solve equations with missing values
- Chain subtraction with multiple steps
- Analyze precision requirements in real contexts

ASSESSMENT INDICATORS:
- Correctly subtracts decimals to thousandths
- Uses appropriate zero placeholders
- Regroups accurately across multiple places
- Applies to precision measurement contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Decimals to Thousandths' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Estimating with Decimals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Estimating with Decimals' AND grade_level_min = 5),
  'Estimating with Decimals Topic Guide', 'Estimate sums and differences',
  'ESTIMATING WITH DECIMALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Rounding decimals
- Adding and subtracting decimals
- Understanding of estimation purpose
- Mental math skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Round decimals to estimate sums and differences
2. Choose appropriate rounding place for estimation
3. Use estimation to check reasonableness of answers
4. Apply estimation in real-world contexts

KEY CONCEPTS:
- Estimation gives approximate answer quickly
- Round to place value that makes mental math easy
- Front-end estimation: use leading digits
- Clustering: round similar numbers to same value
- Estimation is a checking tool, not replacement for exact calculation

COMMON MISCONCEPTIONS:
- Thinking estimation should equal exact answer
- Always rounding to same place regardless of context
- Not understanding when estimation is appropriate
- Over-relying on estimation instead of calculating

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "At the store, items cost $3.79, $5.21, and $8.95. About how much total? Can you answer in 5 seconds?"

2. DIRECT INSTRUCTION (10 minutes):
   Model different estimation strategies:
   Front-end: 3.79 + 5.21 ≈ 3 + 5 = 8
   Rounding to ones: 4 + 5 + 9 = 18
   Rounding to nearest dollar makes mental math easier
   Discuss when estimation is useful: quick checks, shopping, predictions
   Show how estimation catches errors: if exact answer doesn''t match estimate, recalculate

3. GUIDED PRACTICE (12 minutes):
   Estimate then calculate exact answers:
   12.67 + 8.34, 15.89 - 7.23, 25.4 + 18.7
   Discuss whether estimates are close enough
   Practice choosing appropriate rounding place
   Use estimation to identify obvious errors

4. INDEPENDENT PRACTICE (15 minutes):
   Estimate sums and differences for various problems.
   Real-world contexts: shopping, measuring, planning.
   Identify which exact answers are reasonable based on estimates.

DIFFERENTIATION:
For Struggling Learners:
- Start with rounding to nearest whole number only
- Provide rounding reference charts
- Use money context exclusively
- Practice estimation separately from exact calculation

For Advanced Learners:
- Use compatible numbers strategy
- Estimate products and quotients with decimals
- Determine acceptable error ranges
- Apply to budgeting and planning scenarios

ASSESSMENT INDICATORS:
- Estimates using appropriate rounding
- Explains estimation strategy used
- Uses estimation to verify exact calculations
- Recognizes when estimation is sufficient vs when exact answer needed', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Estimating with Decimals' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Multiplying Decimals by Whole Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Decimals by Whole Numbers' AND grade_level_min = 5),
  'Multiplying Decimals by Whole Numbers Guide', 'Multiply decimal by whole number',
  'MULTIPLYING DECIMALS BY WHOLE NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multi-digit multiplication
- Understanding decimal place value
- Estimation with decimals
- Repeated addition concept of multiplication

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply decimals by whole numbers accurately
2. Place decimal point correctly in products
3. Use estimation to verify products
4. Apply to rate and measurement problems

KEY CONCEPTS:
- Multiply as if all numbers are whole numbers
- Count decimal places in factors
- Place decimal point in product based on total decimal places
- Product may need leading zero (0.3 × 2 = 0.6)
- Connect to repeated addition: 3 × 4.5 = 4.5 + 4.5 + 4.5

COMMON MISCONCEPTIONS:
- Placing decimal point incorrectly
- Thinking multiplication always makes numbers larger
- Not using zero placeholders when needed
- Forgetting to estimate for reasonableness

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Each book costs $12.75. You buy 4 books. What''s the total cost?"

2. DIRECT INSTRUCTION (12 minutes):
   Model: 3 × 2.4 = ?
   Method 1: Repeated addition 2.4 + 2.4 + 2.4 = 7.2
   Method 2: Multiply 3 × 24 = 72, one decimal place → 7.2
   Model larger problem: 6 × 15.38
   Multiply 6 × 1538 = 9228
   Two decimal places in 15.38, so answer: 92.28
   Estimate: 6 × 15 = 90, so 92.28 is reasonable ✓

3. GUIDED PRACTICE (12 minutes):
   Practice: 5 × 3.6, 8 × 12.45, 7 × 0.89
   Estimate before calculating
   Use models or grids to visualize some problems
   Check: does answer make sense?

4. INDEPENDENT PRACTICE (15 minutes):
   Solve varied multiplication problems.
   Word problems: costs, measurements, rates.
   Multi-step problems combining operations.

DIFFERENTIATION:
For Struggling Learners:
- Use area models to visualize multiplication
- Start with single-digit whole numbers
- Provide decimal place counting guides
- Connect to money (familiar context)

For Advanced Learners:
- Multiply by two-digit numbers
- Solve missing factor problems
- Create word problems with multiple steps
- Investigate patterns in decimal products

ASSESSMENT INDICATORS:
- Multiplies accurately
- Places decimal point correctly
- Estimates to check reasonableness
- Applies to word problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Decimals by Whole Numbers' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Multiplying Decimals by Decimals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Decimals by Decimals' AND grade_level_min = 5),
  'Multiplying Decimals by Decimals Guide', 'Multiply two decimal numbers',
  'MULTIPLYING DECIMALS BY DECIMALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multiplying decimals by whole numbers
- Multi-digit multiplication
- Understanding decimal place value
- Estimation skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply two decimal numbers accurately
2. Determine decimal placement in products
3. Understand that multiplying decimals can result in smaller products
4. Apply to area and scaling problems

KEY CONCEPTS:
- Multiply ignoring decimal points initially
- Count total decimal places in both factors
- Place that many decimal places in product
- Product may be smaller than either factor (0.5 × 0.4 = 0.2)
- Estimation is crucial for decimal placement verification

COMMON MISCONCEPTIONS:
- Believing multiplication always makes numbers larger
- Counting decimal places incorrectly
- Misplacing decimal point in product
- Not using estimation to verify

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "A rectangle is 2.5 meters by 1.4 meters. What''s the area? Will it be larger or smaller than 2.5?"

2. DIRECT INSTRUCTION (15 minutes):
   Model: 2.3 × 1.5 = ?
   Estimate: 2 × 2 = 4 (rough estimate)
   Multiply: 23 × 15 = 345
   Count decimal places: one in 2.3, one in 1.5 = two total
   Place decimal: 3.45
   Verify: is 3.45 close to estimate of 4? Yes ✓
   Model problem where product is less than factors: 0.6 × 0.3 = 0.18

3. GUIDED PRACTICE (12 minutes):
   Solve: 3.2 × 1.5, 0.7 × 0.8, 4.25 × 2.1
   Estimate first, calculate, compare
   Use area models for some problems
   Discuss when product is smaller vs larger

4. INDEPENDENT PRACTICE (15 minutes):
   Varied decimal multiplication problems.
   Area problems with decimal dimensions.
   Real-world applications: scaling, pricing.

DIFFERENTIATION:
For Struggling Learners:
- Provide decimal place counting guides
- Use grid models to visualize products
- Start with tenths only
- Practice estimation separately

For Advanced Learners:
- Multiply three decimal factors
- Investigate patterns (what happens when multiplying by 0.1, 0.01)
- Solve complex area and volume problems
- Connect to scientific notation

ASSESSMENT INDICATORS:
- Correctly multiplies decimal factors
- Places decimal point accurately
- Estimates to verify reasonableness
- Understands products can be smaller than factors', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Decimals by Decimals' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Estimating Products with Decimals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Estimating Products with Decimals' AND grade_level_min = 5),
  'Estimating Products with Decimals Guide', 'Estimate products involving decimals',
  'ESTIMATING PRODUCTS WITH DECIMALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Rounding decimals
- Multiplying whole numbers mentally
- Understanding multiplication with decimals
- Basic estimation strategies

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Estimate products of decimal numbers
2. Use compatible numbers for easier mental multiplication
3. Determine reasonableness of calculated products
4. Apply estimation to real-world contexts

KEY CONCEPTS:
- Round factors to compatible numbers
- Use benchmark decimals (0.5, 0.25, 0.75)
- Front-end estimation with multiplication
- Estimation helps verify decimal placement
- Sometimes overestimate, sometimes underestimate

COMMON MISCONCEPTIONS:
- Always rounding to nearest whole number
- Not considering context for rounding choice
- Expecting estimate to match exact answer
- Forgetting estimation purpose is quick checking

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Estimate quickly: 4.8 × 7.2. About how much? You have 10 seconds!"

2. DIRECT INSTRUCTION (10 minutes):
   Model estimation strategies:
   Strategy 1 - Round to nearest whole: 4.8 × 7.2 ≈ 5 × 7 = 35
   Strategy 2 - Compatible numbers: 4.8 × 7.2 ≈ 5 × 7 = 35
   Strategy 3 - One factor exact: 4.8 × 7.2 ≈ 5 × 7.2 = 36
   Show: exact answer is 34.56, all estimates reasonable
   Demonstrate using estimation to check decimal placement

3. GUIDED PRACTICE (12 minutes):
   Estimate products: 8.9 × 3.2, 12.4 × 5.7, 0.89 × 6.1
   Try different strategies, compare
   Calculate exact answers, verify estimates were reasonable
   Identify incorrect decimal placements using estimation

4. INDEPENDENT PRACTICE (12 minutes):
   Estimate various products.
   Use estimation to identify correct products from choices.
   Apply to shopping and measurement scenarios.

DIFFERENTIATION:
For Struggling Learners:
- Provide rounding guides
- Practice with benchmark decimals (0.5, 1.5, 2.5)
- Use number lines for rounding visualization
- Start with one decimal factor

For Advanced Learners:
- Estimate products of three factors
- Determine upper and lower bounds
- Use estimation to solve problems mentally
- Analyze estimation error and its impact

ASSESSMENT INDICATORS:
- Estimates products using appropriate strategies
- Rounds factors to compatible numbers
- Uses estimation to verify exact calculations
- Explains reasoning for estimation choices', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Estimating Products with Decimals' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Dividing Decimals by Whole Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Decimals by Whole Numbers' AND grade_level_min = 5),
  'Dividing Decimals by Whole Numbers Guide', 'Divide decimal by whole number',
  'DIVIDING DECIMALS BY WHOLE NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Long division with whole numbers
- Decimal place value understanding
- Estimation skills
- Multiplication-division relationship

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide decimals by whole numbers using long division
2. Place decimal point correctly in quotient
3. Add zeros to continue division when needed
4. Apply to fair sharing and partitioning problems

KEY CONCEPTS:
- Decimal point in quotient aligns with dividend
- Divide as with whole numbers, bring decimal point straight up
- Add zeros to dividend to continue dividing if needed
- Estimation helps verify quotient
- Connect to equal groups and partitioning

COMMON MISCONCEPTIONS:
- Misplacing decimal point in quotient
- Not knowing when to add zeros
- Confusing dividend and divisor decimal placement
- Stopping division too early

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Share $12.60 equally among 3 friends. How much does each get?"

2. DIRECT INSTRUCTION (15 minutes):
   Model: 15.6 ÷ 4 = ?
   Set up long division
   Place decimal point in quotient directly above dividend decimal
   Divide: 15 ÷ 4 = 3 remainder 3
   Bring down 6: 36 ÷ 4 = 9
   Answer: 3.9
   Model problem needing additional zeros: 4.5 ÷ 6
   Add zeros: 4.50 ÷ 6 = 0.75

3. GUIDED PRACTICE (12 minutes):
   Solve: 28.8 ÷ 4, 15.75 ÷ 5, 8.4 ÷ 7
   Practice adding zeros when needed
   Estimate to verify: 28.8 ÷ 4 ≈ 28 ÷ 4 = 7 ✓
   Use multiplication to check: 4 × 7.2 = 28.8 ✓

4. INDEPENDENT PRACTICE (15 minutes):
   Various division problems with decimals.
   Word problems: sharing costs, finding unit rates.
   Problems requiring different numbers of decimal places.

DIFFERENTIATION:
For Struggling Learners:
- Provide division templates with decimal point marked
- Use money context (dividing dollars and cents)
- Practice decimal placement separately
- Start with dividends having one decimal place

For Advanced Learners:
- Divide with remainders, express as decimals
- Find unit rates from complex situations
- Solve missing dividend or divisor problems
- Investigate repeating decimals

ASSESSMENT INDICATORS:
- Places decimal point correctly in quotient
- Divides accurately using long division
- Adds zeros appropriately to continue division
- Applies to word problems involving partitioning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Decimals by Whole Numbers' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Dividing Whole Numbers by Decimals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Whole Numbers by Decimals' AND grade_level_min = 5),
  'Dividing Whole Numbers by Decimals Guide', 'Divide whole number by decimal',
  'DIVIDING WHOLE NUMBERS BY DECIMALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Dividing decimals by whole numbers
- Multiplying by powers of 10
- Understanding equivalent division expressions
- Estimation skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide whole numbers by decimals
2. Convert divisor to whole number by multiplying both numbers
3. Understand equivalence in division
4. Apply to measurement and rate problems

KEY CONCEPTS:
- Cannot divide by decimal directly in standard algorithm
- Multiply both dividend and divisor by power of 10
- Creates equivalent division problem with whole divisor
- Decimal point moves same number of places in both numbers
- Example: 12 ÷ 0.3 = 120 ÷ 3 = 40

COMMON MISCONCEPTIONS:
- Only moving decimal in divisor
- Forgetting to move decimal in dividend too
- Confusion about which direction to move decimal
- Not understanding why this process works

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "You have 12 feet of ribbon. Each piece needs to be 0.5 feet. How many pieces?"

2. DIRECT INSTRUCTION (15 minutes):
   Model: 8 ÷ 0.4 = ?
   Cannot divide by 0.4 easily
   Multiply both by 10: (8 × 10) ÷ (0.4 × 10) = 80 ÷ 4
   Solve: 80 ÷ 4 = 20
   Explain why this works: equivalent fractions
   8/0.4 = 80/4 (same ratio)
   Model with two decimal places: 15 ÷ 0.25 → multiply by 100

3. GUIDED PRACTICE (12 minutes):
   Practice: 20 ÷ 0.5, 18 ÷ 0.6, 24 ÷ 0.08
   Identify power of 10 needed (10, 100, etc)
   Convert to whole number division
   Solve and check with multiplication

4. INDEPENDENT PRACTICE (15 minutes):
   Solve division problems with decimal divisors.
   Word problems: measurement, unit pricing.
   Compare efficiency of this method vs. repeated subtraction.

DIFFERENTIATION:
For Struggling Learners:
- Provide conversion reference charts
- Practice multiplying by powers of 10 separately
- Use visual models showing equivalence
- Start with divisors that are tenths

For Advanced Learners:
- Divide decimals by decimals (next topic preview)
- Solve complex word problems
- Investigate why equivalence works mathematically
- Create problems requiring this skill

ASSESSMENT INDICATORS:
- Correctly converts divisor to whole number
- Adjusts dividend appropriately
- Solves resulting division problem
- Explains equivalence reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Whole Numbers by Decimals' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Dividing Decimals by Decimals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Decimals by Decimals' AND grade_level_min = 5),
  'Dividing Decimals by Decimals Guide', 'Divide two decimal numbers',
  'DIVIDING DECIMALS BY DECIMALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Dividing whole numbers by decimals
- Dividing decimals by whole numbers
- Multiplying by powers of 10
- Place value understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide decimal by decimal using conversion method
2. Determine appropriate power of 10 for conversion
3. Place decimal point correctly in quotient
4. Apply to complex real-world problems

KEY CONCEPTS:
- Convert divisor to whole number first
- Multiply both dividend and divisor by same power of 10
- Solve resulting simpler division problem
- Quotient remains same due to equivalent division
- Estimation verifies quotient reasonableness

COMMON MISCONCEPTIONS:
- Moving decimal points different amounts
- Losing track of decimal placement
- Not converting divisor completely to whole number
- Forgetting to estimate first

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "A bottle holds 3.6 liters. Each serving is 0.45 liters. How many servings?"

2. DIRECT INSTRUCTION (15 minutes):
   Model: 4.8 ÷ 1.2 = ?
   Estimate: 5 ÷ 1 = 5 (rough)
   Convert: multiply both by 10 → 48 ÷ 12
   Solve: 48 ÷ 12 = 4
   Verify: 1.2 × 4 = 4.8 ✓
   Model more complex: 5.67 ÷ 0.63
   Need to multiply by 100 → 567 ÷ 63 = 9

3. GUIDED PRACTICE (12 minutes):
   Practice: 7.2 ÷ 1.8, 6.75 ÷ 2.25, 8.4 ÷ 0.7
   Identify power of 10 needed
   Convert and solve
   Check answers with multiplication

4. INDEPENDENT PRACTICE (15 minutes):
   Solve varied decimal division problems.
   Multi-step word problems.
   Compare different division types (whole/decimal, decimal/whole, decimal/decimal).

DIFFERENTIATION:
For Struggling Learners:
- Provide step-by-step conversion guides
- Use arrows showing decimal movement
- Practice simpler problems (tenths only)
- Connect to fraction division

For Advanced Learners:
- Investigate division patterns
- Solve problems with quotients as decimals
- Apply to complex unit conversions
- Explore repeating decimal quotients

ASSESSMENT INDICATORS:
- Correctly converts both numbers by same power of 10
- Solves resulting division accurately
- Places decimal point appropriately
- Applies to complex word problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Decimals by Decimals' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Decimal Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Decimal Word Problems' AND grade_level_min = 5),
  'Decimal Word Problems Topic Guide', 'Solve multi-step decimal problems',
  'DECIMAL WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- All four operations with decimals
- Problem-solving strategies
- Estimation skills
- Understanding of various problem contexts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Solve multi-step problems involving decimal operations
2. Identify appropriate operations from problem context
3. Estimate to verify answer reasonableness
4. Communicate solution strategies clearly

KEY CONCEPTS:
- Read problem carefully, identify what''s asked
- Determine which operations are needed
- Some problems require multiple steps
- Estimation helps catch errors
- Show work systematically

COMMON MISCONCEPTIONS:
- Performing operations in wrong order
- Misidentifying operation from keywords
- Not reading entire problem before starting
- Failing to check if answer makes sense

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Planning a party: Pizza costs $12.75 each, you need 4. Drinks are $8.50 for 6. What''s the total cost?"

2. DIRECT INSTRUCTION (12 minutes):
   Teach problem-solving process:
   1. Read and understand (what do we know? what''s asked?)
   2. Plan (which operations? in what order?)
   3. Solve (show work step-by-step)
   4. Check (does answer make sense?)
   Model multi-step problem:
   "You buy 3 books at $15.99 each. You pay with four $20 bills. What''s your change?"
   Step 1: 3 × $15.99 = $47.97
   Step 2: 4 × $20 = $80
   Step 3: $80 - $47.97 = $32.03

3. GUIDED PRACTICE (15 minutes):
   Students solve problems with guidance:
   - Money problems (shopping, change)
   - Measurement problems (distance, weight)
   - Rate problems (speed, unit pricing)
   Emphasize estimation before calculating

4. INDEPENDENT PRACTICE (15 minutes):
   Varied word problems requiring decimal operations.
   Some one-step, some multi-step.
   Students create their own problems.

DIFFERENTIATION:
For Struggling Learners:
- Provide problem-solving graphic organizers
- Start with one-step problems
- Use familiar contexts (money, food)
- Allow drawing or modeling

For Advanced Learners:
- Complex multi-step problems
- Problems with extra or missing information
- Create problems for peers to solve
- Real-world project-based problems

ASSESSMENT INDICATORS:
- Identifies appropriate operations
- Solves multi-step problems accurately
- Uses estimation to verify
- Explains solution process clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Decimal Word Problems' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Money Problems with Operations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Money Problems with Operations' AND grade_level_min = 5),
  'Money Problems with Operations Guide', 'Apply decimal operations to money',
  'MONEY PROBLEMS WITH OPERATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- All four operations with decimals
- Understanding money notation
- Making change
- Basic financial literacy concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Add and subtract money amounts in problem contexts
2. Multiply to find costs of multiple items
3. Divide to find unit prices or share costs
4. Solve multi-step money problems

KEY CONCEPTS:
- Money notation: dollar sign, decimal point, two decimal places
- Total cost = price × quantity
- Unit price = total cost ÷ quantity
- Change = amount paid - cost
- Sales tax, discounts, tips involve percents (preview)

COMMON MISCONCEPTIONS:
- Not writing money with two decimal places ($5 vs $5.00)
- Confusing when to multiply vs divide
- Forgetting to include all costs
- Not checking if answer is reasonable for context

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "You have $50. Can you buy 3 games at $15.99 each plus a controller for $12.45?"

2. DIRECT INSTRUCTION (12 minutes):
   Model various money problem types:
   Type 1 - Total cost: 4 × $3.75 = $15.00
   Type 2 - Making change: $20 - $15.00 = $5.00
   Type 3 - Unit price: $12.00 ÷ 4 = $3.00 each
   Type 4 - Multi-step: "3 shirts at $12.50 each, 2 pairs of pants at $18.75 each"
   Calculate: (3 × $12.50) + (2 × $18.75) = $37.50 + $37.50 = $75.00

3. GUIDED PRACTICE (12 minutes):
   Shopping scenarios with various operations
   Calculate totals, make change, find unit prices
   Compare prices to determine better deals
   Work with realistic amounts and contexts

4. INDEPENDENT PRACTICE (15 minutes):
   Solve varied money problems.
   Create budget for event or purchase.
   Comparison shopping activities.

DIFFERENTIATION:
For Struggling Learners:
- Use play money for concrete modeling
- Provide price lists and scenario cards
- Start with single-operation problems
- Use calculators for verification

For Advanced Learners:
- Include sales tax and tip calculations
- Budget planning with constraints
- Analyze value and cost-effectiveness
- Create business scenarios (profit/loss)

ASSESSMENT INDICATORS:
- Accurately performs operations with money amounts
- Formats monetary answers correctly
- Solves multi-step money problems
- Applies mathematical reasoning to financial decisions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Money Problems with Operations' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- FRACTION OPERATIONS (14 topics)
-- ============================================================================

-- Adding Unlike Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Unlike Fractions' AND grade_level_min = 5),
  'Adding Unlike Fractions Topic Guide', 'Add fractions with different denominators',
  'ADDING UNLIKE FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Finding equivalent fractions
- Finding least common multiple (LCM)
- Adding fractions with like denominators
- Simplifying fractions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find common denominators for unlike fractions
2. Add fractions with different denominators
3. Simplify sums when possible
4. Apply addition to real-world fraction situations

KEY CONCEPTS:
- Must have same denominator to add fractions
- Find least common denominator (LCD)
- Convert to equivalent fractions with LCD
- Add numerators, keep common denominator
- Simplify answer if needed

COMMON MISCONCEPTIONS:
- Adding numerators AND denominators (1/2 + 1/3 ≠ 2/5)
- Not finding common denominator
- Forgetting to convert both fractions
- Not simplifying final answers

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "You ate 1/2 of a pizza and your friend ate 1/3. What fraction total did you eat?"

2. DIRECT INSTRUCTION (15 minutes):
   Model: 1/2 + 1/3 = ?
   Can''t add with different denominators
   Find LCD: multiples of 2 {2,4,6,8...} multiples of 3 {3,6,9...} LCD=6
   Convert: 1/2 = 3/6, 1/3 = 2/6
   Add: 3/6 + 2/6 = 5/6
   Use visual models (fraction bars or circles) to verify
   Model another: 2/5 + 1/4 → LCD=20 → 8/20 + 5/20 = 13/20

3. GUIDED PRACTICE (15 minutes):
   Practice: 1/4 + 1/6, 2/3 + 1/5, 3/8 + 1/4
   Find LCD for each pair
   Convert and add
   Check with visual models or benchmarks

4. INDEPENDENT PRACTICE (15 minutes):
   Add various unlike fraction pairs.
   Word problems with fraction addition.
   Some problems requiring simplification.

DIFFERENTIATION:
For Struggling Learners:
- Provide LCD reference charts
- Use fraction manipulatives
- Start with related denominators (2 and 4, 3 and 6)
- Practice finding LCD separately first

For Advanced Learners:
- Add three unlike fractions
- Find multiple solution paths
- Create word problems
- Investigate patterns in LCDs

ASSESSMENT INDICATORS:
- Finds common denominators correctly
- Converts fractions accurately
- Adds numerators keeping denominator
- Simplifies sums when appropriate', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Unlike Fractions' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Subtracting Unlike Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Unlike Fractions' AND grade_level_min = 5),
  'Subtracting Unlike Fractions Guide', 'Subtract fractions with different denominators',
  'SUBTRACTING UNLIKE FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Subtracting like fractions
- Finding common denominators
- Equivalent fractions
- Adding unlike fractions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Subtract fractions with different denominators
2. Find least common denominators
3. Convert and subtract efficiently
4. Apply subtraction to real-world contexts

KEY CONCEPTS:
- Same process as adding: find common denominator
- Convert both fractions to equivalent fractions with LCD
- Subtract numerators, keep denominator
- Simplify if possible
- Check reasonableness with benchmarks

COMMON MISCONCEPTIONS:
- Subtracting denominators as well as numerators
- Not converting both fractions
- Subtracting in wrong order (smaller - larger)
- Forgetting to simplify

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "You had 3/4 cup of sugar, used 1/3 cup. How much is left?"

2. DIRECT INSTRUCTION (15 minutes):
   Model: 3/4 - 1/3 = ?
   Find LCD: multiples of 4 {4,8,12...} multiples of 3 {3,6,9,12...} LCD=12
   Convert: 3/4 = 9/12, 1/3 = 4/12
   Subtract: 9/12 - 4/12 = 5/12
   Use visual models to show the difference
   Model: 5/6 - 1/4 → LCD=12 → 10/12 - 3/12 = 7/12

3. GUIDED PRACTICE (12 minutes):
   Practice: 2/3 - 1/2, 7/8 - 1/4, 4/5 - 2/3
   Find LCD systematically
   Convert both fractions
   Subtract and simplify

4. INDEPENDENT PRACTICE (15 minutes):
   Subtract various unlike fraction pairs.
   Word problems with subtraction contexts.
   Mixed addition and subtraction problems.

DIFFERENTIATION:
For Struggling Learners:
- Visual fraction models for each problem
- Provide LCD finder charts
- Start with simple denominators
- Check work by adding answer to subtrahend

For Advanced Learners:
- Multi-step problems with addition and subtraction
- Problems with three fractions
- Create real-world scenarios
- Investigate efficient LCD finding strategies

ASSESSMENT INDICATORS:
- Finds common denominators correctly
- Subtracts accurately after conversion
- Simplifies answers appropriately
- Applies to word problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Unlike Fractions' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Adding Mixed Numbers Unlike Denominators
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Mixed Numbers Unlike Denominators' AND grade_level_min = 5),
  'Adding Mixed Numbers Unlike Denominators Guide', 'Add mixed numbers with unlike denominators',
  'ADDING MIXED NUMBERS UNLIKE DENOMINATORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Adding unlike fractions
- Understanding mixed numbers
- Finding common denominators
- Converting improper fractions to mixed numbers

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Add mixed numbers with different denominators
2. Find common denominators for fraction parts
3. Regroup when sum of fractions exceeds 1
4. Apply to measurement and real-world problems

KEY CONCEPTS:
- Can add whole number parts separately from fractions
- Find LCD for fraction parts
- Convert fractions, then add
- If fraction sum > 1, regroup to whole number
- Simplify final answer

COMMON MISCONCEPTIONS:
- Not finding common denominator for fractions
- Forgetting to regroup when fraction sum exceeds 1
- Adding denominators
- Errors in converting improper fractions

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Recipe needs 2 1/2 cups flour and 1 1/3 cups sugar. How much total?"

2. DIRECT INSTRUCTION (15 minutes):
   Model: 2 1/2 + 1 1/3 = ?
   Method 1: Add whole numbers and fractions separately
   Wholes: 2 + 1 = 3
   Fractions: 1/2 + 1/3 → LCD=6 → 3/6 + 2/6 = 5/6
   Answer: 3 5/6
   Model with regrouping: 3 2/3 + 2 3/4
   Wholes: 3 + 2 = 5
   Fractions: 2/3 + 3/4 → 8/12 + 9/12 = 17/12 = 1 5/12
   Regroup: 5 + 1 5/12 = 6 5/12

3. GUIDED PRACTICE (15 minutes):
   Practice: 1 1/4 + 2 1/3, 3 2/5 + 1 1/2, 2 3/4 + 3 2/3
   Some requiring regrouping, some not
   Use visual models when helpful
   Estimate to check (3 + 2 = 5, so answer should be near 5)

4. INDEPENDENT PRACTICE (15 minutes):
   Add varied mixed numbers with unlike denominators.
   Word problems with measurements, time, distances.
   Create visual representations of problems.

DIFFERENTIATION:
For Struggling Learners:
- Separate whole number and fraction addition
- Provide LCD finder tools
- Practice regrouping separately
- Use measuring cups or rulers for concrete models

For Advanced Learners:
- Add three or more mixed numbers
- Solve missing addend problems
- Create complex word problems
- Investigate patterns in mixed number addition

ASSESSMENT INDICATORS:
- Finds common denominators for mixed number fractions
- Adds accurately with regrouping when needed
- Simplifies answers correctly
- Applies to word problems with measurements', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Mixed Numbers Unlike Denominators' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Subtracting Mixed Numbers Unlike Denominators
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Mixed Numbers Unlike Denominators' AND grade_level_min = 5),
  'Subtracting Mixed Numbers Unlike Denominators Guide', 'Subtract mixed numbers with unlike denominators',
  'SUBTRACTING MIXED NUMBERS UNLIKE DENOMINATORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Subtracting unlike fractions
- Understanding mixed numbers
- Adding mixed numbers unlike denominators
- Regrouping concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Subtract mixed numbers with different denominators
2. Find common denominators for fraction parts
3. Regroup from whole to fraction when necessary
4. Apply subtraction to real-world problems

KEY CONCEPTS:
- Find LCD for fraction parts
- Convert to equivalent fractions
- May need to borrow from whole number
- Subtract fractions, then whole numbers
- Simplify final answer

COMMON MISCONCEPTIONS:
- Subtracting smaller fraction from larger regardless of position
- Not borrowing when needed
- Errors in finding common denominator
- Forgetting to simplify

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "You have 5 1/2 yards of fabric, use 2 1/3 yards. How much remains?"

2. DIRECT INSTRUCTION (18 minutes):
   Model without borrowing: 4 2/3 - 1 1/4
   Find LCD=12: 4 8/12 - 1 3/12
   Subtract fractions: 8/12 - 3/12 = 5/12
   Subtract wholes: 4 - 1 = 3
   Answer: 3 5/12

   Model with borrowing: 5 1/3 - 2 2/3
   Find LCD=3: 5 1/3 - 2 2/3
   Can''t subtract 2/3 from 1/3, need to borrow
   Regroup: 5 1/3 = 4 + 1 + 1/3 = 4 + 3/3 + 1/3 = 4 4/3
   Subtract: 4 4/3 - 2 2/3 = 2 2/3

3. GUIDED PRACTICE (15 minutes):
   Practice both types: with and without borrowing
   3 3/4 - 1 1/2 (no borrowing needed)
   4 1/3 - 2 2/5 (borrowing needed)
   Use visual models to understand borrowing

4. INDEPENDENT PRACTICE (12 minutes):
   Varied subtraction problems.
   Measurement word problems.
   Some requiring borrowing, some not.

DIFFERENTIATION:
For Struggling Learners:
- Provide borrowing step-by-step guides
- Use fraction manipulatives
- Practice borrowing separately
- Color-code whole and fraction parts

For Advanced Learners:
- Complex multi-step problems
- Missing minuend or subtrahend problems
- Create word problems
- Investigate multiple solution methods

ASSESSMENT INDICATORS:
- Finds common denominators correctly
- Borrows from whole number when needed
- Subtracts accurately
- Applies to measurement contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Mixed Numbers Unlike Denominators' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Regrouping with Mixed Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Regrouping with Mixed Numbers' AND grade_level_min = 5),
  'Regrouping with Mixed Numbers Guide', 'Subtract when regrouping is needed',
  'REGROUPING WITH MIXED NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding mixed and improper fractions
- Subtracting mixed numbers with like denominators
- Converting between mixed and improper fractions
- Finding common denominators

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Regroup whole numbers to fractions for subtraction
2. Convert between mixed and improper fractions flexibly
3. Subtract mixed numbers requiring regrouping
4. Understand regrouping conceptually

KEY CONCEPTS:
- 1 whole = any fraction with same numerator and denominator
- Borrowing converts 1 whole to equivalent fraction
- Regrouping allows subtraction when fraction part is too small
- Can regroup multiple wholes if needed
- Process similar to borrowing in whole number subtraction

COMMON MISCONCEPTIONS:
- Not knowing what value to borrow (forgetting it depends on denominator)
- Incorrect improper fraction conversion
- Borrowing when not necessary
- Losing track during multi-step regrouping

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "At 7 o''clock, a candle was 8 inches tall. By 9:30, it was 5 3/4 inches. How much melted?"

2. DIRECT INSTRUCTION (18 minutes):
   Review: 1 = 2/2 = 3/3 = 4/4 = 5/5, etc.
   Model regrouping process: 5 1/4 - 2 3/4
   Need to subtract 3/4 from 1/4 - can''t do it!
   Borrow 1 from 5: 5 = 4 + 1
   Convert 1 to 4/4: 4 + 1 = 4 + 4/4
   Add: 4 + 4/4 + 1/4 = 4 5/4
   Now subtract: 4 5/4 - 2 3/4 = 2 2/4 = 2 1/2
   Use visual model (fraction bars) to show regrouping

3. GUIDED PRACTICE (15 minutes):
   Solve: 6 1/3 - 4 2/3, 8 1/5 - 3 4/5, 7 - 2 3/8
   Practice identifying when regrouping is needed
   Work through regrouping step-by-step
   Use manipulatives to verify

4. INDEPENDENT PRACTICE (12 minutes):
   Mixed problems: some needing regrouping, some not
   Word problems requiring regrouping
   Self-check by estimating answers first

DIFFERENTIATION:
For Struggling Learners:
- Provide regrouping templates with steps
- Use physical models (fraction circles)
- Practice "what is 1?" for various denominators
- Work with same denominators first

For Advanced Learners:
- Multiple regrouping situations
- Unlike denominators requiring regrouping
- Solve working backwards
- Create challenging problems for peers

ASSESSMENT INDICATORS:
- Identifies when regrouping is necessary
- Correctly converts 1 whole to fractional equivalent
- Accurately completes subtraction after regrouping
- Explains regrouping process', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Regrouping with Mixed Numbers' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Multiplying Fractions by Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Fractions by Fractions' AND grade_level_min = 5),
  'Multiplying Fractions by Fractions Guide', 'Multiply two fractions',
  'MULTIPLYING FRACTIONS BY FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding fractions as parts of a whole
- Multiplication concept
- Simplifying fractions
- Area model understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply fractions using the algorithm (numerator × numerator, denominator × denominator)
2. Understand multiplication as "finding a fraction of a fraction"
3. Simplify products to lowest terms
4. Apply to real-world situations

KEY CONCEPTS:
- Multiply numerators together
- Multiply denominators together
- Can simplify before or after multiplying
- Product is often smaller than both factors
- "Of" often means multiply in word problems

COMMON MISCONCEPTIONS:
- Thinking multiplication always makes numbers larger
- Adding instead of multiplying numerators/denominators
- Not simplifying answers
- Confusing fraction multiplication with addition rules

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Half of a half-pizza is what fraction? Let''s model it!"

2. DIRECT INSTRUCTION (15 minutes):
   Model with visual: 1/2 × 1/3 = ?
   Draw rectangle, shade 1/2 vertically, then shade 1/3 horizontally
   Overlapping section is 1/6
   Show algorithm: 1/2 × 1/3 = (1×1)/(2×3) = 1/6 ✓
   Model: 2/3 × 3/4 = 6/12 = 1/2
   Discuss simplifying: can cancel before multiplying (2/3 × 3/4 = 2×3/3×4 = 2/4 = 1/2)

3. GUIDED PRACTICE (12 minutes):
   Practice: 1/4 × 1/2, 2/5 × 3/4, 3/5 × 5/6
   Use area models for some
   Practice simplifying before and after
   Interpret "1/2 of 3/4" as 1/2 × 3/4

4. INDEPENDENT PRACTICE (15 minutes):
   Multiply various fraction pairs.
   Word problems using "of" language.
   Compare products to factors (usually smaller).

DIFFERENTIATION:
For Struggling Learners:
- Consistent use of area models
- Start with unit fractions (numerator 1)
- Practice simplifying separately
- Visual representations for each problem

For Advanced Learners:
- Multiply three fractions
- Investigate patterns (multiplying by 1/2, 1/3, etc.)
- Create word problems
- Connect to scaling and proportions

ASSESSMENT INDICATORS:
- Correctly multiplies numerators and denominators
- Simplifies products appropriately
- Uses visual models to verify
- Interprets "of" as multiplication', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Fractions by Fractions' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Multiplying Fractions by Whole Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Fractions by Whole Numbers' AND grade_level_min = 5),
  'Multiplying Fractions by Whole Numbers Guide', 'Multiply fraction by whole number',
  'MULTIPLYING FRACTIONS BY WHOLE NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding fractions
- Multiplication concept
- Repeated addition
- Simplifying fractions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply fractions by whole numbers
2. Use repeated addition to understand process
3. Write whole numbers as fractions for multiplication
4. Convert improper fractions to mixed numbers

KEY CONCEPTS:
- Whole number can be written as fraction (5 = 5/1)
- Multiply: n × a/b = (n × a)/b
- Can think of as repeated addition: 3 × 2/5 = 2/5 + 2/5 + 2/5
- Product may be improper fraction needing conversion
- Simplify when possible

COMMON MISCONCEPTIONS:
- Multiplying both numerator and denominator by whole number
- Not converting improper fractions to mixed numbers
- Confusing with fraction division
- Difficulty knowing when to simplify

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Each lap is 2/3 mile. You run 5 laps. How far total?"

2. DIRECT INSTRUCTION (12 minutes):
   Model with repeated addition: 4 × 3/5
   Show: 3/5 + 3/5 + 3/5 + 3/5 = 12/5
   Convert: 12/5 = 2 2/5
   Show algorithmic method: 4 × 3/5 = (4×3)/5 = 12/5 = 2 2/5
   Model with whole as fraction: 6 × 2/3 = 6/1 × 2/3 = 12/3 = 4

3. GUIDED PRACTICE (12 minutes):
   Solve: 3 × 1/4, 5 × 2/3, 7 × 3/8
   Use both repeated addition and algorithm
   Practice converting improper to mixed
   Draw models for some problems

4. INDEPENDENT PRACTICE (15 minutes):
   Varied multiplication problems.
   Distance, measurement word problems.
   Compare different solution methods.

DIFFERENTIATION:
For Struggling Learners:
- Use visual models consistently
- Start with unit fractions
- Provide conversion charts
- Practice repeated addition method first

For Advanced Learners:
- Larger whole numbers
- Multi-step word problems
- Investigate commutative property (3 × 1/4 = 1/4 × 3)
- Connect to scaling

ASSESSMENT INDICATORS:
- Correctly multiplies whole number by fraction
- Converts improper fractions to mixed numbers
- Shows work using clear methods
- Applies to word problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Fractions by Whole Numbers' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Multiplying Mixed Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Mixed Numbers' AND grade_level_min = 5),
  'Multiplying Mixed Numbers Topic Guide', 'Multiply mixed numbers',
  'MULTIPLYING MIXED NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multiplying fractions by fractions
- Converting mixed to improper fractions
- Simplifying fractions
- Converting improper fractions to mixed numbers

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Convert mixed numbers to improper fractions for multiplication
2. Multiply mixed numbers accurately
3. Convert products back to mixed number form
4. Apply to area and scaling problems

KEY CONCEPTS:
- Convert mixed numbers to improper fractions first
- Multiply using fraction multiplication rules
- Simplify before or after multiplying
- Convert product to mixed number if improper
- Check reasonableness with estimation

COMMON MISCONCEPTIONS:
- Multiplying whole and fraction parts separately
- Errors in converting mixed to improper
- Not simplifying final answers
- Forgetting to convert back to mixed number

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "A rectangle is 2 1/2 feet by 1 1/3 feet. What''s the area?"

2. DIRECT INSTRUCTION (15 minutes):
   Model: 2 1/3 × 1 1/2 = ?
   Estimate: 2 × 2 = 4 (rough estimate)
   Convert to improper: 2 1/3 = 7/3, 1 1/2 = 3/2
   Multiply: 7/3 × 3/2 = 21/6
   Simplify: 21/6 = 7/2 = 3 1/2
   Check estimate: 3 1/2 is close to 4 ✓
   Show simplifying before multiplying: 7/3 × 3/2 (cancel the 3s) = 7/2

3. GUIDED PRACTICE (15 minutes):
   Solve: 1 1/4 × 2 2/3, 3 1/2 × 1 1/5, 2 1/3 × 2 1/4
   Practice converting to improper fractions
   Multiply and simplify
   Convert back to mixed numbers
   Use area models when helpful

4. INDEPENDENT PRACTICE (12 minutes):
   Multiply various mixed numbers.
   Area problems with mixed number dimensions.
   Recipe scaling problems.

DIFFERENTIATION:
For Struggling Learners:
- Provide conversion reference cards
- Work through steps systematically
- Use area models for visualization
- Practice conversion separately

For Advanced Learners:
- Multiply three mixed numbers
- Complex word problems
- Investigate estimation strategies
- Compare efficiency of different methods

ASSESSMENT INDICATORS:
- Converts mixed to improper fractions correctly
- Multiplies fractions accurately
- Simplifies and converts products appropriately
- Applies to area and scaling contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Mixed Numbers' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Area Model Multiplication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area Model Multiplication' AND grade_level_min = 5),
  'Area Model Multiplication Guide', 'Use area models for fraction multiplication',
  'AREA MODEL MULTIPLICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding area concept
- Fraction visualization
- Basic fraction multiplication
- Grid and coordinate concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use area models to multiply fractions
2. Visualize fraction multiplication as finding area
3. Connect visual models to algorithmic multiplication
4. Verify fraction products using models

KEY CONCEPTS:
- Draw rectangle, divide horizontally for one factor
- Divide vertically for other factor
- Shaded overlap is the product
- Area model shows why multiply numerators and denominators
- Visual verification of fraction multiplication

COMMON MISCONCEPTIONS:
- Difficulty relating model to algorithm
- Errors in partitioning rectangle correctly
- Confusion about which dimension is which
- Not understanding connection between visual and numerical

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Let''s see multiplication! Draw 1/2 × 1/3 on a rectangle."

2. DIRECT INSTRUCTION (15 minutes):
   Model: 2/3 × 3/4 = ?
   Draw rectangle
   Divide into thirds horizontally (show 2/3)
   Divide into fourths vertically (show 3/4)
   Count overlapping sections: 6 sections out of 12 total
   Result: 6/12 = 1/2
   Verify with algorithm: 2/3 × 3/4 = 6/12 = 1/2 ✓
   Explain: columns show first fraction, rows show second

3. GUIDED PRACTICE (12 minutes):
   Students draw area models:
   1/4 × 1/2, 2/5 × 3/4, 3/4 × 2/3
   Partition rectangles accurately
   Count and shade overlapping regions
   Write corresponding number sentence

4. INDEPENDENT PRACTICE (15 minutes):
   Create area models for given products.
   Match area models to multiplication expressions.
   Use models to verify algorithmic answers.

DIFFERENTIATION:
For Struggling Learners:
- Provide pre-divided grid paper
- Start with unit fraction products
- Use colored overlays for visualization
- Work with larger grids initially

For Advanced Learners:
- Model mixed number multiplication
- Create models for three-factor products
- Design problems that connect to area word problems
- Investigate patterns in area models

ASSESSMENT INDICATORS:
- Accurately creates area models for fraction products
- Correctly partitions rectangles
- Connects visual model to numerical answer
- Explains how model shows multiplication', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area Model Multiplication' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Dividing Fractions Conceptually
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Fractions Conceptually' AND grade_level_min = 5),
  'Dividing Fractions Conceptually Guide', 'Understand division of fractions',
  'DIVIDING FRACTIONS CONCEPTUALLY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding division as sharing or measuring
- Fraction multiplication
- Reciprocals concept
- Visual fraction models

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand division of fractions conceptually
2. Interpret "how many groups" questions with fractions
3. Connect visual models to division situations
4. Develop foundation for fraction division algorithm

KEY CONCEPTS:
- Division asks "how many groups of this size?"
- Can model with fraction bars or circles
- Measurement division: how many 1/2s in 3?
- Partition division: divide 3 by 1/2
- Division by fraction can result in larger quotient

COMMON MISCONCEPTIONS:
- Thinking division always makes numbers smaller
- Confusing division with multiplication
- Difficulty with "how many groups" interpretation
- Not understanding division by fractions > 1 vs < 1

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "You have 2 cups of juice. Each serving is 1/4 cup. How many servings?"

2. DIRECT INSTRUCTION (15 minutes):
   Model with visuals: 2 ÷ 1/4 = ?
   Draw 2 wholes, divide each into fourths
   Count: 8 fourths total
   So 2 ÷ 1/4 = 8
   Ask: "How many 1/4s fit into 2?" = 8
   Model: 1 ÷ 1/3 = ? (how many thirds in 1 whole?) = 3
   Discuss: dividing by fraction less than 1 makes quotient larger
   Preview: this connects to multiplying by reciprocal

3. GUIDED PRACTICE (15 minutes):
   Use models to solve:
   3 ÷ 1/2 (how many halves in 3?)
   4 ÷ 1/3 (how many thirds in 4?)
   1 ÷ 1/5 (how many fifths in 1?)
   Draw fraction bars to visualize
   Write word problems matching each

4. INDEPENDENT PRACTICE (12 minutes):
   Solve division problems using visual models.
   Create word problems for given divisions.
   Explain thinking using "how many groups" language.

DIFFERENTIATION:
For Struggling Learners:
- Use physical fraction manipulatives
- Focus on unit fractions as divisors
- Provide sentence frames: "How many ___s fit in ___?"
- Work with whole number dividends only

For Advanced Learners:
- Explore non-unit fraction divisors (divide by 2/3)
- Connect to real-world measurement scenarios
- Begin investigating reciprocal relationship
- Predict quotients before modeling

ASSESSMENT INDICATORS:
- Explains division with fractions conceptually
- Uses visual models accurately
- Interprets "how many groups" questions
- Recognizes division by fractions < 1 increases quotient', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Fractions Conceptually' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Dividing Fractions by Whole Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Fractions by Whole Numbers' AND grade_level_min = 5),
  'Dividing Fractions by Whole Numbers Guide', 'Divide a fraction by a whole number',
  'DIVIDING FRACTIONS BY WHOLE NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding fraction division conceptually
- Multiplying fractions
- Reciprocals
- Simplifying fractions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide fractions by whole numbers
2. Use visual models to understand the process
3. Apply "multiply by reciprocal" method
4. Solve word problems involving sharing fractions

KEY CONCEPTS:
- Dividing fraction into equal parts
- Can multiply by reciprocal: a/b ÷ n = a/b × 1/n
- Or keep numerator, multiply denominator by whole number
- Result is smaller than original fraction
- Models show fair sharing of fraction amount

COMMON MISCONCEPTIONS:
- Flipping the wrong fraction (the dividend instead of divisor)
- Not simplifying final answers
- Confusing which method to use
- Errors in reciprocal formation

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Share 1/2 pizza equally among 3 friends. How much does each get?"

2. DIRECT INSTRUCTION (15 minutes):
   Model: 1/2 ÷ 3 = ?
   Visual: Draw 1/2 circle, divide into 3 parts
   Each part is 1/6
   Show two methods:
   Method 1: 1/2 ÷ 3 = 1/(2×3) = 1/6
   Method 2: 1/2 × 1/3 = 1/6
   Model: 3/4 ÷ 2 = ?
   Method 1: 3/(4×2) = 3/8
   Method 2: 3/4 × 1/2 = 3/8

3. GUIDED PRACTICE (12 minutes):
   Solve: 2/3 ÷ 4, 3/5 ÷ 6, 5/8 ÷ 2
   Use visual models for some
   Practice both methods
   Simplify final answers

4. INDEPENDENT PRACTICE (15 minutes):
   Divide fractions by whole numbers.
   Fair sharing word problems.
   Compare quotients to dividends (always smaller).

DIFFERENTIATION:
For Struggling Learners:
- Consistent use of visual models
- Provide step-by-step method guides
- Practice with unit fractions first
- Use physical manipulatives

For Advanced Learners:
- Divide mixed numbers by whole numbers
- Investigate patterns in quotients
- Create complex word problems
- Prove why methods work

ASSESSMENT INDICATORS:
- Correctly divides fractions by whole numbers
- Uses appropriate method efficiently
- Simplifies quotients
- Applies to sharing word problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Fractions by Whole Numbers' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Dividing Whole Numbers by Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Whole Numbers by Fractions' AND grade_level_min = 5),
  'Dividing Whole Numbers by Fractions Guide', 'Divide a whole number by a fraction',
  'DIVIDING WHOLE NUMBERS BY FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Division with fractions conceptually
- Multiplying by reciprocals
- Multiplying whole numbers by fractions
- Understanding "how many groups"

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide whole numbers by fractions
2. Understand why quotient is larger than dividend
3. Use "multiply by reciprocal" method
4. Apply to measurement word problems

KEY CONCEPTS:
- Asking "how many groups of this fraction size?"
- Divide by multiplying by reciprocal: n ÷ a/b = n × b/a
- Quotient is larger when dividing by fraction < 1
- Visual models show "how many fit in?"
- Connect to real-world measurement situations

COMMON MISCONCEPTIONS:
- Expecting quotient to be smaller than dividend
- Flipping the whole number instead of fraction
- Not converting whole number to fraction form
- Confusion about when to use reciprocal

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "You have 4 yards of ribbon. Each bow needs 1/2 yard. How many bows?"

2. DIRECT INSTRUCTION (15 minutes):
   Model with visual: 3 ÷ 1/2 = ?
   Draw 3 wholes, divide each into halves
   Count: 6 halves total, answer = 6
   Show algorithm: 3 ÷ 1/2 = 3 × 2/1 = 6 ✓
   Explain: dividing by 1/2 is same as multiplying by 2
   Model: 5 ÷ 1/4 = 5 × 4/1 = 20
   Check with model: 5 wholes contain 20 fourths

3. GUIDED PRACTICE (12 minutes):
   Solve: 4 ÷ 1/3, 6 ÷ 1/2, 2 ÷ 1/5
   Use visual models to verify
   Practice reciprocal method
   Discuss why quotient > dividend

4. INDEPENDENT PRACTICE (15 minutes):
   Divide whole numbers by unit fractions.
   Measurement word problems (ribbon, fabric, food).
   Compare to multiplication problems.

DIFFERENTIATION:
For Struggling Learners:
- Visual models for every problem
- Focus on unit fractions (1/2, 1/3, 1/4)
- Provide reciprocal reference charts
- Use concrete materials (paper strips to cut)

For Advanced Learners:
- Divide by non-unit fractions (2/3, 3/4)
- Multi-step word problems
- Investigate patterns in quotients
- Create real-world scenarios

ASSESSMENT INDICATORS:
- Correctly divides whole by fraction
- Explains why quotient is larger
- Uses reciprocal method accurately
- Applies to measurement contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Whole Numbers by Fractions' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Dividing Fractions by Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Fractions by Fractions' AND grade_level_min = 5),
  'Dividing Fractions by Fractions Guide', 'Divide a fraction by a fraction',
  'DIVIDING FRACTIONS BY FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- All prior fraction division topics
- Multiplying fractions
- Understanding reciprocals
- Visual fraction models

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide fractions by fractions using "multiply by reciprocal"
2. Understand the process conceptually
3. Simplify quotients appropriately
4. Apply to complex word problems

KEY CONCEPTS:
- Divide by multiplying by reciprocal: a/b ÷ c/d = a/b × d/c
- Find reciprocal by flipping numerator and denominator
- Quotient can be greater or less than 1
- Process works for all fraction division
- Visual models help understanding

COMMON MISCONCEPTIONS:
- Flipping the wrong fraction
- Not simplifying before or after
- Confusion about reciprocals
- Difficulty predicting if quotient > or < 1

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "How many 1/4-cup servings are in 1/2 cup?"

2. DIRECT INSTRUCTION (18 minutes):
   Model conceptually: 1/2 ÷ 1/4 = ?
   Visual: How many 1/4s fit in 1/2? Answer: 2
   Algorithm: 1/2 ÷ 1/4 = 1/2 × 4/1 = 4/2 = 2 ✓
   Model: 2/3 ÷ 1/6 = ?
   Visual: How many 1/6s in 2/3? Answer: 4
   Algorithm: 2/3 ÷ 1/6 = 2/3 × 6/1 = 12/3 = 4 ✓
   Model with non-unit: 3/4 ÷ 2/3 = 3/4 × 3/2 = 9/8 = 1 1/8

3. GUIDED PRACTICE (15 minutes):
   Solve: 1/2 ÷ 1/3, 3/5 ÷ 1/2, 2/3 ÷ 3/4
   Find reciprocals correctly
   Multiply instead of divide
   Simplify quotients
   Verify some with visual models

4. INDEPENDENT PRACTICE (12 minutes):
   Divide various fraction pairs.
   Word problems with fraction division.
   Mixed problems (all operations with fractions).

DIFFERENTIATION:
For Struggling Learners:
- Reciprocal reference cards
- Step-by-step process charts
- Visual models for verification
- Practice finding reciprocals separately

For Advanced Learners:
- Divide mixed numbers by fractions
- Complex multi-step problems
- Prove why reciprocal method works
- Investigate patterns and relationships

ASSESSMENT INDICATORS:
- Correctly finds reciprocals
- Divides fractions accurately
- Simplifies quotients appropriately
- Solves word problems with fraction division', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Fractions by Fractions' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Fraction Word Problems All Operations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fraction Word Problems All Operations' AND grade_level_min = 5),
  'Fraction Word Problems All Operations Guide', 'Solve problems with fraction operations',
  'FRACTION WORD PROBLEMS ALL OPERATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- All four operations with fractions
- Problem-solving strategies
- Identifying operations from context
- Working with mixed numbers

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify which operation to use from problem context
2. Solve multi-step fraction word problems
3. Apply all fraction operations to real situations
4. Verify answers for reasonableness

KEY CONCEPTS:
- Different contexts signal different operations
- Addition: combining, total
- Subtraction: difference, remaining, how many more
- Multiplication: of, groups of, area
- Division: sharing, how many groups, partitioning
- Some problems require multiple operations

COMMON MISCONCEPTIONS:
- Relying only on keywords without understanding context
- Performing operations in wrong order
- Not checking if answer makes sense
- Difficulty with multi-step problems

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Recipe calls for 2 1/2 cups flour. You triple it, then use 3/4 cup elsewhere. How much flour total?"

2. DIRECT INSTRUCTION (15 minutes):
   Teach problem-solving framework:
   1. Read carefully - what''s the story?
   2. Identify knowns and unknowns
   3. Determine operations needed
   4. Estimate answer range
   5. Solve step-by-step
   6. Check reasonableness
   Model various problem types:
   - Addition: "Hiked 3 2/3 miles then 2 1/4 miles"
   - Subtraction: "Had 5 1/2 yards, used 3 3/4 yards"
   - Multiplication: "4 batches need 2/3 cup sugar each"
   - Division: "Share 3/4 pizza among 6 friends"

3. GUIDED PRACTICE (15 minutes):
   Students solve varied word problems:
   Mixed operation types
   Some one-step, some multi-step
   Discuss operation choices
   Verify with estimation

4. INDEPENDENT PRACTICE (12 minutes):
   Solve varied fraction word problems.
   Create own word problems for given operations.
   Multi-step real-world scenarios.

DIFFERENTIATION:
For Struggling Learners:
- Provide problem-solving graphic organizers
- Start with one-step problems
- Use familiar contexts
- Allow drawing models

For Advanced Learners:
- Complex multi-step problems
- Problems with extraneous information
- Open-ended problem creation
- Real-life project-based scenarios

ASSESSMENT INDICATORS:
- Identifies correct operations from context
- Solves multi-step problems accurately
- Explains reasoning clearly
- Verifies answers make sense', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fraction Word Problems All Operations' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPONENTS AND POWERS (9 topics)
-- ============================================================================

-- Understanding Exponents
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Exponents' AND grade_level_min = 5),
  'Understanding Exponents Topic Guide', 'Learn exponent notation and terminology',
  'UNDERSTANDING EXPONENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multiplication fluency
- Understanding of repeated addition as multiplication
- Pattern recognition
- Place value understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand exponent notation and terminology (base, exponent, power)
2. Read and write expressions with exponents
3. Recognize exponents as repeated multiplication
4. Distinguish between base and exponent

KEY CONCEPTS:
- Exponent shows how many times to multiply base by itself
- 2³ means 2 × 2 × 2 (not 2 × 3)
- Base is the number being multiplied
- Exponent (or power) is the small raised number
- Read as "2 to the third power" or "2 cubed"

COMMON MISCONCEPTIONS:
- Confusing 2³ with 2 × 3 = 6
- Not understanding difference between base and exponent
- Reading incorrectly (saying "3 times 2" instead of "2 to the 3rd")
- Thinking exponents mean addition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "What if we could write 2 × 2 × 2 × 2 × 2 in shorter form? Math has a shortcut!"

2. DIRECT INSTRUCTION (12 minutes):
   Show repeated multiplication: 3 × 3 × 3 × 3
   Introduce notation: 3⁴
   Define parts: 3 is base, 4 is exponent
   Read: "3 to the 4th power" or "3 to the power of 4"
   Show: 5² = 5 × 5 (5 squared)
        2³ = 2 × 2 × 2 (2 cubed)
        10⁴ = 10 × 10 × 10 × 10 (10 to the 4th)

3. GUIDED PRACTICE (12 minutes):
   Write repeated multiplication as exponents: 4 × 4 × 4 = 4³
   Write exponents as repeated multiplication: 6² = 6 × 6
   Identify base and exponent in expressions
   Practice reading exponent expressions aloud

4. INDEPENDENT PRACTICE (12 minutes):
   Convert between forms.
   Identify base and exponent in various expressions.
   Match exponent notation to expanded form.

DIFFERENTIATION:
For Struggling Learners:
- Use color coding (base in one color, exponent in another)
- Provide reference cards with vocabulary
- Practice with concrete examples (2² = 2 × 2 = 4)
- Start with exponents of 2 and 3 only

For Advanced Learners:
- Explore larger exponents
- Investigate exponent patterns
- Connect to area (squares) and volume (cubes)
- Begin comparing exponential growth to linear

ASSESSMENT INDICATORS:
- Correctly identifies base and exponent
- Writes repeated multiplication using exponent notation
- Reads exponent expressions correctly
- Explains what an exponent represents', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Exponents' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Evaluating Powers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Evaluating Powers' AND grade_level_min = 5),
  'Evaluating Powers Topic Guide', 'Calculate values of expressions with exponents',
  'EVALUATING POWERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding exponent notation
- Multiplication fluency
- Ability to multiply multi-digit numbers
- Order of operations basics

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate values of expressions with exponents
2. Evaluate powers with bases 2-10 and small exponents
3. Use repeated multiplication to find power values
4. Apply to problem-solving contexts

KEY CONCEPTS:
- To evaluate, write out repeated multiplication, then calculate
- Example: 3⁴ = 3 × 3 × 3 × 3 = 81
- Powers grow quickly (exponential growth)
- Exponent of 1 means the base itself: 5¹ = 5
- Exponent of 0 equals 1: 5⁰ = 1 (introduction)

COMMON MISCONCEPTIONS:
- Multiplying base by exponent: 4³ ≠ 12
- Not multiplying correct number of times
- Calculation errors in multi-step multiplication
- Forgetting that order matters in repeated multiplication

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Fold paper in half 5 times. How many sections? 2⁵ = ?"

2. DIRECT INSTRUCTION (15 minutes):
   Model evaluation process step-by-step:
   Evaluate 4³:
   Write: 4³ = 4 × 4 × 4
   Calculate: 4 × 4 = 16, then 16 × 4 = 64
   Evaluate 2⁵:
   Write: 2⁵ = 2 × 2 × 2 × 2 × 2
   Calculate: 2 × 2 = 4, 4 × 2 = 8, 8 × 2 = 16, 16 × 2 = 32
   Introduce special cases: any number¹ = itself, any number⁰ = 1

3. GUIDED PRACTICE (12 minutes):
   Evaluate: 3³, 5², 2⁴, 10³, 6²
   Show work: write repeated multiplication
   Calculate step-by-step
   Check with calculator

4. INDEPENDENT PRACTICE (15 minutes):
   Evaluate various powers.
   Compare power values (is 3⁴ > or < 4³?)
   Apply to growth problems (bacteria doubling).

DIFFERENTIATION:
For Struggling Learners:
- Provide multiplication charts
- Use calculator for verification
- Start with smaller bases and exponents
- Write out all steps

For Advanced Learners:
- Larger bases and exponents
- Mental math strategies for common powers
- Investigate exponential growth patterns
- Compare exponential vs linear growth

ASSESSMENT INDICATORS:
- Correctly evaluates powers through calculation
- Shows work systematically
- Recognizes exponential growth patterns
- Applies to real-world contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evaluating Powers' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Squares and Square Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Squares and Square Roots' AND grade_level_min = 5),
  'Squares and Square Roots Topic Guide', 'Understand perfect squares and roots',
  'SQUARES AND SQUARE ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding exponents
- Multiplication facts
- Area of squares
- Evaluating powers

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate perfect squares (1² through 12²)
2. Understand square root concept
3. Find square roots of perfect squares
4. Connect squares to area of squares

KEY CONCEPTS:
- Square means exponent of 2: 5² = 5 × 5 = 25
- Perfect square: number that is a whole number squared
- Square root is inverse of squaring
- √25 = 5 because 5² = 25
- Connection to geometric squares (area)

COMMON MISCONCEPTIONS:
- Confusing square root symbol with division
- Thinking √25 = 12.5 (half of 25)
- Not recognizing perfect square patterns
- Confusion between 2n and n²

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "A square has area 36 sq inches. What''s the side length?"

2. DIRECT INSTRUCTION (15 minutes):
   Build perfect squares table:
   1² = 1, 2² = 4, 3² = 9, 4² = 16, 5² = 25...up to 12² = 144
   Show geometric connection: 4² means square with side 4, area 16
   Introduce square root: reverse operation
   If 6² = 36, then √36 = 6
   Read: "the square root of 36 is 6"
   Model finding square roots: √49 = ? (think: what number squared equals 49?) = 7

3. GUIDED PRACTICE (12 minutes):
   Calculate squares: 7², 9², 11², 12²
   Find square roots: √16, √64, √100, √144
   Match squares to roots
   Use grid paper to model square areas

4. INDEPENDENT PRACTICE (15 minutes):
   Memorize perfect squares 1-12.
   Find square roots of perfect squares.
   Solve area problems involving squares.

DIFFERENTIATION:
For Struggling Learners:
- Provide perfect squares reference chart
- Use grid paper to build squares
- Practice squares before introducing roots
- Focus on 1-10 initially

For Advanced Learners:
- Extend to larger perfect squares (13²-20²)
- Estimate square roots of non-perfect squares
- Investigate square root patterns
- Connect to Pythagorean theorem introduction

ASSESSMENT INDICATORS:
- Recalls perfect squares 1-12
- Finds square roots of perfect squares
- Explains square/square root relationship
- Applies to geometric square problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Squares and Square Roots' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Cubes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Cubes' AND grade_level_min = 5),
  'Cubes Topic Guide', 'Calculate cubes of numbers',
  'CUBES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding exponents
- Evaluating powers
- Volume concept
- Multiplication skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand cube means exponent of 3
2. Calculate perfect cubes (1³ through 10³)
3. Connect cubes to volume of cubes
4. Recognize cube patterns

KEY CONCEPTS:
- Cube means exponent of 3: 4³ = 4 × 4 × 4 = 64
- Perfect cube: whole number raised to power of 3
- Connection to geometric cubes (volume)
- Cubes grow very quickly
- Read as "4 cubed" or "4 to the third power"

COMMON MISCONCEPTIONS:
- Confusing 3n with n³
- Calculation errors in three-step multiplication
- Not understanding 3D connection
- Thinking cubes are just slightly larger than squares

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "A cubic box has edges of 3 inches. What''s the volume? That''s 3³!"

2. DIRECT INSTRUCTION (15 minutes):
   Build perfect cubes table:
   1³ = 1, 2³ = 8, 3³ = 27, 4³ = 64, 5³ = 125, 6³ = 216...
   Show geometric connection: 3³ means cube with edge 3, volume 27
   Model calculation: 5³ = 5 × 5 × 5
   Step 1: 5 × 5 = 25
   Step 2: 25 × 5 = 125
   Compare squares vs cubes: 5² = 25, but 5³ = 125
   Use unit cubes to build models for small cubes

3. GUIDED PRACTICE (12 minutes):
   Calculate cubes: 2³, 3³, 4³, 6³, 10³
   Build or visualize cube models
   Compare to corresponding squares
   Practice three-step multiplication

4. INDEPENDENT PRACTICE (15 minutes):
   Calculate various cubes.
   Solve volume problems for cubes.
   Create table showing n, n², n³ for numbers 1-10.

DIFFERENTIATION:
For Struggling Learners:
- Provide perfect cubes reference chart
- Use physical unit cubes to build models
- Focus on cubes 1-5 initially
- Break calculation into clear steps

For Advanced Learners:
- Extend to larger cubes (11³-15³)
- Cube root introduction
- Investigate cube number patterns
- Apply to complex volume problems

ASSESSMENT INDICATORS:
- Correctly calculates perfect cubes
- Shows calculation steps clearly
- Connects cubes to volume concept
- Recognizes exponential growth in cubes', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cubes' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Powers of 10
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Powers of 10' AND grade_level_min = 5),
  'Powers of 10 Topic Guide', 'Evaluate powers of 10',
  'POWERS OF 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding exponents
- Place value to billions
- Pattern recognition
- Powers of 10 multiplication patterns

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Evaluate powers of 10 (10¹ through 10⁶)
2. Recognize pattern in powers of 10
3. Connect exponent to number of zeros
4. Apply to place value and metric system

KEY CONCEPTS:
- 10 raised to a power: 10² = 10 × 10 = 100
- Exponent shows number of zeros: 10⁴ = 10,000 (4 zeros)
- Each power is 10 times the previous: 10³ = 10 × 10²
- Place value is based on powers of 10
- Scientific notation uses powers of 10

COMMON MISCONCEPTIONS:
- Confusing exponent with number of zeros: 10³ = 30
- Not recognizing the pattern
- Difficulty with larger powers
- Confusion about 10⁰ = 1 and 10¹ = 10

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "How do we write one million as a power of 10? Let''s find the pattern!"

2. DIRECT INSTRUCTION (12 minutes):
   Build powers of 10 table:
   10¹ = 10
   10² = 10 × 10 = 100
   10³ = 10 × 10 × 10 = 1,000
   10⁴ = 10,000
   10⁵ = 100,000
   10⁶ = 1,000,000
   Pattern: exponent = number of zeros
   Show place value connection:
   ones = 10⁰ = 1
   tens = 10¹ = 10
   hundreds = 10² = 100
   thousands = 10³ = 1,000

3. GUIDED PRACTICE (10 minutes):
   Write powers of 10 in standard form: 10⁴, 10⁷, 10⁵
   Write numbers as powers of 10: 10,000 = 10⁴
   Identify patterns
   Connect to place value chart

4. INDEPENDENT PRACTICE (15 minutes):
   Convert between exponential and standard form.
   Use powers of 10 in comparisons.
   Apply to metric conversions (preview).

DIFFERENTIATION:
For Struggling Learners:
- Provide powers of 10 reference chart
- Use place value chart connection
- Start with 10¹ through 10⁴
- Count zeros explicitly

For Advanced Learners:
- Extend to 10⁸, 10⁹, etc.
- Negative powers of 10 (decimals)
- Scientific notation introduction
- Real-world applications (astronomy, microscopy)

ASSESSMENT INDICATORS:
- Correctly evaluates powers of 10
- Identifies zero pattern
- Converts between forms
- Connects to place value system', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Powers of 10' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Multiplying by Powers of 10
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying by Powers of 10' AND grade_level_min = 5),
  'Multiplying by Powers of 10 Guide', 'Use exponents to multiply by 10, 100, 1000',
  'MULTIPLYING BY POWERS OF 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Powers of 10 understanding
- Place value shifts with multiplication
- Decimal multiplication by powers of 10
- Exponent notation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply whole numbers and decimals by 10ⁿ
2. Use exponent to determine place value shifts
3. Apply mental math strategies
4. Connect to metric system conversions

KEY CONCEPTS:
- Multiplying by 10ⁿ shifts digits n places left
- Exponent tells number of places to shift
- 4.5 × 10² = 4.5 × 100 = 450
- Works for whole numbers and decimals
- Efficient mental math strategy

COMMON MISCONCEPTIONS:
- Just adding zeros without considering decimals
- Shifting wrong direction
- Confusing number of zeros with exponent
- Not using place holders when needed

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "What''s 3.7 × 10³? Can you solve it in 5 seconds using exponents?"

2. DIRECT INSTRUCTION (12 minutes):
   Model: 6.2 × 10² = ?
   10² = 100, so 6.2 × 100
   Exponent is 2, shift 2 places left: 620
   Model: 0.45 × 10³ = ?
   10³ = 1000, shift 3 places left: 450
   Show pattern in place value chart:
   Multiplying by 10¹ shifts 1 place
   Multiplying by 10² shifts 2 places
   Multiplying by 10³ shifts 3 places

3. GUIDED PRACTICE (12 minutes):
   Multiply: 5.8 × 10², 0.67 × 10³, 12.4 × 10¹
   Identify exponent, determine shifts
   Use place value charts
   Check with standard multiplication

4. INDEPENDENT PRACTICE (15 minutes):
   Varied multiplication by powers of 10.
   Mental math practice.
   Apply to metric conversions (meters to kilometers).

DIFFERENTIATION:
For Struggling Learners:
- Provide place value shift guides
- Start with whole numbers
- Use visual place value charts
- Practice with 10¹ and 10² first

For Advanced Learners:
- Larger exponents (10⁶, 10⁹)
- Scientific notation applications
- Solve equations involving powers of 10
- Real-world problem solving

ASSESSMENT INDICATORS:
- Correctly multiplies by powers of 10
- Uses exponent to determine place shifts
- Applies mental math strategies
- Connects to metric system', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying by Powers of 10' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Dividing by Powers of 10
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing by Powers of 10' AND grade_level_min = 5),
  'Dividing by Powers of 10 Guide', 'Use exponents to divide by 10, 100, 1000',
  'DIVIDING BY POWERS OF 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multiplying by powers of 10
- Division concept
- Place value understanding
- Decimal division basics

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide whole numbers and decimals by 10ⁿ
2. Understand division shifts digits right
3. Use exponent to determine number of place shifts
4. Apply to metric conversions

KEY CONCEPTS:
- Dividing by 10ⁿ shifts digits n places right
- Opposite of multiplying by powers of 10
- 450 ÷ 10² = 450 ÷ 100 = 4.5
- May need placeholder zeros: 7 ÷ 10² = 0.07
- Efficient mental math strategy

COMMON MISCONCEPTIONS:
- Shifting left instead of right
- Not using placeholder zeros
- Confusing with multiplication patterns
- Errors with decimal point placement

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "650 centimeters = ? meters. That''s 650 ÷ 10²!"

2. DIRECT INSTRUCTION (15 minutes):
   Model: 380 ÷ 10² = ?
   10² = 100, so 380 ÷ 100
   Exponent is 2, shift 2 places right: 3.80 = 3.8
   Model: 45 ÷ 10³ = ?
   Shift 3 places right, need placeholder: 0.045
   Show inverse relationship:
   6.2 × 10² = 620
   620 ÷ 10² = 6.2
   Use place value chart to visualize shifts

3. GUIDED PRACTICE (12 minutes):
   Divide: 560 ÷ 10², 7,200 ÷ 10³, 34 ÷ 10¹
   Identify exponent and shift direction
   Use place value charts
   Practice needing placeholder zeros

4. INDEPENDENT PRACTICE (15 minutes):
   Divide by various powers of 10.
   Apply to metric conversions.
   Mixed practice: multiply and divide by powers of 10.

DIFFERENTIATION:
For Struggling Learners:
- Visual place value shift arrows
- Start with whole number dividends
- Practice 10¹ and 10² first
- Use number lines for visualization

For Advanced Learners:
- Larger exponents
- Scientific notation division
- Solve equations with powers of 10
- Complex metric conversion chains

ASSESSMENT INDICATORS:
- Correctly divides by powers of 10
- Shifts digits appropriate number of places
- Uses placeholder zeros when needed
- Applies to metric conversions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing by Powers of 10' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Scientific Notation Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scientific Notation Introduction' AND grade_level_min = 5),
  'Scientific Notation Introduction Guide', 'Write large numbers in scientific notation',
  'SCIENTIFIC NOTATION INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Powers of 10 fluency
- Multiplying by powers of 10
- Place value to billions
- Decimal understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand scientific notation format (a × 10ⁿ)
2. Convert large numbers to scientific notation
3. Convert scientific notation to standard form
4. Recognize when scientific notation is useful

KEY CONCEPTS:
- Format: number between 1 and 10, multiplied by power of 10
- Example: 3,500 = 3.5 × 10³
- Exponent shows how many places decimal moved
- Used for very large (or very small) numbers
- Common in science (astronomy, biology)

COMMON MISCONCEPTIONS:
- Not putting first number between 1 and 10
- Counting decimal places incorrectly
- Confusing exponent value
- Thinking scientific notation changes the value

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "Earth''s distance from sun: 93,000,000 miles. How can we write this more simply?"

2. DIRECT INSTRUCTION (15 minutes):
   Model: Convert 4,500 to scientific notation
   Move decimal left until one non-zero digit before it: 4.5
   Count moves: 3 places
   Write: 4.5 × 10³
   Verify: 4.5 × 1000 = 4,500 ✓
   Model reverse: 6.2 × 10⁴ = ?
   10⁴ = 10,000
   6.2 × 10,000 = 62,000
   Show pattern: exponent = number of places to move decimal

3. GUIDED PRACTICE (15 minutes):
   Convert to scientific notation: 7,800; 52,000; 3,400,000
   Convert to standard form: 5.6 × 10³, 8.1 × 10⁵
   Discuss why scientific notation is useful
   Practice with real-world large numbers

4. INDEPENDENT PRACTICE (12 minutes):
   Convert between forms.
   Apply to astronomy, geography data.
   Order numbers in scientific notation.

DIFFERENTIATION:
For Struggling Learners:
- Provide step-by-step conversion guides
- Use place value charts
- Start with powers of 10² and 10³
- Practice decimal movement separately

For Advanced Learners:
- Include decimal starting numbers (456.7)
- Scientific notation for small numbers (decimals)
- Operations with scientific notation
- Real research data applications

ASSESSMENT INDICATORS:
- Correctly converts to scientific notation
- Converts scientific notation to standard form
- Explains format requirements (1-10 × 10ⁿ)
- Recognizes appropriate uses', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scientific Notation Introduction' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Comparing Numbers in Scientific Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Numbers in Scientific Notation' AND grade_level_min = 5),
  'Comparing Numbers in Scientific Notation Guide', 'Compare numbers written in scientific notation',
  'COMPARING NUMBERS IN SCIENTIFIC NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Scientific notation understanding
- Comparing whole numbers and decimals
- Powers of 10 value understanding
- Greater than/less than symbols

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare numbers written in scientific notation
2. Order scientific notation numbers
3. Use exponents as primary comparison point
4. Apply to real-world data comparison

KEY CONCEPTS:
- First compare exponents (larger exponent = larger number)
- If exponents equal, compare the decimal parts
- Can convert to standard form to verify
- Useful for comparing very large quantities
- Application in science, geography, astronomy

COMMON MISCONCEPTIONS:
- Comparing decimal parts before exponents
- Forgetting that larger exponent means larger number
- Not understanding place value implications
- Errors when exponents are equal

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Which is farther: Mars at 1.4 × 10⁸ miles or Jupiter at 4.8 × 10⁸ miles from Sun?"

2. DIRECT INSTRUCTION (12 minutes):
   Model comparison process:
   Compare 3.5 × 10⁴ and 6.2 × 10³
   Step 1: Compare exponents - 4 > 3
   Therefore: 3.5 × 10⁴ > 6.2 × 10³
   Verify: 35,000 > 6,200 ✓

   Model with same exponents: 5.8 × 10⁵ vs 5.1 × 10⁵
   Exponents equal, compare decimals: 5.8 > 5.1
   Therefore: 5.8 × 10⁵ > 5.1 × 10⁵

3. GUIDED PRACTICE (12 minutes):
   Compare pairs:
   4.2 × 10⁶ vs 8.1 × 10⁵
   3.7 × 10⁴ vs 3.9 × 10⁴
   Order sets from least to greatest
   Apply to planet distances, populations

4. INDEPENDENT PRACTICE (15 minutes):
   Compare and order scientific notation numbers.
   Real-world data sets (country populations, distances).
   Create true/false comparison statements.

DIFFERENTIATION:
For Struggling Learners:
- Provide comparison flow chart
- Convert to standard form for verification
- Use highlighters for exponents
- Practice with same exponents first

For Advanced Learners:
- Complex ordering with many numbers
- Include negative exponents (small numbers)
- Create data displays with scientific notation
- Research and compare real astronomical data

ASSESSMENT INDICATORS:
- Correctly compares scientific notation numbers
- Orders sets accurately
- Explains comparison strategy
- Applies to real-world contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Numbers in Scientific Notation' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;
