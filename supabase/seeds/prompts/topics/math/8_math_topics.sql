-- Grade 8 Math Topic Prompts
-- Comprehensive teaching guides for each Grade 8 Math topic

-- ============================================================================
-- UNIT: The Number System
-- ============================================================================

-- Topic: Rational Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rational Numbers' AND grade_level_min = 8),
  'Rational Numbers Topic Guide',
  'Comprehensive teaching approach for understanding rational numbers',
  'RATIONAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand fractions, decimals, and their equivalence, perform operations with positive and negative numbers, know divisibility rules, and understand the concept of integers on a number line.

LEARNING OBJECTIVES:
Students will define rational numbers as numbers expressible as a/b where b≠0. Students will convert between fraction, decimal, and percent representations. Students will identify terminating and repeating decimals. Students will understand why all rational numbers are either terminating or repeating decimals.

KEY CONCEPTS:
1. A rational number can be written as a ratio of two integers p/q where q≠0
2. All integers are rational (any integer n = n/1)
3. Terminating decimals occur when denominator has only factors of 2 and 5
4. Repeating decimals can be converted to fractions using algebraic techniques
5. The set of rational numbers is closed under addition, subtraction, multiplication, and division
6. Rational numbers are dense - between any two rational numbers is another rational

COMMON MISCONCEPTIONS:
- Thinking all decimals are rational (irrational numbers also have decimal forms)
- Believing repeating decimals are not exact values
- Not recognizing that integers and whole numbers are also rational
- Thinking 0.999... is not equal to 1 (it is equal to 1)
- Confusing rational with "reasonable" in everyday language

TEACHING SEQUENCE:
Hook/Engagement: Ask students to name a number that cannot be written as a fraction. Most will struggle or give incorrect examples. This introduces the question: "What numbers CAN be written as fractions?"

Direct Instruction: Define rational numbers formally with the p/q definition. Show how integers, fractions, terminating decimals, and repeating decimals are all rational. Demonstrate converting a repeating decimal to a fraction using the algebraic method (e.g., x = 0.333..., 10x = 3.333..., 9x = 3, x = 3/9 = 1/3). Explain why denominators with only 2s and 5s produce terminating decimals.

Guided Practice: Classify numbers as rational and justify. Convert between forms (fraction, decimal, percent). Prove specific decimals are rational by finding their fraction form. Explore patterns in repeating decimals.

Independent Application: Investigate decimal expansions of various fractions. Predict whether a fraction will terminate or repeat. Explore the relationship between rational numbers and measurement in real contexts.

DIFFERENTIATION:
Struggling Learners: Focus on the definition and identification before conversion, use visual number lines, provide conversion procedure cards, work with simple fractions first.
Advanced Learners: Explore the density property, investigate period lengths of repeating decimals, prove properties of rational number operations, begin exploring what makes a number irrational.

ASSESSMENT INDICATORS:
Students correctly identify rational numbers. Students convert between fraction and decimal forms. Students explain why a number is or is not rational. Students understand the terminating/repeating decimal connection.

VOCABULARY:
Rational number, ratio, terminating decimal, repeating decimal, integer, numerator, denominator, closed set, dense set

CONNECTION TO FUTURE LEARNING:
This foundation is essential for understanding irrational numbers, the real number system, algebraic expressions with rational coefficients, and advanced mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rational Numbers' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Irrational Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Irrational Numbers' AND grade_level_min = 8),
  'Irrational Numbers Topic Guide',
  'Comprehensive teaching approach for understanding irrational numbers',
  'IRRATIONAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand rational numbers and their properties, know perfect squares, perform operations with square roots, and understand decimals including repeating decimals.

LEARNING OBJECTIVES:
Students will understand that irrational numbers cannot be expressed as p/q. Students will recognize common irrational numbers (√2, π, e). Students will understand that irrational numbers have non-terminating, non-repeating decimals. Students will approximate irrational numbers with rational numbers.

KEY CONCEPTS:
1. Irrational numbers cannot be written as a ratio of integers
2. The decimal expansion never terminates AND never repeats
3. √n is irrational when n is not a perfect square
4. π (pi) is irrational - approximately 3.14159...
5. Irrational numbers exist on the number line between rational numbers
6. We can approximate irrationals to any desired precision

COMMON MISCONCEPTIONS:
- Thinking π = 22/7 exactly (22/7 is only an approximation)
- Believing a long decimal like 0.123456789101112... might eventually repeat
- Thinking we can write the "full" decimal expansion of an irrational number
- Confusing √4 (which equals 2, rational) with √5 (irrational)
- Believing irrational means the number doesn''t make sense

TEACHING SEQUENCE:
Hook/Engagement: Challenge students: "Draw a square with area 2 square units. What is the side length?" They discover √2 ≈ 1.414... is the exact answer, but cannot be written as a fraction. This is mind-expanding.

Direct Instruction: Define irrational numbers as real numbers that are not rational. Present the classic proof that √2 is irrational (proof by contradiction). Show π''s decimal expansion going on without pattern. Distinguish between non-perfect square roots (irrational) and perfect square roots (rational). Demonstrate approximating irrationals on a number line.

Guided Practice: Classify numbers as rational or irrational with justification. Locate irrational numbers on number lines by approximation. Compare irrational numbers using decimal approximations. Explore operations with irrationals.

Independent Application: Investigate irrational numbers in geometry (diagonal of a square, circle calculations). Research the history of π and √2. Calculate and explore decimal expansions of various square roots.

DIFFERENTIATION:
Struggling Learners: Focus on recognition rather than proofs, use calculators to explore decimal patterns, emphasize common examples (π, √2), provide clear criteria for classification.
Advanced Learners: Explore proof of √2 irrationality in depth, investigate transcendental vs. algebraic irrationals, explore continued fractions, research the history of mathematical controversies about irrationals.

ASSESSMENT INDICATORS:
Students correctly classify numbers as irrational. Students explain why perfect squares yield rational roots and non-perfect squares yield irrational roots. Students approximate irrational numbers. Students understand irrationals exist between rationals.

VOCABULARY:
Irrational number, non-terminating, non-repeating, perfect square, square root, pi (π), approximation, real number

CONNECTION TO FUTURE LEARNING:
Understanding irrationals is essential for the complete real number system, geometry involving circles and diagonals, trigonometry, and advanced algebra and analysis.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Irrational Numbers' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: The Real Number System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'The Real Number System' AND grade_level_min = 8),
  'The Real Number System Topic Guide',
  'Comprehensive teaching approach for classifying real numbers',
  'THE REAL NUMBER SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand natural numbers, whole numbers, integers, rational numbers, and have been introduced to irrational numbers. They should understand number line representations.

LEARNING OBJECTIVES:
Students will understand the hierarchy of number sets. Students will classify any real number into appropriate sets. Students will understand that real numbers = rational ∪ irrational. Students will represent real numbers on the number line.

KEY CONCEPTS:
1. Natural numbers (N): 1, 2, 3, 4, ... (counting numbers)
2. Whole numbers (W): 0, 1, 2, 3, ... (naturals plus zero)
3. Integers (Z): ..., -2, -1, 0, 1, 2, ... (positive and negative whole numbers)
4. Rational numbers (Q): all numbers expressible as p/q where q≠0
5. Irrational numbers: real numbers that are not rational
6. Real numbers (R): all rational and irrational numbers combined
7. Each set is a subset of the next: N ⊂ W ⊂ Z ⊂ Q ⊂ R

COMMON MISCONCEPTIONS:
- Thinking zero is not a real number
- Believing negative fractions are irrational
- Confusing the terms "number" and "integer"
- Not understanding subset relationships (e.g., all integers are rational)
- Thinking irrational numbers are not "real"

TEACHING SEQUENCE:
Hook/Engagement: Create a family tree analogy - just as a person can be a daughter, a student, and a citizen simultaneously, a number can belong to multiple sets. The number 5 is natural, whole, an integer, rational, AND real.

Direct Instruction: Build the number system diagram (nested ovals or Venn diagram showing inclusions). Start from natural numbers and expand each set. Clarify that real numbers fill the entire number line with no gaps. Contrast with imaginary numbers (brief mention - √-1 is NOT real).

Guided Practice: Classify given numbers into all applicable sets. Determine which sets a number does NOT belong to. Create Venn diagrams with numbers placed correctly. Identify the "smallest" set containing a given number.

Independent Application: Research the historical development of number systems. Investigate why each expansion was needed (negatives for debt, fractions for measurement, irrationals for geometry). Create classification activities for classmates.

DIFFERENTIATION:
Struggling Learners: Use a clear visual hierarchy diagram, provide classification flowcharts, focus on concrete examples before abstract classification, use color-coding for different number sets.
Advanced Learners: Explore complex numbers and where they fit, investigate cardinality of different infinite sets, research number systems used in other cultures, explore algebraic vs. transcendental numbers.

ASSESSMENT INDICATORS:
Students correctly classify numbers into all applicable sets. Students explain subset relationships. Students place numbers correctly on number system diagrams. Students identify the most specific classification for any real number.

VOCABULARY:
Natural numbers, whole numbers, integers, rational numbers, irrational numbers, real numbers, subset, set, classification, hierarchy

CONNECTION TO FUTURE LEARNING:
This classification system is foundational for understanding domains in algebra, function analysis, complex numbers, and mathematical proof techniques.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Real Number System' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Approximating Square Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Approximating Square Roots' AND grade_level_min = 8),
  'Approximating Square Roots Topic Guide',
  'Comprehensive teaching approach for estimating square roots of non-perfect squares',
  'APPROXIMATING SQUARE ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should know perfect squares through at least 15², understand what square roots represent, locate numbers on a number line, and understand estimation and approximation concepts.

LEARNING OBJECTIVES:
Students will estimate square roots of non-perfect squares using perfect squares as benchmarks. Students will place irrational square roots on a number line. Students will use successive approximation to refine estimates. Students will verify estimates by squaring.

KEY CONCEPTS:
1. Every non-perfect square has a square root between two consecutive integers
2. To estimate √n, find perfect squares that n falls between
3. If a² < n < b², then a < √n < b
4. Closer inspection reveals which integer the root is closer to
5. Successive approximation: try a decimal, square it, adjust
6. Calculator values are approximations too (decimals are truncated)

