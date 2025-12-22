-- ============================================================================
-- CALCULUS MATH TOPIC PROMPTS
-- ============================================================================
-- Comprehensive pedagogical prompts for each Calculus topic
-- Each prompt (500+ words) includes prerequisites, objectives, concepts,
-- misconceptions, teaching sequence, differentiation, and assessment
-- Grade Level: 13 (Calculus / AP Calculus, Ages 17-19+)
-- ============================================================================

-- ============================================================================
-- FUNCTIONS REVIEW UNIT TOPICS
-- ============================================================================

-- Function Values from Graphs
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Values from Graphs' AND grade_level_min = 13),
  'Function Values from Graphs Topic Guide',
  'Comprehensive teaching approach for reading function values and finding inputs from graphs',
  'FUNCTION VALUES FROM GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of coordinate plane and ordered pairs
- Function notation f(x) fundamentals
- Experience graphing basic functions
- Ability to read and interpret graphs

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Evaluate f(a) by reading the y-value at x = a from a graph
2. Find x-values where f(x) = k for a given constant k
3. Identify domain and range from a graph
4. Determine where functions are increasing, decreasing, or constant
5. Analyze function behavior at specific points

KEY CONCEPTS:
- f(a) means the y-coordinate when x = a
- Solving f(x) = k means finding where the horizontal line y = k intersects the graph
- The graph visually represents all input-output pairs
- Local and global behavior can be read from graphs

COMMON MISCONCEPTIONS:
- Confusing f(3) with 3f or f times 3
- Reading f(x) = 2 as finding y when x = 2 instead of finding x when y = 2
- Ignoring that multiple x-values may give the same y-value
- Assuming all functions pass the vertical line test without checking

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Present a real-world graph (stock prices, temperature over time). "If this represents temperature T(t) over 24 hours, what was the temperature at noon? When was it 70 degrees?" Connect to function notation.

2. DIRECT INSTRUCTION (15 minutes):
Review function notation: f(x) means "the output when input is x." Demonstrate reading f(2) from a graph by drawing vertical line at x = 2, finding intersection, reading y-value. Then reverse: "Find x where f(x) = 3" - draw horizontal line at y = 3, find intersections, read x-values.

3. GUIDED PRACTICE (15 minutes):
Provide graphs of various functions. Students work in pairs to find: f(-1), f(0), f(3), and solve f(x) = 2, f(x) = -1. Discuss multiple solutions. Extend to finding intervals where f(x) > 0.

4. INDEPENDENT APPLICATION (10 minutes):
Individual assessment with unfamiliar graphs. Include piecewise functions and graphs with holes or asymptotes. Real-world application problems.

DIFFERENTIATION:

For Struggling Learners:
- Use large, clear graphs with integer coordinates
- Color-code the vertical and horizontal line methods
- Provide step-by-step procedure cards
- Start with linear and quadratic graphs
- Allow graphing calculator for verification

For Advanced Learners:
- Analyze parametric graphs
- Compare f(x) and f(-x) graphically
- Explore transformations through graphical analysis
- Investigate piecewise functions with complex domains
- Connect to calculus concepts (limits, derivatives)

ASSESSMENT INDICATORS:
- Accuracy: Correctly reads function values
- Methodology: Uses appropriate line-drawing technique
- Multiple solutions: Identifies all solutions when applicable
- Domain/range: Correctly identifies from graph
- Interpretation: Applies to real-world contexts

REAL-WORLD CONNECTIONS:
- Stock market analysis
- Temperature and weather patterns
- Population growth models
- Physics: position-time graphs
- Economics: supply and demand curves

VOCABULARY:
function value, evaluate, input, output, domain, range, increasing, decreasing, maximum, minimum

QUESTIONING TECHNIQUES:
- "What is f(2)? Walk me through how you found it."
- "For what values of x does f(x) = 4? How do you know?"
- "Where is this function increasing?"
- "Can a function have two different outputs for the same input?"

MATERIALS:
- Graphing paper and colored pencils
- Graphing calculators
- Interactive graphing software (Desmos)
- Function graph cards
- Real-world data graphs

COMMON ERRORS AND RESPONSES:
Error: Reading f(3) as 3 when the point (3, 5) is on the graph
Response: "f(3) asks for the output when input is 3. Find x = 3, then read the y-coordinate."

Error: Finding only one solution when multiple exist
Response: "Does the horizontal line intersect the graph in more than one place? Check the entire domain."

CONNECTION TO FUTURE LEARNING:
This skill is essential for understanding limits, derivatives, and integrals graphically. Students will analyze graphs of f''(x) and F(x) (antiderivatives) using these same techniques.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Values from Graphs' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Function Operations
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Operations' AND grade_level_min = 13),
  'Function Operations Topic Guide',
  'Comprehensive teaching approach for adding, subtracting, multiplying, and dividing functions',
  'FUNCTION OPERATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Solid understanding of function notation
- Algebraic manipulation skills
- Experience with polynomial and rational expressions
- Understanding of domain restrictions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compute (f + g)(x), (f - g)(x), (fg)(x), and (f/g)(x)
2. Determine domains of combined functions
3. Evaluate combined functions at specific points
4. Simplify resulting expressions
5. Apply operations to real-world function combinations

KEY CONCEPTS:
- (f + g)(x) = f(x) + g(x) for all x in both domains
- Domain of f + g, f - g, fg is intersection of domains
- Domain of f/g excludes zeros of g(x)
- Operations create new functions from existing ones

COMMON MISCONCEPTIONS:
- Forgetting to restrict domain when dividing
- Confusing (fg)(x) with f(g(x)) (composition)
- Distributing incorrectly when subtracting functions
- Not simplifying resulting expressions fully

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"A company''s profit P(x) equals revenue R(x) minus cost C(x). We''re combining functions! Today we''ll learn all the ways to combine functions."

2. DIRECT INSTRUCTION (15 minutes):
Define each operation formally. Example: if f(x) = x² and g(x) = 2x + 1, find all four operations. Emphasize that we''re creating new functions. Focus on domain considerations for f/g.

3. GUIDED PRACTICE (15 minutes):
Students work through problems with increasing complexity. Include rational functions where domain restrictions matter. Practice evaluating (f + g)(3) both ways: f(3) + g(3) and (f + g)(x) at x = 3.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems including real-world contexts. Students must identify operation, perform it, state domain, and evaluate at specific points.

DIFFERENTIATION:

For Struggling Learners:
- Start with polynomial functions only
- Provide template: (f □ g)(x) = f(x) □ g(x)
- Practice finding domains separately first
- Use tables to organize work
- Verify with graphing technology

For Advanced Learners:
- Work with piecewise functions
- Analyze graphically and algebraically
- Explore function families under operations
- Prove properties like commutativity of addition
- Connect to later calculus operations

ASSESSMENT INDICATORS:
- Computation: Correctly performs all four operations
- Domain: Accurately determines resulting domains
- Evaluation: Correctly evaluates at specific values
- Simplification: Simplifies results appropriately
- Application: Applies to contextual problems

REAL-WORLD CONNECTIONS:
- Profit = Revenue - Cost
- Combined effects in physics
- Mixing rates in chemistry
- Economic multiplier effects

VOCABULARY:
sum, difference, product, quotient, domain, intersection, restriction

QUESTIONING TECHNIQUES:
- "What is the domain of f/g? Why?"
- "Is (fg)(x) the same as f(g(x))? Explain."
- "How can you verify your answer?"
- "What happens to the domain when we divide?"

MATERIALS:
- Function operation worksheets
- Graphing technology
- Domain restriction diagrams
- Real-world application problems

COMMON ERRORS AND RESPONSES:
Error: Writing (f/g)(x) = f(x)/g(x) without domain restriction
Response: "What happens when g(x) = 0? We must exclude those x-values from the domain."

Error: Confusing fg with f∘g
Response: "(fg)(x) means f(x) times g(x). f∘g means f(g(x)), plugging g into f."

CONNECTION TO FUTURE LEARNING:
Function operations prepare students for the product, quotient, and chain rules in differentiation. Understanding domains is crucial for integration as well.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Operations' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Function Composition
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Composition' AND grade_level_min = 13),
  'Function Composition Topic Guide',
  'Comprehensive teaching approach for composing functions and evaluating composite functions',
  'FUNCTION COMPOSITION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Function notation mastery
- Function operations (addition, etc.)
- Substitution skills
- Understanding of domain concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compute (f ∘ g)(x) = f(g(x))
2. Evaluate composite functions at specific values
3. Determine domains of composite functions
4. Decompose complex functions into simpler compositions
5. Verify that f ∘ g ≠ g ∘ f generally

KEY CONCEPTS:
- Composition means "function of a function"
- (f ∘ g)(x) = f(g(x)): apply g first, then f
- Domain of f ∘ g: x must be in domain of g AND g(x) must be in domain of f
- Order matters: composition is generally not commutative

COMMON MISCONCEPTIONS:
- Confusing f ∘ g with f · g (product)
- Applying functions in wrong order
- Not considering domain restrictions carefully
- Thinking composition is always commutative

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Imagine a machine that converts Celsius to Fahrenheit, and another that converts Fahrenheit to descriptive words. Chain them together! That''s composition." Draw machine diagram.

2. DIRECT INSTRUCTION (15 minutes):
Define f ∘ g formally. Use diagrams showing x → g → g(x) → f → f(g(x)). Multiple examples: polynomials, radicals, rationals. Show that f ∘ g ≠ g ∘ f with specific example.

3. GUIDED PRACTICE (15 minutes):
Students compute compositions both directions. Practice finding (f ∘ g)(x) as a formula and (f ∘ g)(2) both ways. Include domain analysis problems. Decomposition: express √(x² + 1) as f ∘ g.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems including decomposition and verification. Real-world composition problems. Predict domains before computing.

DIFFERENTIATION:

For Struggling Learners:
- Use machine/input-output diagrams consistently
- Start with numerical evaluation before symbolic
- Color-code: inner function, outer function
- Practice order: g first, then f
- Verify with tables of values

For Advanced Learners:
- Compose three or more functions
- Find f such that f ∘ f = identity
- Explore when composition IS commutative
- Connect to inverse functions (f ∘ f⁻¹ = x)
- Apply to parametric equations

ASSESSMENT INDICATORS:
- Computation: Correctly computes f ∘ g
- Order: Applies functions in correct order
- Domain: Determines domain of composition
- Decomposition: Breaks down complex functions
- Verification: Checks f ∘ g vs g ∘ f

REAL-WORLD CONNECTIONS:
- Unit conversions in sequence
- Sequential discounts
- Temperature scales through Kelvin
- Data processing pipelines

VOCABULARY:
composition, compose, composite function, inner function, outer function, decompose

QUESTIONING TECHNIQUES:
- "In f ∘ g, which function do we apply first?"
- "Why is the domain of f ∘ g not just the domain of g?"
- "Can you write h(x) = (2x + 1)³ as a composition?"
- "When does f ∘ g = g ∘ f?"

MATERIALS:
- Function machine diagrams
- Composition practice worksheets
- Graphing technology for verification
- Domain analysis templates

COMMON ERRORS AND RESPONSES:
Error: Computing g(f(x)) instead of f(g(x)) for f ∘ g
Response: "f ∘ g reads ''f of g.'' We apply g first (innermost), then f. Think: f(g(x))."

Error: Missing domain restrictions
Response: "x = -1 makes g(x) = 0. Can we put 0 into f(x) = 1/x? No! So x = -1 is not in the domain of f ∘ g."

CONNECTION TO FUTURE LEARNING:
Composition is essential for the chain rule in differentiation. Understanding f(g(x)) structure is key to differentiating composite functions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Composition' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Inverse Functions
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inverse Functions' AND grade_level_min = 13),
  'Inverse Functions Topic Guide',
  'Comprehensive teaching approach for finding inverse functions algebraically and graphically',
  'INVERSE FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Function composition understanding
- One-to-one function concept
- Algebraic equation solving
- Graph reflection concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Determine if a function has an inverse
2. Find inverse functions algebraically
3. Verify inverses using composition: f(f⁻¹(x)) = x
4. Graph inverse functions as reflections over y = x
5. State domains and ranges of inverse functions

KEY CONCEPTS:
- f⁻¹(x) undoes what f does
- f(f⁻¹(x)) = f⁻¹(f(x)) = x (identity)
- Only one-to-one functions have inverses
- Graph of f⁻¹ is reflection of f over y = x

COMMON MISCONCEPTIONS:
- Confusing f⁻¹(x) with 1/f(x)
- Thinking all functions have inverses
- Forgetting to switch domain and range
- Not restricting domain when necessary

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"If I tell you f(2) = 5, can you tell me f⁻¹(5)? The inverse undoes the function - like a password encoder and decoder." Demonstrate with simple linear function.

2. DIRECT INSTRUCTION (15 minutes):
Algorithm: 1) Write y = f(x), 2) Swap x and y, 3) Solve for y. Example with f(x) = 2x + 3. Verify: f(f⁻¹(x)) = f((x-3)/2) = x. Show graphically as reflection. Discuss horizontal line test.

3. GUIDED PRACTICE (15 minutes):
Students find inverses of linear, rational, and radical functions. Practice verification. Analyze graphs. Identify functions that need domain restriction.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems including real-world contexts (Celsius-Fahrenheit, encryption). Graph inverse pairs. Determine domains and ranges.

DIFFERENTIATION:

For Struggling Learners:
- Practice swap-and-solve procedure repeatedly
- Use numerical verification first
- Focus on linear functions initially
- Color-code the swap step
- Create "undo" operation lists

For Advanced Learners:
- Find inverses of piecewise functions
- Explore functions that are their own inverses
- Restrict domains to create inverses
- Connect to exponential/logarithm relationship
- Prove inverse properties

ASSESSMENT INDICATORS:
- Recognition: Identifies one-to-one functions
- Computation: Correctly finds f⁻¹(x)
- Verification: Uses composition to verify
- Graphing: Reflects correctly over y = x
- Domain/Range: Swaps correctly

REAL-WORLD CONNECTIONS:
- Temperature conversions
- Encoding/decoding
- Unit conversions
- Solving equations

VOCABULARY:
inverse function, one-to-one, horizontal line test, reflection, identity function

QUESTIONING TECHNIQUES:
- "How do you know this function has an inverse?"
- "If f(3) = 7, what is f⁻¹(7)?"
- "What happens to domain and range for the inverse?"
- "How are the graphs of f and f⁻¹ related?"

MATERIALS:
- Inverse function worksheets
- Graphing technology
- Reflection demonstrations
- Verification templates

COMMON ERRORS AND RESPONSES:
Error: Writing f⁻¹(x) = 1/f(x)
Response: "f⁻¹ means inverse function, not reciprocal. It undoes f. Verify: f⁻¹(f(x)) should equal x."

Error: Not swapping domain and range
Response: "If f goes from A to B, then f⁻¹ goes from B to A. Domain and range switch!"

CONNECTION TO FUTURE LEARNING:
Inverse functions are foundational for logarithms (inverse of exponentials), inverse trig functions, and the derivative of inverse functions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inverse Functions' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Domain and Range
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Domain and Range' AND grade_level_min = 13),
  'Domain and Range Topic Guide',
  'Comprehensive teaching approach for determining domain and range of various function types',
  'DOMAIN AND RANGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Function concept and notation
- Solving inequalities
- Understanding of real number system
- Experience with various function types

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Determine domains of polynomial, rational, radical, and transcendental functions
2. Identify restrictions (division by zero, negative under even root)
3. Find range from graphs and algebraic analysis
4. Express domain and range in interval notation
5. Analyze combined and composite function domains

KEY CONCEPTS:
- Domain: all valid inputs (x-values)
- Range: all possible outputs (y-values)
- Key restrictions: division by zero, even roots of negatives, log of non-positive
- Domain affects range and vice versa

COMMON MISCONCEPTIONS:
- Assuming all functions have domain of all reals
- Confusing domain restrictions with holes
- Not checking all restrictions for complex functions
- Difficulty with range from algebraic analysis

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Can you divide by zero? Take the square root of -4? Input 0 into ln(x)? Some inputs break functions! Let''s learn to find the valid ones."

2. DIRECT INSTRUCTION (15 minutes):
Systematic approach by function type:
- Polynomials: all reals
- Rationals: exclude zeros of denominator
- Radicals (even index): radicand ≥ 0
- Logarithms: argument > 0
Practice finding domains, then ranges graphically.

3. GUIDED PRACTICE (15 minutes):
Students work through examples of each type. Include combinations: f(x) = √(x)/(x-2). Multiple representations: algebraic, graphical, interval notation.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems including real-world contexts. Compare domain found algebraically to graphical verification.

DIFFERENTIATION:

For Struggling Learners:
- Create a "restriction checklist"
- Practice one function type at a time
- Use graphing to verify domains
- Focus on domain before range
- Provide interval notation reference

For Advanced Learners:
- Analyze piecewise function domains
- Determine ranges algebraically
- Work with implicit function domains
- Explore parametric domains
- Connect to calculus (where derivatives exist)

ASSESSMENT INDICATORS:
- Identification: Recognizes potential restrictions
- Analysis: Correctly determines domain
- Notation: Uses interval notation properly
- Range: Finds range from appropriate method
- Application: Applies to real-world problems

REAL-WORLD CONNECTIONS:
- Physical constraints (time ≥ 0)
- Model validity regions
- Economic constraints
- Engineering specifications

VOCABULARY:
domain, range, restriction, interval notation, undefined, excluded value

QUESTIONING TECHNIQUES:
- "What could make this function undefined?"
- "What values of x give real outputs?"
- "How can you verify your domain graphically?"
- "What is the range of this function?"

MATERIALS:
- Domain/range worksheets by function type
- Graphing technology
- Interval notation reference cards
- Real-world application problems

COMMON ERRORS AND RESPONSES:
Error: Writing domain as x ≠ 0 instead of interval notation
Response: "Let''s express this in interval notation: (-∞, 0) ∪ (0, ∞). This shows the domain clearly."

Error: Missing a restriction in complex function
Response: "Check all potential issues: denominators, radicals, logarithms. This function has a radical AND a denominator."

CONNECTION TO FUTURE LEARNING:
Domain understanding is essential for calculus. Limits exist only on domains. Derivatives and integrals require careful domain consideration.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Domain and Range' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Families of Functions
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Families of Functions' AND grade_level_min = 13),
  'Families of Functions Topic Guide',
  'Comprehensive teaching approach for identifying and analyzing polynomial, rational, and transcendental functions',
  'FAMILIES OF FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Experience with various function types
- Graphing skills
- Understanding of asymptotes
- Transformation knowledge

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify polynomial, rational, exponential, logarithmic, and trigonometric functions
2. Recognize key characteristics of each family
3. Analyze end behavior and asymptotes
4. Apply transformations within function families
5. Select appropriate function types for modeling

KEY CONCEPTS:
- Polynomial: smooth, continuous, end behavior determined by leading term
- Rational: may have asymptotes, discontinuities
- Exponential: rapid growth/decay, horizontal asymptote
- Logarithmic: inverse of exponential, vertical asymptote
- Trigonometric: periodic behavior

COMMON MISCONCEPTIONS:
- Confusing exponential growth with polynomial growth
- Not recognizing transformed versions of parent functions
- Misidentifying asymptote types
- Assuming all functions are continuous

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Show mystery graphs. "Can you identify the function family just from the shape?" Students guess before revealing equations.

2. DIRECT INSTRUCTION (15 minutes):
Tour of function families with parent functions and key characteristics. Create comparison chart: domain, range, asymptotes, special points, end behavior.

3. GUIDED PRACTICE (15 minutes):
Given equations, identify family and sketch behavior. Given graphs, identify likely family and possible equation. Match equations to graphs.

4. INDEPENDENT APPLICATION (10 minutes):
Real-world data sets: which function family fits? Justify choices based on characteristics.

DIFFERENTIATION:

For Struggling Learners:
- Focus on recognizing parent functions
- Use graphic organizers for characteristics
- Practice with untransformed functions first
- Create flashcards for each family
- Use technology for graphing verification

For Advanced Learners:
- Analyze combinations of families
- Model real data with regression
- Compare growth rates of families
- Explore piecewise combinations
- Investigate limiting behavior

ASSESSMENT INDICATORS:
- Recognition: Identifies function families correctly
- Characteristics: States key features of each
- Graphing: Sketches approximate behavior
- Modeling: Selects appropriate family for data
- Comparison: Explains differences between families

REAL-WORLD CONNECTIONS:
- Population growth (exponential)
- Sound/pH (logarithmic)
- Planetary motion (trigonometric)
- Economics (polynomial/rational)

VOCABULARY:
polynomial, rational, exponential, logarithmic, trigonometric, asymptote, end behavior

QUESTIONING TECHNIQUES:
- "How can you tell this is exponential, not polynomial?"
- "What does the asymptote tell us?"
- "Which function family would model this situation?"
- "How does the end behavior differ?"

MATERIALS:
- Function family reference cards
- Graphing technology
- Real-world data sets
- Comparison chart templates

COMMON ERRORS AND RESPONSES:
Error: Calling y = 2^x a polynomial because it has an exponent
Response: "In polynomials, the variable is the base. In exponentials, the variable is the exponent. y = 2^x is exponential."

CONNECTION TO FUTURE LEARNING:
Understanding function families prepares students for appropriate differentiation and integration techniques specific to each type.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Families of Functions' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- INTRODUCTION TO LIMITS UNIT TOPICS
-- ============================================================================

-- Graphical Limits
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphical Limits' AND grade_level_min = 13),
  'Graphical Limits Topic Guide',
  'Comprehensive teaching approach for finding limits by analyzing graphs',
  'GRAPHICAL LIMITS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Function values from graphs
- Understanding of approaching a value
- Experience with continuous and discontinuous functions
- Interval and limit notation awareness

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Interpret limit notation: lim(x→a) f(x)
2. Estimate limits from graphs visually
3. Identify when limits do not exist
4. Distinguish between f(a) and lim(x→a) f(x)
5. Analyze limits at points of discontinuity

KEY CONCEPTS:
- Limit describes what f(x) approaches as x approaches a
- Limit can exist even if f(a) is undefined
- Limit may equal f(a), differ from f(a), or not exist
- We analyze behavior "near" a, not "at" a

COMMON MISCONCEPTIONS:
- Confusing limit with function value
- Thinking limit cannot exist at undefined points
- Ignoring one-sided behavior
- Expecting limits to always equal function values

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Draw a function with a hole at x = 2. "If I walk along this graph toward x = 2, where am I heading? That''s the limit! It doesn''t matter that there''s a hole."

2. DIRECT INSTRUCTION (15 minutes):
Introduce limit notation. Demonstrate tracing from left and right toward a point. Show examples: limit equals f(a), limit exists but f(a) undefined, limit exists but differs from f(a), limit does not exist.

3. GUIDED PRACTICE (15 minutes):
Students analyze various graphs. Find limits, compare to function values, identify cases where limits don''t exist. Discuss reasons for non-existence.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems with various discontinuity types. Students must find limits and explain reasoning based on graphical evidence.

DIFFERENTIATION:

For Struggling Learners:
- Use tracing motion (fingers or technology)
- Color-code left approach vs right approach
- Start with continuous functions
- Create limit = function value connection first
- Provide graph reading guides

For Advanced Learners:
- Analyze piecewise function limits
- Explore limits at infinity
- Connect to formal ε-δ concept
- Investigate limits of oscillating functions
- Compare to algebraic verification

ASSESSMENT INDICATORS:
- Reading: Accurately reads limits from graphs
- Notation: Uses limit notation correctly
- Cases: Identifies existence/non-existence
- Comparison: Distinguishes limit from function value
- Justification: Explains reasoning

REAL-WORLD CONNECTIONS:
- Approaching a destination
- Speed approaching a limit
- Asymptotic behavior
- Convergence concepts

VOCABULARY:
limit, approach, tends to, exists, does not exist, removable discontinuity, jump discontinuity

QUESTIONING TECHNIQUES:
- "What value does f(x) approach as x approaches 3?"
- "Does the limit exist here? Why or why not?"
- "Is the limit the same as f(3)?"
- "What do you see from the left? From the right?"

MATERIALS:
- Graph analysis worksheets
- Interactive graphing software
- Tracing demonstrations
- Limit comparison cards

COMMON ERRORS AND RESPONSES:
Error: Saying limit doesn''t exist because f(2) is undefined
Response: "The limit asks where f(x) is HEADING, not where it IS. Trace toward x = 2. What y-value do you approach?"

Error: Reading limit as f(a) when they differ
Response: "Look carefully. There''s a hole at the approach point but f(a) is defined elsewhere. The limit is where you''re heading."

CONNECTION TO FUTURE LEARNING:
Graphical limit analysis provides intuition for formal limit definition and prepares for understanding derivatives as limits of difference quotients.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphical Limits' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- One-Sided Limits
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'One-Sided Limits' AND grade_level_min = 13),
  'One-Sided Limits Topic Guide',
  'Comprehensive teaching approach for evaluating left-hand and right-hand limits',
  'ONE-SIDED LIMITS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic limit concept
- Graphical limit reading
- Understanding of approaching from different directions
- Function continuity awareness

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Evaluate left-hand limits: lim(x→a⁻) f(x)
2. Evaluate right-hand limits: lim(x→a⁺) f(x)
3. Determine two-sided limit existence from one-sided limits
4. Analyze jump discontinuities
5. Apply one-sided limits to piecewise functions

KEY CONCEPTS:
- Left-hand limit (x→a⁻): approaching from values less than a
- Right-hand limit (x→a⁺): approaching from values greater than a
- Two-sided limit exists iff both one-sided limits exist and are equal
- Jump discontinuity: one-sided limits exist but differ

COMMON MISCONCEPTIONS:
- Confusing superscript notation (a⁻ means left, not negative)
- Thinking one-sided limit is half of two-sided
- Not checking both sides when evaluating limits
- Assuming limits always exist

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Imagine driving toward a cliff. It matters which side you''re approaching from! Same with limits - let''s learn to analyze approach from each direction."

2. DIRECT INSTRUCTION (15 minutes):
Introduce notation: lim(x→2⁻) means x approaches 2 from the left (x < 2). Show graphical interpretation. Key theorem: two-sided limit exists iff left = right. Examples with various discontinuities.

3. GUIDED PRACTICE (15 minutes):
Students analyze graphs and piecewise functions. Find one-sided limits, then determine if two-sided exists. Focus on jump discontinuities.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems with algebraic and graphical representations. Real-world piecewise scenarios.

DIFFERENTIATION:

For Struggling Learners:
- Use arrows and color coding for direction
- Practice notation separately from concept
- Analyze simple jumps first
- Verbal cues: "from the left" = "from below/smaller"
- Graphical analysis before algebraic

For Advanced Learners:
- One-sided limits at infinity
- Analyze oscillating function limits
- Create functions with specific one-sided limits
- Connect to differentiability
- Prove limit theorems using one-sided approach

ASSESSMENT INDICATORS:
- Notation: Uses x→a⁻ and x→a⁺ correctly
- Evaluation: Computes one-sided limits accurately
- Existence: Correctly determines two-sided limit existence
- Analysis: Classifies discontinuity types
- Application: Applies to piecewise functions

REAL-WORLD CONNECTIONS:
- Tax brackets (piecewise)
- Postage rates
- Step functions in physics
- Pricing tiers

VOCABULARY:
left-hand limit, right-hand limit, one-sided, two-sided, jump discontinuity, piecewise

QUESTIONING TECHNIQUES:
- "What is the limit as x approaches 2 from the left?"
- "Do the one-sided limits agree?"
- "Why doesn''t the two-sided limit exist here?"
- "How do you evaluate limits for piecewise functions?"

MATERIALS:
- One-sided limit worksheets
- Piecewise function graphs
- Jump discontinuity examples
- Notation practice cards

COMMON ERRORS AND RESPONSES:
Error: Thinking x→2⁻ means x→-2
Response: "The superscript ⁻ indicates direction, not sign. x→2⁻ means approaching 2 from below (x values like 1.9, 1.99)."

Error: Assuming limit exists when one-sided limits differ
Response: "For the two-sided limit to exist, both one-sided limits must equal the same value. Here they''re different."

CONNECTION TO FUTURE LEARNING:
One-sided limits are essential for piecewise function continuity, understanding derivatives at corner points, and improper integral analysis.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'One-Sided Limits' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Limit Notation
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Limit Notation' AND grade_level_min = 13),
  'Limit Notation Topic Guide',
  'Comprehensive teaching approach for understanding and using proper limit notation',
  'LIMIT NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic limit concept understanding
