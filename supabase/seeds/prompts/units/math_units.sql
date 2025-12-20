-- ============================================================================
-- MATH UNIT PROMPTS (ALL GRADES K-12)
-- ============================================================================
-- Comprehensive pedagogical prompts for each Math unit
-- Each prompt provides teaching methodology, learning progressions,
-- common misconceptions, and instructional strategies
-- ============================================================================

-- ============================================================================
-- KINDERGARTEN MATH UNITS
-- ============================================================================

-- Counting and Cardinality (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Counting and Cardinality' AND grade_level = 0),
  'Counting and Cardinality Teaching Guide',
  'Comprehensive pedagogical approach for teaching counting and cardinality in Kindergarten',
  'COUNTING AND CARDINALITY - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This foundational unit establishes the basis for all future mathematical understanding. Students develop number sense by learning that numbers represent quantities, that counting follows a predictable sequence, and that the last number counted tells "how many." This understanding is critical for later operations, place value, and mathematical reasoning.

LEARNING PROGRESSION:
1. Rote counting (saying numbers in order) - verbal sequence to 20, then 100
2. One-to-one correspondence (matching one count to one object)
3. Cardinality (understanding the last number tells how many)
4. Counting objects in different arrangements
5. Writing numbers 0-20
6. Comparing quantities (more, less, same)

DEVELOPMENTAL CONSIDERATIONS:
Kindergartners are at a concrete operational stage. They need physical objects, movement, and multi-sensory experiences. Attention spans are short (5-10 minutes), so rotate activities frequently. Many children enter with varying counting abilities - differentiation is essential.

COMMON MISCONCEPTIONS:
- Reciting numbers without understanding quantity (rote counting without cardinality)
- Skipping objects or counting same object twice
- Believing a longer line of objects must have "more" regardless of spacing
- Not understanding that the last number represents the total quantity
- Thinking numbers are just labels, not quantities
- Confusing "5" with "15" or other teen numbers

INSTRUCTIONAL STRATEGIES:

Concrete Manipulatives:
Use counters, cubes, bears, buttons, and everyday objects. Let students touch and move each object as they count. This develops one-to-one correspondence.

Movement and Songs:
Incorporate counting songs, finger plays, and movement activities. Count jumping jacks, claps, or steps. Songs like "Five Little Monkeys" reinforce cardinality.

Visual Representations:
Use ten-frames, number paths, and dot patterns. These build mental images of quantities that support later addition and subtraction.

Counting Collections:
Provide bags of objects for students to count and recount. Ask "How many?" after counting to reinforce cardinality.

Games and Play:
Board games with dice, counting games like "How Many Are Hiding?", and treasure hunts for a specific quantity make counting purposeful and engaging.

ASSESSMENT INDICATORS:
- Can count to 100 by ones and tens
- Counts objects accurately (touches each once, says one number per object)
- Answers "how many" without recounting
- Writes numbers 0-20
- Compares groups and identifies more, less, or same
- Counts objects regardless of arrangement

REAL-WORLD CONNECTIONS:
Connect counting to classroom routines: attendance, snack distribution, materials management. Count during transitions, on the playground, and in stories. Help students see numbers everywhere in their world.

VOCABULARY TO DEVELOP:
count, number, how many, more, less, same, equal, zero, one through twenty, compare',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Counting and Cardinality' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- Operations and Algebraic Thinking (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Operations and Algebraic Thinking' AND grade_level = 0),
  'Operations and Algebraic Thinking Teaching Guide',
  'Comprehensive pedagogical approach for teaching operations in Kindergarten',
  'OPERATIONS AND ALGEBRAIC THINKING - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit introduces the fundamental operations of addition and subtraction through concrete experiences. Students develop understanding that addition means "putting together" or "adding to," while subtraction means "taking apart" or "taking from." The focus is on conceptual understanding, not memorizing facts.

LEARNING PROGRESSION:
1. Acting out addition and subtraction stories
2. Understanding addition as combining groups
3. Understanding subtraction as removing or comparing
4. Representing operations with objects and drawings
5. Fluency with addition and subtraction within 5
6. Decomposing numbers within 10

DEVELOPMENTAL CONSIDERATIONS:
Young learners need to physically act out operations before representing them symbolically. Use story contexts they can visualize. Keep numbers small (within 5, then 10) until conceptual understanding is solid.

COMMON MISCONCEPTIONS:
- Thinking addition always makes numbers "bigger" (0 + 3 = 3)
- Not connecting subtraction to "taking away" in real contexts
- Difficulty understanding that 3 + 2 = 5 and 2 + 3 = 5 (commutative property)
- Confusing "more" with addition when comparing (Who has more? vs. How many more?)
- Believing subtraction can only be "taking away" (not seeing comparison or missing addend)

INSTRUCTIONAL STRATEGIES:

Story Problems First:
Start with story contexts before equations. "Three birds were on a branch. Two more flew over. How many birds are there now?" Students act out, draw, and discuss.

Manipulative Modeling:
Use counters, cubes, or fingers to physically model operations. Students should move objects together (addition) or remove objects (subtraction) while narrating.

Part-Part-Whole Thinking:
Use part-whole mats to show how numbers decompose. This builds algebraic thinking: 5 can be 4+1, 3+2, 5+0, etc.

Counting On and Counting Back:
Develop these strategies as precursors to mental math. Start with the larger number and count on for addition.

Number Bonds:
Introduce number bond diagrams showing parts and wholes. This visual representation connects to fact families later.

ASSESSMENT INDICATORS:
- Can act out addition/subtraction stories
- Represents operations with drawings and equations
- Knows addition and subtraction facts within 5 fluently
- Can decompose numbers to 10 in multiple ways
- Solves simple word problems

VOCABULARY TO DEVELOP:
add, subtract, plus, minus, equals, sum, total, in all, altogether, take away, how many left, more, fewer, part, whole

EQUATION INTRODUCTION:
Introduce equations (3 + 2 = 5) only after conceptual understanding. The equal sign means "the same as," not "here comes the answer."',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Operations and Algebraic Thinking' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- Numbers and Base Ten (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Numbers and Base Ten' AND grade_level = 0),
  'Numbers and Base Ten Teaching Guide',
  'Comprehensive pedagogical approach for teaching place value foundations in Kindergarten',
  'NUMBERS AND BASE TEN - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit lays the foundation for place value understanding by exploring teen numbers (11-19) as compositions of ten ones and additional ones. This is students'' first encounter with the idea that our number system groups by tens - a concept that will be essential throughout their mathematical education.

LEARNING PROGRESSION:
1. Building teen numbers with objects (13 = 10 objects and 3 more)
2. Recognizing ten as a unit (one group of ten)
3. Understanding teen number names (thirteen = three and ten)
4. Composing and decomposing teen numbers
5. Writing teen numbers

DEVELOPMENTAL CONSIDERATIONS:
Teen numbers are particularly confusing because their names don''t follow a clear pattern (unlike "twenty-one, twenty-two"). "Eleven" and "twelve" give no hint of "one more than ten" or "two more than ten." "Thirteen" through "nineteen" say the ones digit first, opposite of how we write them. Explicit instruction connecting names to quantities is essential.

COMMON MISCONCEPTIONS:
- Thinking of teen numbers as single digits (seeing 15 as just "fifteen" without place value)
- Confusing "15" with "51" due to how we say numbers
- Not understanding that "10" is a unit/group, not just "ten ones"
- Believing larger numbers need longer arrangements
- Not connecting the verbal name to the written numeral

INSTRUCTIONAL STRATEGIES:

Ten-Frame Use:
Use double ten-frames to show teen numbers. Fill one frame completely (showing 10) and partially fill the second (showing the extra ones). This visually anchors "10 and some more."

Bundle and Group:
Use craft sticks or straws bundled with rubber bands. Students make bundles of 10 and see teen numbers as "one bundle and __ loose ones."

Say It Three Ways:
For each teen number, practice: "fifteen," "one ten and five ones," and "10 and 5." This builds language connections.

Number Path Work:
Use a number path 0-20 to see the pattern of teen numbers and their relationship to single digits.

Writing Practice:
Connect quantity to written symbol. Students should build, say, and then write each teen number.

ASSESSMENT INDICATORS:
- Can compose 11-19 using 10 ones and additional ones
- Explains teen numbers as "10 and __"
- Recognizes and writes teen numbers
- Understands that a bundle of 10 is "one ten"

VOCABULARY TO DEVELOP:
ten, ones, group, bundle, teen numbers, compose, decompose

CONNECTIONS:
This unit connects directly to first grade place value with two-digit numbers. Strong understanding here prevents years of confusion with larger numbers.',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Numbers and Base Ten' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- Measurement and Data (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement and Data' AND grade_level = 0),
  'Measurement and Data Teaching Guide',
  'Comprehensive pedagogical approach for teaching measurement and data in Kindergarten',
  'MEASUREMENT AND DATA - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit develops foundational understanding of measurable attributes and introduces classification and data organization. Students learn to describe and compare objects by measurable characteristics like length, height, and weight. They also begin organizing objects and information - early data sense.

LEARNING PROGRESSION:
1. Identifying measurable attributes (longer, shorter, heavier, lighter)
2. Directly comparing two objects by an attribute
3. Describing objects with comparative language
4. Sorting and classifying objects by attributes
5. Counting and organizing sorted objects
6. Simple graphing (real objects, then pictures)

DEVELOPMENTAL CONSIDERATIONS:
Kindergartners think in terms of perception - they may judge a thin, tall container as holding "more" than a short, wide one. Direct comparison experiences challenge these misconceptions. Use physical comparison before any measuring tools.

COMMON MISCONCEPTIONS:
- Confusing attributes (thinking "tall" means "heavy")
- Judging quantity by arrangement or spread (longer line = more)
- Not aligning objects when comparing length
- Difficulty understanding that the same object can be "longer than A but shorter than B"
- Sorting by one attribute while ignoring another

INSTRUCTIONAL STRATEGIES:

Direct Comparison:
Start by physically comparing two objects. Place them side by side (lined up at one end) to compare length. Lift them to compare weight. Direct sensory experience builds understanding.

Comparison Vocabulary:
Explicitly teach and practice: longer/shorter, taller/shorter, heavier/lighter, more/less, bigger/smaller. Use the vocabulary in context throughout the day.

Sorting Activities:
Provide sorting mats and collections of objects. Start with one attribute (color, shape, size), then introduce two-attribute sorts. Always ask, "How did you sort? Why do these go together?"

Living Graphs:
Before paper graphs, create "living" graphs where students physically stand in groups or place objects in columns. Use connecting cubes to make bar towers.

Attribute Games:
Play "Which One Doesn''t Belong?" and "Guess My Rule" games to develop attribute awareness and classification thinking.

ASSESSMENT INDICATORS:
- Uses comparison vocabulary accurately
- Compares two objects by measurable attributes
- Sorts objects by given attribute
- Classifies objects and explains the rule
- Counts objects in categories

VOCABULARY TO DEVELOP:
long, short, tall, heavy, light, big, small, more, less, same, different, sort, group, category

DATA CONNECTIONS:
Early sorting and graphing builds foundations for data analysis. Students should see that organizing information helps answer questions about their world.',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Measurement and Data' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- Geometry (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 0),
  'Geometry Teaching Guide',
  'Comprehensive pedagogical approach for teaching geometry in Kindergarten',
  'GEOMETRY - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit introduces students to two-dimensional and three-dimensional shapes in their environment. Students learn to identify, describe, and compare shapes by their attributes (sides, corners, faces). This early geometric understanding develops spatial reasoning and vocabulary that support mathematical thinking across domains.

LEARNING PROGRESSION:
1. Identifying basic 2D shapes (circle, square, triangle, rectangle)
2. Describing shapes by attributes (sides, corners)
3. Identifying 3D shapes (sphere, cube, cylinder, cone)
4. Finding shapes in the environment
5. Comparing and contrasting shapes
6. Building and drawing shapes

DEVELOPMENTAL CONSIDERATIONS:
Young children often identify shapes by overall appearance rather than defining attributes. They may call only "perfect" examples a shape (equilateral triangle = triangle, but scalene = "not a triangle"). Use varied examples in different orientations and sizes.

COMMON MISCONCEPTIONS:
- Only recognizing prototypical shapes (an equilateral triangle "pointing up")
- Calling all quadrilaterals "squares" or rectangles "long squares"
- Confusing 2D and 3D shapes (calling a sphere a "circle")
- Believing shape identity depends on size or orientation
- Not recognizing a shape if it''s rotated or non-standard

INSTRUCTIONAL STRATEGIES:

Multiple Examples:
Show shapes in many orientations, sizes, and variants. Include "almost" examples to discuss (a shape with slightly curved sides - is it a triangle?).

Attribute Focus:
Move students from "it looks like" to "it has" language. "This is a triangle because it has 3 straight sides and 3 corners," not "because it looks like a triangle."

Real-World Shape Hunts:
Find shapes in the classroom, playground, and home. Document with photos or drawings. This connects abstract shapes to concrete objects.

Building and Drawing:
Use pattern blocks, tangrams, and drawing to construct shapes. Building develops understanding of defining attributes.

Sorting Activities:
Sort shapes by attributes: "Put shapes with 4 sides here. Put shapes with curves here." This reinforces that shapes are defined by properties.

3D Exploration:
Use solid objects students can hold and explore. Roll, stack, and examine faces. Connect to 2D: "The face of this cube is a square."

ASSESSMENT INDICATORS:
- Correctly identifies circles, squares, triangles, rectangles
- Names 3D shapes (sphere, cube, cylinder, cone)
- Describes shapes using attribute language
- Finds shapes in the environment
- Distinguishes between 2D and 3D shapes

VOCABULARY TO DEVELOP:
circle, square, triangle, rectangle, side, corner, flat, curved, sphere, cube, cylinder, cone, above, below, beside, in front of, behind

SPATIAL REASONING:
Include positional vocabulary (above, below, beside). Describe where shapes and objects are located. This spatial language supports geometry and everyday navigation.',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Geometry' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 1 MATH UNITS
-- ============================================================================

-- Addition and Subtraction (Grade 1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Addition and Subtraction' AND grade_level = 1),
  'Addition and Subtraction Teaching Guide',
  'Comprehensive pedagogical approach for teaching addition and subtraction in Grade 1',
  'ADDITION AND SUBTRACTION - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
This unit develops fluency with addition and subtraction within 20, building on Kindergarten''s conceptual foundation. Students learn multiple strategies for computing, understand the relationship between addition and subtraction, and apply these operations to solve word problems. The goal is flexibility with numbers, not just memorization.

LEARNING PROGRESSION:
1. Review of addition/subtraction concepts
2. Counting on and counting back strategies
3. Making ten (using 10 as a benchmark)
4. Doubles and near-doubles
5. Fact families (relating addition and subtraction)
6. Fluency within 10, developing fluency within 20
7. Word problem types (result unknown, change unknown, start unknown)

DEVELOPMENTAL CONSIDERATIONS:
First graders are developing from concrete to representational thinking. They still benefit from manipulatives but are ready for more mental strategies. Strategies should be taught explicitly, practiced, and discussed. Students choose strategies that make sense to them.

COMMON MISCONCEPTIONS:
- Counting all instead of counting on (inefficient strategy)
- Confusion about the equal sign (thinking it means "the answer is")
- Difficulty with subtraction as "finding the difference" vs. "taking away"
- Not seeing the connection between addition and subtraction
- Struggling with "change unknown" problems (5 + __ = 8)

INSTRUCTIONAL STRATEGIES:

Strategy Instruction:
Explicitly teach strategies: counting on, making ten, doubles, using known facts. Model thinking aloud. Have students share and compare strategies.

Number Talks:
Daily 5-10 minute discussions about mental math strategies. Present a problem (8 + 5), have students solve mentally, then share strategies. Build flexibility.

Ten-Frame Work:
Use ten-frames to visualize making ten. 8 + 5: fill the frame with 8, add 2 more to make 10, then 3 more = 13.

Fact Families:
Use fact family houses or triangles. If you know 3 + 5 = 8, you also know 5 + 3 = 8, 8 - 5 = 3, and 8 - 3 = 5.

Word Problem Variety:
Include all problem types: result unknown (5 + 3 = ?), change unknown (5 + ? = 8), and start unknown (? + 3 = 8). Use CGI problem types.

Games and Practice:
Use games for practice (not just flashcards). Games like "Addition War," "Roll and Add," and "Make 10 Go Fish" build fluency joyfully.

ASSESSMENT INDICATORS:
- Demonstrates multiple strategies for adding/subtracting within 20
- Fluently adds and subtracts within 10
- Understands relationship between addition and subtraction
- Solves various word problem types
- Explains mathematical reasoning

VOCABULARY TO DEVELOP:
add, subtract, sum, difference, plus, minus, equals, fact family, doubles, count on, count back, unknown',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Addition and Subtraction' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- Place Value (Grade 1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Place Value' AND grade_level = 1),
  'Place Value Teaching Guide',
  'Comprehensive pedagogical approach for teaching place value in Grade 1',
  'PLACE VALUE - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
This unit extends Kindergarten understanding of teen numbers to all two-digit numbers. Students learn that our number system groups by tens, that the position of a digit determines its value, and how to count, read, write, and compare numbers to 120. This place value understanding is fundamental to multi-digit computation.

LEARNING PROGRESSION:
1. Review: teen numbers as 10 + ones
2. Counting to 120 starting from any number
3. Understanding tens and ones
4. Representing two-digit numbers with objects and drawings
5. Reading and writing two-digit numbers
6. Comparing two-digit numbers
7. Adding/subtracting 10 mentally

DEVELOPMENTAL CONSIDERATIONS:
First graders can understand that 10 ones = 1 ten when given concrete experience. However, unitizing (seeing a group as both "10 things" and "1 ten") is a significant cognitive shift. Use manipulatives extensively before abstract notation.

COMMON MISCONCEPTIONS:
- Seeing 47 as "4 and 7" rather than "4 tens and 7 ones"
- Confusing the order of digits (writing 42 for "twenty-four")
- Not understanding that 10 ones = 1 ten (equivalence)
- Thinking larger numbers always have more digits
- Difficulty comparing when digits are the same but positions differ (14 vs 41)

INSTRUCTIONAL STRATEGIES:

Bundling Activities:
Use popsicle sticks or straws. Bundle 10 into groups with rubber bands. Students physically make groups of ten. The bundle IS one ten.

Base-Ten Blocks:
Use rods (tens) and unit cubes (ones) to represent numbers. Build, draw, and describe. "Show me 34" should result in 3 tens and 4 ones.

Expanded Form:
Practice expanded form: 45 = 40 + 5 = 4 tens + 5 ones. This reinforces that each digit has value based on position.

Counting by Tens:
Practice counting by tens from any number (23, 33, 43, 53...). This supports mental addition of 10.

Place Value Charts:
Use two-column charts labeled "tens" and "ones." Place digits and objects in correct positions.

Number Comparisons:
Compare numbers using base-ten blocks. Which is greater, 37 or 73? Build both and compare the tens first.

Hundred Chart:
Use the hundred chart to explore patterns, count, and see how numbers are organized.

ASSESSMENT INDICATORS:
- Represents numbers with tens and ones
- Reads and writes numbers to 120
- Counts by 1s and 10s starting from any number
- Compares two-digit numbers using >, <, =
- Mentally adds and subtracts 10

VOCABULARY TO DEVELOP:
tens, ones, digit, place value, greater than, less than, equal to, compare, bundle, group',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Place Value' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- Measurement (Grade 1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement' AND grade_level = 1),
  'Measurement Teaching Guide',
  'Comprehensive pedagogical approach for teaching measurement in Grade 1',
  'MEASUREMENT - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
This unit extends Kindergarten comparison to include indirect comparison and measurement with non-standard units. Students develop understanding of length as an attribute and practice accurate measurement techniques. They also learn to tell time to the hour and half hour, and begin organizing data.

LEARNING PROGRESSION:
1. Review: direct comparison (longer/shorter)
2. Indirect comparison (A longer than B, B longer than C, so A longer than C)
3. Measuring with non-standard units (paper clips, cubes)
4. Understanding what makes a good measurement
5. Telling time to the hour and half-hour
6. Organizing and reading simple data displays

DEVELOPMENTAL CONSIDERATIONS:
First graders are learning that measurement involves iteration of units without gaps or overlaps. This seems obvious to adults but requires explicit instruction. The connection between counting and measuring (counting units) is key.

COMMON MISCONCEPTIONS:
- Leaving gaps or overlapping when measuring with units
- Not starting measurement at the endpoint
- Mixing unit sizes (some long cubes, some short)
- Thinking different unit types should give the same measurement
- Confusing the hour and minute hands on clocks
- Reading time backwards (saying "7:6" for 6:30)

INSTRUCTIONAL STRATEGIES:

Unit Iteration:
Practice laying units end-to-end with no gaps or overlaps. Discuss why this matters. Compare measurements with different-sized units.

Non-Standard Before Standard:
Use paper clips, cubes, footprints, hand spans before rulers. This develops understanding of what measurement means.

Estimation First:
Estimate before measuring. "How many cubes long do you think?" Estimation builds number sense and reasonableness.

Indirect Comparison:
Use string to compare objects that can''t be placed side by side. "The table is wider than this string. The door is narrower than this string. So the table is wider than the door."

Telling Time:
Focus on analog clocks. Practice with Judy clocks where students move hands. Connect to daily routines: "When the short hand points to 8, it''s time for..."

Hour First:
Master telling time to the hour before introducing half-hour. Use language: "The short hand tells the hour. When the long hand points to 12, it''s exactly __ o''clock."

Data Collection:
Collect data about the class (favorite color, pets, etc.). Organize with real objects, then picture graphs. Answer questions from data.

ASSESSMENT INDICATORS:
- Measures length using same-size units
- Orders objects by length
- Tells time to hour and half-hour
- Collects and organizes data
- Interprets simple data displays

VOCABULARY TO DEVELOP:
length, measure, unit, longer, shorter, about, estimate, hour, half-hour, o''clock, hour hand, minute hand, data, graph',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Measurement' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- Geometry (Grade 1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 1),
  'Geometry Teaching Guide',
  'Comprehensive pedagogical approach for teaching geometry in Grade 1',
  'GEOMETRY - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
This unit extends shape understanding by focusing on defining attributes (sides, corners/vertices) rather than appearance. Students learn to compose new shapes from existing shapes and partition shapes into halves and fourths - early fraction concepts. Spatial reasoning develops through building, composing, and decomposing.

LEARNING PROGRESSION:
1. Review: identifying 2D and 3D shapes
2. Distinguishing defining vs. non-defining attributes
3. Composing shapes (putting shapes together to make new shapes)
4. Decomposing shapes (breaking shapes into smaller shapes)
5. Partitioning shapes into halves and fourths
6. Understanding equal parts

DEVELOPMENTAL CONSIDERATIONS:
First graders are transitioning from visual recognition to attribute-based understanding. They can understand "defining" attributes (number of sides makes it a triangle) vs. "non-defining" (color, size). Hands-on building and partition are essential.

COMMON MISCONCEPTIONS:
- Thinking color, size, or orientation defines a shape
- Not recognizing shapes in non-prototypical positions
- Believing "half" means any two pieces, not necessarily equal
- Confusing "halves" with "fourths" (four pieces vs. four equal pieces)
- Difficulty seeing that different shapes can combine to make the same new shape

INSTRUCTIONAL STRATEGIES:

Attribute Discussions:
Sort shapes and discuss: "These are all triangles. They''re different colors and sizes, but what''s the same?" Focus on sides and corners as defining.

"What Makes It A..."":
Play games where students identify the rule: "What makes it a rectangle? Does it need to be red? Does it need to be this size? What does it HAVE to have?"

Composition Activities:
Use pattern blocks, tangrams, and shape puzzles. "Can you make a hexagon using triangles? How many ways?" Document different solutions.

Decomposition:
Give students shapes to cut or fold. "How many different ways can you divide this rectangle into smaller shapes?"

Equal Parts:
Fold paper shapes into halves and fourths. Emphasize: "Are the parts the same size?" Compare equal and unequal partitions.

Fraction Language:
Use language: "half of," "fourth of," "quarter of." Connect to fair sharing: "Share this sandwich equally between 2 people."

3D Shapes:
Explore cubes, cones, cylinders. Build with blocks. Identify 3D shapes in the real world. Discuss faces, edges.

ASSESSMENT INDICATORS:
- Distinguishes defining from non-defining attributes
- Composes and decomposes 2D shapes
- Partitions shapes into 2 or 4 equal parts
- Uses vocabulary: halves, fourths, quarters
- Identifies shapes by attributes, not appearance

VOCABULARY TO DEVELOP:
side, vertex (corner), 2D, 3D, compose, decompose, partition, equal parts, halves, half of, fourths, quarters, face, edge',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Geometry' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 2 MATH UNITS
-- ============================================================================

-- Addition and Subtraction Fluency (Grade 2)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Addition and Subtraction Fluency' AND grade_level = 2),
  'Addition and Subtraction Fluency Teaching Guide',
  'Comprehensive pedagogical approach for teaching addition and subtraction fluency in Grade 2',
  'ADDITION AND SUBTRACTION FLUENCY - GRADE 2 UNIT GUIDE

UNIT OVERVIEW:
This unit develops fluency with multi-digit addition and subtraction within 100 and extends to within 1000. Students master strategies based on place value understanding and solve two-step word problems. Fluency means accuracy, efficiency, and flexibility - not just speed.

LEARNING PROGRESSION:
1. Fluency with facts within 20 (consolidation from Grade 1)
2. Adding and subtracting within 100 using strategies
3. Adding and subtracting within 100 using standard algorithm
4. Mental addition and subtraction of 10 or 100
5. Two-step word problems
6. Estimation and reasonableness

DEVELOPMENTAL CONSIDERATIONS:
Second graders can handle multi-digit computation when grounded in place value understanding. The standard algorithm should come AFTER students understand strategies based on place value and can explain their reasoning.

COMMON MISCONCEPTIONS:
- "Always subtract the smaller number from the larger" error
- Not understanding regrouping (borrowing/carrying) conceptually
- Treating multi-digit numbers as single digits side by side
- Difficulty with two-step problems (doing only one step)
- Confusing when to add vs. subtract in word problems

INSTRUCTIONAL STRATEGIES:

Multiple Strategies:
Teach and compare strategies: adding by place value (30 + 40, then 5 + 6), compensation (38 + 47 = 40 + 45), number line jumps. Students should have options.

Base-Ten Block Modeling:
Model regrouping with blocks. When adding 35 + 28, make 13 ones, then trade 10 ones for 1 ten. Students must SEE this before using the algorithm.

Number Talks:
Continue daily mental math discussions. For 48 + 27, students might: count on, make a friendly number (48 + 30 - 3), or add by place value (40 + 20 + 8 + 7).

Two-Step Problems:
Explicitly teach two-step problem solving. "What do I need to find first? What will I do with that answer?" Use diagrams and equations.

Estimation:
Before computing, estimate: "About how much will this be?" Use estimation to check reasonableness of answers.

Algorithm With Understanding:
Introduce the standard algorithm AFTER strategy work. Connect each step to place value: "Why do we write the 1 above the tens?"

ASSESSMENT INDICATORS:
- Fluently adds and subtracts within 100
- Uses multiple strategies and can explain reasoning
- Solves two-step word problems
- Estimates and checks reasonableness
- Understands regrouping conceptually

VOCABULARY TO DEVELOP:
add, subtract, sum, difference, regroup, trade, estimate, mental math, strategy, two-step problem, unknown',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Addition and Subtraction Fluency' AND grade_level = 2)
ON CONFLICT DO NOTHING;

-- Place Value to 1000 (Grade 2)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Place Value to 1000' AND grade_level = 2),
  'Place Value to 1000 Teaching Guide',
  'Comprehensive pedagogical approach for teaching place value to 1000 in Grade 2',
  'PLACE VALUE TO 1000 - GRADE 2 UNIT GUIDE

UNIT OVERVIEW:
This unit extends place value understanding to three-digit numbers. Students learn that our base-ten system uses hundreds, tens, and ones, where each place is ten times the value of the place to its right. They read, write, compare, and work with numbers to 1000 and skip count by 5s, 10s, and 100s.

LEARNING PROGRESSION:
1. Understanding hundreds as groups of 10 tens
2. Representing three-digit numbers with objects and drawings
3. Reading and writing three-digit numbers
4. Expanded form and number names
5. Comparing three-digit numbers
6. Skip counting by 5s, 10s, and 100s

DEVELOPMENTAL CONSIDERATIONS:
The jump to hundreds requires understanding that 10 tens = 1 hundred - another layer of grouping. Use physical materials extensively. The connection between grouping structure and written numerals must be explicit.

COMMON MISCONCEPTIONS:
- Seeing 352 as "3, 5, 2" rather than "3 hundreds, 5 tens, 2 ones"
- Not understanding that 100 is a unit (like "one hundred")
- Writing numbers as they hear them (writing 523 for "five hundred twenty-three" as "500203")
- Comparing by looking at digits without considering place (347 vs. 94)
- Believing you always start counting from 0

INSTRUCTIONAL STRATEGIES:

Base-Ten Block Building:
Use flats (hundreds), rods (tens), and units (ones). Build numbers, then describe. "Show me 463. What does the 4 mean? The 6? The 3?"

Bundling Extension:
Bundle 10 rods (sticks) into a flat (100). Physically group 10 tens into 1 hundred. This concrete experience builds understanding.

Reading and Writing:
Practice reading numbers in standard, expanded, and word form. 347 = 300 + 40 + 7 = three hundred forty-seven.

Comparison Strategies:
Use place value to compare: compare hundreds first, then tens, then ones. Use < > = symbols correctly.

Skip Counting Patterns:
Practice skip counting from any starting point: 325, 330, 335, 340... Explore patterns on the hundred chart and number line.

Number Line Work:
Use number lines to 1000 to visualize and locate numbers. Estimate positions before placing.

Mental Math with 10 and 100:
Practice adding and subtracting 10 or 100 mentally: 438 + 100 = 538. This reinforces place value and builds fluency.

ASSESSMENT INDICATORS:
- Represents numbers to 1000 with materials and drawings
- Reads and writes three-digit numbers
- Understands place value of each digit
- Compares three-digit numbers using symbols
- Skip counts by 5s, 10s, and 100s from any starting point

VOCABULARY TO DEVELOP:
hundreds, tens, ones, place value, digit, expanded form, standard form, word form, compare, greater than, less than, equal to',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Place Value to 1000' AND grade_level = 2)
ON CONFLICT DO NOTHING;

-- Measurement (Grade 2)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Measurement' AND grade_level = 2),
  'Measurement Teaching Guide',
  'Comprehensive pedagogical approach for teaching measurement in Grade 2',
  'MEASUREMENT - GRADE 2 UNIT GUIDE

UNIT OVERVIEW:
This unit introduces standard measurement units (inches, feet, centimeters, meters) and relates measurement to operations. Students learn to measure accurately, estimate, and solve problems involving length. They also extend time-telling to five-minute intervals and solve money problems.

LEARNING PROGRESSION:
1. Measuring with standard units (rulers, meter sticks)
2. Estimating and measuring in both metric and customary units
3. Comparing lengths and finding differences
4. Telling time to the nearest five minutes
5. Working with money (coins and bills)
6. Creating and reading line plots with measurement data

DEVELOPMENTAL CONSIDERATIONS:
Second graders can understand the need for standard units ("my foot is different from your foot, so we need a unit everyone agrees on"). Precision in measurement develops gradually - expect approximation.

COMMON MISCONCEPTIONS:
- Not starting at 0 when using a ruler
- Confusing inches and centimeters (mixing units)
- Thinking "foot" (body part) and "foot" (12 inches) are the same length
- Difficulty with time (confusing 5-minute marks, reading hour and minute hands)
- Not understanding coin values (nickel worth more than dime because it''s bigger)

INSTRUCTIONAL STRATEGIES:

Ruler Use:
Explicitly teach how to use a ruler: align at 0, read the number at the end of the object. Practice repeatedly with objects around the room.

Both Systems:
Introduce both customary (inch, foot) and metric (centimeter, meter). Compare: "About how many centimeters in an inch?" Build familiarity with both.

Estimation Practice:
Estimate before measuring. "Is this desk about 2 feet or about 6 feet long?" Estimation builds unit sense.

Length Problems:
Pose addition and subtraction problems with length: "The crayon is 8 cm. The pencil is 14 cm. How much longer is the pencil?"

Time Practice:
Use analog clocks daily. Practice reading and writing time. Connect to schedule: "At 9:15 we go to PE."

Money Work:
Use real or realistic coins. Practice identifying, counting, and making equivalent amounts. Solve buying/selling problems.

Line Plots:
Collect measurement data (length of shoes, paper clips) and display on line plots. Answer questions from data.

ASSESSMENT INDICATORS:
- Measures accurately in inches, feet, centimeters, meters
- Estimates lengths reasonably
- Tells time to the nearest five minutes
- Solves money problems
- Creates and reads line plots

VOCABULARY TO DEVELOP:
inch, foot, centimeter, meter, length, width, height, measure, estimate, half past, quarter past, quarter to, o''clock, coins, dollars, line plot',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Measurement' AND grade_level = 2)
ON CONFLICT DO NOTHING;

-- Introduction to Multiplication (Grade 2)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Introduction to Multiplication' AND grade_level = 2),
  'Introduction to Multiplication Teaching Guide',
  'Comprehensive pedagogical approach for introducing multiplication in Grade 2',
  'INTRODUCTION TO MULTIPLICATION - GRADE 2 UNIT GUIDE

UNIT OVERVIEW:
This unit builds the conceptual foundation for multiplication through work with equal groups and arrays. Students learn that multiplication is repeated addition of equal groups and develop understanding that prepares them for formal multiplication in Grade 3. They also explore even and odd numbers.

LEARNING PROGRESSION:
1. Recognizing and creating equal groups
2. Counting equal groups (repeated addition)
3. Understanding arrays (rows and columns)
4. Connecting arrays to repeated addition
5. Identifying even and odd numbers
6. Using visual models for equal groups

DEVELOPMENTAL CONSIDERATIONS:
Multiplication is fundamentally different from addition (combining any groups) - it requires understanding EQUAL groups. Students need extensive experience with concrete and visual representations before any symbolic notation.

COMMON MISCONCEPTIONS:
- Thinking multiplication is just "fast addition" without understanding equal groups
- Creating unequal groups and treating them as multiplication
- Confusing rows and columns in arrays
- Not understanding that 3 groups of 4 is different from 4 groups of 3 (same answer, different meaning)
- Thinking odd + odd = odd (it equals even)

INSTRUCTIONAL STRATEGIES:

Equal Groups Emphasis:
Start with story contexts about equal groups: "There are 4 tables. Each table has 5 chairs. How many chairs?" Emphasize the equality.

Concrete Materials:
Use counters, cubes, or drawings to create and count equal groups. Students should physically make groups before drawing them.

Array Work:
Build arrays with objects and connect to rows of equal size. "3 rows of 4" is 12. This visual model supports the area model later.

Repeated Addition:
Write equations: 4 + 4 + 4 = 12. Connect this to "3 groups of 4." Later, this becomes 3 × 4.

Even and Odd:
Explore even numbers as making pairs with none left over. Odd numbers have one left over. Use manipulatives to test numbers.

Skip Counting:
Practice skip counting by 2s, 5s, and 10s. Connect to equal groups: counting by 5s is like counting groups of 5.

No Formal × Yet:
Focus on language: "groups of," "rows of," "times" informally. The × symbol comes in Grade 3 after understanding is solid.

ASSESSMENT INDICATORS:
- Creates and counts equal groups
- Uses repeated addition for equal groups
- Builds and interprets arrays
- Identifies even and odd numbers
- Explains why groups must be equal

VOCABULARY TO DEVELOP:
equal groups, array, row, column, repeated addition, times, even, odd, skip count, total',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Introduction to Multiplication' AND grade_level = 2)
ON CONFLICT DO NOTHING;

-- Geometry (Grade 2)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Geometry' AND grade_level = 2),
  'Geometry Teaching Guide',
  'Comprehensive pedagogical approach for teaching geometry in Grade 2',
  'GEOMETRY - GRADE 2 UNIT GUIDE

UNIT OVERVIEW:
This unit focuses on recognizing and drawing shapes with specific attributes, especially quadrilaterals. Students learn to partition rectangles into rows and columns of same-size squares (foundation for area and arrays) and divide shapes into halves, thirds, and fourths.

LEARNING PROGRESSION:
1. Identifying shapes by number of sides and angles
2. Drawing shapes with given attributes
3. Recognizing angles in shapes
4. Identifying and drawing quadrilaterals
5. Partitioning rectangles into square arrays
6. Dividing shapes into halves, thirds, fourths

DEVELOPMENTAL CONSIDERATIONS:
Second graders can understand that shape categories have subcategories (quadrilaterals include squares and rectangles). They can reason about equal parts and connect partitioning to fractions and arrays.

COMMON MISCONCEPTIONS:
- Thinking squares are not rectangles (not understanding hierarchy)
- Believing pentagons must look like a "house shape"
- Not recognizing shapes in non-standard orientations
- Thinking any three pieces are "thirds" (not necessarily equal)
- Confusing rows and columns when partitioning

INSTRUCTIONAL STRATEGIES:

Attribute Focus:
Classify shapes by attributes: "Quadrilaterals have 4 sides. Which of these are quadrilaterals?" Include regular and irregular shapes.

Shape Hierarchy:
Discuss that squares are special rectangles. Use Venn diagrams. "All squares are rectangles, but not all rectangles are squares."

Drawing Practice:
Give criteria: "Draw a quadrilateral with one right angle" or "Draw a triangle with no equal sides." This develops precise thinking.

Angle Introduction:
Introduce the concept of angles (not measurement yet). Right angles are "square corners." Compare angles to right angles.

Rectangle Partitioning:
Partition rectangles into rows and columns. Count squares. This connects to arrays and prepares for area.

Equal Parts:
Fold and cut shapes into halves, thirds, fourths. Always verify: "Are the parts the same size?" Compare different ways to partition.

Real-World Shapes:
Find and classify shapes in the environment. Architecture, art, and everyday objects provide examples.

ASSESSMENT INDICATORS:
- Identifies and draws shapes with specific attributes
- Recognizes quadrilaterals including squares and rectangles
- Partitions rectangles into square arrays
- Divides shapes into 2, 3, or 4 equal parts
- Uses vocabulary: halves, thirds, fourths

VOCABULARY TO DEVELOP:
angle, right angle, quadrilateral, pentagon, hexagon, attribute, partition, equal parts, halves, thirds, fourths, array, rows, columns',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Geometry' AND grade_level = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 3 MATH UNITS
-- ============================================================================

-- Multiplication and Division (Grade 3)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Multiplication and Division' AND grade_level = 3),
  'Multiplication and Division Teaching Guide',
  'Comprehensive pedagogical approach for teaching multiplication and division in Grade 3',
  'MULTIPLICATION AND DIVISION - GRADE 3 UNIT GUIDE

UNIT OVERVIEW:
This is a foundational unit where students develop understanding of multiplication and division, learn strategies, and work toward fluency with facts within 100. Students understand these operations conceptually before memorizing, using equal groups, arrays, and the properties of multiplication.

LEARNING PROGRESSION:
1. Understanding multiplication as equal groups
2. Arrays and the relationship to area
3. Properties: commutative, associative, distributive
4. Understanding division as equal sharing and grouping
5. Relationship between multiplication and division
6. Strategies for learning facts (0, 1, 2, 5, 10, then 3, 4, 6, 7, 8, 9)
7. Fluency through meaningful practice

DEVELOPMENTAL CONSIDERATIONS:
Third graders can reason abstractly about multiplication if grounded in concrete understanding. They should learn multiplication and division together, not separately. Fact fluency comes from strategy understanding, not rote memorization.

COMMON MISCONCEPTIONS:
- Thinking multiplication is just "counting faster" without understanding groups
- Not seeing the connection between multiplication and division
- Applying addition strategies (counting all) instead of multiplication strategies
- Believing 6 ÷ 2 always means "divide 6 into 2 groups" (not seeing measurement division)
- Difficulty with 0 and 1 facts conceptually

INSTRUCTIONAL STRATEGIES:

Equal Groups Foundation:
Use story problems with equal groups. "5 bags with 6 apples each." Build with counters, draw, then write equations.

Array Model:
Build and draw arrays. Connect to area: a 4×6 array has 24 square units. Arrays show commutativity: 4×6 looks different than 6×4 but equals the same.

Properties Explicitly:
Teach commutative (4×5 = 5×4), associative ((2×3)×4 = 2×(3×4)), and distributive (6×7 = 6×5 + 6×2) properties. These are strategies, not just rules.

Division Connection:
Teach division alongside multiplication. If 4 × 6 = 24, then 24 ÷ 6 = 4. Use fact families: 4, 6, 24.

Strategy Instruction:
Teach strategies for each fact set: doubles, double-doubles, skip counting, breaking apart. Students should have multiple strategies.

Games and Practice:
Use games (not just flashcards) for practice. Multiplication War, Factor Capture, Array games. Make practice engaging.

Word Problem Variety:
Include multiplication and division word problems: equal groups, arrays, comparison. Include all problem types.

ASSESSMENT INDICATORS:
- Understands multiplication as equal groups/arrays
- Understands division as sharing/grouping
- Uses properties strategically
- Knows facts within 100 from memory
- Solves multiplication and division word problems

VOCABULARY TO DEVELOP:
multiply, divide, factor, product, quotient, array, commutative, associative, distributive, equation, unknown, equal groups',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Multiplication and Division' AND grade_level = 3)
ON CONFLICT DO NOTHING;

-- Introduction to Fractions (Grade 3)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Introduction to Fractions' AND grade_level = 3),
  'Introduction to Fractions Teaching Guide',
  'Comprehensive pedagogical approach for teaching fractions in Grade 3',
  'INTRODUCTION TO FRACTIONS - GRADE 3 UNIT GUIDE

UNIT OVERVIEW:
This unit develops foundational understanding of fractions as numbers. Students learn that fractions represent parts of a whole that has been partitioned into equal parts. They place fractions on number lines, understand equivalent fractions, and compare fractions with the same numerator or denominator.

LEARNING PROGRESSION:
1. Understanding fractions as equal parts of a whole
2. Fraction notation: numerator and denominator meanings
3. Fractions on the number line
4. Whole numbers as fractions (3 = 3/1 = 6/2)
5. Equivalent fractions
6. Comparing fractions with same numerator or denominator

DEVELOPMENTAL CONSIDERATIONS:
This is students'' formal introduction to fractions as numbers, not just parts of shapes. The number line representation is crucial for developing fraction number sense. Equal partitioning must be explicit.

COMMON MISCONCEPTIONS:
- Thinking the larger denominator means a larger fraction
- Treating numerator and denominator as separate numbers (2/3 + 1/4 = 3/7)
- Believing fractions are always less than 1
- Not understanding that the parts must be equal
- Confusing fraction comparison (2/3 vs 2/5 - same numerator, different denominators)

INSTRUCTIONAL STRATEGIES:

Equal Parts Emphasis:
Constantly reinforce: fractions require EQUAL parts. Compare equal and unequal partitions. "Is this 1/3? Why or why not?"

Notation Meaning:
Teach numerator (how many parts we have) and denominator (how many equal parts make the whole). Use fraction strips and circles.

Number Line Critical:
Place fractions on number lines. This shows fractions as numbers with locations. Partition the segment from 0 to 1 into equal parts.

Unit Fractions First:
Start with unit fractions (1/2, 1/3, 1/4). Understand these as "1 part when the whole is divided into __ equal parts."

Equivalent Fractions:
Use visual models to show equivalence. Fold fraction strips: 1/2 = 2/4. The same amount, named differently.

Comparison Strategies:
Same denominator: compare numerators (3/5 vs 2/5).
Same numerator: think about part size (1/3 vs 1/5 - thirds are larger than fifths).

Whole Numbers:
Show that 3 = 3/1 = 6/2 = 9/3. Place whole numbers on the fraction number line.

ASSESSMENT INDICATORS:
- Represents fractions with models and number lines
- Explains meaning of numerator and denominator
- Identifies equivalent fractions
- Compares fractions with same numerator or denominator
- Understands fractions as numbers

VOCABULARY TO DEVELOP:
fraction, numerator, denominator, equal parts, whole, unit fraction, equivalent fractions, compare, greater than, less than, number line',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Introduction to Fractions' AND grade_level = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ADDITIONAL GRADES CONTINUE IN SUBSEQUENT INSERTS
-- Due to file length, grades 4-12 continue below
-- ============================================================================

-- Multi-Digit Arithmetic (Grade 3)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Multi-Digit Arithmetic' AND grade_level = 3),
  'Multi-Digit Arithmetic Teaching Guide',
  'Comprehensive pedagogical approach for multi-digit arithmetic in Grade 3',
  'MULTI-DIGIT ARITHMETIC - GRADE 3 UNIT GUIDE

UNIT OVERVIEW:
This unit develops fluency with multi-digit addition and subtraction within 1000 using strategies based on place value. Students also round whole numbers and multiply one-digit numbers by multiples of 10. This work builds on Grade 2 place value and prepares for Grade 4 multiplication.

LEARNING PROGRESSION:
1. Rounding to nearest 10 and 100
2. Adding within 1000 using strategies
3. Subtracting within 1000 with regrouping
4. The standard algorithm with understanding
5. Multiplying by multiples of 10
6. Estimation and checking reasonableness

COMMON MISCONCEPTIONS:
- Rounding to the wrong place value
- Regrouping errors in subtraction (borrowing across zeros)
- Not understanding why the algorithm works
- Thinking 4 × 30 = 120 is a new concept (it''s 4 × 3 tens = 12 tens)

INSTRUCTIONAL STRATEGIES:

Place Value Strategies:
Break numbers by place: 456 + 378 = (400+300) + (50+70) + (6+8). Build understanding before algorithm.

Rounding Context:
Use rounding for estimation. "About how much will this cost?" Round before computing to check reasonableness.

Algorithm Connection:
When teaching the algorithm, connect each step to place value. "Why do we carry the 1? Because 10 ones = 1 ten."

Multiple Methods:
Allow and discuss multiple strategies. Number line, compensation, and partial sums are all valid.

Multiplying by 10:
Use place value: 4 × 30 = 4 × 3 tens = 12 tens = 120. Don''t teach "add a zero" - teach the reason.

VOCABULARY TO DEVELOP:
round, estimate, regroup, place value, reasonable, sum, difference, product, multiples of 10',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Multi-Digit Arithmetic' AND grade_level = 3)
ON CONFLICT DO NOTHING;

-- Area and Perimeter (Grade 3)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Area and Perimeter' AND grade_level = 3),
  'Area and Perimeter Teaching Guide',
  'Comprehensive pedagogical approach for teaching area and perimeter in Grade 3',
  'AREA AND PERIMETER - GRADE 3 UNIT GUIDE

UNIT OVERVIEW:
This unit develops understanding of area as the amount of space inside a figure (measured in square units) and perimeter as the distance around. Students learn to distinguish these often-confused concepts and connect area to multiplication through array thinking.

LEARNING PROGRESSION:
1. Understanding area as covering with square units
2. Counting square units to find area
3. Connecting area to multiplication (length × width)
4. Understanding perimeter as distance around
5. Calculating perimeter by adding side lengths
6. Distinguishing between area and perimeter

COMMON MISCONCEPTIONS:
- Confusing area and perimeter (the most persistent misconception)
- Thinking shapes with the same perimeter have the same area
- Not understanding why area uses square units
- Adding all numbers visible when finding area (including side lengths)

INSTRUCTIONAL STRATEGIES:

Covering Activities:
Have students cover shapes with square tiles. COUNT the tiles. This is area. Do this extensively before any formula.

Array Connection:
A rectangle that is 4 units by 6 units can be covered with 24 square tiles arranged in an array. 4 × 6 = 24 square units.

Walking the Perimeter:
Have students walk around shapes, counting steps. Perimeter is the distance AROUND - like walking a fence.

Different Shapes, Same Measurement:
Give shapes with same area but different perimeter (or vice versa). This clarifies the difference.

Side by Side Comparison:
Always present area and perimeter together after teaching both. "Find the area. Find the perimeter. How are these different?"

Real-World Context:
Area: carpet, grass seed, paint. Perimeter: fence, border, frame. Context clarifies which measurement is needed.

VOCABULARY TO DEVELOP:
area, perimeter, square unit, cover, length, width, around, inside, distance',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Area and Perimeter' AND grade_level = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADES 4-12 MATH UNITS
-- Continue with remaining units...
-- ============================================================================

-- Multi-Digit Multiplication (Grade 4)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Multi-Digit Multiplication' AND grade_level = 4),
  'Multi-Digit Multiplication Teaching Guide',
  'Comprehensive pedagogical approach for multi-digit multiplication in Grade 4',
  'MULTI-DIGIT MULTIPLICATION - GRADE 4 UNIT GUIDE

UNIT OVERVIEW:
This unit develops understanding and fluency with multi-digit multiplication. Students multiply up to four-digit numbers by one-digit numbers and two-digit by two-digit numbers. The emphasis is on understanding through area models before procedural fluency with the standard algorithm.

LEARNING PROGRESSION:
1. Multiplying by 10, 100, 1000 (place value patterns)
2. Multiplying multi-digit by one-digit using strategies
3. Area model for multi-digit multiplication
4. Partial products method
5. Standard algorithm with understanding
6. Multi-step word problems

COMMON MISCONCEPTIONS:
- "Adding zeros" without understanding place value
- Errors in partial products (forgetting place value)
- Misaligning digits in the standard algorithm
- Not estimating to check reasonableness

INSTRUCTIONAL STRATEGIES:

Place Value Foundation:
Start with 3 × 40 = 3 × 4 tens = 12 tens = 120. Build understanding of multiplying by powers of 10.

Area Model:
Use the area model for 23 × 47: decompose into (20+3) × (40+7). Find four partial products. This is the distributive property visually.

Partial Products:
Record partial products separately before combining. This builds understanding of what each part of the algorithm represents.

Algorithm Connection:
When teaching the standard algorithm, connect explicitly to partial products. "Where do we see the 20 × 40 in the algorithm?"

Estimation:
Estimate before computing. 23 × 47 ≈ 20 × 50 = 1000. Use estimation to catch errors.

VOCABULARY TO DEVELOP:
multiply, product, factor, partial products, area model, distributive property, estimate, reasonable',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Multi-Digit Multiplication' AND grade_level = 4)
ON CONFLICT DO NOTHING;