COMMON MISCONCEPTIONS:
- Thinking √50 is halfway between √49 and √64 (it''s between 7 and 8, but closer to 7)
- Believing calculator answers are exact for irrationals
- Not understanding that squaring the estimate should give approximately the original number
- Forgetting perfect squares when estimating
- Assuming square roots always give "nice" decimal answers

TEACHING SEQUENCE:
Hook/Engagement: Present a problem: You have 50 square tiles to make the largest square possible. What size square can you make and how many tiles remain? This leads to exploring √50.

Direct Instruction: Review perfect squares as benchmarks. Show the estimation process: √50 is between √49=7 and √64=8, so 7 < √50 < 8. Demonstrate that since 50 is much closer to 49, √50 is closer to 7. Teach successive approximation: try 7.1, square to get 50.41, adjust down to 7.07, square to get 49.98. Show placing estimates on a number line.

Guided Practice: Estimate square roots of various non-perfect squares. Place estimates on number lines. Use successive approximation to find values to the nearest tenth, then hundredth. Verify by squaring estimates.

Independent Application: Apply to real problems: What''s the side length of a square with area 75 square units? Estimate distances using the distance formula. Explore geometric applications requiring square root approximation.

DIFFERENTIATION:
Struggling Learners: Provide a perfect squares reference chart, use number lines prominently, focus on identifying the two integers first before refining, use calculators to check estimates.
Advanced Learners: Develop the Babylonian method (Newton''s method for square roots), explore cube root estimation, investigate why the algorithm works, research historical approximation methods.

ASSESSMENT INDICATORS:
Students identify the two consecutive integers between which a square root falls. Students estimate square roots to the nearest tenth. Students verify estimates by squaring. Students explain their estimation reasoning.

VOCABULARY:
Square root, perfect square, estimate, approximate, benchmark, successive approximation, non-perfect square, irrational

CONNECTION TO FUTURE LEARNING:
These skills apply to the distance formula, Pythagorean theorem applications, quadratic equations, and numerical methods in advanced mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Approximating Square Roots' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Comparing Real Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Real Numbers' AND grade_level_min = 8),
  'Comparing Real Numbers Topic Guide',
  'Comprehensive teaching approach for ordering and comparing rational and irrational numbers',
  'COMPARING REAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand rational and irrational numbers, know how to convert between fractions and decimals, estimate square roots, and understand inequality symbols and number line placement.

LEARNING OBJECTIVES:
Students will compare real numbers in various forms (fractions, decimals, roots, π expressions). Students will order sets of real numbers from least to greatest. Students will place real numbers on a number line. Students will use approximations to compare irrationals.

KEY CONCEPTS:
1. All real numbers can be placed on a single number line
2. To compare numbers in different forms, convert to a common form (usually decimals)
3. Irrational numbers can be compared using rational approximations
4. √2 ≈ 1.414, √3 ≈ 1.732, π ≈ 3.14159 are useful benchmarks
5. When comparing expressions with irrationals, estimation is key
6. Density: between any two real numbers, there are infinitely many others

COMMON MISCONCEPTIONS:
- Thinking fractions are always smaller than whole numbers
- Believing √9 and √10 are equally spaced on the number line
- Using "close enough" approximations that lead to wrong comparisons
- Forgetting that π/2 < 2 since π ≈ 3.14, not exactly 3
- Assuming longer decimals are larger numbers

TEACHING SEQUENCE:
Hook/Engagement: Present a challenge: Order these from least to greatest: √10, π, 3.2, 10/3. This requires different strategies for different number types.

Direct Instruction: Review strategies for comparing fractions and decimals. Introduce the strategy of converting to decimals for comparison. Practice approximating irrational numbers for comparison purposes. Demonstrate placing mixed sets of numbers on a number line. Show how to handle expressions involving π and roots.

Guided Practice: Compare pairs of numbers using appropriate strategies. Order sets of mixed-form real numbers. Place numbers on number lines. Determine which number is larger given expressions like 2√3 vs. √11.

Independent Application: Create "mystery number" challenges where classmates must identify a number from its relationship to others. Analyze sports statistics or other real data involving various number forms. Investigate where famous irrationals fall relative to simple fractions.

DIFFERENTIATION:
Struggling Learners: Provide decimal conversion charts, use calculators for approximations, start with pairs before ordering sets, emphasize the number line as the ultimate tool.
Advanced Learners: Compare expressions without calculating (e.g., √50 vs. 3√6), explore bounds on expressions, investigate when exact comparison is possible vs. when approximation is needed.

ASSESSMENT INDICATORS:
Students correctly compare numbers in various forms. Students order mixed sets of real numbers. Students accurately place numbers on number lines. Students justify their comparison strategies.

VOCABULARY:
Compare, order, number line, inequality, approximation, benchmark, greater than, less than, between

CONNECTION TO FUTURE LEARNING:
Comparing real numbers is essential for solving inequalities, analyzing functions, understanding limits, and mathematical reasoning throughout algebra and beyond.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Real Numbers' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Expressions and Equations
-- ============================================================================

-- Topic: Integer Exponents
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Integer Exponents' AND grade_level_min = 8),
  'Integer Exponents Topic Guide',
  'Comprehensive teaching approach for properties of exponents with integer powers',
  'INTEGER EXPONENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand exponents as repeated multiplication, know how to multiply and divide powers with the same base, work with positive exponents, and understand the meaning of reciprocals.

LEARNING OBJECTIVES:
Students will apply the product of powers property: aᵐ × aⁿ = aᵐ⁺ⁿ. Students will apply the quotient of powers property: aᵐ ÷ aⁿ = aᵐ⁻ⁿ. Students will apply the power of a power property: (aᵐ)ⁿ = aᵐⁿ. Students will understand zero and negative exponents.

KEY CONCEPTS:
1. Product of powers: aᵐ × aⁿ = aᵐ⁺ⁿ (add exponents when multiplying same base)
2. Quotient of powers: aᵐ ÷ aⁿ = aᵐ⁻ⁿ (subtract exponents when dividing same base)
3. Power of a power: (aᵐ)ⁿ = aᵐⁿ (multiply exponents)
4. Zero exponent: a⁰ = 1 for any a ≠ 0
5. Negative exponent: a⁻ⁿ = 1/aⁿ (reciprocal)
6. Power of a product: (ab)ⁿ = aⁿbⁿ

COMMON MISCONCEPTIONS:
- Adding bases when multiplying powers (2³ × 3² ≠ 5⁵)
- Multiplying exponents when should add (x² × x³ = x⁶ is wrong)
- Thinking a⁰ = 0 (it equals 1)
- Believing negative exponents create negative numbers
- Applying rules to different bases (2³ × 3² cannot be simplified)

TEACHING SEQUENCE:
Hook/Engagement: Show a pattern: 2³ = 8, 2² = 4, 2¹ = 2, 2⁰ = ?, 2⁻¹ = ?. Students discover that each step divides by 2, revealing 2⁰ = 1 and 2⁻¹ = 1/2.

Direct Instruction: Derive each property from the definition of exponents. Show why aᵐ × aⁿ = aᵐ⁺ⁿ by expanding (a×a×...×a) × (a×a×...×a). Explain why a⁰ = 1 using the pattern approach and the quotient rule. Demonstrate negative exponents as reciprocals. Practice applying multiple properties in combination.

Guided Practice: Simplify expressions using exponent properties. Evaluate numerical expressions with zero and negative exponents. Rewrite expressions with positive exponents only. Identify and correct common errors.

Independent Application: Apply exponent properties to scientific notation. Solve problems involving exponential growth and decay patterns. Simplify complex expressions with multiple operations.

DIFFERENTIATION:
Struggling Learners: Use property reference cards, work with numerical examples before variables, use expanded form to verify rules, practice one property at a time initially.
Advanced Learners: Explore rational exponents (preview), simplify complex expressions with multiple variables, investigate why 0⁰ is undefined, apply to exponential equations.

ASSESSMENT INDICATORS:
Students correctly apply exponent properties to simplify expressions. Students evaluate expressions with zero and negative exponents. Students explain why properties work. Students identify errors in exponent calculations.

VOCABULARY:
Exponent, base, power, product of powers, quotient of powers, power of a power, zero exponent, negative exponent, reciprocal

CONNECTION TO FUTURE LEARNING:
Exponent properties are foundational for scientific notation, exponential functions, logarithms, and polynomial operations in algebra.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Integer Exponents' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Square Roots and Cube Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Square Roots and Cube Roots' AND grade_level_min = 8),
  'Square Roots and Cube Roots Topic Guide',
  'Comprehensive teaching approach for understanding and evaluating roots',
  'SQUARE ROOTS AND CUBE ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand exponents and perfect squares, know multiplication facts for perfect squares, understand the concept of inverse operations, and be familiar with the number line.

LEARNING OBJECTIVES:
Students will understand square roots as the inverse of squaring. Students will evaluate square roots of perfect squares. Students will understand cube roots as the inverse of cubing. Students will evaluate cube roots of perfect cubes. Students will understand when roots are rational versus irrational.

KEY CONCEPTS:
1. Square root: √a = b means b² = a
2. Cube root: ∛a = b means b³ = a
3. Perfect squares have whole number square roots
4. Perfect cubes have whole number cube roots
5. √(negative) is not a real number, but ∛(negative) is real
6. Roots and powers are inverse operations

COMMON MISCONCEPTIONS:
- Thinking √25 = ±5 (principal square root is positive only)
- Believing √(-9) = -3 (negative under square root is not real)
- Confusing √9 with 9/2 = 4.5
- Not recognizing that ∛(-8) = -2 is valid
- Thinking all roots are irrational

TEACHING SEQUENCE:
Hook/Engagement: Present a geometry puzzle: A square has area 49 square feet. What is the side length? Then: A cube has volume 64 cubic inches. What is the edge length? These naturally introduce roots.

Direct Instruction: Define square root as "what number times itself equals this?" Connect to inverse operations (as subtraction undoes addition, roots undo powers). Build a reference chart of perfect squares and their roots. Introduce cube roots with similar approach. Discuss why √(negative) is problematic but ∛(negative) works. Clarify notation: √ means principal (positive) root.

Guided Practice: Evaluate square roots of perfect squares. Evaluate cube roots of perfect cubes. Determine whether given roots are rational or irrational. Simplify expressions involving roots. Solve equations like x² = 49 and x³ = -27.

Independent Application: Apply roots to geometry problems (finding side lengths from areas, edge lengths from volumes). Explore the relationship between roots and fractional exponents. Investigate Pythagorean theorem applications.

