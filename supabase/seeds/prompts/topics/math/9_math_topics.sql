-- Grade 9 Math Topic Prompts (Algebra I)
-- Comprehensive teaching guides for each Grade 9 Math topic

-- ============================================================================
-- UNIT: Relationships Between Quantities
-- ============================================================================

-- Topic: Units and Dimensional Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Units and Dimensional Analysis' AND grade_level_min = 9),
  'Units and Dimensional Analysis Topic Guide',
  'Comprehensive teaching approach for using units to guide problem solving',
  'UNITS AND DIMENSIONAL ANALYSIS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand basic unit conversions from middle school, work with ratios and proportions, understand multiplication and division with fractions, and be familiar with common units of measurement.

LEARNING OBJECTIVES:
Students will use dimensional analysis to convert units. Students will use units to check the validity of equations and solutions. Students will interpret units in context. Students will choose appropriate units for given situations.

KEY CONCEPTS:
1. Dimensional analysis uses conversion factors as fractions equal to 1
2. Units can be multiplied, divided, and cancelled like algebraic terms
3. Correct units in an answer indicate correct mathematical operations
4. Wrong units often reveal errors in problem setup
5. Derived units are built from base units (speed = distance/time)
6. Choosing appropriate units makes numbers manageable

COMMON MISCONCEPTIONS:
- Forgetting that units must be consistent in equations
- Setting up conversion factors upside down
- Believing unit analysis is separate from "real math"
- Not recognizing that some formulas require specific units
- Ignoring units until the final answer

TEACHING SEQUENCE:
Hook/Engagement: Present a famous unit error: the Mars Climate Orbiter crashed because one team used metric units while another used imperial. This $125 million mistake shows why units matter in real engineering.

Direct Instruction: Review unit conversions as multiplying by 1 (60 sec/1 min = 1). Show how to chain multiple conversions. Demonstrate using units to verify equation setup: if distance = rate × time, then miles = (miles/hour) × hour. Practice identifying when solutions have wrong units indicating calculation errors.

Guided Practice: Convert between units using dimensional analysis. Set up and solve multi-step conversions. Check equations for dimensional consistency. Interpret what units tell us about relationships.

Independent Application: Solve real-world problems requiring unit conversions (currency, measurements, rates). Analyze scientific formulas for unit consistency. Create conversion problems for classmates.

DIFFERENTIATION:
Struggling Learners: Use explicit cancellation marks, work with familiar units first, provide conversion factor charts, break multi-step conversions into single steps.
Advanced Learners: Work with complex derived units, investigate dimensionless quantities, explore scientific notation with units, analyze unit systems (SI vs. imperial).

ASSESSMENT INDICATORS:
Students correctly set up conversion factors. Students perform multi-step conversions accurately. Students use units to verify equation validity. Students choose appropriate units for context.

VOCABULARY:
Dimensional analysis, conversion factor, unit rate, derived unit, base unit, dimensional consistency

CONNECTION TO FUTURE LEARNING:
Dimensional analysis is essential for physics, chemistry, engineering, and any field requiring quantitative reasoning with measurements.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Units and Dimensional Analysis' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Algebraic Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Algebraic Expressions' AND grade_level_min = 9),
  'Algebraic Expressions Topic Guide',
  'Comprehensive teaching approach for understanding parts of expressions and their meanings',
  'ALGEBRAIC EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand variables as representing unknown quantities, know order of operations, combine like terms, and use the distributive property.

LEARNING OBJECTIVES:
Students will interpret parts of an expression (terms, coefficients, factors). Students will interpret expressions in context. Students will write expressions to represent real-world situations. Students will determine if expressions are equivalent.

KEY CONCEPTS:
1. Terms are parts of expressions separated by + or -
2. Coefficients are numbers multiplying variables
3. Factors are quantities being multiplied together
4. Constant terms have no variable
5. Equivalent expressions produce the same values for all variable values
6. The structure of an expression reveals its meaning

COMMON MISCONCEPTIONS:
- Confusing terms with factors
- Not recognizing that -3x is one term (not two)
- Thinking expressions with different appearance cannot be equivalent
- Forgetting that coefficients include the sign
- Not seeing the coefficient of x as 1 when no number is written

TEACHING SEQUENCE:
Hook/Engagement: A phone plan charges $40 base plus $0.10 per text. Write an expression for the monthly cost. The expression 40 + 0.10t reveals the structure: fixed cost plus variable cost based on usage.

Direct Instruction: Define and identify parts of expressions: terms, coefficients, constants, and factors. Show how expression structure relates to meaning in context (2x + 3y: what do the coefficients mean?). Demonstrate proving equivalence through simplification or substitution. Connect expressions to real-world quantities.

Guided Practice: Identify terms, coefficients, and constants in various expressions. Write expressions from verbal descriptions. Determine if pairs of expressions are equivalent. Interpret what parts of expressions represent in context.

Independent Application: Model real-world situations with expressions. Analyze whether simplified and unsimplified forms are equivalent. Explain the meaning of expressions in context. Create expression-writing problems.

DIFFERENTIATION:
Struggling Learners: Use color-coding for different parts of expressions, work with single-variable expressions first, provide vocabulary reference cards, use physical contexts consistently.
Advanced Learners: Work with expressions involving exponents and multiple variables, explore when expressions look different but are equivalent, connect to function notation.

ASSESSMENT INDICATORS:
Students correctly identify parts of expressions. Students write expressions from verbal descriptions. Students determine equivalence. Students interpret expressions in context.

VOCABULARY:
Expression, term, coefficient, constant, factor, variable, equivalent expressions, simplify

CONNECTION TO FUTURE LEARNING:
Understanding expression structure is fundamental for all algebraic manipulation, equation solving, and mathematical modeling.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Algebraic Expressions' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Creating Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Creating Equations' AND grade_level_min = 9),
  'Creating Equations Topic Guide',
  'Comprehensive teaching approach for translating real-world situations into equations',
  'CREATING EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should write and evaluate algebraic expressions, understand variables represent unknown quantities, solve simple equations, and interpret word problems.

LEARNING OBJECTIVES:
Students will identify unknown quantities and assign variables. Students will translate verbal descriptions into algebraic equations. Students will create equations representing real-world relationships. Students will verify that created equations model the situation correctly.

KEY CONCEPTS:
1. Identify what is unknown and define a variable
2. Translate key phrases: "is" = equals, "more than" = +, "less than" = -
3. Some situations require multiple variables
4. Equations express relationships between quantities
5. Check equations by substituting known values
6. Clear variable definitions are essential

COMMON MISCONCEPTIONS:
- Writing expressions when equations are needed (or vice versa)
- Reversing order for "less than" (5 less than x is x-5, not 5-x)
- Not clearly defining what variables represent
- Setting up equations that don''t match the situation
- Forgetting to include all constraints

TEACHING SEQUENCE:
Hook/Engagement: A puzzle: "The sum of two consecutive integers is 45. What are they?" Students try to guess, then learn to create an equation (x + (x+1) = 45) that systematically finds the answer.

Direct Instruction: Model the equation-creation process: read carefully, identify unknowns, define variables, translate relationships. Practice with various contexts: age problems, geometry, money, mixtures. Emphasize writing clear variable definitions. Show how to verify equations match the situation.

Guided Practice: Create equations from word problems. Identify and define appropriate variables. Write and solve equations for various contexts. Check that solutions make sense in the original problem.

Independent Application: Write equations for real-world situations. Solve problems requiring equation creation. Create word problems for given equations. Analyze whether equations correctly model described situations.

DIFFERENTIATION:
Struggling Learners: Provide translation phrase charts, use sentence frames for variable definitions, work with single-variable situations first, draw diagrams of problem situations.
Advanced Learners: Create systems of equations from complex situations, write equations with multiple constraints, explore when problems have no solution or infinite solutions.

ASSESSMENT INDICATORS:
Students correctly define variables. Students translate situations into accurate equations. Students verify equations match the context. Students solve created equations and interpret solutions.

VOCABULARY:
Equation, variable, expression, constraint, model, translate, define, unknown

CONNECTION TO FUTURE LEARNING:
Creating equations is the foundation for all applied algebra, mathematical modeling, and problem-solving throughout mathematics and science.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Creating Equations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Formulas and Literal Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Formulas and Literal Equations' AND grade_level_min = 9),
  'Formulas and Literal Equations Topic Guide',
  'Comprehensive teaching approach for rearranging formulas to solve for variables',
  'FORMULAS AND LITERAL EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should solve multi-step equations, use inverse operations, understand formulas as relationships between quantities, and work with multiple variables.

LEARNING OBJECTIVES:
Students will rearrange formulas to solve for specified variables. Students will understand that the same inverse operations apply with letters as with numbers. Students will apply rearranged formulas to solve problems. Students will recognize common formulas and their uses.

KEY CONCEPTS:
1. Literal equations have multiple variables (like d = rt)
2. Solve for a variable by isolating it on one side
3. Use inverse operations exactly as with numerical equations
4. The other variables are treated as constants during rearrangement
5. Rearranged formulas are useful for repeated calculations
6. Check by substituting original arrangement should match

COMMON MISCONCEPTIONS:
- Treating all letters as the "answer variable"
- Getting confused by having multiple letters
- Forgetting that operations apply to entire sides of equations
- Not recognizing when division includes multiple terms
- Making sign errors when subtracting terms with variables

TEACHING SEQUENCE:
Hook/Engagement: You know d = rt. But if you know distance and time and need rate, wouldn''t it be nice to have r = d/t ready? Rearranging formulas gives us tools for any situation.

Direct Instruction: Start with familiar formulas (perimeter, area, distance). Solve for each variable step by step. Emphasize that rules for isolating variables are identical to solving numerical equations. Practice with formulas having the target variable in different positions. Address cases requiring factoring.

