-- Grade 7 Math Topic Prompts
-- Comprehensive teaching guides for each Grade 7 Math topic

-- ============================================================================
-- UNIT: The Number System
-- ============================================================================

-- Topic: Integer Operations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Integer Operations' AND grade_level_min = 7),
  'Integer Operations Topic Guide',
  'Comprehensive teaching approach for integer operations',
  'INTEGER OPERATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand whole number operations (addition, subtraction, multiplication, division), the concept of negative numbers on a number line, and basic understanding of opposites. They should be comfortable with the idea that numbers extend below zero.

LEARNING OBJECTIVES:
Students will add integers using number line models and rules. Students will subtract integers by adding the opposite. Students will multiply and divide integers using sign rules. Students will solve real-world problems involving integer operations.

KEY CONCEPTS:
1. Adding integers with the same sign: add absolute values, keep the sign
2. Adding integers with different signs: subtract absolute values, take sign of larger absolute value
3. Subtracting integers: add the opposite (change subtraction to addition and change sign of second number)
4. Multiplying/dividing integers: same signs give positive result, different signs give negative result
5. Zero pairs: a positive and its opposite combine to make zero
6. Real-world contexts where integers are used (temperature, elevation, money, scores)

COMMON MISCONCEPTIONS:
- Thinking "two negatives make a positive" always (only true for multiplication/division, not addition)
- Confusing subtraction and the negative sign
- Believing larger looking numbers are always larger (-10 is less than -2)
- Forgetting that subtracting a negative is adding a positive
- Mixing up rules between addition and multiplication

TEACHING SEQUENCE:
Hook/Engagement: Use a football analogy - gaining yards is positive, losing yards is negative. Calculate final position after multiple plays. Or use temperature changes throughout a day.

Direct Instruction: Begin with number line representations for addition. Model adding same-sign integers by moving in the same direction. Model different-sign integers by moving in opposite directions. Introduce zero pairs with physical manipulatives (two-color counters). For subtraction, demonstrate how adding the opposite gives the same result. For multiplication/division, pattern building: 3×2=6, 3×1=3, 3×0=0, 3×(-1)=?, discovering the pattern.

Guided Practice: Work through problems systematically - first with number lines, then transitioning to mental rules. Practice identifying which operation to use in word problems. Use think-alouds to model decision making.

Independent Application: Students solve real-world scenarios involving integer operations - bank accounts (deposits/withdrawals), temperature changes, elevation changes, golf scores (over/under par).

DIFFERENTIATION:
Struggling Learners: Continue using number line models longer, provide integer operation reference cards with rules, use more concrete manipulatives like two-color counters, focus on one operation at a time before mixing.
Advanced Learners: Work with larger integers, explore order of operations with integers, investigate patterns in integer operations, create their own real-world problems.

ASSESSMENT INDICATORS:
Students can correctly perform all four operations with integers without a number line. Students can explain why rules work using number line or counter models. Students correctly apply integer operations to word problems.

VOCABULARY:
Integer, absolute value, opposite, additive inverse, positive, negative, zero pair

CONNECTION TO FUTURE LEARNING:
This directly prepares students for operations with all rational numbers, solving equations with negative solutions, and algebraic manipulation in later grades.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Integer Operations' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Rational Number Operations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rational Number Operations' AND grade_level_min = 7),
  'Rational Number Operations Topic Guide',
  'Comprehensive teaching approach for rational number operations',
  'RATIONAL NUMBER OPERATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have mastered integer operations and their sign rules, fraction operations (adding, subtracting, multiplying, dividing fractions), decimal operations, and converting between fractions and decimals.

LEARNING OBJECTIVES:
Students will add and subtract rational numbers including negative fractions and decimals. Students will multiply and divide rational numbers. Students will apply properties of operations to simplify expressions with rational numbers. Students will solve real-world problems involving rational number operations.

KEY CONCEPTS:
1. Rational numbers include all numbers that can be written as a/b where b≠0 (fractions, decimals, integers)
2. Sign rules for integer operations extend to all rational numbers
3. Adding/subtracting rational numbers requires common denominators (for fractions) or aligned place values (for decimals)
4. Multiplying fractions: multiply numerators and denominators, then apply sign rules
5. Dividing fractions: multiply by reciprocal, then apply sign rules
6. Properties (commutative, associative, distributive) work with rational numbers

COMMON MISCONCEPTIONS:
- Forgetting to consider signs when working with fractions
- Thinking negative fractions are written only as -a/b (could also be a/-b)
- Not finding common denominators before adding/subtracting
- Confusing "divide by a fraction" with "multiply by a fraction"
- Assuming decimals and fractions follow different rules (they follow the same rules)

TEACHING SEQUENCE:
Hook/Engagement: Present a stock market scenario where stocks gain and lose fractional amounts over several days. Calculate the total change. This connects to real applications of positive and negative rational numbers.

Direct Instruction: Review fraction operations with positive numbers first. Then introduce negative fractions through number line placement. Show that -1/2, 1/-2, and -(1/2) all represent the same value. Extend sign rules learned with integers to fractions and decimals. Practice with increasingly complex problems.

Guided Practice: Work through mixed problems including both fractions and decimals with various signs. Emphasize checking reasonableness of answers (is the sign correct? Is the magnitude reasonable?). Include problems that require converting between forms.

Independent Application: Students work on real-world scenarios: cooking with fractional measurements (reducing recipes by 1/3), temperature changes in decimals, financial calculations with decimals, science measurements requiring fraction/decimal operations.

DIFFERENTIATION:
Struggling Learners: Separate the fraction/decimal skills from the sign rules initially, provide visual fraction models, use calculators for computation while focusing on sign determination, give step-by-step procedure cards.
Advanced Learners: Work with complex fractions (fractions within fractions), explore repeating decimals and their fraction equivalents, investigate irrational versus rational numbers, solve multi-step problems.

ASSESSMENT INDICATORS:
Students correctly perform operations with any combination of positive and negative fractions and decimals. Students can explain their process for determining the sign of answers. Students convert between forms strategically to simplify calculations.

VOCABULARY:
Rational number, reciprocal, absolute value, common denominator, equivalent fractions, terminating decimal, repeating decimal

CONNECTION TO FUTURE LEARNING:
This mastery is essential for all algebraic work, solving equations with fractional coefficients, scientific calculations, and work with the real number system.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rational Number Operations' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Fraction-Decimal-Percent Conversions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fraction-Decimal-Percent Conversions' AND grade_level_min = 7),
  'Fraction-Decimal-Percent Conversions Topic Guide',
  'Comprehensive teaching approach for converting between fractions, decimals, and percents',
  'FRACTION-DECIMAL-PERCENT CONVERSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand fractions as division, place value for decimals, the meaning of percent as "per hundred," and basic equivalent fractions. They should be able to perform division with decimals.

LEARNING OBJECTIVES:
Students will convert fluently between fractions, decimals, and percents. Students will recognize common equivalents automatically. Students will choose the most useful form for a given context. Students will compare and order numbers in different forms.

KEY CONCEPTS:
1. A fraction represents division: a/b = a ÷ b
2. Decimals are fractions with denominators of 10, 100, 1000, etc.
3. Percent means "per 100" so 25% = 25/100 = 0.25
4. To convert fraction to decimal: divide numerator by denominator
5. To convert decimal to percent: multiply by 100 (move decimal point 2 places right)
6. To convert percent to fraction: write over 100 and simplify
7. Common equivalents: 1/2=0.5=50%, 1/4=0.25=25%, 3/4=0.75=75%, 1/5=0.2=20%

COMMON MISCONCEPTIONS:
- Moving the decimal point the wrong direction when converting
- Forgetting to simplify fractions after converting from percent
- Confusing 1/3 = 0.33 (thinking it equals 33% exactly instead of 33.33...%)
- Not understanding that the same value can look different in each form
- Thinking percent must be a whole number

TEACHING SEQUENCE:
Hook/Engagement: Present a sale advertisement with discounts in different forms - "25% off," "1/3 off," "0.30 off per dollar." Which is the best deal? Students need conversion skills to compare.

Direct Instruction: Build a conversion chart with benchmark fractions students already know. Show the connection between the three forms visually using hundred grids. Demonstrate conversion procedures with clear steps. Emphasize that these are the same value in different clothes.

Guided Practice: Practice conversions in all directions. Play matching games connecting equivalent values. Sort numbers given in mixed forms from least to greatest. Discuss when each form is most useful (fractions for cooking, percents for discounts, decimals for money).