DIFFERENTIATION:
Struggling Learners: Build and memorize perfect square/cube reference charts, use area and volume models visually, focus on perfect squares and cubes before non-perfect, practice with flashcards.
Advanced Learners: Explore simplifying roots (√50 = 5√2), investigate nth roots, connect to fractional exponents, explore complex numbers briefly.

ASSESSMENT INDICATORS:
Students correctly evaluate roots of perfect squares and cubes. Students identify whether roots are rational or irrational. Students explain the relationship between roots and powers. Students apply roots to solve equations.

VOCABULARY:
Square root, cube root, radical, perfect square, perfect cube, principal root, inverse operation, radicand

CONNECTION TO FUTURE LEARNING:
Roots are essential for the Pythagorean theorem, quadratic equations, radical expressions, and function analysis in algebra and geometry.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Square Roots and Cube Roots' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Scientific Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scientific Notation' AND grade_level_min = 8),
  'Scientific Notation Topic Guide',
  'Comprehensive teaching approach for writing very large and small numbers',
  'SCIENTIFIC NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand powers of 10, know properties of exponents, multiply and divide by powers of 10, and understand place value in decimal numbers.

LEARNING OBJECTIVES:
Students will express large and small numbers in scientific notation. Students will convert between standard and scientific notation. Students will compare numbers in scientific notation. Students will understand why scientific notation is useful.

KEY CONCEPTS:
1. Scientific notation form: a × 10ⁿ where 1 ≤ a < 10
2. Positive exponent means large number (move decimal right)
3. Negative exponent means small number (move decimal left)
4. The coefficient (a) contains the significant digits
5. The exponent (n) indicates magnitude (how many places decimal moved)
6. Scientific notation makes very large/small numbers manageable

COMMON MISCONCEPTIONS:
- Using a coefficient ≥ 10 (e.g., 45 × 10³ instead of 4.5 × 10⁴)
- Confusing direction of exponent (negative for small, positive for large)
- Moving decimal wrong number of places when converting
- Thinking 3.2 × 10⁻⁴ is a negative number (it''s a small positive)
- Not adjusting exponent when adjusting coefficient

TEACHING SEQUENCE:
Hook/Engagement: Display astronomical distances (Earth to Sun: 93,000,000 miles) and atomic scales (hydrogen atom: 0.000000000053 meters). Ask: "How do scientists write and work with these numbers?" This motivates the need for compact notation.

Direct Instruction: Introduce the form a × 10ⁿ and its constraints. Practice converting large numbers to scientific notation by counting decimal moves. Practice converting small numbers (moving decimal right creates negative exponent). Convert from scientific notation back to standard form. Compare numbers by comparing exponents first, then coefficients.

Guided Practice: Write numbers in scientific notation. Convert from scientific notation to standard form. Order numbers given in scientific notation. Express answers from calculations in proper scientific notation.

Independent Application: Research and express real-world large/small quantities in scientific notation. Compare planetary distances, cell sizes, or population data. Investigate why scientific notation is standard in science fields.

DIFFERENTIATION:
Struggling Learners: Use a step-by-step procedure (find decimal position, count moves, determine sign), practice with powers of 10 first, provide place value charts, use visual decimal movement.
Advanced Learners: Work with operations in scientific notation, explore engineering notation (exponents divisible by 3), investigate significant figures conventions, apply to complex scientific problems.

ASSESSMENT INDICATORS:
Students correctly express numbers in scientific notation. Students convert between forms accurately. Students compare and order numbers in scientific notation. Students explain the purpose and structure of scientific notation.

VOCABULARY:
Scientific notation, coefficient, exponent, power of ten, standard form, magnitude, significant digits

CONNECTION TO FUTURE LEARNING:
Scientific notation is essential for science calculations, engineering, computing, and any field dealing with extreme magnitudes.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scientific Notation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Operations with Scientific Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Operations with Scientific Notation' AND grade_level_min = 8),
  'Operations with Scientific Notation Topic Guide',
  'Comprehensive teaching approach for computing with numbers in scientific notation',
  'OPERATIONS WITH SCIENTIFIC NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should write numbers in scientific notation, understand exponent properties (product and quotient of powers), multiply and divide decimals, and add and subtract with attention to place value.

LEARNING OBJECTIVES:
Students will multiply numbers in scientific notation. Students will divide numbers in scientific notation. Students will add and subtract numbers in scientific notation. Students will express results in proper scientific notation form.

KEY CONCEPTS:
1. Multiply: (a × 10ᵐ)(b × 10ⁿ) = (ab) × 10ᵐ⁺ⁿ
2. Divide: (a × 10ᵐ)÷(b × 10ⁿ) = (a/b) × 10ᵐ⁻ⁿ
3. Add/Subtract: Convert to same power of 10 first
4. After operations, adjust result to proper form if needed
5. Exponent rules apply to the powers of 10
6. Estimation is useful for checking reasonableness

COMMON MISCONCEPTIONS:
- Adding exponents when adding numbers (5×10³ + 3×10³ ≠ 8×10⁶)
- Forgetting to adjust if coefficient becomes ≥10 or <1 after operation
- Not making exponents the same before adding/subtracting
- Subtracting exponents when multiplying
- Thinking you can''t add numbers with different exponents

TEACHING SEQUENCE:
Hook/Engagement: NASA problem: A spacecraft travels at 3×10⁴ mph for 2×10³ hours. How far does it travel? (Distance = rate × time). This requires multiplication in scientific notation.

Direct Instruction: Teach multiplication by showing how exponent properties apply: multiply coefficients, add exponents. Teach division similarly: divide coefficients, subtract exponents. For addition/subtraction, demonstrate making exponents equal first, then combining coefficients. Always check that final answer is in proper form (adjust if coefficient is not between 1 and 10).

Guided Practice: Multiply and divide numbers in scientific notation. Add and subtract after adjusting exponents. Solve multi-step problems. Check answers for proper form.

Independent Application: Calculate astronomical distances and times. Solve science problems involving very large/small quantities. Compare calculations done in scientific notation vs. standard form to appreciate efficiency.

DIFFERENTIATION:
Struggling Learners: Separate the coefficient operation from the exponent operation explicitly, provide step-by-step templates, practice each operation type separately before mixing, emphasize the "check your form" step.
Advanced Learners: Work with complex multi-step problems, explore compound operations, investigate calculator handling of scientific notation, apply to physics and chemistry calculations.

ASSESSMENT INDICATORS:
Students correctly perform all operations with scientific notation. Students express results in proper form. Students choose appropriate operations for word problems. Students estimate to check reasonableness.

VOCABULARY:
Scientific notation, coefficient, exponent, product, quotient, proper form, magnitude, operations

CONNECTION TO FUTURE LEARNING:
These skills are essential for physics, chemistry, engineering, computer science, and any quantitative science requiring calculations with extreme values.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Operations with Scientific Notation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Solving Linear Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Linear Equations' AND grade_level_min = 8),
  'Solving Linear Equations Topic Guide',
  'Comprehensive teaching approach for multi-step equations with variables on both sides',
  'SOLVING LINEAR EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should solve two-step equations, combine like terms, use the distributive property, and perform operations with rational numbers including negatives.

LEARNING OBJECTIVES:
Students will solve equations with variables on both sides. Students will solve equations requiring distribution first. Students will handle equations with fractions and decimals. Students will write and solve equations from word problems.

KEY CONCEPTS:
1. Goal: isolate the variable on one side of the equation
2. Move variable terms to one side by adding/subtracting
3. Distribute before combining like terms if parentheses are present
4. Equations may be cleared of fractions by multiplying by LCD
5. Decimals can be cleared by multiplying by appropriate power of 10
6. Always check solutions by substituting back into original equation

COMMON MISCONCEPTIONS:
- Not distributing to ALL terms inside parentheses
- Moving a term to the other side without changing its sign
- Forgetting that variables on both sides need to be combined
- Not distributing negative signs correctly: -(2x - 3) = -2x + 3
- Stopping before the variable is fully isolated

TEACHING SEQUENCE:
Hook/Engagement: Present a riddle: "I''m thinking of a number. If I double it and add 5, I get the same as if I triple it and subtract 3. What''s my number?" This equation (2x + 5 = 3x - 3) has variables on both sides.

Direct Instruction: Review solving two-step equations. Introduce equations with variables on both sides - show that we need to collect variables on one side and constants on the other. Demonstrate the standard approach: simplify each side, move variables to one side, move constants to the other, solve. Address distribution with negative coefficients. Show how to clear fractions efficiently.

Guided Practice: Solve increasingly complex equations. Practice with distribution required. Solve equations with fractions by clearing denominators. Write equations from word problems and solve.

Independent Application: Solve real-world problems: comparing plans, break-even analysis, finding equilibrium. Model situations that naturally have variables on both sides.

DIFFERENTIATION:
Struggling Learners: Use color-coding for variable terms vs. constant terms, provide flowchart for solving steps, practice distribution separately, check each step with substitution.
Advanced Learners: Solve literal equations for specified variables, explore systems of equations preview, work with more complex fractional equations, investigate absolute value equations.

ASSESSMENT INDICATORS:
Students correctly solve multi-step equations. Students handle distribution and combining like terms accurately. Students clear fractions appropriately. Students verify solutions by substitution.

VOCABULARY:
Linear equation, variable, coefficient, constant, distribute, like terms, isolate, solution, inverse operations

CONNECTION TO FUTURE LEARNING:
These skills are essential for systems of equations, literal equations, inequalities, and all algebraic problem-solving.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Linear Equations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Equations with Special Solutions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equations with Special Solutions' AND grade_level_min = 8),
  'Equations with Special Solutions Topic Guide',
  'Comprehensive teaching approach for equations with no solution or infinite solutions',
  'EQUATIONS WITH SPECIAL SOLUTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should solve multi-step linear equations, understand the concept of a solution as a value that makes an equation true, work with variables on both sides, and apply the distributive property.

LEARNING OBJECTIVES:
Students will identify equations with one solution (conditional). Students will identify equations with no solution (contradiction). Students will identify equations with infinitely many solutions (identity). Students will explain why special solutions occur.

KEY CONCEPTS:
1. One solution: solving leads to x = specific value (most equations)
2. No solution: solving leads to a false statement like 5 = 3
3. Infinitely many solutions: solving leads to a true statement like 5 = 5
4. No solution means the lines are parallel (in graphical interpretation)
5. Infinite solutions means the equations describe the same line
6. Recognizing special cases before solving completely can save time