- Function notation familiarity
- Graphical limit experience
- Equation reading skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Read and write limit expressions correctly
2. Interpret limit statements as mathematical sentences
3. Translate between verbal, symbolic, and graphical representations
4. Use proper notation for one-sided limits and limits at infinity
5. Express limit results in standard mathematical form

KEY CONCEPTS:
- lim(x→a) f(x) = L means f(x) approaches L as x approaches a
- The notation encodes: what''s approaching (x), where to (a), the function (f(x)), and result (L)
- Variations: x→a⁻, x→a⁺, x→∞, x→-∞
- "Does not exist" (DNE) is a valid limit result

COMMON MISCONCEPTIONS:
- Reading lim(x→3) f(x) = 5 as "the limit is x = 3 and f(x) = 5"
- Confusing x→3 with x = 3
- Writing limits without specifying the variable
- Not understanding what each part of notation means

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Write lim(x→2) (x²) = 4 and ask students to explain what each symbol means. "This is a complete sentence in mathematics. Let''s learn to read and write fluently."

2. DIRECT INSTRUCTION (15 minutes):
Break down notation systematically. The "lim" operator, the "x→a" underneath, the function, the equals sign and result. Practice reading aloud. Extend to one-sided and infinity cases.

3. GUIDED PRACTICE (15 minutes):
Translation exercises: verbal → symbolic, symbolic → verbal. Write limits for given graphs. Read limits and sketch possible graphs.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed notation problems. Write complete limit statements. Correct notation errors. Match notations to graphs.

DIFFERENTIATION:

For Struggling Learners:
- Create notation templates to fill in
- Practice reading before writing
- Use color-coding for notation parts
- Start with simpler x→a format
- Provide notation reference cards

For Advanced Learners:
- Compose limit statements for complex scenarios
- Explore formal ε-δ notation
- Work with multivariable limit notation
- Analyze historical notation variations
- Connect to series and sequence notation

ASSESSMENT INDICATORS:
- Reading: Interprets notation correctly
- Writing: Produces correct notation
- Translation: Moves between representations
- Precision: Uses notation accurately
- Communication: Expresses limit ideas clearly

REAL-WORLD CONNECTIONS:
- Scientific notation conventions
- Mathematical communication standards
- Precision in technical writing
- Universal mathematical language

VOCABULARY:
limit, approaches, tends to, as x goes to, equals, does not exist, infinity

QUESTIONING TECHNIQUES:
- "What does x→3 mean in words?"
- "How do you write ''the limit of f(x) as x approaches 5 equals 2''?"
- "What''s different about x→∞ notation?"
- "How do we indicate a limit doesn''t exist?"

MATERIALS:
- Notation parsing worksheets
- Translation exercises
- Notation flashcards
- Error correction activities

COMMON ERRORS AND RESPONSES:
Error: Writing lim f(3) = 5 instead of lim(x→3) f(x) = 5
Response: "We need to show what''s happening: x is approaching 3, not equaling 3. Write lim with x→3 below."

Error: Confusing what x→a means
Response: "x→a means x gets closer and closer to a, but doesn''t equal a. We''re interested in the approaching behavior."

CONNECTION TO FUTURE LEARNING:
Proper limit notation is essential for expressing derivatives, defining continuity formally, and communicating mathematical analysis clearly.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Limit Notation' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- When Limits Do Not Exist
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'When Limits Do Not Exist' AND grade_level_min = 13),
  'When Limits Do Not Exist Topic Guide',
  'Comprehensive teaching approach for identifying cases where limits fail to exist',
  'WHEN LIMITS DO NOT EXIST - TOPIC TEACHING GUIDE

PREREQUISITES:
- Graphical and one-sided limits
- Understanding of limit existence
- Experience with various function types
- Oscillation and asymptote concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the three main cases of non-existence
2. Recognize jump discontinuities (one-sided limits differ)
3. Identify unbounded behavior (limits to ±∞)
4. Analyze oscillating functions
5. Properly express non-existence

KEY CONCEPTS:
- Case 1: One-sided limits differ (jump discontinuity)
- Case 2: Function approaches ±∞ (unbounded)
- Case 3: Function oscillates infinitely (no settling value)
- "Does not exist" (DNE) is the formal response
- Unbounded: can say "limit is ∞" or "DNE" depending on convention

COMMON MISCONCEPTIONS:
- Thinking a function must exist for limit to not exist
- Confusing unbounded limits with non-existent limits
- Not recognizing subtle oscillations
- Assuming removable discontinuities mean non-existence

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Not every limit has an answer. Sometimes functions misbehave! Let''s learn the three ways a limit can fail to exist."

2. DIRECT INSTRUCTION (15 minutes):
Three cases with clear examples:
1) Jump: |x|/x at x = 0 (left = -1, right = 1)
2) Unbounded: 1/x² at x = 0 (approaches ∞)
3) Oscillation: sin(1/x) at x = 0 (oscillates wildly)
Discuss notation conventions.

3. GUIDED PRACTICE (15 minutes):
Students analyze various functions. Determine if limit exists; if not, classify the reason. Graphical and algebraic approaches.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems requiring determination and classification. Explain reasoning for each conclusion.

DIFFERENTIATION:

For Struggling Learners:
- Focus on one case at a time
- Use very clear graphical examples
- Create decision tree for analysis
- Practice classification before computation
- Provide category reference sheet

For Advanced Learners:
- Analyze more subtle oscillations
- Compare lim = ∞ vs DNE conventions
- Investigate exotic non-existence cases
- Create functions with specific non-existence types
- Connect to continuity requirements

ASSESSMENT INDICATORS:
- Identification: Recognizes non-existence
- Classification: Identifies which case applies
- Justification: Explains reasoning
- Notation: Uses DNE or ∞ appropriately
- Application: Applies to novel functions

REAL-WORLD CONNECTIONS:
- Behavior near physical impossibilities
- Oscillating systems
- Threshold phenomena
- Discontinuous models

VOCABULARY:
does not exist (DNE), unbounded, oscillation, jump discontinuity, infinite limit

QUESTIONING TECHNIQUES:
- "Does this limit exist? How do you know?"
- "Which type of non-existence is this?"
- "Can you describe what the function is doing?"
- "Is saying ''limit is ∞'' the same as saying it doesn''t exist?"

MATERIALS:
- Non-existence classification worksheets
- Graphing technology for oscillation
- Case study examples
- Decision flowcharts

COMMON ERRORS AND RESPONSES:
Error: Saying limit of 1/x² at 0 "doesn''t exist" without noting unbounded behavior
Response: "The function heads to infinity - that''s important to note. You can write lim = ∞ or DNE, but describe the unbounded behavior."

Error: Missing oscillation non-existence
Response: "What happens as x gets very close to 0? The function keeps jumping between values - it never settles. That''s oscillation."

CONNECTION TO FUTURE LEARNING:
Understanding when limits don''t exist prepares students for improper integrals, infinite series divergence, and discontinuity classification.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'When Limits Do Not Exist' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Limits at Infinity
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Limits at Infinity' AND grade_level_min = 13),
  'Limits at Infinity Topic Guide',
  'Comprehensive teaching approach for evaluating limits as x approaches positive or negative infinity',
  'LIMITS AT INFINITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic limit concepts
- Polynomial and rational function understanding
- End behavior of functions
- Asymptote familiarity

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Evaluate lim(x→∞) f(x) and lim(x→-∞) f(x)
2. Determine horizontal asymptotes
3. Apply dominant term analysis for rational functions
4. Recognize when limits at infinity don''t exist
5. Connect limits at infinity to end behavior

KEY CONCEPTS:
- lim(x→∞) means x grows without bound
- Horizontal asymptotes are limits at infinity
- For rational functions: compare degrees of numerator and denominator
- Some functions (like sin x) don''t have limits at infinity

COMMON MISCONCEPTIONS:
- Thinking lim(x→∞) = ∞ always
- Not comparing degrees correctly
- Confusing limits at infinity with limits that equal infinity
- Forgetting to check both ∞ and -∞

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"What happens to 1/x as x gets huge? 1/1000 = 0.001, 1/1000000 = 0.000001... It''s approaching 0! That''s a limit at infinity."

2. DIRECT INSTRUCTION (15 minutes):
For rational functions: divide by highest power of x. Three cases based on degree comparison. Examples of each. Show connection to horizontal asymptotes. Discuss functions without limits at infinity (oscillating).

3. GUIDED PRACTICE (15 minutes):
Students evaluate limits at infinity for various functions. Identify horizontal asymptotes. Sketch end behavior based on limits.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems including real-world growth/decay scenarios. Determine end behavior from limits.

DIFFERENTIATION:

For Struggling Learners:
- Focus on rational function technique
- Practice degree comparison
- Use large number substitution as intuition
- Create step-by-step procedure
- Graphing verification

For Advanced Learners:
- Limits involving exponentials and logs
- Indeterminate forms 0·∞
- L''Hôpital''s Rule preview
- Slant asymptotes
- Growth rate comparisons

ASSESSMENT INDICATORS:
- Computation: Correctly evaluates limits at infinity
- Asymptotes: Identifies horizontal asymptotes
- Technique: Uses appropriate method
- Both directions: Checks ∞ and -∞
- Application: Connects to function behavior

REAL-WORLD CONNECTIONS:
- Population carrying capacity
- Drug concentration over time
- Long-term financial projections
- Asymptotic efficiency in algorithms

VOCABULARY:
limit at infinity, horizontal asymptote, end behavior, dominant term, degree

QUESTIONING TECHNIQUES:
- "What happens as x gets very large?"
- "Which term dominates for large x?"
- "What is the horizontal asymptote?"
- "Does this function have a limit at negative infinity?"

MATERIALS:
- Limit at infinity worksheets
- Graphing technology
- Degree comparison exercises
- End behavior sketching activities

COMMON ERRORS AND RESPONSES:
Error: Saying lim(x→∞) (x²+1)/(x+1) = 1 (incorrect degree analysis)
Response: "The numerator has degree 2, denominator has degree 1. When numerator degree is higher, the limit is ±∞, not a number."

Error: Not checking negative infinity separately
Response: "Some functions behave differently as x→∞ versus x→-∞. Always check both directions."

CONNECTION TO FUTURE LEARNING:
Limits at infinity are foundational for understanding improper integrals, series convergence, and asymptotic analysis in advanced courses.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Limits at Infinity' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CALCULATE LIMITS UNIT TOPICS
-- ============================================================================

-- Limit Laws
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Limit Laws' AND grade_level_min = 13),
  'Limit Laws Topic Guide',
  'Comprehensive teaching approach for applying sum, difference, product, quotient, and power laws for limits',
  'LIMIT LAWS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Graphical limit understanding
- Basic limit evaluation
- Algebraic manipulation skills
- Understanding of function operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Apply the sum, difference, product, and quotient laws
2. Use the power and root laws
3. Combine multiple laws to evaluate complex limits
4. Recognize when laws cannot be applied directly
5. State conditions for law applicability

KEY CONCEPTS:
- Sum/Difference: lim(f ± g) = lim f ± lim g
- Product: lim(f · g) = lim f · lim g
- Quotient: lim(f/g) = lim f / lim g (if lim g ≠ 0)
- Power: lim(f^n) = (lim f)^n
- Laws require individual limits to exist (and be finite)

COMMON MISCONCEPTIONS:
- Applying quotient law when denominator limit is zero
- Not checking that individual limits exist
- Confusing with indeterminate form handling
- Thinking laws work for any expression

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Good news: we don''t have to analyze every limit from scratch! There are rules that let us break complex limits into simpler pieces."

2. DIRECT INSTRUCTION (15 minutes):
State each law formally with conditions. Demonstrate application: lim(x→2) (x² + 3x) = lim x² + lim 3x = 4 + 6 = 10. Show where laws fail (0/0 form).

3. GUIDED PRACTICE (15 minutes):
Students apply laws to various limits. Identify which laws apply. Practice recognizing when direct evaluation fails.

4. INDEPENDENT APPLICATION (10 minutes):
Complex limits requiring multiple laws. Identify indeterminate forms where additional techniques are needed.

DIFFERENTIATION:

For Struggling Learners:
- Create law reference cards
- Practice one law at a time
- Use step-by-step templates
- Verify with graphing/tables
- Focus on polynomial limits first

For Advanced Learners:
- Prove limit laws using ε-δ
- Extend to multivariable cases
- Analyze edge cases
- Connect to continuity definition
- Apply to trigonometric limits

ASSESSMENT INDICATORS:
- Application: Correctly applies appropriate laws
- Conditions: Checks applicability conditions
- Combination: Uses multiple laws together
- Recognition: Identifies when laws fail
- Justification: Cites laws used

REAL-WORLD CONNECTIONS:
- Breaking complex calculations into parts
- Modular problem-solving
- Engineering approximations
- Scientific computation

VOCABULARY:
limit laws, sum law, product law, quotient law, power law, direct substitution

QUESTIONING TECHNIQUES:
- "Which limit law applies here?"
- "Can we use the quotient law? Why or why not?"
- "What conditions must be met?"
- "How can we break this limit into simpler parts?"

MATERIALS:
- Limit law reference sheet
- Practice worksheets by law
- Application problems
- Counter-example analysis

COMMON ERRORS AND RESPONSES:
Error: Using quotient law when lim g = 0
Response: "The quotient law requires lim g ≠ 0. Here we get 0/0, which is indeterminate. We need another technique."

Error: Applying laws without checking limit existence
Response: "Each individual limit must exist for the laws to apply. First verify that lim f and lim g exist."

CONNECTION TO FUTURE LEARNING:
Limit laws provide the foundation for proving derivative rules. The product rule for derivatives comes from the product law for limits.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Limit Laws' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Polynomial Limits
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polynomial Limits' AND grade_level_min = 13),
  'Polynomial Limits Topic Guide',
  'Comprehensive teaching approach for evaluating limits of polynomial functions',
  'POLYNOMIAL LIMITS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Polynomial function understanding
- Limit laws knowledge
- Direct substitution concept
- Continuity intuition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Evaluate limits of polynomials by direct substitution
2. Understand why direct substitution works for polynomials
3. Apply this to polynomial combinations
4. Recognize polynomial limits as continuous functions
5. Extend to limits at infinity for polynomials

KEY CONCEPTS:
- Polynomials are continuous everywhere
- For continuous functions: lim(x→a) f(x) = f(a)
- Direct substitution: just plug in the value
- At infinity: leading term dominates

COMMON MISCONCEPTIONS:
- Thinking all limits require complex techniques
- Not recognizing continuity allows substitution
- Forgetting polynomials extend to all reals
- Confusion about limits at infinity

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"What is lim(x→2) x²? Just plug in 2 and get 4! Polynomials are the friendliest functions for limits."

2. DIRECT INSTRUCTION (12 minutes):
Demonstrate direct substitution for various polynomials. Explain why: polynomials are continuous, so limit equals function value. Extend to limits at infinity: highest degree term determines behavior.

3. GUIDED PRACTICE (12 minutes):
Students evaluate polynomial limits at various points. Practice limits at infinity. Combine with other continuous functions.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed polynomial limit problems. Connect to graphical verification. Real-world polynomial model analysis.

DIFFERENTIATION:

For Struggling Learners:
- Emphasize "just substitute" for now
- Practice substitution separately
- Use simple polynomials
- Verify with tables of values
- Build confidence before complexity

For Advanced Learners:
- Explore why continuity enables substitution
- Analyze polynomial limit proofs
- Connect to Weierstrass Approximation
- Examine limits of polynomial sequences
- Extend to power series concepts

ASSESSMENT INDICATORS:
- Computation: Correctly evaluates by substitution
- Justification: Explains why substitution works
- Infinity: Handles limits at infinity
- Connection: Relates to continuity
- Efficiency: Uses direct method appropriately

REAL-WORLD CONNECTIONS:
- Polynomial models in physics
- Trajectory calculations
- Economic modeling
- Engineering approximations

VOCABULARY:
polynomial, direct substitution, continuous, everywhere defined, leading term

QUESTIONING TECHNIQUES:
- "Can we use direct substitution here? Why?"
- "Why do polynomials always allow direct substitution?"
- "What happens as x approaches infinity?"
- "What term matters most for large x?"

MATERIALS:
- Direct substitution practice
- Polynomial limit worksheets
- Graphing verification tools
- Limits at infinity exercises

COMMON ERRORS AND RESPONSES:
Error: Trying complex techniques for polynomial limits
Response: "Polynomials are continuous everywhere! Just substitute the value. lim(x→3) (x² + 1) = 3² + 1 = 10."

Error: Confusion about limits at infinity
Response: "For large x, the highest power term dominates. In 2x³ + x, the x³ term matters most."

CONNECTION TO FUTURE LEARNING:
Understanding polynomial limit evaluation is foundational for evaluating limits of more complex expressions and for differentiating polynomials.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polynomial Limits' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Rational Function Limits
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rational Function Limits' AND grade_level_min = 13),
  'Rational Function Limits Topic Guide',
  'Comprehensive teaching approach for finding limits of rational functions, including at points of discontinuity',
  'RATIONAL FUNCTION LIMITS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Polynomial limit evaluation
- Factoring polynomials
- Understanding of 0/0 indeterminate form
- Limit laws and quotient law conditions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Evaluate limits of rational functions by direct substitution when valid
2. Recognize and resolve 0/0 indeterminate forms
3. Factor and cancel to find limits at removable discontinuities
4. Identify vertical asymptotes (non-zero/0 form)
5. Apply to limits at infinity using degree comparison

KEY CONCEPTS:
- If denominator limit ≠ 0: use direct substitution
- 0/0 form: factor, cancel, re-evaluate (removable discontinuity)
- Non-zero/0: limit is ±∞ (vertical asymptote)
- At infinity: compare polynomial degrees

COMMON MISCONCEPTIONS:
- Thinking 0/0 = 0 or undefined permanently
- Not attempting factoring
- Canceling without restricting domain
- Confusing 0/0 with non-zero/0

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"What is lim(x→2) (x²-4)/(x-2)? Direct substitution gives 0/0. Is it stuck? No! Watch the algebraic magic."

2. DIRECT INSTRUCTION (15 minutes):
Three cases: non-zero/non-zero (substitute), 0/0 (factor and cancel), non-zero/0 (infinity or DNE). Demonstrate each with clear examples. Emphasize that 0/0 is indeterminate, not undefined.

3. GUIDED PRACTICE (15 minutes):
Students classify limits before solving. Practice factoring and canceling. Identify asymptote vs hole. Limits at infinity for rational functions.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems without classification hints. Real-world rational function contexts. Graphical verification.

DIFFERENTIATION:

For Struggling Learners:
- Create decision flowchart
- Practice classification first
- Review factoring techniques
- One case at a time
- Verify graphically

For Advanced Learners:
- Complex rational expressions
- Limits requiring L''Hôpital preview
- Create functions with specific limit behaviors
- Partial fractions for limit analysis
- Connect to continuity and differentiability

ASSESSMENT INDICATORS:
- Classification: Identifies limit type correctly
- Factoring: Successfully simplifies 0/0 forms
- Evaluation: Correctly computes limit
- Asymptotes: Recognizes vertical asymptote cases
- Infinity: Handles limits at infinity

REAL-WORLD CONNECTIONS:
- Population models
- Physics ratio problems
- Economic marginal analysis
- Engineering efficiency curves

VOCABULARY:
rational function, indeterminate form, removable discontinuity, hole, vertical asymptote

QUESTIONING TECHNIQUES:
- "Is this 0/0, non-zero/0, or neither?"
- "Can you factor and cancel?"
- "What does the graph look like here?"
- "Does the function have a hole or an asymptote?"

MATERIALS:
- Classification practice worksheets
- Factoring review materials
- Graphing technology
- Decision flowcharts

COMMON ERRORS AND RESPONSES:
Error: Declaring limit DNE when 0/0 appears
Response: "0/0 is indeterminate, meaning we can''t tell yet. Factor and cancel to find the actual limit."

Error: Not checking what happens after canceling
Response: "After canceling, try substituting again. If valid now, that''s your limit!"

CONNECTION TO FUTURE LEARNING:
Recognizing and resolving 0/0 forms prepares students for L''Hôpital''s Rule and understanding derivatives as limits of difference quotients.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rational Function Limits' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Trigonometric Limits
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Trigonometric Limits' AND grade_level_min = 13),
  'Trigonometric Limits Topic Guide',
  'Comprehensive teaching approach for evaluating fundamental trigonometric limits including sin(x)/x',
  'TRIGONOMETRIC LIMITS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Trigonometric function understanding
- Radian measure
- Limit evaluation techniques
- Squeeze theorem awareness

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Memorize and apply lim(x→0) sin(x)/x = 1
2. Derive and apply lim(x→0) (1-cos(x))/x = 0
3. Evaluate limits involving trig functions
4. Use Squeeze Theorem for trig limits
5. Transform expressions to use known limits

KEY CONCEPTS:
- lim(x→0) sin(x)/x = 1 (x in radians!)
- lim(x→0) (1-cos(x))/x = 0
- lim(x→0) tan(x)/x = 1
- Many trig limits reduce to these fundamental forms

COMMON MISCONCEPTIONS:
- Using degrees instead of radians
- Thinking sin(x)/x = 1 for all x
- Not recognizing transformable forms
- Forgetting Squeeze Theorem applications

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Calculate sin(0.1)/0.1, sin(0.01)/0.01, sin(0.001)/0.001... What pattern do you see? They''re approaching 1! Let''s understand why."

2. DIRECT INSTRUCTION (15 minutes):
Present geometric proof of sin(x)/x → 1 using unit circle. Derive (1-cos(x))/x → 0 from it. Show how to transform limits to these forms. Demonstrate Squeeze Theorem application.

3. GUIDED PRACTICE (15 minutes):
Students evaluate various trig limits. Practice transforming to known forms. Identify when Squeeze Theorem helps.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed trig limit problems. Multiple solution strategies. Real-world oscillation contexts.

DIFFERENTIATION:

For Struggling Learners:
- Memorize key limits with cards
- Practice recognition of forms
- Use substitution u = 2x type transformations
- Numerical verification
- Focus on most common forms

For Advanced Learners:
- Prove limits from epsilon-delta
- Derive additional trig limits
- Explore limits with inverse trig
- Connect to Taylor series preview
- Analyze more complex compositions

ASSESSMENT INDICATORS:
- Knowledge: Recalls fundamental limits
- Transformation: Converts to known forms
- Evaluation: Correctly computes limits
- Justification: Explains reasoning
- Application: Applies to varied problems

REAL-WORLD CONNECTIONS:
- Small angle approximations in physics
- Wave phenomena
- Oscillatory motion
- Signal processing

VOCABULARY:
fundamental trigonometric limit, small angle approximation, radian, Squeeze Theorem

QUESTIONING TECHNIQUES:
- "What is lim(x→0) sin(x)/x?"
- "How can we rewrite this to use a known limit?"
- "Why must x be in radians?"
- "Can you apply the Squeeze Theorem here?"

MATERIALS:
- Trig limit reference cards
- Transformation practice
- Unit circle diagrams
- Squeeze Theorem examples

COMMON ERRORS AND RESPONSES:
Error: Evaluating sin(x)/x in degrees
Response: "The limit sin(x)/x = 1 only works with radians! In degrees, the limit is π/180 ≈ 0.0175."

Error: Not seeing sin(3x)/(3x) as a transformed form
Response: "Let u = 3x. As x→0, u→0 too. So sin(3x)/(3x) = sin(u)/u → 1."

CONNECTION TO FUTURE LEARNING:
These fundamental limits are used to derive the derivatives of sin(x) and cos(x), making them essential for calculus.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Trigonometric Limits' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Indeterminate Forms
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Indeterminate Forms' AND grade_level_min = 13),
  'Indeterminate Forms Topic Guide',
  'Comprehensive teaching approach for recognizing and resolving 0/0 and other indeterminate forms',
  'INDETERMINATE FORMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Limit laws and their conditions
- Rational function limit techniques
- Factoring and algebraic manipulation
- Basic trig limits

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the seven indeterminate forms
2. Distinguish indeterminate from determinate forms
3. Apply algebraic techniques to resolve 0/0
4. Transform expressions to resolve indeterminate forms
5. Preview L''Hôpital''s Rule context

KEY CONCEPTS:
- Indeterminate: 0/0, ∞/∞, 0·∞, ∞-∞, 0⁰, ∞⁰, 1^∞
- Indeterminate means "can''t tell without more work"
- Determinate forms have clear answers (e.g., 0/non-zero = 0)
- Resolution techniques vary by form

COMMON MISCONCEPTIONS:
- Thinking 0/0 = 0 or undefined
- Not recognizing all indeterminate forms
- Confusing ∞-∞ = 0 (wrong!)
- Assuming indeterminate means DNE

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"0/0 could equal anything! Watch: lim(x→0) x/x = 1, lim(x→0) 2x/x = 2, lim(x→0) x²/x = 0. Same form, different answers!"

2. DIRECT INSTRUCTION (15 minutes):
Catalog all seven indeterminate forms with examples. Show why each is indeterminate (competing behaviors). Demonstrate resolution techniques: factoring, conjugates, known limits, algebraic manipulation.

3. GUIDED PRACTICE (15 minutes):
Students identify forms and apply appropriate techniques. Practice recognizing determinate forms (fast answers). Focus on 0/0 and ∞/∞ resolution.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems requiring form identification and resolution. Prepare mindset for L''Hôpital''s Rule.

DIFFERENTIATION:

For Struggling Learners:
- Focus on 0/0 primarily
- Create identification checklist
- Practice one resolution technique at a time
- Use numerical exploration first
- Build technique toolkit gradually

For Advanced Learners:
- Analyze less common forms (1^∞)
- Connect to L''Hôpital''s Rule proofs
- Explore why forms are indeterminate
- Create examples with specific limits
- Investigate non-indeterminate counterparts

ASSESSMENT INDICATORS:
- Identification: Correctly classifies forms
- Distinction: Separates indeterminate from determinate
- Resolution: Successfully finds limits
- Technique: Selects appropriate method
- Justification: Explains why form is indeterminate

REAL-WORLD CONNECTIONS:
- Competing rate problems
- Growth vs decay balancing
- Engineering marginal analysis
- Economic equilibrium

VOCABULARY:
indeterminate form, determinate form, resolve, competing behaviors, algebraic manipulation

QUESTIONING TECHNIQUES:
- "What form does this limit have?"
- "Is this indeterminate or determinate?"
- "What technique can resolve this?"
- "Why can''t we just say 0/0 = undefined?"

MATERIALS:
- Indeterminate form reference chart
- Classification exercises
- Resolution technique cards
- Numerical exploration worksheets

COMMON ERRORS AND RESPONSES:
Error: Saying 0/0 = 0
Response: "0/0 is indeterminate - we can''t tell! lim x/x = 1 and lim x²/x = 0 are both 0/0 but give different answers."

Error: Thinking ∞ - ∞ = 0
Response: "∞ - ∞ is indeterminate too! lim(x→∞) (x - x) = 0 but lim(x→∞) (2x - x) = ∞. Same form, different answers."

CONNECTION TO FUTURE LEARNING:
Understanding indeterminate forms is prerequisite for L''Hôpital''s Rule and essential for analyzing derivatives and integrals at critical points.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Indeterminate Forms' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Squeeze Theorem
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Squeeze Theorem' AND grade_level_min = 13),
  'Squeeze Theorem Topic Guide',
  'Comprehensive teaching approach for applying the Squeeze Theorem to evaluate difficult limits',
  'SQUEEZE THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Limit laws and evaluation
- Inequality manipulation
- Trigonometric bounds
- Graphical limit understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State the Squeeze Theorem formally
2. Identify situations where Squeeze Theorem applies
3. Find appropriate bounding functions
4. Apply the theorem to oscillating function limits
5. Prove limits using the Squeeze Theorem

KEY CONCEPTS:
- If g(x) ≤ f(x) ≤ h(x) near a, and lim g = lim h = L, then lim f = L
- The "squeeze" forces f to approach L
- Common bounds: -1 ≤ sin(x) ≤ 1, -1 ≤ cos(x) ≤ 1
- Used when direct evaluation is impossible

COMMON MISCONCEPTIONS:
- Choosing bounds that don''t have equal limits
- Not verifying the inequality holds
- Forgetting bounds must work near the point
- Thinking any bounds work

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"What is lim(x→0) x²sin(1/x)? sin(1/x) oscillates wildly! But x² squeezes it to 0. Let''s see how."