-- Multi-Digit Division (Grade 4)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Multi-Digit Division' AND grade_level = 4),
  'Multi-Digit Division Teaching Guide',
  'Comprehensive pedagogical approach for multi-digit division in Grade 4',
  'MULTI-DIGIT DIVISION - GRADE 4 UNIT GUIDE

UNIT OVERVIEW:
This unit develops understanding of division with multi-digit dividends. Students find quotients and remainders using strategies based on place value and the relationship to multiplication. The focus is conceptual understanding before algorithmic fluency.

LEARNING PROGRESSION:
1. Division as finding missing factor
2. Division with remainders and their interpretation
3. Dividing multiples of 10, 100, 1000
4. Partial quotients strategy
5. Standard algorithm introduction
6. Word problems with remainder interpretation

COMMON MISCONCEPTIONS:
- Not understanding remainders in context
- Division errors due to weak multiplication facts
- Confusion about what to do when digits "don''t divide"
- Treating remainders without context (answer always needs remainder as fraction)

INSTRUCTIONAL STRATEGIES:

Multiplication Connection:
Division is finding the missing factor. 156 ÷ 12 = ? means 12 × ? = 156. Build on multiplication knowledge.

Remainder Interpretation:
Remainders mean different things in context. Sometimes drop it (full buses), sometimes round up (packages needed), sometimes use as fraction (sharing equally).

