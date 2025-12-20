-- Grade 6 Math Topic Prompts
-- Comprehensive 500+ word teaching guides for each topic

-- ============================================
-- RATIOS AND PROPORTIONAL RELATIONSHIPS UNIT
-- ============================================

-- Understanding Ratios
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Ratios' AND grade_level_min = 6),
  'Understanding Ratios Topic Guide',
  'Comprehensive teaching approach for ratio concepts',
  'UNDERSTANDING RATIOS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand fractions, simplify fractions, understand division, and work with multiplicative relationships.

LEARNING OBJECTIVES:
Students will understand ratio as a comparison of two quantities, express ratios in multiple forms (a:b, a to b, a/b), identify part-to-part and part-to-whole ratios, use ratios to describe relationships, and apply ratios to real-world contexts.

KEY CONCEPTS:
1. A ratio compares two quantities using multiplication/division
2. Ratios can be written as a:b, "a to b," or a/b
3. Part-to-part ratios compare parts (boys to girls)
4. Part-to-whole ratios compare a part to the total
5. Order matters: 3:5 ≠ 5:3

COMMON MISCONCEPTIONS:
- Confusing ratios with fractions entirely
- Thinking ratio order doesn''t matter
- Not distinguishing part-to-part from part-to-whole
- Adding instead of comparing multiplicatively
- Difficulty with ratios involving 0

TEACHING SEQUENCE:

Hook/Engagement:
"For every 2 dogs at the shelter, there are 3 cats. If there are 10 dogs, how many cats? Ratios help us understand and extend these relationships!"

Direct Instruction:
Define ratio: "A ratio compares two quantities. For 2 dogs and 3 cats, we write 2:3, ''2 to 3,'' or 2/3."

Three forms: "All three notations represent the same relationship. Choose based on context."

Part-to-part vs part-to-whole:
"Part-to-part: 2 dogs to 3 cats = 2:3
Part-to-whole: 2 dogs out of 5 animals total = 2:5"

Order matters: "The ratio of dogs to cats (2:3) is different from cats to dogs (3:2)."

Real contexts: Recipes, maps, scale drawings, rates.

Guided Practice:
Write ratios in multiple forms, identify ratio types, compare situations using ratios, solve basic ratio problems.

Independent Application:
Real-world ratio problems, create ratio descriptions, compare ratios, explore ratio tables.

DIFFERENTIATION:

Struggling Learners:
- Use concrete objects for ratios
- Focus on a:b notation first
- Simple part-to-part before part-to-whole
- Emphasize order through examples
- Visual representations

Advanced Learners:
- Three-way ratios
- Ratios with fractions
- Complex real-world applications
- Connect to fraction division
- Explore proportions preview

ASSESSMENT INDICATORS:
- Writes ratios in all three forms
- Distinguishes ratio types
- Maintains correct order
- Applies to contexts
- Explains ratio meaning

VOCABULARY:
ratio, comparison, part-to-part, part-to-whole, relationship, proportion, equivalent

CONNECTION TO FUTURE LEARNING:
Ratios are foundational for proportional reasoning, rates, percents, and algebraic relationships.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Ratios' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Equivalent Ratios
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equivalent Ratios' AND grade_level_min = 6),
  'Equivalent Ratios Topic Guide',
  'Comprehensive teaching approach for ratio equivalence',
  'EQUIVALENT RATIOS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand basic ratios, find equivalent fractions, multiply and divide, and work with tables.

LEARNING OBJECTIVES:
Students will find equivalent ratios by multiplying or dividing, use ratio tables to generate equivalents, recognize equivalent ratios in different forms, apply equivalent ratios to solve problems, and understand that equivalent ratios represent the same relationship.

KEY CONCEPTS:
1. Multiply/divide both parts by the same number to get equivalent ratios
2. 2:3 = 4:6 = 6:9 = 8:12 (same relationship)
3. Ratio tables organize equivalent ratios
4. Simplifying gives the ratio in lowest terms
5. Equivalent ratios can solve for unknowns

COMMON MISCONCEPTIONS:
- Adding the same number instead of multiplying
- Only changing one part of the ratio
- Not recognizing when ratios are already equivalent
- Difficulty simplifying ratios
- Confusion between ratio and fraction equivalence

TEACHING SEQUENCE:

Hook/Engagement:
"A recipe calls for 2 cups flour and 3 cups water. To make a larger batch, do you add the same amount to each, or multiply each by the same number?"

Direct Instruction:
Generate equivalents: "2:3 = (2×2):(3×2) = 4:6 = (2×3):(3×3) = 6:9"

Ratio tables:
"Apples | Oranges
   2    |    3
   4    |    6
   6    |    9
   8    |    12"

Simplify: "12:18 → divide both by 6 → 2:3"

Solve problems: "If 2:3 = 10:?, then 10 = 2×5, so ? = 3×5 = 15"

Verify equivalence: "Are 8:12 and 6:9 equivalent? Simplify both to 2:3. Yes!"

Guided Practice:
Create ratio tables, find missing values, simplify ratios, verify equivalence.

Independent Application:
Mixed problems, real-world applications, create equivalent ratio puzzles, explore patterns.

DIFFERENTIATION:

Struggling Learners:
- Ratio tables for organization
- Multiply by 2 first
- Visual models
- Check by simplifying
- Step-by-step process

Advanced Learners:
- Complex ratios with fractions
- Multiple missing values
- Three-way ratio equivalence
- Create ratio challenges
- Connect to proportions

ASSESSMENT INDICATORS:
- Generates equivalent ratios
- Uses ratio tables effectively
- Simplifies to lowest terms
- Solves for unknowns
- Verifies equivalence