2. DIRECT INSTRUCTION (15 minutes):
State theorem precisely. Visualize graphically (f trapped between g and h). Classic example: prove lim(x→0) sin(x)/x = 1 using geometry. Practice: lim(x→0) x²cos(1/x).

3. GUIDED PRACTICE (15 minutes):
Students identify bounding functions for various limits. Set up and apply Squeeze Theorem. Verify all conditions are met.

4. INDEPENDENT APPLICATION (10 minutes):
Challenging limits requiring Squeeze Theorem. Create their own squeeze arguments. Connect to proof technique.

DIFFERENTIATION:

For Struggling Learners:
- Use visual/graphical approach first
- Provide common bound suggestions
- Practice with similar problems
- Template for theorem application
- Step-by-step verification

For Advanced Learners:
- Prove fundamental limits rigorously
- Apply to sequences
- Create new Squeeze Theorem problems
- Connect to epsilon-delta proofs
- Explore in higher dimensions

ASSESSMENT INDICATORS:
- Recognition: Identifies when to use Squeeze Theorem
- Setup: Finds appropriate bounds
- Application: Correctly applies theorem
- Verification: Checks all conditions
- Proof: Constructs valid squeeze arguments

REAL-WORLD CONNECTIONS:
- Error bounds in approximations
- Physical constraint analysis
- Sensor accuracy limits
- Tolerance in manufacturing

VOCABULARY:
Squeeze Theorem, Sandwich Theorem, bound, inequality, oscillating function

QUESTIONING TECHNIQUES:
- "Can you find functions that bound this from above and below?"
- "Do your bounding functions have the same limit?"
- "Does the inequality hold near the point of interest?"
- "Why can''t we evaluate this limit directly?"

MATERIALS:
- Graphical squeeze demonstrations
- Bound identification practice
- Classic example collection
- Proof templates

COMMON ERRORS AND RESPONSES:
Error: Bounds don''t share the same limit
Response: "For Squeeze Theorem, the upper and lower bounds must have the SAME limit. Your bounds approach different values."

Error: Not verifying the inequality
Response: "We need g(x) ≤ f(x) ≤ h(x). Check that -1 ≤ sin(1/x) ≤ 1, so -x² ≤ x²sin(1/x) ≤ x²."

CONNECTION TO FUTURE LEARNING:
The Squeeze Theorem is used in proving many calculus theorems and is essential for rigorous limit analysis.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Squeeze Theorem' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CONTINUITY UNIT TOPICS
-- ============================================================================

-- Continuity at a Point
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Continuity at a Point' AND grade_level_min = 13),
  'Continuity at a Point Topic Guide',
  'Comprehensive teaching approach for determining if a function is continuous at a specific point',
  'CONTINUITY AT A POINT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Limit evaluation at a point
- One-sided limits
- Function values
- Domain understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State the three conditions for continuity at a point
2. Verify each condition systematically
3. Identify which condition fails for discontinuities
4. Distinguish between types of discontinuities
5. Determine continuity for various function types

KEY CONCEPTS:
- Three conditions: f(a) exists, lim(x→a) f(x) exists, lim(x→a) f(x) = f(a)
- All three must hold for continuity
- Failure of any one creates discontinuity
- Intuition: graph can be drawn without lifting pencil

COMMON MISCONCEPTIONS:
- Thinking limit existence alone means continuity
- Not checking all three conditions
- Confusing limit with function value
- Assuming functions are continuous

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Can you trace this graph without lifting your pencil? Where you must lift is a discontinuity! Let''s make this precise."

2. DIRECT INSTRUCTION (15 minutes):
State the three conditions clearly. Show examples of each condition failing: hole (condition 3), jump (condition 2), defined differently (condition 3). Practice systematic checking.

3. GUIDED PRACTICE (15 minutes):
Students check continuity at specific points for various functions. Identify which condition fails when discontinuous. Piecewise function analysis.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems requiring systematic verification. Make functions continuous by choosing parameters.

DIFFERENTIATION:

For Struggling Learners:
- Create three-condition checklist
- Practice each condition separately
- Use clear visual examples
- Focus on polynomial continuity first
- Build to more complex cases

For Advanced Learners:
- Prove continuity formally
- Explore uniform continuity
- Analyze function compositions
- Design functions with specific continuity properties
- Connect to differentiability

ASSESSMENT INDICATORS:
- Knowledge: States three conditions
- Verification: Checks all conditions systematically
- Identification: Finds which condition fails
- Analysis: Determines continuity for various functions
- Application: Makes functions continuous

REAL-WORLD CONNECTIONS:
- Continuous processes vs discrete
- Smooth motion vs jumps
- Gradual vs sudden changes
- Physical constraints on systems

VOCABULARY:
continuous, continuity, three conditions, limit exists, function defined

QUESTIONING TECHNIQUES:
- "Is f(a) defined?"
- "Does the limit exist at a?"
- "Does the limit equal f(a)?"
- "Which condition fails here?"

MATERIALS:
- Three-condition checklists
- Discontinuity examples
- Piecewise function worksheets
- Parameter determination problems

COMMON ERRORS AND RESPONSES:
Error: Saying function is continuous because limit exists
Response: "Limit existing is only one condition. Check: Is f(a) defined? Does lim = f(a)?"

Error: Not checking both one-sided limits
Response: "For the limit to exist, both one-sided limits must exist AND equal each other."

CONNECTION TO FUTURE LEARNING:
Continuity is required for many calculus theorems including the Intermediate Value Theorem and differentiability.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Continuity at a Point' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Types of Discontinuities
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Types of Discontinuities' AND grade_level_min = 13),
  'Types of Discontinuities Topic Guide',
  'Comprehensive teaching approach for identifying removable, jump, and infinite discontinuities',
  'TYPES OF DISCONTINUITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Continuity at a point definition
- One-sided limits
- Vertical asymptote understanding
- Piecewise function experience

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify removable discontinuities (holes)
2. Identify jump discontinuities
3. Identify infinite discontinuities (vertical asymptotes)
4. Classify discontinuities for given functions
5. "Remove" removable discontinuities by redefining

KEY CONCEPTS:
- Removable: limit exists but ≠ f(a) or f(a) undefined
- Jump: one-sided limits exist but are unequal
- Infinite: one or both one-sided limits are ±∞
- Essential vs removable classification

COMMON MISCONCEPTIONS:
- Thinking all discontinuities are the same
- Not recognizing removable discontinuities
- Confusing vertical asymptotes with jumps
- Believing discontinuities can always be "fixed"

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Not all breaks in a graph are the same! Some can be ''fixed'' with a single point, some have cliffs, some have walls. Let''s classify them!"

2. DIRECT INSTRUCTION (15 minutes):
Three types with clear graphical and algebraic examples. Removable: (x²-4)/(x-2) at x=2. Jump: step functions. Infinite: 1/x at x=0. How to identify each type.

3. GUIDED PRACTICE (15 minutes):
Students classify discontinuities for various functions. Practice "removing" removable discontinuities. Analyze piecewise functions for all types.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed classification problems. Create functions with specific discontinuity types. Real-world discontinuity examples.

DIFFERENTIATION:

For Struggling Learners:
- Visual classification aids
- One type at a time
- Clear comparison charts
- Practice with obvious examples
- Build recognition skills gradually

For Advanced Learners:
- Oscillating discontinuities
- Discontinuities of derivatives
- Continuous but non-differentiable points
- Design functions with multiple discontinuity types
- Analyze Dirichlet-type functions

ASSESSMENT INDICATORS:
- Classification: Correctly identifies type
- Recognition: Spots discontinuities in graphs
- Analysis: Determines type from equation
- Modification: Removes removable discontinuities
- Creation: Creates functions with specific types

REAL-WORLD CONNECTIONS:
- Phase transitions (jump)
- Asymptotic behavior (infinite)
- Measurement precision (removable)
- Tax bracket transitions (jump)

VOCABULARY:
removable discontinuity, jump discontinuity, infinite discontinuity, hole, essential discontinuity

QUESTIONING TECHNIQUES:
- "What type of discontinuity is this?"
- "Can this discontinuity be removed?"
- "How do the one-sided limits behave?"
- "What would make this function continuous?"

MATERIALS:
- Discontinuity classification charts
- Visual examples of each type
- Function analysis worksheets
- Modification practice problems

COMMON ERRORS AND RESPONSES:
Error: Calling a vertical asymptote a "jump"
Response: "A jump has finite limits from each side that don''t match. Here the function goes to infinity - that''s an infinite discontinuity."

Error: Not recognizing removable discontinuity
Response: "The limit exists! That means there''s just a hole. Define f(a) = that limit, and it''s continuous."

CONNECTION TO FUTURE LEARNING:
Understanding discontinuity types helps in improper integral classification and understanding where derivatives fail to exist.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Types of Discontinuities' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Piecewise Function Continuity
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Piecewise Function Continuity' AND grade_level_min = 13),
  'Piecewise Function Continuity Topic Guide',
  'Comprehensive teaching approach for analyzing continuity of piecewise-defined functions',
  'PIECEWISE FUNCTION CONTINUITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Piecewise function evaluation
- Continuity at a point
- One-sided limits
- Algebraic equation solving

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Evaluate one-sided limits at transition points
2. Determine continuity of piecewise functions
3. Find parameter values that make functions continuous
4. Analyze continuity on the entire domain
5. Identify points requiring special attention

KEY CONCEPTS:
- Check continuity at transition points (where formula changes)
- Each piece is typically continuous on its domain
- At transition: left limit from one piece, right limit from another
- For continuity: both limits must equal function value at point

COMMON MISCONCEPTIONS:
- Only checking one transition point
- Using wrong formula for one-sided limits
- Forgetting to verify function value equals limit
- Assuming polynomial pieces make everything continuous

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"This function uses different rules for different inputs. Where the rules change, we need to check if they connect smoothly!"

2. DIRECT INSTRUCTION (15 minutes):
Demonstrate systematic approach: identify transition points, find one-sided limits using appropriate pieces, check three conditions. Example with finding k to make continuous.

3. GUIDED PRACTICE (15 minutes):
Students analyze piecewise functions for continuity. Solve for parameters. Identify all discontinuities in complex piecewise functions.

4. INDEPENDENT APPLICATION (10 minutes):
Design piecewise functions with specific continuity properties. Real-world piecewise modeling with continuity requirements.

DIFFERENTIATION:

For Struggling Learners:
- Focus on one transition point
- Provide formula identification guidance
- Step-by-step templates
- Visual representations
- Build complexity gradually

For Advanced Learners:
- Multiple parameters to determine
- Continuity and differentiability together
- Create functions for specific scenarios
- Analyze continuity of iterated piecewise
- Connect to spline functions

ASSESSMENT INDICATORS:
- Identification: Finds all transition points
- Evaluation: Correctly computes one-sided limits
- Verification: Checks all three conditions
- Parameter solving: Finds values for continuity
- Comprehensive: Analyzes entire domain

REAL-WORLD CONNECTIONS:
- Tax brackets
- Shipping costs
- Speed limits
- Pricing tiers
- Physical phase changes

VOCABULARY:
piecewise function, transition point, boundary, parameter, one-sided limit

QUESTIONING TECHNIQUES:
- "Where does the formula change?"
- "Which formula gives the left-hand limit?"
- "What value of k makes this continuous?"
- "Is the function continuous everywhere else?"

MATERIALS:
- Piecewise function graphs
- Transition point analysis worksheets
- Parameter solving problems
- Real-world piecewise models

COMMON ERRORS AND RESPONSES:
Error: Using wrong formula for limit direction
Response: "The left limit uses the formula for x < 2, the right limit uses the formula for x ≥ 2. Match direction to formula domain."

Error: Forgetting to check f(a)
Response: "You found the limits match. But is f(2) defined, and does it equal that limit?"

CONNECTION TO FUTURE LEARNING:
Piecewise function continuity analysis prepares for differentiability analysis and understanding where derivatives exist.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Piecewise Function Continuity' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Intermediate Value Theorem
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Intermediate Value Theorem' AND grade_level_min = 13),
  'Intermediate Value Theorem Topic Guide',
  'Comprehensive teaching approach for applying IVT to prove existence of roots',
  'INTERMEDIATE VALUE THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Continuity on an interval
- Function behavior understanding
- Root and zero concepts
- Interval notation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State the Intermediate Value Theorem precisely
2. Verify hypotheses before applying IVT
3. Use IVT to prove root existence
4. Locate intervals containing roots
5. Understand IVT as an existence theorem

KEY CONCEPTS:
- If f is continuous on [a,b] and k is between f(a) and f(b), then f(c) = k for some c in (a,b)
- Continuity is essential (theorem fails without it)
- IVT proves existence, not uniqueness
- Sign change implies root for continuous functions

COMMON MISCONCEPTIONS:
- Forgetting to verify continuity
- Thinking IVT finds the root
- Assuming IVT guarantees unique root
- Applying when function is not continuous

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"If you drive from 0 mph to 60 mph continuously, you must have been going exactly 30 mph at some point! That''s the Intermediate Value Theorem."

2. DIRECT INSTRUCTION (15 minutes):
State theorem formally. Visualize graphically. Classic application: prove x³ - x - 1 = 0 has a solution between 1 and 2. Show continuity check, sign change, conclude root exists.

3. GUIDED PRACTICE (15 minutes):
Students apply IVT to prove root existence. Find intervals containing roots. Practice verifying hypotheses explicitly.

4. INDEPENDENT APPLICATION (10 minutes):
Problems requiring IVT application. Non-root applications (hitting specific values). Identify when IVT does not apply.

DIFFERENTIATION:

For Struggling Learners:
- Focus on root existence first
- Provide step-by-step procedure
- Graphical verification
- Clear hypothesis checklist
- Practice similar problems repeatedly

For Advanced Learners:
- Prove IVT using connectedness
- Apply to prove fixed point theorems
- Explore failure cases
- Use IVT in complex proofs
- Connect to bisection algorithm

ASSESSMENT INDICATORS:
- Statement: Accurately states IVT
- Verification: Checks all hypotheses
- Application: Correctly applies to prove existence
- Interval finding: Locates appropriate intervals
- Limitation awareness: Knows what IVT doesn''t do

REAL-WORLD CONNECTIONS:
- Crossing values in continuous processes
- Temperature reaching specific values
- Finding break-even points
- Physical existence arguments

VOCABULARY:
Intermediate Value Theorem, continuous, interval, between, existence, root

QUESTIONING TECHNIQUES:
- "What are the hypotheses of IVT?"
- "Is f continuous on this interval?"
- "Is there a sign change?"
- "Does IVT tell us where the root is?"

MATERIALS:
- IVT statement cards
- Root existence worksheets
- Sign change analysis
- Counter-examples for discontinuous

COMMON ERRORS AND RESPONSES:
Error: Applying IVT without checking continuity
Response: "First verify the function is continuous on [a,b]. IVT only works for continuous functions!"

Error: Thinking IVT finds the exact root
Response: "IVT proves a root EXISTS in the interval. It doesn''t tell us the exact value. We need other methods to find it."

CONNECTION TO FUTURE LEARNING:
IVT is foundational for numerical methods (bisection algorithm) and other existence theorems in analysis.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Intermediate Value Theorem' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Continuous Functions
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Continuous Functions' AND grade_level_min = 13),
  'Continuous Functions Topic Guide',
  'Comprehensive teaching approach for identifying intervals of continuity for various function types',
  'CONTINUOUS FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Continuity at a point
- Domain determination
- Function families
- Discontinuity types

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify where functions are continuous by type
2. State intervals of continuity
3. Know which functions are continuous on their domains
4. Combine continuous functions
5. Apply continuity in limit evaluation

KEY CONCEPTS:
- Polynomials: continuous everywhere
- Rational functions: continuous except where denominator = 0
- Trig functions: continuous on domains
- Compositions and combinations of continuous functions are continuous

COMMON MISCONCEPTIONS:
- Assuming all functions are continuous everywhere
- Not specifying domain when stating continuity
- Forgetting about domain restrictions
- Thinking discontinuity always means undefined

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Some functions are well-behaved everywhere. Others have trouble spots. Let''s categorize which functions are continuous where."

2. DIRECT INSTRUCTION (15 minutes):
Catalog by function type: polynomials (all reals), rationals (except zeros of denominator), radicals (where defined), trig (on domains). Continuity preservation under operations and composition.

3. GUIDED PRACTICE (15 minutes):
Students determine intervals of continuity for various functions. Combine different function types. Identify potential discontinuity points.

4. INDEPENDENT APPLICATION (10 minutes):
Complex functions requiring analysis. Real-world continuous models. Explain continuity implications.

DIFFERENTIATION:

For Struggling Learners:
- Create function type reference
- Practice one type at a time
- Focus on stating intervals
- Use graphing to verify
- Build complexity gradually

For Advanced Learners:
- Analyze exotic functions
- Prove continuity preservation theorems
- Explore continuous but pathological functions
- Create functions with specific continuity properties
- Connect to measure theory previews

ASSESSMENT INDICATORS:
- Identification: Knows continuity by function type
- Interval stating: Correctly expresses continuity intervals
- Combination: Analyzes combined functions
- Application: Uses continuity for limit evaluation
- Justification: Explains continuity conclusions

REAL-WORLD CONNECTIONS:
- Smooth physical processes
- Continuous vs discrete models
- Approximation theory
- Signal continuity

VOCABULARY:
continuous everywhere, continuous on domain, interval of continuity, domain restriction

QUESTIONING TECHNIQUES:
- "Where is this function continuous?"
- "What are the potential discontinuity points?"
- "Is the composition of continuous functions continuous?"
- "How can we express the continuity interval?"

MATERIALS:
- Function type continuity chart
- Interval notation practice
- Complex function analysis
- Graphing verification tools

COMMON ERRORS AND RESPONSES:
Error: Saying 1/x is continuous everywhere
Response: "1/x is continuous on its domain, but x = 0 is not in the domain. State: continuous on (-∞, 0) ∪ (0, ∞)."

Error: Not considering domain when combining functions
Response: "When combining functions, check where BOTH are defined and continuous. The combination is continuous there."

CONNECTION TO FUTURE LEARNING:
Understanding where functions are continuous is essential for applying theorems like IVT, Mean Value Theorem, and determining differentiability.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Continuous Functions' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- Additional topics would continue in this pattern...
-- Due to length constraints, I'll add a representative sample of remaining topics
-- The full file would contain all 62 Calculus topics
-- ============================================================================

-- Power Rule (from Derivative Rules unit)
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Power Rule' AND grade_level_min = 13),
  'Power Rule Topic Guide',
  'Comprehensive teaching approach for applying the power rule to differentiate polynomial terms',
  'POWER RULE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Limit definition of derivative
- Understanding of exponents
- Polynomial structure
- Basic derivative concept

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State the power rule: d/dx(x^n) = nx^(n-1)
2. Apply power rule to any real exponent
3. Differentiate polynomial terms efficiently
4. Extend to negative and fractional exponents
5. Combine with constant multiple rule

KEY CONCEPTS:
- d/dx(x^n) = nx^(n-1) for all real n
- Bring down the exponent, reduce by one
- Works for positive, negative, and fractional exponents
- d/dx(constant) = 0

COMMON MISCONCEPTIONS:
- Applying power rule to exponential functions (2^x ≠ x·2^(x-1))
- Forgetting to reduce exponent by 1
- Not handling negative/fractional exponents
- Confusing with product rule scenarios

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"What if you could find any polynomial derivative in seconds? The power rule makes it automatic. Let''s discover the pattern."

2. DIRECT INSTRUCTION (15 minutes):
Derive from limit definition for x² and x³. Observe pattern. State general rule. Extend to negative exponents (1/x = x^(-1)). Extend to fractional (√x = x^(1/2)). Practice multiple terms.

3. GUIDED PRACTICE (15 minutes):
Students differentiate polynomials and rewritten functions. Convert roots and quotients to power form, then differentiate. Verify with limit definition for simple cases.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems with various exponent types. Find tangent line equations. Real-world rate of change problems.

DIFFERENTIATION:

For Struggling Learners:
- Start with positive integer exponents
- Create power rule template
- Practice exponent arithmetic separately
- One term at a time
- Verify graphically

For Advanced Learners:
- Prove power rule for rational exponents
- Explore generalized power rule (x^g(x))
- Connect to binomial theorem
- Implicit power rule applications
- Logarithmic differentiation preview

ASSESSMENT INDICATORS:
- Application: Correctly applies power rule
- Exponent handling: Works with all exponent types
- Rewriting: Converts expressions to power form
- Efficiency: Differentiates polynomials quickly
- Extension: Applies to real-world problems

REAL-WORLD CONNECTIONS:
- Velocity and acceleration
- Marginal cost/revenue
- Growth rates
- Optimization setup

VOCABULARY:
power rule, exponent, coefficient, polynomial, derivative

QUESTIONING TECHNIQUES:
- "What is the derivative of x^5?"
- "How do you differentiate 1/x²?"
- "Can you apply power rule to √x?"
- "Why doesn''t power rule work on 2^x?"

MATERIALS:
- Power rule practice worksheets
- Exponent conversion exercises
- Polynomial derivative problems
- Graphing verification tools

COMMON ERRORS AND RESPONSES:
Error: d/dx(x⁴) = 4x⁴
Response: "Reduce the exponent by 1! d/dx(x⁴) = 4x³. Bring down 4, then 4-1 = 3."

Error: Trying power rule on 3^x
Response: "Power rule is for x^n where x is the variable. In 3^x, x is the exponent - that needs exponential differentiation."

CONNECTION TO FUTURE LEARNING:
The power rule is foundational for all differentiation. Combined with other rules, it handles most functions encountered in calculus.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Power Rule' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Chain Rule (from Derivative Rules unit)
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Chain Rule' AND grade_level_min = 13),
  'Chain Rule Topic Guide',
  'Comprehensive teaching approach for mastering the chain rule for composite functions',
  'CHAIN RULE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Function composition understanding
- Basic derivative rules (power, trig)
- Recognition of composite functions
- Algebraic fluency

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize composite functions requiring chain rule
2. Apply chain rule: d/dx[f(g(x))] = f''(g(x)) · g''(x)
3. Use chain rule with power, trig, exponential, and log functions
4. Apply chain rule multiple times (nested compositions)
5. Combine chain rule with product/quotient rules

KEY CONCEPTS:
- Chain rule: derivative of outside times derivative of inside
- "Onion peeling" - differentiate from outside in
- The inside function gets preserved in f''(g(x))
- Used whenever there''s a function of a function

COMMON MISCONCEPTIONS:
- Forgetting the derivative of the inside function
- Not recognizing composite structures
- Stopping after differentiating the outside
- Confusion about when chain rule is needed

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"What''s the derivative of (2x+1)¹⁰? Expanding is awful! Chain rule handles this beautifully."

2. DIRECT INSTRUCTION (15 minutes):
Motivate with limit definition. State chain rule. Use Leibniz notation: dy/dx = dy/du · du/dx. Practice identifying outer and inner functions. Examples with various function types.

3. GUIDED PRACTICE (15 minutes):
Students identify compositions and apply chain rule. Multiple inner functions. Nested compositions. Combine with product/quotient when needed.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems requiring chain rule recognition. Related rates setup. Real-world rate of change.

DIFFERENTIATION:

For Struggling Learners:
- Use "u-substitution" approach explicitly
- Practice identifying inner function
- Create chain rule template
- Start with simple polynomials inside
- Build complexity gradually

For Advanced Learners:
- Triple compositions
- Implicit differentiation connection
- Prove chain rule from definition
- Apply to parametric differentiation
- Combine all rules in single problems

ASSESSMENT INDICATORS:
- Recognition: Identifies when chain rule is needed
- Application: Correctly applies the rule
- Multiple layers: Handles nested compositions
- Combination: Combines with other rules
- Notation: Uses proper notation

REAL-WORLD CONNECTIONS:
- Related rates problems
- Implicit relationships
- Changing units
- Compound processes

VOCABULARY:
chain rule, composite function, outer function, inner function, nested composition

QUESTIONING TECHNIQUES:
- "What is the outer function? The inner function?"
- "What do you differentiate first?"
- "What gets multiplied at the end?"
- "Is chain rule needed here?"

MATERIALS:
- Chain rule worksheets
- Composition identification practice
- Multi-step differentiation problems
- Error analysis activities

COMMON ERRORS AND RESPONSES:
Error: d/dx[(2x+1)⁵] = 5(2x+1)⁴
Response: "You forgot to multiply by the derivative of the inside! d/dx[(2x+1)⁵] = 5(2x+1)⁴ · 2 = 10(2x+1)⁴."

Error: Not recognizing chain rule is needed
Response: "Is there a function inside another function? sin(x²) has x² inside sin. That needs chain rule."

CONNECTION TO FUTURE LEARNING:
Chain rule is essential for implicit differentiation, related rates, and integration by substitution (reverse chain rule).',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Chain Rule' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Optimization Problems (from Applications of Derivatives unit)
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Optimization Problems' AND grade_level_min = 13),
  'Optimization Problems Topic Guide',
  'Comprehensive teaching approach for solving real-world optimization problems',
  'OPTIMIZATION PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Finding critical points
- First and second derivative tests
- Setting up equations from word problems
- Domain considerations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Translate word problems into mathematical functions
2. Identify constraint and optimization equations
3. Express problems in one variable
4. Find optimal solutions using calculus
5. Verify solutions are maximum/minimum as required

KEY CONCEPTS:
- Optimization: find max or min of a quantity
- Often involves constraints (fixed perimeter, fixed cost, etc.)
- Express quantity to optimize in one variable
- Critical points in valid domain give candidates

COMMON MISCONCEPTIONS:
- Optimizing wrong quantity
- Not using the constraint to eliminate a variable
- Forgetting to check endpoints
- Not verifying max vs min
- Setting up equations incorrectly

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"A farmer has 200 feet of fencing and wants to enclose maximum area. What dimensions? Calculus can answer real-world ''best'' questions!"

2. DIRECT INSTRUCTION (20 minutes):
Systematic approach: 1) Draw picture and label, 2) Write what to optimize, 3) Write constraint, 4) Substitute to get one variable, 5) Find derivative, set = 0, 6) Verify max/min, 7) Answer the question.

3. GUIDED PRACTICE (20 minutes):
Classic problems: box with maximum volume, minimum distance, maximum area. Students work through complete process with guidance.

4. INDEPENDENT APPLICATION (15 minutes):
New optimization scenarios. Problems requiring different approaches. Real-world applications.

DIFFERENTIATION:

For Struggling Learners:
- Provide problem-solving template
- Practice setup separately from solving
- Start with familiar geometric problems
- Draw pictures for every problem
- Check answers make sense physically

For Advanced Learners:
- Multi-constraint problems (Lagrange preview)
- Economic optimization
- Calculus of variations introduction
- Create their own optimization problems
- Analyze sensitivity of solutions

ASSESSMENT INDICATORS:
- Setup: Correctly creates function to optimize
- Constraint use: Properly eliminates variables
- Solution: Finds critical points correctly
- Verification: Confirms max/min
- Interpretation: Answers in context

REAL-WORLD CONNECTIONS:
- Business profit maximization
- Engineering design optimization
- Cost minimization
- Resource allocation
- Route optimization

VOCABULARY:
optimize, maximize, minimize, constraint, critical point, feasible domain

QUESTIONING TECHNIQUES:
- "What quantity do you want to maximize/minimize?"
- "What is your constraint?"
- "How can you write this with one variable?"
- "Is this a maximum or minimum? How do you know?"

MATERIALS:
- Problem-solving templates
- Classic optimization problems
- Real-world scenarios
- Graphing verification tools

COMMON ERRORS AND RESPONSES:
Error: Finding extremum without checking if it''s max or min
Response: "Use second derivative test or check endpoints. The problem asks for maximum - verify that''s what you found!"

Error: Not using constraint to eliminate variable
Response: "You have two variables. Use the constraint equation to write one in terms of the other, then substitute."

CONNECTION TO FUTURE LEARNING:
Optimization continues in multivariable calculus with Lagrange multipliers and extends to operations research and economics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Optimization Problems' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Fundamental Theorem Part 1 (from Introduction to Integration unit)
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fundamental Theorem Part 1' AND grade_level_min = 13),
  'Fundamental Theorem Part 1 Topic Guide',
  'Comprehensive teaching approach for applying FTC Part 1 to evaluate derivatives of integrals',
  'FUNDAMENTAL THEOREM PART 1 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Definite integral concept