Guided Practice: Rearrange formulas for specified variables. Solve for variables that appear once, then in multiple places. Apply rearranged formulas to solve problems. Check solutions by substitution.

Independent Application: Rearrange formulas from science (physics, chemistry). Create formula reference sheets with multiple arrangements. Solve problems more efficiently using appropriate form.

DIFFERENTIATION:
Struggling Learners: Use color-coding for the target variable, work with familiar formulas first, provide step-by-step templates, compare numerical equation solving side-by-side.
Advanced Learners: Solve for variables that appear multiple times (requiring factoring), explore formulas with radicals and exponents, create their own formulas from descriptions.

ASSESSMENT INDICATORS:
Students correctly isolate specified variables. Students apply appropriate inverse operations. Students use rearranged formulas to solve problems. Students verify rearrangements by substitution.

VOCABULARY:
Literal equation, formula, variable, isolate, rearrange, inverse operation, solve for

CONNECTION TO FUTURE LEARNING:
Formula manipulation is essential for physics, chemistry, economics, and any field using mathematical models.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Formulas and Literal Equations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Linear Equations and Inequalities
-- ============================================================================

-- Topic: Multi-Step Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multi-Step Equations' AND grade_level_min = 9),
  'Multi-Step Equations Topic Guide',
  'Comprehensive teaching approach for solving equations with variables on both sides',
  'MULTI-STEP EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should solve two-step equations, combine like terms, use the distributive property, and work with integers and rational numbers.

LEARNING OBJECTIVES:
Students will solve equations with variables on both sides. Students will solve equations requiring distribution. Students will clear fractions and decimals from equations. Students will check solutions in original equations.

KEY CONCEPTS:
1. Collect variable terms on one side, constant terms on the other
2. Distribute before combining like terms
3. Clear fractions by multiplying by the LCD
4. Clear decimals by multiplying by appropriate power of 10
5. Always substitute back to check solutions
6. Document each step to track operations

COMMON MISCONCEPTIONS:
- Distributing to only some terms inside parentheses
- Moving terms without changing signs
- Forgetting to distribute negative signs correctly
- Not applying operations to all terms when clearing fractions
- Making arithmetic errors with negative numbers

TEACHING SEQUENCE:
Hook/Engagement: Two cell phone plans: Plan A costs $30 plus $0.05 per text. Plan B costs $20 plus $0.10 per text. When are they equal? This creates 30 + 0.05x = 20 + 0.10x, requiring comparison techniques.

Direct Instruction: Review two-step equations. Introduce equations with variables on both sides. Establish standard procedure: simplify each side, move variables to one side, move constants to the other, solve, check. Address equations requiring distribution first. Demonstrate clearing fractions and decimals for efficiency.

Guided Practice: Solve increasingly complex equations. Practice with distribution required. Clear fractions before solving. Check all solutions in the original equation.

Independent Application: Solve real-world problems leading to multi-step equations. Create equations for classmates to solve. Analyze common errors and how to avoid them.

DIFFERENTIATION:
Struggling Learners: Use color-coding for variables and constants, provide procedural checklists, work with integer coefficients before fractions/decimals, emphasize the check step.
Advanced Learners: Solve equations with nested parentheses, work with complex fractions, solve for specified variables in literal equations, explore absolute value equations.

ASSESSMENT INDICATORS:
Students correctly solve equations with variables on both sides. Students apply distribution appropriately. Students clear fractions and decimals efficiently. Students verify solutions by substitution.

VOCABULARY:
Multi-step equation, variable, coefficient, distribute, combine like terms, LCD, check solution

CONNECTION TO FUTURE LEARNING:
Multi-step equation solving is essential for systems of equations, quadratics, rational equations, and all advanced algebraic work.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multi-Step Equations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Equations with Special Cases
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equations with Special Cases' AND grade_level_min = 9),
  'Equations with Special Cases Topic Guide',
  'Comprehensive teaching approach for no solution, infinite solutions, and identity equations',
  'EQUATIONS WITH SPECIAL CASES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should solve multi-step linear equations, understand what a solution means, recognize true and false mathematical statements, and simplify algebraic expressions.

LEARNING OBJECTIVES:
Students will recognize equations with one solution (conditional). Students will recognize equations with no solution (contradiction). Students will recognize equations with infinitely many solutions (identity). Students will explain what each type means algebraically and graphically.

KEY CONCEPTS:
1. Conditional equation: one solution (most equations)
2. Contradiction: simplifies to false statement (5=3), no solution
3. Identity: simplifies to true statement (5=5), all real numbers are solutions
4. Graphically: one solution = intersecting lines, no solution = parallel, infinite = same line
5. Recognizing structure can predict solution type
6. Variables cancel out when leading to special cases

COMMON MISCONCEPTIONS:
- Thinking something is wrong when getting 0=0 or 5=7
- Believing every equation must have exactly one answer
- Confusing x=0 (one solution) with 0=0 (infinite solutions)
- Thinking "infinite solutions" means infinitely large numbers
- Not recognizing that identity means ANY number works

TEACHING SEQUENCE:
Hook/Engagement: Try solving: 2(x+3) = 2x + 6. Students simplify to 6 = 6. What does this mean? Every value of x works! This surprising result leads to exploration of special cases.

Direct Instruction: Solve equations resulting in each case: one solution, no solution, infinite solutions. Explain what the final statement means about the solution set. Connect to graphical interpretation (lines intersecting, parallel, or same). Practice recognizing which case an equation will be before solving completely.

Guided Practice: Classify equations by solution type. Create equations with each solution type. Explain why each case occurs. Interpret special cases in real-world contexts.

Independent Application: Analyze when real situations have no solution or infinite solutions. Create problems with specified solution types. Investigate what coefficient relationships cause each case.

DIFFERENTIATION:
Struggling Learners: Use clear flowcharts for classification, practice until "automatic" recognition, use graphing technology to visualize, provide many examples of each type.
Advanced Learners: Predict solution type from equation structure, create parameterized families with different solution types, connect to systems of equations, explore quadratics with special cases.

ASSESSMENT INDICATORS:
Students correctly classify equations by solution type. Students explain why each case occurs. Students interpret special cases in context. Students create equations with specified solution types.

VOCABULARY:
Conditional equation, identity, contradiction, no solution, infinite solutions, parallel lines, coincident lines

CONNECTION TO FUTURE LEARNING:
Understanding solution types is essential for systems of equations, quadratics (discriminant), and mathematical modeling.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equations with Special Cases' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Solving Linear Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Linear Inequalities' AND grade_level_min = 9),
  'Solving Linear Inequalities Topic Guide',
  'Comprehensive teaching approach for solving and graphing one-variable inequalities',
  'SOLVING LINEAR INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should solve multi-step equations, understand inequality symbols, graph on number lines, and know the effect of multiplying/dividing by negatives on inequalities.

LEARNING OBJECTIVES:
Students will solve multi-step linear inequalities. Students will graph solution sets on number lines. Students will express solutions in interval notation. Students will apply inequalities to real-world constraints.

KEY CONCEPTS:
1. Solve inequalities using the same steps as equations
2. CRITICAL: Flip the inequality when multiplying/dividing by a negative
3. Solutions are sets of numbers, not single values
4. Open circle (< or >) vs. closed circle (≤ or ≥) on graphs
5. Interval notation: (a, b), [a, b], (a, b], [a, b) and with infinity
6. Check solutions by testing a value from the solution region

COMMON MISCONCEPTIONS:
- Forgetting to flip inequality when multiplying/dividing by negative
- Flipping when adding/subtracting a negative (don''t flip then)
- Graphing in wrong direction
- Confusing open and closed circles
- Thinking inequalities have one solution like equations

TEACHING SEQUENCE:
Hook/Engagement: A parent says: "You can spend at most $50 on video games." If games cost $12 each, how many can you buy? This constraint leads to 12x ≤ 50, and the answer is a set: 0, 1, 2, 3, or 4 games.

Direct Instruction: Review inequality solving with the flip rule for negative multiplication/division. Demonstrate WHY the flip is needed (if 2 < 5, then -2 > -5). Practice graphing on number lines with correct circle types. Introduce interval notation as a compact way to write solution sets. Verify solutions by substitution.

Guided Practice: Solve multi-step inequalities. Graph solutions on number lines. Write solutions in interval notation. Check solutions by testing values.

Independent Application: Model real-world constraints with inequalities. Interpret solution sets in context (what values make sense?). Compare situations modeled by equations vs. inequalities.

DIFFERENTIATION:
Struggling Learners: Use a decision chart for when to flip, practice graphing separately from solving, use color for solution regions, work with simple inequalities first.
Advanced Learners: Solve inequalities with variables on both sides, explore three-part inequalities, connect to linear programming concepts, work with absolute value inequalities.

ASSESSMENT INDICATORS:
Students correctly solve multi-step inequalities. Students apply the flip rule appropriately. Students graph solutions accurately. Students write solutions in interval notation.

VOCABULARY:
Inequality, solution set, interval notation, open interval, closed interval, number line, boundary point

CONNECTION TO FUTURE LEARNING:
Inequality solving is essential for compound inequalities, absolute value, systems of inequalities, and optimization problems.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Linear Inequalities' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Compound Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Compound Inequalities' AND grade_level_min = 9),
  'Compound Inequalities Topic Guide',
  'Comprehensive teaching approach for solving and graphing compound inequalities',
  'COMPOUND INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should solve simple linear inequalities, graph on number lines, understand "and" and "or" in logic, and work with interval notation.