Independent Application: Students analyze real-world situations requiring conversions: sales tax calculations, recipe adjustments, test scores as percents, batting averages as decimals. Create a personal reference card of common conversions.

DIFFERENTIATION:
Struggling Learners: Focus on benchmark fractions first before tackling all fractions, use visual hundred grids, provide a conversion procedure reference card, allow calculator use for division while focusing on the process.
Advanced Learners: Work with fractions that create repeating decimals, explore percents greater than 100% and less than 1%, investigate why some fractions terminate and others repeat, apply to compound conversions.

ASSESSMENT INDICATORS:
Students instantly recognize common equivalents (halves, quarters, fifths, tenths). Students can convert any fraction to decimal or percent and vice versa. Students choose appropriate form for given contexts and explain their reasoning.

VOCABULARY:
Fraction, decimal, percent, equivalent, terminating decimal, repeating decimal, benchmark, ratio

CONNECTION TO FUTURE LEARNING:
This fluency is essential for percent problems (tax, tip, interest), probability expressions, statistics, and real-world mathematical literacy throughout life.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fraction-Decimal-Percent Conversions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Absolute Value
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value' AND grade_level_min = 7),
  'Absolute Value Topic Guide',
  'Comprehensive teaching approach for absolute value concepts',
  'ABSOLUTE VALUE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand integers and their placement on a number line, the concept of opposites, and be comfortable with positive and negative numbers.

LEARNING OBJECTIVES:
Students will understand absolute value as distance from zero on the number line. Students will evaluate absolute value expressions. Students will interpret absolute value in real-world contexts. Students will compare and order numbers using absolute value.

KEY CONCEPTS:
1. Absolute value is the distance from zero on a number line
2. Distance is always non-negative, so absolute value is always positive or zero
3. Notation: |x| means "the absolute value of x"
4. |a| = |-a| for any number (opposites have the same absolute value)
5. |0| = 0
6. Absolute value represents magnitude without direction

COMMON MISCONCEPTIONS:
- Thinking absolute value means "make it positive" (rather than understanding it as distance)
- Believing |-5| = -5 (the bars don''t just remove the negative sign for some numbers)
- Confusing absolute value with finding the opposite
- Not understanding that |x| can equal x when x is already positive
- Thinking absolute value changes the original number (it doesn''t; it describes a property)

TEACHING SEQUENCE:
Hook/Engagement: Discuss distance from home - if you walk 5 blocks east and your friend walks 5 blocks west, you''ve both walked the same distance (5 blocks) even though you went in opposite directions. This is absolute value.

Direct Instruction: Use the number line to show that distance from zero is counted in positive units regardless of direction. Demonstrate that |-7| = 7 and |7| = 7 because both are 7 units from zero. Introduce notation and practice reading it aloud ("the absolute value of negative seven"). Extend to comparing numbers by their absolute values.

Guided Practice: Evaluate absolute value expressions starting with single numbers, then with expressions inside the bars. Order numbers by their absolute value versus their actual value (important distinction). Discuss real-world contexts: How far away? How much debt? How cold below zero?

Independent Application: Students solve problems involving distance and magnitude - comparing temperatures, analyzing debt amounts, calculating distances traveled in opposite directions, understanding "how far from the target" in games.

DIFFERENTIATION:
Struggling Learners: Emphasize the number line model repeatedly, use physical movement (walking toward/away from a starting point), focus on "distance from zero" language, practice with integers before fractions/decimals.
Advanced Learners: Explore absolute value equations (|x| = 5 has two solutions), graph y = |x|, investigate absolute value inequalities, connect to distance formula concepts.

ASSESSMENT INDICATORS:
Students correctly evaluate absolute value expressions. Students explain absolute value as distance from zero. Students apply absolute value to real-world contexts appropriately. Students distinguish between absolute value and the original number.

VOCABULARY:
Absolute value, distance, magnitude, number line, opposite, positive, zero

CONNECTION TO FUTURE LEARNING:
Absolute value is foundational for distance calculations, error analysis, absolute value equations and inequalities in algebra, and the concept of magnitude in physics and other sciences.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Ratios and Proportional Relationships
-- ============================================================================

-- Topic: Unit Rates
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Unit Rates' AND grade_level_min = 7),
  'Unit Rates Topic Guide',
  'Comprehensive teaching approach for unit rates including complex fractions',
  'UNIT RATES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand ratios as comparisons of two quantities, be able to simplify fractions, perform division with decimals, and understand the concept of rate as a ratio comparing different units.

LEARNING OBJECTIVES:
Students will compute unit rates including those involving complex fractions. Students will compare rates to determine the better value or faster speed. Students will solve real-world problems involving unit rates. Students will understand that unit rates describe the relationship between two quantities.

KEY CONCEPTS:
1. A unit rate has a denominator of 1 (miles per hour, cost per item, etc.)
2. To find a unit rate: divide to get a denominator of 1
3. Unit rates make comparison easier (comparing "per one" amounts)
4. Complex fractions can be simplified to find unit rates: (1/2 mile)/(1/4 hour) = 2 mph
5. Unit rates can be expressed with either quantity as the "1" (3 apples per dollar OR $0.33 per apple)
6. Constant of proportionality is the unit rate in a proportional relationship

COMMON MISCONCEPTIONS:
- Dividing in the wrong order when finding unit rates
- Not recognizing when a complex fraction is needed
- Confusing "per" with which quantity should be 1
- Thinking unit rates must result in whole numbers
- Not labeling units in answers

TEACHING SEQUENCE:
Hook/Engagement: Present a shopping comparison: Store A sells 3 bottles for $5, Store B sells 5 bottles for $8. Which is the better deal? Students often try to compare directly without finding unit rates.

Direct Instruction: Define unit rate and show how dividing creates a denominator of 1. Practice with simple unit rates first. Introduce complex fraction unit rates: If you travel 1/2 mile in 1/4 hour, how fast are you going? Model dividing fractions (multiply by reciprocal) to simplify. Emphasize labeling with appropriate units.

Guided Practice: Work through various rate scenarios - speed, pricing, density. Practice expressing rates both ways (price per item AND items per dollar). Compare rates to make decisions. Include complex fractions in practice.

Independent Application: Students analyze real data - comparing cell phone plans, calculating gas mileage, determining best buys at a grocery store, comparing typing speeds. Make decisions based on unit rate analysis.

DIFFERENTIATION:
Struggling Learners: Start with whole number unit rates only, use ratio tables to build understanding, provide templates for setting up rate problems, focus on "per one" language.
Advanced Learners: Explore rates with complex fractions extensively, investigate rates that require unit conversions, analyze multi-step rate problems, explore connections to slope.

ASSESSMENT INDICATORS:
Students correctly calculate unit rates including those with fractions. Students use appropriate units in their answers. Students compare unit rates to make informed decisions. Students interpret unit rates in context.

VOCABULARY:
Unit rate, rate, ratio, complex fraction, per, constant of proportionality, comparison

CONNECTION TO FUTURE LEARNING:
Unit rates connect directly to slope in linear equations, proportional reasoning in science, and financial literacy calculations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Unit Rates' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Proportions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Proportions' AND grade_level_min = 7),
  'Proportions Topic Guide',
  'Comprehensive teaching approach for setting up and solving proportions',
  'PROPORTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand ratios and equivalent ratios, be able to find unit rates, perform cross multiplication, and solve one-step equations.

LEARNING OBJECTIVES:
Students will determine if two ratios form a proportion. Students will set up proportions from word problems. Students will solve proportions using cross multiplication and other methods. Students will apply proportions to solve real-world problems.

KEY CONCEPTS:
1. A proportion is an equation stating two ratios are equal: a/b = c/d
2. Cross products of a proportion are equal: ad = bc
3. Proportions can be solved by: cross multiplication, scaling, finding unit rates
4. Setting up proportions correctly requires matching units (top-to-top, bottom-to-bottom)
5. Proportional relationships have a constant ratio (constant of proportionality)
6. Checking proportionality: simplify ratios or check if cross products are equal

COMMON MISCONCEPTIONS:
- Setting up proportions with mismatched units (mixing what goes on top versus bottom)
- Cross multiplying when ratios are NOT proportional
- Thinking cross multiplication creates a new equation (it''s just a solving technique)
- Not checking if an answer is reasonable
- Confusing additive and multiplicative relationships

TEACHING SEQUENCE:
Hook/Engagement: Present a recipe that serves 4 people. Your family has 6 people. How do you adjust each ingredient? This natural context introduces proportional reasoning.