- Antiderivative understanding
- Continuous functions
- Chain rule

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State FTC Part 1 precisely
2. Evaluate d/dx[∫ₐˣ f(t)dt] = f(x)
3. Apply chain rule when upper limit is a function
4. Analyze functions defined by integrals
5. Connect differentiation and integration

KEY CONCEPTS:
- FTC Part 1: d/dx[∫ₐˣ f(t)dt] = f(x) when f is continuous
- Differentiation "undoes" integration
- If upper limit is g(x): multiply by g''(x) (chain rule)
- Integration accumulates area

COMMON MISCONCEPTIONS:
- Confusing Part 1 with Part 2
- Forgetting chain rule when limit is a function
- Not understanding why the theorem works
- Sign confusion when lower limit is variable

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Integration and differentiation are inverses! The Fundamental Theorem makes this precise. If you integrate and then differentiate, you get back where you started!"

2. DIRECT INSTRUCTION (15 minutes):
State FTC Part 1. Intuitive explanation: rate of change of accumulated area is the function value. Basic examples. Then extend: what if upper limit is x²? Chain rule applies. What if lower limit is x?

3. GUIDED PRACTICE (15 minutes):
Students evaluate derivatives of integrals with various limits. Analyze functions defined by integrals (find where increasing/decreasing).

4. INDEPENDENT APPLICATION (10 minutes):
Mixed problems including graphical interpretation. Real-world accumulation functions.

DIFFERENTIATION:

For Struggling Learners:
- Start with basic upper limit x
- Practice recognizing the structure
- Create template for chain rule cases
- Visual interpretation emphasis
- Numerical verification

For Advanced Learners:
- Prove FTC Part 1
- Variable in both limits
- Second derivatives of integral functions
- Apply to prove inequalities
- Connect to mean value theorem for integrals

ASSESSMENT INDICATORS:
- Statement: Correctly states FTC Part 1
- Basic application: Handles ∫ₐˣ cases
- Chain rule: Applies when limit is function
- Interpretation: Understands meaning
- Analysis: Uses for function analysis

REAL-WORLD CONNECTIONS:
- Accumulation rate analysis
- Net change interpretation
- Velocity from position integral
- Cost from marginal cost integral

VOCABULARY:
Fundamental Theorem of Calculus, accumulation function, integrand, variable limit

QUESTIONING TECHNIQUES:
- "What does FTC Part 1 say?"
- "Why do we multiply by g''(x)?"
- "What is the rate of change of this integral?"
- "Where is the accumulation function increasing?"

MATERIALS:
- FTC Part 1 statement cards
- Variable limit practice
- Function analysis worksheets
- Graphical interpretation problems

COMMON ERRORS AND RESPONSES:
Error: d/dx[∫₀^(x²) f(t)dt] = f(x²)
Response: "When the upper limit is x², apply chain rule! Multiply by the derivative of x². Answer: f(x²) · 2x."

Error: Not recognizing the FTC structure
Response: "This is d/dx of an integral with variable upper limit. FTC Part 1 applies directly: the answer is the integrand evaluated at the upper limit (times chain rule if needed)."

CONNECTION TO FUTURE LEARNING:
FTC Part 1 connects to FTC Part 2 and is fundamental for understanding the relationship between differentiation and integration.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fundamental Theorem Part 1' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Area Under Curves (from Applications of Integration unit)
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area Under Curves' AND grade_level_min = 13),
  'Area Under Curves Topic Guide',
  'Comprehensive teaching approach for calculating area between a curve and the x-axis',
  'AREA UNDER CURVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Definite integral evaluation
- Antiderivatives of common functions
- Understanding of signed area
- Graph interpretation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Set up integrals for area under curves
2. Handle curves below the x-axis (take absolute value)
3. Calculate net vs total area
4. Determine intersection points as limits
5. Apply to real-world area problems

KEY CONCEPTS:
- ∫ₐᵇ f(x)dx gives net signed area
- Area below x-axis contributes negative value
- Total area requires splitting or using |f(x)|
- Careful attention to where curve is above/below axis

COMMON MISCONCEPTIONS:
- Thinking integral always gives positive area
- Not accounting for regions below x-axis
- Confusing net area with total area
- Wrong limits of integration

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"How much carpet do you need to cover this region? Integration calculates areas that geometry can''t handle!"

2. DIRECT INSTRUCTION (15 minutes):
Connect Riemann sums to area. Explain signed area concept. Demo: ∫₀^(2π) sin(x)dx = 0 (net area), but total area is 4. When to split integrals. How to find where curve crosses axis.

3. GUIDED PRACTICE (15 minutes):
Students calculate areas for various curves. Identify regions above and below axis. Set up appropriate integrals. Compare net vs total area.

4. INDEPENDENT APPLICATION (10 minutes):
Complex regions requiring splitting. Real-world area applications. Graphical verification.

DIFFERENTIATION:

For Struggling Learners:
- Start with curves entirely above axis
- Visual region identification
- Step-by-step setup procedure
- Verify with geometry when possible
- Practice finding zeros first

For Advanced Learners:
- Parametric curve area
- Polar area introduction
- Volume preview (area as cross-section)
- Probability distribution areas
- Apply to physics work calculations

ASSESSMENT INDICATORS:
- Setup: Correctly determines limits
- Signed area: Understands integral gives signed area
- Total area: Properly handles negative regions
- Calculation: Evaluates integrals correctly
- Interpretation: Connects to physical area

REAL-WORLD CONNECTIONS:
- Land survey calculations
- Work done by variable force
- Probability calculations
- Economic surplus calculations

VOCABULARY:
area under curve, signed area, net area, total area, region, integration limits

QUESTIONING TECHNIQUES:
- "Is the curve above or below the x-axis here?"
- "What does a negative integral tell us?"
- "How do we find total area when part is below the axis?"
- "What are the limits of integration?"

MATERIALS:
- Area visualization graphs
- Region identification practice
- Net vs total area problems
- Graphing technology

COMMON ERRORS AND RESPONSES:
Error: Writing area = ∫₋₁¹ x³dx = 0 without recognizing sign issue
Response: "The integral is zero because positive and negative areas cancel. For total area, split at x = 0 and take absolute values."

Error: Not finding where curve crosses axis
Response: "Before integrating, determine where f(x) = 0. These zeros may be necessary split points for your integral."

CONNECTION TO FUTURE LEARNING:
Area calculations extend to area between curves, volumes of revolution, and applications throughout science and engineering.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area Under Curves' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- INTRODUCTION TO DERIVATIVES UNIT TOPICS
-- ============================================================================

-- Average Rate of Change
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Average Rate of Change' AND grade_level_min = 13),
  'Average Rate of Change Topic Guide',
  'Comprehensive teaching approach for calculating average rate of change between two points',
  'AVERAGE RATE OF CHANGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Slope formula for lines
- Function evaluation
- Interval notation
- Graphical interpretation of slope

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate average rate of change using the difference quotient
2. Interpret average rate of change as slope of secant line
3. Apply to real-world scenarios (velocity, growth rates)
4. Connect to instantaneous rate of change concept
5. Use proper notation: Δy/Δx and [f(b)-f(a)]/(b-a)

KEY CONCEPTS:
- Average rate of change = [f(b) - f(a)] / (b - a)
- Represents slope of secant line through (a, f(a)) and (b, f(b))
- Measures overall change per unit over an interval
- Foundation for derivative concept

COMMON MISCONCEPTIONS:
- Confusing average rate with instantaneous rate
- Not understanding that secant line is an approximation
- Forgetting to subtract function values in correct order
- Mixing up average rate of change with average value

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"A car travels 300 miles in 5 hours. What was its average speed? 60 mph. But was it always going 60? This is average rate of change!"

2. DIRECT INSTRUCTION (15 minutes):
Review slope formula. Introduce difference quotient notation. Show secant line visualization. Connect to physics (average velocity). Multiple function examples.

3. GUIDED PRACTICE (15 minutes):
Students calculate average rates for polynomial, exponential, and real-world functions. Draw secant lines. Interpret in context.

4. INDEPENDENT APPLICATION (10 minutes):
Applied problems from physics, economics, biology. Compare rates over different intervals.

DIFFERENTIATION:

For Struggling Learners:
- Start with linear functions (constant rate)
- Use tables of values
- Color-code the formula parts
- Draw secant lines carefully
- Real-world contexts first

For Advanced Learners:
- Compare multiple intervals
- Explore as interval shrinks
- Predict instantaneous rate
- Analyze where rate is increasing/decreasing
- Apply to implicit relationships

ASSESSMENT INDICATORS:
- Calculation: Correctly applies difference quotient
- Visualization: Identifies secant line on graph
- Interpretation: Explains rate meaning in context
- Connection: Relates to slope concept
- Prediction: Anticipates derivative connection

REAL-WORLD CONNECTIONS:
- Average velocity in physics
- Population growth rates
- Economic growth rates
- Temperature change rates

VOCABULARY:
average rate of change, secant line, difference quotient, interval, Δy/Δx

QUESTIONING TECHNIQUES:
- "What is the average rate of change on [1,3]?"
- "What does this rate tell us about the function?"
- "How does the secant line show average rate?"
- "What happens as the interval gets smaller?"

MATERIALS:
- Secant line graphs
- Difference quotient worksheets
- Real-world data sets
- Graphing calculator

COMMON ERRORS AND RESPONSES:
Error: Computing [f(a) - f(b)]/(b - a) with wrong order
Response: "Keep consistency: f(b) - f(a) in numerator, b - a in denominator. Both end minus start."

Error: Thinking average rate is the function''s average value
Response: "Average rate measures change per unit. Average value is something different - an average of all outputs."

CONNECTION TO FUTURE LEARNING:
Average rate of change becomes instantaneous rate as the interval shrinks to zero, leading directly to the derivative definition.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Average Rate of Change' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Instantaneous Rate of Change
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Instantaneous Rate of Change' AND grade_level_min = 13),
  'Instantaneous Rate of Change Topic Guide',
  'Comprehensive teaching approach for understanding derivative as instantaneous rate of change',
  'INSTANTANEOUS RATE OF CHANGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Average rate of change
- Limit concept
- Secant line interpretation
- Function behavior analysis

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define instantaneous rate as limit of average rates
2. Understand derivative as instantaneous rate of change
3. Interpret rate at a single point
4. Connect graphically to tangent line slope
5. Apply to velocity and other real-world rates

KEY CONCEPTS:
- Instantaneous rate = lim(h→0) [f(a+h) - f(a)] / h
- Secant lines approach tangent line
- Rate at a single moment, not over interval
- Derivative f''(a) gives instantaneous rate at x = a

COMMON MISCONCEPTIONS:
- Thinking rate requires two points
- Confusing instantaneous with average rate
- Not seeing limit as essential to the definition
- Believing tangent line touches at only one point

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"A speedometer shows your speed right now - not your average. How can we measure speed at an instant when speed requires time to pass?"

2. DIRECT INSTRUCTION (15 minutes):
Shrinking interval animation. Show secant lines approaching tangent. Introduce limit notation. Connect to derivative notation f''(a). Velocity as position derivative.

3. GUIDED PRACTICE (15 minutes):
Students use limit process to find instantaneous rates. Sketch tangent lines from limiting secants. Calculate velocities from position functions.

4. INDEPENDENT APPLICATION (10 minutes):
Applied rate problems. Estimating instantaneous rates from data.

DIFFERENTIATION:

For Struggling Learners:
- Heavy use of animation/visualization
- Tables with shrinking h values
- Focus on graphical understanding first
- Relate to speedometer analogy
- Step-by-step limit calculation

For Advanced Learners:
- Derive rates from first principles
- Analyze when instantaneous rate exists
- Explore rates in higher dimensions
- Connect to differentiability concept
- Non-motion rate applications

ASSESSMENT INDICATORS:
- Definition: States limit definition correctly
- Visualization: Explains secant→tangent process
- Calculation: Evaluates limits to find rates
- Interpretation: Explains rate at a point
- Application: Solves real-world rate problems

REAL-WORLD CONNECTIONS:
- Instantaneous velocity
- Marginal cost/revenue
- Rate of reaction in chemistry
- Instantaneous growth rate

VOCABULARY:
instantaneous rate of change, derivative, tangent line, limit, f''(a)

QUESTIONING TECHNIQUES:
- "What happens to secant lines as h→0?"
- "What is the instantaneous rate at x = 2?"
- "How does tangent slope represent instantaneous rate?"
- "Why is a limit necessary here?"

MATERIALS:
- Dynamic geometry software
- Shrinking interval demonstrations
- Tangent line sketching activities
- Velocity-position graphs

COMMON ERRORS AND RESPONSES:
Error: Trying to find rate at a point using two points
Response: "Instantaneous rate is the limit as those two points merge. The limit process is essential."

Error: Confusing f''(a) with f(a)
Response: "f(a) is the output value. f''(a) is the rate at which output changes - the slope of the tangent at x = a."

CONNECTION TO FUTURE LEARNING:
Instantaneous rate of change is the derivative, which leads to all differentiation rules and calculus applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Instantaneous Rate of Change' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Tangent Lines
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Tangent Lines' AND grade_level_min = 13),
  'Tangent Lines Topic Guide',
  'Comprehensive teaching approach for finding equations of tangent lines to curves',
  'TANGENT LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Point-slope form of a line
- Derivative as slope of tangent
- Function evaluation
- Limit definition of derivative

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find the slope of a tangent line using the derivative
2. Write equations of tangent lines in point-slope form
3. Find points where tangent has a specific slope
4. Analyze horizontal and vertical tangent lines
5. Use tangent lines for linear approximation

KEY CONCEPTS:
- Tangent slope at x = a is f''(a)
- Tangent line equation: y - f(a) = f''(a)(x - a)
- Tangent line is best linear approximation near point
- Horizontal tangent when f''(a) = 0

COMMON MISCONCEPTIONS:
- Confusing tangent line with the curve itself
- Using wrong point on tangent line
- Forgetting to find both x and y coordinates
- Thinking tangent touches at only one point (not always true)

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"The tangent line just grazes the curve - it''s the curve''s best straight-line impersonator at that point. Let''s learn to find it."

2. DIRECT INSTRUCTION (15 minutes):
Review point-slope form. Show tangent line on graphs. Derive equation process: find point, find slope (derivative), write equation. Examples with polynomials.

3. GUIDED PRACTICE (15 minutes):
Students find tangent lines for various functions. Identify horizontal tangents (slope = 0). Graph both curve and tangent to verify.

4. INDEPENDENT APPLICATION (10 minutes):
Find tangent lines with specific slopes. Use tangent for approximation. Real-world applications.

DIFFERENTIATION:

For Struggling Learners:
- Template for tangent line equation
- Step-by-step checklist
- Graph verification of each answer
- Focus on polynomial functions first
- Color-code point and slope

For Advanced Learners:
- Tangent from external point
- Two tangent lines through same point
- Tangent to implicit curves
- Tangent at inflection points
- Tangent to parametric curves

ASSESSMENT INDICATORS:
- Process: Correctly finds point and slope
- Equation: Writes tangent equation accurately
- Analysis: Finds horizontal tangent points
- Verification: Confirms answer graphically
- Application: Uses tangent for approximation

REAL-WORLD CONNECTIONS:
- Linear approximation in engineering
- Instantaneous rate visualization
- Curve fitting in data analysis
- Physics: velocity vector direction

VOCABULARY:
tangent line, point of tangency, slope, point-slope form, horizontal tangent

QUESTIONING TECHNIQUES:
- "What is the slope of the tangent at x = 2?"
- "What are the coordinates of the point of tangency?"
- "Where does the curve have a horizontal tangent?"
- "Write the equation of the tangent line."

MATERIALS:
- Graphing calculator/software
- Tangent line worksheets
- Point-slope form reference
- Verification activities

COMMON ERRORS AND RESPONSES:
Error: Writing y - 2 = f''(x)(x - 3) instead of using f''(3)
Response: "The slope must be a number, not an expression. Evaluate f''(3) first to get the numerical slope."

Error: Using wrong y-coordinate (using a instead of f(a))
Response: "The point of tangency is (a, f(a)). You need the y-value on the curve, not the x-value."

CONNECTION TO FUTURE LEARNING:
Tangent lines lead to linear approximation, Newton''s method for root-finding, and understanding curve behavior locally.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Tangent Lines' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Derivative as a Limit
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Derivative as a Limit' AND grade_level_min = 13),
  'Derivative as a Limit Topic Guide',
  'Comprehensive teaching approach for defining derivative using the limit definition',
  'DERIVATIVE AS A LIMIT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Limit evaluation techniques
- Difference quotient concept
- Average rate of change
- Algebraic manipulation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State the limit definition of derivative
2. Use the definition to compute derivatives
3. Apply both forms: lim(h→0) and lim(x→a)
4. Understand why the limit is necessary
5. Connect definition to rate of change concept

KEY CONCEPTS:
- f''(a) = lim(h→0) [f(a+h) - f(a)] / h
- Alternative: f''(a) = lim(x→a) [f(x) - f(a)] / (x - a)
- Process: expand, simplify, take limit
- Definition works for any differentiable function

COMMON MISCONCEPTIONS:
- Trying to substitute h = 0 directly (0/0 results)
- Not simplifying before taking limit
- Confusing the two equivalent forms
- Thinking definition only works for polynomials

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"The derivative rules we''ll learn are shortcuts. Today we learn the actual definition - the limit that makes calculus work."

2. DIRECT INSTRUCTION (15 minutes):
Derive from average rate concept. Show limit notation. Work through f(x) = x² example step by step. Introduce both forms. Emphasize: simplify, then limit.

3. GUIDED PRACTICE (15 minutes):
Students use definition for polynomials, then √x, then 1/x. Master the expand-simplify-limit process.

4. INDEPENDENT APPLICATION (10 minutes):
Use definition for various functions. Verify answers match derivative rules learned later.

DIFFERENTIATION:

For Struggling Learners:
- Step-by-step template
- Start with f(x) = x, then x², then x³
- Show all algebra explicitly
- Focus on one form first
- Highlight where h appears and disappears

For Advanced Learners:
- Derive derivative rules from definition
- Prove product rule using limits
- Explore where definition fails
- Apply to piecewise functions
- Connect to differentiability conditions

ASSESSMENT INDICATORS:
- Definition: States both forms correctly
- Process: Follows expand-simplify-limit steps
- Algebra: Handles cancellation properly
- Result: Obtains correct derivative
- Understanding: Explains why limit is needed

REAL-WORLD CONNECTIONS:
- Theoretical foundation for all rates
- Understanding approximation theory
- Numerical derivative computation
- Scientific measurement precision

VOCABULARY:
limit definition, difference quotient, h→0, derivative, f''(a), f''(x)

QUESTIONING TECHNIQUES:
- "Why can''t we just substitute h = 0?"
- "What must cancel before taking the limit?"
- "How do you set up f(a + h) for this function?"
- "What does the limit represent geometrically?"

MATERIALS:
- Limit definition worksheets
- Algebra expansion practice
- Step-by-step examples
- Definition comparison chart

COMMON ERRORS AND RESPONSES:
Error: Writing lim(h→0) [f(h) - f(0)]/h instead of [f(a+h) - f(a)]/h
Response: "The function is evaluated at a + h and at a. Both involve the point a where we''re finding the derivative."

Error: Not canceling h before taking limit
Response: "You get 0/0 if you try to substitute directly. Simplify until h cancels from the denominator, then take the limit."

CONNECTION TO FUTURE LEARNING:
The limit definition underlies all derivative rules and is essential for understanding when derivatives exist.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Derivative as a Limit' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Differentiability
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Differentiability' AND grade_level_min = 13),
  'Differentiability Topic Guide',
  'Comprehensive teaching approach for determining where functions are differentiable',
  'DIFFERENTIABILITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Limit definition of derivative
- Continuity concept
- One-sided limits
- Graphical analysis skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define differentiability at a point
2. Identify where functions are not differentiable
3. Understand differentiability implies continuity
4. Analyze corners, cusps, and vertical tangents
5. Determine differentiability of piecewise functions

KEY CONCEPTS:
- Differentiable at a if lim definition exists
- Types of non-differentiability: corner, cusp, vertical tangent, discontinuity
- Differentiable → Continuous (but not converse)
- Must check one-sided derivatives at boundaries

COMMON MISCONCEPTIONS:
- Thinking continuous implies differentiable
- Not recognizing corners as non-differentiable
- Believing vertical tangent means no tangent
- Forgetting to check boundary points of piecewise functions

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"A smooth curve has a tangent everywhere. But what about sharp corners or vertical cliffs? These are where differentiability fails."

2. DIRECT INSTRUCTION (15 minutes):
Show |x| at x = 0: continuous but not differentiable. Illustrate corner, cusp, vertical tangent. Prove differentiable implies continuous. Analyze piecewise functions.

3. GUIDED PRACTICE (15 minutes):
Students identify non-differentiable points on graphs. Check piecewise function differentiability. Classify type of non-differentiability.

4. INDEPENDENT APPLICATION (10 minutes):
Determine differentiability for various functions. Prove or disprove differentiability at specific points.

DIFFERENTIATION:

For Struggling Learners:
- Visual identification focus
- Categorize by type with examples
- "Smooth = differentiable" intuition
- Check continuity first always
- One-sided derivatives step by step

For Advanced Learners:
- Weierstrass function (continuous, nowhere differentiable)
- Prove differentiable implies continuous
- Construct functions with specific properties
- Higher-order differentiability
- Differentiability on intervals

ASSESSMENT INDICATORS:
- Definition: Explains differentiability correctly
- Identification: Finds non-differentiable points
- Classification: Names type of failure
- Analysis: Checks piecewise functions properly
- Proof: Demonstrates differentiable implies continuous

REAL-WORLD CONNECTIONS:
- Physical motion (velocity exists or not)
- Signal processing (smooth vs discontinuous)
- Engineering design constraints
- Financial models with sudden changes

VOCABULARY:
differentiable, corner, cusp, vertical tangent, smooth, one-sided derivative

QUESTIONING TECHNIQUES:
- "Is the function differentiable at x = 0?"
- "What type of non-differentiability occurs here?"
- "Is continuity sufficient for differentiability?"
- "How do you check differentiability at a piecewise boundary?"

MATERIALS:
- Non-differentiable function gallery
- Classification flowchart
- Piecewise function analysis templates
- Proof structure for implications

COMMON ERRORS AND RESPONSES:
Error: Claiming |x| is differentiable because it''s continuous
Response: "Continuity is necessary but not sufficient. The derivative from left (-1) and from right (+1) don''t match at x = 0."

Error: Saying f(x) = x^(1/3) has no tangent at x = 0
Response: "There is a tangent - it''s vertical. The function is not differentiable because the slope is infinite, not undefined."

CONNECTION TO FUTURE LEARNING:
Differentiability conditions are essential for applying derivative rules and understanding when calculus theorems apply.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Differentiability' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Derivative Notation
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Derivative Notation' AND grade_level_min = 13),
  'Derivative Notation Topic Guide',
  'Comprehensive teaching approach for using and interpreting various derivative notations',
  'DERIVATIVE NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Derivative concept
- Function notation
- Understanding of rate of change
- Basic derivative calculations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use and interpret Leibniz notation (dy/dx)
2. Use and interpret Lagrange notation (f''(x))
3. Understand d/dx as an operator
4. Convert between notation systems
5. Choose appropriate notation for context

KEY CONCEPTS:
- dy/dx: ratio-like, emphasizes variables and chain rule
- f''(x): function notation, emphasizes evaluation
- d/dx[...]: operator notation, emphasizes action
- Df, y'': alternative notations
- Each has advantages in different contexts

COMMON MISCONCEPTIONS:
- Thinking dy/dx is literally a fraction
- Confusing dy/dx with Δy/Δx
- Not recognizing equivalent notations
- Using wrong notation for context

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Calculus has multiple languages for the same idea. Learning all of them makes you fluent across textbooks and applications."

2. DIRECT INSTRUCTION (15 minutes):
Introduce each notation with history. Show equivalences: dy/dx = f''(x) = y'' = Df. When to use each: Leibniz for chain rule, Lagrange for evaluation. Operator notation d/dx[...].

3. GUIDED PRACTICE (15 minutes):
Students translate between notations. Identify notation in textbook problems. Practice using correct notation for context.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed notation problems. Match notation to application (physics uses Leibniz, pure math uses Lagrange).

DIFFERENTIATION:

For Struggling Learners:
- Focus on two main notations first
- Notation conversion chart
- Consistent use in early work
- Gradual notation variety introduction
- Visual mapping between forms