VOCABULARY:
equivalent, ratio table, simplify, multiply, divide, scale factor, lowest terms

CONNECTION TO FUTURE LEARNING:
Equivalent ratios lead directly to proportions and solving proportion equations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equivalent Ratios' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Unit Rates
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Unit Rates' AND grade_level_min = 6),
  'Unit Rates Topic Guide',
  'Comprehensive teaching approach for unit rate concepts',
  'UNIT RATES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand ratios, divide decimals, understand rates, and work with equivalent ratios.

LEARNING OBJECTIVES:
Students will understand unit rate as a ratio with denominator 1, calculate unit rates by division, compare quantities using unit rates, apply unit rates to find totals, and solve real-world rate problems.

KEY CONCEPTS:
1. A unit rate has 1 in the denominator (per 1 unit)
2. Find unit rate by dividing: 120 miles in 3 hours → 120÷3 = 40 mph
3. Unit rates allow easy comparison
4. Two unit rates exist: miles per hour AND hours per mile
5. "Per" indicates a rate

COMMON MISCONCEPTIONS:
- Not understanding what "per" means
- Dividing in the wrong order
- Thinking only one unit rate exists
- Not including units in answers
- Confusing rate with ratio

TEACHING SEQUENCE:

Hook/Engagement:
"Store A: 6 apples for $3. Store B: 8 apples for $5. Which is the better deal? Unit rates help us compare—price per apple!"

Direct Instruction:
Define unit rate: "A unit rate tells how much of one quantity per 1 unit of another. Speed (miles per hour) is a unit rate."

Calculate: "$3 for 6 apples → $3÷6 = $0.50 per apple. $5 for 8 apples → $5÷8 = $0.625 per apple. Store A is cheaper!"

Two rates: "120 miles in 2 hours gives 60 mph (miles per hour) OR 1/60 hours per mile. Both are correct!"

Apply to totals: "At 60 mph, how far in 5 hours? 60 × 5 = 300 miles"

Guided Practice:
Calculate unit rates, compare using unit rates, find totals from rates, solve shopping problems.

Independent Application:
Speed problems, price comparisons, rate problems, create unit rate scenarios.

DIFFERENTIATION:

Struggling Learners:
- Focus on one unit rate type first
- "Per" means divide
- Emphasize units in answers
- Simple division problems
- Real-world shopping contexts

Advanced Learners:
- Complex rates (currency conversion)
- Multi-step rate problems
- Compare using both unit rates
- Create challenging problems
- Connect to proportional reasoning

ASSESSMENT INDICATORS:
- Calculates unit rates correctly
- Includes appropriate units
- Compares using unit rates
- Applies rates to find totals
- Identifies both possible unit rates

VOCABULARY:
unit rate, rate, per, ratio, compare, speed, price per unit

CONNECTION TO FUTURE LEARNING:
Unit rates are essential for proportional reasoning, slope, and rates of change.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Unit Rates' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Percent as a Rate
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Percent as a Rate' AND grade_level_min = 6),
  'Percent as a Rate Topic Guide',
  'Comprehensive teaching approach for percent concepts',
  'PERCENT AS A RATE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand ratios, work with fractions and decimals, understand part-to-whole relationships, and calculate unit rates.

LEARNING OBJECTIVES:
Students will understand percent as "per hundred," convert between percent, fraction, and decimal, use percent to describe part-to-whole relationships, compare quantities using percent, and solve basic percent problems.

KEY CONCEPTS:
1. Percent means "per 100" or "out of 100"
2. 25% = 25/100 = 0.25
3. Percent is a special ratio with 100 as the whole
4. Percents allow comparison of different wholes
5. Common conversions: 50% = 1/2, 25% = 1/4, 10% = 0.1

COMMON MISCONCEPTIONS:
- Not understanding percent as rate per 100
- Difficulty converting between forms
- Thinking percent can''t exceed 100
- Confusing percent with the actual amount
- Moving decimal point incorrectly

TEACHING SEQUENCE:

Hook/Engagement:
"If you score 18/20 on one test and 45/50 on another, which is better? Convert to percent: 90% and 90%. They''re equal! Percent helps us compare fairly."

Direct Instruction:
Percent means per 100: "40% means 40 per 100, or 40/100, or 0.40"

Conversions:
- Percent to decimal: Move decimal 2 places left (75% → 0.75)
- Decimal to percent: Move decimal 2 places right (0.32 → 32%)
- Percent to fraction: Put over 100, simplify (25% = 25/100 = 1/4)

Find percent: "What percent is 15 out of 60? 15/60 = 0.25 = 25%"

Compare using percent: "Team A won 8 of 10 (80%), Team B won 15 of 20 (75%). Team A has a higher win rate."

Guided Practice:
Convert between forms, find percents, compare using percent, apply to real contexts.

Independent Application:
Mixed conversions, real-world percent problems, comparison problems, percent patterns.

DIFFERENTIATION:

Struggling Learners:
- Visual models (hundred grid)
- Focus on benchmark percents
- Conversion charts
- Step-by-step process
- Familiar contexts

Advanced Learners:
- Percents over 100%
- Percent of percent
- Complex comparisons
- Create percent problems
- Connect to interest preview

ASSESSMENT INDICATORS:
- Converts between forms
- Understands "per 100"
- Calculates percents
- Compares using percent
- Applies to real situations

VOCABULARY:
percent, per hundred, rate, convert, fraction, decimal, comparison

CONNECTION TO FUTURE LEARNING:
Percent understanding is essential for interest, tax, discount, and statistical applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Percent as a Rate' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Solving Percent Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Percent Problems' AND grade_level_min = 6),
  'Solving Percent Problems Topic Guide',
  'Comprehensive teaching approach for percent calculations',
  'SOLVING PERCENT PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand percent as rate per 100, convert between forms, multiply and divide with decimals, and understand proportional relationships.