Direct Instruction: Start with equivalent ratios and show these form proportions. Demonstrate multiple solution methods: scaling (multiply both parts of ratio by same number), finding unit rate then multiplying, cross multiplication. Emphasize setting up proportions with clear labeling. Show how to check if two ratios are proportional.

Guided Practice: Work through problems that require setting up proportions from context. Practice identifying what quantity is unknown and where it goes. Solve using different methods and verify answers. Compare efficiency of different methods for different problems.

Independent Application: Students solve real-world proportion problems: scaling recipes, calculating distances on maps, converting measurements, determining project costs based on rate, similar figures applications.

DIFFERENTIATION:
Struggling Learners: Use ratio tables as a visual organizer, provide templates for setting up proportions with labeled blanks, focus on one solution method initially, check answers by substitution.
Advanced Learners: Explore inverse proportions, work with multi-step proportion problems, investigate when proportions are inappropriate, connect to percent problems and rate problems.

ASSESSMENT INDICATORS:
Students correctly set up proportions with proper alignment of units. Students solve proportions accurately using appropriate methods. Students verify solutions by checking cross products. Students apply proportions correctly to various real-world contexts.

VOCABULARY:
Proportion, ratio, cross products, cross multiplication, equivalent ratios, constant of proportionality, scale factor

CONNECTION TO FUTURE LEARNING:
Proportions are fundamental to similar figures, scale drawings, percent problems, linear equations, and scientific formulas.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Proportions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Scale Drawings
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scale Drawings' AND grade_level_min = 7),
  'Scale Drawings Topic Guide',
  'Comprehensive teaching approach for scale drawings and scale factors',
  'SCALE DRAWINGS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand proportions and be able to solve them, work with measurement units, perform multiplication and division with decimals, and understand the concept of similarity.

LEARNING OBJECTIVES:
Students will interpret scales on maps and blueprints. Students will calculate actual dimensions from scale drawings. Students will calculate scaled dimensions from actual measurements. Students will understand how area changes with scale factor (square of the linear scale factor).

KEY CONCEPTS:
1. Scale relates dimensions on a drawing to actual dimensions
2. Scale can be written as a ratio (1:100), in words (1 inch = 10 feet), or as a fraction (1/100)
3. To find actual dimension: multiply scale dimension by scale factor
4. To find scale dimension: divide actual dimension by scale factor
5. All dimensions use the same scale factor
6. When length scales by k, area scales by k²

COMMON MISCONCEPTIONS:
- Multiplying when they should divide (or vice versa)
- Not converting units before applying scale
- Thinking area scales the same as length (if length doubles, area quadruples)
- Confusing scale drawing dimensions with actual dimensions
- Not maintaining consistent units

TEACHING SEQUENCE:
Hook/Engagement: Show a map and ask students to find the actual distance between two cities. Or show a house blueprint and discuss how we can know room sizes from a small drawing.

Direct Instruction: Explain what a scale represents - it''s a proportion between drawing and reality. Demonstrate reading and interpreting different scale formats. Model finding actual dimensions: set up proportion or multiply by scale factor. Model finding scale dimensions: set up proportion or divide by scale factor. Introduce the area connection with a clear example (doubling length means 4 times the area).

Guided Practice: Work with various scales: maps with distance scales, blueprints with different formats, toy models. Practice both directions (drawing to actual, actual to drawing). Calculate areas using scale factors and verify the k² relationship.

Independent Application: Students create scale drawings of familiar spaces (bedroom, classroom), calculate actual sizes from map distances for a trip, or work with model building scales. Analyze architectural blueprints or video game map designs.

DIFFERENTIATION:
Struggling Learners: Use consistent scale format initially, provide calculation templates, use graph paper to visualize scaling, focus on one direction at a time before reversing.
Advanced Learners: Explore scales with different units (1 inch = 100 miles), work with enlargement and reduction, investigate volume scaling (k³), design their own scale drawings.

ASSESSMENT INDICATORS:
Students correctly interpret scales in various formats. Students calculate actual and scaled dimensions accurately. Students explain why area scales differently than length. Students apply scale reasoning to solve real-world problems.

VOCABULARY:
Scale, scale factor, scale drawing, blueprint, proportion, ratio, actual dimension, scaled dimension, similar

CONNECTION TO FUTURE LEARNING:
Scale drawings connect to similarity in geometry, dilations as transformations, modeling in science, and practical applications in architecture, engineering, and design.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scale Drawings' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Percent Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Percent Problems' AND grade_level_min = 7),
  'Percent Problems Topic Guide',
  'Comprehensive teaching approach for tax, tip, markup, discount, and percent change',
  'PERCENT PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand percent as "per hundred," convert between percents, decimals, and fractions fluently, set up and solve proportions, and understand the concept of finding a part of a whole.

LEARNING OBJECTIVES:
Students will calculate tax, tip, and total cost. Students will calculate discount and sale price. Students will calculate percent increase and percent decrease. Students will solve multi-step percent problems. Students will apply percents to real-world financial situations.

KEY CONCEPTS:
1. Percent equation: part = percent × whole (p = r × w)
2. Finding total after increase: original × (1 + rate) or add original + increase
3. Finding total after decrease: original × (1 - rate) or subtract original - decrease
4. Percent change = (change ÷ original) × 100
5. Markup is percent increase from cost; markdown/discount is percent decrease from original price
6. Tax and tip are calculated on different bases (tax on price, tip often on pre-tax subtotal)

COMMON MISCONCEPTIONS:
- Adding percent to original without calculating the actual amount first
- Confusing what the "whole" is when calculating percent change
- Thinking 30% off and then 20% more off equals 50% off (it doesn''t)
- Calculating percent change as (new - old)/new instead of (new - old)/old
- Not distinguishing between finding the part vs. finding the percent

TEACHING SEQUENCE:
Hook/Engagement: Present a restaurant receipt scenario - meal costs $45, need to calculate 8% tax and 18% tip. What''s the total? Do you tip on the pre-tax amount? Real financial literacy matters.

Direct Instruction: Review the percent equation in its three forms (find part, find percent, find whole). Build specific applications: tax = price × tax rate, discount = original × discount rate, sale price = original - discount. Introduce percent change formula with clear examples of increase and decrease. Show the efficient method: multiplying by (1 + r) or (1 - r).

Guided Practice: Work through various scenarios systematically: shopping with sales tax, restaurant bills with tip, store discounts, finding original price before sale, calculating percent change in prices. Practice multi-step problems combining concepts.

Independent Application: Students analyze real advertisements to calculate final prices, compare sales to determine best deals, calculate total cost of purchases including tax, and explore investment growth through percent increase.

DIFFERENTIATION:
Struggling Learners: Use the straightforward two-step method (find amount, then add/subtract), provide formula reference cards, work with friendly percents (10%, 25%, 50%) before others, use calculators for computation while focusing on setup.
Advanced Learners: Work with successive percent changes, explore compound interest, analyze commission structures, investigate how percent changes compound over time.

ASSESSMENT INDICATORS:
Students correctly calculate tax, tip, discounts, and markups. Students distinguish between finding sale price vs. finding original price. Students calculate percent change accurately. Students solve multi-step percent problems with appropriate reasoning.

VOCABULARY:
Tax, tip, gratuity, markup, discount, markdown, sale price, original price, percent change, percent increase, percent decrease

CONNECTION TO FUTURE LEARNING:
These skills are essential for financial literacy, compound interest and exponential growth, scientific percent applications, and everyday consumer mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Percent Problems' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Expressions and Equations
-- ============================================================================

-- Topic: Simplifying Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simplifying Expressions' AND grade_level_min = 7),
  'Simplifying Expressions Topic Guide',
  'Comprehensive teaching approach for combining like terms and distributive property',
  'SIMPLIFYING EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand variables represent unknown values, perform operations with integers and rational numbers, understand the concept of "terms" in an expression, and have basic familiarity with algebraic notation.

LEARNING OBJECTIVES:
Students will identify like terms in an expression. Students will combine like terms to simplify expressions. Students will apply the distributive property to expand expressions. Students will combine distributive property with combining like terms to fully simplify.

KEY CONCEPTS:
1. Terms are separated by addition and subtraction
2. Like terms have the same variable raised to the same power (3x and 5x are like; 3x and 3x² are not)
3. Constants are like terms with other constants
4. Distributive property: a(b + c) = ab + ac
5. The distributive property works with subtraction: a(b - c) = ab - ac
6. Order of simplifying: distribute first, then combine like terms