COMMON MISCONCEPTIONS:
- Thinking something went wrong when getting 3 = 3 (it means infinite solutions)
- Believing every equation must have exactly one answer
- Not recognizing contradictions like 0 = 5 as "no solution"
- Confusing x = 0 (one solution) with 0 = 0 (infinite solutions)
- Thinking infinite solutions means any number works without checking

TEACHING SEQUENCE:
Hook/Engagement: Present three equations: 2x + 4 = 10, 2x + 4 = 2x + 4, and 2x + 4 = 2x + 7. Ask students to solve each. They''ll get x = 3, "0 = 0", and "4 = 7." What do these mean?

Direct Instruction: Solve equations that result in one solution, showing the standard outcome. Solve an identity, showing how both sides become equal for any x value. Solve a contradiction, showing how no value can make the equation true. Explain graphically: same line (infinite), parallel lines (none), intersecting lines (one). Teach recognition strategies.

Guided Practice: Solve equations and classify as one solution, no solution, or infinite solutions. Practice creating equations with each type of solution. Predict solution type before solving. Verify by testing values.

Independent Application: Analyze real-world scenarios: When would a business break-even problem have no solution (always at a loss)? Infinite solutions (same cost structure)? Create problems for each solution type.

DIFFERENTIATION:
Struggling Learners: Focus on the final simplified form interpretation, use graphic visualization, practice recognition before solving, provide a decision chart for identifying solution types.
Advanced Learners: Explore what coefficient relationships lead to each case, connect to systems of equations, investigate parameterized families of equations, explore in geometric contexts.

ASSESSMENT INDICATORS:
Students correctly identify all three solution types. Students explain why each solution type occurs. Students interpret solution types in context. Students can create equations with specified solution types.

VOCABULARY:
Conditional equation, identity, contradiction, no solution, infinite solutions, true statement, false statement, parallel, coincident

CONNECTION TO FUTURE LEARNING:
Understanding solution types is essential for systems of equations, analyzing mathematical models, and understanding solution sets in advanced algebra.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equations with Special Solutions' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Functions
-- ============================================================================

-- Topic: Introduction to Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Introduction to Functions' AND grade_level_min = 8),
  'Introduction to Functions Topic Guide',
  'Comprehensive teaching approach for understanding what makes a relation a function',
  'INTRODUCTION TO FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand ordered pairs and coordinate graphing, work with input-output tables, understand domain and range informally, and recognize patterns in sequences.

LEARNING OBJECTIVES:
Students will define a function as a rule assigning exactly one output to each input. Students will determine whether a relation is a function. Students will use the vertical line test on graphs. Students will identify domain and range of functions.

KEY CONCEPTS:
1. A function assigns exactly ONE output to each input
2. Same input must always produce the same output
3. Different inputs CAN have the same output
4. Vertical line test: if any vertical line crosses a graph more than once, it''s not a function
5. Domain: set of all possible inputs (x-values)
6. Range: set of all possible outputs (y-values)

COMMON MISCONCEPTIONS:
- Thinking every equation or graph is a function
- Believing outputs must be unique (different inputs can give same output)
- Confusing "not a function" with "not important" (relations are useful too)
- Thinking a function must have a formula
- Confusing domain and range

TEACHING SEQUENCE:
Hook/Engagement: Present a vending machine analogy: You press B4 and always get the same snack. That''s a function! But if pressing B4 sometimes gave chips and sometimes gave candy, it wouldn''t be a function. Predictability is key.

Direct Instruction: Define function formally - each input has exactly one output. Show examples of functions (tables, graphs, equations) and non-functions. Introduce the vertical line test with clear visual demonstrations. Define domain and range with examples. Discuss real-world functions: time→temperature, item→price.

Guided Practice: Determine if tables represent functions. Apply vertical line test to graphs. Identify domain and range from various representations. Match situations to function/not function classification.

Independent Application: Identify real-world functions in daily life. Create functions and non-functions. Analyze why certain relationships must be functions (one person→one birthday) and why some might not be.

DIFFERENTIATION:
Struggling Learners: Use concrete analogies (vending machine, birthday dates), focus on table representation first, use mapping diagrams, emphasize "one input → one output" repeatedly.
Advanced Learners: Explore one-to-one functions, inverse functions conceptually, piecewise functions, explore function composition informally.

ASSESSMENT INDICATORS:
Students correctly identify functions from tables, graphs, and descriptions. Students apply the vertical line test accurately. Students identify domain and range. Students explain why a relation is or is not a function.

VOCABULARY:
Function, relation, input, output, domain, range, vertical line test, mapping, one-to-one correspondence

CONNECTION TO FUTURE LEARNING:
Functions are the foundation of all higher mathematics including algebra, calculus, and mathematical modeling.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Introduction to Functions' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Function Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Notation' AND grade_level_min = 8),
  'Function Notation Topic Guide',
  'Comprehensive teaching approach for using f(x) notation',
  'FUNCTION NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand what a function is, evaluate expressions by substituting values, understand input-output relationships, and be comfortable with variable expressions.

LEARNING OBJECTIVES:
Students will read and write function notation f(x). Students will evaluate functions for given inputs: find f(3). Students will interpret function notation in context. Students will use function notation to express relationships.

KEY CONCEPTS:
1. f(x) is read as "f of x" - it means the output when input is x
2. f(x) does NOT mean f times x
3. f(3) means substitute 3 for every x in the function rule
4. The letter f can be replaced by other letters: g(x), h(x), etc.
5. Different letters represent different functions
6. Function notation connects algebra to real applications

COMMON MISCONCEPTIONS:
- Reading f(x) as "f times x"
- Thinking f(3) = f × 3
- Believing f and x are always the letters used
- Confusing f(x) with f(y) when asked to evaluate at y
- Not understanding that f(x) represents the output value, not the rule itself

TEACHING SEQUENCE:
Hook/Engagement: Present a temperature converter: C(F) = (5/9)(F - 32). What is C(77)? This shows function notation in a practical context that students can relate to.

Direct Instruction: Introduce notation f(x) = expression. Explain it as a compact way to name a function and indicate what variable is the input. Practice reading notation aloud correctly. Demonstrate evaluating: if f(x) = 2x + 3, find f(5) by substituting 5 for x everywhere. Show functions with different names: g(x), h(t), P(n).

Guided Practice: Evaluate functions for various inputs. Create function rules from descriptions. Interpret f(a) = b statements in context. Work with multiple functions at once (find f(2) + g(2)).

Independent Application: Write real-world relationships in function notation (cost as function of items, distance as function of time). Interpret function values in context. Analyze what changing inputs does to outputs.

DIFFERENTIATION:
Struggling Learners: Emphasize the "substitute everywhere" process, use parentheses to show substitution clearly: f(x) = 2(x) + 3 → f(5) = 2(5) + 3, read notation aloud repeatedly.
Advanced Learners: Evaluate composite functions f(g(x)), find inputs given outputs (if f(x) = 10, find x), explore piecewise function notation.

ASSESSMENT INDICATORS:
Students correctly evaluate functions using notation. Students interpret notation in context. Students write relationships using function notation. Students distinguish between function names and multiplication.

VOCABULARY:
Function notation, f(x), input, output, evaluate, substitute, function rule, argument

CONNECTION TO FUTURE LEARNING:
Function notation is essential for describing all mathematical relationships, calculus operations, and mathematical communication throughout higher mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Notation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Linear Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear Functions' AND grade_level_min = 8),
  'Linear Functions Topic Guide',
  'Comprehensive teaching approach for understanding y = mx + b',
  'LINEAR FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand functions and function notation, plot points on coordinate planes, understand slope informally, and solve linear equations.

LEARNING OBJECTIVES:
Students will understand the slope-intercept form y = mx + b. Students will identify slope and y-intercept from an equation. Students will graph linear functions from equations. Students will write equations from graphs and tables.

KEY CONCEPTS:
1. y = mx + b is the slope-intercept form of a linear equation
2. m represents the slope (rate of change, rise over run)
3. b represents the y-intercept (where the line crosses the y-axis)
4. Linear functions produce straight line graphs
5. The slope determines steepness and direction (positive/negative)
6. The y-intercept is the starting point when x = 0

COMMON MISCONCEPTIONS:
- Confusing slope and y-intercept positions in the equation
- Thinking slope must be a whole number
- Believing all lines go through the origin
- Plotting slope as rise/run but going the wrong direction
- Not understanding that m = 2 means y increases by 2 for each 1 increase in x

TEACHING SEQUENCE:
Hook/Engagement: A phone plan charges $25/month plus $0.10 per text. Express the monthly cost as a function of texts sent. This creates C(t) = 0.10t + 25, introducing slope (rate) and y-intercept (base cost) naturally.

Direct Instruction: Introduce slope-intercept form with clear identification of m and b. Show how to read slope and y-intercept from an equation. Demonstrate graphing by plotting y-intercept first, then using slope to find additional points. Show how to write equations from graphs (find b, then calculate m). Connect to real-world linear relationships.

Guided Practice: Identify slope and y-intercept from equations. Graph linear functions. Write equations from graphs. Create equations from real-world situations. Compare lines with different slopes and intercepts.

Independent Application: Model real-world linear situations (distance-time, cost-quantity, temperature conversion). Analyze what slope and intercept mean in context. Compare different linear models (which phone plan is cheaper?).

DIFFERENTIATION:
Struggling Learners: Use graphing templates, practice identifying m and b before graphing, use "rise over run" consistently with arrows, provide reference sheet for common slopes.
Advanced Learners: Write equations in other forms (standard, point-slope), explore parallel and perpendicular line relationships, analyze systems of linear functions graphically.

ASSESSMENT INDICATORS:
Students correctly identify slope and y-intercept. Students graph lines accurately from equations. Students write equations from graphs and scenarios. Students interpret slope and intercept in context.

VOCABULARY:
Linear function, slope, y-intercept, slope-intercept form, rate of change, rise, run, steepness

CONNECTION TO FUTURE LEARNING:
Linear functions are foundational for systems of equations, linear regression, and understanding non-linear functions by contrast.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear Functions' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Rate of Change and Slope
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rate of Change and Slope' AND grade_level_min = 8),
  'Rate of Change and Slope Topic Guide',
  'Comprehensive teaching approach for finding and interpreting slope',
  'RATE OF CHANGE AND SLOPE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand ratios, work with positive and negative numbers, plot points on coordinate planes, and understand linear relationships.

