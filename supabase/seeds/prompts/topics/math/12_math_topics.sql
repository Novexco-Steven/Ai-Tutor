-- Grade 12 Math (Pre-Calculus) Topic Prompts
-- Comprehensive teaching guides for each topic

-- =====================================================
-- UNIT: FUNCTIONS AND THEIR GRAPHS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Fundamentals' AND grade_level_min = 12),
  'Function Fundamentals Topic Guide', 'Domain, range, and evaluation',
  'FUNCTION FUNDAMENTALS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need solid understanding of function notation f(x), domain and range concepts, graphing in the coordinate plane, and familiarity with various function families (linear, quadratic, polynomial, rational, exponential, logarithmic).

LEARNING OBJECTIVES:
- Determine domain and range from graphs, equations, and contexts
- Evaluate functions including piecewise functions
- Analyze function behavior: increasing, decreasing, constant
- Identify local and absolute extrema
- Describe symmetry (even and odd functions)
- Interpret function notation in context

KEY CONCEPTS:
1) Function: each input has exactly one output (vertical line test)
2) Domain: all valid inputs; Range: all possible outputs
3) Domain restrictions: division by zero, negative under even roots, log of non-positive
4) Even function: f(-x) = f(x), symmetric about y-axis
5) Odd function: f(-x) = -f(x), symmetric about origin
6) Local vs. absolute extrema; endpoints may be absolute extrema

COMMON MISCONCEPTIONS:
- Confusing domain with range
- Missing domain restrictions from combined operations
- Thinking all functions are either even or odd (most are neither)
- Confusing local maximum with absolute maximum
- Not recognizing that range requires analyzing output values

TEACHING SEQUENCE:
Review function definition and vertical line test. Analyze domain restrictions systematically by function type. Explore range through graphical analysis. Introduce piecewise functions as natural contexts. Define even/odd through algebraic tests and visual inspection. Analyze intervals of increase/decrease and extrema using graphs. Connect to real-world contexts: restricted domains in applications.

DIFFERENTIATION:
Struggling learners: Create domain restriction checklists, use interval notation reference, focus on graphical analysis. Advanced learners: Explore compositions of domains, investigate functional equations, preview limit concepts.

VOCABULARY:
Function, domain, range, piecewise function, even function, odd function, increasing, decreasing, local extrema, absolute extrema, interval notation.

CONNECTION TO FUTURE LEARNING:
Rigorous function understanding is essential for calculus, where domain analysis continues and derivatives describe increase/decrease precisely. These concepts underpin all advanced mathematics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Fundamentals' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Operations' AND grade_level_min = 12),
  'Function Operations Topic Guide', 'Sum, difference, product, quotient, composition',
  'FUNCTION OPERATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand function notation, domain and range, operations with algebraic expressions, and basic graphing. Experience with multiple function types provides context for operations.

LEARNING OBJECTIVES:
- Perform arithmetic operations on functions (f+g, f-g, fg, f/g)
- Determine domains of combined functions
- Compose functions: (f∘g)(x) = f(g(x))
- Decompose composite functions
- Evaluate compositions numerically and algebraically
- Interpret operations in applied contexts

KEY CONCEPTS:
1) (f+g)(x) = f(x) + g(x); similarly for subtraction, multiplication
2) (f/g)(x) = f(x)/g(x), domain excludes where g(x) = 0
3) Domain of combined function: intersection of individual domains (with additional restrictions for division)
4) Composition f∘g means "f of g of x"—g happens first, then f
5) Order matters in composition: f∘g ≠ g∘f in general
6) Decomposition: expressing h(x) as f(g(x))

COMMON MISCONCEPTIONS:
- Thinking f∘g equals f×g (composition vs. multiplication)
- Reversing order of composition
- Forgetting additional domain restrictions for quotient
- Not substituting the entire inner function
- Assuming f∘g = g∘f (commutative error)