LEARNING OBJECTIVES:
Students will solve "and" compound inequalities (conjunctions). Students will solve "or" compound inequalities (disjunctions). Students will graph compound inequality solutions. Students will write solutions in interval notation.

KEY CONCEPTS:
1. "And" means both conditions must be true - intersection
2. "Or" means at least one condition must be true - union
3. "And" typically creates a bounded interval (between two values)
4. "Or" typically creates unbounded regions (outside two values)
5. Three-part notation (a < x < b) is an "and" inequality
6. "And" can result in no solution if conditions don''t overlap

COMMON MISCONCEPTIONS:
- Confusing "and" with "or" in the solution process
- Graphing "or" as a connected segment
- Not recognizing when "and" has no solution
- Forgetting that "and" requires intersection, not union
- Misreading three-part inequalities

TEACHING SEQUENCE:
Hook/Engagement: A roller coaster requires riders to be "at least 48 inches tall AND at most 78 inches tall." This creates 48 ≤ h ≤ 78. What if the rule was "under 48 inches OR over 78 inches"? Very different set!

Direct Instruction: Distinguish "and" (both true) from "or" (at least one true). Solve each part of compound inequality separately. Graph each part, then find intersection (and) or union (or). Show three-part notation for "and" inequalities. Practice writing in interval notation with union symbol for "or."

Guided Practice: Solve and graph "and" inequalities. Solve and graph "or" inequalities. Write solutions in interval notation. Identify when "and" has no solution.

Independent Application: Model real-world situations with compound inequalities. Interpret solution sets in context. Create problems that result in "and" vs. "or" solutions.

DIFFERENTIATION:
Struggling Learners: Use Venn diagrams for "and" vs "or" concepts, color-code each inequality, graph on separate lines then combine, use verbal descriptions alongside symbols.
Advanced Learners: Solve compound inequalities with variables on both sides in each part, explore nested compound inequalities, connect to absolute value representations.

ASSESSMENT INDICATORS:
Students correctly identify "and" vs "or" inequalities. Students solve each type accurately. Students graph compound solutions correctly. Students use appropriate notation for intervals.

VOCABULARY:
Compound inequality, conjunction (and), disjunction (or), intersection, union, interval notation, bounded, unbounded

CONNECTION TO FUTURE LEARNING:
Compound inequalities lead to absolute value inequalities, systems of inequalities, and constraints in optimization.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compound Inequalities' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Absolute Value Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value Equations' AND grade_level_min = 9),
  'Absolute Value Equations Topic Guide',
  'Comprehensive teaching approach for solving equations with absolute value',
  'ABSOLUTE VALUE EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand absolute value as distance from zero, solve multi-step equations, understand that absolute value is always non-negative, and work with positive and negative solutions.

LEARNING OBJECTIVES:
Students will solve equations in the form |ax + b| = c. Students will identify when equations have two solutions, one solution, or no solution. Students will check solutions in original equations. Students will interpret absolute value equations graphically.

KEY CONCEPTS:
1. |expression| = positive creates two cases: expression = positive AND expression = -positive
2. |expression| = 0 has exactly one solution (expression = 0)
3. |expression| = negative has no solution (distance cannot be negative)
4. Isolate the absolute value before splitting into cases
5. Always check both potential solutions in the original equation
6. Graphically: |ax + b| = c means distance from -b/a is c/|a|

COMMON MISCONCEPTIONS:
- Writing only one case instead of two
- Forgetting to isolate absolute value first
- Thinking |x| = -3 has x = -3 as a solution (it has no solution)
- Not checking solutions (extraneous solutions can occur with more complex equations)
- Setting both cases equal to the same value instead of positive and negative

TEACHING SEQUENCE:
Hook/Engagement: A factory produces screws that must be 2 cm long with a tolerance of 0.03 cm. Write an equation for acceptable lengths. This leads to |x - 2| = 0.03, showing real-world absolute value applications.

Direct Instruction: Review absolute value as distance. Show that |expression| = c means expression = c OR expression = -c. Demonstrate isolating absolute value first. Address special cases: one solution (equals 0), no solution (equals negative). Emphasize checking both solutions.

Guided Practice: Solve absolute value equations of increasing complexity. Identify special cases (one or no solution). Verify solutions by substitution. Interpret solutions in context.

Independent Application: Model tolerance and error problems. Connect to distance problems on number lines. Create absolute value equations with specified solution sets.

DIFFERENTIATION:
Struggling Learners: Always write both cases explicitly, use number line models, practice with |x| = c before |ax + b| = c, emphasize the "distance from zero" interpretation.
Advanced Learners: Solve equations with absolute value on both sides, explore |ax + b| = |cx + d|, connect to piecewise functions, graph absolute value equations.

ASSESSMENT INDICATORS:
Students correctly set up two cases from absolute value equations. Students identify special cases (one or no solution). Students check all solutions. Students interpret solutions in context.

VOCABULARY:
Absolute value, distance, case analysis, isolate, extraneous solution, tolerance, error bounds

CONNECTION TO FUTURE LEARNING:
Absolute value equations lead to absolute value inequalities, piecewise functions, and distance concepts in coordinate geometry and calculus.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value Equations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Absolute Value Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value Inequalities' AND grade_level_min = 9),
  'Absolute Value Inequalities Topic Guide',
  'Comprehensive teaching approach for solving inequalities with absolute value',
  'ABSOLUTE VALUE INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should solve absolute value equations, solve compound inequalities, understand "and" and "or" in compound statements, and graph on number lines.

LEARNING OBJECTIVES:
Students will solve |ax + b| < c (less than creates "and"). Students will solve |ax + b| > c (greater than creates "or"). Students will graph and write solutions in interval notation. Students will apply to real-world constraints.

KEY CONCEPTS:
1. |expression| < c means -c < expression < c (and/between)
2. |expression| > c means expression < -c OR expression > c (or/outside)
3. "Less than" creates bounded interval, "greater than" creates unbounded
4. Memory aid: "Less thAND" and "greatOR"
5. |expression| < negative has no solution (can''t be less than negative distance)
6. |expression| > negative has all real numbers as solution

COMMON MISCONCEPTIONS:
- Confusing which inequality type creates "and" vs "or"
- Graphing "or" as a connected segment
- Forgetting to flip the inequality when writing the negative case
- Not isolating absolute value before splitting
- Misunderstanding what happens with negative values on right side

TEACHING SEQUENCE:
Hook/Engagement: A thermostat keeps temperature within 2 degrees of 72°F. Write the constraint: |T - 72| ≤ 2. This means T is between 70 and 74 - a bounded interval from a "less than" inequality.

Direct Instruction: Connect to distance interpretation: |x - a| < b means x is within b units of a. Show why "less than" creates "and" (bounded) and "greater than" creates "or" (unbounded). Practice converting to compound inequalities and solving. Graph solutions and write in interval notation.

Guided Practice: Solve both types of absolute value inequalities. Graph solutions on number lines. Write solutions in interval notation. Address special cases (always true, never true).

Independent Application: Model tolerance problems (measurement within error bounds). Create constraints for real situations. Analyze when solutions are bounded vs. unbounded.

DIFFERENTIATION:
Struggling Learners: Use the "Less thAND/greatOR" mnemonic, draw number line sketches before solving, work with |x| cases before |ax + b| cases, connect to distance language.
Advanced Learners: Solve inequalities with absolute value on both sides, connect to regions in the coordinate plane, explore absolute value in two variables, analyze error propagation.

ASSESSMENT INDICATORS:
Students correctly identify whether to use "and" or "or." Students solve both inequality types accurately. Students graph and express solutions properly. Students interpret solutions in context.

VOCABULARY:
Absolute value inequality, bounded interval, unbounded interval, compound inequality, conjunction, disjunction, tolerance

CONNECTION TO FUTURE LEARNING:
These skills are essential for error analysis, confidence intervals, piecewise functions, and optimization constraints.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value Inequalities' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Linear Functions and Their Graphs
-- ============================================================================

-- Topic: Introduction to Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Introduction to Functions' AND grade_level_min = 9),
  'Introduction to Functions Topic Guide',
  'Comprehensive teaching approach for domain, range, and function notation',
  'INTRODUCTION TO FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand input-output relationships, plot points on coordinate planes, evaluate expressions for given values, and have informal experience with functions from Grade 8.

LEARNING OBJECTIVES:
Students will define functions and identify domain and range. Students will determine if relations are functions using various representations. Students will use and interpret function notation f(x). Students will evaluate functions for given inputs and find inputs for given outputs.

KEY CONCEPTS:
1. A function assigns exactly one output to each input
2. Domain: set of all possible inputs (x-values)
3. Range: set of all possible outputs (y-values)
4. f(x) notation: f is the function name, x is input, f(x) is output
5. Vertical line test: if any vertical line crosses graph more than once, not a function
6. Functions can be represented by equations, tables, graphs, or verbal descriptions

COMMON MISCONCEPTIONS:
- Thinking f(x) means f times x
- Believing every graph represents a function
- Confusing domain restrictions with range
- Not recognizing that f(x) IS the output value
- Thinking domain must be stated explicitly (often implied by context)

TEACHING SEQUENCE:
Hook/Engagement: Every student has exactly one student ID number. Is "student → ID number" a function? Yes! But "ID number → student" is also a function since each ID belongs to one student. Real functions are everywhere.

Direct Instruction: Formalize the function definition from Grade 8. Introduce domain and range with various representations. Practice the vertical line test. Develop fluency with f(x) notation - evaluating f(3), solving f(x) = 7. Explore domain restrictions (square roots, denominators).

Guided Practice: Identify functions from tables, graphs, and equations. Find domain and range from various representations. Evaluate functions for given inputs. Find inputs given outputs.

