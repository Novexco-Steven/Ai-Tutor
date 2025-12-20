-- Grade 11 Math (Algebra II) Topic Prompts
-- Comprehensive teaching guides for each topic

-- =====================================================
-- UNIT: POLYNOMIAL AND RATIONAL FUNCTIONS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polynomial Operations' AND grade_level_min = 11),
  'Polynomial Operations Topic Guide', 'Adding, subtracting, multiplying polynomials',
  'POLYNOMIAL OPERATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand variables and exponents, combining like terms, the distributive property, and basic algebraic expressions. Prior work with monomials and binomials from Algebra I provides essential foundation.

LEARNING OBJECTIVES:
- Add and subtract polynomials by combining like terms
- Multiply polynomials using distribution and FOIL
- Apply special product patterns (square of binomial, difference of squares)
- Organize polynomial operations efficiently
- Verify results through substitution or graphing

KEY CONCEPTS:
1) Polynomials are algebraic expressions with terms of varying degrees
2) Like terms have identical variable parts (same variables with same exponents)
3) Addition/subtraction only combines like terms; multiplication creates new terms
4) Special patterns accelerate multiplication: (a+b)² = a² + 2ab + b², (a-b)(a+b) = a² - b²
5) Standard form arranges terms from highest to lowest degree
6) Degree of product equals sum of degrees of factors

COMMON MISCONCEPTIONS:
- Trying to combine unlike terms (3x² + 2x ≠ 5x³)
- Forgetting middle term when squaring binomials: (x+3)² ≠ x² + 9
- Sign errors when subtracting polynomials (must distribute negative)
- Confusing addition rules with multiplication rules
- Assuming all terms multiply: (x+2)(x+3) ≠ x² + 6

TEACHING SEQUENCE:
Begin with concrete examples—area of rectangles with variable sides demonstrates polynomial multiplication naturally. Use algebra tiles for visual learners to see how terms combine. Progress from monomial × polynomial to binomial × binomial to larger products. Emphasize pattern recognition with special products before general distribution. Practice organizing work vertically for larger multiplications. Connect to real-world applications in physics formulas and finance.

DIFFERENTIATION:
Struggling learners: Use algebra tiles physically, create term-matching games, provide templates with like-term boxes. Advanced learners: Explore polynomial long division preview, investigate Pascal''s triangle for expansion coefficients, apply to 3D volume problems.

VOCABULARY:
Polynomial, monomial, binomial, trinomial, degree, coefficient, like terms, standard form, FOIL, distributive property, special products, leading coefficient.

CONNECTION TO FUTURE LEARNING:
Polynomial operations are fundamental to polynomial functions, factoring, solving polynomial equations, and eventually polynomial division and synthetic division. These skills appear throughout calculus when manipulating expressions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polynomial Operations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polynomial Equations' AND grade_level_min = 11),
  'Polynomial Equations Topic Guide', 'Solving higher-degree polynomial equations',
  'POLYNOMIAL EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need strong factoring skills from Algebra I, understanding of the zero product property, quadratic formula proficiency, and comfort with polynomial operations including distribution and combining terms.

LEARNING OBJECTIVES:
- Factor polynomials using GCF, grouping, and special patterns
- Apply the Factor Theorem and Remainder Theorem
- Find rational roots using the Rational Root Theorem
- Solve polynomial equations by factoring
- Understand the connection between zeros and factors
- Use synthetic division to test possible roots

KEY CONCEPTS:
1) If P(a) = 0, then (x - a) is a factor of P(x) (Factor Theorem)
2) The degree determines maximum number of roots (counting multiplicity)
3) Rational Root Theorem: possible rational roots are ±(factors of constant)/(factors of leading coefficient)
4) Complex roots come in conjugate pairs for real coefficients
5) End behavior depends on degree and leading coefficient
6) Graph crosses x-axis at roots of odd multiplicity, touches at even multiplicity