TEACHING SEQUENCE:
Start with arithmetic operations—relatively straightforward extension. Carefully address domain restrictions, especially for quotients. Introduce composition through real-world examples (price with tax, then discount). Practice reading composition notation both directions. Work composition numerically before algebraically. Explore decomposition as reverse skill. Verify non-commutativity with specific examples.

DIFFERENTIATION:
Struggling learners: Use function machines for composition visualization, practice substitution systematically, create step-by-step templates. Advanced learners: Explore fixed points of composition, investigate iterated functions, connect to inverse function verification.

VOCABULARY:
Function operations, sum, difference, product, quotient, composition, composite function, decomposition, domain restriction, function machine.

CONNECTION TO FUTURE LEARNING:
Composition is essential for the chain rule in calculus. Understanding function operations supports transformations and modeling. These skills appear throughout higher mathematics and physics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Operations' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inverse Functions' AND grade_level_min = 12),
  'Inverse Functions Topic Guide', 'Finding and verifying inverse functions',
  'INVERSE FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need understanding of one-to-one functions, composition of functions, solving equations for a variable, and graphing including reflections. Domain and range concepts are essential.

LEARNING OBJECTIVES:
- Determine if a function has an inverse (one-to-one test)
- Find inverse functions algebraically
- Verify inverse relationships through composition
- Graph inverse functions as reflections over y = x
- Understand domain/range interchange
- Apply restricted domains to create inverses

KEY CONCEPTS:
1) Only one-to-one functions have inverses (horizontal line test)
2) f⁻¹(f(x)) = x and f(f⁻¹(x)) = x verify inverses
3) To find f⁻¹: swap x and y, solve for y
4) Graph of f⁻¹ is reflection of f over line y = x
5) Domain of f = Range of f⁻¹ and vice versa
6) f⁻¹(x) is NOT 1/f(x)—different notation

COMMON MISCONCEPTIONS:
- Confusing f⁻¹(x) with 1/f(x) (reciprocal vs. inverse)
- Not restricting domain when function isn''t one-to-one
- Errors in algebraic solving process
- Forgetting to verify inverse through composition
- Not understanding that points (a,b) and (b,a) swap

TEACHING SEQUENCE:
Begin with concrete examples: Fahrenheit/Celsius conversion, encoding/decoding. Establish one-to-one requirement through horizontal line test. Demonstrate algebraic process: swap variables, solve. Verify through composition—this should always work. Graph pairs of inverse functions, observe reflection symmetry. Address restricted domains for non-one-to-one functions (like x²). Connect to logarithms as inverses of exponentials.

DIFFERENTIATION:
Struggling learners: Practice solving for y extensively, use point-swapping for graphing, verify numerically first. Advanced learners: Explore implicit inverse functions, investigate self-inverse functions, connect to abstract algebra concepts.

VOCABULARY:
Inverse function, one-to-one, horizontal line test, composition verification, reflection, domain restriction, bijection.

CONNECTION TO FUTURE LEARNING:
Inverse functions are central to logarithms, inverse trigonometric functions, and solving equations generally. Calculus explores derivatives of inverse functions. Understanding inverses conceptually supports all advanced mathematics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inverse Functions' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: TRIGONOMETRIC FUNCTIONS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angles and Radian Measure' AND grade_level_min = 12),
  'Angles and Radian Measure Topic Guide', 'Converting and applications',
  'ANGLES AND RADIAN MEASURE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need understanding of degree measure, circle properties (circumference = 2πr), unit conversions, and basic geometric angle concepts. Prior trigonometry exposure from geometry helps.

LEARNING OBJECTIVES:
- Understand radian measure definition
- Convert between degrees and radians fluently
- Find coterminal angles in both measures
- Calculate arc length using s = rθ
- Calculate sector area using A = ½r²θ
- Apply radian measure to real-world contexts