LEARNING OBJECTIVES:
Students will calculate slope using the formula (y₂-y₁)/(x₂-x₁). Students will interpret slope as rate of change. Students will identify positive, negative, zero, and undefined slopes. Students will find slope from graphs, tables, and equations.

KEY CONCEPTS:
1. Slope = rise/run = (change in y)/(change in x) = (y₂-y₁)/(x₂-x₁)
2. Positive slope: line rises left to right
3. Negative slope: line falls left to right
4. Zero slope: horizontal line (y = constant)
5. Undefined slope: vertical line (x = constant)
6. Slope represents the rate of change in real contexts

COMMON MISCONCEPTIONS:
- Subtracting coordinates in wrong order (mixing up points)
- Confusing horizontal (zero slope) with vertical (undefined slope)
- Calculating run/rise instead of rise/run
- Thinking slope must be positive
- Not understanding that slope is constant everywhere on a line

TEACHING SEQUENCE:
Hook/Engagement: Show two ramps: one steep, one gradual. Which is harder to climb? Slope measures steepness. A wheelchair ramp has gentle slope; a slide has steep slope. Connect math to physical experience.

Direct Instruction: Define slope as rise over run with visual representation. Develop the formula from the concept. Practice finding slope from two points. Connect to rate of change interpretation (dollars per hour, miles per gallon). Explore special cases: zero slope (flat) and undefined slope (vertical). Show finding slope from graphs, tables, and equations.

Guided Practice: Calculate slope from pairs of points. Determine slope from graphs by counting rise and run. Find rate of change from tables. Identify slope type (positive, negative, zero, undefined) from graphs.

Independent Application: Analyze real-world rates of change: population growth rates, speed, pricing per unit. Compare slopes in context (which job pays better per hour?). Create scenarios for given slopes.

DIFFERENTIATION:
Struggling Learners: Always write the formula, label points carefully, use color for rise (vertical) and run (horizontal), practice with integer coordinates first.
Advanced Learners: Explore average rate of change for nonlinear functions, investigate slope in 3D, connect to derivatives conceptually, analyze slope in context of optimization.

ASSESSMENT INDICATORS:
Students correctly calculate slope using the formula. Students identify slope type from graphs. Students interpret slope as rate of change in context. Students find slope from multiple representations.

VOCABULARY:
Slope, rate of change, rise, run, positive slope, negative slope, zero slope, undefined slope, steepness

CONNECTION TO FUTURE LEARNING:
Slope is fundamental for calculus (derivatives), physics (velocity, acceleration), economics (marginal rates), and all linear modeling.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rate of Change and Slope' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Comparing Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Functions' AND grade_level_min = 8),
  'Comparing Functions Topic Guide',
  'Comprehensive teaching approach for comparing functions in different forms',
  'COMPARING FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand function notation, know slope-intercept form, interpret graphs of functions, and find slope and y-intercept from various representations.

LEARNING OBJECTIVES:
Students will compare properties of functions represented differently. Students will compare rates of change and initial values. Students will determine which function has greater values in given intervals. Students will make decisions based on function comparisons.

KEY CONCEPTS:
1. Functions can be compared even when given in different forms
2. To compare, find the same properties (slope, intercept) from each representation
3. Rate of change comparison: which function changes faster?
4. Initial value comparison: which function starts higher?
5. Functions may intersect - one isn''t always "greater"
6. Context determines which properties matter most

COMMON MISCONCEPTIONS:
- Thinking you can''t compare unless both are in the same form
- Comparing only at one point instead of overall properties
- Ignoring that steeper isn''t always better (context matters)
- Not recognizing that functions can intersect and switch which is greater
- Confusing starting value with rate of change importance

TEACHING SEQUENCE:
Hook/Engagement: Two job offers: Job A pays $15/hour starting immediately (table given). Job B is described as y = 12x + 50 (equation given). Which pays more after 8 hours of work? Students must compare across representations.

Direct Instruction: Review finding slope and y-intercept from tables, graphs, and equations. Practice extracting these values from each representation. Compare functions by their rates of change. Compare functions by their starting values. Analyze which function is greater in different intervals. Connect to real-world decision making.

Guided Practice: Compare pairs of functions given in different forms. Determine which has greater rate of change. Find where functions are equal (intersection). Decide which is "better" given contextual constraints.

Independent Application: Compare real offers (phone plans, gym memberships, loan options). Analyze which option is better under different conditions. Create comparison problems for classmates.

DIFFERENTIATION:
Struggling Learners: Convert all to same form before comparing, use side-by-side tables, focus on one property at a time, use graphing technology to visualize.
Advanced Learners: Compare non-linear functions, analyze when comparisons reverse, explore optimization problems, work with functions that don''t intersect nicely.

ASSESSMENT INDICATORS:
Students extract comparable properties from different representations. Students accurately compare rates of change and initial values. Students interpret comparison results in context. Students recognize when and where comparisons change.

VOCABULARY:
Rate of change, initial value, y-intercept, slope, representation, compare, intersection, greater than

CONNECTION TO FUTURE LEARNING:
Function comparison is essential for optimization, systems of equations, economic modeling, and decision-making with mathematical models.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Functions' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Nonlinear Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Nonlinear Functions' AND grade_level_min = 8),
  'Nonlinear Functions Topic Guide',
  'Comprehensive teaching approach for introduction to quadratic and exponential patterns',
  'NONLINEAR FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand linear functions and their constant rate of change, plot points and interpret graphs, recognize patterns in tables, and work with exponents.

LEARNING OBJECTIVES:
Students will recognize that nonlinear functions have varying rates of change. Students will identify quadratic patterns (second differences constant). Students will identify exponential patterns (constant ratio). Students will sketch and interpret nonlinear graphs.

KEY CONCEPTS:
1. Nonlinear functions do NOT have constant rate of change
2. Their graphs are curves, not straight lines
3. Quadratic functions: y = ax² + bx + c, parabola shape
4. Exponential functions: y = a·bˣ, rapid increase or decrease
5. Quadratic: second differences are constant
6. Exponential: each term is a constant multiple of the previous

COMMON MISCONCEPTIONS:
- Thinking all functions are linear
- Believing curved graphs cannot be functions
- Confusing quadratic and exponential growth patterns
- Expecting exponential to always grow (it can decay too)
- Not recognizing that rate of change varies for nonlinear functions

TEACHING SEQUENCE:
Hook/Engagement: Compare two scenarios: (1) You earn $5 per hour worked. (2) You start with $1 and double your money each day. After 10 days/hours, which gives you more? This dramatically shows the difference between linear and exponential growth.

Direct Instruction: Review linear functions and their constant slope. Introduce quadratic functions through area problems (square with varying side length). Show the parabola shape and increasing then decreasing pattern. Introduce exponential functions through doubling/halving scenarios. Compare patterns in tables: linear has constant first differences, quadratic has constant second differences, exponential has constant ratios.

Guided Practice: Identify function type from tables (analyze differences and ratios). Match equations to graph shapes. Create tables from equations and identify pattern type. Sketch graphs based on function type.

Independent Application: Model real phenomena: projectile motion (quadratic), population growth (exponential), compound interest. Analyze which model fits given data. Compare long-term behavior of different function types.

DIFFERENTIATION:
Struggling Learners: Focus on visual recognition first, use color-coded differences in tables, compare only linear vs. nonlinear initially, use technology to generate graphs.
Advanced Learners: Explore function equations and parameter effects, investigate other function types (cubic, square root), analyze domains and ranges, explore transformations.

ASSESSMENT INDICATORS:
Students distinguish between linear and nonlinear functions. Students identify quadratic and exponential patterns from tables. Students match function types to graph shapes. Students recognize real-world examples of each type.

VOCABULARY:
Nonlinear, quadratic function, exponential function, parabola, rate of change, first differences, second differences, ratio, growth, decay

CONNECTION TO FUTURE LEARNING:
This introduction prepares students for in-depth study of quadratic and exponential functions, essential for physics, biology, finance, and advanced algebra.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Nonlinear Functions' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Geometry
-- ============================================================================

-- Topic: Transformations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Transformations' AND grade_level_min = 8),
  'Transformations Topic Guide',
  'Comprehensive teaching approach for translations, reflections, and rotations',
  'TRANSFORMATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should plot points on coordinate planes, understand ordered pairs, have basic familiarity with transformations from Grade 7, and understand congruence informally.

LEARNING OBJECTIVES:
Students will perform translations using coordinate rules. Students will perform reflections across axes and other lines. Students will perform rotations of 90°, 180°, and 270° about the origin. Students will describe transformations precisely using coordinates.

KEY CONCEPTS:
1. Translation: (x, y) → (x + a, y + b) - slides every point same distance and direction
2. Reflection across x-axis: (x, y) → (x, -y)
3. Reflection across y-axis: (x, y) → (-x, y)
4. Rotation 90° counterclockwise about origin: (x, y) → (-y, x)
5. Rotation 180°: (x, y) → (-x, -y)
6. All rigid transformations preserve size and shape

COMMON MISCONCEPTIONS:
- Confusing rotation direction (clockwise vs. counterclockwise)
- Reflecting across wrong axis
- Not applying transformation to all vertices
- Thinking reflections and rotations are the same
- Mixing up coordinate rules for different transformations

TEACHING SEQUENCE:
Hook/Engagement: Show a kaleidoscope or tessellation art. Ask: "How can we describe mathematically how these patterns are created?" Transformations are the language for describing these movements.

Direct Instruction: Define rigid transformations (preserve size and shape). Demonstrate each transformation with coordinates: translation (add to both coordinates), reflection (change sign patterns), rotation (coordinate swapping and sign changes). Practice reading and writing transformation rules. Show sequences of transformations.

Guided Practice: Apply transformation rules to coordinates and graph results. Describe transformations that map one figure to another. Perform sequences of transformations. Verify that transformed figures are congruent.

Independent Application: Design patterns using transformations. Analyze logos and art for transformation symmetries. Create transformation art. Explore real-world applications (animation, computer graphics).

DIFFERENTIATION:
Struggling Learners: Use tracing paper or patty paper for physical transformations, focus on one transformation type at a time, provide coordinate rule reference cards, practice with simple figures.
Advanced Learners: Explore transformations in 3D, investigate transformation matrices, analyze composition of transformations, explore non-rigid transformations (dilations).