Partial Quotients:
Use partial quotients: "How many 12s are in 156? At least 10... that''s 120. Remaining 36. How many more 12s? 3." 10 + 3 = 13.

Area Model:
Connect to area: if area is 156 and one side is 12, what''s the other side? This visual supports understanding.

Estimation First:
Estimate before dividing. 748 ÷ 7 ≈ 700 ÷ 7 = 100. The answer should be about 100.

VOCABULARY TO DEVELOP:
divide, dividend, divisor, quotient, remainder, partial quotients, estimate',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Multi-Digit Division' AND grade_level = 4)
ON CONFLICT DO NOTHING;

-- Fractions and Decimals (Grade 4)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Fractions and Decimals' AND grade_level = 4),
  'Fractions and Decimals Teaching Guide',
  'Comprehensive pedagogical approach for fractions and decimals in Grade 4',
  'FRACTIONS AND DECIMALS - GRADE 4 UNIT GUIDE

UNIT OVERVIEW:
This unit extends fraction understanding to equivalent fractions, addition and subtraction with like denominators, multiplication of fractions by whole numbers, and introduces decimal notation. Students connect fractions and decimals through their shared foundation in place value.

LEARNING PROGRESSION:
1. Generating equivalent fractions
2. Adding and subtracting fractions with like denominators
3. Mixed numbers and improper fractions
4. Multiplying fractions by whole numbers
5. Decimal notation for tenths and hundredths
6. Comparing decimals