KEY CONCEPTS:
1) Radian: angle subtending arc length equal to radius; 1 radian ≈ 57.3°
2) Full rotation: 360° = 2π radians; half rotation: 180° = π radians
3) Conversion: radians = degrees × π/180; degrees = radians × 180/π
4) Arc length: s = rθ (θ in radians)
5) Sector area: A = ½r²θ (θ in radians)
6) Coterminal angles differ by ±2π (or ±360°)

COMMON MISCONCEPTIONS:
- Forgetting θ must be in radians for arc length/sector area formulas
- Confusing π with 180 (π is a number ≈ 3.14159)
- Improper conversion factor use
- Not recognizing common radian values (π/6, π/4, π/3, π/2)
- Thinking radians and degrees are just different notations for same concept

TEACHING SEQUENCE:
Define radian through arc length = radius relationship. Use string or physical circles to demonstrate. Develop conversion formulas from 2π = 360°. Memorize key equivalences: 30° = π/6, 45° = π/4, 60° = π/3, 90° = π/2. Derive arc length and sector area formulas from proportions. Apply to angular velocity, rotating objects, and circular motion.

DIFFERENTIATION:
Struggling learners: Create conversion reference tables, practice key angles repeatedly, use unit circles physically. Advanced learners: Explore angular velocity applications, connect to calculus (arc length in parametric), investigate history of radian development.

VOCABULARY:
Radian, degree, arc length, sector area, coterminal angles, angular measure, central angle, intercepted arc, standard position.

CONNECTION TO FUTURE LEARNING:
Radians are essential for calculus—trigonometric derivatives only work in radians. All advanced mathematics and physics use radians as the natural angle measure. Understanding radians deeply supports all further trigonometry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angles and Radian Measure' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Trigonometric Functions' AND grade_level_min = 12),
  'Trigonometric Functions Topic Guide', 'Unit circle definitions and values',
  'TRIGONOMETRIC FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need understanding of radian measure, coordinate plane, right triangle trigonometry from geometry, and function concepts. Comfort with special right triangles (30-60-90, 45-45-90) is essential.

LEARNING OBJECTIVES:
- Define trig functions using the unit circle
- Evaluate trig functions at key angles without calculator
- Understand the relationship between unit circle and right triangle definitions
- Identify signs of trig functions in all quadrants
- Find reference angles and use them to evaluate
- Extend trig to all real numbers (not just acute angles)

KEY CONCEPTS:
1) Unit circle: circle with radius 1 centered at origin
2) For point (x,y) on unit circle at angle θ: cos θ = x, sin θ = y
3) tan θ = sin θ/cos θ = y/x
4) Reciprocal functions: sec = 1/cos, csc = 1/sin, cot = 1/tan
5) Reference angle: acute angle to x-axis; determines magnitude
6) ASTC: All trig positive in QI, Sin in QII, Tan in QIII, Cos in QIV

COMMON MISCONCEPTIONS:
- Confusing (cos θ, sin θ) order on unit circle
- Not recognizing that unit circle extends right triangle definitions
- Sign errors in different quadrants
- Confusing reference angle with the angle itself
- Thinking trig functions only apply to triangles

TEACHING SEQUENCE:
Build unit circle from special right triangles inscribed in circle. Establish (cos θ, sin θ) as coordinates—memorable because alphabetical. Fill in key values: 0, π/6, π/4, π/3, π/2 and extend to all quadrants using symmetry. Practice evaluation without calculator extensively. Connect back to right triangle definitions for acute angles. Introduce all six functions and their relationships.

DIFFERENTIATION:
Struggling learners: Build unit circle incrementally, use symmetry patterns, create personal reference circles. Advanced learners: Explore trig functions as ratios of legs in any circle, investigate inverse trig domain issues, preview trig identities.

VOCABULARY:
Unit circle, sine, cosine, tangent, cotangent, secant, cosecant, reference angle, quadrant, ASTC, terminal side.