ASSESSMENT INDICATORS:
Students correctly perform all three transformation types. Students use proper notation and terminology. Students identify which transformation was applied. Students recognize that rigid transformations preserve congruence.

VOCABULARY:
Transformation, translation, reflection, rotation, pre-image, image, rigid transformation, coordinate rule, congruent

CONNECTION TO FUTURE LEARNING:
Transformations connect to congruence and similarity proofs, transformation matrices in linear algebra, and computer graphics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Transformations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Congruence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Congruence' AND grade_level_min = 8),
  'Congruence Topic Guide',
  'Comprehensive teaching approach for understanding congruent figures through transformations',
  'CONGRUENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should perform translations, reflections, and rotations, understand that these are rigid transformations, know that rigid transformations preserve size and shape, and be familiar with corresponding parts of figures.

LEARNING OBJECTIVES:
Students will understand that congruent figures can be mapped onto each other through rigid transformations. Students will identify sequences of transformations that show congruence. Students will identify corresponding parts of congruent figures. Students will use congruence to solve problems.

KEY CONCEPTS:
1. Two figures are congruent if one can be mapped onto the other by rigid transformations
2. Congruent figures have exactly the same size and shape
3. Corresponding sides are equal in length; corresponding angles are equal in measure
4. Notation: △ABC ≅ △DEF shows correspondence (A↔D, B↔E, C↔F)
5. Order of vertices in notation indicates which parts correspond
6. Rigid transformations: translations, reflections, rotations (and compositions)

COMMON MISCONCEPTIONS:
- Thinking figures must be in same orientation to be congruent
- Not understanding that correspondence order matters in notation
- Believing congruent means "looks similar" rather than exact match
- Confusing congruence with similarity
- Thinking only one transformation is needed (may require sequence)

TEACHING SEQUENCE:
Hook/Engagement: Show two cookie cutters of identical shape but in different positions. They produce identical cookies regardless of position - this is congruence. The cookies are congruent even though they''re in different places.

Direct Instruction: Define congruence through transformations: if rigid transformations can map one to the other, they''re congruent. Practice identifying transformations that prove congruence. Introduce congruence notation with careful attention to vertex correspondence. Show that corresponding parts are equal. Use congruence to find missing measurements.

Guided Practice: Determine if figures are congruent by identifying mapping transformations. Write congruence statements with correct correspondence. Find missing side lengths and angle measures using congruence. Identify the transformation sequence mapping one figure to another.

Independent Application: Prove figures congruent by describing transformation sequences. Use congruence in geometric problem-solving. Analyze real-world congruence (tiles, patterns, manufacturing).

DIFFERENTIATION:
Struggling Learners: Use tracing paper to physically verify congruence, focus on notation and correspondence carefully, use color-coding for corresponding parts, practice with simple figures.
Advanced Learners: Explore triangle congruence criteria (SSS, SAS, ASA), investigate minimal information needed to prove congruence, connect to formal geometric proof, explore congruence in 3D.

ASSESSMENT INDICATORS:
Students identify congruent figures. Students describe transformation sequences showing congruence. Students write correct congruence notation. Students find missing measurements using congruence.

VOCABULARY:
Congruent, rigid transformation, corresponding parts, correspondence, mapping, preserve, notation

CONNECTION TO FUTURE LEARNING:
Congruence is fundamental for geometric proof, triangle congruence criteria, and understanding similarity by contrast.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Congruence' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Dilations and Similarity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dilations and Similarity' AND grade_level_min = 8),
  'Dilations and Similarity Topic Guide',
  'Comprehensive teaching approach for scale factors and similar figures',
  'DILATIONS AND SIMILARITY - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand rigid transformations and congruence, work with ratios and proportions, understand scale drawings, and graph on coordinate planes.

LEARNING OBJECTIVES:
Students will perform dilations from a center point with a given scale factor. Students will understand that similar figures have the same shape but different sizes. Students will identify corresponding parts of similar figures. Students will use similarity to find missing measurements.

KEY CONCEPTS:
1. Dilation: a transformation that changes size but not shape
2. Scale factor k > 1: enlargement; 0 < k < 1: reduction; k = 1: same size
3. Similar figures: same shape, proportional corresponding sides, equal corresponding angles
4. Similarity notation: △ABC ~ △DEF
5. If scale factor is k, all lengths multiply by k; area multiplies by k²
6. Similar figures can be mapped by dilation plus rigid transformations

COMMON MISCONCEPTIONS:
- Thinking similar means congruent
- Adding scale factor to side lengths instead of multiplying
- Believing angles change when figures are scaled
- Thinking perimeter and area scale the same way
- Not understanding that center of dilation matters

TEACHING SEQUENCE:
Hook/Engagement: Show photos at different zoom levels - same image, different sizes. This is what mathematicians call similarity. The proportions stay the same even as size changes.

Direct Instruction: Introduce dilation as scaling from a center point. Demonstrate dilation on coordinate plane with center at origin. Show that side lengths multiply by scale factor while angles stay constant. Define similarity through dilation (plus possible rigid transformations). Practice finding scale factors between similar figures. Use proportions to find missing side lengths.

Guided Practice: Perform dilations with various scale factors. Identify similar figures and determine scale factors. Set up and solve proportions for missing measurements. Calculate perimeter and area of similar figures.

Independent Application: Apply similarity to indirect measurement (finding heights of tall objects). Analyze similar figures in architecture and design. Investigate why movie screens can be different sizes. Explore map scales as similarity.

DIFFERENTIATION:
Struggling Learners: Use grid paper to visualize dilations, provide proportion setup templates, focus on enlargements before reductions, practice recognizing similar figures before calculations.
Advanced Learners: Explore similarity criteria (AA, SAS, SSS for triangles), investigate center of dilation effects, prove similarity relationships, explore similar solids.

ASSESSMENT INDICATORS:
Students correctly perform dilations with given scale factors. Students identify similar figures and their scale factors. Students find missing measurements using proportions. Students distinguish between congruence and similarity.

VOCABULARY:
Dilation, similarity, scale factor, center of dilation, enlargement, reduction, corresponding parts, proportion

CONNECTION TO FUTURE LEARNING:
Similarity is essential for trigonometry, geometric modeling, indirect measurement, and understanding proportional relationships in geometry.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dilations and Similarity' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Angle Relationships
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angle Relationships' AND grade_level_min = 8),
  'Angle Relationships Topic Guide',
  'Comprehensive teaching approach for parallel lines, transversals, and angle sums',
  'ANGLE RELATIONSHIPS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand complementary and supplementary angles, know that vertical angles are equal, measure and classify angles, and solve equations.

LEARNING OBJECTIVES:
Students will identify angle pairs formed by parallel lines and a transversal. Students will use relationships to find unknown angles. Students will prove the triangle angle sum is 180°. Students will use exterior angle relationships.

KEY CONCEPTS:
1. Transversal: a line crossing two other lines
2. Corresponding angles: same position at each intersection (equal when lines parallel)
3. Alternate interior angles: inside, opposite sides (equal when lines parallel)
4. Alternate exterior angles: outside, opposite sides (equal when lines parallel)
5. Same-side interior angles: inside, same side (supplementary when lines parallel)
6. Triangle angle sum: interior angles sum to 180°

COMMON MISCONCEPTIONS:
- Confusing corresponding with alternate angles
- Thinking all angles at an intersection are equal
- Not recognizing when lines are parallel vs. not parallel
- Forgetting that relationships only hold for parallel lines
- Mixing up interior and exterior angles

TEACHING SEQUENCE:
Hook/Engagement: Show railroad tracks with a crossing road. Point out how the angles at each track crossing seem related. If the tracks are parallel (which they must be for trains!), these angles have special relationships we can use.

Direct Instruction: Define transversal and demonstrate with parallel lines. Identify and name angle pairs: corresponding, alternate interior, alternate exterior, same-side interior. State relationships when lines are parallel. Practice finding all angles given one. Derive triangle angle sum theorem using parallel line construction. Introduce exterior angle theorem.

Guided Practice: Identify angle pairs by name. Find unknown angles using relationships. Solve for variables when angles are expressed algebraically. Apply triangle and exterior angle theorems.

Independent Application: Analyze architectural designs for parallel structures. Prove geometric relationships using angle facts. Solve complex problems involving multiple angle relationships.

DIFFERENTIATION:
Struggling Learners: Use color-coding for angle pairs, provide reference card with angle pair names and relationships, practice identification before calculation, use tracing to see corresponding positions.
Advanced Learners: Prove angle relationships formally, explore angle sums for polygons, investigate non-Euclidean geometry where rules differ, create proofs using angle relationships.

ASSESSMENT INDICATORS:
Students correctly name angle pairs. Students apply appropriate relationships to find unknown angles. Students use the triangle angle sum theorem. Students set up and solve equations using angle relationships.

VOCABULARY:
Transversal, parallel lines, corresponding angles, alternate interior angles, alternate exterior angles, same-side interior angles, triangle angle sum, exterior angle

CONNECTION TO FUTURE LEARNING:
Angle relationships are foundational for geometric proof, polygon properties, trigonometry, and understanding parallel structures in engineering and design.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angle Relationships' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Pythagorean Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Pythagorean Theorem' AND grade_level_min = 8),
  'Pythagorean Theorem Topic Guide',
  'Comprehensive teaching approach for understanding and applying a² + b² = c²',
  'PYTHAGOREAN THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should identify right triangles, know perfect squares, evaluate and estimate square roots, and understand exponents.

LEARNING OBJECTIVES:
Students will state and explain the Pythagorean theorem. Students will find the length of a missing side in a right triangle. Students will use the converse to determine if a triangle is right. Students will apply the theorem to real-world problems.

KEY CONCEPTS:
1. In a right triangle: a² + b² = c² where c is the hypotenuse
2. Hypotenuse is the longest side, opposite the right angle
3. Legs are the two shorter sides that form the right angle
4. Converse: if a² + b² = c², then the triangle is a right triangle
5. Common Pythagorean triples: (3,4,5), (5,12,13), (8,15,17)
6. Solutions may be irrational numbers requiring square root form

COMMON MISCONCEPTIONS:
- Using any side as c (c must be the hypotenuse)
- Forgetting to take the square root at the end
- Adding a + b instead of a² + b²
- Thinking the theorem works for all triangles
- Confusing finding a leg (subtract) with finding hypotenuse (add)