Independent Application: Model real-world functions and identify appropriate domains. Analyze why some relationships are functions and others aren''t. Create function representations from descriptions.

DIFFERENTIATION:
Struggling Learners: Use concrete analogies (vending machines, birthday dates), focus on tables and graphs before equations, practice notation reading aloud, provide domain/range identification templates.
Advanced Learners: Explore function composition, investigate inverse functions, analyze piecewise functions, explore restricting domain to create functions from non-functions.

ASSESSMENT INDICATORS:
Students correctly identify functions from various representations. Students determine domain and range. Students evaluate functions accurately using notation. Students interpret function values in context.

VOCABULARY:
Function, domain, range, input, output, function notation, vertical line test, relation, correspondence

CONNECTION TO FUTURE LEARNING:
Functions are the central concept of algebra and calculus, underlying all mathematical modeling and analysis.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Introduction to Functions' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Graphing Linear Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Linear Equations' AND grade_level_min = 9),
  'Graphing Linear Equations Topic Guide',
  'Comprehensive teaching approach for plotting points and drawing lines',
  'GRAPHING LINEAR EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should plot points on coordinate planes, create tables of values from equations, understand that solutions to equations are points on the graph, and have basic experience with linear graphs.

LEARNING OBJECTIVES:
Students will graph linear equations by plotting points. Students will identify x-intercepts and y-intercepts. Students will graph using intercepts. Students will recognize horizontal and vertical lines.

KEY CONCEPTS:
1. Every solution (x, y) to an equation is a point on its graph
2. Two points determine a line (but use three to check)
3. x-intercept: where graph crosses x-axis (y = 0)
4. y-intercept: where graph crosses y-axis (x = 0)
5. Horizontal lines: y = constant, slope = 0
6. Vertical lines: x = constant, undefined slope

COMMON MISCONCEPTIONS:
- Switching x and y coordinates when plotting
- Confusing x-intercept with y-intercept
- Not recognizing that y = 3 is a horizontal line
- Thinking vertical lines are functions (they''re not)
- Believing three points must always be collinear for a given equation

TEACHING SEQUENCE:
Hook/Engagement: "I''m thinking of a line. It passes through (1, 2) and (3, 6). Draw it." Students discover that knowing two points completely determines a line, introducing graphing from points.

Direct Instruction: Review creating tables of values. Show that each (x, y) pair satisfying the equation becomes a point on the graph. Introduce intercept method: find where line crosses axes by setting y=0 and x=0. Discuss horizontal and vertical lines as special cases. Practice graphing with both methods.

Guided Practice: Graph equations by creating tables and plotting points. Find and use intercepts to graph. Identify equations of horizontal and vertical lines. Determine intercepts from equations.

Independent Application: Graph equations representing real situations. Interpret intercepts in context (what does x-intercept mean for this problem?). Compare graphs to make decisions.

DIFFERENTIATION:
Struggling Learners: Use graphing templates with labeled axes, practice with simple equations first, emphasize "y-intercept means x is 0," use technology to check graphs.
Advanced Learners: Graph equations with fractional intercepts, explore families of lines, connect to slope, investigate asymptotic behavior (preview).

ASSESSMENT INDICATORS:
Students graph linear equations accurately. Students find and use intercepts correctly. Students recognize horizontal and vertical lines. Students interpret graphs in context.

VOCABULARY:
Linear equation, graph, x-intercept, y-intercept, horizontal line, vertical line, coordinate plane, solution

CONNECTION TO FUTURE LEARNING:
Graphing skills extend to all function types, systems of equations, and analysis of mathematical models.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Linear Equations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Slope
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Slope' AND grade_level_min = 9),
  'Slope Topic Guide',
  'Comprehensive teaching approach for finding and interpreting slope',
  'SLOPE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should calculate slope from Grade 8, understand rate of change concepts, work with positive and negative numbers, and interpret graphs of lines.

LEARNING OBJECTIVES:
Students will calculate slope from two points, graphs, and equations. Students will interpret slope as rate of change in context. Students will classify lines by slope (positive, negative, zero, undefined). Students will use slope to determine if points are collinear.

KEY CONCEPTS:
1. Slope = rise/run = (y₂ - y₁)/(x₂ - x₁) = change in y / change in x
2. Slope represents rate of change
3. Positive slope: line rises left to right
4. Negative slope: line falls left to right
5. Zero slope: horizontal line
6. Undefined slope: vertical line (division by zero)

COMMON MISCONCEPTIONS:
- Calculating run/rise instead of rise/run
- Subtracting coordinates in inconsistent order
- Confusing horizontal (zero) with vertical (undefined)
- Thinking slope changes along a line
- Not recognizing slope in various equation forms

TEACHING SEQUENCE:
Hook/Engagement: Compare two hiking trails: Trail A gains 500 feet over 2 miles; Trail B gains 500 feet over 5 miles. Which is steeper? This introduces slope as a measure of steepness and rate of change.

Direct Instruction: Review slope formula with visual rise/run representation. Practice finding slope from two points with attention to sign. Extract slope from equations (especially y = mx + b). Classify slopes by sign. Discuss why horizontal = zero and vertical = undefined. Interpret slope in real contexts.

Guided Practice: Calculate slope from points, graphs, and equations. Classify lines by slope type. Interpret slope in various contexts. Determine if three points are collinear using slope.

Independent Application: Analyze real-world rates of change (price increases, temperature changes, speed). Compare slopes to make decisions. Create scenarios for given slopes.

DIFFERENTIATION:
Struggling Learners: Always draw triangles on graphs to show rise/run, use consistent color for rise and run, work with integer coordinates first, provide formula reference cards.
Advanced Learners: Explore slope in three dimensions, connect slope to tangent lines (calculus preview), investigate average vs. instantaneous rate of change, analyze non-linear rate of change.

ASSESSMENT INDICATORS:
Students correctly calculate slope from all representations. Students classify slopes appropriately. Students interpret slope as rate of change. Students use slope to verify collinearity.

VOCABULARY:
Slope, rise, run, rate of change, positive slope, negative slope, zero slope, undefined slope, collinear

CONNECTION TO FUTURE LEARNING:
Slope is fundamental for linear equations, derivatives in calculus, and all rate-of-change analysis.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Slope' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Slope-Intercept Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Slope-Intercept Form' AND grade_level_min = 9),
  'Slope-Intercept Form Topic Guide',
  'Comprehensive teaching approach for y = mx + b and its applications',
  'SLOPE-INTERCEPT FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand slope as rate of change, know what y-intercept means, graph linear equations, and solve equations for y.

LEARNING OBJECTIVES:
Students will identify slope and y-intercept from y = mx + b. Students will write equations in slope-intercept form. Students will graph lines using slope and y-intercept. Students will convert equations to slope-intercept form.

KEY CONCEPTS:
1. y = mx + b is slope-intercept form
2. m is the slope (rate of change)
3. b is the y-intercept (starting value, value when x = 0)
4. To graph: plot y-intercept, then use slope to find more points
5. Any linear equation can be written in this form (except vertical lines)
6. Slope and intercept have contextual meaning

COMMON MISCONCEPTIONS:
- Confusing m and b (slope vs. intercept)
- Thinking b is the x-intercept
- Not recognizing y = 3x as having b = 0
- Forgetting that vertical lines cannot be in this form
- Misinterpreting slope when negative (steeper in wrong direction)

TEACHING SEQUENCE:
Hook/Engagement: A taxi charges $3 initial fee plus $2 per mile. Total cost: C = 2m + 3. The structure is clear: $3 starts you off (y-intercept), $2/mile is the rate (slope). This form tells the story!

Direct Instruction: Define slope-intercept form explicitly. Practice identifying m and b from equations. Show graphing method: start at (0, b), move according to slope. Convert other forms to slope-intercept by solving for y. Interpret m and b in context for various problems.

Guided Practice: Identify slope and intercept from equations. Write equations given slope and intercept. Graph using slope-intercept method. Convert from other forms.

Independent Application: Model real situations with slope-intercept equations. Interpret what slope and intercept mean in context. Compare linear models by examining m and b values.

DIFFERENTIATION:
Struggling Learners: Use highlighters to mark m and b in equations, practice with positive slopes first, use grid paper for graphing, provide reference card for slope movement.
Advanced Learners: Explore families of lines (same slope, different intercept), analyze parallel lines, connect to linear regression, work with parameters.

ASSESSMENT INDICATORS:
Students correctly identify slope and y-intercept. Students write equations in slope-intercept form. Students graph accurately using slope and intercept. Students interpret m and b in context.

VOCABULARY:
Slope-intercept form, slope, y-intercept, initial value, rate of change, graph, linear equation

CONNECTION TO FUTURE LEARNING:
Slope-intercept form is the foundation for systems of equations, linear modeling, and understanding other function forms.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Slope-Intercept Form' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Point-Slope Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Point-Slope Form' AND grade_level_min = 9),
  'Point-Slope Form Topic Guide',
  'Comprehensive teaching approach for writing equations through points',
  'POINT-SLOPE FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand slope, work with slope-intercept form, substitute values into equations, and solve for y.

LEARNING OBJECTIVES:
Students will write equations in point-slope form y - y₁ = m(x - x₁). Students will convert point-slope form to slope-intercept form. Students will write equations given a point and slope. Students will write equations given two points.

KEY CONCEPTS:
1. Point-slope form: y - y₁ = m(x - x₁)
2. (x₁, y₁) is any point on the line; m is the slope
3. This form is most useful when you know a point and slope
4. Given two points: find slope first, then use either point
5. Can convert to slope-intercept by solving for y
6. Multiple correct forms exist for the same line