COMMON MISCONCEPTIONS:
- Adding denominators when adding fractions
- Thinking 0.5 is less than 0.25 because 5 < 25
- Not understanding decimal place value
- Confusion between mixed numbers and multiplication

INSTRUCTIONAL STRATEGIES:

Visual Fraction Models:
Use fraction strips, circles, and number lines extensively. Students should see equivalent fractions as the same amount.

Like Denominators:
When denominators are the same, we''re adding parts of the same size. 3/8 + 2/8 = 5 eighths = 5/8.

Decimal as Fractions:
Introduce decimals as another way to write fractions with denominators of 10 and 100. 0.7 = 7/10. 0.35 = 35/100.

Money Connection:
Use money to understand decimals. $0.25 is 25 hundredths of a dollar. This provides concrete context.

Multiplication Meaning:
3 × 1/4 means 3 groups of 1/4 = 3/4. Use visual models and connect to repeated addition.

VOCABULARY TO DEVELOP:
equivalent fractions, common denominator, like denominators, mixed number, improper fraction, decimal, tenths, hundredths',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Fractions and Decimals' AND grade_level = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- HIGH SCHOOL MATH UNITS (GRADES 9-12)
-- ============================================================================

-- Linear Equations and Inequalities (Grade 9 - Algebra I)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Linear Equations and Inequalities' AND grade_level = 9),
  'Linear Equations and Inequalities Teaching Guide',
  'Comprehensive pedagogical approach for linear equations and inequalities in Algebra I',
  'LINEAR EQUATIONS AND INEQUALITIES - ALGEBRA I UNIT GUIDE