For Advanced Learners:
- Historical development of notations
- When dy/dx behaves like fraction
- Notation in multivariable calculus
- Higher derivative notations (d²y/dx², f'''')
- Notation in differential equations

ASSESSMENT INDICATORS:
- Recognition: Identifies all notation forms
- Conversion: Translates between notations
- Application: Chooses appropriate notation
- Evaluation: Uses notation correctly in context
- Fluency: Works comfortably with any notation

REAL-WORLD CONNECTIONS:
- Physics uses dy/dx and dx/dt
- Economics uses f''(x) often
- Engineering mixes notations
- Reading scientific literature

VOCABULARY:
Leibniz notation, Lagrange notation, prime notation, operator, dy/dx, f''(x), d/dx

QUESTIONING TECHNIQUES:
- "What does dy/dx mean for y = x³?"
- "How would you write this in Lagrange notation?"
- "What is d/dx[sin(x)]?"
- "Which notation is best for the chain rule?"

MATERIALS:
- Notation comparison chart
- Translation practice worksheets
- Historical context reading
- Multi-notation problem sets

COMMON ERRORS AND RESPONSES:
Error: Treating dy/dx as division and "canceling" parts randomly
Response: "While dy/dx resembles a fraction and sometimes behaves like one, it''s actually a limit. Cancellation works in chain rule by theorem, not by arithmetic."

Error: Writing f''(x) = dy/dx and then f''(2) = dy/d(2)
Response: "f''(2) is correct - evaluate at x = 2. But dy/dx doesn''t use number substitution the same way. Write dy/dx|_{x=2} instead."

CONNECTION TO FUTURE LEARNING:
Comfort with multiple notations is essential for reading calculus texts, understanding physics, and learning multivariable calculus.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Derivative Notation' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DERIVATIVE RULES UNIT TOPICS (REMAINING)
-- ============================================================================

-- Sum and Difference Rules
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sum and Difference Rules' AND grade_level_min = 13),
  'Sum and Difference Rules Topic Guide',
  'Comprehensive teaching approach for differentiating sums and differences of functions',
  'SUM AND DIFFERENCE RULES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Power rule for derivatives
- Constant multiple rule
- Derivative definition
- Polynomial recognition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Apply the sum rule: (f + g)'' = f'' + g''
2. Apply the difference rule: (f - g)'' = f'' - g''
3. Combine with power rule for polynomials
4. Extend to sums of any differentiable functions
5. Apply constant multiple rule in combination

KEY CONCEPTS:
- Derivative of a sum is sum of derivatives
- Derivative of a difference is difference of derivatives
- Rules extend to any number of terms
- Constants can factor out: (cf)'' = cf''

COMMON MISCONCEPTIONS:
- Trying to multiply derivatives instead of add
- Not applying rule to each term separately
- Forgetting signs when distributing
- Confusing with product rule

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"What''s the derivative of x² + x³? You already know x² → 2x and x³ → 3x². Can we just add them? Yes! Let''s prove it."

2. DIRECT INSTRUCTION (15 minutes):
Prove sum rule using limit definition. Extend to differences. Show constant multiple rule. Apply to polynomials. Combine multiple rules.

3. GUIDED PRACTICE (15 minutes):
Students differentiate increasingly complex polynomials. Combine with trig and exponential functions. Check work term by term.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed function sums. Multi-step problems. Error checking activities.

DIFFERENTIATION:

For Struggling Learners:
- One term at a time approach
- Color-code each term''s derivative
- Polynomial focus initially
- Check each term separately
- Write all steps explicitly

For Advanced Learners:
- Prove rules from definition
- Apply to function series
- Combine with all derivative rules
- Work backward (antidifferentiation preview)
- Generalize to n-term sums

ASSESSMENT INDICATORS:
- Application: Uses rules correctly
- Combination: Handles multiple terms
- Signs: Manages negative terms properly
- Integration: Combines with other rules
- Verification: Checks answers

REAL-WORLD CONNECTIONS:
- Combined rate problems
- Multi-component systems
- Superposition principle in physics
- Economic models with multiple factors

VOCABULARY:
sum rule, difference rule, constant multiple rule, term-by-term differentiation

QUESTIONING TECHNIQUES:
- "What is the derivative of each term?"
- "How do we combine the individual derivatives?"
- "Does the order of terms matter?"
- "Can we differentiate 5 terms the same way?"

MATERIALS:
- Polynomial differentiation practice
- Rule summary cards
- Step-by-step worksheets
- Mixed function problems

COMMON ERRORS AND RESPONSES:
Error: Writing d/dx[f + g] = f'' · g''
Response: "That would be a product of derivatives, not sum. The sum rule says add the derivatives: f'' + g''."

Error: Forgetting the negative sign in differences
Response: "When differentiating f - g, you get f'' - g''. Keep track of signs as you work through each term."

CONNECTION TO FUTURE LEARNING:
Sum and difference rules, combined with power rule, enable differentiation of all polynomials and extend to sums of any functions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sum and Difference Rules' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Product Rule
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Product Rule' AND grade_level_min = 13),
  'Product Rule Topic Guide',
  'Comprehensive teaching approach for differentiating products of functions',
  'PRODUCT RULE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic derivative rules (power, sum)
- Limit definition of derivative
- Function multiplication
- Algebraic manipulation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State and apply the product rule: (fg)'' = f''g + fg''
2. Identify when product rule is needed vs expansion
3. Apply product rule to multiple factors
4. Combine with other derivative rules
5. Choose efficient strategy for product differentiation

KEY CONCEPTS:
- (fg)'' ≠ f''g'' (derivative of product is NOT product of derivatives)
- Product rule: (fg)'' = f''g + fg'' (first times d-second plus d-first times second)
- For three factors: (fgh)'' = f''gh + fg''h + fgh''
- Sometimes FOIL first is easier than product rule

COMMON MISCONCEPTIONS:
- Thinking (fg)'' = f''g''
- Forgetting one term in the formula
- Not recognizing when product rule is needed
- Missing the plus sign between terms

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Is (x²·x³)'' equal to 2x·3x²? Let''s check: x²·x³ = x⁵, and (x⁵)'' = 5x⁴. But 2x·3x² = 6x³. Not the same! We need the product rule."

2. DIRECT INSTRUCTION (15 minutes):
Prove product rule from limit definition. Introduce mnemonic: "first d-second plus d-first second." Multiple examples. Compare to expansion when possible.

3. GUIDED PRACTICE (15 minutes):
Students apply product rule to polynomial products, then trig-polynomial products. Decide when to expand vs use rule. Verify answers.

4. INDEPENDENT APPLICATION (10 minutes):
Complex products. Three-factor products. Combination problems.

DIFFERENTIATION:

For Struggling Learners:
- Consistent notation and layout
- "First/second" labeling
- Table format for organization
- Practice identifying f and g
- Check with expansion when possible

For Advanced Learners:
- Prove product rule
- Derive quotient rule from product rule
- n-factor products
- Logarithmic differentiation alternative
- Apply to implicit products

ASSESSMENT INDICATORS:
- Recognition: Identifies product rule situations
- Formula: States rule correctly
- Application: Computes derivatives accurately
- Simplification: Simplifies final answer
- Verification: Confirms with alternate methods

REAL-WORLD CONNECTIONS:
- Revenue = price × quantity (both vary)
- Area of changing rectangle
- Compound interest rates
- Physics momentum calculations

VOCABULARY:
product rule, first, second, derivative of product

QUESTIONING TECHNIQUES:
- "Which function is f and which is g?"
- "What is f'' and what is g''?"
- "Why isn''t the derivative just f''g''?"
- "Should we expand first or use product rule?"

MATERIALS:
- Product rule template
- Two-column derivative organizer
- Verification practice
- Mnemonic cards

COMMON ERRORS AND RESPONSES:
Error: Writing (x·sin x)'' = 1·cos x
Response: "You''ve only computed f''g''. The product rule says f''g + fg''. Don''t forget the second term: 1·sin x + x·cos x."

Error: Inconsistently applying the formula
Response: "Use a consistent format: always write first·d(second) + d(first)·second. Label your functions clearly."

CONNECTION TO FUTURE LEARNING:
Product rule is essential for chain rule applications, quotient rule derivation, and throughout applied calculus.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Product Rule' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Quotient Rule
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quotient Rule' AND grade_level_min = 13),
  'Quotient Rule Topic Guide',
  'Comprehensive teaching approach for differentiating quotients of functions',
  'QUOTIENT RULE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Product rule
- Power rule for negative exponents
- Basic derivative calculations
- Algebraic fraction manipulation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State and apply the quotient rule: (f/g)'' = (f''g - fg'')/g²
2. Recognize when quotient rule is necessary
3. Correctly handle the subtraction in numerator
4. Simplify quotient derivatives
5. Compare quotient rule to power rule alternative

KEY CONCEPTS:
- (f/g)'' = (f''g - fg'') / g²  ("lo d-hi minus hi d-lo over lo-lo")
- Order matters: f''g - fg'' (subtraction, not addition)
- Denominator squared
- Sometimes rewrite as fg⁻¹ and use product rule instead

COMMON MISCONCEPTIONS:
- Wrong order in subtraction (getting fg'' - f''g)
- Forgetting to square denominator
- Not simplifying the final answer
- Thinking (f/g)'' = f''/g''

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"The product rule has addition. For quotients, there''s subtraction - and order matters! ''Lo d-hi minus hi d-lo'' helps remember."

2. DIRECT INSTRUCTION (15 minutes):
Derive from product rule or definition. Emphasize minus sign and order. Mnemonic: "lo d-hi minus hi d-lo over lo-lo." Compare to rewriting as product.

3. GUIDED PRACTICE (15 minutes):
Students differentiate rational functions. Practice sign management. Simplify results completely. Compare methods.

4. INDEPENDENT APPLICATION (10 minutes):
Complex quotients. Decide best approach. Real-world rate applications.

DIFFERENTIATION:

For Struggling Learners:
- Consistent template layout
- Mnemonic reinforcement
- Label hi/lo clearly
- Focus on one approach
- Don''t require full simplification initially

For Advanced Learners:
- Derive quotient rule from product rule
- When product rule is preferable
- Quotient rule in higher dimensions
- Combine with chain rule
- Prove trig derivatives using quotient rule

ASSESSMENT INDICATORS:
- Formula: States rule with correct sign/order
- Setup: Identifies numerator and denominator correctly
- Calculation: Computes derivatives accurately
- Simplification: Reduces final answer
- Comparison: Knows alternative approaches

REAL-WORLD CONNECTIONS:
- Rate ratios (efficiency)
- Concentration calculations
- Economic ratios (per capita)
- Physics (density derivatives)

VOCABULARY:
quotient rule, numerator, denominator, hi, lo, rational function

QUESTIONING TECHNIQUES:
- "What is hi and what is lo?"
- "Is it hi d-lo or lo d-hi first?"
- "What do we divide by?"
- "Could we use product rule instead?"

MATERIALS:
- Quotient rule template
- Mnemonic posters
- Rational function practice
- Method comparison activities

COMMON ERRORS AND RESPONSES:
Error: Writing (f''g + fg'')/g² with addition
Response: "The quotient rule has subtraction: f''g - fg''. Unlike product rule, order and sign matter critically."

Error: Writing (f''g - fg'')/g instead of g²
Response: "The denominator must be squared: g². This comes from the derivation and is essential."

CONNECTION TO FUTURE LEARNING:
Quotient rule is needed for rational functions, some trig derivatives, and combined with chain rule for complex expressions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quotient Rule' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Trigonometric Derivatives
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Trigonometric Derivatives' AND grade_level_min = 13),
  'Trigonometric Derivatives Topic Guide',
  'Comprehensive teaching approach for differentiating trigonometric functions',
  'TRIGONOMETRIC DERIVATIVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Trigonometric function properties
- Limit sin(x)/x = 1 as x→0
- Product and quotient rules
- Radian measure understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Differentiate all six trig functions
2. Derive trig derivatives from definitions
3. Apply chain rule to trig compositions
4. Recognize patterns in trig derivatives
5. Combine trig derivatives with other rules

KEY CONCEPTS:
- d/dx[sin x] = cos x; d/dx[cos x] = -sin x
- d/dx[tan x] = sec²x; d/dx[cot x] = -csc²x
- d/dx[sec x] = sec x tan x; d/dx[csc x] = -csc x cot x
- Pattern: co-functions have negative derivatives

COMMON MISCONCEPTIONS:
- Forgetting the negative in cos derivative
- Wrong derivative for tan (sec x instead of sec²x)
- Using degrees instead of radians
- Not recognizing chain rule need

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Sine and cosine are derivatives of each other (with a twist). Once you know those, you can derive all six trig derivatives."

2. DIRECT INSTRUCTION (15 minutes):
Derive sin derivative from limit definition. Show cos derivative. Derive tan, sec from quotient rule. Identify patterns (negatives for co-functions).

3. GUIDED PRACTICE (15 minutes):
Students differentiate trig expressions. Apply with chain rule. Combine with product/quotient rules.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed trig derivative problems. Verify by graphing. Real-world periodic models.

DIFFERENTIATION:

For Struggling Learners:
- Derivative table reference
- Focus on sin, cos, tan first
- Pattern recognition activities
- Mnemonic for negatives
- Practice without chain rule initially

For Advanced Learners:
- Prove all six from definitions
- Inverse trig derivatives
- Trig identity applications
- Higher derivatives of trig functions
- Parametric trig curves

ASSESSMENT INDICATORS:
- Recall: States basic trig derivatives
- Pattern: Recognizes negative pattern
- Application: Differentiates correctly
- Combination: Uses with other rules
- Verification: Confirms graphically

REAL-WORLD CONNECTIONS:
- Wave motion and oscillation
- Circular motion derivatives
- Sound and light waves
- Electrical engineering (AC circuits)

VOCABULARY:
sine, cosine, tangent, secant, cosecant, cotangent, derivative, chain rule

QUESTIONING TECHNIQUES:
- "What is the derivative of sin x?"
- "Why does cos derivative have a negative?"
- "How do you derive the derivative of tan x?"
- "What''s the pattern for co-function derivatives?"

MATERIALS:
- Trig derivative reference card
- Derivation worksheets
- Pattern recognition exercises
- Graphical verification tools

COMMON ERRORS AND RESPONSES:
Error: Writing d/dx[cos x] = sin x (missing negative)
Response: "Cosine''s derivative is -sin x. The negative is essential - check by graphing: where cos is increasing, its slope is positive, which is -sin."

Error: Writing d/dx[tan x] = sec x
Response: "Close, but it''s sec²x. Derive it: d/dx[sin x/cos x] using quotient rule gives sec²x, not sec x."

CONNECTION TO FUTURE LEARNING:
Trig derivatives are fundamental for physics applications, integration of trig functions, and solving differential equations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Trigonometric Derivatives' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Exponential Derivatives
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Derivatives' AND grade_level_min = 13),
  'Exponential Derivatives Topic Guide',
  'Comprehensive teaching approach for differentiating exponential functions',
  'EXPONENTIAL DERIVATIVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Exponential function properties
- Natural logarithm basics
- Limit definition of e
- Chain rule

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Differentiate e^x and recognize its unique property
2. Differentiate general exponential a^x
3. Apply chain rule to e^(f(x))
4. Understand why e is special for calculus
5. Solve exponential rate problems

KEY CONCEPTS:
- d/dx[e^x] = e^x (e^x is its own derivative!)
- d/dx[a^x] = a^x · ln(a)
- d/dx[e^(f(x))] = e^(f(x)) · f''(x) (chain rule)
- e is defined so that (e^x)'' = e^x

COMMON MISCONCEPTIONS:
- Thinking d/dx[2^x] = x·2^(x-1) (power rule error)
- Forgetting ln(a) factor for general base
- Not applying chain rule for e^(something)
- Confusing e^x with xe

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"There''s one function that''s its own derivative. A function f where f''(x) = f(x). That function is e^x - and it''s why e matters in calculus."

2. DIRECT INSTRUCTION (15 minutes):
Show e^x derivative is e^x (from limit definition or definition of e). Derive general a^x rule using logarithms. Chain rule applications. Why e is special.

3. GUIDED PRACTICE (15 minutes):
Students differentiate various exponential functions. Apply chain rule to composite exponentials. Compare bases.

4. INDEPENDENT APPLICATION (10 minutes):
Exponential growth/decay rate problems. Mixed function derivatives. Real-world modeling.

DIFFERENTIATION:

For Struggling Learners:
- Focus on e^x first
- Explicit chain rule steps
- Template for a^x derivatives
- Exponential vs power function distinction
- Numerical verification

For Advanced Learners:
- Derive e^x derivative from limits
- Logarithmic differentiation for a^x
- e^x series and term-by-term differentiation
- Differential equation connection
- Complex exponentials preview

ASSESSMENT INDICATORS:
- Recognition: Distinguishes exponential from power
- Rule application: Uses correct derivative rule
- Chain rule: Applies to compositions correctly
- General base: Includes ln(a) factor
- Understanding: Explains why e^x = (e^x)''

REAL-WORLD CONNECTIONS:
- Radioactive decay rates
- Population growth models
- Compound interest rates
- Cooling and heating laws

VOCABULARY:
exponential function, natural exponential, base, e, ln, derivative, growth rate

QUESTIONING TECHNIQUES:
- "What makes e^x special among exponentials?"
- "What extra factor appears for d/dx[2^x]?"
- "Why isn''t the power rule used for exponentials?"
- "What''s d/dx[e^(3x)]?"

MATERIALS:
- Exponential derivative reference
- Chain rule practice with e^x
- Base comparison activities
- Growth rate application problems

COMMON ERRORS AND RESPONSES:
Error: Writing d/dx[3^x] = x·3^(x-1)
Response: "That''s the power rule for x^3. For 3^x, the base is constant, exponent varies. Use: d/dx[a^x] = a^x·ln(a), so 3^x·ln(3)."

Error: Writing d/dx[e^(2x)] = e^(2x)
Response: "Don''t forget chain rule! The inner function is 2x with derivative 2. Answer: 2e^(2x)."

CONNECTION TO FUTURE LEARNING:
Exponential derivatives are essential for solving differential equations, modeling growth/decay, and understanding natural phenomena.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Derivatives' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Logarithmic Derivatives
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Logarithmic Derivatives' AND grade_level_min = 13),
  'Logarithmic Derivatives Topic Guide',
  'Comprehensive teaching approach for differentiating logarithmic functions',
  'LOGARITHMIC DERIVATIVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Logarithm properties
- Relationship between ln and e
- Chain rule
- Implicit differentiation basics

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Differentiate ln(x) and understand its domain
2. Differentiate general log_a(x)
3. Apply chain rule to ln(f(x))
4. Use logarithmic differentiation technique
5. Recognize 1/x as important derivative

KEY CONCEPTS:
- d/dx[ln(x)] = 1/x (for x > 0)
- d/dx[log_a(x)] = 1/(x·ln(a))
- d/dx[ln(f(x))] = f''(x)/f(x)
- Logarithmic differentiation: take ln, differentiate, solve for y''

COMMON MISCONCEPTIONS:
- Thinking d/dx[ln(x)] = 1/ln(x)
- Forgetting the 1/ln(a) for general base
- Not using chain rule for ln(something)
- Incorrect domain considerations

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"We know e^x is its own derivative. What''s the derivative of its inverse, ln(x)? It''s surprisingly simple: 1/x."

2. DIRECT INSTRUCTION (15 minutes):
Derive ln(x) derivative from inverse function theorem or implicitly. Show general log_a(x) rule. Emphasize chain rule: d/dx[ln(f(x))] = f''/f. Introduce logarithmic differentiation.

3. GUIDED PRACTICE (15 minutes):
Students differentiate log expressions. Apply chain rule extensively. Practice logarithmic differentiation on products.

4. INDEPENDENT APPLICATION (10 minutes):
Complex logarithmic expressions. Logarithmic differentiation problems. Real-world applications.

DIFFERENTIATION:

For Struggling Learners:
- Focus on ln(x) first
- Template for chain rule application
- Domain reminders
- Step-by-step log differentiation
- Numerical verification

For Advanced Learners:
- Prove d/dx[ln(x)] = 1/x
- Logarithmic differentiation for complex products
- Implicit logarithmic problems
- Integration connection (∫1/x = ln|x|)
- Calculus with absolute values

ASSESSMENT INDICATORS:
- Basic rule: Differentiates ln(x) correctly
- General base: Applies log_a rule
- Chain rule: Handles ln(f(x)) properly
- Technique: Uses logarithmic differentiation
- Domain: Considers when ln is defined

REAL-WORLD CONNECTIONS:
- Decibel scale rates
- pH level changes
- Information entropy
- Logarithmic regression slopes

VOCABULARY:
natural logarithm, logarithm, base, logarithmic differentiation, domain

QUESTIONING TECHNIQUES:
- "What is d/dx[ln(x)]?"
- "How does chain rule apply to ln(2x+1)?"
- "When is logarithmic differentiation useful?"
- "What''s the domain of ln(x)?"

MATERIALS:
- Logarithm derivative reference
- Chain rule practice sheets
- Logarithmic differentiation guide
- Domain analysis exercises

COMMON ERRORS AND RESPONSES:
Error: Writing d/dx[ln(x)] = 1/ln(x)
Response: "The derivative of ln(x) is 1/x, not 1/ln(x). These are completely different functions."

Error: Writing d/dx[ln(3x)] = 1/(3x) without chain rule
Response: "Apply chain rule: d/dx[ln(u)] = (1/u)·u''. For u = 3x, that''s (1/3x)·3 = 1/x."

CONNECTION TO FUTURE LEARNING:
Logarithmic derivatives lead to logarithmic differentiation technique and are essential for integration where ∫f''/f = ln|f|.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Logarithmic Derivatives' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Implicit Differentiation
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Implicit Differentiation' AND grade_level_min = 13),
  'Implicit Differentiation Topic Guide',
  'Comprehensive teaching approach for differentiating implicitly defined functions',
  'IMPLICIT DIFFERENTIATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Chain rule mastery
- All basic derivative rules
- Algebraic equation solving
- Understanding of implicit vs explicit functions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize when implicit differentiation is needed
2. Apply chain rule when differentiating y terms
3. Solve for dy/dx after implicit differentiation
4. Find tangent lines to implicit curves
5. Apply to circles, ellipses, and other implicit curves

KEY CONCEPTS:
- Differentiate both sides with respect to x
- When differentiating y terms, multiply by dy/dx (chain rule)
- Collect dy/dx terms and solve algebraically
- Result may contain both x and y

COMMON MISCONCEPTIONS:
- Forgetting dy/dx when differentiating y terms
- Not applying product rule for xy terms
- Difficulty solving for dy/dx algebraically
- Expecting dy/dx in terms of x only

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"x² + y² = 25 is a circle. What''s its slope at (3, 4)? We can''t solve for y first (we''d get ±√...). Implicit differentiation saves us."

2. DIRECT INSTRUCTION (15 minutes):
Demonstrate with circle. Show chain rule on y terms. Collect and solve for dy/dx. Apply product rule for xy terms. Find tangent line.

3. GUIDED PRACTICE (15 minutes):
Students work through conic sections. Practice algebraic solving. Find slopes at specific points. Write tangent line equations.

4. INDEPENDENT APPLICATION (10 minutes):
Complex implicit curves. Higher-order implicit derivatives. Real-world implicit relationships.

DIFFERENTIATION:

For Struggling Learners:
- Step-by-step checklist
- Highlight every y term
- Organize dy/dx collection
- Practice algebra solving separately
- Start with simple circles

For Advanced Learners:
- Second derivatives implicitly
- Inverse function derivatives via implicit
- Implicit 3D surfaces
- Parametric curve tangents
- Related rates connection

ASSESSMENT INDICATORS:
- Recognition: Identifies implicit differentiation need
- Chain rule: Attaches dy/dx to y derivatives
- Product rule: Handles xy terms correctly
- Algebra: Solves for dy/dx successfully
- Application: Finds tangent lines at points

REAL-WORLD CONNECTIONS:
- Conic section tangents
- Economic indifference curves
- Level curves in thermodynamics
- Engineering constraint curves

VOCABULARY:
implicit differentiation, implicit function, explicit function, dy/dx, chain rule

QUESTIONING TECHNIQUES:
- "Why do we need dy/dx when differentiating y²?"
- "How do we handle the xy term?"
- "What do we do after differentiating both sides?"
- "What does it mean that dy/dx contains y?"

MATERIALS:
- Implicit curve graphs
- Step-by-step templates
- Conic section practice
- Tangent line verification tools

COMMON ERRORS AND RESPONSES:
Error: Writing d/dx[y²] = 2y instead of 2y(dy/dx)
Response: "y is a function of x, so use chain rule: d/dx[y²] = 2y · dy/dx. The dy/dx is essential."

Error: Struggling to isolate dy/dx
Response: "Treat dy/dx as a variable. Move all terms with it to one side, factor it out, then divide."

CONNECTION TO FUTURE LEARNING:
Implicit differentiation is essential for related rates, finding tangents to complex curves, and understanding inverse function derivatives.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Implicit Differentiation' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Higher Order Derivatives
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Higher Order Derivatives' AND grade_level_min = 13),
  'Higher Order Derivatives Topic Guide',
  'Comprehensive teaching approach for finding second and higher derivatives',
  'HIGHER ORDER DERIVATIVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- All derivative rules
- First derivative competency
- Notation fluency
- Polynomial differentiation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find second, third, and higher derivatives
2. Use correct notation: f''''(x), d²y/dx², y''''
3. Recognize patterns in repeated differentiation
4. Apply to position-velocity-acceleration problems
5. Connect to concavity and inflection points

KEY CONCEPTS:
- Second derivative is derivative of first derivative
- f''''(x), d²y/dx², y'''' are equivalent notations
- nth derivative: f^(n)(x), d^ny/dx^n
- Position→velocity→acceleration pattern

COMMON MISCONCEPTIONS:
- Thinking d²y/dx² means (dy/dx)²
- Confusion with notation d²y/dx² vs d(y²)/dx
- Not recognizing derivative patterns
- Stopping too early in the process

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Position tells where. Velocity (first derivative) tells how fast. Acceleration (second derivative) tells how velocity changes. We can keep going!"

2. DIRECT INSTRUCTION (15 minutes):
Define higher derivatives as repeated differentiation. Show notation variants. Work through polynomial examples. Find patterns. Physics application.

3. GUIDED PRACTICE (15 minutes):
Students find second and third derivatives. Identify patterns in trig and exponential functions. Physics motion problems.

4. INDEPENDENT APPLICATION (10 minutes):
Pattern recognition problems. nth derivative formulas. Applied acceleration problems.

DIFFERENTIATION:

For Struggling Learners:
- One derivative at a time
- Clear notation on each step
- Focus on second derivatives first
- Polynomial practice primarily
- Position-velocity-acceleration context

For Advanced Learners:
- Find general nth derivative formulas
- Taylor series connection
- Prove patterns by induction
- Higher derivatives implicitly
- Leibniz rule for products

ASSESSMENT INDICATORS:
- Process: Correctly applies repeated differentiation
- Notation: Uses all notation forms properly
- Patterns: Recognizes derivative cycles
- Application: Interprets in physics context
- Extension: Finds nth derivative formulas

REAL-WORLD CONNECTIONS:
- Acceleration and jerk in physics
- Concavity in economics
- Beam bending in engineering
- Signal processing

VOCABULARY:
second derivative, higher order, acceleration, concavity, f''''(x), d²y/dx²

QUESTIONING TECHNIQUES:
- "What is the second derivative of sin(x)?"
- "What pattern do you notice for e^x?"
- "What does the second derivative tell us physically?"
- "What is f''''(x) if f(x) = x⁴?"

MATERIALS:
- Derivative chain worksheets
- Pattern recognition tables
- Physics motion problems
- Notation conversion exercises

COMMON ERRORS AND RESPONSES:
Error: Computing (dy/dx)² instead of d²y/dx²
Response: "d²y/dx² means take the derivative twice. It''s the derivative of dy/dx, not the square of it."

Error: Missing patterns in trig derivatives
Response: "Notice: sin→cos→-sin→-cos→sin. Every four derivatives cycles back. Use this pattern for high-order trig derivatives."

CONNECTION TO FUTURE LEARNING:
Higher derivatives are essential for Taylor series, concavity analysis, physics applications, and understanding function behavior.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Higher Order Derivatives' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- APPLICATIONS OF DERIVATIVES UNIT TOPICS (REMAINING)
-- ============================================================================

-- Position Velocity Acceleration
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Position Velocity Acceleration' AND grade_level_min = 13),
  'Position Velocity Acceleration Topic Guide',
  'Comprehensive teaching approach for analyzing motion with derivatives',
  'POSITION VELOCITY ACCELERATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- First and second derivatives
- Function evaluation
- Sign analysis
- Unit understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find velocity from position function: v(t) = s''(t)
2. Find acceleration from velocity: a(t) = v''(t) = s''''(t)
3. Interpret sign of velocity (direction) and acceleration
4. Determine when object is speeding up or slowing down
5. Analyze motion at specific times

KEY CONCEPTS:
- Velocity = derivative of position
- Acceleration = derivative of velocity
- Positive velocity: moving right/up; negative: left/down
- Speeding up: v and a have same sign
- Slowing down: v and a have opposite signs

COMMON MISCONCEPTIONS:
- Confusing speed with velocity
- Thinking negative acceleration always means slowing down
- Not understanding speeding up vs slowing down condition
- Mixing up when motion changes direction

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"A car''s position is given by s(t). Its speedometer shows |v(t)|. But there''s more: is it speeding up or slowing down? That depends on comparing v and a."

2. DIRECT INSTRUCTION (15 minutes):
Define v(t) and a(t). Interpret signs. Explain speeding up/slowing down (same vs opposite signs). Work complete motion analysis. Units matter: ft/s, ft/s².

3. GUIDED PRACTICE (15 minutes):
Students analyze motion functions. Find when stopped, changing direction, speeding up. Interpret physical meaning.

4. INDEPENDENT APPLICATION (10 minutes):
Complete motion analysis problems. Real-world motion scenarios. Graph interpretation.

DIFFERENTIATION:

For Struggling Learners:
- Number line visualization
- Sign chart for v and a
- Focus on one concept at a time
- Simple polynomial position functions
- Physical demonstrations

For Advanced Learners:
- Vector motion (2D, 3D)
- Parametric motion curves
- Given a(t), find s(t)
- Non-polynomial motion functions
- Projectile motion applications

ASSESSMENT INDICATORS:
- Derivatives: Correctly finds v(t) and a(t)
- Signs: Interprets direction correctly
- Speed analysis: Determines speeding up/slowing down
- Direction: Identifies when direction changes
- Complete analysis: Provides full motion description

REAL-WORLD CONNECTIONS:
- Car motion analysis
- Projectile motion
- Elevator motion
- Sports physics

VOCABULARY:
position, velocity, acceleration, speed, direction, speeding up, slowing down

QUESTIONING TECHNIQUES:
- "When is the particle moving left?"
- "When is it speeding up?"
- "At what time does it change direction?"
- "What is the maximum velocity?"

MATERIALS:
- Motion analysis templates
- Sign charts
- Position/velocity/acceleration graphs
- Real-world motion data

COMMON ERRORS AND RESPONSES:
Error: Saying a(t) < 0 means slowing down
Response: "Negative acceleration means accelerating left (or down). Slowing down depends on comparing v and a signs."

Error: Confusing when velocity equals zero with when direction changes
Response: "v(t) = 0 is when it stops momentarily. Direction changes if v changes sign there."

CONNECTION TO FUTURE LEARNING:
Motion analysis extends to vector calculus, differential equations for motion, and physics applications throughout science.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Position Velocity Acceleration' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Related Rates
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Related Rates' AND grade_level_min = 13),
  'Related Rates Topic Guide',
  'Comprehensive teaching approach for solving related rates problems',
  'RELATED RATES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Implicit differentiation
- Chain rule
- Geometric formulas
- Problem-solving skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify quantities and rates in word problems
2. Write equations relating quantities
3. Differentiate implicitly with respect to time
4. Substitute known values at specific instant
5. Solve for unknown rate

KEY CONCEPTS:
- All changing quantities are functions of time
- Differentiate equation with respect to t
- Use chain rule: d/dt[x²] = 2x(dx/dt)
- Substitute values AFTER differentiating
- Pay attention to signs (increasing vs decreasing)

COMMON MISCONCEPTIONS:
- Substituting values before differentiating
- Forgetting dx/dt on each variable term
- Using constants when quantities are changing
- Sign errors for decreasing quantities

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"A ladder slides down a wall. How fast is the top falling when the bottom is moving at 2 ft/s? These quantities are related - change in one affects the other."

2. DIRECT INSTRUCTION (15 minutes):
Step-by-step process: draw, label, identify rates, write equation, differentiate, substitute, solve. Classic ladder problem. Emphasize: substitute after differentiating.

3. GUIDED PRACTICE (15 minutes):
Students work through standard problems: cone filling, balloon inflating, shadow length. Follow systematic approach.

4. INDEPENDENT APPLICATION (10 minutes):
Complex related rates scenarios. Multiple relationships. Real-world applications.

DIFFERENTIATION:

For Struggling Learners:
- Explicit step-by-step checklist
- Diagram templates
- Focus on familiar geometric shapes
- Practice each step separately
- Simple numerical values

For Advanced Learners:
- Multi-equation problems
- 3D geometry applications
- Rate of rate (acceleration problems)
- Create own problems
- Physics applications

ASSESSMENT INDICATORS:
- Setup: Correctly identifies quantities and rates
- Equation: Writes appropriate relationship
- Differentiation: Applies chain rule correctly
- Substitution: Substitutes AFTER differentiating
- Solution: Finds correct rate with units

REAL-WORLD CONNECTIONS:
- Filling/draining tanks
- Expanding circles (ripples)
- Shadow problems
- Traffic and distance problems

VOCABULARY:
related rates, rate of change, implicit differentiation, dx/dt, instant

QUESTIONING TECHNIQUES:
- "Which quantities are changing?"
- "What equation relates them?"
- "What rate are we trying to find?"
- "When do we substitute the given values?"

MATERIALS:
- Problem-solving checklist
- Diagram templates
- Standard problem set
- Real-world scenarios

COMMON ERRORS AND RESPONSES:
Error: Substituting numerical values before differentiating
Response: "The radius is 5 at this instant, but it''s changing. Keep r as variable, differentiate, then substitute r = 5."

Error: Forgetting chain rule: d/dt[x²] = 2x instead of 2x(dx/dt)
Response: "x is changing with time, so chain rule applies: d/dt[x²] = 2x · dx/dt. Don''t forget the rate term."

CONNECTION TO FUTURE LEARNING:
Related rates problems appear throughout physics and engineering wherever quantities change together.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Related Rates' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Mean Value Theorem
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Mean Value Theorem' AND grade_level_min = 13),
  'Mean Value Theorem Topic Guide',
  'Comprehensive teaching approach for understanding and applying the Mean Value Theorem',
  'MEAN VALUE THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Continuity on closed intervals
- Differentiability on open intervals
- Average rate of change
- Rolle''s Theorem

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State the Mean Value Theorem precisely
2. Verify hypotheses before applying MVT
3. Find c values guaranteed by MVT
4. Interpret MVT geometrically
5. Apply MVT to prove other results

KEY CONCEPTS:
- If f continuous on [a,b] and differentiable on (a,b), then exists c in (a,b) where f''(c) = [f(b)-f(a)]/(b-a)
- Secant slope equals tangent slope somewhere
- Rolle''s Theorem is MVT when f(a) = f(b)
- Used to prove many calculus theorems

COMMON MISCONCEPTIONS:
- Forgetting to check hypotheses
- Thinking MVT finds maximum/minimum
- Confusing MVT with Rolle''s Theorem
- Not understanding that c is guaranteed to exist but not unique

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Drive 120 miles in 2 hours. Average speed: 60 mph. At some point, your speedometer must have shown exactly 60. That''s MVT!"

2. DIRECT INSTRUCTION (15 minutes):
State theorem formally. Geometric interpretation (secant = tangent). Show relationship to Rolle''s. Verify hypotheses explicitly. Find c algebraically.

3. GUIDED PRACTICE (15 minutes):
Students check hypotheses and find c for various functions. Graphical verification. Apply to speed and position problems.

4. INDEPENDENT APPLICATION (10 minutes):
Theoretical applications. Prove facts using MVT. Challenging problems.

DIFFERENTIATION:

For Struggling Learners:
- Driving analogy heavily used
- Graphical focus
- Polynomial functions primarily
- Hypothesis checklist
- Geometric understanding first

For Advanced Learners:
- Prove MVT from Rolle''s
- Use MVT to prove other theorems
- Extended MVT (Cauchy MVT)
- Apply to error bounds
- Uniqueness questions

ASSESSMENT INDICATORS:
- Statement: States MVT correctly
- Hypotheses: Verifies conditions
- Calculation: Finds c correctly
- Interpretation: Explains meaning geometrically
- Application: Uses MVT in proofs

REAL-WORLD CONNECTIONS:
- Speed traps (average speed enforcement)
- Average vs instantaneous rates
- Growth rate analysis
- Engineering tolerance calculations

VOCABULARY:
Mean Value Theorem, hypotheses, continuous, differentiable, secant, tangent, Rolle''s Theorem

QUESTIONING TECHNIQUES:
- "Are the hypotheses satisfied?"
- "What does the theorem guarantee?"
- "What value of c works?"
- "What does this mean geometrically?"

MATERIALS:
- MVT hypothesis checklist
- Graphical demonstrations
- Driving analogy problems
- Theorem application exercises

COMMON ERRORS AND RESPONSES:
Error: Applying MVT without checking continuity at endpoints
Response: "MVT requires continuity on the closed interval [a,b]. Check the endpoints are included in the domain."

Error: Thinking there''s only one c value
Response: "MVT guarantees at least one c. There may be multiple values where tangent slope equals secant slope."

CONNECTION TO FUTURE LEARNING:
MVT is foundational for proving the relationship between derivatives and monotonicity, and for error bounds in approximations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mean Value Theorem' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- First Derivative Test
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'First Derivative Test' AND grade_level_min = 13),
  'First Derivative Test Topic Guide',
  'Comprehensive teaching approach for using first derivative to find extrema',
  'FIRST DERIVATIVE TEST - TOPIC TEACHING GUIDE

PREREQUISITES:
- Finding critical points
- Sign analysis of derivatives
- Increasing/decreasing intervals
- Function behavior analysis

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find critical points where f''(x) = 0 or undefined
2. Create sign chart for f''(x)
3. Apply first derivative test to classify extrema
4. Identify relative maxima and minima
5. Distinguish critical points from extrema

KEY CONCEPTS:
- Critical point: f''(c) = 0 or f''(c) undefined (and c in domain)
- f'' changes + to - at c → relative max
- f'' changes - to + at c → relative min
- f'' same sign on both sides → no extremum
- Not all critical points are extrema

COMMON MISCONCEPTIONS:
- Thinking f''(c) = 0 always gives extremum
- Confusing relative with absolute extrema
- Sign chart errors at boundaries
- Forgetting to check where f'' is undefined

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"A hilltop is where climbing stops and descending starts. Mathematically: where f'' changes from positive to negative. Let''s learn to find these peaks and valleys."

2. DIRECT INSTRUCTION (15 minutes):
Define critical points. Show sign chart construction. Apply first derivative test. Work through complete examples. Emphasize: test points in each interval.

3. GUIDED PRACTICE (15 minutes):
Students find critical points, make sign charts, classify extrema. Verify graphically. Practice with various function types.

4. INDEPENDENT APPLICATION (10 minutes):
Complete curve analysis. Applied optimization. Functions with undefined derivatives.

DIFFERENTIATION:

For Struggling Learners:
- Template for sign charts
- Focus on polynomials first
- Step-by-step critical point finding
- Graph every function
- Clear vocabulary distinctions

For Advanced Learners:
- Prove first derivative test
- Functions with infinitely many critical points
- Combine with second derivative test
- Piecewise functions
- Implicit function extrema

ASSESSMENT INDICATORS:
- Critical points: Finds all critical points
- Sign chart: Constructs correctly
- Classification: Uses test properly
- Distinction: Separates relative from absolute
- Completeness: Handles all cases

REAL-WORLD CONNECTIONS:
- Finding optimal values
- Maximum/minimum points in data
- Peak and trough identification
- Engineering design optimization

VOCABULARY:
critical point, first derivative test, relative maximum, relative minimum, sign chart

QUESTIONING TECHNIQUES:
- "Where are the critical points?"
- "What is the sign of f''(x) in each interval?"
- "Is this critical point a max, min, or neither?"
- "How do we test the sign in each region?"

MATERIALS:
- Sign chart templates
- Critical point practice
- Graphical verification tools
- Complete analysis examples

COMMON ERRORS AND RESPONSES:
Error: Calling every critical point a max or min
Response: "The derivative must change sign for an extremum. If f'' has the same sign on both sides, it''s neither max nor min."

Error: Using test points outside the domain
Response: "Check that your test points are in the function''s domain. Sign charts only matter where the function exists."

CONNECTION TO FUTURE LEARNING:
First derivative test is essential for optimization problems and combines with second derivative test for complete analysis.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'First Derivative Test' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Second Derivative Test
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Second Derivative Test' AND grade_level_min = 13),
  'Second Derivative Test Topic Guide',
  'Comprehensive teaching approach for using second derivative to analyze concavity and extrema',
  'SECOND DERIVATIVE TEST - TOPIC TEACHING GUIDE

PREREQUISITES:
- Finding first and second derivatives
- Critical points identification
- Concavity understanding
- First derivative test

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Determine concavity using second derivative
2. Find inflection points where concavity changes
3. Apply second derivative test for extrema
4. Understand when second derivative test fails
5. Connect concavity to curve sketching

KEY CONCEPTS:
- f''''(x) > 0: concave up (holds water)
- f''''(x) < 0: concave down (spills water)
- At critical point c: f''''(c) > 0 → rel min; f''''(c) < 0 → rel max
- f''''(c) = 0: test inconclusive, use first derivative test
- Inflection point: concavity changes

COMMON MISCONCEPTIONS:
- Confusing concavity with increasing/decreasing
- Thinking f''''(x) = 0 is always inflection point
- Forgetting second derivative test can be inconclusive
- Assuming concave up means increasing

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"At a hilltop, the curve bends downward (concave down). At a valley bottom, it curves upward (concave up). The second derivative captures this bending."

2. DIRECT INSTRUCTION (15 minutes):
Define concavity. Connect to second derivative sign. Find inflection points. Apply second derivative test for extrema. Show when test fails.

3. GUIDED PRACTICE (15 minutes):
Students determine concavity intervals. Find inflection points. Classify critical points using second derivative. Know when to switch to first derivative test.

4. INDEPENDENT APPLICATION (10 minutes):
Complete concavity analysis. Curve sketching with all information. Applied problems.

DIFFERENTIATION:

For Struggling Learners:
- "Bowl up/bowl down" visualization
- Sign chart for f'''' separately
- Focus on one use at a time
- Polynomial examples primarily
- Graph verification always

For Advanced Learners:
- Prove second derivative test
- Higher derivatives and behavior
- Taylor polynomial connection
- When test fails analysis
- Functions with no inflection points

ASSESSMENT INDICATORS:
- Concavity: Determines correctly from f''''
- Inflection: Finds inflection points properly
- Test application: Uses second derivative test correctly
- Inconclusive: Recognizes when test fails
- Integration: Combines with first derivative info

REAL-WORLD CONNECTIONS:
- Acceleration (rate of velocity change)
- Economic growth rates changing
- Population growth models
- Engineering stress analysis

VOCABULARY:
concave up, concave down, inflection point, second derivative test

QUESTIONING TECHNIQUES:
- "Where is the function concave up?"
- "Is there an inflection point?"
- "What does f''''(c) = 4 tell us about the critical point?"
- "When should we use first derivative test instead?"

MATERIALS:
- Concavity visualization graphs
- Second derivative test flowchart
- Inflection point practice
- Complete analysis examples

COMMON ERRORS AND RESPONSES:
Error: Thinking f''''(x) = 0 automatically means inflection point
Response: "f''''(x) = 0 is necessary but not sufficient. Check that concavity actually changes: f'''' must change sign."

Error: Using second derivative test when f''''(c) = 0
Response: "When f''''(c) = 0, the test is inconclusive. You must use the first derivative test instead."

CONNECTION TO FUTURE LEARNING:
Concavity analysis is essential for curve sketching, optimization, and understanding Taylor polynomial approximations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Second Derivative Test' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Absolute Extrema
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Extrema' AND grade_level_min = 13),
  'Absolute Extrema Topic Guide',
  'Comprehensive teaching approach for finding absolute maximum and minimum values',
  'ABSOLUTE EXTREMA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Critical points
- Closed interval concept
- Function evaluation
- First and second derivative tests

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Distinguish absolute from relative extrema
2. Apply closed interval method
3. Find critical points within interval
4. Evaluate function at critical points and endpoints
5. Identify absolute max and min

KEY CONCEPTS:
- Absolute extrema: largest/smallest values on domain
- Extreme Value Theorem: continuous on [a,b] has absolute extrema
- Closed interval method: check critical points AND endpoints
- Absolute extrema occur at critical points or endpoints

COMMON MISCONCEPTIONS:
- Forgetting to check endpoints
- Confusing relative and absolute extrema
- Not restricting to given interval
- Assuming largest critical value is absolute max

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"The highest point on a trail could be at a peak in the middle... or at the starting/ending elevation. We must check everywhere!"

2. DIRECT INSTRUCTION (15 minutes):
State Extreme Value Theorem. Explain closed interval method. Find critical points in interval. Evaluate at critical points and endpoints. Compare all values.

3. GUIDED PRACTICE (15 minutes):
Students apply closed interval method to various functions. Interpret results. Distinguish from relative extrema.

4. INDEPENDENT APPLICATION (10 minutes):
Applied optimization problems. Absolute extrema on different domain types.

DIFFERENTIATION:

For Struggling Learners:
- Checklist for closed interval method
- Table format for comparisons
- Emphasize "don''t forget endpoints"
- Simple polynomial functions
- Visual endpoint importance

For Advanced Learners:
- Open interval extrema
- Infinite interval analysis
- Functions on non-standard domains
- Relate to optimization problems
- Multivariable extrema preview

ASSESSMENT INDICATORS:
- Method: Applies closed interval method correctly
- Critical points: Finds all in interval
- Endpoints: Remembers to check endpoints
- Comparison: Correctly identifies max and min
- Distinction: Separates absolute from relative

REAL-WORLD CONNECTIONS:
- Maximum profit in given time frame
- Highest/lowest temperatures
- Optimal values in constrained systems
- Engineering design limits

VOCABULARY:
absolute maximum, absolute minimum, closed interval method, Extreme Value Theorem

QUESTIONING TECHNIQUES:
- "What are the critical points in this interval?"
- "What are the function values at the endpoints?"
- "Which value is the absolute maximum?"
- "Why must we check endpoints?"

MATERIALS:
- Closed interval method checklist
- Value comparison tables
- Graphical verification
- Optimization context problems

COMMON ERRORS AND RESPONSES:
Error: Finding relative max and calling it absolute max without checking endpoints
Response: "Relative max is local. Absolute max is global on the interval. Check endpoints - they might have larger values."

Error: Including critical points outside the given interval
Response: "We only consider critical points within [a,b]. Points outside don''t affect extrema on this interval."

CONNECTION TO FUTURE LEARNING:
Absolute extrema methods are essential for optimization problems and extend to multivariable calculus.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Extrema' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- L'Hopital's Rule
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'L''Hopital''s Rule' AND grade_level_min = 13),
  'L''Hopital''s Rule Topic Guide',
  'Comprehensive teaching approach for evaluating limits using L''Hopital''s Rule',
  'L''HOPITAL''S RULE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Limit evaluation techniques
