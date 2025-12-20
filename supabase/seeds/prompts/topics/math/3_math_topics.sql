-- Grade 3 Math Topic Prompts
-- Comprehensive 500+ word teaching guides for each topic

-- ============================================
-- MULTIPLICATION AND DIVISION UNIT
-- ============================================

-- Understanding Multiplication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Multiplication' AND grade_level_min = 3),
  'Understanding Multiplication Topic Guide',
  'Comprehensive teaching approach for multiplication concepts',
  'UNDERSTANDING MULTIPLICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand equal groups and arrays from grade 2, use repeated addition fluently, skip count by 2s, 5s, and 10s, and understand place value to 1000.

LEARNING OBJECTIVES:
Students will interpret multiplication as combining equal groups, use arrays to model multiplication, connect multiplication to repeated addition, understand multiplication notation (× and factors), and solve multiplication problems with concrete and pictorial representations.

KEY CONCEPTS:
1. Multiplication represents equal groups (3 groups of 4 = 3 × 4)
2. Arrays show multiplication visually (rows × columns)
3. Multiplication is a shortcut for repeated addition
4. Factor × factor = product
5. The × symbol means "groups of" or "times"

COMMON MISCONCEPTIONS:
- Confusing which number is the multiplier vs multiplicand
- Thinking multiplication always makes numbers bigger
- Not connecting to prior equal groups knowledge
- Difficulty reading multiplication sentences correctly
- Confusion between 3 × 4 and 4 × 3 (conceptually different even if same answer)

TEACHING SEQUENCE:

Hook/Engagement:
"If I have 4 bags with 5 apples each, how many apples total? I could add 5 + 5 + 5 + 5 = 20. But there''s a faster way mathematicians use. Today we learn multiplication!"

Direct Instruction:
Build from Grade 2 foundations. Show 3 groups of 6 objects. "We can write this as 3 × 6, which means 3 groups of 6. We read it as ''three times six.'' The answer, 18, is called the product."

Model with arrays: "An array with 4 rows and 5 in each row is written as 4 × 5 = 20."

Connect representations: Groups picture → array → repeated addition → multiplication sentence.

Introduce vocabulary: factors (the numbers being multiplied), product (the answer).

Guided Practice:
Draw equal groups for multiplication sentences, write multiplication for pictures, build arrays with tiles, translate between representations, partner discussions about connections.

Independent Application:
Match pictures to equations, draw arrays for given multiplications, solve word problems with multiplication, create own equal groups stories.

DIFFERENTIATION:

Struggling Learners:
- Use manipulatives for every problem
- Focus on 2s, 5s, and 10s initially
- Maintain connection to repeated addition
- Use graphic organizers for representations
- Small group reteaching with concrete models

Advanced Learners:
- Explore larger factors
- Investigate commutativity through arrays
- Create multiplication word problems
- Begin fact fluency practice
- Explore multiplication patterns

ASSESSMENT INDICATORS:
- Interprets multiplication as equal groups correctly
- Creates arrays matching multiplication sentences
- Connects multiplication to repeated addition
- Uses vocabulary (factor, product) appropriately
- Solves contextual multiplication problems

REAL-WORLD CONNECTIONS:
Arrays in everyday life (egg cartons, tiles, windows), packaging (items per box), pricing (items at same cost), organizing collections into equal groups.

VOCABULARY:
multiply, multiplication, times, factor, product, equal groups, array, rows, columns, repeated addition

CONNECTION TO FUTURE LEARNING:
This foundational understanding supports multiplication fact fluency, multi-digit multiplication, and understanding of multiplicative relationships in fractions and algebra.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Multiplication' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Multiplication Facts to 5
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplication Facts to 5' AND grade_level_min = 3),
  'Multiplication Facts to 5 Topic Guide',
  'Comprehensive teaching approach for basic multiplication facts',
  'MULTIPLICATION FACTS TO 5 - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand what multiplication means, connect multiplication to arrays and equal groups, skip count by 2s, 3s, 4s, and 5s, and use repeated addition.

LEARNING OBJECTIVES:
Students will develop fluency with multiplication facts 0-5, use strategies to derive facts, understand patterns within fact families, and recall facts with increasing automaticity.

KEY CONCEPTS:
1. Facts can be learned through understanding, not just memorization
2. Skip counting provides a path to products
3. Patterns help: 5s end in 0 or 5, 2s are even numbers
4. Zero times any number equals zero
5. One times any number equals that number

COMMON MISCONCEPTIONS:
- Memorizing without understanding
- Confusing × 0 with × 1 effects
- Thinking facts must be learned in order
- Not recognizing that 3 × 5 = 5 × 3
- Over-relying on counting by ones

TEACHING SEQUENCE:

Hook/Engagement:
"Imagine knowing the answer to 4 × 5 as fast as you know your name. That''s what fluency feels like! We''ll build that superpower starting with facts you almost already know."

Direct Instruction:
Teach strategically, not sequentially:

×0 Facts: "Zero groups of anything is zero. 5 groups of zero is still zero. Any number times zero equals zero."

×1 Facts: "One group of 6 is just 6. 6 groups of 1 is also 6. Multiplying by 1 keeps the number the same."

×2 Facts: "Doubles! 2 × 7 is the same as 7 + 7. Connect to doubling."

×5 Facts: "Skip count by 5. Products end in 0 or 5. Use the clock (5, 10, 15...)."

×3 and ×4 Facts: Build from known facts. 3 × 6 = (2 × 6) + 6 = 12 + 6 = 18.

Guided Practice:
Strategy-based practice (not drill), pattern exploration, fact sorts, partner games focusing on strategy discussion.

Independent Application:
Timed practice (tracking personal growth), flashcard practice with strategy backup, application in word problems.

DIFFERENTIATION:

Struggling Learners:
- Focus on ×0, ×1, ×2, ×5 first (easier patterns)
- Use visual fact cards with arrays
- Allow skip counting as a valid strategy
- Reduce quantity, increase quality of practice
- Connect facts to contexts they understand

Advanced Learners:
- Begin ×6 through ×9 facts
- Explore patterns (products of 9)
- Missing factor problems
- Two-step problems using multiplication
- Create strategy posters for classmates

ASSESSMENT INDICATORS:
- Recalls ×0 and ×1 facts instantly
- Demonstrates strategy for deriving facts
- Shows increasing speed on ×2 and ×5 facts
- Makes progress on ×3 and ×4 facts
- Applies facts to solve problems

VOCABULARY:
multiplication fact, product, factor, multiply, times, fluency, strategy, skip count, double

CONNECTION TO FUTURE LEARNING:
Fact fluency with 0-5 builds toward complete fact mastery, multi-digit multiplication, division understanding, and efficient problem-solving.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplication Facts to 5' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Multiplication Facts 6-10
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplication Facts 6-10' AND grade_level_min = 3),
  'Multiplication Facts 6-10 Topic Guide',
  'Comprehensive teaching approach for advanced multiplication facts',
  'MULTIPLICATION FACTS 6-10 - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need fluency with facts 0-5, understanding of the commutative property (5 × 7 = 7 × 5), skip counting ability, and strategies for deriving facts from known facts.

LEARNING OBJECTIVES:
Students will develop fluency with multiplication facts involving 6, 7, 8, 9, and 10, use strategies like doubling and decomposition, recognize patterns especially in ×9 facts, and achieve automaticity for problem-solving efficiency.

KEY CONCEPTS:
1. If you know 5 × 7, you already know 7 × 5 (commutative property halves the facts to learn)
2. ×6 is ×5 plus one more group
3. ×9 has special patterns (digits sum to 9, tens digit is one less than other factor)
4. ×10 adds a zero to the number
5. Unknown facts can be derived from known facts

COMMON MISCONCEPTIONS:
- Believing these facts are "hard" (mindset issue)
- Not using commutative property to reduce facts
- Not recognizing patterns in ×9
- Over-relying on counting without efficiency
- Confusing ×10 pattern with ×0 pattern

TEACHING SEQUENCE:

Hook/Engagement:
"You already know more than half of these facts! Remember, 6 × 8 is the same as 8 × 6. Let''s count how many are really new..." Show that most facts connect to facts they already know.

Direct Instruction:
×10 Facts: "Just add a zero. 7 × 10 = 70. Why? Ten 7s is like skip counting by 10 seven times."

×9 Facts: "The magic of 9! For 9 × 4: hold up 10 fingers, put down the 4th finger. You see 3 and 6: the answer is 36! Also, digits always sum to 9."

×6, ×7, ×8: "Use what you know. 6 × 8 = 5 × 8 + 8 = 40 + 8 = 48. Or think: 6 × 8 = 6 × 4 × 2 = 24 × 2 = 48."

Emphasize: "There are only 15 new facts if you use commutativity: 6×6, 6×7, 6×8, 6×9, 7×7, 7×8, 7×9, 8×8, 8×9, 9×9, plus ×10 facts."

Guided Practice:
Strategy practice for each family, pattern exploration for ×9, partner drills with strategy discussion, games focusing on the "tricky" facts.

Independent Application:
Mixed fact practice, timed personal best tracking, word problems requiring facts, creating strategy cards.

DIFFERENTIATION:

Struggling Learners:
- Focus on ×10 and ×9 patterns first
- Maintain strategy cards as reference
- Practice fewer facts deeply
- Use array visuals consistently
- Celebrate incremental progress

Advanced Learners:
- Perfect recall challenges
- Extend to ×11 and ×12
- Mental math challenges
- Division fact connections
- Apply to multi-digit estimation

ASSESSMENT INDICATORS:
- Uses commutative property to reduce memorization load
- Applies ×9 patterns correctly
- Derives unknown facts from known facts
- Shows increasing automaticity
- Applies facts efficiently in problems

VOCABULARY:
fact family, commutative property, pattern, derive, automaticity, fluency

CONNECTION TO FUTURE LEARNING:
Complete fact mastery enables efficient multi-digit multiplication, division fluency, and algebraic problem-solving.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplication Facts 6-10' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Understanding Division
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Division' AND grade_level_min = 3),
  'Understanding Division Topic Guide',
  'Comprehensive teaching approach for division concepts',
  'UNDERSTANDING DIVISION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have multiplication understanding, experience with equal groups and arrays, knowledge of fair sharing, and beginning multiplication fact fluency.