UNIT OVERVIEW:
This foundational Algebra I unit develops proficiency with solving and graphing linear equations and inequalities. Students extend their equation-solving from middle school to include variables on both sides, special cases, and absolute value. These skills are essential for all future algebraic work.

LEARNING PROGRESSION:
1. Multi-step equations (variables on one side)
2. Equations with variables on both sides
3. Special cases: no solution and infinite solutions
4. Linear inequalities and graphing on number lines
5. Compound inequalities (and/or)
6. Absolute value equations and inequalities

COMMON MISCONCEPTIONS:
- Distributing only to the first term
- Sign errors when solving (especially with negatives)
- Not reversing inequality when multiplying/dividing by negative
- Confusing "and" and "or" in compound inequalities
- Forgetting the ± in absolute value equations

INSTRUCTIONAL STRATEGIES:

Justification Required:
Students should justify each step. "What operation did you use? Why is that allowed?" Build algebraic reasoning.

Balance Model:
Use the balance model: whatever you do to one side, you must do to the other. This builds understanding of equality.

Special Cases Discussion:
Explore what 2x + 3 = 2x + 3 (all solutions) and 2x + 3 = 2x + 5 (no solution) mean. When is an equation always true? Never true?

Inequality Graphing:
Graph solutions on number lines. Discuss why we use open vs closed circles. Connect to the inequality symbols.