LEARNING OBJECTIVES:
Students will find a percent of a number, find the whole given part and percent, find the percent given part and whole, use multiple strategies (equation, proportion, mental math), and solve real-world percent problems.

KEY CONCEPTS:
1. Part = Percent × Whole (P = % × W)
2. Percent = Part ÷ Whole (% = P ÷ W)
3. Whole = Part ÷ Percent (W = P ÷ %)
4. Proportions work: part/whole = percent/100
5. Percent increase/decrease applications

COMMON MISCONCEPTIONS:
- Confusing which value is part, whole, or percent
- Converting percent incorrectly
- Setting up proportions incorrectly
- Not interpreting results in context
- Calculation errors with decimals

TEACHING SEQUENCE:

Hook/Engagement:
"A jacket was $80 and is now 25% off. How much do you save? How much do you pay? Let''s master percent problems!"

Direct Instruction:
Three problem types:

Find the part: "What is 30% of 80? 0.30 × 80 = 24"

Find the percent: "15 is what percent of 60? 15 ÷ 60 = 0.25 = 25%"

Find the whole: "24 is 40% of what? 24 ÷ 0.40 = 60"

Proportion method: "30% of 80: 30/100 = x/80. Cross multiply: 100x = 2400. x = 24"

Word problem strategy: Identify what you know and what you need.

Guided Practice:
Solve all three types, use multiple methods, real-world applications, percent increase/decrease.

Independent Application:
Mixed problems, shopping scenarios, data contexts, create own problems.

DIFFERENTIATION:

Struggling Learners:
- One problem type at a time
- "Is, of, what" strategy
- Proportion method consistently
- Simple percents first
- Check answers for reasonableness

Advanced Learners:
- Percent increase/decrease
- Multi-step problems
- Tax and discount combined
- Create challenging scenarios
- Financial literacy applications

ASSESSMENT INDICATORS:
- Identifies problem type
- Uses appropriate strategy
- Calculates accurately
- Interprets in context
- Verifies reasonableness

VOCABULARY:
percent, part, whole, discount, markup, increase, decrease, proportion

CONNECTION TO FUTURE LEARNING:
Percent problem solving supports financial literacy, statistics, and proportional reasoning.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Percent Problems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- ============================================
-- THE NUMBER SYSTEM UNIT
-- ============================================

-- Dividing Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Fractions' AND grade_level_min = 6),
  'Dividing Fractions by Fractions Topic Guide',
  'Comprehensive teaching approach for fraction division',
  'DIVIDING FRACTIONS BY FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should divide unit fractions, multiply fractions, find reciprocals, and understand division as finding "how many groups."

LEARNING OBJECTIVES:
Students will divide fractions by fractions, understand why "invert and multiply" works, use visual models to support understanding, interpret quotients in context, and solve word problems.

KEY CONCEPTS:
1. To divide by a fraction, multiply by its reciprocal
2. a/b ÷ c/d = a/b × d/c
3. Division asks "how many of this fit in that?"
4. Quotient can be larger or smaller than dividend
5. Visual models confirm the algorithm

COMMON MISCONCEPTIONS:
- Inverting the wrong fraction
- Forgetting to invert (just multiplying)
- Not understanding why the algorithm works
- Thinking quotients must be smaller
- Difficulty with word problem contexts

TEACHING SEQUENCE:

Hook/Engagement:
"You have 3/4 cup of sugar. Each cookie needs 1/8 cup. How many cookies can you make? Division tells us: 3/4 ÷ 1/8 = 6 cookies!"

Direct Instruction:
Algorithm: "To divide by a fraction, multiply by the reciprocal."
3/4 ÷ 1/8 = 3/4 × 8/1 = 24/4 = 6

Why it works: "Dividing by 1/8 asks ''how many eighths in 3/4?'' In 1 whole, there are 8 eighths. In 3/4, there are 3/4 of 8 = 6 eighths."

Visual model: Draw 3/4, divide into eighths, count = 6.

General case: "2/3 ÷ 1/4 = 2/3 × 4/1 = 8/3 = 2 2/3"

Mixed numbers: Convert to improper fractions first.

Guided Practice:
Apply algorithm, verify with models, interpret quotients, word problems.

Independent Application:
Mixed practice, real-world contexts, create division problems, explore patterns.

DIFFERENTIATION:

Struggling Learners:
- Visual models for every problem
- Focus on "how many fit" meaning
- Simple fractions first
- Step-by-step algorithm
- Verify with multiplication

Advanced Learners:
- Complex fraction division
- Multiple operations
- Create word problems
- Explore the algebra behind it
- Connect to ratio/rate

ASSESSMENT INDICATORS:
- Divides fractions correctly
- Uses reciprocal appropriately
- Interprets quotients in context
- Uses visual models
- Solves word problems

VOCABULARY:
divide, reciprocal, invert, quotient, how many fit, mixed number

CONNECTION TO FUTURE LEARNING:
Fraction division is essential for complex fractions, algebraic expressions, and rate problems.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Fractions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Introduction to Integers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Introduction to Integers' AND grade_level_min = 6),
  'Introduction to Integers Topic Guide',
  'Comprehensive teaching approach for negative numbers',
  'INTRODUCTION TO INTEGERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand number lines, compare whole numbers, understand opposite concepts, and work with real-world contexts.

LEARNING OBJECTIVES:
Students will understand integers as positive, negative, and zero, represent integers on a number line, understand opposites (e.g., -5 is opposite of 5), interpret negative numbers in context, and compare integers using number lines.