LEARNING OBJECTIVES:
Students will interpret division as equal sharing (partitive), interpret division as grouping (quotative), connect division to multiplication, use division notation, and solve division problems using multiple strategies.

KEY CONCEPTS:
1. Division has two meanings: sharing equally and making groups
2. Division is the inverse of multiplication
3. Dividend ÷ divisor = quotient
4. If 3 × 4 = 12, then 12 ÷ 3 = 4 and 12 ÷ 4 = 3
5. Division can be represented with arrays (thinking "how many rows?")

COMMON MISCONCEPTIONS:
- Only thinking of division as sharing, not grouping
- Not connecting division to multiplication
- Confusing dividend, divisor, and quotient
- Thinking division always makes numbers smaller
- Difficulty with divisibility (when division doesn''t come out even)

TEACHING SEQUENCE:

Hook/Engagement:
Present two scenarios: "I have 12 cookies to share among 3 friends. How many does each get?" and "I have 12 cookies. I want to give 3 to each friend. How many friends can get cookies?" Both are division but with different meanings!

Direct Instruction:
Model partitive (sharing) division: "12 ÷ 3 means 12 shared among 3 groups. Deal out equally: 1 each, 2 each, 3 each, 4 each. Each group gets 4."

Model quotative (grouping) division: "12 ÷ 3 means how many groups of 3 are in 12. Make groups: 3, 3, 3, 3. There are 4 groups."

Connect to multiplication: "If I know 3 × ? = 12, then I know 12 ÷ 3 = 4. Division and multiplication are related!"

Show the ÷ symbol and equation format: 12 ÷ 3 = 4. Introduce vocabulary: dividend, divisor, quotient.

Guided Practice:
Act out division stories, use manipulatives for both interpretations, connect to multiplication facts, solve word problems identifying the type of division.

Independent Application:
Division story problems, "think multiplication" practice, create division situations, match divisions to multiplications.

DIFFERENTIATION:

Struggling Learners:
- Focus on sharing (partitive) first as more intuitive
- Use manipulatives extensively
- Smaller numbers initially
- Keep multiplication connection explicit
- Use division mats for organization

Advanced Learners:
- Division with remainders introduction
- Larger dividends
- Create both types of word problems
- Explore division by 1 and division by itself
- Connect to fraction concepts

ASSESSMENT INDICATORS:
- Interprets division in both sharing and grouping contexts
- Connects division problems to multiplication
- Uses correct vocabulary
- Solves division problems accurately
- Explains division reasoning

VOCABULARY:
divide, division, dividend, divisor, quotient, share equally, groups of, related facts, inverse operation

CONNECTION TO FUTURE LEARNING:
Division understanding supports fact fluency, long division, fraction concepts, and algebraic equation solving.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Division' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Division Facts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Division Facts' AND grade_level_min = 3),
  'Division Facts Topic Guide',
  'Comprehensive teaching approach for division fact fluency',
  'DIVISION FACTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand what division means, have multiplication fact fluency, recognize the multiplication-division relationship, and use think-multiplication strategies.

LEARNING OBJECTIVES:
Students will develop fluency with division facts through 100 ÷ 10, use multiplication to solve division problems, recognize fact family relationships, and apply division facts efficiently.

KEY CONCEPTS:
1. Every multiplication fact gives two division facts
2. Think multiplication to divide: 56 ÷ 8 = ? Think: 8 × ? = 56
3. Fact families connect four related facts
4. Dividing by 1 gives the same number
5. A number divided by itself equals 1 (except 0)

COMMON MISCONCEPTIONS:
- Treating division facts as entirely separate from multiplication
- Not automatically thinking "what times gives this?"
- Confusion with 0 in division (n ÷ 0 is undefined, 0 ÷ n = 0)
- Not seeing that division fact fluency requires multiplication fluency
- Over-relying on counting or repeated subtraction

TEACHING SEQUENCE:

Hook/Engagement:
"Here''s a secret: If you know your multiplication facts, you already know your division facts! Let''s prove it." Show that 7 × 8 = 56 means you know 56 ÷ 7 = 8 and 56 ÷ 8 = 7.

Direct Instruction:
Model the think-multiplication strategy: "42 ÷ 6 = ? I think: 6 times what equals 42? I know 6 × 7 = 42, so 42 ÷ 6 = 7."

Practice with fact families: 3 × 5 = 15, 5 × 3 = 15, 15 ÷ 3 = 5, 15 ÷ 5 = 3. "These four facts are a family!"

Special cases:
- n ÷ 1 = n (anything divided by 1 stays the same)
- n ÷ n = 1 (anything divided by itself is 1)
- 0 ÷ n = 0 (zero divided by anything is zero)
- n ÷ 0 is not allowed (we cannot divide by zero)

Guided Practice:
Fact family triangles, think-multiplication practice, flashcards with both operations, partner drills emphasizing the connection.

Independent Application:
Mixed multiplication and division practice, fact family completion, word problems requiring division, timed personal bests.

DIFFERENTIATION:

Struggling Learners:
- Strengthen multiplication facts first
- Use fact family triangles consistently
- Focus on ÷1, ÷2, ÷5, ÷10 facts first
- Provide think-multiplication prompts
- Allow more time for automaticity

Advanced Learners:
- Division with remainders
- Multi-step problems
- Missing divisor problems
- Pattern exploration in division
- Extend to larger dividends

ASSESSMENT INDICATORS:
- Uses think-multiplication for division
- Completes fact families correctly
- Recalls division facts with increasing speed
- Handles special cases correctly
- Applies division facts to problems

VOCABULARY:
division fact, fact family, related facts, think multiplication, divisible, quotient

CONNECTION TO FUTURE LEARNING:
Division fact fluency supports long division, fraction operations, and efficient problem-solving throughout mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Division Facts' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Properties of Multiplication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Properties of Multiplication' AND grade_level_min = 3),
  'Properties of Multiplication Topic Guide',
  'Comprehensive teaching approach for multiplication properties',
  'PROPERTIES OF MULTIPLICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand multiplication concepts, have beginning fact fluency, experience with arrays, and comfort decomposing numbers.

LEARNING OBJECTIVES:
Students will apply the commutative property, apply the associative property, apply the distributive property, and use properties to solve problems more efficiently.

KEY CONCEPTS:
1. Commutative property: order doesn''t matter (3 × 5 = 5 × 3)
2. Associative property: grouping doesn''t matter (2 × 3) × 4 = 2 × (3 × 4)
3. Distributive property: multiplication distributes over addition (4 × 7 = 4 × 5 + 4 × 2)
4. Identity property: multiplying by 1 gives the same number
5. Zero property: multiplying by 0 gives 0

COMMON MISCONCEPTIONS:
- Thinking properties are just "rules to memorize"
- Not understanding why the properties work
- Difficulty applying distributive property
- Confusing when to use each property
- Thinking properties work the same for division

TEACHING SEQUENCE:

Hook/Engagement:
"I''m going to show you some math magic tricks. But they''re not really magic—they''re properties that always work. Once you know them, you can use them to solve problems faster!"

Direct Instruction:
Commutative Property: Show with arrays. A 3 × 5 array can be rotated to become a 5 × 3 array. Same total! "Order doesn''t change the product."

Associative Property: "To find 2 × 3 × 4, I can compute (2 × 3) × 4 = 6 × 4 = 24, OR 2 × (3 × 4) = 2 × 12 = 24. Same answer! We can group factors any way."

Distributive Property: "6 × 7 seems hard. But 6 × 7 = 6 × (5 + 2) = 6 × 5 + 6 × 2 = 30 + 12 = 42." Show with array: split the 7 into 5 and 2.

Identity and Zero: "Any number times 1 stays the same. Any number times 0 becomes 0."

Guided Practice:
Apply commutative property to reduce facts to learn, use associative property to find easier groupings, break apart facts with distributive property, identify properties in equations.

Independent Application:
Solve problems using properties, explain which property helps, create examples of each property, use properties for mental math.

DIFFERENTIATION:

Struggling Learners:
- Focus on commutative first (most intuitive with arrays)
- Use manipulatives to demonstrate properties
- Practice one property at a time
- Provide property reference cards
- Use smaller numbers for examples

Advanced Learners:
- Apply properties to larger numbers
- Explore why properties don''t work for division
- Use properties for mental math challenges
- Investigate other number operations
- Create property demonstration projects

ASSESSMENT INDICATORS:
- Identifies properties by name
- Applies commutative property to facts
- Uses distributive property to break apart problems
- Explains why properties work using models
- Chooses helpful properties for specific problems

VOCABULARY:
property, commutative property, associative property, distributive property, identity property, zero property, order, grouping

CONNECTION TO FUTURE LEARNING:
Properties of multiplication extend to algebraic manipulation, simplifying expressions, and understanding mathematical structure.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties of Multiplication' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Word Problems (Multiplication and Division)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Word Problems' AND grade_level_min = 3),
  'Multiplication and Division Word Problems Topic Guide',
  'Comprehensive teaching approach for problem solving',
  'WORD PROBLEMS (MULTIPLICATION AND DIVISION) - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need multiplication and division understanding, beginning fact fluency, experience with addition/subtraction word problems, and reading comprehension appropriate for grade level.

LEARNING OBJECTIVES:
Students will identify multiplication and division situations in context, determine which operation is needed, solve one-step problems, explain their problem-solving process, and begin tackling two-step problems.

KEY CONCEPTS:
1. Equal groups and arrays signal multiplication
2. Sharing equally and grouping signal division
3. Unknown product = multiplication
4. Unknown factor = division (either number of groups or group size)
5. Context determines meaning, not just keywords

COMMON MISCONCEPTIONS:
- Over-relying on keywords rather than understanding
- Automatically multiplying when they see "each"
- Difficulty distinguishing multiplication from division situations
- Not checking if answer makes sense in context
- Struggling to represent the problem before solving

TEACHING SEQUENCE:

Hook/Engagement:
"Math is everywhere! When you figure out how many stickers are in 3 packs of 8, or how to share 24 candies among 6 friends, you''re using multiplication and division. Let''s become expert problem solvers!"

Direct Instruction:
Teach problem structures, not keywords:

Equal Groups Multiplication: "There are 5 rows with 6 chairs in each row. How many chairs?" (Groups × items per group = total)

Equal Groups Division (Grouping): "There are 24 students. Each table seats 4. How many tables needed?" (Total ÷ group size = number of groups)

Equal Groups Division (Sharing): "24 cookies shared among 6 friends. How many each?" (Total ÷ number of groups = group size)

Use tape diagrams and bar models to represent problems before solving.

Guided Practice:
Sort problems by operation needed, draw representations before computing, explain reasoning for operation choice, solve and check reasonableness.

Independent Application:
Varied problem types, two-step problems, create own word problems, explain solutions in writing.

DIFFERENTIATION:

Struggling Learners:
- Act out problems with manipulatives
- Draw every problem before solving
- Focus on one problem type at a time
- Use smaller numbers
- Provide problem type reference cards

Advanced Learners:
- Multi-step problems
- Problems with extra information
- Create challenging problems for classmates
- Explore problems with larger numbers
- Justify multiple solution methods

ASSESSMENT INDICATORS:
- Correctly identifies operation needed
- Represents problems with diagrams
- Solves problems accurately
- Checks that answer makes sense
- Explains reasoning clearly

VOCABULARY:
equal groups, each, in all, total, share equally, how many groups, how many in each group, represent, solve, check

CONNECTION TO FUTURE LEARNING:
Problem-solving skills extend to multi-step problems, fraction contexts, and algebraic problem solving.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Word Problems' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================
-- INTRODUCTION TO FRACTIONS UNIT
-- ============================================

-- What is a Fraction?
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'What is a Fraction?' AND grade_level_min = 3),
  'What is a Fraction Topic Guide',
  'Comprehensive teaching approach for fraction fundamentals',
  'WHAT IS A FRACTION? - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand equal parts (halves, thirds, fourths from grade 2), partition shapes into equal parts, use fair sharing language, and understand parts and wholes.

LEARNING OBJECTIVES:
Students will understand fractions as equal parts of a whole, identify numerator and denominator, read and write fractions, understand that the whole must be divided into equal parts, and represent fractions with models.

KEY CONCEPTS:
1. A fraction names equal parts of a whole
2. Denominator tells how many equal parts the whole is divided into
3. Numerator tells how many parts we are talking about
4. The whole must be specified (1/2 of a pizza vs 1/2 of a cookie are different amounts)
5. Equal parts must be the same size, not necessarily the same shape

COMMON MISCONCEPTIONS:
- Thinking any parts (not equal) form a fraction
- Confusing numerator and denominator
- Believing 1/4 is always larger than 1/8 (not considering different wholes)
- Not understanding that fractions represent numbers
- Thinking the fraction bar means "divided by" too early

TEACHING SEQUENCE:

Hook/Engagement:
"If I said you could have 1/2 of a candy bar OR 1/4 of a candy bar, which would you choose? Why? Today we''re going to become fraction experts!"

Direct Instruction:
Use concrete models: Fold a paper into 4 equal parts. "We have 4 equal parts. Each part is 1/4 (one-fourth). If we shade 3 of them, we have 3/4 (three-fourths)."

Introduce notation: "The bottom number, 4, is the denominator. It tells how many equal parts. The top number is the numerator. It tells how many parts we''re talking about."

Show fractions of shapes: circles, rectangles, other polygons. Emphasize EQUAL parts.

Non-example: A shape divided into unequal parts is NOT 1/3, 1/3, 1/3.

Guided Practice:
Identify fractions in pictures, shade fractions of shapes, write fractions for shaded portions, create fractions with paper folding.

Independent Application:
Fraction identification worksheets, draw fractions from descriptions, find fractions in everyday contexts, fraction matching games.

DIFFERENTIATION:

Struggling Learners:
- Use fraction circles and fraction bars
- Focus on unit fractions (1/2, 1/3, 1/4) first
- Paper folding for tactile learning
- Consistent models before variety
- Heavy emphasis on "equal parts"

Advanced Learners:
- Explore fractions greater than 1
- Fractions with larger denominators
- Create own fraction representations
- Begin fraction comparisons
- Explore fraction patterns

ASSESSMENT INDICATORS:
- Identifies numerator and denominator
- Represents fractions accurately
- Recognizes equal vs unequal parts
- Reads and writes fraction notation
- Explains what a fraction means

VOCABULARY:
fraction, numerator, denominator, equal parts, whole, part, one-half, one-third, one-fourth, unit fraction

CONNECTION TO FUTURE LEARNING:
This foundational understanding supports equivalent fractions, fraction operations, and the number line representation of fractions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What is a Fraction?' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Fractions on a Number Line
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fractions on a Number Line' AND grade_level_min = 3),
  'Fractions on a Number Line Topic Guide',
  'Comprehensive teaching approach for fraction number line placement',
  'FRACTIONS ON A NUMBER LINE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand fractions as parts of a whole, know numerator and denominator meanings, use number lines for whole numbers, and understand partitioning into equal parts.

LEARNING OBJECTIVES:
Students will understand fractions as numbers (not just parts), place fractions on number lines, identify fractions from number line locations, and see the relationship between fractions and whole numbers on the number line.

KEY CONCEPTS:
1. Fractions are numbers that can be placed on a number line
2. The distance from 0 to 1 represents the whole
3. The denominator determines how many equal parts to divide the whole into
4. The numerator tells which part (or how far from 0)
5. Fractions greater than 1 are beyond the 1 on the number line

COMMON MISCONCEPTIONS:
- Counting tick marks instead of spaces
- Not understanding the interval from 0 to 1 as the "whole"
- Placing fractions based on denominator only (thinking 1/8 is at 8)
- Confusion when number line extends beyond 1
- Not seeing fractions as numbers, just "pieces of things"

TEACHING SEQUENCE:

Hook/Engagement:
"We know 1, 2, 3 go on a number line. But what about numbers BETWEEN 1 and 2? That''s where fractions live! They fill in the gaps between whole numbers."

Direct Instruction:
Start with whole number line: 0, 1, 2, 3... "Today we zoom in between 0 and 1."

Divide the interval: "If I divide the space from 0 to 1 into 4 equal parts, I create fourths. The first mark is 1/4, then 2/4, then 3/4, then 4/4 which equals 1."

Model finding fractions: "To place 3/4, I divide 0 to 1 into 4 parts and count 3 parts from 0."

Extend beyond 1: "What about 5/4? That''s one whole (4/4) plus one more fourth. It''s past 1."

Guided Practice:
Label fractions on pre-partitioned number lines, partition number lines for given denominators, identify fractions at marked points, place fractions on open number lines.

Independent Application:
Number line worksheets, create number lines for different denominators, word problems involving fraction placement, compare fractions using number lines.

DIFFERENTIATION:

Struggling Learners:
- Use fraction strips aligned with number lines
- Focus on halves and fourths initially
- Pre-partitioned number lines
- Tactile number lines with movable markers
- Connect to rulers (halves and fourths)

Advanced Learners:
- Fractions greater than 1
- Mixed numbers on number lines
- Compare multiple fractions on same line
- Estimate fraction locations
- Create number lines for challenging denominators

ASSESSMENT INDICATORS:
- Places fractions accurately on number lines
- Identifies fractions from number line positions
- Partitions appropriately for given denominators
- Understands 0 to 1 as the whole
- Extends understanding past 1 for improper fractions

VOCABULARY:
number line, interval, partition, equal parts, between, greater than, less than, improper fraction, mixed number

CONNECTION TO FUTURE LEARNING:
Number line representation is crucial for comparing fractions, operations with fractions, and understanding fractions as points on the real number line.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fractions on a Number Line' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Equivalent Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equivalent Fractions' AND grade_level_min = 3),
  'Equivalent Fractions Topic Guide',
  'Comprehensive teaching approach for fraction equivalence',
  'EQUIVALENT FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need to understand what fractions represent, place fractions on number lines, work with fraction models, and understand equal parts.

LEARNING OBJECTIVES:
Students will understand that equivalent fractions name the same amount, generate simple equivalent fractions, recognize equivalence using visual models, and explain why fractions are equivalent.

KEY CONCEPTS:
1. Equivalent fractions represent the same portion of a whole
2. 1/2 = 2/4 = 3/6 = 4/8 (all name the same amount)
3. Visual models show equivalence (same area shaded)
4. Number lines show equivalence (same location)
5. Multiply numerator and denominator by the same number

COMMON MISCONCEPTIONS:
- Thinking fractions with different numbers can''t be equal
- Adding the same number to numerator and denominator (incorrect)
- Not understanding why multiplying by n/n works (it''s multiplying by 1)
- Believing equivalent fractions must look the same
- Difficulty seeing equivalence across different representations

TEACHING SEQUENCE:

Hook/Engagement:
"If I give you 1/2 of a pizza and give your friend 2/4 of the same size pizza, who gets more? Let''s investigate!" Use actual paper pizzas to show they''re the same.

Direct Instruction:
Visual demonstration: Fold paper in half, shade one half (1/2). Fold the same paper in half again—now it''s in fourths with 2 shaded (2/4). "Same amount of paper is shaded! 1/2 = 2/4"

Number line demonstration: Place 1/2 on a number line divided into halves. Then show a number line divided into fourths—2/4 is at the same spot!

Pattern discovery: "1/2 = 2/4 = 3/6 = 4/8. What''s happening to the numbers?" (Both numerator and denominator are multiplied by the same number)

Why it works: "Multiplying by 2/2 is like multiplying by 1. It doesn''t change the value!"

Guided Practice:
Find equivalent fractions using models, complete equivalence patterns, match equivalent fractions, generate equivalents for given fractions.

Independent Application:
Equivalence worksheets, create visual proofs of equivalence, solve problems requiring equivalence, fraction matching games.

DIFFERENTIATION:

Struggling Learners:
- Heavy use of fraction manipulatives
- Focus on equivalents of 1/2 first
- Use same-size models for comparison
- Visual matching before numeric
- One denominator family at a time

Advanced Learners:
- Find multiple equivalents for one fraction
- Work with larger denominators
- Simplify fractions (reverse process)
- Explore patterns in equivalent fractions
- Apply equivalence to problem solving

ASSESSMENT INDICATORS:
- Identifies equivalent fractions using models
- Generates equivalent fractions
- Explains why fractions are equivalent
- Uses number lines to show equivalence
- Recognizes non-equivalent fractions

VOCABULARY:
equivalent, equal, same amount, same size, numerator, denominator, simplify

CONNECTION TO FUTURE LEARNING:
Equivalent fractions are essential for adding and subtracting fractions with unlike denominators and for simplifying fractions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equivalent Fractions' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Comparing Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Fractions' AND grade_level_min = 3),
  'Comparing Fractions Topic Guide',
  'Comprehensive teaching approach for fraction comparison',
  'COMPARING FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand fraction concepts, work with fraction models, place fractions on number lines, and understand equivalent fractions.

LEARNING OBJECTIVES:
Students will compare fractions with same denominator, compare fractions with same numerator, use visual models to compare any two fractions, use comparison symbols with fractions, and explain comparison reasoning.

KEY CONCEPTS:
1. Same denominator: compare numerators (larger numerator = larger fraction)
2. Same numerator: compare denominators (larger denominator = smaller pieces = smaller fraction)
3. Compare to benchmarks (0, 1/2, 1) when denominators and numerators differ
4. Fractions can be compared on number lines
5. The size of the whole matters (must compare same-sized wholes)

COMMON MISCONCEPTIONS:
- Thinking larger numbers always mean larger fractions (3/8 vs 2/4)
- Comparing numerators regardless of denominator
- Not ensuring same-sized wholes when comparing
- Confusing the rule for same numerator comparison
- Not using benchmark reasoning

TEACHING SEQUENCE:

Hook/Engagement:
"Would you rather have 3/4 of a pizza or 5/8 of a pizza? Can you convince me?" Allow students to debate, then show how to prove which is larger.

Direct Instruction:
Same denominator: "3/8 vs 5/8. Same size pieces (eighths). Who has more pieces? 5 > 3, so 5/8 > 3/8."

Same numerator: "3/4 vs 3/8. Same number of pieces, but different sizes. Fourths are bigger pieces than eighths (fewer cuts = bigger pieces). So 3/4 > 3/8."

Benchmark reasoning: "Is 3/8 greater or less than 1/2? Half of 8 is 4, so 4/8 = 1/2. 3/8 < 4/8, so 3/8 < 1/2."

Visual models: Use fraction strips and circles to compare, then verify with reasoning.

Guided Practice:
Compare fractions and explain reasoning, use models to verify, sort fractions from least to greatest, compare to benchmarks.

Independent Application:
Comparison worksheets, ordering activities, word problems involving comparison, create comparison problems.

DIFFERENTIATION:

Struggling Learners:
- Use fraction manipulatives consistently
- Focus on same denominator first
- Visual before symbolic
- Benchmark comparisons with 1/2
- Sentence frames for reasoning

Advanced Learners:
- Compare fractions with different numerators and denominators
- Find fractions between two fractions
- Order multiple fractions
- Create comparison puzzles
- Justify using multiple methods

ASSESSMENT INDICATORS:
- Compares same-denominator fractions correctly
- Compares same-numerator fractions correctly
- Uses benchmark reasoning
- Explains comparison reasoning
- Uses symbols accurately

VOCABULARY:
compare, greater than, less than, equal to, benchmark, reasoning, larger piece, smaller piece

CONNECTION TO FUTURE LEARNING:
Fraction comparison prepares students for ordering fractions, fraction operations, and proportional reasoning.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Fractions' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Fractions of a Set
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fractions of a Set' AND grade_level_min = 3),
  'Fractions of a Set Topic Guide',
  'Comprehensive teaching approach for fractions of groups',
  'FRACTIONS OF A SET - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand fractions as parts of a whole, work with area models, divide objects into equal groups, and connect fractions to division.

LEARNING OBJECTIVES:
Students will find fractions of a set of objects, understand that the whole can be a group (not just one thing), connect fractions of a set to division, and solve problems involving fractions of groups.

KEY CONCEPTS:
1. A whole can be a group of objects, not just a single shape
2. To find 1/4 of 12 objects, divide 12 into 4 equal groups (12 ÷ 4 = 3)
3. 3/4 of 12 = 3 groups of 3 = 9
4. Fractions of a set connect to division and multiplication
5. The denominator tells how many groups; numerator tells how many of those groups

COMMON MISCONCEPTIONS:
- Thinking fractions only apply to single shapes/objects
- Not connecting to division (1/4 of 20 = 20 ÷ 4)
- Confusing the process for unit fractions vs non-unit fractions
- Difficulty when total doesn''t divide evenly (not addressed in grade 3)
- Not understanding "of" means multiplication/division

TEACHING SEQUENCE:

Hook/Engagement:
"If 1/3 of the class likes pizza best, how many students is that?" Use the actual class count to make it relevant. "Fractions aren''t just for pizzas—they work for groups of things too!"

Direct Instruction:
Model with counters: "Here are 12 counters. To find 1/4 of 12, I divide into 4 equal groups. Each group has 3, so 1/4 of 12 = 3."

Extend to non-unit fractions: "To find 3/4 of 12, I find 1/4 first (3), then take 3 of those groups. 3 × 3 = 9. So 3/4 of 12 = 9."

Connect to notation: 1/4 × 12 = 12 ÷ 4 = 3. The fraction "of" a number means multiply (or divide by denominator then multiply by numerator).

Guided Practice:
Find fractions of sets with manipulatives, draw diagrams showing groups, solve word problems, connect to division equations.

Independent Application:
Fraction of a set worksheets, real-world problem solving (fractions of class, toys, etc.), create problems for classmates.

DIFFERENTIATION:

Struggling Learners:
- Use actual objects in equal groups
- Focus on unit fractions (1/2, 1/3, 1/4) first
- Use numbers divisible by the denominator
- Draw every problem
- Connect explicitly to division

Advanced Learners:
- Non-unit fractions of sets
- Larger numbers
- Two-step problems
- Find the whole given a fraction of it
- Explore what happens when division isn''t "nice"

ASSESSMENT INDICATORS:
- Finds unit fractions of sets accurately
- Extends to non-unit fractions
- Connects to division
- Represents problems with diagrams
- Solves word problems correctly

VOCABULARY:
fraction of a set, equal groups, of, whole set, part of the set, divide equally

CONNECTION TO FUTURE LEARNING:
Fractions of a set prepares students for multiplying fractions, percent problems, and proportional reasoning.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fractions of a Set' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================
-- MULTI-DIGIT ARITHMETIC UNIT
-- ============================================

-- Rounding Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rounding Numbers' AND grade_level_min = 3),
  'Rounding Numbers Topic Guide',
  'Comprehensive teaching approach for rounding to tens and hundreds',
  'ROUNDING NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand place value to thousands, locate numbers on number lines, use comparison symbols, and understand the concept of "closeness."

LEARNING OBJECTIVES:
Students will round whole numbers to the nearest 10 and nearest 100, use number lines to visualize rounding, apply rounding rules, and use rounding to estimate and check calculations.

KEY CONCEPTS:
1. Rounding finds the nearest "friendly" number (multiple of 10 or 100)
2. Look at the digit to the right of the rounding place
3. If 5 or more, round up; if less than 5, round down
4. Rounding is used for estimation, not exact answers
5. The same number rounds differently for different places

COMMON MISCONCEPTIONS:
- Changing all digits after rounding (347 to nearest 100 becomes 300, not 000)
- Confusion about what "round up" means for the target digit
- Not understanding when to use 0, 1, 2, 3, 4 vs 5, 6, 7, 8, 9 rule
- Thinking rounding gives exact answers
- Difficulty with numbers ending in 5 (always round up by convention)

TEACHING SEQUENCE:

Hook/Engagement:
"About how many students are in our school? You probably said a rounded number like ''about 400'' not ''exactly 387.'' Rounding helps us communicate approximate amounts!"

Direct Instruction:
Number line approach: "Where does 37 fall between 30 and 40? It''s closer to 40, so 37 rounds to 40."

Develop the rule: "The digit in the ones place tells us which way to go. 0-4 = round down (stay), 5-9 = round up."

Extend to hundreds: "Round 347 to the nearest hundred. 347 is between 300 and 400. Look at tens digit (4). Since 4 < 5, round down to 300."

Practice both: 347 → 350 (nearest ten), 347 → 300 (nearest hundred). "Different questions, different answers!"

Guided Practice:
Number line rounding, apply the rule, round to tens vs hundreds, use rounding for estimation.

Independent Application:
Rounding worksheets, estimate then calculate to check, round in context (about how many?), error analysis (find rounding mistakes).

DIFFERENTIATION:

Struggling Learners:
- Heavy use of number lines
- Round to nearest ten before hundred
- Use vertical number lines
- Highlight the key digit
- Mnemonic devices for the rule

Advanced Learners:
- Round to thousands
- Round to tens AND hundreds
- Estimate calculations using rounding
- Explore when rounding is appropriate
- Investigate rounding with larger numbers

ASSESSMENT INDICATORS:
- Rounds to nearest 10 accurately
- Rounds to nearest 100 accurately
- Uses number lines to verify
- Applies rounding to estimation
- Explains the rounding process

VOCABULARY:
round, nearest ten, nearest hundred, estimate, approximately, about

CONNECTION TO FUTURE LEARNING:
Rounding skills support estimation, mental math, and reasonableness checking in multi-digit operations and throughout mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rounding Numbers' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Adding Within 1000
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Within 1000' AND grade_level_min = 3),
  'Adding Within 1000 Topic Guide',
  'Comprehensive teaching approach for three-digit addition',
  'ADDING WITHIN 1000 - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should add within 100 fluently, understand place value to thousands, use regrouping with two-digit numbers, and have mental math strategies.