COMMON MISCONCEPTIONS:
- Assuming all polynomial equations have rational solutions
- Forgetting to check all possible rational roots systematically
- Confusing remainder with quotient in division
- Believing a third-degree polynomial must have three real roots
- Not recognizing when factoring by grouping applies

TEACHING SEQUENCE:
Start by connecting to quadratic equations students know. Introduce Factor and Remainder Theorems through concrete numerical examples before symbolic work. Demonstrate systematic root-finding using Rational Root Theorem—show how to narrow possibilities. Use synthetic division for efficiency once concept is clear. Graph polynomials to verify solutions visually. Progress to equations requiring combination of techniques.

DIFFERENTIATION:
Struggling learners: Create organized testing charts for rational roots, use graphing technology to identify roots first then verify algebraically, focus on factorable cases. Advanced learners: Explore Descartes'' Rule of Signs, investigate complex roots, preview polynomial long division applications.

VOCABULARY:
Polynomial equation, root, zero, Factor Theorem, Remainder Theorem, Rational Root Theorem, synthetic division, multiplicity, end behavior, depressed polynomial.

CONNECTION TO FUTURE LEARNING:
These skills are essential for rational functions, conic sections, and calculus where finding zeros of derivatives locates extrema. Understanding polynomial behavior supports all higher mathematics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polynomial Equations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: QUADRATIC FUNCTIONS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quadratic Functions and Graphs' AND grade_level_min = 11),
  'Quadratic Functions and Graphs Topic Guide', 'Vertex form, transformations, analysis',
  'QUADRATIC FUNCTIONS AND GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand function notation, graphing linear equations, basic parabola recognition, and transformation concepts from parent functions. Prior experience with quadratic expressions from Algebra I is essential.

LEARNING OBJECTIVES:
- Graph quadratics in vertex form y = a(x-h)² + k
- Identify vertex, axis of symmetry, and direction of opening
- Transform quadratic graphs through shifts, stretches, and reflections
- Convert between vertex form and standard form
- Analyze graphs to write equations
- Connect graphical and algebraic representations

KEY CONCEPTS:
1) Vertex form y = a(x-h)² + k reveals vertex at (h, k) directly
2) Parameter a controls: direction (positive up, negative down) and width (|a| > 1 narrow, |a| < 1 wide)
3) h causes horizontal shift (opposite direction of sign)
4) k causes vertical shift
5) Axis of symmetry is x = h
6) Maximum/minimum value is k depending on direction

COMMON MISCONCEPTIONS:
- Reversing the sign of h (thinking x - 3 shifts left)
- Confusing vertical stretch with horizontal stretch effects
- Assuming vertex is always at origin without transformations
- Not recognizing that standard form still represents a parabola
- Mixing up which parameter affects width vs. direction

TEACHING SEQUENCE:
Begin with parent function y = x² and systematically introduce one transformation at a time. Use graphing technology to explore transformations dynamically. Have students predict before graphing. Connect vertex form parameters to physical meaning—projectile motion with vertex as maximum height. Practice converting between forms. Analyze real-world parabolic shapes (bridges, fountains, satellite dishes).

DIFFERENTIATION:
Struggling learners: Use color-coding for different transformations, provide transformation reference cards, graph by plotting points first then verify with parameters. Advanced learners: Explore combinations of transformations, investigate reflections over other lines, connect to complex numbers.

VOCABULARY:
Quadratic function, parabola, vertex, vertex form, standard form, axis of symmetry, maximum, minimum, transformation, stretch, compression, reflection, parent function.

CONNECTION TO FUTURE LEARNING:
Quadratic analysis extends to all polynomial functions and conic sections. Transformation understanding applies to exponential, logarithmic, and trigonometric functions. Optimization problems in calculus rely on finding vertices.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quadratic Functions and Graphs' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Completing the Square' AND grade_level_min = 11),
  'Completing the Square Topic Guide', 'Converting to vertex form by completing the square',
  'COMPLETING THE SQUARE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must be proficient with perfect square trinomials, factoring, expanding binomial squares, and basic equation solving. Understanding of quadratic graphs in vertex form provides motivation for the technique.