- Indeterminate forms recognition
- Differentiation skills
- Algebraic manipulation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize 0/0 and ∞/∞ indeterminate forms
2. Apply L''Hopital''s Rule correctly
3. Know when L''Hopital''s Rule applies (and doesn''t)
4. Convert other indeterminate forms to 0/0 or ∞/∞
5. Apply repeatedly when necessary

KEY CONCEPTS:
- For 0/0 or ∞/∞: lim[f/g] = lim[f''/g'']
- Must verify indeterminate form first
- May need multiple applications
- Other forms (0·∞, 1^∞, etc.) need conversion first

COMMON MISCONCEPTIONS:
- Applying without checking indeterminate form
- Using quotient rule instead of differentiating separately
- Applying to non-indeterminate forms
- Giving up if first application doesn''t resolve

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Some limits give 0/0 - undefined. But wait, the actual limit might exist! L''Hopital discovered that differentiating can help."

2. DIRECT INSTRUCTION (15 minutes):
State L''Hopital''s Rule precisely. Emphasize: verify 0/0 or ∞/∞ first. Differentiate numerator and denominator separately. May need to apply multiple times. Show other form conversions.

3. GUIDED PRACTICE (15 minutes):
Students evaluate limits requiring L''Hopital''s. Practice form recognition. Convert other indeterminate forms.

4. INDEPENDENT APPLICATION (10 minutes):
Complex limits requiring multiple applications. Limits with exponential and logarithmic forms.

DIFFERENTIATION:

For Struggling Learners:
- Checklist for when rule applies
- Clear separation of f'' and g'' calculation
- Practice recognizing indeterminate forms first
- Simple examples with one application
- Emphasize: not quotient rule

For Advanced Learners:
- Prove L''Hopital''s Rule
- All seven indeterminate forms
- When L''Hopital''s fails
- Compare to Taylor series approach
- Historical context

ASSESSMENT INDICATORS:
- Recognition: Identifies indeterminate forms
- Application: Uses rule correctly
- Process: Differentiates separately (not quotient rule)
- Iteration: Applies repeatedly when needed
- Conversion: Handles other forms

REAL-WORLD CONNECTIONS:
- Limiting behavior in physics
- Economic growth limits
- Chemical equilibrium analysis
- Engineering tolerances

VOCABULARY:
L''Hopital''s Rule, indeterminate form, 0/0, ∞/∞

QUESTIONING TECHNIQUES:
- "Is this 0/0 or ∞/∞?"
- "What are the separate derivatives?"
- "Do we need to apply again?"
- "How do we convert 0·∞ to 0/0?"

MATERIALS:
- Indeterminate form checklist
- L''Hopital''s Rule flowchart
- Form conversion techniques
- Practice limit sets

COMMON ERRORS AND RESPONSES:
Error: Applying L''Hopital''s when limit is not indeterminate
Response: "Check first: if direct substitution gives a number (not 0/0 or ∞/∞), just use that. L''Hopital''s only applies to indeterminate forms."

Error: Using quotient rule on f/g
Response: "L''Hopital''s says differentiate f and g separately, not as a quotient. Compute f'' and g'' individually, then take f''/g''."

CONNECTION TO FUTURE LEARNING:
L''Hopital''s Rule is a powerful tool for limit evaluation that connects to Taylor series and asymptotic analysis.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'L''Hopital''s Rule' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Linear Approximation
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear Approximation' AND grade_level_min = 13),
  'Linear Approximation Topic Guide',
  'Comprehensive teaching approach for using tangent lines to approximate function values',
  'LINEAR APPROXIMATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Tangent line equations
- Derivative calculation
- Function evaluation
- Point-slope form

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use tangent line for local approximation
2. Write linearization L(x) = f(a) + f''(a)(x-a)
3. Estimate function values near known points
4. Understand when linear approximation works well
5. Analyze error in approximation

KEY CONCEPTS:
- Tangent line is best linear approximation near point
- L(x) = f(a) + f''(a)(x-a) is linearization at x = a
- Works well when x is close to a
- Error increases as distance from a increases

COMMON MISCONCEPTIONS:
- Using approximation far from base point
- Confusing L(x) with f(x)
- Not choosing appropriate base point a
- Thinking approximation is exact

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"What''s √4.1? Calculator says 2.0248... But we can estimate quickly: √4 = 2, and the tangent line gives us 2.025. Close!"

2. DIRECT INSTRUCTION (15 minutes):
Derive linearization formula. Choose good base points (where f is easy to compute). Calculate approximations. Compare to actual values. Discuss error behavior.

3. GUIDED PRACTICE (15 minutes):
Students approximate various function values. Choose base points strategically. Calculate percent error. Apply to trig, exponential, and root functions.

4. INDEPENDENT APPLICATION (10 minutes):
Real-world approximation scenarios. Error analysis. Multiple approximation choices.

DIFFERENTIATION:

For Struggling Learners:
- Template for linearization
- Guided base point selection
- Focus on square roots first
- Calculator comparison for verification
- Emphasize "close to a" requirement

For Advanced Learners:
- Quadratic approximation (Taylor)
- Error bound formulas
- When linear approximation fails
- Newton''s method connection
- Differential notation: dy ≈ Δy

ASSESSMENT INDICATORS:
- Formula: States linearization correctly
- Base point: Chooses a appropriately
- Calculation: Computes approximation accurately
- Interpretation: Explains approximation quality
- Error: Understands error behavior

REAL-WORLD CONNECTIONS:
- Engineering quick estimates
- Scientific measurement approximations
- Financial projections
- Physics pendulum approximations

VOCABULARY:
linearization, linear approximation, tangent line, base point, local

QUESTIONING TECHNIQUES:
- "What is a good base point for approximating f(4.1)?"
- "What is the linearization at x = 4?"
- "How accurate is this approximation?"
- "Why does approximation worsen far from the base point?"

MATERIALS:
- Linearization practice
- Error analysis tables
- Graphical comparisons
- Application problems

COMMON ERRORS AND RESPONSES:
Error: Using x = 4.1 as base point for √4.1
Response: "Choose a base point where you know the exact value. Use x = 4 since √4 = 2 exactly."

Error: Thinking linearization gives exact value
Response: "Linearization approximates. It''s the tangent line value, not the curve value. Error exists but is small near the base point."

CONNECTION TO FUTURE LEARNING:
Linear approximation leads to differentials, Taylor polynomials, and numerical methods like Newton''s method.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear Approximation' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Curve Sketching
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Curve Sketching' AND grade_level_min = 13),
  'Curve Sketching Topic Guide',
  'Comprehensive teaching approach for sketching curves using calculus information',
  'CURVE SKETCHING - TOPIC TEACHING GUIDE

PREREQUISITES:
- First and second derivative analysis
- Critical points and inflection points
- Increasing/decreasing and concavity
- Asymptote analysis

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze all features: domain, intercepts, symmetry
2. Find intervals of increase/decrease from f''
3. Locate and classify extrema
4. Determine concavity and inflection points from f''''
5. Identify asymptotes and end behavior
6. Synthesize all information into accurate sketch

KEY CONCEPTS:
- Systematic approach to curve analysis
- f'' gives increasing/decreasing and extrema
- f'''' gives concavity and inflection points
- Asymptotes show boundary behavior
- All information combines for complete picture

COMMON MISCONCEPTIONS:
- Sketching without systematic analysis
- Missing asymptotes or end behavior
- Forgetting to find domain first
- Not connecting all features smoothly

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"With derivatives, we can sketch curves without plotting hundreds of points. It''s like having x-ray vision for functions."

2. DIRECT INSTRUCTION (15 minutes):
Present systematic checklist: domain, intercepts, symmetry, asymptotes, f'' analysis, f'''' analysis, key points, sketch. Work through complete example.

3. GUIDED PRACTICE (15 minutes):
Students complete full curve sketching analyses. Practice with polynomials and rational functions. Verify with graphing technology.

4. INDEPENDENT APPLICATION (10 minutes):
Complex functions with all features. Transcendental functions. Match curves to descriptions.

DIFFERENTIATION:

For Struggling Learners:
- Detailed checklist for each step
- One feature at a time
- Template for organizing information
- Polynomials focus initially
- Graphical verification at each step

For Advanced Learners:
- Implicit curve sketching
- Parametric curve analysis
- Functions with unusual features
- Create function from desired features
- Rational functions with holes

ASSESSMENT INDICATORS:
- Systematic: Follows complete analysis procedure
- Derivatives: Correctly analyzes f'' and f''''
- Features: Identifies all key features
- Synthesis: Combines information coherently
- Accuracy: Sketch matches analysis

REAL-WORLD CONNECTIONS:
- Visualizing mathematical models
- Understanding function behavior
- Scientific data interpretation
- Engineering design curves

VOCABULARY:
curve sketching, increasing, decreasing, concave up, concave down, asymptote, inflection point

QUESTIONING TECHNIQUES:
- "What is the domain?"
- "Where is the function increasing?"
- "What are the inflection points?"
- "What happens as x→∞?"

MATERIALS:
- Curve sketching checklist
- Feature analysis template
- Graphing verification tools
- Multiple function types practice

COMMON ERRORS AND RESPONSES:
Error: Sketching smooth curve through inflection point without concavity change
Response: "At an inflection point, concavity changes. The curve must transition from one type of bending to another."

Error: Forgetting to check domain restrictions
Response: "Always start with domain. If the function is undefined somewhere, that affects everything else."

CONNECTION TO FUTURE LEARNING:
Curve sketching skills are essential for understanding graphs in all sciences and for optimization problems.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Curve Sketching' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- INTRODUCTION TO INTEGRATION UNIT TOPICS (REMAINING)
-- ============================================================================

-- Riemann Sums
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Riemann Sums' AND grade_level_min = 13),
  'Riemann Sums Topic Guide',
  'Comprehensive teaching approach for approximating area using left, right, and midpoint sums',
  'RIEMANN SUMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Area concept
- Function evaluation
- Summation notation
- Rectangular area formula

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate left, right, and midpoint Riemann sums
2. Use summation notation for Riemann sums
3. Understand approximation improves with more rectangles
4. Recognize over/underestimates based on function behavior
5. Connect Riemann sums to definite integral concept

KEY CONCEPTS:
- Area ≈ Σf(xᵢ)Δx where Δx = (b-a)/n
- Left: use left endpoints; Right: use right endpoints
- Midpoint: use center of each subinterval
- More rectangles → better approximation
- Over/underestimate depends on increasing/decreasing

COMMON MISCONCEPTIONS:
- Confusing left and right endpoints
- Not understanding Δx calculation
- Thinking any Riemann sum is exact
- Not connecting to limit definition of integral

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"How do we find area under a curve when there''s no formula? Approximate with rectangles! More rectangles = better approximation."

2. DIRECT INSTRUCTION (15 minutes):
Show rectangle approximation visually. Define left, right, midpoint sums. Calculate Δx and endpoints. Summation notation. Discuss accuracy and refinement.

3. GUIDED PRACTICE (15 minutes):
Students calculate various Riemann sums. Compare left, right, midpoint. Analyze over/underestimation. Increase n and observe.

4. INDEPENDENT APPLICATION (10 minutes):
Data-based approximations. Complex function areas. Error analysis.

DIFFERENTIATION:

For Struggling Learners:
- Draw all rectangles carefully
- Small n values first (n = 2, 3, 4)
- Table for organizing endpoints and heights
- Visual focus before notation
- Calculator assistance allowed

For Advanced Learners:
- Summation formula derivations
- Compare to trapezoidal rule
- Error bound formulas
- As n→∞ formalization
- Non-uniform partitions

ASSESSMENT INDICATORS:
- Setup: Correctly determines Δx and endpoints
- Types: Distinguishes left, right, midpoint
- Calculation: Computes sum accurately
- Analysis: Predicts over/underestimate
- Connection: Relates to integral concept

REAL-WORLD CONNECTIONS:
- Distance from velocity data
- Total consumption from rate data
- Numerical integration in science
- Computer approximation methods

VOCABULARY:
Riemann sum, partition, subinterval, left/right endpoint, midpoint, Δx

QUESTIONING TECHNIQUES:
- "What is Δx for n = 5 on [0, 10]?"
- "Is this an overestimate or underestimate?"
- "How would increasing n change our answer?"
- "What are the left endpoints?"

MATERIALS:
- Riemann sum diagrams
- Calculation templates
- Graphing calculator programs
- Comparison worksheets

COMMON ERRORS AND RESPONSES:
Error: Using Δx = (b-a) instead of (b-a)/n
Response: "Δx is the width of each rectangle. Divide the total interval width by the number of rectangles: Δx = (b-a)/n."

Error: For decreasing function, thinking left sum underestimates
Response: "For decreasing functions, left endpoints are higher than the curve, so left sum overestimates. Draw it to see."