COMMON MISCONCEPTIONS:
- Thinking 3x and 3 are like terms (they are not)
- Combining unlike terms (2x + 3y = 5xy is incorrect)
- Forgetting to distribute to all terms inside parentheses
- Sign errors when distributing a negative: -2(x - 3) = -2x - 6 is wrong
- Thinking x + x = x² (it equals 2x)

TEACHING SEQUENCE:
Hook/Engagement: Use a real-world grouping example - you have 3 boxes of x apples and 5 boxes of x apples, how many boxes of x apples total? This naturally introduces combining like terms.

Direct Instruction: Define terms and identify what makes terms "like." Use algebra tiles or visual models to show combining. Demonstrate that combining like terms is the distributive property in reverse: 3x + 5x = (3 + 5)x = 8x. Introduce distributive property with area models. Show the full simplification process with multi-step examples.

Guided Practice: Practice identifying like terms first. Combine like terms in progressively complex expressions. Apply distributive property, then combine. Work with negative coefficients and the distributive property. Emphasize writing steps clearly.

Independent Application: Simplify expressions that represent real situations - perimeters of figures with variable sides, combining costs, simplified expressions from geometric relationships.

DIFFERENTIATION:
Struggling Learners: Use algebra tiles extensively, color-code like terms, provide a checklist for simplification steps, start with expressions containing only one variable before mixing.
Advanced Learners: Simplify expressions with multiple variables, work with exponents, explore factoring as the reverse of distribution, simplify more complex expressions with nested parentheses.

ASSESSMENT INDICATORS:
Students correctly identify and combine like terms. Students apply the distributive property without sign errors. Students simplify multi-step expressions completely. Students justify their steps using properties.

VOCABULARY:
Term, like terms, coefficient, constant, variable, expression, distributive property, simplify, expand

CONNECTION TO FUTURE LEARNING:
These skills are essential for solving equations, working with polynomials, and all algebraic manipulation in higher mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simplifying Expressions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Solving Two-Step Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Two-Step Equations' AND grade_level_min = 7),
  'Solving Two-Step Equations Topic Guide',
  'Comprehensive teaching approach for solving equations in the form px + q = r',
  'SOLVING TWO-STEP EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand the concept of an equation as a balance, solve one-step equations fluently, perform operations with integers and rational numbers, and understand inverse operations.

LEARNING OBJECTIVES:
Students will solve equations in the form px + q = r. Students will solve equations requiring multiple steps. Students will check solutions by substitution. Students will write and solve equations from word problems.

KEY CONCEPTS:
1. An equation states that two expressions are equal
2. What you do to one side, you must do to the other (balance concept)
3. Inverse operations undo each other (addition/subtraction, multiplication/division)
4. General strategy: undo addition/subtraction first, then undo multiplication/division (work "outward")
5. Goal: isolate the variable on one side of the equation
6. Checking: substitute the solution back into the original equation

COMMON MISCONCEPTIONS:
- Performing operations on only one side
- Doing operations in the wrong order (dividing before subtracting)
- Sign errors when subtracting from both sides
- Forgetting that dividing by a coefficient applies to the entire side
- Not checking solutions, leading to undetected errors

TEACHING SEQUENCE:
Hook/Engagement: Present a mystery number problem: "I''m thinking of a number. If I double it and add 5, I get 17. What''s my number?" This naturally leads to 2x + 5 = 17.

Direct Instruction: Review one-step equations briefly. Introduce two-step equations with the balance model - use a physical balance or visual representation. Demonstrate the strategy: identify what operations are applied to the variable, then undo them in reverse order. Model solving with clear justification for each step. Always check by substitution.

Guided Practice: Solve equations with positive and negative values. Practice equations with the variable term needing addition or subtraction. Include equations with fractional or decimal coefficients. Write equations from word problems and solve.

Independent Application: Students write and solve equations from real contexts: "The cost of 3 tickets plus a $5 fee is $32, find the ticket price." Apply to age problems, geometry problems (perimeter equations), and real-world pricing scenarios.

DIFFERENTIATION:
Struggling Learners: Use algebra tiles or balance models, provide equation-solving templates with spaces for each step, start with positive whole number solutions, emphasize the "check your work" step.
Advanced Learners: Solve equations with variables on both sides (preview), work with more complex coefficients, solve and graph inequalities, explore systems of equations.

ASSESSMENT INDICATORS:
Students correctly solve two-step equations with various number types. Students justify each step using mathematical reasoning. Students check solutions and interpret in context. Students translate word problems into equations and solve.

VOCABULARY:
Equation, solution, inverse operation, isolate, coefficient, constant, substitute, balance

CONNECTION TO FUTURE LEARNING:
Two-step equations build toward multi-step equations, equations with variables on both sides, systems of equations, and algebraic problem-solving throughout mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Two-Step Equations' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Writing Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Equations' AND grade_level_min = 7),
  'Writing Equations Topic Guide',
  'Comprehensive teaching approach for translating word problems into algebraic equations',
  'WRITING EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand variables represent unknown quantities, know order of operations, be familiar with algebraic notation, and understand equality as a balance statement.

LEARNING OBJECTIVES:
Students will identify the unknown quantity and assign a variable. Students will translate phrases into algebraic expressions. Students will write equations that model real-world situations. Students will write and solve equations to answer questions.

KEY CONCEPTS:
1. Read the problem to identify what is unknown (what are we finding?)
2. Key phrases translate to operations: "more than" (+), "less than" (-), "times" (×), "divided by" (÷)
3. "Is," "equals," "gives," "results in" indicate the equals sign
4. The equation creates a relationship between known and unknown quantities
5. Multiple correct forms may exist for the same situation
6. Context determines what reasonable solutions look like

COMMON MISCONCEPTIONS:
- Reversing order for "less than" (5 less than x is x - 5, not 5 - x)
- Using the wrong operation for misleading language ("twice as much" is multiplication)
- Not defining what the variable represents
- Writing expressions when equations are needed (or vice versa)
- Including units in the equation instead of in the answer

TEACHING SEQUENCE:
Hook/Engagement: Play "algebra translator" - teacher gives phrases, students translate. Start simple: "a number plus 5" becomes "x + 5." Build to full equations: "A number plus 5 equals 12" becomes "x + 5 = 12."

Direct Instruction: Create a reference chart of common phrases and their algebraic translations. Model the problem-reading process: identify unknown, identify relationships, write equation. Work through several examples showing how the same situation can be written different ways. Emphasize defining variables clearly.

Guided Practice: Translate increasingly complex situations. Practice with various contexts: money, age, geometry, distance. Work backwards: given an equation, write a word problem that matches. Compare student translations for the same problem.

Independent Application: Students write equations for real scenarios: planning purchases, calculating times, solving measurement problems. Create their own word problems for classmates to translate and solve.

DIFFERENTIATION:
Struggling Learners: Provide a translation phrase chart, use sentence frames (blank + blank = blank), highlight key words in problems, start with simpler one-step translations.
Advanced Learners: Write equations with multiple unknowns, explore when situations lead to the same equation, write systems of equations for complex scenarios, analyze when problems have no solution or infinite solutions.

ASSESSMENT INDICATORS:
Students correctly identify variables and what they represent. Students translate phrases accurately. Students write equations that correctly model given situations. Students explain their reasoning for equation setup.

VOCABULARY:
Variable, expression, equation, translate, unknown, define, model, relationship

CONNECTION TO FUTURE LEARNING:
Writing equations is foundational for all algebraic modeling, word problems in higher math, creating formulas in science, and mathematical reasoning in real-world applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Equations' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Solving Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Inequalities' AND grade_level_min = 7),
  'Solving Inequalities Topic Guide',
  'Comprehensive teaching approach for solving and graphing one-step and two-step inequalities',
  'SOLVING INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should solve one-step and two-step equations, understand inequality symbols and their meanings, graph numbers on a number line, and work with integers and rational numbers.

LEARNING OBJECTIVES:
Students will solve one-step inequalities. Students will solve two-step inequalities. Students will graph solution sets on number lines. Students will understand when to flip the inequality sign. Students will write and solve inequalities from word problems.

KEY CONCEPTS:
1. Inequality symbols: < (less than), > (greater than), ≤ (less than or equal), ≥ (greater than or equal)
2. Solving inequalities uses the same steps as equations, with one exception
3. Critical rule: when multiplying or dividing by a negative number, flip the inequality sign
4. Solutions to inequalities are sets of numbers, not single values
5. Graphing: open circle for < or >, closed circle for ≤ or ≥, arrow in direction of solutions
6. Check solutions by substituting a value from the solution set