TEACHING SEQUENCE:
Hook/Engagement: Present the "3-4-5" carpenter''s trick for making right angles. Builders use a 3-4-5 triangle to ensure corners are square. Why does this work? The Pythagorean theorem explains it.

Direct Instruction: State the theorem with visual proof (square on each side area demonstration). Identify parts of right triangles (legs vs. hypotenuse). Practice finding the hypotenuse given both legs. Practice finding a leg given hypotenuse and other leg. Introduce the converse - testing if a triangle is right. Address irrational solutions.

Guided Practice: Find missing sides in various right triangles. Determine if given side lengths form a right triangle. Solve word problems requiring the theorem. Work with coordinates to find diagonal distances.

Independent Application: Calculate diagonal distances in real contexts (screen sizes, room diagonals, ladder problems). Design problems requiring the theorem. Investigate Pythagorean triples and their patterns.

DIFFERENTIATION:
Struggling Learners: Always draw and label triangles, use a consistent setup procedure, provide perfect square and root reference charts, practice with triples before irrational answers.
Advanced Learners: Prove the theorem using different methods, explore the distance formula derivation, investigate 3D applications, research Pythagorean theorem history and proofs.

ASSESSMENT INDICATORS:
Students correctly identify hypotenuse and legs. Students find missing sides accurately. Students apply the converse to test for right triangles. Students solve real-world problems using the theorem.

VOCABULARY:
Pythagorean theorem, right triangle, hypotenuse, leg, converse, Pythagorean triple, square root

CONNECTION TO FUTURE LEARNING:
The Pythagorean theorem is foundational for the distance formula, trigonometry, coordinate geometry, and countless applications in science and engineering.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pythagorean Theorem' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Distance and Midpoint
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Distance and Midpoint' AND grade_level_min = 8),
  'Distance and Midpoint Topic Guide',
  'Comprehensive teaching approach for finding distances in the coordinate plane',
  'DISTANCE AND MIDPOINT - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand and apply the Pythagorean theorem, plot and identify points on coordinate planes, work with absolute value, and perform operations with square roots.

LEARNING OBJECTIVES:
Students will derive and apply the distance formula. Students will find the midpoint of a segment. Students will apply distance and midpoint to geometric problems. Students will verify geometric properties using coordinate methods.

KEY CONCEPTS:
1. Distance formula: d = √[(x₂-x₁)² + (y₂-y₁)²]
2. The distance formula is the Pythagorean theorem applied to coordinates
3. Midpoint formula: M = ((x₁+x₂)/2, (y₁+y₂)/2)
4. Midpoint averages the coordinates
5. These formulas work for any two points in the coordinate plane
6. Distance is always positive; midpoint is a point

COMMON MISCONCEPTIONS:
- Subtracting coordinates in wrong order (doesn''t affect distance due to squaring, but students may be confused)
- Forgetting to square before adding in distance formula
- Taking square root before adding (d ≠ √(x₂-x₁) + √(y₂-y₁))
- Adding coordinates instead of averaging for midpoint
- Confusing when to use distance vs. midpoint formula

TEACHING SEQUENCE:
Hook/Engagement: "How far apart are these two cities on a map?" Show coordinates and challenge students to find the diagonal distance - not just horizontal or vertical. This motivates the distance formula.

Direct Instruction: Draw a segment on coordinate plane and form a right triangle with horizontal and vertical legs. Apply Pythagorean theorem: d² = (horizontal distance)² + (vertical distance)². Derive the distance formula. For midpoint, show that averaging x-coordinates gives the middle x-value, same for y. Practice both formulas with multiple examples.

Guided Practice: Find distances between pairs of points. Find midpoints of segments. Verify that a point is equidistant from two other points. Use formulas to classify triangles and quadrilaterals.

Independent Application: Solve problems about equidistant points. Find perimeters of polygons on coordinate planes. Verify geometric properties (parallelogram diagonals bisect each other). Real-world applications (GPS distance, central locations).

DIFFERENTIATION:
Struggling Learners: Always draw and visualize before calculating, break distance formula into steps, use the Pythagorean theorem directly before abstracting to formula, provide formula reference.
Advanced Learners: Explore distance formula in 3D, investigate locus of points equidistant from two points, prove geometric theorems using coordinates, explore circles using distance.

ASSESSMENT INDICATORS:
Students correctly apply the distance formula. Students find midpoints accurately. Students connect distance formula to Pythagorean theorem. Students apply formulas to solve geometric problems.

VOCABULARY:
Distance formula, midpoint formula, coordinate plane, segment, equidistant, Pythagorean theorem, ordered pair

CONNECTION TO FUTURE LEARNING:
These formulas are essential for coordinate geometry, conic sections, analytic geometry, and geometric proofs using coordinates.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Distance and Midpoint' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Volume of 3D Shapes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of 3D Shapes' AND grade_level_min = 8),
  'Volume of 3D Shapes Topic Guide',
  'Comprehensive teaching approach for volumes of cylinders, cones, and spheres',
  'VOLUME OF 3D SHAPES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should calculate area of circles (A = πr²), understand volume as 3D space inside a figure, have calculated volume of prisms, and work with formulas involving π.

LEARNING OBJECTIVES:
Students will calculate volume of cylinders using V = πr²h. Students will calculate volume of cones using V = (1/3)πr²h. Students will calculate volume of spheres using V = (4/3)πr³. Students will solve real-world problems involving these volumes.

KEY CONCEPTS:
1. Cylinder volume: V = πr²h (circular base area times height)
2. Cone volume: V = (1/3)πr²h (one-third of corresponding cylinder)
3. Sphere volume: V = (4/3)πr³ (special formula based on radius cubed)
4. A cone is 1/3 the volume of a cylinder with same base and height
5. All formulas require knowing the radius
6. Volume is measured in cubic units

COMMON MISCONCEPTIONS:
- Confusing radius and diameter in formulas
- Forgetting the 1/3 factor for cones
- Using height instead of radius for spheres
- Confusing surface area and volume formulas
- Not cubing the radius for sphere volume

TEACHING SEQUENCE:
Hook/Engagement: Pour water from a cone into a cylinder with same base and height. It takes exactly 3 cones to fill the cylinder! This demonstrates the 1/3 relationship and makes the formula memorable.

Direct Instruction: Review cylinder volume as "base area times height" like prisms. Derive cone volume experimentally or visually (1/3 of cylinder). Introduce sphere volume formula with explanation that radius is cubed because it extends in all three dimensions. Practice each formula separately, then mix.

Guided Practice: Calculate volumes given radius and height. Solve for missing dimensions given volume. Compare volumes of different shapes. Work with composite figures (cone on cylinder, hemisphere on cylinder).

Independent Application: Design containers with specific volumes. Calculate volumes of real objects (cans, ice cream cones, balls). Compare packaging efficiency. Investigate volume relationships (double radius = 8× volume for sphere).

DIFFERENTIATION:
Struggling Learners: Use formula reference cards, distinguish formulas by shape visually, practice identifying radius vs. height in diagrams, use π ≈ 3.14 throughout.
Advanced Learners: Derive formulas using calculus concepts (limits of sums), explore Cavalieri''s principle, investigate surface area of these shapes, solve optimization problems.

ASSESSMENT INDICATORS:
Students apply correct formula for each shape. Students identify radius and height from diagrams. Students solve for missing dimensions. Students solve real-world volume problems.

VOCABULARY:
Volume, cylinder, cone, sphere, radius, height, diameter, cubic units, base area

CONNECTION TO FUTURE LEARNING:
Volume formulas are essential for engineering, physics, chemistry (molarity, density), and calculus (solids of revolution).',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of 3D Shapes' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Statistics and Probability
-- ============================================================================

-- Topic: Scatter Plots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scatter Plots' AND grade_level_min = 8),
  'Scatter Plots Topic Guide',
  'Comprehensive teaching approach for creating and interpreting scatter plots',
  'SCATTER PLOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should plot points on coordinate planes, understand ordered pairs, know the difference between categorical and numerical data, and have basic understanding of relationships between variables.

LEARNING OBJECTIVES:
Students will construct scatter plots from bivariate data. Students will identify and describe patterns (positive, negative, or no association). Students will identify clusters and outliers. Students will interpret scatter plots in context.

KEY CONCEPTS:
1. Scatter plots show relationships between two quantitative variables
2. Each point represents one data case with two measurements
3. Positive association: as x increases, y tends to increase
4. Negative association: as x increases, y tends to decrease
5. No association: no clear pattern between variables
6. Outliers: points far from the general pattern

COMMON MISCONCEPTIONS:
- Connecting points like a line graph (scatter plots don''t connect)
- Thinking any two variables will show association
- Confusing correlation with causation
- Not considering context when interpreting
- Expecting perfect patterns (real data is messy)

TEACHING SEQUENCE:
Hook/Engagement: Ask: "Does more study time lead to higher test scores?" Collect class data on study time and test scores (or use sample data). The scatter plot reveals the relationship visually.

Direct Instruction: Explain that scatter plots show two measurements per case. Demonstrate creating a scatter plot from a table. Teach how to describe the form (linear vs. nonlinear), direction (positive, negative, none), and strength (strong, weak). Identify outliers as unusual points. Practice interpreting what patterns mean in context.

Guided Practice: Create scatter plots from data sets. Describe association type and strength. Identify outliers. Interpret patterns in context (what does positive association mean for study time and grades?).

Independent Application: Collect real data and create scatter plots. Investigate relationships of interest (height and shoe size, screen time and sleep). Present findings with interpretations. Critique claims based on scatter plot evidence.

DIFFERENTIATION:
Struggling Learners: Use graphing templates, practice plotting before interpreting, focus on three categories (positive, negative, none) initially, use clear examples with strong patterns.
Advanced Learners: Explore nonlinear associations, investigate multiple variables, calculate correlation coefficients, distinguish causation from correlation.

ASSESSMENT INDICATORS:
Students correctly construct scatter plots. Students accurately describe association direction and strength. Students identify and interpret outliers. Students explain patterns in real-world context.

VOCABULARY:
Scatter plot, bivariate data, association, positive association, negative association, no association, cluster, outlier, correlation

CONNECTION TO FUTURE LEARNING:
Scatter plots lead to linear regression, correlation analysis, statistical modeling, and data science applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scatter Plots' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Trend Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Trend Lines' AND grade_level_min = 8),
  'Trend Lines Topic Guide',
  'Comprehensive teaching approach for drawing and using lines of best fit',
  'TREND LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should construct and interpret scatter plots, understand linear equations in slope-intercept form, have experience with linear functions, and understand positive and negative slopes.