CONNECTION TO FUTURE LEARNING:
Unit circle understanding is fundamental to graphing trig functions, proving identities, and solving trig equations. Calculus derivatives of trig functions rely on this foundation. Applications span physics, engineering, and music.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Trigonometric Functions' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Trig Functions' AND grade_level_min = 12),
  'Graphing Trig Functions Topic Guide', 'Amplitude, period, phase shifts',
  'GRAPHING TRIGONOMETRIC FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need thorough understanding of unit circle values, function transformations (shifts, stretches), and the behavior of parent functions. Radian measure fluency is essential.

LEARNING OBJECTIVES:
- Graph y = sin x and y = cos x as parent functions
- Identify and apply amplitude changes
- Identify and apply period changes
- Apply horizontal and vertical shifts (phase shift, vertical translation)
- Write equations from graphs
- Graph tangent, cotangent, secant, and cosecant functions

KEY CONCEPTS:
1) Parent functions: sin and cos have period 2π, amplitude 1, midline y = 0
2) y = A sin(Bx - C) + D: amplitude = |A|, period = 2π/B, phase shift = C/B, vertical shift = D
3) Amplitude affects height; B affects compression/stretch of period
4) Phase shift is horizontal translation; D is vertical translation
5) Tangent and cotangent have period π; asymptotes where undefined
6) Secant and cosecant are reciprocals with asymptotes where sin/cos = 0

COMMON MISCONCEPTIONS:
- Confusing amplitude with range
- Calculating phase shift incorrectly (C/B, not just C)
- Not recognizing that B stretches/compresses horizontally
- Mixing up which transformations affect what
- Forgetting that |A| is amplitude (negative reflects, doesn''t change amplitude)

TEACHING SEQUENCE:
Graph parent functions y = sin x and y = cos x from unit circle values. Introduce transformations one at a time: amplitude (vertical stretch), then period (horizontal change), then shifts. Practice reading transformations from equations. Practice writing equations from graphs. Extend to tangent with its asymptotes. Derive secant/cosecant from reciprocal relationships. Apply to sound waves, tides, and periodic phenomena.

DIFFERENTIATION:
Struggling learners: Use transformation reference cards, graph parent function first then transform, use technology to explore. Advanced learners: Explore damped oscillations, investigate beats and interference patterns, connect to Fourier series concepts.

VOCABULARY:
Amplitude, period, frequency, phase shift, vertical shift, midline, parent function, sinusoid, asymptote.

CONNECTION TO FUTURE LEARNING:
Graphing trig functions connects to harmonic motion in physics, signal processing, and music theory. Calculus explores derivatives and integrals of these functions. Understanding transformations supports all function analysis.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Trig Functions' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Trig Identities' AND grade_level_min = 12),
  'Trig Identities Topic Guide', 'Fundamental identities and verification',
  'TRIGONOMETRIC IDENTITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need thorough understanding of trig functions, algebraic manipulation skills, fraction operations, and factoring. Comfort with the unit circle provides conceptual grounding for identities.

LEARNING OBJECTIVES:
- Recall and apply fundamental identities (Pythagorean, reciprocal, quotient)
- Simplify trigonometric expressions
- Verify trigonometric identities
- Use sum and difference formulas
- Apply double-angle formulas
- Solve problems using appropriate identities

KEY CONCEPTS:
1) Pythagorean: sin²θ + cos²θ = 1; tan²θ + 1 = sec²θ; 1 + cot²θ = csc²θ
2) Reciprocal: csc θ = 1/sin θ, sec θ = 1/cos θ, cot θ = 1/tan θ
3) Quotient: tan θ = sin θ/cos θ, cot θ = cos θ/sin θ
4) Sum: sin(A + B) = sin A cos B + cos A sin B; cos(A + B) = cos A cos B - sin A sin B
5) Double-angle: sin 2θ = 2 sin θ cos θ; cos 2θ = cos²θ - sin²θ
6) Verification strategy: work one side to match the other, never cross equals sign