COMMON MISCONCEPTIONS:
- Forgetting to flip the sign when multiplying/dividing by a negative
- Using the wrong circle type (open vs. closed)
- Graphing in the wrong direction
- Thinking inequalities have one solution like equations
- Flipping the sign when adding or subtracting a negative (only flip for multiplication/division)

TEACHING SEQUENCE:
Hook/Engagement: Present a scenario: "You have $50 to spend on shirts that cost $8 each, plus a $10 membership fee. How many shirts can you buy?" This leads to 8x + 10 ≤ 50, introducing inequality in context.

Direct Instruction: Review inequality symbols and their graphical representation. Show that inequality solving follows equation-solving steps. Demonstrate why multiplying by a negative flips the sign (use number line: if 2 < 5, then -2 > -5). Practice graphing solution sets. Model checking solutions by testing a value.

Guided Practice: Solve one-step inequalities first, then two-step. Practice graphing each solution. Include problems that require flipping the sign. Write inequalities from word problems and solve. Verify solutions with substitution.

Independent Application: Apply inequalities to real constraints: budgeting, speed limits, temperature ranges, height requirements. Analyze when inequality solutions make sense in context (can''t buy negative shirts).

DIFFERENTIATION:
Struggling Learners: Use a decision chart (did you multiply/divide by negative?), practice graphing separately from solving, use number line testing to verify solutions, provide worked examples for reference.
Advanced Learners: Solve compound inequalities, explore absolute value inequalities, graph on coordinate planes (linear inequalities preview), analyze systems of inequalities.

ASSESSMENT INDICATORS:
Students correctly solve one-step and two-step inequalities. Students apply the sign-flip rule appropriately. Students accurately graph solution sets. Students interpret solutions in context and verify reasonableness.

VOCABULARY:
Inequality, less than, greater than, less than or equal to, greater than or equal to, solution set, number line, open circle, closed circle

CONNECTION TO FUTURE LEARNING:
Inequalities extend to compound inequalities, systems of inequalities, linear programming, and constraint optimization in advanced mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Inequalities' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Geometry
-- ============================================================================

-- Topic: Circles: Circumference and Area
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Circles: Circumference and Area' AND grade_level_min = 7),
  'Circles: Circumference and Area Topic Guide',
  'Comprehensive teaching approach for calculating circumference and area using pi',
  'CIRCLES: CIRCUMFERENCE AND AREA - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand radius and diameter of circles, multiply with decimals, work with the concept of π (pi), and understand perimeter and area concepts for other shapes.

LEARNING OBJECTIVES:
Students will understand the relationship between circumference and diameter (π). Students will calculate circumference using C = πd or C = 2πr. Students will calculate area using A = πr². Students will solve real-world problems involving circles.

KEY CONCEPTS:
1. π (pi) is the ratio of circumference to diameter, approximately 3.14 or 22/7
2. Circumference = π × diameter = 2 × π × radius (C = πd = 2πr)
3. Area = π × radius² (A = πr²) - remember to square the radius first
4. Diameter = 2 × radius (d = 2r)
5. Pi is irrational - it never terminates or repeats
6. Units: circumference is linear (cm, ft); area is square (cm², ft²)

COMMON MISCONCEPTIONS:
- Squaring the diameter instead of the radius for area
- Confusing circumference and area formulas
- Forgetting to double the radius when using C = πd but given radius
- Squaring π along with the radius (A ≠ (πr)²)
- Using diameter in the area formula without halving it first

TEACHING SEQUENCE:
Hook/Engagement: Have students measure circular objects (cans, lids, plates) and calculate circumference ÷ diameter. They''ll discover all answers are close to 3.14 - this is pi!

Direct Instruction: Explain what pi represents - the universal constant relating circumference to diameter. Derive the formulas from this relationship. Use visual models: unroll the circumference to show it''s about 3.14 diameters. For area, use grid estimation or the rectangle decomposition model. Work examples distinguishing when to use diameter vs. radius.

Guided Practice: Calculate circumference given radius, then given diameter. Calculate area given radius, then given diameter. Solve for missing dimensions when given circumference or area. Work real-world problems (circular gardens, pizza sizes, wheel rotations).

Independent Application: Students design circular objects (pools, fountains, gardens) with specific constraints. Calculate fencing needed for circular areas, find areas for painting circular surfaces, compare pizza sizes and prices.

DIFFERENTIATION:
Struggling Learners: Provide formula reference cards, use calculators for π calculations, focus on radius problems before introducing diameter, use color-coding to distinguish circumference and area problems.
Advanced Learners: Find areas of sectors and arc lengths, explore composite figures with circles, investigate the relationship between area and circumference derivatives, work backwards from area to radius.

ASSESSMENT INDICATORS:
Students correctly apply circumference and area formulas. Students distinguish between when to use diameter and radius. Students use appropriate units (linear vs. square). Students solve multi-step circle problems.

VOCABULARY:
Circle, radius, diameter, circumference, area, pi (π), center, chord, arc, sector

CONNECTION TO FUTURE LEARNING:
Circle concepts extend to sphere calculations, trigonometry, arc length and sector area, and applications in physics and engineering.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Circles: Circumference and Area' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Angle Relationships
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angle Relationships' AND grade_level_min = 7),
  'Angle Relationships Topic Guide',
  'Comprehensive teaching approach for supplementary, complementary, and vertical angles',
  'ANGLE RELATIONSHIPS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand what angles are and how to measure them, classify angles as acute, right, obtuse, and straight, solve one-step equations, and recognize perpendicular and parallel lines.

LEARNING OBJECTIVES:
Students will identify and use complementary angles (sum to 90°). Students will identify and use supplementary angles (sum to 180°). Students will identify and use vertical angles (are equal). Students will solve for unknown angles using angle relationships. Students will apply angle relationships in geometric figures.

KEY CONCEPTS:
1. Complementary angles: two angles whose sum is 90°
2. Supplementary angles: two angles whose sum is 180°
3. Vertical angles: opposite angles formed by intersecting lines; they are always equal
4. Adjacent angles: angles that share a vertex and a side
5. Linear pair: adjacent angles that form a straight line (are supplementary)
6. These relationships allow us to find unknown angles without measuring

COMMON MISCONCEPTIONS:
- Thinking complementary/supplementary angles must be adjacent
- Confusing complementary (90°) with supplementary (180°)
- Thinking any two angles that look equal are vertical angles
- Adding instead of setting equal for vertical angles
- Not recognizing angle relationships in complex figures

TEACHING SEQUENCE:
Hook/Engagement: Show intersecting roads or railroad tracks. Ask: "If we know one angle, can we figure out the others without measuring?" Introduce the power of angle relationships.

Direct Instruction: Define each relationship with clear visuals. Demonstrate complementary angles in right angle corners. Show supplementary angles as linear pairs. Prove vertical angles are equal by using supplementary relationships. Model setting up and solving equations to find unknown angles.

Guided Practice: Identify angle relationships in various figures. Write and solve equations for unknown angles. Work with multiple intersecting lines. Find all angles when given just one measurement. Apply to real-world contexts (architecture, design).

Independent Application: Analyze geometric figures and find all missing angles. Design patterns using angle relationships. Solve problems involving parallel lines cut by a transversal (introduction). Apply to real structures and art.

DIFFERENTIATION:
Struggling Learners: Use color-coding for different angle relationships, provide reference cards with definitions and diagrams, practice identification before calculation, use angle measuring tools to verify.
Advanced Learners: Explore parallel lines and transversals, work with angles in polygons, investigate angle relationships in three dimensions, prove angle relationships algebraically.

ASSESSMENT INDICATORS:
Students correctly identify angle relationships by type. Students write and solve equations for unknown angles. Students apply multiple relationships within a single figure. Students explain why vertical angles are equal.

VOCABULARY:
Complementary angles, supplementary angles, vertical angles, adjacent angles, linear pair, angle measure, intersecting lines, transversal

CONNECTION TO FUTURE LEARNING:
Angle relationships are essential for geometry proofs, parallel line properties, polygon angle sums, trigonometry, and real-world measurement applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angle Relationships' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Surface Area and Volume
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area and Volume' AND grade_level_min = 7),
  'Surface Area and Volume Topic Guide',
  'Comprehensive teaching approach for surface area and volume of prisms and cylinders',
  'SURFACE AREA AND VOLUME - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should calculate area of rectangles, triangles, and circles, understand what three-dimensional shapes are, work with formulas involving multiple operations, and distinguish between 2D area and 3D volume concepts.