KEY CONCEPTS:
1. Integers: ..., -3, -2, -1, 0, 1, 2, 3, ...
2. Zero is neither positive nor negative
3. Opposites are the same distance from zero
4. Negative numbers represent below zero, loss, debt
5. Numbers increase going right on number line

COMMON MISCONCEPTIONS:
- Thinking -5 is "larger" than -2 because 5 > 2
- Confusion about zero''s role
- Not understanding what negative represents
- Difficulty with vertical number lines
- Thinking integers include decimals/fractions

TEACHING SEQUENCE:

Hook/Engagement:
"The temperature is -10°F. What does that mean? Elevations can be below sea level. Bank accounts can have debt. Negative numbers are everywhere in real life!"

Direct Instruction:
Define integers: "Whole numbers and their opposites. Positive integers are greater than zero. Negative integers are less than zero."

Number line: Extend left from zero. Equal spacing for each integer.

Opposites: "5 and -5 are opposites—same distance from zero but opposite directions. 0 is its own opposite."

Real contexts:
- Temperature: above/below zero
- Elevation: above/below sea level
- Money: gain/loss, deposit/withdrawal
- Football: yardage gain/loss

Guided Practice:
Plot integers on number lines, identify opposites, interpret contextual integers, compare locations.

Independent Application:
Real-world integer scenarios, create contexts, number line activities, opposite pairs.

DIFFERENTIATION:

Struggling Learners:
- Vertical number lines (thermometer)
- Heavy use of context
- Focus on opposites
- Hands-on number line activities
- Simple integers first

Advanced Learners:
- Large integers
- Operations preview
- Real-world data with integers
- Create integer contexts
- Explore rational numbers

ASSESSMENT INDICATORS:
- Identifies integers correctly
- Plots on number line
- Names opposites
- Interprets in context
- Compares using number line

VOCABULARY:
integer, positive, negative, opposite, zero, number line, above, below

CONNECTION TO FUTURE LEARNING:
Integer understanding is essential for integer operations, coordinate graphing, and algebraic expressions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Introduction to Integers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Absolute Value
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value' AND grade_level_min = 6),
  'Absolute Value Topic Guide',
  'Comprehensive teaching approach for absolute value concepts',
  'ABSOLUTE VALUE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand integers, use number lines, understand distance concepts, and know opposites.

LEARNING OBJECTIVES:
Students will understand absolute value as distance from zero, evaluate absolute value expressions, interpret absolute value in context, compare using absolute value, and solve equations involving absolute value.

KEY CONCEPTS:
1. Absolute value = distance from zero (always non-negative)
2. |5| = 5 and |-5| = 5 (both are 5 units from zero)
3. |0| = 0
4. Absolute value answers "how far?" not "which direction?"
5. Real-world: magnitude of change, distance

COMMON MISCONCEPTIONS:
- Thinking |-5| = -5 (removing the sign only)
- Confusing absolute value with opposite
- Not understanding the "distance" concept
- Thinking absolute value changes the number
- Difficulty with expressions like -|x|

TEACHING SEQUENCE:

Hook/Engagement:
"You walk 5 blocks east. Your friend walks 5 blocks west. Who walked farther? Neither—you both walked 5 blocks! That''s absolute value: the distance regardless of direction."

Direct Instruction:
Define absolute value: "The distance from zero on a number line."

Notation: "|−7| is read ''the absolute value of negative 7.'' It equals 7 because -7 is 7 units from zero."

Examples:
- |6| = 6 (6 is 6 units from 0)
- |-6| = 6 (-6 is also 6 units from 0)
- |0| = 0

Evaluate expressions: |-3| + |5| = 3 + 5 = 8

Real contexts: "A stock dropped 15 points. The absolute value |−15| = 15 tells us the size of the change."

Guided Practice:
Evaluate absolute values, compare using absolute value, interpret in context, order by absolute value.

Independent Application:
Mixed evaluations, real-world applications, compare distances, create absolute value problems.

DIFFERENTIATION:

Struggling Learners:
- Number line for every problem
- Emphasize "distance from zero"
- Simple integers first
- Avoid expressions initially
- Real-world contexts

Advanced Learners:
- Expressions with operations
- Equations with absolute value
- Compare using absolute value
- Explore |a - b| as distance
- Connect to coordinate plane

ASSESSMENT INDICATORS:
- Evaluates absolute value correctly
- Understands "distance from zero"
- Uses notation properly
- Interprets in context
- Compares using absolute value

VOCABULARY:
absolute value, distance, magnitude, non-negative, notation, evaluate

CONNECTION TO FUTURE LEARNING:
Absolute value is essential for distance formulas, complex numbers, and solving absolute value equations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- ============================================
-- EXPRESSIONS AND EQUATIONS UNIT
-- ============================================

-- Exponents
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponents' AND grade_level_min = 6),
  'Exponents Topic Guide',
  'Comprehensive teaching approach for exponential notation',
  'EXPONENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand multiplication, multiply multi-digit numbers, recognize patterns, and work with place value.

LEARNING OBJECTIVES:
Students will write repeated multiplication using exponents, evaluate expressions with exponents, understand base and exponent terminology, apply exponents in expressions, and connect to powers of 10.

KEY CONCEPTS:
1. Exponent tells how many times to multiply the base
2. 5³ = 5 × 5 × 5 = 125 (5 is base, 3 is exponent)
3. Any number to the 0 power equals 1 (except 0⁰)
4. Any number to the 1st power equals itself
5. Powers of 10: 10¹ = 10, 10² = 100, 10³ = 1000

COMMON MISCONCEPTIONS:
- Thinking exponent means multiply by that number (5³ ≠ 5 × 3)
- Confusing 2³ and 3²
- Not understanding the zero exponent rule
- Difficulty reading exponential notation
- Errors with order of operations