LEARNING OBJECTIVES:
Students will add three-digit numbers using multiple strategies, understand and apply regrouping (carrying), use place value understanding for addition, and check answers using estimation.

KEY CONCEPTS:
1. Add like place values (ones to ones, tens to tens, hundreds to hundreds)
2. Regroup when a place value sum exceeds 9
3. Strategies include standard algorithm, breaking apart, and compensation
4. Estimation helps check reasonableness
5. Place value understanding underlies the algorithm

COMMON MISCONCEPTIONS:
- Regrouping errors (forgetting the carried digit)
- Adding unlike place values
- Not regrouping when needed
- Difficulty with multiple regroupings
- Blindly following algorithm without understanding

TEACHING SEQUENCE:

Hook/Engagement:
"The school raised $456 for charity last month and $378 this month. How much total? These are real problems that need accurate addition. Let''s develop reliable strategies!"

Direct Instruction:
Strategy 1: Break apart by place value
456 + 378 = (400 + 300) + (50 + 70) + (6 + 8) = 700 + 120 + 14 = 834

Strategy 2: Standard algorithm with understanding
Demonstrate regrouping: 6 + 8 = 14 (write 4, regroup 1 ten). 5 + 7 + 1 = 13 (write 3, regroup 1 hundred). 4 + 3 + 1 = 8. Answer: 834.

Use base-ten blocks to show WHY regrouping works (10 ones become 1 ten, etc.)

Estimation check: 456 ≈ 460, 378 ≈ 380. 460 + 380 = 840. Our answer of 834 is reasonable!

Guided Practice:
Solve with manipulatives, practice the algorithm with understanding, estimate before calculating, multiple strategies for same problem.

Independent Application:
Mixed practice problems, word problems in context, error analysis (find mistakes), explain reasoning in writing.

DIFFERENTIATION:

Struggling Learners:
- Continue with base-ten blocks
- Use place value charts
- One regrouping before multiple
- Graph paper for alignment
- Focus on understanding, not speed

Advanced Learners:
- Four-digit addition
- Multiple addends
- Mental math challenges
- Create multi-step problems
- Explore alternative algorithms

ASSESSMENT INDICATORS:
- Adds without regrouping accurately
- Regroups correctly when needed
- Estimates to check reasonableness
- Explains the regrouping process
- Uses multiple strategies appropriately

VOCABULARY:
add, sum, regroup, carry, place value, hundreds, tens, ones, estimate, reasonable

CONNECTION TO FUTURE LEARNING:
Three-digit addition skills extend to larger numbers, decimal addition, and understanding of the base-ten system.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Within 1000' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Subtracting Within 1000
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Within 1000' AND grade_level_min = 3),
  'Subtracting Within 1000 Topic Guide',
  'Comprehensive teaching approach for three-digit subtraction',
  'SUBTRACTING WITHIN 1000 - TOPIC TEACHING GUIDE

PREREQUISITES:
Students need subtraction fluency within 100, regrouping (borrowing) experience, place value understanding to thousands, and adding within 1000 for checking.

LEARNING OBJECTIVES:
Students will subtract three-digit numbers using multiple strategies, understand and apply regrouping (borrowing), handle regrouping across zeros, and verify answers using addition or estimation.

KEY CONCEPTS:
1. Subtract like place values
2. Regroup (borrow) when there aren''t enough in a place value
3. Regrouping across zeros requires special attention
4. Addition can check subtraction
5. Multiple strategies exist (algorithm, counting up, etc.)

COMMON MISCONCEPTIONS:
- Subtracting smaller from larger regardless of position
- Regrouping errors (not reducing the borrowed-from place)
- Difficulty with zeros (regrouping across zeros)
- Not checking with addition
- Misaligning place values

TEACHING SEQUENCE:

Hook/Engagement:
"You saved $500 and bought a game for $267. How much do you have left? Subtraction with larger numbers follows the same ideas you know—let''s master it!"

Direct Instruction:
Standard algorithm with understanding:
524 - 378: Can''t take 8 from 4, so regroup. The 2 tens becomes 1 ten (cross out 2, write 1), and the 4 ones becomes 14 ones. 14 - 8 = 6. Can''t take 7 from 1, so regroup from hundreds. Continue...

Use base-ten blocks to show regrouping physically.

Regrouping across zeros: 500 - 267. Can''t borrow from 0 tens, so regroup the hundred into tens first, then into ones.

Counting up strategy: 267 + ? = 500. Count 267 → 300 (33), 300 → 500 (200). Total: 233.

Check: 146 + 378 = 524 ✓

Guided Practice:
Solve with manipulatives, practice algorithm with place value charts, problems with and without regrouping, problems with zeros.

Independent Application:
Mixed practice, word problems, error analysis, explain reasoning.

DIFFERENTIATION:

Struggling Learners:
- Extended base-ten block use
- Avoid zeros initially
- One regrouping at a time
- Place value charts always
- Use addition to check every problem

Advanced Learners:
- Four-digit subtraction
- Multiple zeros
- Alternative strategies
- Multi-step problems
- Mental math challenges

ASSESSMENT INDICATORS:
- Subtracts accurately without regrouping
- Regroups correctly when needed
- Handles zeros in subtraction
- Checks using addition
- Explains the regrouping process

VOCABULARY:
subtract, difference, regroup, borrow, place value, minuend, subtrahend

CONNECTION TO FUTURE LEARNING:
Three-digit subtraction extends to larger numbers, decimal operations, and algebraic equation solving.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Within 1000' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Multiplying by 10
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying by 10' AND grade_level_min = 3),
  'Multiplying by 10 Topic Guide',
  'Comprehensive teaching approach for multiplying by multiples of 10',
  'MULTIPLYING BY 10 - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand multiplication concepts, know multiplication facts, understand place value, and skip count by 10s.

LEARNING OBJECTIVES:
Students will multiply one-digit numbers by 10, multiply one-digit numbers by multiples of 10 (20, 30, etc.), understand why the pattern works using place value, and apply this skill to mental math and estimation.

KEY CONCEPTS:
1. Multiplying by 10 shifts all digits one place to the left
2. A zero appears in the ones place (representing 0 ones)
3. 4 × 10 means 4 groups of 10, or 4 tens = 40
4. For multiples of 10: 4 × 30 = 4 × 3 × 10 = 12 × 10 = 120
5. This pattern extends to 100s (4 × 100 = 400)

COMMON MISCONCEPTIONS:
- Thinking "just add a zero" without understanding why
- Difficulty extending to multiples of 10 (4 × 30)
- Confusing multiplying by 10 with adding 10
- Not connecting to place value understanding
- Errors when the basic fact has a zero (5 × 20)

TEACHING SEQUENCE:

Hook/Engagement:
"I can multiply 7 × 40 in my head instantly. Want to know the secret? It''s all about understanding how our number system works with 10s!"

Direct Instruction:
Start with ×10:
"4 × 10 means 4 groups of 10. That''s 4 tens. In place value, 4 tens is written as 40." Use base-ten blocks to show 4 rods = 40 units.

Extend to multiples of 10:
"4 × 30 = 4 × 3 × 10 = 12 × 10 = 120. I can think: 4 × 3 = 12, then 12 × 10 = 120."

Or: "4 × 30 is 4 groups of 30. That''s 4 groups of 3 tens = 12 tens = 120."

Pattern: The basic fact product, then the zero(s) from the multiple of 10.

Guided Practice:
Use blocks to model, practice ×10 facts, extend to multiples of 10, connect to mental math.

Independent Application:
Mental math practice, word problems with multiples of 10, pattern exploration, estimation using rounding to multiples of 10.

DIFFERENTIATION:

Struggling Learners:
- Heavy use of base-ten blocks
- Focus on ×10 before multiples
- Connect to counting by 10s
- Place value charts for support
- Emphasize understanding over speed

Advanced Learners:
- Multiply by 100, 1000
- Mental math races
- Two-digit × multiples of 10
- Apply to estimation
- Explore patterns in products

ASSESSMENT INDICATORS:
- Multiplies by 10 accurately
- Multiplies by multiples of 10
- Explains WHY the pattern works
- Applies to mental math
- Uses for estimation

VOCABULARY:
multiply, multiple of 10, place value, tens, mental math, pattern

CONNECTION TO FUTURE LEARNING:
This skill is foundational for multi-digit multiplication, powers of 10, and decimal understanding.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying by 10' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================
-- MEASUREMENT AND DATA UNIT
-- ============================================

-- Telling Time (Grade 3)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Telling Time' AND grade_level_min = 3),
  'Telling Time to the Minute Topic Guide',
  'Comprehensive teaching approach for time to the nearest minute',
  'TELLING TIME TO THE MINUTE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should tell time to 5-minute intervals, understand hour and minute hands, count by 5s and 1s, and know a.m./p.m. distinctions.

LEARNING OBJECTIVES:
Students will tell and write time to the nearest minute, read both analog and digital clocks precisely, understand the relationship between minutes and hours, and solve problems involving time.

KEY CONCEPTS:
1. There are 60 minutes in an hour (not just the marked 5s)
2. Each small mark represents one minute
3. Count by 5s to the nearest 5, then count by 1s for remaining minutes
4. The minute hand''s position determines exact minutes
5. 60 minutes = 1 hour; minutes reset to :00

COMMON MISCONCEPTIONS:
- Misreading the minute hand position between marks
- Confusing which hand shows hours vs minutes
- Not counting all small tick marks
- Difficulty with times near the hour (11:58 vs 12:58)
- Thinking each small mark is 5 minutes

TEACHING SEQUENCE:

Hook/Engagement:
"The movie starts at exactly 7:17. If you only knew how to tell time to 5-minute intervals, would you know when to leave? Today we become time-telling experts—down to the exact minute!"

Direct Instruction:
Review 5-minute intervals on the clock face. Then zoom in: "Between the 3 and 4, there are 4 small marks. Each mark is one minute. So from :15 to :20 we have :15, :16, :17, :18, :19, :20."

Model reading: "The hour hand is between 4 and 5, so it''s 4 something. The minute hand points to the 3rd small mark after the 4. That''s :15 + 3 = :18. The time is 4:18."