LEARNING OBJECTIVES:
Students will understand the difference between surface area and volume. Students will calculate surface area of prisms and cylinders. Students will calculate volume of prisms and cylinders. Students will solve real-world problems involving 3D measurements.

KEY CONCEPTS:
1. Volume measures the space inside a 3D figure (cubic units)
2. Surface area measures the total area of all outside faces (square units)
3. Volume of prism = Base area × height (V = Bh)
4. Volume of cylinder = π × radius² × height (V = πr²h)
5. Surface area of prism = sum of all face areas = 2B + Ph (P = perimeter of base)
6. Surface area of cylinder = 2πr² + 2πrh (two circles + rectangle)

COMMON MISCONCEPTIONS:
- Confusing surface area and volume
- Using incorrect base when calculating volume (the base is the shape that defines the prism type)
- Forgetting to include all faces in surface area
- Squaring all dimensions for volume instead of just area
- Using linear units instead of square (for SA) or cubic (for volume) units

TEACHING SEQUENCE:
Hook/Engagement: Compare two gift boxes - which needs more wrapping paper (surface area) and which holds more stuff (volume)? Connect to real decisions about packaging, storage, and construction.

Direct Instruction: Distinguish between surface area (how much material to cover) and volume (how much it holds). For prisms, unfold to nets to see all faces for surface area. Demonstrate volume as stacking base layers. For cylinders, show the "label" is a rectangle with length = circumference. Work examples of both calculations.

Guided Practice: Calculate surface area and volume of rectangular prisms, triangular prisms, and cylinders. Work problems where students must choose which measurement is needed. Given volume or surface area, find missing dimensions.

Independent Application: Design containers with specific volumes, calculate paint needed for cylindrical structures, determine soil for garden beds, compare packaging efficiency, analyze storage capacities.

DIFFERENTIATION:
Struggling Learners: Use physical models and nets extensively, separate surface area and volume lessons initially, provide formula reference sheets, use calculators for computation while focusing on setup.
Advanced Learners: Work with composite solids, explore optimization (minimize surface area for given volume), calculate frustum volumes, investigate Cavalieri''s principle.

ASSESSMENT INDICATORS:
Students correctly choose between surface area and volume based on context. Students calculate both measurements accurately for prisms and cylinders. Students use appropriate units. Students solve multi-step problems involving 3D figures.

VOCABULARY:
Surface area, volume, prism, cylinder, base, height, net, lateral area, face, edge, vertex, cubic units, square units

CONNECTION TO FUTURE LEARNING:
These concepts extend to spheres, cones, pyramids, composite solids, and applications in science (density), engineering (capacity), and design.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area and Volume' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Geometric Transformations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Geometric Transformations' AND grade_level_min = 7),
  'Geometric Transformations Topic Guide',
  'Comprehensive teaching approach for rotations, reflections, and translations',
  'GEOMETRIC TRANSFORMATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should plot points on the coordinate plane, understand coordinate notation (x, y), recognize congruent figures, and understand basic geometric vocabulary (vertex, side, angle).

LEARNING OBJECTIVES:
Students will perform translations (slides) on the coordinate plane. Students will perform reflections (flips) across axes and other lines. Students will perform rotations (turns) around a point. Students will identify transformations that produce congruent figures. Students will describe transformations using coordinate notation.

KEY CONCEPTS:
1. Translation: sliding every point the same distance and direction; (x, y) → (x + a, y + b)
2. Reflection: flipping across a line (line of symmetry); across x-axis: (x, y) → (x, -y); across y-axis: (x, y) → (-x, y)
3. Rotation: turning around a fixed point; 90° counterclockwise about origin: (x, y) → (-y, x)
4. All three transformations preserve size and shape (produce congruent images)
5. The original figure is the pre-image; the result is the image
6. Prime notation: A maps to A'' (A-prime)

COMMON MISCONCEPTIONS:
- Confusing reflection with rotation
- Reflecting across wrong axis
- Rotating in wrong direction (clockwise vs. counterclockwise)
- Moving only some vertices when all must transform
- Not understanding that transformations apply to entire figures

TEACHING SEQUENCE:
Hook/Engagement: Show real-world examples: tile patterns use translations, mirrors show reflections, door hinges demonstrate rotations. Connect math to the visual world.

Direct Instruction: Define each transformation with physical demonstrations. Use patty paper or transparent sheets for hands-on exploration. Develop coordinate rules for each transformation systematically. Show how to verify transformations preserve congruence. Practice reading and writing transformation notation.

Guided Practice: Apply each transformation to simple figures on coordinate planes. Describe transformations in words and coordinate notation. Identify which transformation was used given pre-image and image. Perform sequences of transformations.

Independent Application: Create tessellation patterns using transformations. Analyze symmetry in art, architecture, and nature. Describe real-world transformations mathematically. Design logos or patterns using transformations.

DIFFERENTIATION:
Struggling Learners: Use tracing paper for physical transformations, focus on one transformation type at a time, provide coordinate rule reference cards, work on grid paper before moving to coordinate notation.
Advanced Learners: Explore composition of transformations, investigate which combinations result in a single transformation, work with rotations around points other than origin, explore transformation matrices.

ASSESSMENT INDICATORS:
Students correctly perform all three transformation types. Students use proper notation and terminology. Students identify transformations from images. Students verify congruence is preserved.

VOCABULARY:
Transformation, translation, reflection, rotation, pre-image, image, congruent, line of reflection, center of rotation, slide, flip, turn

CONNECTION TO FUTURE LEARNING:
Transformations lead to dilations (scaling), transformation matrices, similarity, symmetry in geometry, and applications in computer graphics and animation.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Geometric Transformations' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Statistics and Probability
-- ============================================================================

-- Topic: Measures of Center
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Measures of Center' AND grade_level_min = 7),
  'Measures of Center Topic Guide',
  'Comprehensive teaching approach for calculating and comparing mean, median, and mode',
  'MEASURES OF CENTER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should add, subtract, and divide whole numbers and decimals, understand data sets and how to organize them, order numbers from least to greatest, and have basic experience with finding averages.

LEARNING OBJECTIVES:
Students will calculate mean, median, and mode for a data set. Students will interpret what each measure tells about the data. Students will choose the most appropriate measure for a given situation. Students will understand how outliers affect different measures.

KEY CONCEPTS:
1. Mean: sum of values divided by number of values (average); affected by every value
2. Median: middle value when data is ordered; if even number of values, average the two middle
3. Mode: most frequent value; there can be none, one, or multiple modes
4. Outliers significantly affect the mean but not the median
5. Skewed data often makes median more representative than mean
6. Each measure answers a different question about "typical"

COMMON MISCONCEPTIONS:
- Calculating mean without ordering data (not needed for mean, but students may think so)
- Finding median without ordering data first (must order!)
- Thinking there must be exactly one mode
- Not averaging the two middle values for even-numbered data sets
- Believing mean is always the "best" measure

TEACHING SEQUENCE:
Hook/Engagement: Present a scenario: Five people have incomes of $30K, $35K, $40K, $45K, and $1,000,000. Calculate mean and median. Which better represents the "typical" income? This reveals when each measure is appropriate.

Direct Instruction: Define and calculate each measure step by step. Use physical demonstrations (balancing point for mean, middle person for median). Show how adding an extreme value affects each measure. Discuss real contexts where each is used (mode for shoe sizes, median for home prices, mean for test averages).

Guided Practice: Calculate all three measures for various data sets. Analyze which measure best represents each set. Examine effect of adding outliers. Work backwards: create data sets with specific mean, median, or mode.

Independent Application: Analyze real data sets (test scores, prices, ages). Determine which measure to report and justify choice. Investigate how changing one value affects each measure. Compare measures in misleading statistics examples.

DIFFERENTIATION:
Struggling Learners: Use manipulatives to find median (physical ordering), provide step-by-step calculation guides, start with small data sets, use calculators for mean calculations.
Advanced Learners: Explore weighted means, investigate trimmed means, analyze bimodal distributions, connect to comparing distributions.

ASSESSMENT INDICATORS:
Students correctly calculate all three measures. Students identify the most appropriate measure for context. Students explain how outliers affect each measure. Students interpret measures in real-world situations.