TEACHING SEQUENCE:

Hook/Engagement:
"2 × 2 × 2 × 2 × 2 is tedious to write. Mathematicians use 2⁵ instead. Exponents are mathematical shorthand that becomes powerful!"

Direct Instruction:
Introduce notation: "In 5³, 5 is the BASE and 3 is the EXPONENT. It means 5 × 5 × 5 = 125. We say ''five to the third power'' or ''five cubed.''"

Evaluate:
- 2⁴ = 2 × 2 × 2 × 2 = 16
- 10³ = 10 × 10 × 10 = 1000
- 3² = 3 × 3 = 9 (''three squared'')

Special cases:
- n¹ = n (any number to the first power is itself)
- n⁰ = 1 (any nonzero number to the zero power is 1)

Order of operations: Exponents come after parentheses.

Guided Practice:
Write using exponents, evaluate powers, apply in expressions, connect to powers of 10.

Independent Application:
Mixed practice, pattern exploration, real-world applications, scientific notation preview.

DIFFERENTIATION:

Struggling Learners:
- Expand every exponent first
- Focus on squares and cubes
- Avoid zero exponent initially
- Lots of examples
- Check with calculators

Advanced Learners:
- Negative exponents preview
- Product/quotient rules preview
- Scientific notation
- Exponential growth patterns
- Large number exploration

ASSESSMENT INDICATORS:
- Writes using exponents
- Evaluates correctly
- Uses terminology properly
- Applies in expressions
- Understands special cases

VOCABULARY:
exponent, base, power, squared, cubed, evaluate, exponential notation

CONNECTION TO FUTURE LEARNING:
Exponents are foundational for scientific notation, exponential functions, and algebraic expressions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponents' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Writing Algebraic Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Algebraic Expressions' AND grade_level_min = 6),
  'Writing Algebraic Expressions Topic Guide',
  'Comprehensive teaching approach for translating to algebra',
  'WRITING ALGEBRAIC EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should write numerical expressions, understand variables from patterns, know operation vocabulary, and evaluate expressions.

LEARNING OBJECTIVES:
Students will use variables to represent unknowns, translate verbal phrases to algebraic expressions, understand that variables can represent any number, write expressions for real-world situations, and identify parts of expressions (terms, coefficients).

KEY CONCEPTS:
1. Variables (letters) represent unknown or changing values
2. Coefficient × variable: 3x means 3 times x
3. "5 less than x" → x - 5 (not 5 - x)
4. Addition is commutative, subtraction is not
5. Expressions can be simplified and evaluated

COMMON MISCONCEPTIONS:
- "5 less than x" → 5 - x (wrong order)
- Thinking x means one specific value
- Confusing expression and equation
- Difficulty with coefficient notation (3x vs 3 × x)
- Adding when should multiply ("3 times x" → 3 + x)

TEACHING SEQUENCE:

Hook/Engagement:
"You buy some books at $8 each. Without knowing how many, can we write an expression for the total cost? Yes: 8n or 8 × n where n is the number of books!"

Direct Instruction:
Variables represent quantities: "Let n = number of books. Total cost = 8n."

Key vocabulary translations:
- "Sum of x and 5" → x + 5
- "5 more than x" → x + 5
- "Difference of x and 5" → x - 5
- "5 less than x" → x - 5 (NOTE: x comes first!)
- "Product of 3 and x" → 3x
- "Quotient of x and 4" → x/4

Parts: In 3x + 7, 3 is coefficient, x is variable, 3x and 7 are terms.

Guided Practice:
Translate phrases, write expressions for situations, identify parts, discuss "less than" carefully.

Independent Application:
Mixed translations, real-world contexts, reverse translation, create verbal descriptions.

DIFFERENTIATION:

Struggling Learners:
- Vocabulary reference chart
- Practice "less than" extensively
- Simple one-operation expressions
- Always define variables
- Concrete examples

Advanced Learners:
- Multi-term expressions
- Multiple variables
- Nested expressions
- Real-world modeling
- Simplifying expressions preview

ASSESSMENT INDICATORS:
- Translates accurately
- Handles "less than" correctly
- Uses variables appropriately
- Identifies expression parts
- Writes expressions for contexts

VOCABULARY:
variable, expression, coefficient, term, constant, translate, algebraic

CONNECTION TO FUTURE LEARNING:
Writing expressions is foundational for all algebraic work including equations, functions, and modeling.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Algebraic Expressions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Solving Addition and Subtraction Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Addition and Subtraction Equations' AND grade_level_min = 6),
  'Solving Addition and Subtraction Equations Topic Guide',
  'Comprehensive teaching approach for one-step equations',
  'SOLVING ADDITION AND SUBTRACTION EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should write algebraic expressions, evaluate expressions, understand equality, and use inverse operations.

LEARNING OBJECTIVES:
Students will solve equations of the form x + a = b and x - a = b, understand inverse operations as "undoing," use substitution to check solutions, write and solve equations from word problems, and understand the meaning of solving an equation.

KEY CONCEPTS:
1. An equation states two expressions are equal
2. The solution makes the equation true
3. Addition and subtraction are inverse operations
4. Do the same operation to both sides to maintain equality
5. Check by substituting the solution

COMMON MISCONCEPTIONS:
- Adding when should subtract (and vice versa)
- Forgetting to do the same to both sides
- Not checking the solution
- Confusing expression and equation
- Difficulty translating word problems

TEACHING SEQUENCE:

Hook/Engagement:
"I''m thinking of a number. When I add 7, I get 15. What''s my number? This is solving an equation: x + 7 = 15. The answer is x = 8!"

Direct Instruction:
Solving x + a = b:
"x + 7 = 15. To ''undo'' adding 7, subtract 7 from both sides.
x + 7 - 7 = 15 - 7
x = 8"