COMMON MISCONCEPTIONS:
- Thinking sin(A + B) = sin A + sin B (additive error)
- "Proving" identities by manipulating both sides simultaneously
- Not recognizing which identity to apply
- Confusing identity (always true) with equation (true for specific values)
- Sign errors in difference formulas

TEACHING SEQUENCE:
Derive Pythagorean identities from unit circle: x² + y² = 1 means cos²θ + sin²θ = 1. Show how other Pythagorean forms come from division. Introduce verification protocol: work one side only. Practice simplification before verification. Develop sum formulas through geometric construction or rotation matrices. Derive double-angle from sum formulas. Apply to evaluating expressions and simplifying.

DIFFERENTIATION:
Struggling learners: Create identity reference sheets, practice recognizing patterns, start with simpler verifications. Advanced learners: Derive formulas from complex numbers, explore product-to-sum identities, investigate half-angle formulas.

VOCABULARY:
Identity, Pythagorean identity, reciprocal identity, quotient identity, sum formula, difference formula, double-angle formula, verification.

CONNECTION TO FUTURE LEARNING:
Trig identities are essential for calculus integration techniques, particularly trigonometric substitution. They appear throughout physics and engineering. The verification skill develops mathematical proof abilities.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Trig Identities' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: ANALYTIC GEOMETRY
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parabolas' AND grade_level_min = 12),
  'Parabolas Topic Guide', 'Focus, directrix, and equations',
  'PARABOLAS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need understanding of quadratic functions, vertex form, distance formula, completing the square, and graphing in the coordinate plane. Prior exposure to conics conceptually helps establish context.

LEARNING OBJECTIVES:
- Understand parabola as locus of points equidistant from focus and directrix
- Write equations in standard form with vertex at origin
- Write equations with vertex at (h, k)
- Identify focus, directrix, and axis of symmetry from equations
- Graph parabolas in all orientations (vertical and horizontal)
- Apply parabolas to real-world contexts (satellites, headlights)

KEY CONCEPTS:
1) Definition: set of all points equidistant from focus and directrix
2) Standard forms: (x - h)² = 4p(y - k) opens up/down; (y - k)² = 4p(x - h) opens left/right
3) p = distance from vertex to focus = distance from vertex to directrix
4) p > 0: opens up/right; p < 0: opens down/left
5) Focus is inside curve; directrix is outside
6) Axis of symmetry passes through focus and vertex

COMMON MISCONCEPTIONS:
- Confusing this conic form with the quadratic function form y = ax² + bx + c
- Getting p sign backwards (direction of opening)
- Confusing focus location with vertex
- Not recognizing horizontal parabolas
- Forgetting that squared term determines orientation

TEACHING SEQUENCE:
Define parabola through the distance property—fold paper to create parabola. Derive equation from distance formula: distance to focus = distance to directrix. Start with vertex at origin for simplicity. Connect p to the coefficient. Translate to vertex at (h, k). Practice all four orientations. Apply to reflective properties: satellite dishes, flashlight reflectors, suspension bridges.

DIFFERENTIATION:
Struggling learners: Focus on vertical parabolas first, use graphing checklists, connect to familiar quadratic forms. Advanced learners: Derive reflective property mathematically, explore parametric forms, investigate focal chord properties.

VOCABULARY:
Parabola, focus, directrix, vertex, axis of symmetry, latus rectum, standard form, reflective property.

CONNECTION TO FUTURE LEARNING:
Parabolas connect to all conic sections studied next. Calculus explores surface area and volume of parabolic shapes. Understanding locus definitions prepares for advanced geometry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parabolas' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ellipses and Hyperbolas' AND grade_level_min = 12),
  'Ellipses and Hyperbolas Topic Guide', 'Definitions, equations, and properties',
  'ELLIPSES AND HYPERBOLAS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need understanding of parabolas as conic sections, distance formula, completing the square, and graphing. Comfort with algebraic manipulation and understanding of asymptotes from rational functions helps.