Compound Inequality Venn Diagrams:
Use Venn diagrams to distinguish "and" (intersection) from "or" (union) solutions.

Absolute Value Meaning:
|x| is distance from zero. |x - 3| is distance from 3. This interpretation helps with equations and inequalities.

Real-World Contexts:
Use contexts: budgeting (inequalities), distance (absolute value), rates and fees (equations). Mathematics should solve real problems.

VOCABULARY TO DEVELOP:
equation, inequality, solve, solution, variable, coefficient, inverse operation, absolute value, compound inequality, no solution, infinite solutions',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Linear Equations and Inequalities' AND grade_level = 9)
ON CONFLICT DO NOTHING;

-- Linear Functions and Their Graphs (Grade 9)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Linear Functions and Their Graphs' AND grade_level = 9),
  'Linear Functions and Their Graphs Teaching Guide',
  'Comprehensive pedagogical approach for linear functions in Algebra I',
  'LINEAR FUNCTIONS AND THEIR GRAPHS - ALGEBRA I UNIT GUIDE

UNIT OVERVIEW:
This unit develops understanding of linear functions, their multiple representations, and their real-world applications. Students learn to write, graph, and interpret linear equations in various forms, understanding slope as rate of change and y-intercept as starting value.

LEARNING PROGRESSION:
1. Introduction to functions (domain, range, function notation)
2. Graphing linear equations from tables
3. Slope as rate of change
4. Slope-intercept form (y = mx + b)
5. Point-slope form
6. Standard form
7. Parallel and perpendicular lines