COMMON MISCONCEPTIONS:
- Sign errors (y - y₁ vs y + y₁ when y₁ is negative)
- Using x and y values in wrong positions
- Distributing incorrectly when converting forms
- Thinking only one point can be used (any point works)
- Not simplifying when converting to slope-intercept

TEACHING SEQUENCE:
Hook/Engagement: You know a line passes through (2, 5) with slope 3. Slope-intercept form requires the y-intercept, which you don''t have. Point-slope form lets you write the equation immediately: y - 5 = 3(x - 2).

Direct Instruction: Introduce point-slope form and its components. Show writing equations when given point and slope. Demonstrate finding slope from two points, then using point-slope. Practice converting to slope-intercept form by distributing and solving for y. Discuss when point-slope is more convenient.

Guided Practice: Write equations from point and slope. Write equations from two points. Convert between forms. Verify that different forms represent the same line.

Independent Application: Model situations where you know a point and rate of change. Analyze data to write linear equations. Compare efficiency of different forms for different problems.

DIFFERENTIATION:
Struggling Learners: Use templates with labeled parts, always substitute carefully noting signs, convert step-by-step, verify answers by checking that given point satisfies the equation.
Advanced Learners: Work with fractional slopes and coordinates, explore why different points yield the same line, connect to tangent lines in calculus, analyze form-specific advantages.

ASSESSMENT INDICATORS:
Students write equations correctly in point-slope form. Students convert between forms accurately. Students choose efficient forms for given information. Students verify equations using given points.

VOCABULARY:
Point-slope form, slope, ordered pair, convert, substitute, equivalent forms

CONNECTION TO FUTURE LEARNING:
Point-slope form is essential for finding tangent lines in calculus, writing equations from data, and quick equation formation.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Point-Slope Form' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Standard Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Standard Form' AND grade_level_min = 9),
  'Standard Form Topic Guide',
  'Comprehensive teaching approach for Ax + By = C and conversions',
  'STANDARD FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should work with slope-intercept and point-slope forms, clear fractions from equations, find intercepts, and perform algebraic manipulation.

LEARNING OBJECTIVES:
Students will write equations in standard form Ax + By = C. Students will convert between standard form and other forms. Students will graph lines from standard form using intercepts. Students will recognize when standard form is advantageous.

KEY CONCEPTS:
1. Standard form: Ax + By = C where A, B, C are integers, A ≥ 0
2. Easy to find both intercepts: set y=0 for x-intercept, set x=0 for y-intercept
3. Useful for systems of equations (elimination method)
4. Convert to slope-intercept by solving for y
5. slope = -A/B when in standard form
6. Vertical lines fit this form (x = constant) when B = 0

COMMON MISCONCEPTIONS:
- Leaving fractions in standard form (should be cleared)
- Having A negative (convention: A should be positive)
- Not recognizing that standard form is useful for intercepts
- Errors when clearing fractions (must multiply ALL terms)
- Confusing which variable to set to zero for which intercept

TEACHING SEQUENCE:
Hook/Engagement: To find where a line crosses both axes, slope-intercept form only gives y-intercept directly. Standard form gives both intercepts easily by setting variables to zero alternately. Different forms serve different purposes.

Direct Instruction: Define standard form with conventions (A, B, C integers; A ≥ 0). Show finding intercepts by setting x=0 and y=0 separately. Practice graphing using intercept method. Convert from other forms by clearing fractions and rearranging. Discuss advantages for systems of equations.

Guided Practice: Write equations in standard form. Find intercepts and graph. Convert between all three forms. Identify when standard form is most useful.

Independent Application: Solve problems where both intercepts have contextual meaning. Set up systems for later solving by elimination. Compare efficiency of forms for different tasks.

DIFFERENTIATION:
Struggling Learners: Use a form-conversion flowchart, practice finding intercepts separately from converting, work with equations already having integer coefficients first.
Advanced Learners: Explore the geometric meaning of A, B, and C, investigate normal vector interpretation, connect to linear programming constraints, explore standard form in 3D.

ASSESSMENT INDICATORS:
Students write equations in proper standard form. Students find intercepts correctly. Students convert between all forms. Students choose appropriate forms for given contexts.

VOCABULARY:
Standard form, x-intercept, y-intercept, coefficient, integer, convert, elimination method

CONNECTION TO FUTURE LEARNING:
Standard form is essential for systems of equations (elimination), linear programming, and understanding linear equations in higher dimensions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Standard Form' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Parallel and Perpendicular Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parallel and Perpendicular Lines' AND grade_level_min = 9),
  'Parallel and Perpendicular Lines Topic Guide',
  'Comprehensive teaching approach for relationships between line slopes',
  'PARALLEL AND PERPENDICULAR LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should find slope from equations and points, write equations in various forms, understand the concept of parallel lines, and work with negative reciprocals.

LEARNING OBJECTIVES:
Students will determine if lines are parallel using slopes. Students will determine if lines are perpendicular using slopes. Students will write equations of parallel and perpendicular lines. Students will apply these relationships to geometric problems.

KEY CONCEPTS:
1. Parallel lines have the same slope but different y-intercepts
2. Perpendicular lines have slopes that are negative reciprocals: m₁ × m₂ = -1
3. The negative reciprocal of a/b is -b/a
4. Horizontal lines (slope 0) are perpendicular to vertical lines (undefined slope)
5. To write a parallel/perpendicular equation, use point-slope with the appropriate slope
6. A line cannot be parallel or perpendicular to itself

COMMON MISCONCEPTIONS:
- Thinking parallel lines have the same equation (they have same slope, different intercept)
- Forgetting the negative in negative reciprocal
- Confusing reciprocal with opposite
- Not recognizing that perpendicular to horizontal is vertical
- Thinking "close" slopes mean parallel

TEACHING SEQUENCE:
Hook/Engagement: Look at city street grids. Streets running the same direction are parallel (same slope). Streets crossing at right angles are perpendicular (negative reciprocal slopes). Math describes the real world!

Direct Instruction: Review parallel lines and state the slope condition. Introduce perpendicular lines with the negative reciprocal relationship. Show why m₁ × m₂ = -1 using geometry or coordinate rotation. Practice determining relationships from equations. Write equations of lines parallel or perpendicular to given lines through given points.

Guided Practice: Determine if pairs of lines are parallel, perpendicular, or neither. Write equations parallel to given lines. Write equations perpendicular to given lines. Verify relationships graphically.

Independent Application: Apply to geometry problems (proving rectangles, finding altitudes). Design street grids with specified relationships. Analyze real-world examples of parallel and perpendicular relationships.

DIFFERENTIATION:
Struggling Learners: Practice negative reciprocals separately, use "flip and change sign" language, verify relationships graphically, provide slope relationship reference cards.
Advanced Learners: Prove the perpendicular slope relationship using coordinates, explore relationships in 3D, connect to vector orthogonality, apply to finding distances from points to lines.

ASSESSMENT INDICATORS:
Students correctly determine parallel, perpendicular, or neither. Students write equations with specified relationships. Students apply to geometric problems. Students verify relationships graphically.

VOCABULARY:
Parallel lines, perpendicular lines, slope, negative reciprocal, right angle, orthogonal

CONNECTION TO FUTURE LEARNING:
These relationships are essential for coordinate geometry proofs, vectors, transformations, and calculus applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parallel and Perpendicular Lines' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Systems of Equations
-- ============================================================================

-- Topic: Introduction to Systems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Introduction to Systems' AND grade_level_min = 9),
  'Introduction to Systems Topic Guide',
  'Comprehensive teaching approach for what systems of equations represent',
  'INTRODUCTION TO SYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should graph linear equations, solve linear equations, understand solutions as ordered pairs, and interpret graphs of lines.

LEARNING OBJECTIVES:
Students will understand what a system of equations represents. Students will identify solutions to systems graphically. Students will verify solutions algebraically. Students will recognize systems with one, none, or infinitely many solutions.

KEY CONCEPTS:
1. A system is two or more equations considered simultaneously
2. A solution must satisfy ALL equations in the system
3. Graphically, the solution is the intersection point
4. One solution: lines intersect at one point
5. No solution: parallel lines (never intersect)
6. Infinite solutions: same line (infinitely many intersection points)

COMMON MISCONCEPTIONS:
- Thinking a solution only needs to satisfy one equation
- Expecting all systems to have exactly one solution
- Not connecting intersection point to algebraic solution
- Confusing "no solution" with "solution is (0, 0)"
- Thinking the lines must look different for infinite solutions

TEACHING SEQUENCE:
Hook/Engagement: Two friends have the same amount of money. One pays $5 for lunch, the other pays $3 for lunch. When do they have the same amount again? Never! (Parallel lines.) This introduces the idea that systems can have no solution.

Direct Instruction: Define a system of equations and what "solution" means. Show graphically that the solution is where lines cross. Demonstrate verifying solutions by substitution into both equations. Introduce the three possibilities: one, none, or infinitely many solutions. Connect to line relationships (intersecting, parallel, coincident).

Guided Practice: Determine if given points are solutions to systems. Sketch systems and estimate solutions graphically. Identify solution type from graphs. Verify solutions algebraically.

Independent Application: Model real situations requiring systems. Identify when problems have no solution or infinite solutions. Interpret solution types in context.

DIFFERENTIATION:
Struggling Learners: Focus on the graphical interpretation, practice verification extensively, use clear examples of each solution type, emphasize "satisfies BOTH equations."
Advanced Learners: Explore systems with more than two equations, investigate systems of inequalities, predict solution type from equation structure, explore systems in three dimensions.

ASSESSMENT INDICATORS:
Students explain what systems represent. Students verify solutions correctly. Students identify solution types graphically. Students interpret systems in context.

VOCABULARY:
System of equations, solution, intersection, simultaneous, consistent, inconsistent, independent, dependent