LEARNING OBJECTIVES:
- Understand ellipse as locus (sum of distances to foci is constant)
- Understand hyperbola as locus (difference of distances to foci is constant)
- Write equations in standard form for both conics
- Identify center, vertices, foci, and (for hyperbola) asymptotes
- Graph both conics in horizontal and vertical orientations
- Apply to orbits, acoustics, and navigation

KEY CONCEPTS:
1) Ellipse: sum of distances to two foci equals 2a (major axis length)
2) Ellipse equation: (x-h)²/a² + (y-k)²/b² = 1; c² = a² - b²
3) Hyperbola: difference of distances to foci equals 2a
4) Hyperbola equation: (x-h)²/a² - (y-k)²/b² = 1; c² = a² + b²
5) Major axis for ellipse contains foci; transverse axis for hyperbola
6) Hyperbola asymptotes: y - k = ±(b/a)(x - h)

COMMON MISCONCEPTIONS:
- Confusing which conic has + and which has - between terms
- Getting a, b, c relationship wrong for each conic
- Not recognizing which axis is major/transverse
- Asymptote slope errors
- Thinking center is at origin when it''s at (h, k)

TEACHING SEQUENCE:
Define ellipse through string activity (thumbtacks as foci). Derive equation from distance formula. Identify a as larger denominator for horizontal ellipse. Transition to hyperbola through difference definition. Note the sign difference in equations and c² relationships. Practice identifying features from equations. Graph systematically using center, vertices, and (for hyperbola) asymptote box. Apply to planetary orbits and whispering galleries.

DIFFERENTIATION:
Struggling learners: Create comparison charts, use color-coding for different features, practice one conic at a time. Advanced learners: Explore eccentricity, investigate confocal conics, connect to orbital mechanics.

VOCABULARY:
Ellipse, hyperbola, focus (foci), center, vertex (vertices), major axis, minor axis, transverse axis, conjugate axis, asymptote, eccentricity.

CONNECTION TO FUTURE LEARNING:
Conic sections appear throughout physics (orbits, trajectories), engineering (antenna design), and calculus (area and arc length). Understanding the locus definitions supports advanced geometry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ellipses and Hyperbolas' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parametric Equations' AND grade_level_min = 12),
  'Parametric Equations Topic Guide', 'Representing curves with parameter',
  'PARAMETRIC EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need understanding of functions, graphing in the coordinate plane, trigonometric functions, and the unit circle. Solving equations for a variable and eliminating parameters algebraically are key skills.

LEARNING OBJECTIVES:
- Understand parametric representation: x = f(t), y = g(t)
- Graph parametric curves by plotting points
- Eliminate the parameter to find rectangular equation
- Write parametric equations for given curves
- Understand parameter as time in motion contexts
- Apply parametric equations to projectile motion

KEY CONCEPTS:
1) Parameter t determines both x and y coordinates
2) Parameter often represents time, allowing direction of motion
3) Same curve can have different parametric representations
4) Elimination: solve one equation for t, substitute into other
5) For trig parametrics: use Pythagorean identity to eliminate t
6) Parametric equations can represent curves that aren''t functions

COMMON MISCONCEPTIONS:
- Treating parameter as a spatial variable
- Not considering restricted domains after elimination
- Forgetting direction and speed information when converting to rectangular
- Assuming all parametric curves are simple shapes
- Not matching t-intervals to actual curve

TEACHING SEQUENCE:
Introduce through motion context: position at time t. Plot points by making a table with t, x(t), y(t). Connect to rectangular form through elimination. Show circle parametrization: x = cos t, y = sin t, and verify with Pythagorean identity. Explore projectile motion: x = v₀t cos θ, y = v₀t sin θ - ½gt². Show how same curve has multiple parametrizations.