COMMON MISCONCEPTIONS:
- Confusing slope and y-intercept
- Rise/run errors (especially with negative slopes)
- Not understanding that all points on the line are solutions
- Difficulty connecting different representations
- Thinking vertical lines have slope of 0 (undefined, not zero)

INSTRUCTIONAL STRATEGIES:

Function Concept:
Build understanding that a function is a rule assigning each input exactly one output. Use mapping diagrams, tables, graphs.

Slope Meaning:
Slope is rate of change. In y = 2x + 5, you start at 5 and increase by 2 for each unit increase in x. Connect to context: cost per item, miles per hour.

Multiple Representations:
Move fluently between table, graph, equation, and context. Given any one, students should produce the others.

Graphing Calculator:
Use technology to explore. Change m in y = mx + b and see how the graph changes. Develop intuition about parameters.

Real-World Modeling:
Model situations: cell phone plans, distance-time, depreciation. Interpret slope and y-intercept in context.

Form Comparison:
Compare slope-intercept, point-slope, and standard forms. When is each most useful? How do you convert?

VOCABULARY TO DEVELOP:
function, domain, range, slope, rate of change, y-intercept, x-intercept, linear, slope-intercept form, point-slope form, standard form, parallel, perpendicular',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Linear Functions and Their Graphs' AND grade_level = 9)
ON CONFLICT DO NOTHING;