VOCABULARY:
Mean, median, mode, average, outlier, data set, frequency, distribution, typical, center

CONNECTION TO FUTURE LEARNING:
These concepts lead to measures of variability, comparing distributions, sampling and inference, and statistical analysis in all fields.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measures of Center' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Data Variability
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Data Variability' AND grade_level_min = 7),
  'Data Variability Topic Guide',
  'Comprehensive teaching approach for range and understanding how outliers affect data',
  'DATA VARIABILITY - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should calculate measures of center, order data sets from least to greatest, understand what a data set represents, and have experience with number lines and data displays.

LEARNING OBJECTIVES:
Students will calculate range as a measure of spread. Students will identify outliers in a data set. Students will explain how outliers affect measures of center and spread. Students will use variability to compare data sets.

KEY CONCEPTS:
1. Range = maximum value - minimum value; shows spread of data
2. Variability describes how spread out data values are
3. Low variability: values are clustered closely together
4. High variability: values are widely spread apart
5. Outliers are extreme values that are much higher or lower than most data
6. Two data sets can have same mean but very different variability

COMMON MISCONCEPTIONS:
- Thinking range alone is sufficient to describe variability
- Believing larger data sets must have larger ranges
- Confusing variability with number of data points
- Not recognizing how a single outlier dramatically increases range
- Assuming all measures of spread react the same to outliers

TEACHING SEQUENCE:
Hook/Engagement: Compare test scores: Class A has scores 75, 76, 77, 78, 79 while Class B has 50, 65, 77, 89, 94. Both have mean 77 but very different spreads. Which class is more consistent?

Direct Instruction: Define range and demonstrate calculation. Discuss what range tells us (and what it doesn''t). Introduce outliers - values significantly different from the rest. Show how one outlier changes range dramatically. Compare data sets by both center and spread.

Guided Practice: Calculate range for various data sets. Identify outliers in data. Compare data sets with similar centers but different spreads. Describe what variability means in context (consistency, reliability, predictability).

Independent Application: Analyze real data for variability - weather temperatures, sports statistics, test scores. Determine which data sets are more consistent. Investigate effect of removing outliers on range.

DIFFERENTIATION:
Struggling Learners: Focus on ordering data first, use visual representations of spread, practice with small data sets, provide templates for range calculation.
Advanced Learners: Introduce interquartile range (IQR) as more robust measure, explore standard deviation conceptually, investigate formal definitions of outliers (1.5 × IQR rule).

ASSESSMENT INDICATORS:
Students correctly calculate range. Students identify and explain the impact of outliers. Students use variability to compare data sets meaningfully. Students interpret what variability means in real contexts.

VOCABULARY:
Range, variability, spread, outlier, consistent, cluster, maximum, minimum, distribution

CONNECTION TO FUTURE LEARNING:
Variability concepts lead to interquartile range, standard deviation, comparing distributions, and statistical inference.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Data Variability' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Probability Basics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Probability Basics' AND grade_level_min = 7),
  'Probability Basics Topic Guide',
  'Comprehensive teaching approach for theoretical and experimental probability',
  'PROBABILITY BASICS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand fractions and convert them to decimals and percents, use proportional reasoning, identify outcomes in simple events, and understand the concept of fairness in games.

LEARNING OBJECTIVES:
Students will understand probability as a measure of likelihood (0 to 1). Students will calculate theoretical probability for simple events. Students will conduct experiments and calculate experimental probability. Students will compare theoretical and experimental probabilities.

KEY CONCEPTS:
1. Probability measures the likelihood of an event, ranging from 0 (impossible) to 1 (certain)
2. Theoretical probability = number of favorable outcomes / total number of possible outcomes
3. Experimental probability = number of times event occurred / total number of trials
4. More trials make experimental probability closer to theoretical (Law of Large Numbers)
5. Probability can be expressed as fraction, decimal, or percent
6. Sample space is the set of all possible outcomes

COMMON MISCONCEPTIONS:
- Believing past outcomes affect future independent events (gambler''s fallacy)
- Expecting experimental probability to exactly match theoretical
- Thinking probability greater than 1 is possible
- Confusing "unlikely" with "impossible"
- Counting outcomes incorrectly (not considering all possibilities)

TEACHING SEQUENCE:
Hook/Engagement: Ask: "If you flip a coin 10 times, will you get exactly 5 heads?" Discuss predictions, then actually flip coins. Compare results to expectations - introduce the gap between theoretical and experimental probability.

Direct Instruction: Define probability as a ratio. Calculate theoretical probabilities for simple events (dice, coins, spinners). Conduct experiments and track results to calculate experimental probability. Compare and discuss why they differ. Emphasize that more trials reduce the gap.

Guided Practice: Calculate theoretical probabilities for various situations. Run experiments with multiple trials. Express probabilities in different forms. Predict then verify with experiments. Analyze why experimental results vary.

Independent Application: Design probability experiments. Analyze game fairness (is a game equally likely for all players?). Make predictions based on probability. Investigate real-world uses of probability (weather, medicine, sports).

DIFFERENTIATION:
Struggling Learners: Use visual aids like spinner models, work with simple events first (coins, dice), provide fraction-to-percent conversion help, focus on the concept before complex calculations.
Advanced Learners: Explore geometric probability, investigate probability of compound events, analyze dependent vs. independent events, connect to expected value.

ASSESSMENT INDICATORS:
Students correctly calculate theoretical probability. Students conduct experiments and determine experimental probability. Students compare and explain differences between theoretical and experimental. Students interpret probability in real contexts.

VOCABULARY:
Probability, event, outcome, sample space, theoretical probability, experimental probability, trial, favorable outcome, likelihood

CONNECTION TO FUTURE LEARNING:
Probability concepts extend to compound events, conditional probability, expected value, statistical inference, and decision-making.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Probability Basics' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Compound Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Compound Events' AND grade_level_min = 7),
  'Compound Events Topic Guide',
  'Comprehensive teaching approach for probability of compound events using lists, tables, and tree diagrams',
  'COMPOUND EVENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should calculate probability of simple events, understand sample space, work with fractions and multiplication, and organize information systematically.

LEARNING OBJECTIVES:
Students will find the sample space for compound events using lists, tables, and tree diagrams. Students will calculate probability of compound events. Students will distinguish between independent and dependent events. Students will apply compound probability to real situations.

KEY CONCEPTS:
1. Compound events involve two or more simple events
2. Sample space for compound events can be found using organized lists, tables, or tree diagrams
3. For independent events: P(A and B) = P(A) × P(B)
4. Fundamental counting principle: if event A has m outcomes and event B has n outcomes, there are m × n combined outcomes
5. Independent events: outcome of one doesn''t affect the other
6. Dependent events: outcome of first affects probabilities of second

COMMON MISCONCEPTIONS:
- Adding probabilities when should multiply (for "and")
- Not listing all possible outcomes systematically
- Treating dependent events as independent
- Miscounting outcomes in sample space
- Forgetting that probability of "or" is different from "and"

TEACHING SEQUENCE:
Hook/Engagement: Present a menu with 3 main dishes and 4 desserts. How many different meal combinations are possible? This introduces the counting principle naturally.

Direct Instruction: Model three methods for finding sample space: organized list (list all combinations), table (grid showing all combinations), tree diagram (branching showing all paths). Calculate probability from each representation. Introduce independent events (coin flip and die roll) and show multiplication rule. Briefly distinguish dependent events (drawing cards without replacement).

Guided Practice: Create sample spaces using all three methods. Calculate compound probabilities. Determine whether events are independent. Apply to various scenarios: outfit combinations, game outcomes, spinner and coin combinations.

Independent Application: Design games and calculate winning probabilities. Analyze real situations involving compound events. Create problems for classmates. Investigate whether real games are fair.

DIFFERENTIATION:
Struggling Learners: Start with two-event scenarios only, use physical manipulatives (actual coins and dice), focus on tree diagrams as most visual method, practice counting outcomes before calculating probability.
Advanced Learners: Work with three or more events, explore conditional probability, investigate "at least one" problems, connect to permutations and combinations.

ASSESSMENT INDICATORS:
Students create accurate sample spaces using multiple methods. Students correctly calculate compound probabilities. Students identify independent events. Students apply compound probability to solve problems.

VOCABULARY:
Compound event, sample space, tree diagram, independent events, dependent events, fundamental counting principle, outcome, combination

CONNECTION TO FUTURE LEARNING:
These concepts prepare students for advanced probability, combinatorics, expected value, and statistical analysis in higher mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compound Events' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Financial Literacy
-- ============================================================================