DIFFERENTIATION:
Struggling learners: Use tables extensively, focus on linear parametrics first, practice elimination techniques. Advanced learners: Explore cycloids and other complex curves, investigate parametric calculus preview, connect to computer graphics.

VOCABULARY:
Parameter, parametric equations, eliminate the parameter, rectangular equation, directed curve, orientation, position vector.

CONNECTION TO FUTURE LEARNING:
Parametric equations are essential for calculus of motion, including velocity and acceleration vectors. Computer graphics relies on parametric representations. Physics uses parametric descriptions of trajectories throughout.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parametric Equations' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: LIMITS AND INTRODUCTION TO CALCULUS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Introduction to Limits' AND grade_level_min = 12),
  'Introduction to Limits Topic Guide', 'Concept and graphical analysis',
  'INTRODUCTION TO LIMITS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need strong understanding of functions, graphing, evaluating expressions, and rational functions including behavior near asymptotes. Intuition about "approaching" values helps establish the concept.

LEARNING OBJECTIVES:
- Understand the limit concept intuitively
- Estimate limits from graphs
- Calculate limits from tables of values
- Evaluate limits algebraically using direct substitution
- Recognize indeterminate forms and apply algebraic techniques
- Understand one-sided limits and their connection to two-sided limits

KEY CONCEPTS:
1) lim(x→a) f(x) = L means f(x) approaches L as x approaches a
2) Limit exists if left and right limits agree
3) Limit can exist even if f(a) is undefined or different from L
4) Direct substitution works when f is continuous at a
5) Indeterminate forms (0/0, ∞/∞) require algebraic manipulation
6) Techniques: factoring, rationalizing, common denominators

COMMON MISCONCEPTIONS:
- Thinking limit equals function value (not always true)
- Assuming limit doesn''t exist when function is undefined
- Giving up when direct substitution yields 0/0
- Confusing limit with asymptote behavior
- Not checking both sides for existence

TEACHING SEQUENCE:
Introduce through real-world contexts: approaching but never reaching. Use graphs to estimate limits visually. Explore numerically with tables showing x approaching a from both sides. Practice direct substitution for continuous functions. Encounter indeterminate forms and develop algebraic strategies. Distinguish one-sided from two-sided limits. Connect to asymptotic behavior for limits at infinity.

DIFFERENTIATION:
Struggling learners: Use numerical exploration heavily, focus on graphical interpretation, practice substitution in stages. Advanced learners: Explore formal epsilon-delta definition, investigate squeeze theorem, preview derivative definition.

VOCABULARY:
Limit, approaches, one-sided limit, two-sided limit, indeterminate form, continuous, direct substitution, limit at infinity, vertical asymptote.

CONNECTION TO FUTURE LEARNING:
Limits are the foundation of calculus—derivatives and integrals are both defined using limits. Understanding limit concepts deeply prepares students for the rigor of calculus. Applications extend throughout mathematics and science.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Introduction to Limits' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Continuity' AND grade_level_min = 12),
  'Continuity Topic Guide', 'Continuous functions and discontinuities',
  'CONTINUITY - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need solid understanding of limits, function evaluation, piecewise functions, and graphing. Ability to evaluate limits algebraically and recognize indeterminate forms is essential.

LEARNING OBJECTIVES:
- Define continuity at a point using three conditions
- Identify points of discontinuity from graphs
- Classify discontinuities (removable, jump, infinite)
- Determine continuity from algebraic expressions
- Apply Intermediate Value Theorem
- Make piecewise functions continuous

KEY CONCEPTS:
1) Three conditions for continuity at a: f(a) exists, lim(x→a) f(x) exists, lim(x→a) f(x) = f(a)
2) Removable discontinuity: limit exists but doesn''t equal f(a) (or f(a) undefined)—"hole"
3) Jump discontinuity: left and right limits both exist but differ
4) Infinite discontinuity: at least one side has infinite limit—vertical asymptote
5) Continuous on interval: continuous at every point in interval
6) Intermediate Value Theorem: continuous function takes all values between f(a) and f(b)