LEARNING OBJECTIVES:
- Recognize the completing the square process
- Convert quadratics from standard to vertex form
- Solve quadratic equations by completing the square
- Apply the technique to derive the quadratic formula
- Complete the square with leading coefficients other than 1
- Connect algebraic process to geometric interpretation

KEY CONCEPTS:
1) x² + bx + (b/2)² = (x + b/2)² — the perfect square pattern
2) Adding (b/2)² creates a perfect square trinomial
3) Must add same value to both sides to maintain equality
4) When a ≠ 1, factor it out first or divide through
5) Process converts standard form to vertex form
6) Geometric model: building a complete square from rectangle

COMMON MISCONCEPTIONS:
- Forgetting to add (b/2)² to both sides
- Errors with negative b values (signs in the result)
- Not factoring out leading coefficient first when a ≠ 1
- Confusing completing the square with factoring
- Arithmetic errors computing (b/2)²

TEACHING SEQUENCE:
Start with geometric model—show rectangle x by (x+6) and how to complete literal square. Transition to algebraic representation. Practice with coefficient of 1 first. Explicitly connect to vertex form y = a(x-h)² + k. Show how this derives the quadratic formula (powerful insight). Practice with various leading coefficients. Apply to converting parabola equations and solving equations.

DIFFERENTIATION:
Struggling learners: Use algebra tiles for geometric model, provide step-by-step templates, focus on a = 1 cases first with guided practice. Advanced learners: Derive quadratic formula independently, apply to circle equations, explore completing the square for conic sections.

VOCABULARY:
Completing the square, perfect square trinomial, vertex form, half of b, leading coefficient, geometric model, derivation.

CONNECTION TO FUTURE LEARNING:
This technique is essential for conic sections (converting general to standard form), deriving the quadratic formula, and calculus applications. Understanding the algebraic mechanics supports integration techniques later.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Completing the Square' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quadratic Formula and Discriminant' AND grade_level_min = 11),
  'Quadratic Formula and Discriminant Topic Guide', 'Formula derivation, discriminant analysis, applications',
  'QUADRATIC FORMULA AND DISCRIMINANT - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need completing the square skills, understanding of standard form ax² + bx + c = 0, square root properties including negative radicands, and comfort with complex algebraic manipulation.

LEARNING OBJECTIVES:
- Apply the quadratic formula to solve any quadratic equation
- Understand the derivation from completing the square
- Calculate and interpret the discriminant b² - 4ac
- Determine number and type of solutions from discriminant
- Connect discriminant to graph behavior
- Choose efficient solving methods for different equations

KEY CONCEPTS:
1) Quadratic formula: x = (-b ± √(b² - 4ac)) / 2a
2) Formula works for ALL quadratic equations in standard form
3) Discriminant D = b² - 4ac determines solution nature:
   - D > 0: two distinct real solutions
   - D = 0: one repeated real solution (perfect square)
   - D < 0: two complex conjugate solutions
4) ± symbol yields two solutions
5) Discriminant connects to parabola''s intersection with x-axis

COMMON MISCONCEPTIONS:
- Sign errors with negative b (especially -(-b))
- Putting entire numerator over 2a, not just ±√(b²-4ac)
- Forgetting ± and finding only one solution
- Computing discriminant incorrectly (order of operations)
- Assuming D < 0 means no solutions (rather than complex solutions)

TEACHING SEQUENCE:
Derive formula from completing the square—students should see it''s not magic. Practice substitution carefully with varied equations. Introduce discriminant as a shortcut to determine solution type. Connect to graphs: D > 0 means parabola crosses x-axis twice, D = 0 means tangent, D < 0 means no x-intercepts. Compare efficiency of factoring, completing square, and formula for different equations.