Practice counting: From :00, count by 5s (5, 10, 15, 20...) until you pass the minute hand, then count by 1s backward or from the last 5.

Guided Practice:
Read clocks with minute hands between 5s, write times to the minute, set clocks for given times, match analog to digital.

Independent Application:
Time worksheets, classroom clock checks, daily schedules with specific times, create daily timelines.

DIFFERENTIATION:

Struggling Learners:
- Use clocks with minute labels
- Count every minute mark systematically
- Focus on quarter hours as anchors
- Partner practice
- Colored minute sections

Advanced Learners:
- Time to the second (if interested)
- 24-hour time
- Calculate time durations
- Time zone exploration
- Historical timekeeping methods

ASSESSMENT INDICATORS:
- Reads analog clocks to the minute
- Writes time in digital format correctly
- Counts minutes accurately
- Explains minute-hour relationship
- Applies to daily schedule

VOCABULARY:
minute, hour, analog clock, digital clock, minute hand, hour hand, exactly, precise

CONNECTION TO FUTURE LEARNING:
Precise time-telling supports elapsed time calculations, scheduling, and understanding rate and speed.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Telling Time' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Elapsed Time
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Elapsed Time' AND grade_level_min = 3),
  'Elapsed Time Topic Guide',
  'Comprehensive teaching approach for time duration',
  'ELAPSED TIME - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must tell time to the minute, understand hours and minutes, count forward and backward, and have experience with number lines.

LEARNING OBJECTIVES:
Students will calculate how much time has passed between two times, find ending time given starting time and duration, find starting time given ending time and duration, and solve word problems involving elapsed time.

KEY CONCEPTS:
1. Elapsed time is the duration between two times
2. Time doesn''t work like regular numbers (60 minutes, not 100)
3. Multiple strategies: counting on, number lines, breaking into parts
4. Must account for crossing the hour (2:45 to 3:15)
5. Start time + elapsed time = end time

COMMON MISCONCEPTIONS:
- Treating time like base-10 (subtracting 3:15 - 2:45 as if they were regular numbers)
- Forgetting there are 60 minutes in an hour
- Errors when crossing noon or midnight
- Not choosing efficient counting strategies
- Confusion about a.m./p.m. transitions

TEACHING SEQUENCE:

Hook/Engagement:
"School starts at 8:30 and ends at 3:15. How long is the school day? When your favorite show starts in 45 minutes, what time will it be? These are elapsed time problems!"

Direct Instruction:
Number line strategy: "From 9:40 to 10:15. I draw a number line. From 9:40 to 10:00 is 20 minutes. From 10:00 to 10:15 is 15 minutes. Total: 35 minutes."

Counting on: "Start at 9:40. Add 20 minutes to get to 10:00. Add 15 more to get 10:15. That''s 35 minutes total."

Counting back: "It''s 4:30. The movie started 1 hour 45 minutes ago. Count back 1 hour to 3:30, then back 45 minutes to 2:45. The movie started at 2:45."

T-chart strategy: Hours and minutes in separate columns.

Guided Practice:
Find elapsed time with number lines, find ending times, find starting times, word problems with context.

Independent Application:
Mixed elapsed time problems, create daily schedules with durations, real-world scenarios (movies, events, travel).

DIFFERENTIATION:

Struggling Learners:
- Use open number lines for every problem
- Start with durations not crossing the hour
- Practice just "to the next hour" jumps
- Use analog clocks with movable hands
- Focus on one problem type at a time

Advanced Learners:
- Multi-hour durations
- Problems crossing noon/midnight
- Multiple events to schedule
- Calculate end time working backward
- Real scheduling projects

ASSESSMENT INDICATORS:
- Calculates elapsed time accurately
- Finds ending times correctly
- Finds starting times correctly
- Uses efficient strategies
- Solves word problems in context

VOCABULARY:
elapsed time, duration, start time, end time, how long, hours, minutes, before, after

CONNECTION TO FUTURE LEARNING:
Elapsed time concepts support scheduling, rate problems, and understanding of time as a continuous measurement.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Elapsed Time' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Liquid Volume and Mass
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Liquid Volume and Mass' AND grade_level_min = 3),
  'Liquid Volume and Mass Topic Guide',
  'Comprehensive teaching approach for metric measurement',
  'LIQUID VOLUME AND MASS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have measurement experience from grade 2, understand comparison and ordering, use addition and subtraction, and have some familiarity with units.

LEARNING OBJECTIVES:
Students will measure liquid volume in liters, measure mass in grams and kilograms, estimate before measuring, solve word problems involving volume and mass, and understand the difference between volume and mass.

KEY CONCEPTS:
1. Liquid volume measures how much space a liquid takes up (liters, milliliters)
2. Mass measures how much matter is in an object (grams, kilograms)
3. 1 kilogram = 1000 grams; 1 liter = 1000 milliliters
4. Benchmarks help estimation (1 liter ≈ water bottle, 1 kg ≈ textbook)
5. Volume and mass are different—a feather can have same volume as a rock but different mass

COMMON MISCONCEPTIONS:
- Confusing volume and mass (capacity vs weight)
- Confusing metric and customary units
- Not understanding the gram-kilogram relationship
- Difficulty estimating without benchmarks
- Thinking bigger objects always have more mass

TEACHING SEQUENCE:

Hook/Engagement:
"Which is heavier: a kilogram of feathers or a kilogram of rocks?" (They''re the same—both 1 kg!) "Today we explore mass and volume—two different ways to measure things."

Direct Instruction:
Liquid Volume: Show a 1-liter bottle. "This is 1 liter. About 4 of these fill a gallon. We use liters for things like juice, gas, and water."

Mass: Use a balance scale and gram weights. "This paperclip has a mass of about 1 gram. This textbook has a mass of about 1 kilogram—that''s 1000 grams!"

Benchmarks: Water bottle = 1 L, paperclip = 1 g, textbook = 1 kg, apple = about 200 g.

Measuring practice: Use graduated cylinders for volume, balance scales for mass.

Guided Practice:
Estimate then measure various items, compare objects by mass, solve problems with given measurements, convert between kg and g (introductory).

Independent Application:
Measurement activities, word problems, estimation challenges, create reference charts.

DIFFERENTIATION:

Struggling Learners:
- Focus on one attribute at a time
- Establish benchmarks firmly
- Use labeled containers and weights
- Hands-on estimation practice
- Visual comparison activities

Advanced Learners:
- Unit conversions (g ↔ kg)
- Multi-step word problems
- Compare metric and customary
- Design measurement investigations
- Explore milliliters

ASSESSMENT INDICATORS:
- Distinguishes volume from mass
- Uses appropriate units
- Measures with reasonable accuracy
- Estimates using benchmarks
- Solves measurement word problems

VOCABULARY:
volume, mass, liter, milliliter, gram, kilogram, capacity, benchmark, estimate, measure

CONNECTION TO FUTURE LEARNING:
Metric measurement understanding supports science investigations, unit conversions, and international standard measurements.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Liquid Volume and Mass' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Picture Graphs and Bar Graphs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Picture Graphs and Bar Graphs' AND grade_level_min = 3),
  'Picture Graphs and Bar Graphs Topic Guide',
  'Comprehensive teaching approach for scaled data displays',
  'PICTURE GRAPHS AND BAR GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have experience with line plots, count by 2s, 5s, and 10s, organize and sort data, and interpret simple graphs from earlier grades.

LEARNING OBJECTIVES:
Students will create picture graphs with scales, create bar graphs with scales, interpret graphs to answer questions, solve problems using data from graphs, and choose appropriate scales.

KEY CONCEPTS:
1. Pictures/symbols can represent more than one (scale of 2, 5, 10)
2. A key explains what each symbol represents
3. Bar height/length represents quantity
4. Scales must be consistent and evenly spaced
5. Graphs help us see patterns and comparisons quickly

COMMON MISCONCEPTIONS:
- Forgetting to use the scale when counting symbols
- Inconsistent bar widths or uneven scales
- Not including a key or title
- Difficulty with half-symbols (representing half the scale value)
- Not aligning bars properly on the baseline

TEACHING SEQUENCE:

Hook/Engagement:
"We surveyed 100 students about their favorite fruit. Drawing 100 apple pictures would be silly! Let''s learn how to use a scale where each picture means 10 students."

Direct Instruction:
Picture graphs with scale: "Each apple picture means 5 votes. If bananas have 6 apple pictures, that''s 6 × 5 = 30 votes for bananas."

Bar graphs with scale: "The scale on the side counts by 5s. The bar reaches to 35, so that category has 35."

Creating graphs: Model collecting data, choosing an appropriate scale (if numbers go up to 50, count by 5s or 10s), drawing bars or symbols, adding titles, labels, and keys.

Interpreting: "How many more people chose pizza than tacos? Pizza is 45, tacos is 30. 45 - 30 = 15 more."

Guided Practice:
Create graphs from data, answer questions about given graphs, choose scales for different data, create questions for classmates about graphs.

Independent Application:
Collect and graph data, multi-step problems from graphs, compare graphs with different scales, design surveys and present findings.

DIFFERENTIATION:

Struggling Learners:
- Use scale of 2 first (easier to count)
- Pre-drawn graph templates
- Skip counting practice
- Focus on reading before creating
- Guide scale selection

Advanced Learners:
- Choose their own scales
- Multi-step comparison problems
- Conduct and graph original surveys
- Critique graphs (what makes a good graph?)
- Explore different graph types

ASSESSMENT INDICATORS:
- Creates graphs with accurate scales
- Includes all components (title, key, labels)
- Interprets graphs correctly using scale
- Solves comparison problems from graphs
- Chooses appropriate scales

VOCABULARY:
picture graph, bar graph, scale, key, category, data, survey, represent, compare, interpret

CONNECTION TO FUTURE LEARNING:
Data display skills extend to more complex graphs, statistical analysis, and data-driven decision making.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Picture Graphs and Bar Graphs' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================
-- AREA AND PERIMETER UNIT
-- ============================================