CONNECTION TO FUTURE LEARNING:
Systems are foundational for advanced algebra, linear programming, matrix methods, and multivariable calculus.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Introduction to Systems' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Solving by Graphing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving by Graphing' AND grade_level_min = 9),
  'Solving by Graphing Topic Guide',
  'Comprehensive teaching approach for finding intersection points graphically',
  'SOLVING BY GRAPHING - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should graph linear equations accurately, understand systems and solutions, read coordinates from graphs, and work with slope-intercept form.

LEARNING OBJECTIVES:
Students will solve systems by graphing both equations. Students will identify the solution from the intersection point. Students will recognize systems with special solutions graphically. Students will verify graphical solutions algebraically.

KEY CONCEPTS:
1. Graph both equations on the same coordinate plane
2. The intersection point (if any) is the solution
3. Parallel lines (same slope, different intercept) = no solution
4. Coincident lines (same slope and intercept) = infinite solutions
5. Graphing gives approximate solutions when coordinates aren''t integers
6. Always verify by substituting into both original equations

COMMON MISCONCEPTIONS:
- Inaccurate graphing leading to wrong intersection points
- Not recognizing parallel lines as "no solution"
- Misreading coordinates from graphs
- Forgetting to verify solutions
- Thinking graphing always gives exact solutions

TEACHING SEQUENCE:
Hook/Engagement: Two trains leave different cities heading toward each other. Train A: position = 10 + 3t. Train B: position = 50 - 2t. When and where do they meet? Graph both to find the meeting point!

Direct Instruction: Review efficient graphing using slope and intercept. Graph both equations of a system. Identify the intersection point carefully. Verify by substitution into both equations. Recognize special cases (parallel = no solution, same line = infinite). Discuss when graphing is useful vs. limited (non-integer solutions).

Guided Practice: Solve systems by graphing. Identify solutions and special cases. Verify graphical solutions algebraically. Use technology to check accuracy.

Independent Application: Model real situations with systems and solve graphically. Analyze when graphs provide good approximations. Compare graphical solutions to algebraic methods.

DIFFERENTIATION:
Struggling Learners: Use graph paper with larger squares, practice each equation separately first, verify coordinates by substitution, use graphing technology for accuracy.
Advanced Learners: Estimate non-integer solutions, analyze error in graphical methods, connect to computer graphics and intersection algorithms, explore systems of nonlinear equations graphically.

ASSESSMENT INDICATORS:
Students graph systems accurately. Students identify intersection points correctly. Students recognize special cases. Students verify solutions algebraically.

VOCABULARY:
System, graph, intersection, solution, parallel, coincident, verify, coordinate

CONNECTION TO FUTURE LEARNING:
Graphical methods extend to nonlinear systems, optimization, and visualizing mathematical relationships.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving by Graphing' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Solving by Substitution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving by Substitution' AND grade_level_min = 9),
  'Solving by Substitution Topic Guide',
  'Comprehensive teaching approach for algebraic method using substitution',
  'SOLVING BY SUBSTITUTION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should solve multi-step equations, substitute values into expressions, solve equations with variables on both sides, and understand what system solutions represent.

LEARNING OBJECTIVES:
Students will solve systems using the substitution method. Students will recognize when substitution is efficient. Students will find both coordinates of solutions. Students will identify special cases algebraically.

KEY CONCEPTS:
1. Solve one equation for one variable
2. Substitute this expression into the other equation
3. Solve the resulting equation (now has only one variable)
4. Substitute back to find the other variable
5. Best when one variable has coefficient of 1 or -1
6. Special cases: 0 = 0 (infinite solutions), 0 = constant (no solution)

COMMON MISCONCEPTIONS:
- Substituting into the same equation instead of the other one
- Forgetting to find the second variable
- Making errors when substituting negative expressions
- Not recognizing special case results
- Choosing the harder equation to solve for a variable

TEACHING SEQUENCE:
Hook/Engagement: y = 2x + 1 and 3x + y = 11. Since y equals 2x + 1, anywhere we see y in the other equation, we can write 2x + 1 instead. One equation with one unknown - solvable!

Direct Instruction: Demonstrate the substitution process step by step. Identify which equation and variable makes substitution easiest (coefficient of 1 or -1). Substitute carefully, especially with negatives. Solve and then back-substitute. Recognize special results: contradiction (no solution) or identity (infinite solutions).

Guided Practice: Solve systems where one equation is already solved for a variable. Solve systems requiring initial rearrangement. Identify special cases. Verify solutions in both original equations.

Independent Application: Choose between graphing and substitution for efficiency. Solve word problems leading to systems. Analyze when substitution is the best method.

DIFFERENTIATION:
Struggling Learners: Always write the substitution step explicitly, use parentheses when substituting, verify at each step, practice with equations already in y = form.
Advanced Learners: Work with more complex expressions, solve systems with three equations, compare efficiency with elimination, explore non-linear systems with substitution.

ASSESSMENT INDICATORS:
Students correctly apply substitution method. Students find complete solutions (both variables). Students recognize and interpret special cases. Students verify solutions.

VOCABULARY:
Substitution, solve for, replace, expression, variable, back-substitute, equivalent equation

CONNECTION TO FUTURE LEARNING:
Substitution is essential for systems, function composition, and many algebraic manipulations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving by Substitution' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Solving by Elimination
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving by Elimination' AND grade_level_min = 9),
  'Solving by Elimination Topic Guide',
  'Comprehensive teaching approach for algebraic method using elimination',
  'SOLVING BY ELIMINATION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should add and subtract equations, multiply equations by constants, understand that equivalent equations have the same solutions, and solve systems by substitution.

LEARNING OBJECTIVES:
Students will solve systems using the elimination (addition/subtraction) method. Students will multiply equations to create opposite coefficients. Students will recognize when elimination is efficient. Students will handle special cases algebraically.

KEY CONCEPTS:
1. Add or subtract equations to eliminate one variable
2. Multiply one or both equations to create opposite coefficients
3. LCM of coefficients helps determine multipliers
4. Best when coefficients are easily made opposites
5. After eliminating, back-substitute to find the other variable
6. Special cases appear the same as in substitution

COMMON MISCONCEPTIONS:
- Subtracting when should add (or vice versa)
- Not multiplying ALL terms in an equation
- Forgetting to find the second variable
- Making sign errors when subtracting equations
- Multiplying only one coefficient instead of entire equation

TEACHING SEQUENCE:
Hook/Engagement: x + y = 10 and x - y = 4. Add them: 2x = 14, so x = 7. No need to substitute into another equation - we added equations to make y disappear! This is elimination.

Direct Instruction: Show elimination when coefficients are already opposite. Demonstrate multiplying one equation to create opposite coefficients. Show multiplying both equations when needed (use LCM). Practice adding vs. subtracting based on signs. Recognize special case results. Back-substitute to complete solution.

Guided Practice: Solve systems with ready-made opposite coefficients. Solve systems requiring multiplication of one equation. Solve systems requiring multiplication of both equations. Identify and handle special cases.

Independent Application: Choose the most efficient method for given systems. Set up systems from word problems in standard form for elimination. Compare methods for the same problem.

DIFFERENTIATION:
Struggling Learners: Line up equations vertically for clear addition/subtraction, circle the variable being eliminated, multiply step-by-step, verify solutions carefully.
Advanced Learners: Solve systems with three variables, explore matrix methods (preview), analyze computational efficiency, investigate partial elimination strategies.

ASSESSMENT INDICATORS:
Students correctly apply elimination method. Students choose appropriate multipliers. Students find complete solutions. Students recognize and interpret special cases.

VOCABULARY:
Elimination, addition method, opposite coefficients, multiply, add equations, LCM, back-substitute

CONNECTION TO FUTURE LEARNING:
Elimination leads directly to matrix methods, Gaussian elimination, and linear algebra.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving by Elimination' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Special Systems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Special Systems' AND grade_level_min = 9),
  'Special Systems Topic Guide',
  'Comprehensive teaching approach for systems with no solution and infinite solutions',
  'SPECIAL SYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should solve systems by graphing, substitution, and elimination, understand what makes equations represent the same line, and recognize parallel lines by slope.

LEARNING OBJECTIVES:
Students will identify systems with no solution (inconsistent). Students will identify systems with infinite solutions (dependent). Students will explain these cases algebraically and graphically. Students will interpret special cases in context.

KEY CONCEPTS:
1. No solution: parallel lines, same slope but different intercepts
2. Algebraic sign: solving leads to false statement (0 = 5)
3. Infinite solutions: same line, equations are multiples of each other
4. Algebraic sign: solving leads to true statement (0 = 0)
5. Can often predict special cases from equation structure
6. Context determines interpretation: no solution may mean no common option

COMMON MISCONCEPTIONS:
- Thinking something went wrong when getting 0 = 0 or 0 = 5
- Confusing x = 0 (one solution) with 0 = 0 (infinite)
- Not recognizing when equations are multiples of each other
- Believing all systems have exactly one answer
- Misinterpreting what special cases mean in word problems

TEACHING SEQUENCE:
Hook/Engagement: Two phone plans: Plan A is $30 + $0.10/min, Plan B is $20 + $0.10/min. When do they cost the same? Never! Same rate but different base = parallel lines = no solution. Real problems can have no solution.

Direct Instruction: Review solution types graphically (intersecting, parallel, same line). Solve examples algebraically showing the 0 = constant (no solution) and 0 = 0 (infinite) results. Analyze equation structure to predict: same slope + different intercept = parallel; proportional equations = same line. Interpret in real-world contexts.

Guided Practice: Predict and verify solution type from equation structure. Solve systems and classify the result. Interpret special cases in context. Create systems with specified solution types.