DIFFERENTIATION:
Struggling learners: Provide formula reference cards, use substitution templates, practice discriminant calculations separately. Advanced learners: Derive formula independently, explore Vieta''s formulas for sum/product of roots, investigate complex solutions graphically.

VOCABULARY:
Quadratic formula, discriminant, real solutions, complex solutions, conjugate pair, standard form, radicand, distinct roots, repeated root.

CONNECTION TO FUTURE LEARNING:
The discriminant concept extends to polynomial equations generally. Complex solutions introduce imaginary numbers properly. Understanding when formulas are efficient guides mathematical problem-solving. Calculus applications include optimization.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quadratic Formula and Discriminant' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: EXPONENTIAL AND LOGARITHMIC FUNCTIONS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Functions' AND grade_level_min = 11),
  'Exponential Functions Topic Guide', 'Graphs, transformations, and e',
  'EXPONENTIAL FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand exponent rules, including negative and fractional exponents, function notation, transformations of functions, and basic graphing. Prior exposure to exponential growth/decay from earlier grades helps.

LEARNING OBJECTIVES:
- Graph exponential functions y = ab^x and identify key features
- Apply transformations to exponential graphs
- Understand the natural base e and its significance
- Distinguish between exponential growth and decay
- Model real-world situations with exponential functions
- Connect tables, graphs, and equations

KEY CONCEPTS:
1) Exponential function: f(x) = ab^x where a ≠ 0, b > 0, b ≠ 1
2) b > 1: exponential growth; 0 < b < 1: exponential decay
3) Horizontal asymptote at y = 0 (or transformed)
4) Always passes through (0, a) when in standard form
5) Natural base e ≈ 2.71828... arises from continuous compounding
6) Growth/decay factor vs. rate: b = 1 + r for growth, b = 1 - r for decay

COMMON MISCONCEPTIONS:
- Confusing exponential with power functions (2^x vs x²)
- Thinking exponential functions can equal zero
- Not recognizing decay when base appears as fraction
- Assuming all exponential functions pass through origin
- Confusing growth rate with growth factor

TEACHING SEQUENCE:
Start with compound interest example—concrete motivation for exponential growth. Graph y = 2^x by plotting points, identify features. Compare to y = (1/2)^x for decay. Introduce e through continuous compounding limit. Apply transformations systematically. Model various real-world scenarios: population growth, radioactive decay, cooling, appreciation/depreciation.

DIFFERENTIATION:
Struggling learners: Create tables of values first, use technology to explore, focus on integer exponents initially, connect to repeated multiplication. Advanced learners: Explore limits defining e, investigate exponential equations requiring logarithms, model complex real-world scenarios.

VOCABULARY:
Exponential function, exponential growth, exponential decay, base, growth factor, decay factor, natural base, e, horizontal asymptote, continuous growth, compound interest.

CONNECTION TO FUTURE LEARNING:
Exponential functions pair with logarithms as inverses. They are fundamental in calculus where d/dx(e^x) = e^x. Applications span population models, finance, physics (decay), and probability distributions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Logarithms' AND grade_level_min = 11),
  'Logarithms Topic Guide', 'Definition, common logs, natural logs',
  'LOGARITHMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand exponential functions, exponent rules, inverse functions conceptually, and function notation. Comfort with solving exponential equations with common bases prepares for needing logarithms.

LEARNING OBJECTIVES:
- Understand logarithms as inverses of exponential functions
- Convert between logarithmic and exponential forms
- Evaluate logarithms without calculators when possible
- Use common (log) and natural (ln) logarithms
- Graph logarithmic functions and identify key features
- Apply logarithms to solve exponential equations

KEY CONCEPTS:
1) Definition: log_b(x) = y means b^y = x
2) Logarithm answers "what exponent gives this result?"
3) log and ln are inverses of 10^x and e^x respectively
4) Domain: x > 0 (can only take log of positive numbers)
5) Vertical asymptote at x = 0
6) Graph is reflection of exponential over y = x
7) log_b(b^x) = x and b^(log_b(x)) = x (inverse properties)