COMMON MISCONCEPTIONS:
- Thinking a hole means the limit doesn''t exist
- Confusing types of discontinuity
- Not checking all three conditions
- Assuming function is discontinuous if there''s any break in formula
- Misapplying IVT when function isn''t continuous

TEACHING SEQUENCE:
Define continuity through "pencil test"—can draw without lifting. Formalize with three conditions. Examine graphs to identify discontinuity types. Analyze algebraic expressions for potential discontinuities (division by zero, piecewise joints). Practice making piecewise functions continuous by finding appropriate values. Introduce IVT through root-finding application. Connect to real-world contexts where continuity matters.

DIFFERENTIATION:
Struggling learners: Focus on graphical identification first, create flowcharts for checking conditions, practice piecewise analysis. Advanced learners: Explore uniform continuity concept, investigate proofs of IVT consequences, preview differentiability.

VOCABULARY:
Continuous, discontinuous, removable discontinuity, jump discontinuity, infinite discontinuity, continuous on an interval, Intermediate Value Theorem.

CONNECTION TO FUTURE LEARNING:
Continuity is essential for calculus—differentiability requires continuity, and integration relies on continuous function properties. IVT is used throughout analysis. Understanding discontinuities helps with improper integrals.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Continuity' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rate of Change and Derivatives' AND grade_level_min = 12),
  'Rate of Change and Derivatives Topic Guide', 'Introduction to derivatives',
  'RATE OF CHANGE AND DERIVATIVES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need understanding of limits, slope as rate of change, function evaluation, and algebraic manipulation. Familiarity with velocity as rate of change of position provides physical intuition.

LEARNING OBJECTIVES:
- Understand average rate of change as slope of secant line
- Understand instantaneous rate of change as limit of average rates
- Connect instantaneous rate to slope of tangent line
- Calculate derivatives using the limit definition
- Apply derivatives to velocity and acceleration
- Interpret derivative in real-world contexts

KEY CONCEPTS:
1) Average rate of change: [f(b) - f(a)] / (b - a) = secant slope
2) Instantaneous rate: lim(h→0) [f(a+h) - f(a)] / h = tangent slope
3) Derivative f''(x) gives instantaneous rate of change at each x
4) Velocity is derivative of position; acceleration is derivative of velocity
5) Derivative measures sensitivity of output to input
6) Basic rules preview: power rule makes calculation efficient

COMMON MISCONCEPTIONS:
- Confusing average and instantaneous rates
- Thinking derivative is just slope (missing limit concept)
- Algebraic errors in limit calculations
- Not recognizing derivative as a function, not just a number
- Confusing velocity (rate) with position

TEACHING SEQUENCE:
Begin with average rate of change in context: average speed, population growth rate. Visualize as secant line slope. Motivate instantaneous rate: speedometer reading, not trip average. Shrink the interval using limit concept. Connect to tangent line geometrically. Calculate derivatives using definition for simple functions (f(x) = x², f(x) = x³). Apply to motion: position, velocity, acceleration. Preview power rule efficiency.

DIFFERENTIATION:
Struggling learners: Focus on numerical approximations first, use motion contexts, calculate derivatives step-by-step. Advanced learners: Explore other derivative rules, investigate non-differentiable functions, connect to optimization preview.

VOCABULARY:
Average rate of change, instantaneous rate of change, secant line, tangent line, derivative, velocity, acceleration, difference quotient, limit definition.

CONNECTION TO FUTURE LEARNING:
This is the gateway to differential calculus. Derivatives enable optimization, related rates, and curve analysis. Understanding rate of change conceptually supports physics, economics, and all sciences.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rate of Change and Derivatives' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;