Check: "8 + 7 = 15 ✓"

Solving x - a = b:
"x - 5 = 12. To ''undo'' subtracting 5, add 5 to both sides.
x - 5 + 5 = 12 + 5
x = 17"

Check: "17 - 5 = 12 ✓"

Word problems: "After spending $8, Maya has $25. How much did she start with? x - 8 = 25, so x = 33."

Guided Practice:
Solve equations, check all solutions, write and solve from contexts, explain the process.

Independent Application:
Mixed practice, word problems, error analysis, create equations for classmates.

DIFFERENTIATION:

Struggling Learners:
- Balance model visualization
- Inverse operation charts
- One operation type at a time
- Simple numbers
- Always check solutions

Advanced Learners:
- Negative solutions
- Larger numbers
- Multi-step word problems
- Create challenging problems
- Preview two-step equations

ASSESSMENT INDICATORS:
- Solves correctly
- Uses inverse operations
- Checks solutions
- Writes equations from contexts
- Explains the process

VOCABULARY:
equation, solve, solution, inverse operation, undo, substitute, check, equality

CONNECTION TO FUTURE LEARNING:
One-step equations prepare for multi-step equations and algebraic problem solving.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Addition and Subtraction Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Solving Multiplication and Division Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Multiplication and Division Equations' AND grade_level_min = 6),
  'Solving Multiplication and Division Equations Topic Guide',
  'Comprehensive teaching approach for one-step multiplication/division equations',
  'SOLVING MULTIPLICATION AND DIVISION EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should solve addition/subtraction equations, understand inverse operations, multiply and divide fluently, and check solutions by substitution.

LEARNING OBJECTIVES:
Students will solve equations of the form ax = b and x/a = b, understand multiplication and division as inverse operations, use substitution to verify solutions, write and solve equations from word problems, and connect to proportional relationships.

KEY CONCEPTS:
1. Multiplication and division are inverse operations
2. To undo multiplication, divide both sides
3. To undo division, multiply both sides
4. Check solutions by substituting
5. The coefficient tells "how many" of the variable

COMMON MISCONCEPTIONS:
- Multiplying when should divide (and vice versa)
- Not performing operation on both sides
- Division direction confusion
- Forgetting to check
- Difficulty with fractional results

TEACHING SEQUENCE:

Hook/Engagement:
"A group of 4 friends shared a bill equally, and each paid $15. What was the total bill? This is 4x = 60... no wait, x/4 = 15. Let''s solve!"

Direct Instruction:
Solving ax = b:
"3x = 18. To ''undo'' multiplying by 3, divide both sides by 3.
3x ÷ 3 = 18 ÷ 3
x = 6"

Check: "3(6) = 18 ✓"

Solving x/a = b:
"x/4 = 15. To ''undo'' dividing by 4, multiply both sides by 4.
x/4 × 4 = 15 × 4
x = 60"

Check: "60/4 = 15 ✓"

Word problems: "Pencils cost $2 each. You spent $14. How many pencils? 2p = 14, so p = 7."

Guided Practice:
Solve equations, check solutions, write and solve from contexts, mixed addition/subtraction/multiplication/division.

Independent Application:
Mixed one-step equations, word problems, error analysis, create equations.

DIFFERENTIATION:

Struggling Learners:
- Visual models for multiplication
- Inverse operation reference
- One type at a time
- Simple whole number solutions
- Always check

Advanced Learners:
- Fractional solutions
- Decimal coefficients
- Complex word problems
- Mix all four operations
- Preview two-step equations

ASSESSMENT INDICATORS:
- Solves correctly
- Uses inverse operations
- Checks solutions
- Writes equations from contexts
- Solves mixed one-step equations

VOCABULARY:
equation, solve, coefficient, inverse operation, divide, multiply, substitute

CONNECTION TO FUTURE LEARNING:
These equations are essential for multi-step equations and algebraic modeling.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Multiplication and Division Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Writing and Graphing Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing and Graphing Inequalities' AND grade_level_min = 6),
  'Writing and Graphing Inequalities Topic Guide',
  'Comprehensive teaching approach for inequality concepts',
  'WRITING AND GRAPHING INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand comparison symbols, work with number lines, solve one-step equations, and translate verbal phrases to math.

LEARNING OBJECTIVES:
Students will understand inequality as representing a range of values, use symbols <, >, ≤, ≥ correctly, write inequalities from verbal descriptions, graph inequalities on number lines, and interpret inequality solutions in context.

KEY CONCEPTS:
1. Inequalities show relationships other than equality
2. < means less than, > means greater than
3. ≤ means less than or equal, ≥ means greater than or equal
4. Open circle for < or >, closed circle for ≤ or ≥
5. Infinitely many solutions, not just one

COMMON MISCONCEPTIONS:
- Confusing < and > directions
- Forgetting when to use open vs closed circles
- Thinking inequality has one solution like equation
- Difficulty translating "at least" and "at most"
- Reversing inequality when graphing

TEACHING SEQUENCE:

Hook/Engagement:
"A roller coaster requires height of at least 48 inches. How do we express this mathematically? h ≥ 48. Many heights work, not just one!"

Direct Instruction:
Symbols and meanings:
- x < 5: x is less than 5 (values smaller than 5)
- x > 5: x is greater than 5 (values larger than 5)
- x ≤ 5: x is less than or equal to 5 (5 included)
- x ≥ 5: x is greater than or equal to 5 (5 included)

Graphing:
- x < 5: Open circle at 5, shade left
- x ≥ 5: Closed circle at 5, shade right

Translations:
- "At least 48" → ≥ 48
- "At most 100" → ≤ 100
- "More than 10" → > 10
- "Fewer than 5" → < 5