COMMON MISCONCEPTIONS:
- Treating log as multiplication (log(ab) ≠ a × log(b))
- Trying to take log of negative numbers or zero
- Confusing log_b(x) notation with multiplication
- Not recognizing log means log₁₀ and ln means log_e
- Thinking log(a + b) = log(a) + log(b)

TEACHING SEQUENCE:
Introduce logarithms as a need—how do we solve 2^x = 7? Define as inverse of exponential. Practice conversion between forms extensively. Evaluate simple logarithms: log₂(8), log₃(27), log(100). Introduce common and natural logs. Graph by plotting points and connect to exponential reflection. Apply to solving equations like 3^x = 15.

DIFFERENTIATION:
Struggling learners: Create conversion practice cards, use "log is asking for exponent" mantra, focus on simple evaluations first. Advanced learners: Explore change of base formula, investigate logarithmic scales (Richter, pH, decibels), prove log properties.

VOCABULARY:
Logarithm, base, common logarithm, natural logarithm, ln, inverse function, domain, vertical asymptote, logarithmic form, exponential form.

CONNECTION TO FUTURE LEARNING:
Logarithm properties enable solving complex exponential equations. Calculus uses logarithmic differentiation and integration of 1/x yields ln|x|. Scientific applications rely heavily on logarithmic scales and models.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Logarithms' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Properties of Logarithms' AND grade_level_min = 11),
  'Properties of Logarithms Topic Guide', 'Product, quotient, and power rules',
  'PROPERTIES OF LOGARITHMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need solid understanding of logarithm definition, conversion between forms, exponent rules, and basic logarithm evaluation. The connection between log properties and exponent rules should be motivated.

LEARNING OBJECTIVES:
- Apply the product rule: log_b(mn) = log_b(m) + log_b(n)
- Apply the quotient rule: log_b(m/n) = log_b(m) - log_b(n)
- Apply the power rule: log_b(m^p) = p·log_b(m)
- Expand and condense logarithmic expressions
- Use change of base formula: log_b(x) = log(x)/log(b)
- Connect properties to corresponding exponent rules

KEY CONCEPTS:
1) Log properties mirror exponent rules: multiplication → addition, division → subtraction, powers → multiplication
2) Product rule: log of product equals sum of logs
3) Quotient rule: log of quotient equals difference of logs
4) Power rule: log of power equals exponent times log of base argument
5) Change of base formula enables calculator use for any base
6) Properties only apply when logs have same base

COMMON MISCONCEPTIONS:
- Thinking log(a + b) = log(a) + log(b) (NO! This is the most common error)
- Applying properties to logs of different bases
- Confusing expansion direction (when to add vs. when to multiply)
- Errors with quotient rule signs
- Forgetting the power rule moves exponent to front, not multiplies bases

TEACHING SEQUENCE:
Derive each property from exponent rules—show WHY they work, not just that they work. Let m = b^x and n = b^y, then mn = b^(x+y), so log_b(mn) = x + y = log_b(m) + log_b(n). Practice expansion and condensing separately before mixing. Introduce change of base for calculator use. Apply to solving equations and simplifying expressions.

DIFFERENTIATION:
Struggling learners: Create property reference cards with examples, use color-coding for different properties, practice one property at a time. Advanced learners: Prove properties independently, explore natural log properties in calculus preview, apply to complex equations.

VOCABULARY:
Product rule, quotient rule, power rule, expand, condense, change of base formula, logarithmic expression, equivalent forms.

CONNECTION TO FUTURE LEARNING:
These properties are essential for solving logarithmic equations and advanced exponential equations. Calculus uses log properties extensively in differentiation (logarithmic differentiation) and integration.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties of Logarithms' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential and Logarithmic Equations' AND grade_level_min = 11),
  'Exponential and Logarithmic Equations Topic Guide', 'Solving equations with exponents and logs',
  'EXPONENTIAL AND LOGARITHMIC EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must be proficient with exponential and logarithmic functions, all logarithm properties, change of base formula, and basic equation-solving strategies. Understanding inverse relationships is crucial.