-- Understanding Area
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Area' AND grade_level_min = 3),
  'Understanding Area Topic Guide',
  'Comprehensive teaching approach for area concepts',
  'UNDERSTANDING AREA - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should recognize and name 2D shapes, understand measurement concepts, use multiplication, and partition shapes into equal parts.

LEARNING OBJECTIVES:
Students will understand area as the space inside a shape, measure area by counting unit squares, recognize that area is measured in square units, understand that shapes with the same area can look different, and solve area problems.

KEY CONCEPTS:
1. Area measures the space inside a 2D shape
2. Area is measured in square units (square inches, square centimeters)
3. Count all unit squares that fit inside the shape
4. Different shapes can have the same area
5. Partial squares require careful counting or estimation

COMMON MISCONCEPTIONS:
- Confusing area with perimeter
- Not using square units (saying "12 inches" instead of "12 square inches")
- Miscounting squares, especially with partial squares
- Thinking area must be rectangular
- Not understanding what "unit square" means

TEACHING SEQUENCE:

Hook/Engagement:
"If we want to carpet this area of the floor, how much carpet do we need? We''re not measuring around it—we''re measuring the space inside. That''s called area!"

Direct Instruction:
Define area: "Area is the amount of space inside a shape. We measure it by seeing how many square units fit inside."

Model counting: Use grid paper to draw a rectangle. "I count each square: 1, 2, 3... 12. The area is 12 square units."

Unit squares: Show physical square tiles. "This is a unit square. When I say square inch, I mean a square that is 1 inch on each side."

Non-rectangular shapes: "This L-shape isn''t a rectangle, but I can still count the squares inside. Area = 8 square units."

Same area, different shapes: Show two shapes with 12 square units but different appearances.

Guided Practice:
Count squares in various shapes, draw shapes with given areas, use square tiles to cover shapes, compare areas of different shapes.

Independent Application:
Area worksheets with grid shapes, design shapes with specific areas, real-world area problems, create area challenges.

DIFFERENTIATION:

Struggling Learners:
- Use physical square tiles
- Start with small rectangular shapes
- Number each square while counting
- Grid paper with larger squares
- Focus on full squares first

Advanced Learners:
- Shapes with partial squares
- Non-rectangular shapes
- Compare areas without grids
- Connect to multiplication preview
- Composite shapes

ASSESSMENT INDICATORS:
- Defines area correctly
- Counts unit squares accurately
- Uses square units in answers
- Understands shapes with same area can differ
- Explains area measurement

VOCABULARY:
area, square unit, square inch, square centimeter, inside, cover, space, measure

CONNECTION TO FUTURE LEARNING:
Area understanding connects to multiplication-based formulas, composite shapes, and surface area of 3D figures.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Area' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Area and Multiplication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area and Multiplication' AND grade_level_min = 3),
  'Area and Multiplication Topic Guide',
  'Comprehensive teaching approach for area formula',
  'AREA AND MULTIPLICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand area as counting squares, know multiplication facts, understand arrays, and use rows and columns.

LEARNING OBJECTIVES:
Students will connect area to multiplication, use length × width to find area, understand why the formula works, apply the formula to rectangles, and solve area word problems.

KEY CONCEPTS:
1. A rectangle''s area can be found by counting OR by multiplying
2. Area = length × width (for rectangles)
3. Rows × squares per row = total squares (array connection)
4. The formula is a shortcut for counting
5. Units are squared (4 in × 3 in = 12 square inches)

COMMON MISCONCEPTIONS:
- Forgetting to square the units in the answer
- Using the formula without understanding
- Confusing length and perimeter
- Errors when dimensions aren''t whole numbers
- Not seeing the array/multiplication connection

TEACHING SEQUENCE:

Hook/Engagement:
"I have a rectangle that''s 25 units by 32 units. Counting every square would take forever! There must be a faster way..." Lead students to discover the multiplication relationship.

Direct Instruction:
Build the connection: Draw a 4 × 6 rectangle on grid paper. "How many rows? 4. How many squares in each row? 6. Total squares = 4 × 6 = 24. This IS multiplication—it''s an array!"

Introduce formula: "For any rectangle, Area = length × width. The 4 × 6 rectangle has area = 4 × 6 = 24 square units."

Units matter: "A rectangle 5 inches by 3 inches has area = 5 × 3 = 15 square inches. Not just 15 inches!"

Apply without grid: "This floor is 12 feet by 10 feet. Area = 12 × 10 = 120 square feet."

Guided Practice:
Find area using both counting and formula (verify they match), practice formula application, word problems (covering floors, walls, etc.).

Independent Application:
Area calculations with formula, real-world problems, design rooms with given area, missing dimension problems.

DIFFERENTIATION:

Struggling Learners:
- Always verify formula with counting first
- Use grid paper for all problems initially
- Connect explicitly to arrays
- Smaller numbers
- Formula reference card

Advanced Learners:
- Find missing dimensions
- Multi-step problems (total cost of flooring)
- Explore non-whole number dimensions
- Composite rectangles introduction
- Area of squares (side × side)

ASSESSMENT INDICATORS:
- Connects area to array multiplication
- Uses formula accurately
- Includes correct square units
- Explains why formula works
- Solves word problems with area

VOCABULARY:
length, width, formula, area = length × width, square units, dimensions, rectangle

CONNECTION TO FUTURE LEARNING:
The area formula extends to other shapes, composite figures, and understanding of dimensional analysis.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area and Multiplication' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Understanding Perimeter
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Perimeter' AND grade_level_min = 3),
  'Understanding Perimeter Topic Guide',
  'Comprehensive teaching approach for perimeter concepts',
  'UNDERSTANDING PERIMETER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should measure length, add multiple numbers, understand shapes have sides, and have some area knowledge (to contrast).

LEARNING OBJECTIVES:
Students will understand perimeter as the distance around a shape, calculate perimeter by adding all sides, find perimeter of polygons, understand perimeter uses linear units (not square units), and solve perimeter word problems.

KEY CONCEPTS:
1. Perimeter is the total distance around a shape
2. Add all side lengths to find perimeter
3. Perimeter is measured in linear units (inches, feet, cm—not square units)
4. Rectangles have two pairs of equal sides
5. Same perimeter doesn''t mean same shape

COMMON MISCONCEPTIONS:
- Confusing perimeter with area
- Using square units for perimeter
- Forgetting to include all sides
- Not recognizing equal sides in rectangles
- Measuring inside instead of around

TEACHING SEQUENCE:

Hook/Engagement:
"I want to put a fence around my garden. I don''t need to cover the whole garden—just go around the edge. How much fencing do I need?" Walk around a shape in the classroom to demonstrate "the distance around."

Direct Instruction:
Define perimeter: "Perimeter is the distance around a shape. Imagine an ant walking around the outside—how far would it walk?"

Calculate by adding sides: "This rectangle has sides of 5 in, 3 in, 5 in, and 3 in. Perimeter = 5 + 3 + 5 + 3 = 16 inches."

Emphasize linear units: "I''m measuring a distance, so I use inches or feet or meters—not square units."

Any polygon: "A pentagon with sides 4, 5, 3, 6, 7 has perimeter = 4 + 5 + 3 + 6 + 7 = 25 units."

Guided Practice:
Measure and add sides of shapes, find perimeter from given measurements, word problems about fencing, edging, borders.

Independent Application:
Perimeter worksheets, real-world perimeter problems, design shapes with given perimeter, explore same perimeter/different shapes.

DIFFERENTIATION:

Struggling Learners:
- Walk around physical shapes
- Use string to measure perimeter
- Count sides before adding
- Label sides to avoid missing any
- Simple shapes (triangles, rectangles)

Advanced Learners:
- Perimeter of irregular polygons
- Missing side problems
- Multi-step problems (cost of fencing)
- Design challenges with perimeter constraints
- Formula for rectangle perimeter (2l + 2w)

ASSESSMENT INDICATORS:
- Calculates perimeter by adding all sides
- Uses correct linear units
- Includes all sides in calculation
- Distinguishes perimeter from area
- Solves perimeter word problems

VOCABULARY:
perimeter, distance around, side, length, polygon, linear units, boundary, edge

CONNECTION TO FUTURE LEARNING:
Perimeter understanding extends to formulas for specific shapes, circumference of circles, and real-world applications.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Perimeter' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Area vs Perimeter
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area vs Perimeter' AND grade_level_min = 3),
  'Area vs Perimeter Topic Guide',
  'Comprehensive teaching approach for distinguishing measurements',
  'AREA VS PERIMETER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students must understand area concepts, understand perimeter concepts, use appropriate units, and solve basic area and perimeter problems.

LEARNING OBJECTIVES:
Students will distinguish between area and perimeter, choose the appropriate measurement for a given context, recognize that same area doesn''t mean same perimeter (and vice versa), solve problems requiring both measurements, and explain the difference clearly.

KEY CONCEPTS:
1. Area = space inside (square units); Perimeter = distance around (linear units)
2. Same area can have different perimeters (e.g., 1×12 vs 3×4)
3. Same perimeter can have different areas
4. Context determines which measurement is needed
5. Different formulas and units for each

COMMON MISCONCEPTIONS:
- Confusing when to use each measurement
- Thinking same perimeter means same area
- Using wrong units for each
- Calculating one when asked for the other
- Not reading problems carefully

TEACHING SEQUENCE:

Hook/Engagement:
"I have two gardens. Both need 12 squares of sod (area = 12). Do they need the same amount of fencing? Let''s investigate!" Show a 1×12 and a 3×4 rectangle—same area, different perimeters.

Direct Instruction:
Contrast definitions:
- "Area answers: How much space is inside? Use for flooring, painting a wall, covering something."
- "Perimeter answers: How far is it around? Use for fencing, framing, walking around."

Same area, different perimeter: 1×12 rectangle (P=26) vs 3×4 rectangle (P=14). Both have area 12, but very different perimeters!

Same perimeter, different area: P=16 shapes: 4×4 (A=16), 2×6 (A=12), 1×7 (A=7). Same perimeter, different areas!

Context clues: Fencing = perimeter. Carpet = area. Border = perimeter. Paint = area.