CONNECTION TO FUTURE LEARNING:
Riemann sums lead directly to the definite integral as n→∞, which is the foundation of integral calculus.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Riemann Sums' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Definite Integrals
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Definite Integrals' AND grade_level_min = 13),
  'Definite Integrals Topic Guide',
  'Comprehensive teaching approach for understanding definite integrals as limits of Riemann sums',
  'DEFINITE INTEGRALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Riemann sums
- Limit concept
- Area concept
- Summation notation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define definite integral as limit of Riemann sums
2. Interpret integral as signed area
3. Use integral notation correctly
4. Understand when integrals are positive, negative, or zero
5. Evaluate simple integrals geometrically

KEY CONCEPTS:
- ∫[a,b] f(x)dx = lim(n→∞) Σf(xᵢ)Δx
- Represents signed area (positive above, negative below x-axis)
- Notation: ∫ᵃᵇ f(x)dx with limits a and b
- Area above minus area below = net signed area

COMMON MISCONCEPTIONS:
- Thinking all integrals give positive area
- Confusing definite with indefinite integrals
- Not understanding integral as accumulation
- Ignoring bounds of integration

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"As we use more and more rectangles, the Riemann sum approaches the exact area. The definite integral is that limit - the exact area!"

2. DIRECT INSTRUCTION (15 minutes):
Define integral as limit. Introduce notation ∫ᵃᵇf(x)dx. Explain signed area concept. Evaluate using geometry (rectangles, triangles, circles). Discuss net vs total area.

3. GUIDED PRACTICE (15 minutes):
Students interpret integrals geometrically. Calculate integrals of linear and constant functions. Analyze positive and negative regions.

4. INDEPENDENT APPLICATION (10 minutes):
Geometric integral evaluation. Signed area problems. Integral interpretation from graphs.

DIFFERENTIATION:

For Struggling Learners:
- Geometric evaluation focus
- Simple shapes only initially
- Clear signed area visualization
- Notation breakdown
- Relate to Riemann sum process

For Advanced Learners:
- Formal epsilon-delta definition
- Integrable vs non-integrable functions
- Improper integral introduction
- Area with parameters
- Integral as accumulation function

ASSESSMENT INDICATORS:
- Definition: States integral as limit correctly
- Notation: Uses integral notation properly
- Interpretation: Understands signed area
- Geometry: Evaluates simple integrals geometrically
- Analysis: Determines sign of integral

REAL-WORLD CONNECTIONS:
- Total distance vs displacement
- Net change vs total change
- Accumulated quantities
- Area calculations

VOCABULARY:
definite integral, limits of integration, signed area, net area, integrand

QUESTIONING TECHNIQUES:
- "Is this integral positive or negative?"
- "How can we evaluate ∫₀² x dx geometrically?"
- "What does the integral represent as area?"
- "Why is ∫₋₁¹ x dx = 0?"

MATERIALS:
- Integral notation guides
- Geometric area practice
- Signed area visualization
- Integral from graphs activities

COMMON ERRORS AND RESPONSES:
Error: Assuming ∫f(x)dx is always positive
Response: "The integral gives signed area. If f(x) is negative, that region contributes negative area to the integral."

Error: Confusing ∫ᵃᵇ with ∫ (indefinite)
Response: "∫ᵃᵇf(x)dx (definite) gives a number - the area. ∫f(x)dx (indefinite) gives a function - the antiderivative."

CONNECTION TO FUTURE LEARNING:
Definite integrals are evaluated using the Fundamental Theorem of Calculus, connecting to antiderivatives.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Definite Integrals' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Properties of Integrals
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Properties of Integrals' AND grade_level_min = 13),
  'Properties of Integrals Topic Guide',
  'Comprehensive teaching approach for applying integral properties',
  'PROPERTIES OF INTEGRALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Definite integral concept
- Summation properties
- Area interpretation
- Basic integral notation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Apply linearity: ∫[af + bg] = a∫f + b∫g
2. Use additivity: ∫ᵃᶜ + ∫ᶜᵇ = ∫ᵃᵇ
3. Understand bound reversal: ∫ᵃᵇ = -∫ᵇᵃ
4. Apply comparison properties
5. Recognize zero-width integral

KEY CONCEPTS:
- ∫ᵃᵇ [f+g] = ∫ᵃᵇ f + ∫ᵃᵇ g
- ∫ᵃᵇ cf = c∫ᵃᵇ f
- ∫ᵃᶜ f + ∫ᶜᵇ f = ∫ᵃᵇ f (any c, not just between)
- ∫ᵃᵇ f = -∫ᵇᵃ f
- ∫ᵃᵃ f = 0

COMMON MISCONCEPTIONS:
- Thinking ∫fg = (∫f)(∫g)
- Not applying constant multiple correctly
- Confusion about splitting intervals
- Forgetting reversal introduces negative

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Just like derivative rules made differentiation easier, integral properties let us break down complex integrals into simpler pieces."

2. DIRECT INSTRUCTION (15 minutes):
Present each property with geometric justification. Show linearity from Riemann sums. Demonstrate additivity visually. Explain reversal property. Practice combining properties.

3. GUIDED PRACTICE (15 minutes):
Students apply properties to simplify integrals. Use given integral values to find related integrals. Split and combine integrals.

4. INDEPENDENT APPLICATION (10 minutes):
Complex property applications. Integral relationships. Error finding in property misuse.

DIFFERENTIATION:

For Struggling Learners:
- One property at a time
- Geometric justification for each
- Property reference card
- Explicit labeling of which property
- Simple numerical examples

For Advanced Learners:
- Prove properties from definition
- Comparison theorem applications
- Bound estimation
- When product rule doesn''t work
- Non-adjacent interval combining

ASSESSMENT INDICATORS:
- Linearity: Applies sum and constant rules
- Additivity: Splits and combines intervals
- Reversal: Handles bound reversal correctly
- Application: Uses properties to solve problems
- Recognition: Identifies which property applies

REAL-WORLD CONNECTIONS:
- Splitting time intervals
- Combining accumulated quantities
- Decomposing complex measurements
- Reversing direction of integration

VOCABULARY:
linearity, additivity, reversal property, comparison property

QUESTIONING TECHNIQUES:
- "Which property lets us factor out the 5?"
- "How can we combine these two integrals?"
- "What happens if we switch the limits?"
- "Why isn''t there a product property?"

MATERIALS:
- Property summary card
- Geometric justification diagrams
- Property application practice
- Error identification exercises

COMMON ERRORS AND RESPONSES:
Error: Writing ∫(fg) = (∫f)(∫g)
Response: "There''s no product rule for integrals like there is for derivatives. ∫(fg) requires other techniques."

Error: Forgetting negative when reversing limits
Response: "∫ᵃᵇ f = -∫ᵇᵃ f. Reversing limits changes the sign. This makes sense: area ''below'' is opposite of ''above''."

CONNECTION TO FUTURE LEARNING:
Integral properties are essential tools for evaluating complex integrals and proving theorems in integral calculus.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties of Integrals' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Fundamental Theorem Part 2
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fundamental Theorem Part 2' AND grade_level_min = 13),
  'Fundamental Theorem Part 2 Topic Guide',
  'Comprehensive teaching approach for using FTC to evaluate definite integrals',
  'FUNDAMENTAL THEOREM OF CALCULUS PART 2 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Antiderivatives
- Definite integral concept
- FTC Part 1
- Integration notation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State FTC Part 2: ∫ᵃᵇ f(x)dx = F(b) - F(a)
2. Evaluate definite integrals using antiderivatives
3. Use notation F(x)|ᵃᵇ = F(b) - F(a)
4. Understand why antiderivatives enable area calculation
5. Apply to various function types

KEY CONCEPTS:
- ∫ᵃᵇ f(x)dx = F(b) - F(a) where F'' = f
- Antiderivative connects to definite integral
- Any antiderivative works (constants cancel)
- Notation: [F(x)]ᵃᵇ or F(x)|ᵃᵇ = F(b) - F(a)

COMMON MISCONCEPTIONS:
- Forgetting to subtract F(a)
- Not finding correct antiderivative
- Confusion about why "+C" disappears
- Incorrect substitution order

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"The Fundamental Theorem connects derivatives and integrals - they undo each other. Now we can find exact areas without rectangles!"

2. DIRECT INSTRUCTION (15 minutes):
State FTC Part 2. Show evaluation process. Explain why +C cancels. Practice with polynomials, then trig and exponential. Emphasize: antiderivative first, then evaluate.

3. GUIDED PRACTICE (15 minutes):
Students evaluate various definite integrals. Practice multi-step antiderivatives. Verify geometrically when possible.

4. INDEPENDENT APPLICATION (10 minutes):
Complex integrals. Applied area problems. Integration with properties.

DIFFERENTIATION:

For Struggling Learners:
- Separate antiderivative step from evaluation
- F(b) - F(a) visual mnemonic
- Simple function focus
- Check with geometry when possible
- Template for organization

For Advanced Learners:
- Prove FTC Part 2
- Improper integrals introduction
- Variable limits of integration
- Connect to FTC Part 1
- Multiple antiderivative methods

ASSESSMENT INDICATORS:
- Antiderivative: Finds F(x) correctly
- Evaluation: Computes F(b) - F(a) accurately
- Notation: Uses proper bar notation
- Process: Shows organized work
- Verification: Checks reasonableness

REAL-WORLD CONNECTIONS:
- Exact area calculations
- Physics work and energy
- Economic surplus calculations
- Probability calculations

VOCABULARY:
Fundamental Theorem, antiderivative, evaluation, F(b) - F(a)

QUESTIONING TECHNIQUES:
- "What is the antiderivative?"
- "What is F(b)? What is F(a)?"
- "Why does the constant cancel?"
- "How can we check our answer?"

MATERIALS:
- FTC Part 2 reference card
- Evaluation practice problems
- Organized solution templates
- Verification activities

COMMON ERRORS AND RESPONSES:
Error: Writing ∫₀² 2x dx = x² = 4 (forgetting to subtract F(0))
Response: "You must evaluate at both limits: F(2) - F(0) = 4 - 0 = 4. Always compute F(upper) - F(lower)."

Error: Including +C in definite integral answer
Response: "For definite integrals, +C cancels: (F(b) + C) - (F(a) + C) = F(b) - F(a). The constant disappears."

CONNECTION TO FUTURE LEARNING:
FTC Part 2 is the primary tool for evaluating all definite integrals and connects to applications throughout calculus.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fundamental Theorem Part 2' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Integral Notation
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Integral Notation' AND grade_level_min = 13),
  'Integral Notation Topic Guide',
  'Comprehensive teaching approach for understanding and using integral notation correctly',
  'INTEGRAL NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Summation notation
- Function notation
- Differential dx concept
- Limit notation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Interpret ∫ as limit of sums
2. Understand dx as differential
3. Use definite integral notation ∫ᵃᵇ f(x)dx
4. Use indefinite integral notation ∫ f(x)dx
5. Recognize variable of integration

KEY CONCEPTS:
- ∫ elongated S from "Summa" (sum)
- dx indicates variable of integration
- Definite: ∫ᵃᵇ has limits, gives number
- Indefinite: ∫ without limits, gives function + C
- Variable is "dummy": ∫f(x)dx = ∫f(t)dt

COMMON MISCONCEPTIONS:
- Thinking dx is meaningless decoration
- Confusing definite and indefinite
- Not including dx in notation
- Wrong variable identification in nested expressions

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"The integral symbol ∫ was created by Leibniz as an elongated S for ''sum.'' Each part of integral notation has meaning - let''s decode it."

2. DIRECT INSTRUCTION (15 minutes):
Historical context of notation. Explain each component: ∫ (sum), f(x) (integrand), dx (variable of integration), limits a and b. Distinguish definite from indefinite. Dummy variable concept.

3. GUIDED PRACTICE (15 minutes):
Students interpret integral expressions. Write integrals from descriptions. Identify components of complex integrals. Change variables.

4. INDEPENDENT APPLICATION (10 minutes):
Complex notation reading. Writing integrals. Multi-variable integral identification.

DIFFERENTIATION:

For Struggling Learners:
- Annotate each notation component
- Focus on definite integrals first
- Simple examples
- Consistent variable use (x)
- Visual breakdown of notation

For Advanced Learners:
- Leibniz notation for substitution
- Multiple integral notation preview
- Historical development
- Notation in different countries
- dx as differential vs marker

ASSESSMENT INDICATORS:
- Components: Identifies all parts of notation
- Interpretation: Explains what notation means
- Distinction: Separates definite from indefinite
- Writing: Creates correct notation
- Variable: Understands dummy variable concept

REAL-WORLD CONNECTIONS:
- Scientific paper reading
- Cross-disciplinary notation
- Computer algebra systems
- Mathematical communication

VOCABULARY:
integral sign, integrand, differential, limits of integration, definite, indefinite

QUESTIONING TECHNIQUES:
- "What does dx represent?"
- "Is this definite or indefinite?"
- "What is the integrand?"
- "Can we change x to t in this integral?"

MATERIALS:
- Notation component diagrams
- Definite vs indefinite comparison
- Reading practice exercises
- Writing from description activities

COMMON ERRORS AND RESPONSES:
Error: Writing ∫x² = x³/3 without dx
Response: "Always include dx - it indicates the variable of integration. Write ∫x² dx = x³/3 + C."

Error: Confusing ∫x² dt with ∫x² dx
Response: "The differential tells you what variable to integrate. ∫x² dt = x²t + C (treating x as constant), but ∫x² dx = x³/3 + C."

CONNECTION TO FUTURE LEARNING:
Mastering integral notation is essential for all integration techniques and for reading advanced mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Integral Notation' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ANTIDERIVATIVES UNIT TOPICS (REMAINING)
-- ============================================================================

-- Power Rule for Antiderivatives
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Power Rule for Antiderivatives' AND grade_level_min = 13),
  'Power Rule for Antiderivatives Topic Guide',
  'Comprehensive teaching approach for finding antiderivatives using the reverse power rule',
  'POWER RULE FOR ANTIDERIVATIVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Power rule for derivatives
- Polynomial operations
- Exponent rules
- Antiderivative concept

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Apply reverse power rule: ∫xⁿ dx = x^(n+1)/(n+1) + C (n ≠ -1)
2. Antidifferentiate polynomial expressions
3. Include +C in all indefinite integrals
4. Recognize why n = -1 is special case
5. Verify by differentiating

KEY CONCEPTS:
- ∫xⁿ dx = x^(n+1)/(n+1) + C when n ≠ -1
- Reverse of power rule for derivatives
- Add 1 to exponent, divide by new exponent
- n = -1 gives ∫x⁻¹ dx = ln|x| + C
- Always add +C for indefinite integrals

COMMON MISCONCEPTIONS:
- Forgetting +C
- Applying to n = -1 (gives ln, not power)
- Reversing the operation (dividing by n instead of n+1)
- Not handling negative and fractional exponents

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"If differentiating x³ gives 3x², what function has derivative 3x²? Undo the steps: divide by power, add one to exponent. That''s antidifferentiation!"

2. DIRECT INSTRUCTION (15 minutes):
Derive rule from power rule reversal. Practice with positive, negative, and fractional exponents. Explain n = -1 exception. Emphasize +C. Verify by differentiating.

3. GUIDED PRACTICE (15 minutes):
Students antidifferentiate monomials and polynomials. Handle various exponents. Check answers by differentiation. Build fluency.

4. INDEPENDENT APPLICATION (10 minutes):
Complex polynomials. Radical expressions as powers. Real-world antiderivative applications.

DIFFERENTIATION:

For Struggling Learners:
- Explicit comparison to derivative rule
- Step-by-step template
- Positive integer exponents first
- Verification practice
- +C reminder system

For Advanced Learners:
- Derive rule formally
- Why n = -1 fails
- Power rule for all real n
- Initial value problems
- Connection to definite integrals

ASSESSMENT INDICATORS:
- Rule application: Uses formula correctly
- Exponents: Handles all exponent types
- +C: Includes constant of integration
- Exception: Recognizes n = -1 case
- Verification: Checks by differentiating

REAL-WORLD CONNECTIONS:
- Position from velocity
- Work from force
- Accumulated quantities
- Physics displacement

VOCABULARY:
antiderivative, power rule, indefinite integral, constant of integration, +C

QUESTIONING TECHNIQUES:
- "What is the antiderivative of x⁴?"
- "Why must we add +C?"
- "What happens when n = -1?"
- "How can we check our answer?"

MATERIALS:
- Power rule comparison chart
- Exponent practice sets
- Verification worksheets
- Exception case examples

COMMON ERRORS AND RESPONSES:
Error: Writing ∫x³ dx = 3x² + C
Response: "You''ve written the derivative, not the antiderivative. Reverse the process: add 1 to exponent, divide by new exponent: x⁴/4 + C."

Error: Writing ∫x⁻¹ dx = x⁰/0 + C
Response: "The power rule fails when n = -1 because we can''t divide by zero. This special case gives ∫x⁻¹ dx = ln|x| + C."

CONNECTION TO FUTURE LEARNING:
Power rule for antiderivatives is foundational for all integration techniques and directly applies to definite integrals via FTC.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Power Rule for Antiderivatives' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Antiderivatives of Trig Functions
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Antiderivatives of Trig Functions' AND grade_level_min = 13),
  'Antiderivatives of Trig Functions Topic Guide',
  'Comprehensive teaching approach for integrating basic trigonometric functions',
  'ANTIDERIVATIVES OF TRIG FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Trig function derivatives
- Unit circle familiarity
- Antiderivative concept
- Integration notation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Integrate basic trig functions (sin, cos, tan, sec, etc.)
2. Recognize antiderivatives from derivative patterns
3. Handle negative signs appropriately
4. Integrate sec² and csc²
5. Apply to definite integrals

KEY CONCEPTS:
- ∫sin x dx = -cos x + C
- ∫cos x dx = sin x + C
- ∫sec²x dx = tan x + C
- ∫csc²x dx = -cot x + C
- ∫sec x tan x dx = sec x + C
- ∫csc x cot x dx = -csc x + C

COMMON MISCONCEPTIONS:
- Forgetting negative signs (∫sin x ≠ cos x)
- Confusing sec² integral with tan integral
- Not recognizing sec x tan x as derivative of sec x
- Missing the pattern of negatives for co-functions

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"You know the derivatives of trig functions. Now reverse them - antidifferentiate! The derivative of -cos x is sin x, so ∫sin x dx = -cos x."

2. DIRECT INSTRUCTION (15 minutes):
Review trig derivatives. Reverse each to get antiderivatives. Organize by pattern (co-functions have negatives). Practice with chain rule setups. Verify by differentiating.

3. GUIDED PRACTICE (15 minutes):
Students integrate various trig expressions. Apply to definite integrals. Combine with power rule.

4. INDEPENDENT APPLICATION (10 minutes):
Mixed trig integrals. Periodic function applications. Area under trig curves.

DIFFERENTIATION:

For Struggling Learners:
- Derivative/antiderivative table
- Pattern recognition exercises
- Focus on sin and cos first
- Sign tracking practice
- Verification emphasis

For Advanced Learners:
- Derive ∫tan x and ∫sec x
- Reduction formulas
- Powers of trig functions
- Trig substitution preview
- Complex trig integrals

ASSESSMENT INDICATORS:
- Basic integrals: Knows standard antiderivatives
- Signs: Handles negatives correctly
- Recognition: Identifies patterns quickly
- Application: Evaluates definite integrals
- Verification: Checks by differentiating

REAL-WORLD CONNECTIONS:
- Wave motion analysis
- Harmonic oscillation
- AC circuit calculations
- Pendulum motion

VOCABULARY:
antiderivative, trigonometric integral, co-function pattern

QUESTIONING TECHNIQUES:
- "What is ∫cos x dx?"
- "Why is there a negative in ∫sin x dx?"
- "What function has derivative sec²x?"
- "How do we verify our answer?"

MATERIALS:
- Trig antiderivative table
- Derivative-antiderivative pairs
- Pattern recognition exercises
- Definite integral practice

COMMON ERRORS AND RESPONSES:
Error: Writing ∫sin x dx = cos x + C
Response: "Check by differentiating: d/dx[cos x] = -sin x, not sin x. You need -cos x + C."

Error: Not recognizing ∫sec x tan x dx
Response: "This is the derivative of sec x. Working backward: d/dx[sec x] = sec x tan x, so ∫sec x tan x dx = sec x + C."

CONNECTION TO FUTURE LEARNING:
Trig antiderivatives are essential for integration techniques like trig substitution and for solving differential equations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Antiderivatives of Trig Functions' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Exponential Antiderivatives
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Antiderivatives' AND grade_level_min = 13),
  'Exponential Antiderivatives Topic Guide',
  'Comprehensive teaching approach for integrating exponential functions',
  'EXPONENTIAL ANTIDERIVATIVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Exponential derivatives
- Natural logarithm properties
- Chain rule recognition
- Antiderivative concept

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Integrate eˣ: ∫eˣ dx = eˣ + C
2. Integrate general exponentials: ∫aˣ dx = aˣ/ln(a) + C
3. Apply chain rule in reverse for e^(f(x))
4. Recognize when substitution is needed
5. Apply to growth/decay problems

KEY CONCEPTS:
- ∫eˣ dx = eˣ + C (eˣ is its own antiderivative!)
- ∫aˣ dx = aˣ/ln(a) + C
- For ∫e^(kx) dx = e^(kx)/k + C
- Chain rule in reverse requires adjustment

COMMON MISCONCEPTIONS:
- Forgetting 1/ln(a) for general base
- Not dividing by coefficient in exponent
- Confusing with power rule
- Missing chain rule adjustments

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"eˣ is its own derivative - amazingly, it''s also its own antiderivative! This special property makes e central to calculus."

2. DIRECT INSTRUCTION (15 minutes):
Show ∫eˣ dx = eˣ. Derive general exponential rule. Handle e^(kx) using chain rule reversal. Explain 1/ln(a) factor. Practice various forms.

3. GUIDED PRACTICE (15 minutes):
Students integrate exponential expressions. Apply to definite integrals. Combine with other functions.

4. INDEPENDENT APPLICATION (10 minutes):
Growth/decay problems. Complex exponential expressions. Real-world applications.

DIFFERENTIATION:

For Struggling Learners:
- Focus on eˣ first
- Explicit chain rule adjustment steps
- Template for e^(kx)
- Numerical verification
- Simple examples

For Advanced Learners:
- Derive general formula
- Exponential and trig combinations
- Integration by parts with exponentials
- Differential equations
- Complex exponentials preview

ASSESSMENT INDICATORS:
- Basic: Integrates eˣ correctly
- General base: Uses 1/ln(a) factor
- Chain rule: Adjusts for composite functions
- Application: Solves real-world problems
- Verification: Checks by differentiating

REAL-WORLD CONNECTIONS:
- Population growth models
- Radioactive decay
- Compound interest
- Chemical reaction rates

VOCABULARY:
exponential antiderivative, natural exponential, base, chain rule adjustment

QUESTIONING TECHNIQUES:
- "What is ∫e³ˣ dx?"
- "Why does 2ˣ need a 1/ln(2) factor?"
- "How is this different from the power rule?"
- "What adjustment do we need for e^(5x)?"

MATERIALS:
- Exponential antiderivative reference
- Chain rule adjustment practice
- Base comparison activities
- Application problems

COMMON ERRORS AND RESPONSES:
Error: Writing ∫e³ˣ dx = e³ˣ + C without dividing by 3
Response: "Chain rule in reverse: since d/dx[e³ˣ] = 3e³ˣ, we need ∫e³ˣ dx = e³ˣ/3 + C."

Error: Writing ∫2ˣ dx = 2ˣ + C
Response: "For base 2, we need the ln(2) factor: ∫2ˣ dx = 2ˣ/ln(2) + C. Verify by differentiating."

CONNECTION TO FUTURE LEARNING:
Exponential antiderivatives are crucial for solving differential equations and modeling real-world phenomena.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Antiderivatives' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Logarithmic Antiderivatives
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Logarithmic Antiderivatives' AND grade_level_min = 13),
  'Logarithmic Antiderivatives Topic Guide',
  'Comprehensive teaching approach for recognizing integrals that produce logarithms',
  'LOGARITHMIC ANTIDERIVATIVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Logarithm derivative: d/dx[ln x] = 1/x
- Chain rule
- Rational function recognition
- Absolute value concept

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize ∫(1/x)dx = ln|x| + C
2. Identify ∫(f''(x)/f(x))dx = ln|f(x)| + C pattern
3. Understand why absolute value is needed
4. Apply to various rational expressions
5. Use u-substitution to find logarithmic antiderivatives

KEY CONCEPTS:
- ∫(1/x)dx = ln|x| + C (absolute value important)
- Pattern: ∫(f''/f) = ln|f| + C
- This is why power rule fails for n = -1
- Many rational functions integrate to logs

COMMON MISCONCEPTIONS:
- Forgetting absolute value
- Not recognizing f''/f pattern
- Trying power rule on 1/x
- Missing chain rule factor

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"The power rule fails for x⁻¹ - we can''t divide by zero. But there IS an antiderivative: ln|x|. Let''s see why and how to recognize this pattern."

2. DIRECT INSTRUCTION (15 minutes):
Show ∫(1/x)dx = ln|x|. Explain absolute value need. Introduce f''/f pattern. Practice recognition. Connect to u-substitution.

3. GUIDED PRACTICE (15 minutes):
Students identify logarithmic antiderivatives. Apply f''/f pattern. Practice with various denominators.

4. INDEPENDENT APPLICATION (10 minutes):
Complex rational expressions. Definite integrals yielding logs. Applications.

DIFFERENTIATION:

For Struggling Learners:
- Focus on 1/x first
- Pattern recognition drills
- Numerator/denominator matching
- Simple examples
- Absolute value reminders

For Advanced Learners:
- Partial fractions preview
- Complex logarithmic integrals
- Absolute value analysis in depth
- Integration by parts with logs
- Logarithmic substitutions

ASSESSMENT INDICATORS:
- Recognition: Identifies when ln results
- Pattern: Applies f''/f pattern
- Absolute value: Includes |x|
- Verification: Checks by differentiating
- Application: Evaluates definite integrals

REAL-WORLD CONNECTIONS:
- Decibel calculations
- pH scale analysis
- Information entropy
- Logarithmic growth models

VOCABULARY:
logarithmic antiderivative, natural logarithm, absolute value, f''/f pattern

QUESTIONING TECHNIQUES:
- "What is ∫(1/x)dx?"
- "Why do we need absolute value?"
- "Is this f''/f pattern?"
- "What''s in the numerator and denominator?"

MATERIALS:
- Pattern recognition practice
- f''/f identification exercises
- Absolute value explanations
- Definite integral examples

COMMON ERRORS AND RESPONSES:
Error: Writing ∫(1/x)dx = ln(x) + C without absolute value
Response: "Use ln|x| + C. The absolute value ensures the answer works for negative x too. d/dx[ln|x|] = 1/x for all x ≠ 0."

Error: Not recognizing ∫(2x/(x²+1))dx as logarithmic
Response: "The numerator 2x is the derivative of the denominator x²+1. This is f''/f pattern: ∫(f''/f) = ln|f| + C = ln|x²+1| + C."

CONNECTION TO FUTURE LEARNING:
Recognizing logarithmic antiderivatives is crucial for partial fractions and many integration techniques.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Logarithmic Antiderivatives' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Initial Value Problems
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Initial Value Problems' AND grade_level_min = 13),
  'Initial Value Problems Topic Guide',
  'Comprehensive teaching approach for solving differential equations with initial conditions',
  'INITIAL VALUE PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Antiderivative skills