LEARNING OBJECTIVES:
- Solve exponential equations using logarithms
- Solve exponential equations by equating exponents
- Solve logarithmic equations by converting to exponential form
- Apply logarithm properties to solve equations
- Check for extraneous solutions in logarithmic equations
- Model and solve real-world applications

KEY CONCEPTS:
1) Exponential equations: isolate the exponential, take log of both sides
2) Same-base method: if b^x = b^y, then x = y
3) Logarithmic equations: condense to single log, convert to exponential
4) Extraneous solutions occur when solutions make log argument ≤ 0
5) Applications: half-life, compound interest, population growth, pH
6) Always check solutions in original equation

COMMON MISCONCEPTIONS:
- Forgetting to check for extraneous solutions
- Taking log of sum instead of isolating exponential first
- Not applying properties before converting log equations
- Rounding too early in multi-step problems
- Confusing when to use log vs. when to use exponential conversion

TEACHING SEQUENCE:
Begin with exponential equations solvable by equating exponents (5^x = 125). Transition to equations requiring logarithms (3^x = 20). Practice isolating the exponential term first. For log equations, practice condensing then converting. Emphasize domain restrictions and checking solutions. Apply to half-life, doubling time, compound interest, and decay problems.

DIFFERENTIATION:
Struggling learners: Create decision flowcharts for equation types, practice conversion between forms heavily, use technology to verify solutions. Advanced learners: Solve equations with multiple exponential terms, explore Newton''s Law of Cooling, investigate logistic growth models.

VOCABULARY:
Exponential equation, logarithmic equation, extraneous solution, isolate, condense, half-life, doubling time, continuous growth, compound interest.

CONNECTION TO FUTURE LEARNING:
These solving techniques apply to calculus optimization and differential equations. Understanding exponential and logarithmic relationships is fundamental to advanced mathematical modeling and scientific applications.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential and Logarithmic Equations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: SEQUENCES, SERIES, AND PROBABILITY
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Arithmetic Sequences and Series' AND grade_level_min = 11),
  'Arithmetic Sequences and Series Topic Guide', 'Formulas and applications',
  'ARITHMETIC SEQUENCES AND SERIES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand linear functions, slope as constant rate of change, function notation, and basic algebraic manipulation. Pattern recognition skills from earlier grades provide foundation.

LEARNING OBJECTIVES:
- Identify arithmetic sequences by constant difference
- Write explicit and recursive formulas for arithmetic sequences
- Find any term using the explicit formula a_n = a_1 + (n-1)d
- Calculate arithmetic series using the sum formula S_n = n(a_1 + a_n)/2
- Apply sequences and series to real-world problems
- Connect arithmetic sequences to linear functions

KEY CONCEPTS:
1) Arithmetic sequence: constant difference between consecutive terms
2) Common difference d = a_(n+1) - a_n
3) Explicit formula: a_n = a_1 + (n-1)d gives any term directly
4) Recursive formula: a_n = a_(n-1) + d with initial term
5) Arithmetic series: sum of terms, S_n = n(a_1 + a_n)/2 = n/2[2a_1 + (n-1)d]
6) Linear connection: plotting (n, a_n) yields a line with slope d

COMMON MISCONCEPTIONS:
- Confusing sequence (list) with series (sum)
- Using n instead of (n-1) in explicit formula
- Not recognizing arithmetic patterns in word problems
- Confusing term number with term value
- Errors in sum formula application (using wrong n or endpoints)

TEACHING SEQUENCE:
Begin with concrete examples: seat rows in theater, stacking coins. Have students find patterns before introducing formulas. Derive formulas rather than presenting them—explicit formula comes from repeated addition, sum formula from pairing first/last terms. Practice both identifying sequences and generating terms. Apply to salary increases, depreciation, seating arrangements.