LEARNING OBJECTIVES:
Students will draw trend lines (lines of best fit) for scatter plots. Students will understand what makes a good trend line. Students will use trend lines to make predictions. Students will recognize limitations of predictions.

KEY CONCEPTS:
1. A trend line approximates the pattern in data
2. The line should have roughly equal points above and below
3. Trend lines help make predictions (interpolation and extrapolation)
4. Interpolation: predicting within the data range
5. Extrapolation: predicting beyond the data range (less reliable)
6. Trend lines don''t pass through every point - they show the general trend

COMMON MISCONCEPTIONS:
- Thinking the line must pass through specific points
- Connecting endpoints instead of showing overall trend
- Believing predictions are always accurate
- Not understanding that multiple reasonable lines are possible
- Thinking extrapolation is as reliable as interpolation

TEACHING SEQUENCE:
Hook/Engagement: Show a scatter plot of height vs. age for children. Where would a 10-year-old typically fall? A trend line helps us predict. But what about predicting an 80-year-old''s height from this data? This introduces limitations.

Direct Instruction: Explain what a trend line represents (not connecting dots, but summarizing pattern). Demonstrate drawing a good trend line (minimize distances from points to line, balance above and below). Show using the line to make predictions. Distinguish interpolation (safer) from extrapolation (riskier). Discuss why predictions may be wrong.

Guided Practice: Draw trend lines on scatter plots. Use trend lines to predict y-values for given x-values. Identify whether predictions are interpolation or extrapolation. Evaluate the reasonableness of predictions.

Independent Application: Make predictions from real data sets. Critique predictions based on extrapolation. Compare predicted values to actual outcomes. Discuss factors that might affect prediction accuracy.

DIFFERENTIATION:
Struggling Learners: Use clear rulers and visual guides, focus on "balancing" points around the line, practice prediction reading before equation writing, use technology for precise lines.
Advanced Learners: Explore least squares method conceptually, investigate residuals, compare different trend lines'' effectiveness, learn to find equations for trend lines.

ASSESSMENT INDICATORS:
Students draw reasonable trend lines. Students make predictions using trend lines. Students distinguish interpolation from extrapolation. Students recognize prediction limitations.

VOCABULARY:
Trend line, line of best fit, prediction, interpolation, extrapolation, residual, model

CONNECTION TO FUTURE LEARNING:
Trend lines lead to linear regression, least squares, statistical modeling, and predictive analytics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Trend Lines' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Linear Models
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear Models' AND grade_level_min = 8),
  'Linear Models Topic Guide',
  'Comprehensive teaching approach for using equations to model data relationships',
  'LINEAR MODELS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should create and interpret scatter plots, draw trend lines, write equations in slope-intercept form, and interpret slope and y-intercept in context.

LEARNING OBJECTIVES:
Students will write equations for trend lines. Students will interpret slope in context (rate of change). Students will interpret y-intercept in context (starting value). Students will use equations to make and evaluate predictions.

KEY CONCEPTS:
1. A linear model is an equation that represents the trend in data
2. The slope represents the rate of change in context
3. The y-intercept represents the starting value (when x = 0)
4. Models are approximations - they don''t perfectly describe every case
5. Predictions from models should be evaluated for reasonableness
6. Context determines the practical domain of the model

COMMON MISCONCEPTIONS:
- Forgetting that slope and intercept have real-world meanings
- Using equations outside their reasonable domain
- Believing the model is "truth" rather than approximation
- Not checking if predictions make sense in context
- Confusing the equation itself with the data

TEACHING SEQUENCE:
Hook/Engagement: Cell phone data pricing: $20 base plus $5 per GB. This is a linear model: C = 5g + 20. Real data might not follow exactly, but the model helps predict and understand the relationship.

Direct Instruction: Review finding slope and y-intercept from data. Write equation in slope-intercept form. Interpret slope as "for each additional unit of x, y changes by this much." Interpret y-intercept as "the value of y when x is zero." Use the equation to make predictions. Evaluate predictions for reasonableness.

Guided Practice: Write equations from data or trend lines. Interpret slope and intercept in real contexts. Make predictions using the model. Identify when predictions might be unreasonable.

Independent Application: Model real data sets with linear equations. Make predictions and check against actual values. Present findings with interpretations. Critique linear models for appropriateness.

DIFFERENTIATION:
Struggling Learners: Provide templates for writing interpretations, focus on the "story" the equation tells, practice with clear linear patterns, use graphing technology for finding equations.
Advanced Learners: Evaluate model fit using residual analysis, explore when linear models are inappropriate, investigate correlation coefficients, compare competing models.

ASSESSMENT INDICATORS:
Students write linear models from data. Students interpret slope and intercept in context. Students make reasonable predictions. Students evaluate model appropriateness.

VOCABULARY:
Linear model, slope, y-intercept, rate of change, prediction, domain, interpretation, residual

CONNECTION TO FUTURE LEARNING:
Linear modeling is foundational for regression analysis, statistical inference, and quantitative analysis in science, business, and social sciences.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear Models' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Two-Way Tables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Two-Way Tables' AND grade_level_min = 8),
  'Two-Way Tables Topic Guide',
  'Comprehensive teaching approach for organizing and analyzing categorical data',
  'TWO-WAY TABLES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand categorical data, calculate percentages, work with ratios, and read and interpret tables.

LEARNING OBJECTIVES:
Students will construct two-way tables from data. Students will interpret row, column, and total frequencies. Students will calculate relative frequencies (percentages). Students will analyze relationships between categorical variables.

KEY CONCEPTS:
1. Two-way tables organize data by two categorical variables
2. Rows represent categories of one variable; columns represent another
3. Cell entries show frequency (count) of that combination
4. Marginal frequencies: row totals, column totals, and grand total
5. Joint frequency: frequency in a single cell
6. Relative frequency: frequency divided by total (as percentage)

COMMON MISCONCEPTIONS:
- Confusing row totals with column totals
- Calculating percentages from wrong total
- Not understanding what marginal frequencies represent
- Assuming association when none exists
- Confusing joint relative frequency with conditional relative frequency

TEACHING SEQUENCE:
Hook/Engagement: Survey: Do you prefer pizza or tacos? Are you left-handed or right-handed? Organize results in a two-way table. Now we can see if there''s any relationship between food preference and handedness!

Direct Instruction: Explain how two-way tables organize data by two categories. Demonstrate constructing a table from raw data. Define marginal frequencies (row and column totals). Calculate different types of relative frequencies. Introduce conditional relative frequency (percentage within a row or column).

Guided Practice: Construct two-way tables from data. Find marginal and joint frequencies. Calculate relative frequencies (joint, marginal, conditional). Compare conditional frequencies to look for association.

Independent Application: Collect real survey data and organize in two-way tables. Investigate possible associations. Present findings with appropriate percentages. Critique claims based on two-way table evidence.

DIFFERENTIATION:
Struggling Learners: Use color-coding for rows and columns, practice reading tables before creating them, focus on counts before percentages, provide template tables.
Advanced Learners: Explore chi-square test concepts, investigate conditional probability, analyze complex multi-category data, compare theoretical to observed frequencies.

ASSESSMENT INDICATORS:
Students correctly construct two-way tables. Students calculate marginal and joint frequencies. Students calculate and interpret relative frequencies. Students recognize potential associations.

VOCABULARY:
Two-way table, categorical data, joint frequency, marginal frequency, relative frequency, conditional relative frequency, association

CONNECTION TO FUTURE LEARNING:
Two-way tables are foundational for conditional probability, chi-square tests, and categorical data analysis in statistics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Two-Way Tables' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Associations in Data
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Associations in Data' AND grade_level_min = 8),
  'Associations in Data Topic Guide',
  'Comprehensive teaching approach for identifying patterns in bivariate data',
  'ASSOCIATIONS IN DATA - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should create and interpret scatter plots, work with two-way tables, understand correlation concepts informally, and calculate and compare percentages.

LEARNING OBJECTIVES:
Students will identify positive, negative, and no association in quantitative data. Students will identify association in categorical data using relative frequencies. Students will distinguish association from causation. Students will evaluate the strength of associations.

KEY CONCEPTS:
1. Association means variables tend to occur together in predictable ways
2. Quantitative association: positive (both increase), negative (one increases, other decreases), or none
3. Categorical association: conditional frequencies differ from marginal frequencies
4. Association does NOT mean causation
5. Strength of association: strong, moderate, or weak
6. Confounding variables may explain apparent associations

COMMON MISCONCEPTIONS:
- Believing correlation means causation
- Thinking no association means the variables are unrelated
- Ignoring lurking or confounding variables
- Treating weak associations as meaningless
- Assuming all associations are linear

TEACHING SEQUENCE:
Hook/Engagement: Ice cream sales and drowning rates are positively associated. Does ice cream cause drowning? No! Both are associated with hot weather (confounding variable). This illustrates the crucial distinction between association and causation.

Direct Instruction: Review identifying association in scatter plots. Teach identifying association in two-way tables (compare conditional to marginal frequencies). Explain causation vs. correlation carefully with examples. Discuss confounding variables that might explain associations. Practice evaluating and describing associations.

Guided Practice: Identify association type and strength in scatter plots. Determine if categorical variables are associated using two-way tables. Propose confounding variables for given associations. Evaluate claims of causation critically.

Independent Application: Investigate real-world claimed associations. Research famous examples of correlation vs. causation confusion. Collect data and analyze for association. Present findings with appropriate caveats.

DIFFERENTIATION:
Struggling Learners: Focus on visual identification before calculation, use memorable examples of false causation claims, provide frameworks for describing associations, practice with clear examples first.
Advanced Learners: Explore correlation coefficients quantitatively, investigate Simpson''s paradox, design studies that could establish causation, analyze complex multivariate relationships.

ASSESSMENT INDICATORS:
Students correctly identify association type and strength. Students distinguish association from causation. Students identify potential confounding variables. Students evaluate claims about relationships critically.

VOCABULARY:
Association, correlation, causation, positive association, negative association, confounding variable, lurking variable, strength of association

CONNECTION TO FUTURE LEARNING:
Understanding association is essential for statistical inference, experimental design, and critical evaluation of research claims in all fields.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Associations in Data' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;