-- Topic: Budgeting Basics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Budgeting Basics' AND grade_level_min = 7),
  'Budgeting Basics Topic Guide',
  'Comprehensive teaching approach for creating and balancing personal budgets',
  'BUDGETING BASICS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should add and subtract decimals accurately, work with percents, understand income and expense concepts, and organize information in tables or spreadsheets.

LEARNING OBJECTIVES:
Students will identify sources of income and categories of expenses. Students will create a balanced budget. Students will adjust budgets when income or expenses change. Students will understand the importance of saving.

KEY CONCEPTS:
1. Income is money received (allowance, job, gifts)
2. Expenses are money spent (needs vs. wants)
3. Budget is a plan for how to use money
4. Balanced budget: income ≥ expenses
5. Fixed expenses stay the same (subscription); variable expenses change (food, entertainment)
6. Saving should be treated as a required expense
7. Budget categories help organize and track spending

COMMON MISCONCEPTIONS:
- Thinking a budget restricts rather than empowers
- Forgetting irregular expenses (annual subscriptions, gifts)
- Treating savings as "what''s left over" instead of a priority
- Not distinguishing between needs and wants clearly
- Underestimating variable expenses

TEACHING SEQUENCE:
Hook/Engagement: Present a scenario: You receive $50 per month and want to save for something costing $150 while also covering ongoing expenses. How would you plan? This introduces budgeting as a problem-solving tool.

Direct Instruction: Define income and expenses. Categorize expenses as needs (must have) vs. wants (nice to have), and fixed vs. variable. Demonstrate creating a budget: list income, list expenses by category, compare totals. Show "pay yourself first" - include savings as an expense. Model adjusting a budget when circumstances change.

Guided Practice: Create budgets for various scenarios with given income and expenses. Determine what adjustments are needed when a budget doesn''t balance. Calculate how long it takes to save for goals. Analyze sample budgets for improvements.

Independent Application: Create a personal budget based on real or realistic income/expenses. Plan for a specific savings goal. Analyze trade-offs between different spending choices. Investigate how adults budget for households.

DIFFERENTIATION:
Struggling Learners: Use budget templates with categories filled in, work with round numbers initially, focus on the balancing concept before details, use visual pie charts to show proportions.
Advanced Learners: Include irregular expenses and variable income, explore percentage-based budgeting (50/30/20 rule), investigate compound effects of savings, create digital spreadsheet budgets.

ASSESSMENT INDICATORS:
Students correctly categorize income and expenses. Students create balanced budgets. Students adjust budgets appropriately for changing circumstances. Students explain the importance of savings in a budget.

VOCABULARY:
Budget, income, expense, fixed expense, variable expense, savings, needs, wants, balance, deficit, surplus

CONNECTION TO FUTURE LEARNING:
Budgeting leads to financial planning, interest calculations, investment concepts, and lifelong financial literacy and independence.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Budgeting Basics' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Simple Interest
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simple Interest' AND grade_level_min = 7),
  'Simple Interest Topic Guide',
  'Comprehensive teaching approach for calculating interest using I = prt',
  'SIMPLE INTEREST - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should convert percents to decimals, multiply decimals, solve simple equations, and understand the concept of earning money over time.

LEARNING OBJECTIVES:
Students will understand what interest means (cost of borrowing or reward for saving). Students will calculate simple interest using I = prt. Students will find total amount (principal + interest). Students will solve for missing variables in the simple interest formula.

KEY CONCEPTS:
1. Interest is money paid for using someone else''s money
2. Principal (P) is the original amount borrowed or invested
3. Rate (r) is the percent earned/charged per year (convert to decimal)
4. Time (t) is the length in years
5. Simple interest: I = P × r × t (I = prt)
6. Total amount = Principal + Interest
7. Interest earned (savings) vs. interest paid (loans)

COMMON MISCONCEPTIONS:
- Forgetting to convert percent to decimal before calculating
- Using months instead of years for time (need to convert)
- Confusing interest with total amount
- Thinking interest is only for loans (also applies to savings)
- Not understanding that higher rate OR longer time means more interest

TEACHING SEQUENCE:
Hook/Engagement: Compare two savings accounts: Account A offers 2% interest, Account B offers 3% interest. If you deposit $500 for 3 years, how much more would you earn in Account B? Real money motivates learning the formula.

Direct Instruction: Explain why interest exists (banks pay you to use your money, you pay banks to borrow theirs). Introduce the formula I = prt with clear examples. Practice converting time to years (6 months = 0.5 years). Calculate interest and total amount. Work backwards to find missing values.

Guided Practice: Calculate interest for various scenarios (savings, loans). Find total amounts. Solve for missing variables (find rate, find time, find principal). Compare different options to determine best choice.

Independent Application: Compare savings account offers from different banks. Calculate cost of loans over time. Determine how long to reach savings goals. Analyze real credit card and loan statements.

DIFFERENTIATION:
Struggling Learners: Provide formula reference cards, work with whole number years initially, use calculators for computation, focus on identifying P, r, and t before calculating.
Advanced Learners: Introduce compound interest conceptually, compare simple to compound interest, explore how rate and time interact, investigate real loan scenarios with monthly payments.

ASSESSMENT INDICATORS:
Students correctly identify P, r, and t in problems. Students calculate interest accurately. Students find total amounts. Students solve for missing variables and interpret results in context.

VOCABULARY:
Interest, principal, rate, time, simple interest, compound interest, savings, loan, borrow, invest, annual

CONNECTION TO FUTURE LEARNING:
Simple interest leads to compound interest, exponential growth, loans and mortgages, and financial decision-making throughout life.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simple Interest' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Comparing Costs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Costs' AND grade_level_min = 7),
  'Comparing Costs Topic Guide',
  'Comprehensive teaching approach for using unit prices and ratios to make purchasing decisions',
  'COMPARING COSTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should calculate unit rates, work with ratios and proportions, divide decimals, and understand the concept of "best value."

LEARNING OBJECTIVES:
Students will calculate unit prices to compare costs. Students will determine which option is the better buy. Students will consider factors beyond price when making decisions. Students will apply comparison strategies to real purchasing situations.

KEY CONCEPTS:
1. Unit price is the cost per single unit (ounce, item, etc.)
2. To find unit price: divide total price by quantity
3. Lower unit price usually indicates better value
4. Sometimes buying more isn''t better (waste, storage, freshness)
5. Sales and coupons change the comparison
6. Value includes quality, convenience, and sustainability, not just price

COMMON MISCONCEPTIONS:
- Assuming bigger packages are always better deals
- Forgetting to use the same units when comparing
- Not considering if you''ll actually use the larger quantity
- Ignoring quality differences when only comparing price
- Calculating unit price incorrectly (price per unit, not units per dollar)

TEACHING SEQUENCE:
Hook/Engagement: Show two cereal boxes: 12 oz for $3.60 and 18 oz for $4.86. Which is the better buy? Many students guess the larger is better, but calculation reveals the truth. Sometimes the smaller is cheaper per ounce.

Direct Instruction: Define unit price and demonstrate calculation. Practice comparing products with different sizes and prices. Discuss when unit price alone doesn''t determine best choice (need, quality, waste). Introduce considering sales, coupons, and store brands. Model a complete purchasing decision with multiple factors.

Guided Practice: Calculate unit prices for various products. Compare options and justify recommendations. Factor in sales and discounts. Consider scenarios where larger isn''t better. Analyze real grocery store pricing.

Independent Application: Plan a shopping trip with a budget using unit price comparisons. Investigate price differences between stores. Analyze packaging sizes to find best values. Create a "smart shopper" guide.

DIFFERENTIATION:
Struggling Learners: Use calculators for division, work with simple quantities first, provide templates for unit price calculation, compare only two items at a time initially.
Advanced Learners: Include coupons and percentage discounts, analyze "buy one get one" deals, investigate psychological pricing strategies, explore bulk buying economics.

ASSESSMENT INDICATORS:
Students correctly calculate unit prices. Students identify better buys using unit price comparison. Students consider factors beyond price when appropriate. Students explain their purchasing recommendations.

VOCABULARY:
Unit price, unit rate, comparison shopping, value, bulk, discount, sale price, cost-effective

CONNECTION TO FUTURE LEARNING:
Comparison skills apply to major purchases (cars, homes), investment comparisons, cost-benefit analysis, and lifelong consumer decision-making.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Costs' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;