Guided Practice:
Identify whether problems ask for area or perimeter, calculate both for the same shape, word problems requiring one or the other, explore same area/different perimeter scenarios.

Independent Application:
Mixed area and perimeter problems, design challenges (maximize area for given perimeter), real-world scenarios, explain your reasoning problems.

DIFFERENTIATION:

Struggling Learners:
- Use color coding (one color for area, one for perimeter)
- Context word lists (what measurement for fencing? carpet?)
- Calculate both then circle the answer needed
- Physical models for both measurements
- Sentence starters for explanations

Advanced Learners:
- Maximize area for given perimeter
- Minimize perimeter for given area
- Multi-step real-world problems
- Investigate the relationship mathematically
- Design optimal shapes for different purposes

ASSESSMENT INDICATORS:
- Correctly identifies which measurement is needed
- Calculates both accurately
- Uses appropriate units for each
- Explains the difference clearly
- Recognizes same area/different perimeter scenarios

VOCABULARY:
area, perimeter, inside, around, square units, linear units, distinguish, context

CONNECTION TO FUTURE LEARNING:
Understanding this distinction is essential for geometry, optimization problems, and real-world applications throughout mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area vs Perimeter' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================
-- GEOMETRY UNIT
-- ============================================

-- Classifying Quadrilaterals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Classifying Quadrilaterals' AND grade_level_min = 3),
  'Classifying Quadrilaterals Topic Guide',
  'Comprehensive teaching approach for quadrilateral categories',
  'CLASSIFYING QUADRILATERALS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should identify basic shapes, count sides and angles, understand attributes like "equal sides," and know vocabulary for angles.

LEARNING OBJECTIVES:
Students will classify quadrilaterals by their attributes, understand hierarchical relationships (a square is a special rectangle), compare and contrast different quadrilaterals, and use precise geometric vocabulary.

KEY CONCEPTS:
1. Quadrilateral = 4 sides
2. Rectangle: 4 right angles (opposite sides equal)
3. Square: 4 right angles AND 4 equal sides (special rectangle)
4. Rhombus: 4 equal sides (not necessarily right angles)
5. Trapezoid: At least one pair of parallel sides

COMMON MISCONCEPTIONS:
- Thinking squares are not rectangles
- Believing quadrilaterals must have right angles
- Confusing rhombus with square
- Not recognizing shapes in different orientations
- Thinking "diamond" is a mathematical term

TEACHING SEQUENCE:

Hook/Engagement:
"I''m thinking of a shape with 4 sides and 4 right angles. Is it a square or a rectangle? ...Trick question! All squares ARE rectangles!" Build curiosity about shape relationships.

Direct Instruction:
Build the hierarchy:
- Quadrilateral: any 4-sided polygon
- Trapezoid: 1 pair of parallel sides
- Parallelogram: 2 pairs of parallel sides
- Rectangle: parallelogram with 4 right angles
- Rhombus: parallelogram with 4 equal sides
- Square: rectangle AND rhombus (4 right angles, 4 equal sides)

Use Venn diagrams to show relationships. "All squares are rectangles, but not all rectangles are squares."

Sorting activities: Sort shapes by attributes, not just names.

Guided Practice:
Sort quadrilaterals, identify shapes meeting given criteria, true/false statements about shape relationships, draw shapes with specific attributes.

Independent Application:
Classification worksheets, create shape family trees, always/sometimes/never statements, design projects using quadrilaterals.

DIFFERENTIATION:

Struggling Learners:
- Focus on rectangle vs square distinction first
- Use attribute blocks for hands-on sorting
- Attribute checklists for each shape
- One relationship at a time
- Visual reference charts

Advanced Learners:
- Explore parallelograms and kites
- Investigate angle relationships
- Create complete hierarchy diagrams
- Classify unusual quadrilaterals
- Explore regular vs irregular shapes

ASSESSMENT INDICATORS:
- Names quadrilaterals by attributes
- Explains hierarchical relationships
- Identifies multiple classifications for one shape
- Draws shapes meeting criteria
- Uses precise vocabulary

VOCABULARY:
quadrilateral, rectangle, square, rhombus, trapezoid, parallelogram, parallel, perpendicular, right angle, classify, attribute

CONNECTION TO FUTURE LEARNING:
Quadrilateral classification prepares students for geometry proofs, angle relationships, and understanding shape properties.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Classifying Quadrilaterals' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Attributes of Shapes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Attributes of Shapes' AND grade_level_min = 3),
  'Attributes of Shapes Topic Guide',
  'Comprehensive teaching approach for shape properties',
  'ATTRIBUTES OF SHAPES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should identify basic polygons, count sides and angles, know vocabulary like sides, angles, and corners, and sort by simple criteria.

LEARNING OBJECTIVES:
Students will describe shapes using precise geometric vocabulary, identify and describe attributes, compare shapes by their attributes, understand that shapes are defined by their attributes, and sort shapes by multiple criteria.

KEY CONCEPTS:
1. Attributes are properties that describe shapes (number of sides, angles, parallel sides)
2. Shapes can share some attributes while differing in others
3. Attributes define shape categories (all triangles have 3 sides)
4. Right angles, parallel sides, and equal sides are key attributes
5. Shapes can be sorted and classified by different attributes

COMMON MISCONCEPTIONS:
- Thinking orientation changes attributes (a rotated square is still a square)
- Confusing sides with angles
- Not using precise vocabulary
- Believing size is a defining attribute
- Difficulty with "parallel" concept

TEACHING SEQUENCE:

Hook/Engagement:
"Let''s play 20 questions with shapes! I''m thinking of a shape. You can only ask about attributes—like ''Does it have 4 sides?'' or ''Are all sides equal?''" This builds attribute thinking.

Direct Instruction:
Key attributes to explore:
- Number of sides and angles
- Right angles (square corners)
- Equal sides
- Parallel sides (lines that never meet)
- Line symmetry

Model describing: "This shape has 4 sides, exactly 2 pairs of parallel sides, all sides are equal length, but no right angles. It''s a rhombus."

Compare shapes: "How are squares and rhombuses alike? Different? Both have 4 equal sides, but squares have right angles."

Guided Practice:
Describe mystery shapes for partners to guess, sort shapes by given attributes, compare and contrast pairs of shapes, complete attribute tables.

Independent Application:
Shape description challenges, create shapes with given attributes, always/sometimes/never attribute games, design shape sorting activities.

DIFFERENTIATION:

Struggling Learners:
- Focus on fewer attributes at a time
- Use attribute blocks (physical manipulation)
- Vocabulary cards with pictures
- Partner work for describing
- Attribute checklists

Advanced Learners:
- Describe shapes using only attributes
- Explore congruence and similarity
- Investigate symmetry lines
- 3D shape attributes
- Create new classification systems

ASSESSMENT INDICATORS:
- Describes shapes with accurate vocabulary
- Identifies shapes by attributes
- Compares shapes using attributes
- Understands attributes define categories
- Sorts by various criteria

VOCABULARY:
attribute, property, sides, angles, vertices, parallel, perpendicular, right angle, equal sides, describe, compare

CONNECTION TO FUTURE LEARNING:
Attribute understanding supports geometric reasoning, proofs, and understanding of geometric definitions.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Attributes of Shapes' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Partitioning Shapes (Grade 3)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Partitioning Shapes' AND grade_level_min = 3),
  'Partitioning Shapes for Equal Areas Topic Guide',
  'Comprehensive teaching approach for area-based partitioning',
  'PARTITIONING SHAPES FOR EQUAL AREAS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand area concepts, partition shapes from grade 2 (halves, thirds, fourths), understand fractions, and work with equal parts.

LEARNING OBJECTIVES:
Students will partition shapes into parts with equal areas, understand that equal areas can have different shapes, express parts as unit fractions, connect partitioning to area and fraction understanding, and create multiple partitions for the same fraction.

KEY CONCEPTS:
1. Equal parts means equal AREA, not necessarily equal shape
2. A shape can be partitioned multiple ways into equal areas
3. Partitioned parts can be named as unit fractions
4. Area of each part = total area ÷ number of parts
5. Different-looking parts can have equal areas

COMMON MISCONCEPTIONS:
- Thinking equal parts must look identical
- Confusing equal length with equal area
- Difficulty partitioning non-rectangular shapes
- Not connecting to fraction representation
- Believing there''s only one way to partition

TEACHING SEQUENCE:

Hook/Engagement:
"Two friends are sharing a rectangular cake. One cuts it with a horizontal line, one with a diagonal. Did they both get half? Let''s investigate if different-looking pieces can be equal!"

Direct Instruction:
Equal area, different shapes: Show a square split horizontally vs diagonally. Both create halves—same area, different shapes. Verify by counting squares if on grid.

Multiple partitions: "How many ways can we divide this rectangle into 4 equal parts?" (Grid of 4 squares, 4 horizontal strips, 4 vertical strips, other combinations...)

Connect to fractions: "When we partition into 4 equal parts, each part is 1/4 of the whole. The total area is the whole; each part has 1/4 of that area."

Guided Practice:
Create multiple partitions for same fraction, verify equal areas by counting squares, name parts as fractions, explore non-rectangular shapes.

Independent Application:
Partition challenges, create partitions for others to verify, design problems, connect partitions to fraction problems.

DIFFERENTIATION:

Struggling Learners:
- Use grid paper for area verification
- Start with simple rectangles
- Focus on halves and fourths first
- Physical paper folding
- One shape at a time

Advanced Learners:
- Non-rectangular shapes
- Partition into sixths, eighths
- Create equal parts with complex shapes
- Explore why certain partitions work
- Connect to composite area

ASSESSMENT INDICATORS:
- Creates partitions with equal areas
- Verifies equality using area
- Recognizes different-looking parts can be equal
- Names parts as unit fractions
- Creates multiple partitions for same fraction

VOCABULARY:
partition, equal parts, equal areas, unit fraction, whole, one-half, one-third, one-fourth, divide

CONNECTION TO FUTURE LEARNING:
This topic deepens fraction understanding and prepares students for equivalent fractions, fraction operations, and understanding that fractions represent quantities.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Partitioning Shapes' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;