DIFFERENTIATION:
Struggling learners: Use visual representations, create tables before formulas, practice pattern identification extensively. Advanced learners: Derive sum formula independently, explore connections to calculus (Riemann sums), investigate arithmetic means.

VOCABULARY:
Arithmetic sequence, common difference, explicit formula, recursive formula, arithmetic series, partial sum, term, index, sigma notation.

CONNECTION TO FUTURE LEARNING:
Sequences and series are fundamental to calculus, particularly infinite series and convergence. Arithmetic sequences connect to linear growth models. Sigma notation introduced here extends to integration concepts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Arithmetic Sequences and Series' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Geometric Sequences and Series' AND grade_level_min = 11),
  'Geometric Sequences and Series Topic Guide', 'Formulas and applications',
  'GEOMETRIC SEQUENCES AND SERIES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need understanding of exponential functions, arithmetic sequences for comparison, exponent rules, and basic algebraic manipulation. Pattern recognition with multiplication provides foundation.

LEARNING OBJECTIVES:
- Identify geometric sequences by constant ratio
- Write explicit and recursive formulas for geometric sequences
- Find any term using a_n = a_1 · r^(n-1)
- Calculate finite geometric series using S_n = a_1(1 - r^n)/(1 - r)
- Determine when infinite geometric series converge
- Calculate infinite sums when |r| < 1

KEY CONCEPTS:
1) Geometric sequence: constant ratio between consecutive terms
2) Common ratio r = a_(n+1)/a_n
3) Explicit formula: a_n = a_1 · r^(n-1)
4) Finite series sum: S_n = a_1(1 - r^n)/(1 - r), r ≠ 1
5) Infinite series: converges only when |r| < 1
6) Infinite sum: S = a_1/(1 - r) when |r| < 1
7) Exponential connection: plotting yields exponential curve

COMMON MISCONCEPTIONS:
- Confusing arithmetic (add) with geometric (multiply)
- Using wrong exponent: r^n instead of r^(n-1)
- Not recognizing when infinite series diverges
- Applying infinite sum formula when |r| ≥ 1
- Confusing common ratio with common difference

TEACHING SEQUENCE:
Start with concrete examples: bouncing ball height, paper folding. Compare to arithmetic sequences explicitly. Derive formulas from patterns—explicit formula from repeated multiplication. For series sum, use the algebraic trick: S_n - rS_n. Explore convergence through numerical examples before formal condition. Apply to compound interest, depreciation, population models.

DIFFERENTIATION:
Struggling learners: Create comparison charts (arithmetic vs. geometric), use tables, focus on finite series first. Advanced learners: Explore repeating decimals as infinite series, investigate convergence proofs, apply to fractals.

VOCABULARY:
Geometric sequence, common ratio, explicit formula, recursive formula, geometric series, convergent, divergent, infinite series, partial sum.

CONNECTION TO FUTURE LEARNING:
Geometric series are fundamental to calculus, particularly power series and Taylor series. The convergence concept introduces limits. Applications extend to present value calculations and probability.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Geometric Sequences and Series' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Combinations and Permutations' AND grade_level_min = 11),
  'Combinations and Permutations Topic Guide', 'Counting principles and formulas',
  'COMBINATIONS AND PERMUTATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need understanding of factorial notation, basic multiplication principle, organized counting strategies, and problem-solving skills. Prior exposure to counting problems helps establish context.

LEARNING OBJECTIVES:
- Apply the Fundamental Counting Principle
- Calculate permutations when order matters
- Calculate combinations when order doesn''t matter
- Distinguish between permutation and combination situations
- Use factorial notation appropriately
- Apply counting to probability problems