Guided Practice:
Write inequalities, graph on number lines, translate verbal descriptions, interpret in context.

Independent Application:
Mixed writing and graphing, real-world constraints, create inequality situations, compare representations.

DIFFERENTIATION:

Struggling Learners:
- Memorize "less than" opens left
- Practice open vs closed extensively
- Simple integer inequalities
- Real-world contexts
- Check by testing values

Advanced Learners:
- Compound inequalities
- Solve simple inequalities
- Write and graph from complex contexts
- Explore "and" vs "or" inequalities
- Connect to real constraints

ASSESSMENT INDICATORS:
- Uses symbols correctly
- Graphs accurately
- Translates verbal phrases
- Interprets solutions
- Uses open/closed circles correctly

VOCABULARY:
inequality, less than, greater than, at least, at most, boundary, open circle, closed circle, solution set

CONNECTION TO FUTURE LEARNING:
Inequalities are essential for solving inequality problems, systems of inequalities, and constraint modeling.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing and Graphing Inequalities' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- ============================================
-- GEOMETRY UNIT
-- ============================================

-- Area of Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Triangles' AND grade_level_min = 6),
  'Area of Triangles Topic Guide',
  'Comprehensive teaching approach for triangle area formula',
  'AREA OF TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should find area of rectangles, understand base and height, identify right angles, and work with formulas.

LEARNING OBJECTIVES:
Students will use the formula A = 1/2 × base × height, identify base and height correctly, apply formula to any triangle orientation, solve real-world problems, and understand why the formula works.

KEY CONCEPTS:
1. Area = (1/2) × base × height or A = bh/2
2. Height must be perpendicular to the base
3. Any side can be the base (with corresponding height)
4. Triangle is half of a parallelogram with same base and height
5. Height may be inside or outside the triangle

COMMON MISCONCEPTIONS:
- Using the slant side as height
- Forgetting to multiply by 1/2
- Not identifying perpendicular height
- Confusion with obtuse triangles (height outside)
- Using legs of right triangle for all triangles

TEACHING SEQUENCE:

Hook/Engagement:
"A rectangle has area 40 sq units. I cut it diagonally into two triangles. What''s each triangle''s area? 20 sq units! That''s half the rectangle. Let''s explore this relationship."

Direct Instruction:
Derive the formula: "A triangle is half a parallelogram (or rectangle). Rectangle area = b × h. Triangle area = (1/2) × b × h."

Base and height: "The height is ALWAYS perpendicular to the base. It makes a 90° angle."

Different orientations: Show triangles with various bases and corresponding heights. Verify same area with any base-height pair.

Obtuse triangles: "Sometimes the height is drawn outside the triangle, extended from the base."

Examples: Calculate areas, identify base and height in various configurations.

Guided Practice:
Apply formula, identify base-height pairs, calculate areas, real-world applications.

Independent Application:
Mixed problems, find missing dimensions, real-world contexts, composite figures with triangles.

DIFFERENTIATION:

Struggling Learners:
- Focus on right triangles first
- Highlight the height as perpendicular
- Draw height on every triangle
- Use grid paper
- Simple dimensions

Advanced Learners:
- Multiple base-height pairs
- Coordinate plane triangles
- Find base or height given area
- Composite figures
- Connect to parallelogram area

ASSESSMENT INDICATORS:
- Applies formula correctly
- Identifies base and height
- Handles various orientations
- Explains why formula works
- Solves real-world problems

VOCABULARY:
area, base, height, perpendicular, formula, half, square units

CONNECTION TO FUTURE LEARNING:
Triangle area is foundational for areas of polygons, surface area, and trigonometry.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Triangles' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Nets and Surface Area
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Nets and Surface Area' AND grade_level_min = 6),
  'Nets and Surface Area Topic Guide',
  'Comprehensive teaching approach for 3D figure surface area',
  'NETS AND SURFACE AREA - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should find area of rectangles and triangles, understand 3D shapes, identify faces of polyhedra, and add areas.

LEARNING OBJECTIVES:
Students will draw and identify nets for prisms and pyramids, calculate surface area from nets, apply formulas for surface area, solve real-world problems, and connect 2D and 3D representations.

KEY CONCEPTS:
1. A net is a 2D pattern that folds into a 3D shape
2. Surface area = sum of all face areas
3. Prisms have rectangular faces; pyramids have triangular faces
4. Surface area is measured in square units
5. Multiple valid nets exist for each 3D shape

COMMON MISCONCEPTIONS:
- Confusing surface area with volume
- Missing faces when counting
- Counting shared edges twice
- Difficulty visualizing 3D from 2D
- Errors in individual face calculations

TEACHING SEQUENCE:

Hook/Engagement:
"How much wrapping paper do you need for a gift box? That''s surface area! If you unfold the box flat, you get a net—let''s explore!"

Direct Instruction:
Nets: "A net is what you get if you cut along edges and unfold a 3D shape. It''s a flat pattern."

Show nets for: cubes, rectangular prisms, triangular prisms, pyramids.

Surface area: "Add the areas of all faces."

Rectangular prism: "Has 6 faces. Top and bottom, front and back, left and right. SA = 2(lw) + 2(lh) + 2(wh)"

Calculate from net: Find area of each face, add all.

Guided Practice:
Draw nets, calculate surface area from nets, apply formulas, identify all faces.

Independent Application:
Mixed 3D shapes, real-world applications (wrapping, painting), design nets, composite figures.

DIFFERENTIATION:

Struggling Learners:
- Physical nets to fold
- Focus on rectangular prisms
- Draw and label all faces
- Organize calculations
- Check face count