Independent Application: Analyze real scenarios that lead to special systems. Determine if constraints are compatible. Create problems for each solution type.

DIFFERENTIATION:
Struggling Learners: Use clear visual examples of parallel and coincident lines, practice algebraic recognition, use color-coding for different solution types, provide classification flowcharts.
Advanced Learners: Explore parameterized systems (what values of k make this system have no solution?), analyze geometric interpretations, investigate overdetermined and underdetermined systems.

ASSESSMENT INDICATORS:
Students correctly identify solution type. Students explain results algebraically and graphically. Students predict solution type from structure. Students interpret special cases in context.

VOCABULARY:
Inconsistent, dependent, independent, consistent, parallel lines, coincident lines, no solution, infinite solutions

CONNECTION TO FUTURE LEARNING:
Understanding solution types is crucial for linear programming, feasibility analysis, and advanced linear algebra.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Special Systems' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Systems Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Systems Word Problems' AND grade_level_min = 9),
  'Systems Word Problems Topic Guide',
  'Comprehensive teaching approach for applying systems to real situations',
  'SYSTEMS WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should solve systems by all methods, translate verbal descriptions to equations, define variables clearly, and interpret solutions in context.

LEARNING OBJECTIVES:
Students will set up systems from word problems. Students will choose efficient solving methods. Students will interpret solutions in context. Students will verify solutions satisfy problem conditions.

KEY CONCEPTS:
1. Define variables clearly at the start
2. Write two equations representing two conditions
3. Common types: mixture, distance/rate/time, cost problems
4. Choose solving method based on equation structure
5. Solutions must make sense in context (no negative quantities of items)
6. Check that solutions satisfy all problem conditions

COMMON MISCONCEPTIONS:
- Writing only one equation when two are needed
- Not defining variables clearly
- Using the same information twice to write "different" equations
- Not checking if solutions make sense in context
- Setting up equations that don''t represent the problem accurately

TEACHING SEQUENCE:
Hook/Engagement: You have $3.35 in nickels and dimes, 43 coins total. How many of each? Students try guess-and-check, then learn that systems make this systematic: n + d = 43 and 0.05n + 0.10d = 3.35.

Direct Instruction: Model the problem-setup process: identify unknowns, define variables, identify two independent conditions, write equations. Practice with classic problem types: coin/value, mixture, distance. Choose efficient solving method. Interpret and verify solutions.

Guided Practice: Set up systems from various contexts. Solve using appropriate methods. Interpret what solutions mean. Verify solutions satisfy all conditions.

Independent Application: Create word problems for given systems. Analyze real situations requiring systems. Present solutions with clear interpretation.

DIFFERENTIATION:
Struggling Learners: Provide templates for variable definition and equation setup, work through one problem type thoroughly before mixing, use tables to organize information, verify setup before solving.
Advanced Learners: Work with three-variable systems, analyze problems with special solutions, explore optimization within systems, create complex multi-condition problems.

ASSESSMENT INDICATORS:
Students correctly set up systems from word problems. Students choose efficient methods. Students interpret solutions in context. Students verify solutions completely.

VOCABULARY:
System, variable, condition, constraint, mixture problem, rate problem, solution in context

CONNECTION TO FUTURE LEARNING:
Systems word problems connect to linear programming, optimization, and mathematical modeling in all fields.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Systems Word Problems' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Exponential Functions and Sequences
-- ============================================================================

-- Topic: Arithmetic Sequences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Arithmetic Sequences' AND grade_level_min = 9),
  'Arithmetic Sequences Topic Guide',
  'Comprehensive teaching approach for patterns with common differences',
  'ARITHMETIC SEQUENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should identify patterns in number lists, understand linear relationships, use function notation, and work with slope and rate of change.

LEARNING OBJECTIVES:
Students will identify arithmetic sequences by their common difference. Students will write explicit and recursive formulas. Students will find any term using the explicit formula. Students will apply arithmetic sequences to real situations.

KEY CONCEPTS:
1. Arithmetic sequence: each term differs from previous by constant amount (common difference)
2. Explicit formula: aₙ = a₁ + d(n-1) where d is common difference
3. Recursive formula: aₙ = aₙ₋₁ + d with a₁ given
4. Common difference can be positive, negative, or zero
5. Arithmetic sequences are linear when graphed (slope = d)
6. Sum formulas connect to averages

COMMON MISCONCEPTIONS:
- Confusing explicit and recursive formulas
- Using d(n) instead of d(n-1) in explicit formula
- Not recognizing negative common differences
- Thinking sequence formulas start at n = 0 (usually n = 1)
- Confusing arithmetic with geometric sequences

TEACHING SEQUENCE:
Hook/Engagement: A stadium has 20 seats in the first row, 24 in the second, 28 in the third. How many in the 50th row? Counting would take forever, but patterns and formulas make it quick.

Direct Instruction: Define arithmetic sequences through examples. Find common difference by subtracting consecutive terms. Develop explicit formula: start + (how many gaps) × (gap size). Show recursive formula as "previous term + d." Practice finding specific terms. Connect to linear functions (graphing shows a line).

Guided Practice: Identify arithmetic sequences and find common differences. Write both formula types. Find specified terms. Determine if given formulas represent arithmetic sequences.

Independent Application: Model real situations with arithmetic sequences. Analyze seating, salary increases, savings plans. Create problems for classmates.

DIFFERENTIATION:
Struggling Learners: Build tables to see the pattern, count the "jumps" to understand n-1, focus on explicit formula first, use concrete contexts.
Advanced Learners: Derive the sum formula, explore arithmetic series, connect to linear regression, investigate arithmetic means.

ASSESSMENT INDICATORS:
Students identify arithmetic sequences. Students write correct formulas. Students find any term efficiently. Students apply to real contexts.

VOCABULARY:
Arithmetic sequence, common difference, explicit formula, recursive formula, term, nth term

CONNECTION TO FUTURE LEARNING:
Arithmetic sequences lead to geometric sequences, series and sums, and understanding growth patterns in algebra and calculus.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Arithmetic Sequences' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Geometric Sequences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Geometric Sequences' AND grade_level_min = 9),
  'Geometric Sequences Topic Guide',
  'Comprehensive teaching approach for patterns with common ratios',
  'GEOMETRIC SEQUENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand arithmetic sequences, work with exponents, identify patterns in multiplication, and understand ratio concepts.

LEARNING OBJECTIVES:
Students will identify geometric sequences by their common ratio. Students will write explicit and recursive formulas. Students will find any term using the explicit formula. Students will distinguish geometric from arithmetic sequences.

KEY CONCEPTS:
1. Geometric sequence: each term is multiplied by constant (common ratio)
2. Explicit formula: aₙ = a₁ × r^(n-1) where r is common ratio
3. Recursive formula: aₙ = r × aₙ₋₁ with a₁ given
4. Common ratio r > 1: increasing; 0 < r < 1: decreasing; r < 0: alternating
5. Geometric sequences are exponential when graphed
6. Never has ratio of 0 (would make all terms 0)

COMMON MISCONCEPTIONS:
- Using r^n instead of r^(n-1) in explicit formula
- Confusing multiplication (geometric) with addition (arithmetic)
- Not recognizing fractional common ratios as valid
- Forgetting that negative ratio causes alternating signs
- Mixing up formula structures between sequence types

TEACHING SEQUENCE:
Hook/Engagement: A chain letter: you send to 3 people, each sends to 3 more. After 10 rounds, how many letters? This explosive growth is geometric, multiplying by 3 each time.

Direct Instruction: Define geometric sequences through examples. Find common ratio by dividing consecutive terms. Develop explicit formula: a₁ × r^(n-1). Explain why n-1 (first term uses r⁰ = 1). Show recursive formula. Practice finding specific terms. Compare to arithmetic visually.

Guided Practice: Identify geometric sequences and find common ratios. Write both formula types. Find specified terms. Compare arithmetic and geometric growth.

Independent Application: Model exponential situations: population growth, radioactive decay, compound interest. Analyze when geometric growth surpasses arithmetic. Create sequence problems.

DIFFERENTIATION:
Struggling Learners: Use tables to track the multiplication pattern, emphasize r^(n-1) with concrete examples, compare side-by-side with arithmetic, use calculators for computation.
Advanced Learners: Explore infinite geometric series, investigate convergence conditions, connect to exponential functions, analyze compound interest deeply.

ASSESSMENT INDICATORS:
Students identify geometric sequences. Students write correct formulas. Students find any term efficiently. Students distinguish from arithmetic sequences.

VOCABULARY:
Geometric sequence, common ratio, explicit formula, recursive formula, exponential growth, exponential decay

CONNECTION TO FUTURE LEARNING:
Geometric sequences are foundational for exponential functions, compound interest, geometric series, and modeling in science and finance.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Geometric Sequences' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Exponential Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Functions' AND grade_level_min = 9),
  'Exponential Functions Topic Guide',
  'Comprehensive teaching approach for understanding f(x) = a × b^x',
  'EXPONENTIAL FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand geometric sequences, work fluently with exponents, graph functions, and understand function notation.

LEARNING OBJECTIVES:
Students will understand the structure of f(x) = a × bˣ. Students will identify and interpret a (initial value) and b (growth/decay factor). Students will graph exponential functions. Students will compare to linear functions.

KEY CONCEPTS:
1. Exponential function form: f(x) = a × bˣ where a ≠ 0, b > 0, b ≠ 1
2. a is the initial value (y-intercept when x = 0)
3. b is the growth/decay factor (multiplier per unit x)
4. b > 1: exponential growth; 0 < b < 1: exponential decay
5. Horizontal asymptote at y = 0 (for basic form)
6. Continuous version of geometric sequences