KEY CONCEPTS:
1) Fundamental Counting Principle: if task A can be done in m ways and task B in n ways, together they can be done in m × n ways
2) Permutation: arrangement where order matters, P(n,r) = n!/(n-r)!
3) Combination: selection where order doesn''t matter, C(n,r) = n!/[r!(n-r)!]
4) C(n,r) = P(n,r)/r! (divide out the orderings)
5) Special cases: n! = n×(n-1)×...×1, 0! = 1
6) Pascal''s Triangle connection: C(n,r) appears in row n

COMMON MISCONCEPTIONS:
- Not recognizing when order matters vs. doesn''t
- Confusing permutation and combination formulas
- Forgetting that selecting none (r=0) yields 1 way
- Thinking larger r always means larger result
- Not recognizing when items are identical (reducing permutations)

TEACHING SEQUENCE:
Start with tree diagrams and systematic listing for small cases. Introduce factorial as shortcut for counting arrangements. Present permutation formula for "arrange r from n" situations. Transition to combinations by considering when arrangements are equivalent. Use concrete scenarios: forming committees vs. assigning roles. Connect to probability calculations.

DIFFERENTIATION:
Struggling learners: Use physical manipulatives, create decision flowcharts for choosing formula, practice distinguishing scenarios extensively. Advanced learners: Explore combinations with repetition, investigate Pascal''s identity, prove formulas algebraically.

VOCABULARY:
Permutation, combination, factorial, Fundamental Counting Principle, order, arrangement, selection, n choose r, Pascal''s Triangle.

CONNECTION TO FUTURE LEARNING:
Counting connects directly to probability calculations. Combinations appear in binomial theorem expansion. These concepts extend to statistics, discrete mathematics, and computer science algorithms.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Combinations and Permutations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Probability Concepts' AND grade_level_min = 11),
  'Probability Concepts Topic Guide', 'Theoretical and experimental probability',
  'PROBABILITY CONCEPTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need understanding of combinations and permutations, fraction and decimal operations, basic set theory concepts (union, intersection), and organized counting strategies.

LEARNING OBJECTIVES:
- Calculate theoretical probability using counting principles
- Understand and apply the complement rule
- Calculate probability of compound events (and/or)
- Distinguish between independent and dependent events
- Apply conditional probability concepts
- Connect counting to probability calculations

KEY CONCEPTS:
1) P(E) = favorable outcomes / total outcomes
2) Probabilities range from 0 (impossible) to 1 (certain)
3) Complement: P(not E) = 1 - P(E)
4) Addition rule: P(A or B) = P(A) + P(B) - P(A and B)
5) Multiplication rule: P(A and B) = P(A) × P(B|A)
6) Independent events: P(A and B) = P(A) × P(B)
7) Conditional probability: P(B|A) = P(A and B)/P(A)

COMMON MISCONCEPTIONS:
- Assuming events are independent when they''re not
- Adding probabilities without subtracting overlap
- Confusing "or" (addition) with "and" (multiplication)
- Not recognizing when to use complements
- Thinking conditional probability equals joint probability

TEACHING SEQUENCE:
Begin with simple experiments: coins, dice, cards. Build from single events to compound events. Introduce complement rule as efficient strategy. Distinguish independent vs. dependent through examples (with/without replacement). Develop multiplication rule, then conditional probability. Use Venn diagrams and tree diagrams for visualization. Apply to real-world scenarios: genetics, quality control, games.

DIFFERENTIATION:
Struggling learners: Use physical models (actual cards, dice), create probability trees systematically, focus on distinguishing event types. Advanced learners: Explore Bayes'' Theorem, investigate expected value, apply to complex scenarios.

VOCABULARY:
Probability, sample space, event, outcome, complement, independent, dependent, conditional probability, mutually exclusive, addition rule, multiplication rule.

CONNECTION TO FUTURE LEARNING:
Probability concepts are fundamental to statistics, which relies on probability distributions. Applications extend to risk assessment, decision theory, and data science. Calculus connects through continuous probability distributions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Probability Concepts' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;