Advanced Learners:
- Complex pyramids
- Triangular prisms
- Create multiple nets for same shape
- Design packaging
- Composite solids

ASSESSMENT INDICATORS:
- Draws accurate nets
- Calculates all face areas
- Finds total surface area
- Uses formulas appropriately
- Solves real-world problems

VOCABULARY:
net, surface area, face, prism, pyramid, unfold, square units, lateral faces

CONNECTION TO FUTURE LEARNING:
Surface area understanding supports 3D geometry, packaging design, and engineering applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Nets and Surface Area' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- ============================================
-- STATISTICS AND PROBABILITY UNIT
-- ============================================

-- Measures of Center
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Measures of Center' AND grade_level_min = 6),
  'Measures of Center Topic Guide',
  'Comprehensive teaching approach for mean, median, mode',
  'MEASURES OF CENTER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should order numbers, add and divide, understand data sets, and find averages informally.

LEARNING OBJECTIVES:
Students will calculate mean, median, and mode, understand when each measure is appropriate, compare measures for the same data, interpret measures in context, and recognize effects of outliers.

KEY CONCEPTS:
1. Mean: sum of values divided by count (average)
2. Median: middle value when ordered
3. Mode: most frequent value (can be multiple or none)
4. Different measures can give different "centers"
5. Outliers affect mean more than median

COMMON MISCONCEPTIONS:
- Thinking mean, median, mode are always equal
- Not ordering data for median
- Forgetting to divide by n for mean
- Confusion when no mode or multiple modes
- Not considering which measure is appropriate

TEACHING SEQUENCE:

Hook/Engagement:
"Five students scored: 70, 75, 80, 85, 100. The mean is 82, but the median is 80. Which better represents the ''typical'' score? Let''s explore measures of center!"

Direct Instruction:
Mean: "Add all values, divide by count. For 2, 4, 6, 8, 10: Sum = 30, Count = 5, Mean = 6."

Median: "Order the data, find the middle. For 5 values, median is the 3rd. For even count, average the two middle values."

Mode: "Most frequent value. Data: 3, 5, 5, 7, 9. Mode = 5. Can have no mode, one mode, or multiple modes."

When to use each:
- Mean: when data is symmetric, no outliers
- Median: when outliers exist or data is skewed
- Mode: for categorical data or when most common is important

Guided Practice:
Calculate all three measures, compare for same data, discuss appropriateness, analyze effect of outliers.

Independent Application:
Real data sets, choose appropriate measure, compare measures, interpret in context.

DIFFERENTIATION:

Struggling Learners:
- One measure at a time
- Small data sets
- Step-by-step process
- Focus on ordering for median
- Simple data first

Advanced Learners:
- Large data sets
- Missing value problems
- Compare distributions
- Create data sets with specific properties
- Weighted averages

ASSESSMENT INDICATORS:
- Calculates mean correctly
- Finds median with ordering
- Identifies mode(s)
- Chooses appropriate measure
- Explains effects of outliers

VOCABULARY:
mean, median, mode, average, measure of center, outlier, data set, order

CONNECTION TO FUTURE LEARNING:
Measures of center are foundational for statistics, data analysis, and understanding distributions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measures of Center' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Box Plots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Box Plots' AND grade_level_min = 6),
  'Box Plots Topic Guide',
  'Comprehensive teaching approach for box and whisker plots',
  'BOX PLOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should find median, order data sets, understand quartiles informally, and interpret number lines.

LEARNING OBJECTIVES:
Students will find the five-number summary, construct box plots accurately, interpret box plots, compare data sets using box plots, and identify outliers.

KEY CONCEPTS:
1. Five-number summary: min, Q1, median, Q3, max
2. Q1 is median of lower half, Q3 is median of upper half
3. The box shows the middle 50% of data
4. Whiskers extend to min and max
5. IQR = Q3 - Q1 measures spread

COMMON MISCONCEPTIONS:
- Confusing Q1 and Q3
- Including median when finding Q1 and Q3
- Thinking box size relates to number of values
- Not using a number line scale
- Misinterpreting whisker length

TEACHING SEQUENCE:

Hook/Engagement:
"How can we show the spread of test scores with just one picture? Box plots compress all the data into five key numbers that tell a powerful story!"

Direct Instruction:
Find the five-number summary:
Data: 2, 4, 5, 7, 8, 9, 10, 12, 15
1. Order data (done)
2. Min = 2, Max = 15
3. Median = 8 (middle value)
4. Q1 = median of 2, 4, 5, 7 = 4.5
5. Q3 = median of 9, 10, 12, 15 = 11

Construct: Draw number line. Mark all five values. Draw box from Q1 to Q3. Line at median. Whiskers to min and max.

Interpret: "The box shows where the middle 50% of data falls. Longer whisker = more spread on that side."

Compare: Overlay two box plots to compare distributions.

Guided Practice:
Find five-number summaries, construct box plots, interpret given plots, compare distributions.

Independent Application:
Create box plots for real data, compare groups, interpret in context, identify outliers.

DIFFERENTIATION:

Struggling Learners:
- Step-by-step checklist
- Small odd-numbered data sets
- Emphasize ordering first
- Template for construction
- One skill at a time

Advanced Learners:
- Large data sets
- Outlier identification
- Compare multiple distributions
- Create data matching given box plot
- Real-world statistical analysis

ASSESSMENT INDICATORS:
- Finds five-number summary
- Constructs accurate box plots
- Interprets plots correctly
- Compares distributions
- Uses appropriate scale

VOCABULARY:
box plot, five-number summary, minimum, maximum, median, quartile, Q1, Q3, IQR, whisker

CONNECTION TO FUTURE LEARNING:
Box plots are essential for data analysis, comparing distributions, and understanding data spread.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Box Plots' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;