- Solving for constants
- Function evaluation
- Derivative interpretation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the role of +C in general solutions
2. Use initial conditions to find specific C values
3. Write particular solutions satisfying given conditions
4. Solve multi-step IVPs (given f'''', find f)
5. Apply to position/velocity/acceleration problems

KEY CONCEPTS:
- General solution: y = F(x) + C (family of curves)
- Initial condition: f(a) = b determines specific C
- Particular solution: one specific curve from family
- IVP: differential equation + initial condition(s)

COMMON MISCONCEPTIONS:
- Forgetting to add +C initially
- Not substituting initial condition correctly
- Thinking C must be a small integer
- Not handling multiple conditions for higher order

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"An antiderivative gives a family of curves, all shifted vertically. An initial condition pins down exactly which curve - it''s like GPS coordinates for functions."

2. DIRECT INSTRUCTION (15 minutes):
Show general vs particular solution. Substitute initial condition to find C. Practice with various functions. Extend to f'''' given, find f with two conditions.

3. GUIDED PRACTICE (15 minutes):
Students solve IVPs. Practice with polynomials, exponentials, and trig. Apply to physics motion problems.

4. INDEPENDENT APPLICATION (10 minutes):
Multi-step IVPs. Real-world scenarios. Word problems with initial conditions.

DIFFERENTIATION:

For Struggling Learners:
- Step-by-step template
- Emphasize +C importance
- Simple polynomial functions
- One condition first
- Careful algebraic solving

For Advanced Learners:
- Higher-order IVPs
- Uniqueness and existence discussion
- Differential equations preview
- Applications to all sciences
- General solution analysis

ASSESSMENT INDICATORS:
- Process: Finds general solution first
- Condition: Applies initial condition correctly
- Solution: Solves for C accurately
- Particular: Writes complete particular solution
- Application: Handles real-world IVPs

REAL-WORLD CONNECTIONS:
- Position from velocity with starting point
- Population with initial count
- Temperature with initial reading
- Financial model with initial investment

VOCABULARY:
initial value problem, initial condition, general solution, particular solution, +C

QUESTIONING TECHNIQUES:
- "What is the general solution?"
- "How do we use f(0) = 5?"
- "What is the value of C?"
- "What is the particular solution?"

MATERIALS:
- IVP solving template
- Motion problem practice
- Multi-condition examples
- Real-world application problems

COMMON ERRORS AND RESPONSES:
Error: Writing f(x) = x² and then trying to use f(1) = 3
Response: "Don''t forget +C in the general solution: f(x) = x² + C. Now use f(1) = 3 to find C."

Error: Substituting condition into wrong equation
Response: "Use the condition with the solution f(x), not the derivative f''(x). You want f(1) = 3, not f''(1) = 3."

CONNECTION TO FUTURE LEARNING:
Initial value problems are foundational for differential equations and modeling throughout science and engineering.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Initial Value Problems' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- U-Substitution
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'U-Substitution' AND grade_level_min = 13),
  'U-Substitution Topic Guide',
  'Comprehensive teaching approach for integration by substitution',
  'U-SUBSTITUTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Chain rule for derivatives
- Basic antiderivatives
- Algebraic manipulation
- Differential notation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize when substitution simplifies an integral
2. Choose appropriate u and compute du
3. Substitute completely (change all x terms to u terms)
4. Integrate in u, then substitute back
5. Apply to definite integrals (change limits or substitute back)

KEY CONCEPTS:
- Reverse chain rule: if you see f(g(x))·g''(x), let u = g(x)
- du = g''(x)dx, so g''(x)dx becomes du
- Transform ∫f(g(x))·g''(x)dx to ∫f(u)du
- For definite integrals: change limits to u values

COMMON MISCONCEPTIONS:
- Not changing all x terms to u
- Forgetting to substitute back to x
- Not adjusting for missing constants
- Wrong limit changes for definite integrals

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Integration is hard because we''re working backward. Substitution is like zooming in on the hard part - rename it u, integrate simply, then zoom back out."

2. DIRECT INSTRUCTION (15 minutes):
Show chain rule reversal motivation. Demonstrate u choice and du calculation. Complete substitution process. Handle definite integrals. Practice adjusting for missing constants.

3. GUIDED PRACTICE (15 minutes):
Students practice u selection. Execute complete substitution process. Work both indefinite and definite. Verify by differentiating.

4. INDEPENDENT APPLICATION (10 minutes):
Complex substitutions. Multiple valid u choices. Application problems.

DIFFERENTIATION:

For Struggling Learners:
- Clear step-by-step template
- Guided u choice at first
- Simple examples (linear inner function)
- Practice each step separately
- Always verify by differentiating

For Advanced Learners:
- Multiple substitution choices
- Back-substitution challenges
- Trigonometric substitutions preview
- Recognizing disguised forms
- Definite integrals efficiently

ASSESSMENT INDICATORS:
- Recognition: Identifies when to use substitution
- Choice: Selects appropriate u
- Process: Executes substitution completely
- Back-substitution: Returns to original variable
- Definite: Handles limit changes correctly

REAL-WORLD CONNECTIONS:
- Compound function integration
- Physics energy calculations
- Economic model integration
- Engineering displacement calculations

VOCABULARY:
u-substitution, change of variable, du, back-substitution, chain rule reversal

QUESTIONING TECHNIQUES:
- "What is a good choice for u?"
- "What is du?"
- "Is everything now in terms of u?"
- "Did you substitute back to x?"

MATERIALS:
- Substitution template
- U-choice practice
- Definite integral examples
- Verification worksheets

COMMON ERRORS AND RESPONSES:
Error: Writing ∫2x(x²+1)⁴dx with u = x²+1, getting ∫u⁴dx
Response: "The dx must change too! If u = x²+1, then du = 2x dx. So 2x dx becomes du, giving ∫u⁴ du."

Error: For definite integral, not changing limits to u values
Response: "When u = x², and x goes from 0 to 2, u goes from 0 to 4. Either change limits or substitute back after integrating."

CONNECTION TO FUTURE LEARNING:
U-substitution is the most frequently used integration technique and prepares for more advanced methods.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'U-Substitution' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Integration by Parts
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Integration by Parts' AND grade_level_min = 13),
  'Integration by Parts Topic Guide',
  'Comprehensive teaching approach for integration using the parts formula',
  'INTEGRATION BY PARTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Product rule for derivatives
- Basic antiderivatives
- Algebraic manipulation
- Function classification

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Derive integration by parts from product rule
2. Apply formula: ∫u dv = uv - ∫v du
3. Use LIATE for choosing u
4. Handle repeated parts (tabular method)
5. Solve for cyclic integrals

KEY CONCEPTS:
- From product rule: ∫u dv = uv - ∫v du
- LIATE priority for u: Logs, Inverse trig, Algebraic, Trig, Exponential
- Choose u to simplify when differentiated
- Choose dv that you can integrate
- Sometimes need multiple applications

COMMON MISCONCEPTIONS:
- Wrong choice of u and dv
- Forgetting the minus sign
- Not recognizing when to use parts
- Stopping after first application when more needed

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Some products resist substitution. For ∫x·eˣ dx, neither u = x nor u = eˣ helps with substitution. Integration by parts handles these cases."

2. DIRECT INSTRUCTION (15 minutes):
Derive formula from product rule. Introduce LIATE mnemonic. Work through ∫xeˣ, ∫x sin x, ∫ln x. Show tabular method for repeated parts. Handle cyclic integrals (∫eˣsin x).

3. GUIDED PRACTICE (15 minutes):
Students practice u/dv choices. Apply parts formula. Try tabular method. Solve cyclic cases.

4. INDEPENDENT APPLICATION (10 minutes):
Complex parts problems. Multi-step applications. Definite integral applications.

DIFFERENTIATION:

For Struggling Learners:
- Parts formula on every paper
- LIATE mnemonic practice
- Template for organization
- Single application focus first
- Verification emphasis

For Advanced Learners:
- Prove parts formula
- Reduction formulas derivation
- When parts fails
- Combination with substitution
- Advanced cyclic integrals

ASSESSMENT INDICATORS:
- Choice: Uses LIATE for u selection
- Formula: Applies ∫u dv = uv - ∫v du correctly
- Process: Executes full procedure
- Multiple: Handles repeated applications
- Cyclic: Solves circular integral cases

REAL-WORLD CONNECTIONS:
- Probability distributions
- Physics moment calculations
- Engineering Laplace transforms
- Signal processing

VOCABULARY:
integration by parts, LIATE, u, dv, v, du, tabular method

QUESTIONING TECHNIQUES:
- "What should u be based on LIATE?"
- "What is dv and what is v?"
- "What is the new integral after one application?"
- "Do we need to apply parts again?"

MATERIALS:
- Parts formula reference
- LIATE mnemonic card
- Tabular method template
- Cyclic integral examples

COMMON ERRORS AND RESPONSES:
Error: For ∫xeˣ dx, choosing u = eˣ, dv = x dx
Response: "Using LIATE, algebraic (x) comes before exponential. Let u = x, dv = eˣdx. This makes the new integral simpler: ∫eˣdx."

Error: Forgetting minus sign: writing ∫u dv = uv + ∫v du
Response: "The formula is ∫u dv = uv - ∫v du. The minus sign is essential and comes from reversing the product rule."

CONNECTION TO FUTURE LEARNING:
Integration by parts is essential for many advanced integrals, differential equations, and engineering mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Integration by Parts' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- APPLICATIONS OF INTEGRATION UNIT TOPICS (REMAINING)
-- ============================================================================

-- Area Between Curves
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area Between Curves' AND grade_level_min = 13),
  'Area Between Curves Topic Guide',
  'Comprehensive teaching approach for finding area enclosed between two curves',
  'AREA BETWEEN CURVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Definite integrals
- Intersection points
- Graphing functions
- Absolute value concept

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find intersection points of two curves
2. Determine which function is upper/lower
3. Set up ∫[f(x) - g(x)]dx with correct order
4. Handle regions requiring multiple integrals
5. Choose vertical vs horizontal slicing

KEY CONCEPTS:
- Area = ∫ᵃᵇ [upper - lower] dx
- Must identify which is upper curve on interval
- Intersection points are limits of integration
- May need to split into multiple regions
- Sometimes integrate with respect to y

COMMON MISCONCEPTIONS:
- Always subtracting in same order regardless of which is upper
- Forgetting to find intersection points
- Not splitting when curves cross
- Assuming vertical slicing is always best

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"What''s the area between y = x² and y = x? We need to figure out where they meet, which is on top, and integrate the difference."

2. DIRECT INSTRUCTION (15 minutes):
Find intersections by setting equal. Graph to determine upper/lower. Set up integral [upper - lower]. Handle multiple regions. Introduce horizontal slicing alternative.

3. GUIDED PRACTICE (15 minutes):
Students find area between various curve pairs. Practice with region splitting. Try both vertical and horizontal approaches.

4. INDEPENDENT APPLICATION (10 minutes):
Complex regions. Choosing optimal slicing direction. Real-world enclosed area problems.

DIFFERENTIATION:

For Struggling Learners:
- Always graph first
- Clear upper/lower identification
- Template for setup
- Simple parabola/line pairs
- One region focus initially

For Advanced Learners:
- Three or more curves
- Polar area between curves
- Parametric curve areas
- Optimization of enclosed areas
- 3D surface areas preview

ASSESSMENT INDICATORS:
- Intersections: Finds correct intersection points
- Order: Correctly identifies upper - lower
- Setup: Writes correct integral
- Regions: Handles multiple regions
- Slicing: Chooses efficient direction

REAL-WORLD CONNECTIONS:
- Economic surplus calculation
- Land area between boundaries
- Engineering cross-sections
- Probability between distributions

VOCABULARY:
area between curves, upper curve, lower curve, intersection points, vertical slicing, horizontal slicing

QUESTIONING TECHNIQUES:
- "Where do the curves intersect?"
- "Which curve is on top?"
- "Do the curves cross within the region?"
- "Would horizontal slicing be easier here?"

MATERIALS:
- Graphing technology
- Setup templates
- Region identification practice
- Slicing comparison activities

COMMON ERRORS AND RESPONSES:
Error: Writing ∫(x² - x)dx when x is above x² on [0,1]
Response: "Graph the functions. On [0,1], y = x is above y = x². Use ∫(x - x²)dx, upper minus lower."

Error: Using wrong intersection points as limits
Response: "Find where curves are equal: set f(x) = g(x) and solve. These x-values are your limits of integration."

CONNECTION TO FUTURE LEARNING:
Area between curves extends to volumes of revolution and is fundamental for probability distributions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area Between Curves' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Average Value of Functions
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Average Value of Functions' AND grade_level_min = 13),
  'Average Value of Functions Topic Guide',
  'Comprehensive teaching approach for calculating average value using definite integrals',
  'AVERAGE VALUE OF FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Definite integrals
- Basic algebra
- Average concept
- Function evaluation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State average value formula: f_avg = (1/(b-a))∫ᵃᵇ f(x)dx
2. Interpret average value geometrically
3. Calculate average values for various functions
4. Apply Mean Value Theorem for Integrals
5. Connect to real-world averages

KEY CONCEPTS:
- f_avg = (1/(b-a))∫ᵃᵇ f(x)dx
- Geometric interpretation: height of rectangle with same area
- MVT for Integrals: there exists c where f(c) = f_avg
- Different from average rate of change

COMMON MISCONCEPTIONS:
- Confusing average value with average rate of change
- Forgetting 1/(b-a) factor
- Computing f((a+b)/2) instead of average value
- Not understanding the geometric meaning

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"What''s the average temperature over a day? We can''t just take noon''s temperature. We need the average of all temperatures - that''s where integral average comes in."

2. DIRECT INSTRUCTION (15 minutes):
Derive formula from discrete average. Show geometric interpretation (same area rectangle). State MVT for Integrals. Practice with various functions. Compare to other averages.

3. GUIDED PRACTICE (15 minutes):
Students calculate average values. Interpret results. Find c where f(c) equals average. Apply to real scenarios.

4. INDEPENDENT APPLICATION (10 minutes):
Complex function averages. Real-world average problems. MVT application.

DIFFERENTIATION:

For Struggling Learners:
- Connect to discrete averages
- Formula reference card
- Polynomial functions focus
- Step-by-step calculation
- Geometric visualization

For Advanced Learners:
- Prove MVT for Integrals
- Weighted averages
- Multi-variable average values
- RMS values in physics
- Probability expected value connection

ASSESSMENT INDICATORS:
- Formula: States and applies formula correctly
- Calculation: Computes average value accurately
- Interpretation: Explains geometric meaning
- MVT: Finds c where f(c) = f_avg
- Application: Solves real-world problems

REAL-WORLD CONNECTIONS:
- Average temperature
- Average cost
- Average speed over interval
- Average current/voltage

VOCABULARY:
average value, mean value, f_avg, MVT for Integrals

QUESTIONING TECHNIQUES:
- "What is the average value of f on [1,3]?"
- "What does this average mean geometrically?"
- "At what point c does f(c) equal the average?"
- "How is this different from f((a+b)/2)?"

MATERIALS:
- Average value formula card
- Geometric interpretation diagrams
- Real-world application problems
- MVT verification exercises

COMMON ERRORS AND RESPONSES:
Error: Computing f((a+b)/2) instead of (1/(b-a))∫f(x)dx
Response: "f at the midpoint is just one value. Average value considers all values across the interval via integration."

Error: Writing ∫f(x)dx/(a-b) instead of 1/(b-a)
Response: "Check the order: it''s (b-a) in the denominator, where b is the upper limit. /(b-a), not /(a-b)."

CONNECTION TO FUTURE LEARNING:
Average value is foundational for physics RMS calculations, probability expected value, and advanced applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Average Value of Functions' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Net Change
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Net Change' AND grade_level_min = 13),
  'Net Change Topic Guide',
  'Comprehensive teaching approach for applying integrals to find net change in quantities',
  'NET CHANGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Definite integrals
- FTC Part 2
- Rate of change interpretation
- Signed area concept

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Apply Net Change Theorem: ∫ᵃᵇ F''(x)dx = F(b) - F(a)
2. Interpret integral of rate as total change
3. Distinguish net change from total change
4. Apply to displacement vs total distance
5. Use in real-world accumulation problems

KEY CONCEPTS:
- ∫ᵃᵇ F''(x)dx = F(b) - F(a) (FTC as net change)
- Integral of rate of change = total change in quantity
- Net vs total: net can be zero if changes cancel
- Displacement (net) vs distance (total)

COMMON MISCONCEPTIONS:
- Confusing net change with total change
- Thinking all integrals of rates give positive values
- Not recognizing rate of change in word problems
- Ignoring signs when computing net change

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"You earn $100, spend $30, earn $50, spend $80. Net change: +$40. Total money moved: $260. Same idea with integrals!"

2. DIRECT INSTRUCTION (15 minutes):
State Net Change Theorem. Connect to FTC. Distinguish net vs total. Displacement vs distance example. Practice with real-world rates.

3. GUIDED PRACTICE (15 minutes):
Students apply net change to various scenarios. Calculate both net and total when appropriate. Interpret results in context.

4. INDEPENDENT APPLICATION (10 minutes):
Complex accumulation problems. Real-world rate data. Multi-scenario analysis.

DIFFERENTIATION:

For Struggling Learners:
- Number line visualization for net vs total
- Simple velocity examples first
- Explicit sign tracking
- Step-by-step from rate to total
- Real-world focus

For Advanced Learners:
- Multiple rate components
- Net change with variable rates
- Economic applications
- Differential equations connection
- Signed vs unsigned integrals

ASSESSMENT INDICATORS:
- Theorem: States Net Change Theorem correctly
- Interpretation: Understands integral of rate = change
- Distinction: Separates net from total
- Application: Solves word problems
- Context: Interprets answer meaningfully

REAL-WORLD CONNECTIONS:
- Population change
- Account balance changes
- Fluid flow (in - out)
- Distance traveled

VOCABULARY:
net change, total change, displacement, distance, rate of change, accumulation

QUESTIONING TECHNIQUES:
- "What is the net change in position?"
- "Is this asking for net or total?"
- "What does a negative integral mean here?"
- "What quantity''s rate is given?"

MATERIALS:
- Net vs total comparison examples
- Velocity and position practice
- Real-world rate data
- Accumulation context problems

COMMON ERRORS AND RESPONSES:
Error: Treating ∫v(t)dt as total distance when v can be negative
Response: "∫v(t)dt gives displacement (net change in position). For total distance, integrate |v(t)| - you need the absolute value."

Error: Not recognizing that the given function is a rate
Response: "The problem gives rate of change. The integral of a rate gives the total change in the original quantity."

CONNECTION TO FUTURE LEARNING:
Net change connects integration to differential equations and is fundamental for accumulation problems in all sciences.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Net Change' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Accumulation Functions
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Accumulation Functions' AND grade_level_min = 13),
  'Accumulation Functions Topic Guide',
  'Comprehensive teaching approach for analyzing functions defined by integrals',
  'ACCUMULATION FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Definite integrals
- FTC Part 1 and 2
- Function analysis
- Area interpretation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand functions defined as integrals: g(x) = ∫ᵃˣ f(t)dt
2. Apply FTC Part 1: g''(x) = f(x)
3. Analyze accumulation functions (increasing, decreasing, extrema)
4. Interpret g(x) as accumulated area from a to x
5. Evaluate g at specific points

KEY CONCEPTS:
- g(x) = ∫ᵃˣ f(t)dt defines g in terms of accumulated area
- FTC 1: g''(x) = f(x) (derivative of integral is integrand)
- g(a) = 0 (integral from a to a)
- g increasing when f > 0, decreasing when f < 0

COMMON MISCONCEPTIONS:
- Confusing the variable of integration (t) with limit (x)
- Not recognizing g''(x) = f(x)
- Thinking g(x) requires explicit antiderivative
- Missing that extrema of g occur where f = 0

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Imagine a running total of rain accumulation. At each moment, your total is the integral of rain rate. This integral is itself a function of time."

2. DIRECT INSTRUCTION (15 minutes):
Define accumulation function. State FTC Part 1. Show g''(x) = f(x). Analyze g from graph of f. Find where g is increasing/decreasing, find extrema of g.

3. GUIDED PRACTICE (15 minutes):
Students analyze accumulation functions from given f graphs. Find g'' and g properties. Evaluate g at specific points using area.

4. INDEPENDENT APPLICATION (10 minutes):
Complex accumulation analysis. Chain rule with accumulation functions. Real-world accumulation problems.

DIFFERENTIATION:

For Struggling Learners:
- Focus on graphical interpretation
- Step-by-step FTC application
- Simple f functions
- Area accumulation visualization
- Clear variable distinction

For Advanced Learners:
- Chain rule cases: g(x) = ∫ᵃ^(h(x)) f(t)dt
- Leibniz integral rule
- Two variable limits
- Error function (erf) as example
- Define new functions via integrals

ASSESSMENT INDICATORS:
- Definition: Understands g(x) = ∫ᵃˣ f(t)dt
- FTC: Applies g''(x) = f(x) correctly
- Analysis: Determines g properties from f
- Evaluation: Calculates g values using area
- Interpretation: Explains g as accumulated quantity

REAL-WORLD CONNECTIONS:
- Cumulative distribution functions
- Running totals of any rate
- Savings account accumulation
- Environmental accumulation

VOCABULARY:
accumulation function, FTC Part 1, variable of integration, running total

QUESTIONING TECHNIQUES:
- "What is g''(x)?"
- "Where is g increasing?"
- "What is g(3) given the graph of f?"
- "Where does g have a maximum?"

MATERIALS:
- f graph to g analysis worksheets
- FTC Part 1 reference
- Accumulation visualization
- Multi-step analysis problems

COMMON ERRORS AND RESPONSES:
Error: For g(x) = ∫₀ˣ f(t)dt, writing g''(x) = f''(x)
Response: "By FTC Part 1, g''(x) = f(x), not f''(x). The derivative of the integral is the integrand itself."

Error: Confusing when to use x vs t
Response: "t is a dummy variable inside the integral. x is the upper limit and the variable for g. g(x) accumulates area from 0 to x."

CONNECTION TO FUTURE LEARNING:
Accumulation functions are central to advanced calculus, differential equations, and probability theory.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Accumulation Functions' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Volume by Cross Sections
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume by Cross Sections' AND grade_level_min = 13),
  'Volume by Cross Sections Topic Guide',
  'Comprehensive teaching approach for calculating volume using known cross sections',
  'VOLUME BY CROSS SECTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Definite integrals
- Area formulas (squares, triangles, circles)
- Function graphing
- 3D visualization

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand volume as integral of cross-sectional area
2. Set up V = ∫ A(x)dx for known cross sections
3. Calculate volumes with various cross-section shapes
4. Identify the cross-section from problem description
5. Visualize 3D solids from 2D base descriptions

KEY CONCEPTS:
- Volume = ∫ᵃᵇ A(x)dx where A(x) is cross-section area
- Common cross sections: squares, equilateral triangles, semicircles
- Base region determines integration limits
- Cross-section dimension often determined by base width

COMMON MISCONCEPTIONS:
- Confusing cross section with base
- Using wrong area formula for given shape
- Not relating cross-section size to base function
- Forgetting that A(x) varies with x

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"A loaf of bread has circular cross sections. Its volume is the sum of all those circles. Integration formalizes this ''slicing'' idea for any shape."

2. DIRECT INSTRUCTION (15 minutes):
Introduce cross-section concept. Show volume as stacked slices. Derive V = ∫A(x)dx. Practice with different cross-section shapes. Relate cross-section size to base.

3. GUIDED PRACTICE (15 minutes):
Students set up and compute volumes. Practice with squares, triangles, semicircles on various bases. Visualize the 3D solid.

4. INDEPENDENT APPLICATION (10 minutes):
Complex bases and cross sections. 3D visualization challenges. Real-world applications.

DIFFERENTIATION:

For Struggling Learners:
- Heavy 3D visualization support
- One cross-section type at a time
- Template for setup
- Simple base regions (triangles, rectangles)
- Draw cross sections explicitly

For Advanced Learners:
- Unusual cross-section shapes
- Optimization of volumes
- Cavalieri''s principle
- Connection to volumes of revolution
- Design challenges

ASSESSMENT INDICATORS:
- Concept: Understands volume as stacked areas
- Setup: Writes V = ∫A(x)dx correctly
- Area: Uses correct area formula for shape
- Relationship: Relates cross-section to base
- Calculation: Evaluates integral accurately

REAL-WORLD CONNECTIONS:
- Architectural volume estimation
- Material quantity calculation
- Manufacturing design
- Natural form volumes

VOCABULARY:
cross section, slice, A(x), base region, perpendicular

QUESTIONING TECHNIQUES:
- "What shape are the cross sections?"
- "What determines the size of each cross section?"
- "What is A(x) for this problem?"
- "What are the limits of integration?"

MATERIALS:
- 3D visualization tools
- Cross-section diagrams
- Area formula reference
- Step-by-step setup guide

COMMON ERRORS AND RESPONSES:
Error: Using A = side² for equilateral triangle instead of A = (√3/4)side²
Response: "For an equilateral triangle with side s, area = (√3/4)s². Make sure you''re using the correct formula for the given shape."

Error: Not relating cross-section size to base width
Response: "If cross-section side equals the base width, and base width is from y = 0 to y = f(x), then side = f(x). Substitute into your area formula."

CONNECTION TO FUTURE LEARNING:
Cross-section volumes prepare for volumes of revolution and extend to multivariable calculus applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume by Cross Sections' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- Volumes of Revolution
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volumes of Revolution' AND grade_level_min = 13),
  'Volumes of Revolution Topic Guide',
  'Comprehensive teaching approach for calculating volumes using disk, washer, and shell methods',
  'VOLUMES OF REVOLUTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Definite integrals
- Area between curves
- Rotation and 3D visualization
- Function analysis

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Set up disk method: V = π∫[r(x)]²dx
2. Apply washer method for hollow solids
3. Use shell method: V = 2π∫x·f(x)dx
4. Choose appropriate method for given problem
5. Handle rotation about different axes

KEY CONCEPTS:
- Disk: V = π∫ᵃᵇ [f(x)]² dx (rotate solid region)
- Washer: V = π∫ᵃᵇ ([R(x)]² - [r(x)]²) dx (hollow region)
- Shell: V = 2π∫ᵃᵇ x·f(x) dx (cylindrical shells)
- Method choice depends on axis and function form

COMMON MISCONCEPTIONS:
- Forgetting π in formulas
- Confusing disk with washer
- Wrong radius for rotation axis not on coordinate axis
- Not knowing when to use shell vs disk/washer

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Spin a curve around an axis and you get a 3D solid - like a vase or a football. We can calculate these volumes precisely with integration."

2. DIRECT INSTRUCTION (15 minutes):
Derive disk method from cylindrical cross sections. Extend to washer for hollows. Introduce shell method. Compare approaches. Show axis adjustments.

3. GUIDED PRACTICE (15 minutes):
Students calculate volumes using each method. Practice method selection. Handle various axes of rotation.

4. INDEPENDENT APPLICATION (10 minutes):
Complex rotation problems. Method comparison. Design applications.

DIFFERENTIATION:

For Struggling Learners:
- One method at a time
- Heavy visualization support
- Formula reference card
- Simple functions first
- Always draw the solid

For Advanced Learners:
- Derive shell method
- Non-standard rotation axes
- Compare multiple methods on same problem
- Surface area of revolution
- Pappus''s theorems

ASSESSMENT INDICATORS:
- Setup: Correctly applies chosen method
- Radius: Identifies correct radius for disk/washer
- Shell: Uses shell method properly
- Selection: Chooses efficient method
- Axis: Adjusts for non-origin axes

REAL-WORLD CONNECTIONS:
- Pottery and vessel design
- Engineering of rotational parts
- Container volume calculation
- Sports equipment design

VOCABULARY:
disk method, washer method, shell method, volume of revolution, radius of rotation

QUESTIONING TECHNIQUES:
- "What shape is created when rotating?"
- "What is the radius at each x?"
- "Would disk or shell method be easier here?"
- "How does the axis affect the setup?"

MATERIALS:
- 3D visualization tools
- Method comparison chart
- Formula reference sheet
- Rotation diagrams

COMMON ERRORS AND RESPONSES:
Error: Forgetting π: writing V = ∫[f(x)]² dx
Response: "Each disk has area πr². Don''t forget the π: V = π∫[f(x)]² dx."

Error: For rotation about y = 2, using radius f(x) instead of |2 - f(x)|
Response: "When axis isn''t x-axis, radius is distance from curve to axis. For rotation about y = 2: radius = |2 - f(x)|."

CONNECTION TO FUTURE LEARNING:
Volumes of revolution extend to surface area of revolution, moments, and centers of mass.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volumes of Revolution' AND grade_level_min = 13)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY: Calculus Topic Prompts - COMPLETE
-- ============================================================================
-- Functions Review: 6 topics ✓
-- Introduction to Limits: 5 topics ✓
-- Calculate Limits: 6 topics ✓
-- Continuity: 5 topics ✓
-- Introduction to Derivatives: 6 topics ✓
-- Derivative Rules: 10 topics ✓
-- Applications of Derivatives: 10 topics ✓
-- Introduction to Integration: 6 topics ✓
-- Antiderivatives: 7 topics ✓
-- Applications of Integration: 7 topics ✓
-- Total: 62 topic prompts
-- ============================================================================