-- Systems of Equations (Grade 9)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Systems of Equations' AND grade_level = 9),
  'Systems of Equations Teaching Guide',
  'Comprehensive pedagogical approach for systems of equations in Algebra I',
  'SYSTEMS OF EQUATIONS - ALGEBRA I UNIT GUIDE

UNIT OVERVIEW:
This unit develops understanding of systems of two linear equations and multiple methods for solving them. Students learn that the solution is the point where two lines intersect - a pair of values that makes BOTH equations true. Real-world applications provide context and motivation.

LEARNING PROGRESSION:
1. Introduction: what is a system? What is a solution?
2. Solving by graphing
3. Solving by substitution
4. Solving by elimination
5. Special cases: no solution, infinite solutions
6. Word problems requiring systems

COMMON MISCONCEPTIONS:
- Finding x and thinking you''re done (forgetting to find y)
- Errors in substitution (not replacing ALL instances)
- Sign errors in elimination
- Not understanding what "no solution" and "infinite solutions" mean graphically
- Setting up word problems incorrectly

INSTRUCTIONAL STRATEGIES:

Graphical Introduction:
Start with graphing. The solution is where lines cross. This visual builds understanding before algebraic methods.

Method Comparison:
Teach all three methods (graphing, substitution, elimination) and discuss when each is most efficient. Students should choose strategically.

Verify Solutions:
Always verify by substituting back into BOTH original equations. This catches errors and reinforces the meaning of "solution."

Special Cases Graphically:
Parallel lines (no solution) never intersect. Same line (infinite solutions) overlaps completely. Connect algebra to geometry.

Real-World Systems:
Use contexts: cost comparisons, mixture problems, rate problems. "When do two cell phone plans cost the same?"

Multiple Representations:
Given a word problem, write the system, solve algebraically, and verify graphically if possible.

VOCABULARY TO DEVELOP:
system of equations, solution of a system, simultaneous equations, substitution, elimination, consistent, inconsistent, dependent, independent',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Systems of Equations' AND grade_level = 9)
ON CONFLICT DO NOTHING;

-- Foundations of Geometry (Grade 10)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Foundations of Geometry' AND grade_level = 10),
  'Foundations of Geometry Teaching Guide',
  'Comprehensive pedagogical approach for foundations of geometry',
  'FOUNDATIONS OF GEOMETRY - GEOMETRY UNIT GUIDE

UNIT OVERVIEW:
This unit establishes the logical framework for geometry. Students learn undefined terms, definitions, postulates, and the structure of deductive reasoning. They develop proof-writing skills and explore relationships formed by parallel lines and transversals.

LEARNING PROGRESSION:
1. Points, lines, planes, and their relationships
2. Measuring segments and angles
3. Inductive vs deductive reasoning
4. Conditional statements and their forms
5. Introduction to proofs (two-column and paragraph)
6. Parallel lines and transversals
7. Proving lines parallel

COMMON MISCONCEPTIONS:
- Confusing inductive and deductive reasoning
- Difficulty with conditional statement forms (converse, inverse, contrapositive)
- Not understanding that proofs require justification for EVERY step
- Confusing angle relationships with parallel lines
- Thinking proofs must follow one specific format

INSTRUCTIONAL STRATEGIES:

Building from Intuition:
Start with intuitive understanding, then formalize. Students already know parallel lines - now we define and prove.

Reasoning Skills:
Distinguish between conjecture (inductive) and proof (deductive). Mathematical proof requires deductive reasoning from accepted premises.

Proof Framework:
Introduce proofs gradually. Start with fill-in-the-blank proofs, then guided proofs, then independent proofs.

Parallel Line Angles:
Systematically explore all angle pairs: corresponding, alternate interior, alternate exterior, same-side interior. Use measurement and proof.

Real-World Connections:
Architecture, engineering, and design use geometric principles. Connect abstract concepts to applications.

Technology Integration:
Use dynamic geometry software to explore and conjecture before proving.

VOCABULARY TO DEVELOP:
point, line, plane, segment, ray, angle, postulate, theorem, proof, parallel, perpendicular, transversal, corresponding angles, alternate interior angles',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Foundations of Geometry' AND grade_level = 10)
ON CONFLICT DO NOTHING;

-- Right Triangles and Trigonometry (Grade 10)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Right Triangles and Trigonometry' AND grade_level = 10),
  'Right Triangles and Trigonometry Teaching Guide',
  'Comprehensive pedagogical approach for right triangles and trigonometry',
  'RIGHT TRIANGLES AND TRIGONOMETRY - GEOMETRY UNIT GUIDE

UNIT OVERVIEW:
This unit develops understanding of the Pythagorean theorem and introduces trigonometric ratios. Students learn to find missing sides and angles in right triangles using these powerful tools. The Laws of Sines and Cosines extend these concepts to non-right triangles.

LEARNING PROGRESSION:
1. Pythagorean theorem and its converse
2. Special right triangles (45-45-90 and 30-60-90)
3. Defining sine, cosine, and tangent
4. Finding missing sides using trigonometry
5. Finding missing angles using inverse trig
6. Angles of elevation and depression
7. Laws of Sines and Cosines

COMMON MISCONCEPTIONS:
- Using Pythagorean theorem on non-right triangles
- Confusing which sides go in the trig ratio (opposite, adjacent to WHICH angle?)
- Calculator in wrong mode (degrees vs radians)
- Forgetting ± on square roots
- Applying special right triangle ratios incorrectly

INSTRUCTIONAL STRATEGIES:

Pythagorean Proof:
Prove the Pythagorean theorem visually (area rearrangement). Understanding WHY it works supports when to apply it.

Special Triangles Derivation:
Derive 45-45-90 and 30-60-90 ratios from the Pythagorean theorem. Understanding the derivation aids memory.

SOHCAHTOA Introduction:
Introduce trig ratios through similarity. All 30-60-90 triangles are similar, so their ratios are constant. This IS trigonometry.

Multiple Representations:
Use the unit circle to connect geometric and circular definitions of trig functions. Build toward calculus.

Application Problems:
Height of trees, distance across lakes, shadows - right triangle trigonometry solves real measurement problems.

Law of Sines and Cosines:
Extend to oblique triangles. Discuss when to use each law based on given information.

VOCABULARY TO DEVELOP:
Pythagorean theorem, hypotenuse, leg, sine, cosine, tangent, opposite, adjacent, angle of elevation, angle of depression, Law of Sines, Law of Cosines',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Right Triangles and Trigonometry' AND grade_level = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VERIFICATION QUERY
-- ============================================================================
SELECT
  'Math unit prompts' as category,
  COUNT(*) as total
FROM prompt_templates
WHERE prompt_type = 'unit_global'
  AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');