COMMON MISCONCEPTIONS:
- Confusing a and b in the formula
- Thinking exponential functions can be negative (b must be positive)
- Not recognizing 0 < b < 1 as decay
- Thinking the graph crosses the x-axis (approaches but never reaches)
- Confusing exponential with power functions (x^n vs n^x)

TEACHING SEQUENCE:
Hook/Engagement: $1000 invested at 5% annual interest: after 1 year = $1050, after 2 years = $1102.50. This isn''t adding $50 each year - it''s multiplying by 1.05. Exponential functions describe this compounding.

Direct Instruction: Introduce the form f(x) = a × bˣ. Identify a as the initial value (when x = 0). Identify b as what we multiply by. Distinguish growth (b > 1) from decay (0 < b < 1). Graph examples showing the characteristic curve. Compare dramatically to linear growth over time.

Guided Practice: Identify a and b from equations. Graph exponential functions. Determine growth vs. decay. Compare exponential and linear models.

Independent Application: Model real exponential situations. Predict future values. Analyze why exponential growth eventually dominates linear. Investigate half-life and doubling time.

DIFFERENTIATION:
Struggling Learners: Build tables of values before graphing, focus on identifying a and b, use graphing technology, emphasize the "multiply by b each time" concept.
Advanced Learners: Explore transformations of exponential functions, investigate natural exponential (e^x), connect to logarithms, analyze compound interest with different compounding periods.

ASSESSMENT INDICATORS:
Students identify and interpret a and b. Students distinguish growth from decay. Students graph exponential functions. Students compare to linear functions.

VOCABULARY:
Exponential function, initial value, growth factor, decay factor, asymptote, doubling time, half-life

CONNECTION TO FUTURE LEARNING:
Exponential functions are essential for compound interest, population models, radioactive decay, and logarithms.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Functions' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Exponential Growth
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Growth' AND grade_level_min = 9),
  'Exponential Growth Topic Guide',
  'Comprehensive teaching approach for population, compound interest, and appreciation',
  'EXPONENTIAL GROWTH - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand exponential functions, work with percent increase, understand the meaning of rate, and evaluate exponential expressions.

LEARNING OBJECTIVES:
Students will model exponential growth situations. Students will use the formula f(t) = a(1+r)^t for percent growth. Students will calculate compound interest. Students will predict future values from growth models.

KEY CONCEPTS:
1. Growth formula: f(t) = a(1+r)^t where r is rate as decimal
2. Growth factor: b = 1 + r (e.g., 5% growth means b = 1.05)
3. Compound interest: A = P(1 + r/n)^(nt) for n compoundings per year
4. Doubling time: time for quantity to double
5. Growth is proportional to current amount
6. Small rates lead to large changes over long times

COMMON MISCONCEPTIONS:
- Adding percent growth each year instead of multiplying
- Using percent instead of decimal in formulas
- Confusing simple and compound interest
- Not recognizing that growth rate must be converted to growth factor
- Underestimating long-term exponential growth

TEACHING SEQUENCE:
Hook/Engagement: The famous "penny doubled every day for a month" problem. Day 1: $0.01, Day 2: $0.02, Day 30: Over $5 million! This shocking result demonstrates exponential growth''s power.

Direct Instruction: Connect growth rate to growth factor: 5% growth means multiply by 1.05. Derive the formula f(t) = a(1+r)^t. Apply to population growth, investment appreciation, salary increases. Introduce compound interest formula. Calculate doubling time using trial or rule of 72.

Guided Practice: Write growth models from descriptions. Calculate future values. Find doubling times. Compare different growth rates.

Independent Application: Analyze real investment scenarios. Project population growth. Compare simple vs. compound interest. Investigate effects of different compounding periods.

DIFFERENTIATION:
Struggling Learners: Emphasize the (1 + r) structure, practice converting rates to growth factors, use calculators with clear step input, work with simple scenarios first.
Advanced Learners: Explore continuous compounding (Pe^(rt)), investigate e as a limit, analyze inflation effects, compare investment strategies.

ASSESSMENT INDICATORS:
Students write correct growth models. Students calculate compound interest. Students predict future values. Students interpret growth in context.

VOCABULARY:
Exponential growth, growth rate, growth factor, compound interest, principal, doubling time, appreciation

CONNECTION TO FUTURE LEARNING:
Growth models apply to finance, biology, economics, and lead to logarithms for solving exponential equations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Growth' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Exponential Decay
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Decay' AND grade_level_min = 9),
  'Exponential Decay Topic Guide',
  'Comprehensive teaching approach for depreciation, half-life, and decay models',
  'EXPONENTIAL DECAY - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand exponential growth and its formula, work with decay factors between 0 and 1, interpret graphs of decreasing functions, and understand percentage decrease.

LEARNING OBJECTIVES:
Students will model exponential decay situations. Students will use the formula f(t) = a(1-r)^t for percent decay. Students will calculate half-life values. Students will predict future values for decay models.

KEY CONCEPTS:
1. Decay formula: f(t) = a(1-r)^t where r is decay rate as decimal
2. Decay factor: b = 1 - r (e.g., 20% decay means b = 0.80)
3. Half-life: time for quantity to reduce to half
4. Values decrease rapidly at first, then more slowly
5. Never reaches zero (approaches asymptotically)
6. Common in depreciation, radioactive decay, medicine elimination

COMMON MISCONCEPTIONS:
- Using (1+r) for decay instead of (1-r)
- Thinking decay reaches zero eventually
- Subtracting the same amount each period (that''s linear, not exponential)
- Confusing half-life with halving the rate
- Using percent instead of decimal

TEACHING SEQUENCE:
Hook/Engagement: A new car loses 20% of its value each year. After 5 years, is it worth $0? Let''s see: $30,000 → $24,000 → $19,200 → $15,360... It never reaches zero, but decreases forever.

Direct Instruction: Connect decay rate to decay factor: 20% decay means multiply by 0.80. Derive the formula f(t) = a(1-r)^t. Apply to depreciation, drug elimination, radioactive decay. Define half-life and practice calculating it. Show graph approaching but never reaching zero.

Guided Practice: Write decay models from descriptions. Calculate future values. Find half-life values. Compare decay with different rates.

Independent Application: Analyze car depreciation. Investigate medication half-lives. Model radioactive decay. Compare decay scenarios.

DIFFERENTIATION:
Struggling Learners: Emphasize the (1 - r) structure, practice converting rates to decay factors, build tables to see the pattern, use calculators carefully.
Advanced Learners: Explore continuous decay (e^(-kt)), investigate carbon dating, analyze Newton''s law of cooling, derive half-life formula algebraically.

ASSESSMENT INDICATORS:
Students write correct decay models. Students calculate half-life. Students predict future values. Students interpret decay in context.

VOCABULARY:
Exponential decay, decay rate, decay factor, half-life, depreciation, radioactive decay, asymptote

CONNECTION TO FUTURE LEARNING:
Decay models apply to physics, medicine, finance, and lead to logarithms for solving decay equations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Decay' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Linear vs Exponential
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear vs Exponential' AND grade_level_min = 9),
  'Linear vs Exponential Topic Guide',
  'Comprehensive teaching approach for comparing growth patterns',
  'LINEAR VS EXPONENTIAL - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand linear functions and their properties, understand exponential functions and their properties, recognize patterns in tables and graphs, and work with both function types.

LEARNING OBJECTIVES:
Students will distinguish between linear and exponential patterns. Students will identify the type from tables, graphs, and contexts. Students will compare long-term behavior. Students will choose appropriate models for situations.

KEY CONCEPTS:
1. Linear: constant rate of change (adding same amount)
2. Exponential: constant ratio (multiplying by same factor)
3. Linear dominates early when starting values favor it
4. Exponential always eventually exceeds linear (if growing)
5. Linear graphs are straight lines; exponential are curves
6. Tables: linear has constant first differences; exponential has constant ratios

COMMON MISCONCEPTIONS:
- Thinking higher early values means higher forever
- Not recognizing that exponential "catches up" to linear
- Confusing the appearance of early data with long-term behavior
- Thinking all increasing patterns are the same
- Not checking ratios vs differences in tables

TEACHING SEQUENCE:
Hook/Engagement: Job offer: $50,000 salary with $5,000 raise each year, or $40,000 with 10% raise each year. Which is better? Students calculate both over time and discover the exponential eventually wins - dramatically.

Direct Instruction: Compare linear and exponential side by side: formulas, tables, graphs. Show how to identify from tables (constant difference vs. constant ratio). Show how to identify from contexts (adding vs. multiplying descriptions). Graph both and observe intersection and long-term behavior. Analyze when each dominates.

Guided Practice: Classify data sets as linear or exponential. Compare models for the same starting point. Predict which will be larger at various times. Match contexts to model types.

Independent Application: Analyze real scenarios and choose appropriate models. Compare investment options. Investigate population growth comparisons. Present findings on when each model applies.

DIFFERENTIATION:
Struggling Learners: Use side-by-side tables with differences and ratios calculated, color-code for linear vs. exponential, use graphing technology to visualize, focus on recognition before comparison.
Advanced Learners: Explore polynomial functions as a middle ground, investigate where models intersect analytically, analyze logarithmic "inverse" behavior, compare multiple exponential rates.

ASSESSMENT INDICATORS:
Students correctly classify patterns as linear or exponential. Students identify from multiple representations. Students predict long-term behavior. Students choose appropriate models for contexts.

VOCABULARY:
Linear function, exponential function, constant rate of change, constant ratio, first differences, growth pattern, long-term behavior

CONNECTION TO FUTURE LEARNING:
Understanding different growth types is essential for mathematical modeling, calculus, and real-world decision making.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear vs Exponential' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;
