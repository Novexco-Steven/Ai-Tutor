-- ============================================================================
-- GRADE 1 MATH TOPIC PROMPTS
-- ============================================================================
-- Comprehensive pedagogical prompts for each Math topic
-- Each prompt (500+ words) includes prerequisites, objectives, concepts,
-- misconceptions, teaching sequence, differentiation, and assessment
-- ============================================================================

-- ============================================================================
-- ADDITION AND SUBTRACTION TOPICS
-- ============================================================================

-- Counting to 120
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Counting to 120' AND grade_level_min = 1),
  'Counting to 120 Topic Guide',
  'Comprehensive teaching approach for counting on strategy',
  'COUNTING ON - TOPIC TEACHING GUIDE

PREREQUISITES:
- Fluent counting to 20
- Cardinality understanding (last number tells how many)
- Basic addition concept (combining groups)
- Ability to start counting from any number

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Count on from the larger number to add
2. Use counting on as an efficient strategy
3. Apply counting on with concrete and mental representations
4. Recognize when counting on is useful
5. Transition from counting all to counting on

KEY CONCEPTS:
- Counting on builds from what we already know
- Start with the larger addend and count up
- The counting on strategy is more efficient than counting all
- Objects or fingers can help track how many to count on

COMMON MISCONCEPTIONS:
- Counting the first addend (saying "5, 6, 7" instead of "5... 6, 7, 8")
- Not starting with the larger number (counting on 5 from 2)
- Losing track of how many more to count
- Reverting to counting all when unsure
- Confusing counting on with just continuing to count

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Present an efficiency problem. "I have 8 crayons. My friend gives me 2 more. I could count all of them... 1, 2, 3, 4, 5, 6, 7, 8, 9, 10. That took a while! Is there a faster way?"

2. DIRECT INSTRUCTION (10 minutes):
Model counting on explicitly. "I already know I have 8. I don''t need to count those again. I''ll start at 8 and count on 2 more: 8... 9, 10. That''s 10 crayons!" Show with objects. Emphasize: "Start with the bigger number in your head, count on the smaller amount."

3. GUIDED PRACTICE (10 minutes):
Provide problems for counting on. Students use counters or fingers to track how many more. "8 + 3. Start at 8... now count on 3 more. Use your fingers to keep track."

4. INDEPENDENT APPLICATION (15 minutes):
Counting on games and activities. Partner practice with dice or cards. Recording strategies used.

DIFFERENTIATION:

For Struggling Learners:
- Use number lines for visual support
- Cover the larger amount (don''t recount)
- Start with adding 1 or 2 only
- Use consistent hand motions for counting on
- Provide sentence frames: "I start at ___, count on ___ more"

For Advanced Learners:
- Count on across decade (8 + 5)
- Apply to subtraction (counting on to find difference)
- Mental math without objects
- Compare efficiency of counting on vs. counting all
- Create story problems using counting on

ASSESSMENT INDICATORS:
- Uses counting on instead of counting all
- Starts from larger addend
- Keeps accurate track of amount to count
- Applies strategy to new problems
- Explains why counting on works

REAL-WORLD CONNECTIONS:
- "I have 7 stickers. I earn 2 more."
- Counting pages in a book you''ve already started
- Adding score in a game
- Counting money (already have some, add more)
- Days until an event

VOCABULARY:
count on, add, plus, more, start, total, larger, smaller, strategy

QUESTIONING TECHNIQUES:
- "Which number will you start with? Why?"
- "How many more do you need to count?"
- "How did you keep track of the count?"
- "Why didn''t you count all of them?"
- "When is counting on helpful?"

MATERIALS:
- Counters with hiding containers
- Number lines
- Ten-frames
- Counting on cards
- Dice and game boards

COMMON ERRORS AND RESPONSES:
Error: Counting the start number ("5, 6, 7" for 5 + 2)
Response: "5 is where we start. We say 5, then count on 2 more: 5... 6, 7. The 5 is our start, not our first count."

Error: Not starting with larger number
Response: "You could add 7 to 3, but which way is easier? Try 7... 8, 9, 10. Less counting!"

Error: Losing track of count
Response: "Use your fingers to track how many you count on. Raise one finger for each number you say."

CONNECTION TO FUTURE LEARNING:
Counting on develops into adding larger numbers mentally, using number lines for computation, and understanding the add-on meaning of subtraction. This efficiency strategy supports fact fluency and mental math.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Counting to 120' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Making Connections
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Making Connections' AND grade_level_min = 1),
  'Making Connections Topic Guide',
  'Comprehensive teaching approach for making ten strategy',
  'MAKING TEN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Fluent combinations that make 10 (number bonds)
- Understanding of addition
- Familiarity with ten-frames
- Counting on strategy

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Know combinations that make 10 fluently
2. Use 10 as a benchmark for addition
3. Decompose numbers to make 10
4. Add through 10 (e.g., 8 + 5 = 8 + 2 + 3 = 10 + 3 = 13)
5. Explain the making ten strategy

KEY CONCEPTS:
- 10 is a special benchmark number
- Numbers can be decomposed (broken apart) strategically
- Making 10 first makes adding teen numbers easier
- This strategy uses the structure of our base-ten system

COMMON MISCONCEPTIONS:
- Not seeing why 10 is special
- Difficulty decomposing the second addend
- Forgetting to add the remaining amount
- Thinking this is more work than counting all
- Not knowing combinations to 10 fluently

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Show a nearly-full ten-frame with 8. "If I have 8 and want to add 5, watch what I do..." Fill to 10, then show 3 more. "I made 10 first! That helps me think: 10 and 3 is 13."

2. DIRECT INSTRUCTION (10 minutes):
Model the strategy step by step. "8 + 5. I need 2 more to make 10 from 8. I''ll take 2 from the 5. That leaves 3. So 8 + 2 = 10, and 10 + 3 = 13." Use ten-frames consistently.

3. GUIDED PRACTICE (10 minutes):
Students practice with ten-frames. "7 + 5. How many more does 7 need to make 10? 3. So take 3 from the 5. That leaves 2. 10 + 2 = 12." Guide the decomposition.

4. INDEPENDENT APPLICATION (15 minutes):
Partner games with making ten. Problem cards with ten-frame support. Recording the steps.

DIFFERENTIATION:

For Struggling Learners:
- Master 10 combinations first (isolated practice)
- Use physical ten-frames extensively
- Start with adding to 9 only (need just 1)
- Color-code the decomposition
- Work with the same first addend repeatedly

For Advanced Learners:
- Apply to larger numbers (18 + 5)
- Use making 10 for subtraction
- Mental math without ten-frames
- Compare multiple strategies
- Create problems where making 10 helps

ASSESSMENT INDICATORS:
- Recalls 10 combinations fluently
- Identifies how much more to make 10
- Decomposes second addend correctly
- Adds the remaining amount
- Explains strategy clearly

REAL-WORLD CONNECTIONS:
- Filling egg cartons (10 spaces)
- Making groups of 10 for counting
- Bowling frames
- Decades in counting
- Base-ten structure in our number system

VOCABULARY:
make ten, decompose, break apart, ten-frame, combinations, strategy, total

QUESTIONING TECHNIQUES:
- "How many more does 8 need to make 10?"
- "How will you break apart the 5?"
- "What''s left after you make 10?"
- "Why do we make 10 first?"
- "How does this help you add?"

MATERIALS:
- Double ten-frames
- Two-color counters
- Number bond diagrams
- Making ten cards
- Recording sheets

COMMON ERRORS AND RESPONSES:
Error: Not knowing how many more to make 10
Response: "Let''s practice. 7 + ? = 10. Use your ten-frame. How many empty spaces? That''s how many more you need."

Error: Decomposing wrong addend
Response: "We want to make 10 with the first number. 8 needs 2 to make 10. Break apart the 5 to get that 2."

Error: Forgetting the remaining amount
Response: "You made 10! But you had 5 to add and only used 2. What happened to the other 3?"

CONNECTION TO FUTURE LEARNING:
Making 10 develops into mental math strategies for larger numbers, understanding place value, and working with addition within 100. The decomposition thinking supports algebraic reasoning and flexible computation.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Making Connections' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Fact Families
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fact Families' AND grade_level_min = 1),
  'Fact Families Topic Guide',
  'Comprehensive teaching approach for doubles facts',
  'DOUBLES FACTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Addition concept understanding
- Counting on strategy
- Number recognition
- Understanding of "same" or "equal"

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize doubles addition facts
2. Recall doubles facts fluently (1+1 through 10+10)
3. Use visual images to remember doubles
4. Apply doubles to solve near-doubles
5. Connect doubles to real-world examples

KEY CONCEPTS:
- Doubles are two identical addends
- Doubles make even numbers
- Doubles can be anchors for other facts
- Visuals help memorize doubles

COMMON MISCONCEPTIONS:
- Confusing doubles with "doubling" (multiplying by 2)
- Not recognizing near-doubles
- Thinking doubles are just for small numbers
- Forgetting less-common doubles (7+7, 8+8)
- Not connecting doubles to multiplication later

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Look at your hands! How many fingers on each hand? 5 and 5. That''s a double! Doubles are when both numbers are the same." Show familiar doubles in the world.

2. DIRECT INSTRUCTION (10 minutes):
Teach doubles systematically with images. "6 + 6: think of an egg carton - 6 on top, 6 on bottom = 12. 7 + 7: days in two weeks = 14. 8 + 8: spider legs = 16." Associate each double with a memorable image.

3. GUIDED PRACTICE (10 minutes):
Practice doubles with visuals and then without. Flash doubles, students respond with sums. Use images as prompts when needed.

4. INDEPENDENT APPLICATION (15 minutes):
Doubles games: concentration, doubles rap, partner quizzing. Recording doubles in personal fact book.

DIFFERENTIATION:

For Struggling Learners:
- Focus on doubles within 10 first
- Use consistent, memorable images
- Provide extensive practice with same facts
- Build from known to unknown
- Use songs and chants

For Advanced Learners:
- Extend to doubles beyond 10
- Introduce near-doubles (6+7 = 6+6+1)
- Connect to skip counting by 2s
- Explore patterns (doubles are all even)
- Create doubles story problems

ASSESSMENT INDICATORS:
- Recalls doubles within 10 fluently
- Identifies doubles in story problems
- Uses doubles as strategy for near-doubles
- Explains how they remember doubles
- Applies doubles independently

REAL-WORLD CONNECTIONS:
- 2+2: wheels on a bicycle
- 5+5: fingers on hands
- 6+6: eggs in a carton
- 7+7: days in two weeks
- 8+8: octopus legs (2 octopuses)

VOCABULARY:
doubles, same, equal, addends, sum, even, double facts

QUESTIONING TECHNIQUES:
- "What''s the double of 7?"
- "How do you remember 8 + 8?"
- "What doubles are you still learning?"
- "Is 15 a doubles answer? Why not?"
- "How can doubles help you solve 6 + 7?"

MATERIALS:
- Doubles visual cards
- Mirror or doubles images
- Dominos with doubles
- Dice (looking for doubles)
- Doubles song or chant

COMMON ERRORS AND RESPONSES:
Error: Confusing doubles with multiplying by 2
Response: "These are both related! 6 + 6 is a double. Later you''ll learn 6 × 2 means the same thing!"

Error: Not remembering specific doubles
Response: "Let''s find an image that helps. 8 + 8... a spider has 8 legs. Two spiders have 16 legs!"

Error: Can''t apply doubles to near-doubles
Response: "7 + 8 is close to a double. What double is it near? 7 + 7 = 14. Then add 1 more = 15."

CONNECTION TO FUTURE LEARNING:
Doubles support near-doubles strategy, mental math, and eventually multiplication by 2. The pattern recognition (all doubles sums are even) develops algebraic thinking. Doubles become benchmark facts for larger addition.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fact Families' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Fact Families
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fact Families' AND grade_level_min = 1),
  'Fact Families Topic Guide',
  'Comprehensive teaching approach for fact families',
  'FACT FAMILIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Addition facts fluency emerging
- Subtraction concept understanding
- Understanding of inverse operations (intuitively)
- Familiarity with equation format

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that addition and subtraction are inverse operations
2. Generate all four facts from three numbers
3. Use addition to solve subtraction
4. Recognize fact family relationships
5. Apply fact families to improve fact fluency

KEY CONCEPTS:
- Addition and subtraction are related (inverse)
- Three numbers make a family of four facts
- Knowing one fact helps you know three more
- The parts and whole can be rearranged

COMMON MISCONCEPTIONS:
- Thinking addition and subtraction are unrelated
- Generating incorrect facts (using wrong numbers)
- Not understanding why there are only 3 facts for doubles
- Confusing the role of numbers in equations
- Not applying relationships to solve problems

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Show a part-part-whole diagram. "These three numbers are a family. The 3 and 4 are parts. The 7 is the whole. Watch how many equations I can make with just these three numbers!"

2. DIRECT INSTRUCTION (10 minutes):
Demonstrate fact families explicitly. "3 + 4 = 7. If I switch the parts: 4 + 3 = 7. Now subtraction: start with the whole, 7 - 3 = 4. And 7 - 4 = 3. Four facts from three numbers!" Use manipulatives to show the relationships.

3. GUIDED PRACTICE (10 minutes):
Given three numbers, students generate all four facts. Use fact family houses or triangles. Check each fact with objects.

4. INDEPENDENT APPLICATION (15 minutes):
Fact family practice activities. Creating fact families from story contexts. Using fact families to solve subtraction by thinking addition.

DIFFERENTIATION:

For Struggling Learners:
- Use part-part-whole mats with objects
- Focus on one family at a time
- Write all four facts with color coding
- Connect physically (combine, separate)
- Start with small numbers

For Advanced Learners:
- Work with larger numbers
- Explore doubles families (only 3 facts)
- Apply to missing addend problems
- Create fact family word problems
- Connect to algebraic thinking (if 3 + ? = 7)

ASSESSMENT INDICATORS:
- Generates all facts in a family
- Uses addition to solve subtraction
- Identifies which facts belong together
- Explains the relationship between operations
- Applies fact families for efficiency

REAL-WORLD CONNECTIONS:
- "I have some apples. I add some, now I have 8."
- Undo/redo in games
- Building and unbuilding with blocks
- Earning and spending money
- Friends joining and leaving play

VOCABULARY:
fact family, related facts, inverse, operation, part, whole, equation

QUESTIONING TECHNIQUES:
- "What other facts use these same numbers?"
- "If you know 5 + 3 = 8, what subtraction do you also know?"
- "Why does this fact family only have 3 facts?" (doubles)
- "How can knowing 6 + 4 help you solve 10 - 4?"
- "Are these facts in the same family? How do you know?"

MATERIALS:
- Fact family houses or triangles
- Part-part-whole mats
- Dominos (show all four facts)
- Fact family cards
- Recording sheets

COMMON ERRORS AND RESPONSES:
Error: Generating wrong facts (3 + 4 = 7, so 3 + 7 = 4?)
Response: "Let''s check. The small parts add to the whole. 3 and 4 are parts. 7 is the whole. Which makes sense?"

Error: Not connecting to problem solving
Response: "You know 7 + 3 = 10. How can that help you solve 10 - 3? Think about the family."

Error: Generating 4 facts for doubles
Response: "Let''s try 4 + 4. What other addition? 4 + 4 again - it''s the same! Doubles only have 3 facts because two are identical."

CONNECTION TO FUTURE LEARNING:
Fact families develop inverse operation understanding essential for algebra. This thinking supports checking work, mental math, and problem solving. The relationship between operations becomes fundamental in later mathematics.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fact Families' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Word Problems
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Word Problems' AND grade_level_min = 1),
  'Word Problems Topic Guide',
  'Comprehensive teaching approach for word problems',
  'WORD PROBLEMS (GRADE 1) - TOPIC TEACHING GUIDE

PREREQUISITES:
- Addition and subtraction within 20
- Understanding of story structure
- Ability to visualize scenarios
- Basic reading or listening comprehension

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Solve result unknown problems (+/-)
2. Solve change unknown problems (? + 4 = 7)
3. Solve start unknown problems (? - 3 = 5)
4. Represent problems with equations
5. Determine which operation to use

KEY CONCEPTS:
- Story problems describe real situations with math
- Different problem structures require different thinking
- Representing problems helps solve them
- Operations can be determined from the story context

COMMON MISCONCEPTIONS:
- Always adding (more numbers = add)
- Using key word strategy incorrectly
- Not understanding change or start unknown structures
- Difficulty distinguishing problem types
- Writing equation before understanding problem

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Tell a relevant story. "During recess, 5 kids were playing basketball. Then 4 more kids joined. This is a math story! What''s the question?" Build from real scenarios.

2. DIRECT INSTRUCTION (10 minutes):
Model problem-solving process. "First, I''ll read the story. Then I''ll think: What do I know? What do I need to find? Then I''ll show it with cubes. Finally, I''ll write a number sentence and solve." Model multiple problem types.

3. GUIDED PRACTICE (10 minutes):
Solve together with discussion. "What''s happening in this story? What do we know? What''s the question?" Students act out or build, then write equations.

4. INDEPENDENT APPLICATION (15 minutes):
Problem-solving practice with variety. Students show work through drawings, equations, or models.

DIFFERENTIATION:

For Struggling Learners:
- Act out every problem physically
- Use consistent problem structures first
- Provide visual supports and manipulatives
- Read problems aloud
- Focus on understanding before solving

For Advanced Learners:
- Two-step problems
- All problem types including comparison
- Create original word problems
- Multiple solution strategies
- Higher numbers

ASSESSMENT INDICATORS:
- Identifies what the problem is asking
- Chooses appropriate operation
- Represents problem with objects/drawings
- Writes correct equation
- Solves accurately and explains

REAL-WORLD CONNECTIONS:
- Classroom supplies and sharing
- Games and keeping score
- Snack time and food
- Books and reading
- Playground activities

VOCABULARY:
problem, solve, equation, total, difference, altogether, more, left, how many

QUESTIONING TECHNIQUES:
- "What''s happening in this story?"
- "What do you know? What do you need to find out?"
- "Should we add or subtract? How do you know?"
- "Can you draw a picture to show this?"
- "How could you check your answer?"

MATERIALS:
- Counters for acting out
- Drawing paper
- Problem cards (by type)
- Problem-solving mats
- Equations strips

COMMON ERRORS AND RESPONSES:
Error: Adding when should subtract ("5 took away 3" → adds)
Response: "Let''s act it out. We have 5. Then 3 leave. Are there more now or fewer? What operation makes less?"

Error: Only solving result unknown
Response: "This time the answer isn''t at the end. Some plus 4 equals 9. We know the total. What''s the missing part?"

Error: Just grabbing numbers and operating
Response: "Let''s slow down. What''s happening in the story? Tell me in your own words before we use numbers."

CONNECTION TO FUTURE LEARNING:
Word problem skills develop throughout mathematics. The structures learned here extend to multi-step problems, comparison problems, and eventually algebraic thinking. Understanding problem types is more important than memorizing key words.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Word Problems' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PLACE VALUE TOPICS
-- ============================================================================

-- Tens and Ones
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Tens and Ones' AND grade_level_min = 1),
  'Tens and Ones Topic Guide',
  'Comprehensive teaching approach for tens and ones',
  'TENS AND ONES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Counting to 100
- Understanding teen numbers as 10 + ones
- Grouping and counting by 10s
- Writing numerals

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that 10 ones = 1 ten (equivalence)
2. Represent two-digit numbers with tens and ones
3. Identify place value of each digit
4. Read and write two-digit numbers
5. Understand that digit position determines value

KEY CONCEPTS:
- Our number system groups by tens
- 10 ones can be traded for 1 ten
- The same digit has different values in different places
- Two-digit numbers have a tens place and ones place

COMMON MISCONCEPTIONS:
- Seeing 47 as "4 and 7" instead of "4 tens and 7 ones"
- Not understanding the trade (10 ones = 1 ten)
- Confusing the written order (47 vs 74)
- Thinking larger digits always mean larger numbers
- Not understanding that the ten is a unit

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Bundling activity. "Let''s count these straws. There are a lot! What if we made groups of 10? That would make counting easier." Physically bundle 10s.

2. DIRECT INSTRUCTION (10 minutes):
Demonstrate place value explicitly. "This bundle is 1 ten. It has 10 straws, but it''s 1 ten. In the number 34, the 3 means 3 tens - that''s 30. The 4 means 4 ones - that''s 4 more." Show with base-ten materials consistently.

3. GUIDED PRACTICE (10 minutes):
Students build numbers with base-ten blocks. "Build 52. How many tens? How many ones? What does the 5 mean? What does the 2 mean?"

4. INDEPENDENT APPLICATION (15 minutes):
Place value activities: building, drawing, writing, playing games. Match representations to numbers.

DIFFERENTIATION:

For Struggling Learners:
- Physical bundling extensively
- Connect bundles to base-ten blocks
- Focus on decade numbers first (20, 30, 40)
- Use place value charts consistently
- Say the value, not just the digit ("3 tens" not "3")

For Advanced Learners:
- Extend to three digits (hundreds)
- Compare numbers using place value
- Add/subtract 10 mentally
- Explore patterns (one more ten, one more one)
- Represent numbers multiple ways

ASSESSMENT INDICATORS:
- Builds numbers with base-ten materials
- Identifies tens and ones in any two-digit number
- Writes numbers in standard and expanded form
- Explains what each digit represents
- Trades 10 ones for 1 ten fluently

REAL-WORLD CONNECTIONS:
- Money (dimes and pennies)
- Egg cartons and eggs
- Packages of items
- Counting large collections
- Decades and years

VOCABULARY:
tens, ones, place value, digit, bundle, trade, standard form, expanded form

QUESTIONING TECHNIQUES:
- "How many tens? How many ones?"
- "What does the 5 in 57 mean?"
- "If I add one more ten, what number will it be?"
- "Which is greater: 36 or 63? How do you know?"
- "Can you show me this number another way?"

MATERIALS:
- Base-ten blocks
- Bundling materials (straws/sticks)
- Place value charts
- Expanded form cards
- Number comparison activities

COMMON ERRORS AND RESPONSES:
Error: Saying "5 and 7" for 57 instead of "5 tens and 7 ones"
Response: "The 5 isn''t just 5. It''s in the tens place, so it means 5 tens. That''s 50. And 7 more ones."

Error: Building 35 with 5 tens and 3 ones
Response: "Let''s check. 35. The first digit, 3, tells us tens. The second digit, 5, tells us ones. 3 tens and 5 ones."

Error: Not seeing 10 ones as 1 ten
Response: "Let''s count these ones. 1, 2, ... 10. Now bundle them. How many bundles? 1 ten! Same amount, different way to show it."

CONNECTION TO FUTURE LEARNING:
Place value understanding is foundational for all multi-digit computation. Addition and subtraction with regrouping depends on understanding trades. This extends to hundreds, thousands, and eventually decimals. Place value is the heart of our number system.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Tens and Ones' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Comparing Numbers
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Numbers' AND grade_level_min = 1),
  'Comparing Numbers Topic Guide',
  'Comprehensive teaching approach for comparing numbers to 100',
  'COMPARING NUMBERS TO 100 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Place value understanding (tens and ones)
- Comparison vocabulary (more, less, same)
- Number recognition to 100
- Understanding of symbols (<, >, =)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare two-digit numbers using place value
2. Use symbols correctly (<, >, =)
3. Order numbers from least to greatest
4. Explain comparison reasoning
5. Find numbers between two given numbers

KEY CONCEPTS:
- Compare tens first, then ones if tens are equal
- The symbol points to the smaller number
- Numbers can be ordered by value
- Place value determines magnitude

COMMON MISCONCEPTIONS:
- Comparing just the ones digits
- Thinking more digits means larger number (9 vs 12)
- Confusing < and > symbols
- Not understanding that equal tens requires ones comparison
- Ignoring place value in comparison

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
"Which would you rather have: 35 stickers or 53 stickers? How do you know which is more?" Create motivation for comparison.

2. DIRECT INSTRUCTION (10 minutes):
Model comparison with base-ten blocks. "Let''s compare 47 and 52. First, look at the tens. 47 has 4 tens. 52 has 5 tens. 5 tens is more than 4 tens, so 52 is greater. 47 < 52." Use blocks to make it visual.

3. GUIDED PRACTICE (10 minutes):
Comparisons with and without blocks. "Compare 36 and 34. The tens are the same! Now we look at ones. 6 ones is more than 4 ones. 36 > 34."

4. INDEPENDENT APPLICATION (15 minutes):
Comparison games and activities. Practice with symbols. Number ordering tasks.

DIFFERENTIATION:

For Struggling Learners:
- Always use base-ten blocks
- Focus on comparing tens first
- Use comparison mats
- Practice symbol direction (opens to larger)
- Start with very different numbers

For Advanced Learners:
- Compare three-digit numbers
- Find missing digits (4_ > 46)
- Order longer lists of numbers
- Compare using number lines
- Create comparison word problems

ASSESSMENT INDICATORS:
- Compares numbers using place value
- Uses <, >, = symbols correctly
- Orders numbers from least to greatest
- Explains comparison reasoning
- Applies comparison to problem solving

REAL-WORLD CONNECTIONS:
- Which costs more?
- Who has more points?
- Comparing ages or heights
- Page numbers in books
- Comparing distances

VOCABULARY:
compare, greater than, less than, equal to, symbol, order, between

QUESTIONING TECHNIQUES:
- "Which number is greater? How do you know?"
- "What do you look at first when comparing?"
- "What symbol shows 35 is less than 42?"
- "Put these numbers in order: 56, 38, 61"
- "What number is between 45 and 50?"

MATERIALS:
- Base-ten blocks
- Comparison symbols cards
- Number cards
- Comparison mats
- Ordering activities

COMMON ERRORS AND RESPONSES:
Error: Comparing ones digits only
Response: "Look at the tens first. 47 has 4 tens, 29 has 2 tens. Which has more tens? That tells us which is greater."

Error: Symbol pointing wrong way
Response: "Think of the symbol as a hungry alligator - it opens to eat the bigger number. Which is bigger? The mouth opens to that one."

Error: Thinking 9 > 12 (single digit looks bigger)
Response: "Let''s build them. 9 is just 9 ones. 12 is 1 ten and 2 ones. 1 ten is more than 9 ones!"

CONNECTION TO FUTURE LEARNING:
Comparison using place value extends to larger numbers and eventually decimals. Understanding magnitude supports number line work, estimation, and operation sense. Comparison is foundational to measurement and data analysis.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Numbers' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GEOMETRY TOPICS
-- ============================================================================

-- Composing Shapes
INSERT INTO prompt_templates (
  prompt_type, subject_id, topic_id, name, description, prompt_content, priority
)
SELECT
  'topic_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Composing Shapes' AND grade_level_min = 1),
  'Composing Shapes Topic Guide',
  'Comprehensive teaching approach for composing shapes',
  'COMPOSING SHAPES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Recognition of basic 2D shapes
- Understanding of shape attributes (sides, corners)
- Spatial awareness
- Experience with puzzles and building

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Combine shapes to make new shapes
2. Recognize that larger shapes can be made from smaller shapes
3. Use pattern blocks to compose pictures and designs
4. Describe compositions using shape names
5. Explore multiple ways to compose the same shape

KEY CONCEPTS:
- Shapes can be combined to make new shapes
- The same large shape can be made from different combinations
- Composing and decomposing are inverse actions
- Geometric relationships exist between shapes

COMMON MISCONCEPTIONS:
- Thinking shapes only come in one form
- Not recognizing composed shapes as shapes themselves
- Difficulty seeing how shapes fit together
- Assuming there''s only one way to make a shape
- Confusing 2D composition with 3D building

TEACHING SEQUENCE:

1. HOOK/ENGAGEMENT (5 minutes):
Show pattern blocks forming a hexagon. "I made a hexagon from triangles! How many triangles did I use? Can you make a hexagon a different way?"

2. DIRECT INSTRUCTION (10 minutes):
Model composing and naming. "These two triangles make a square when I put them together. These two squares make a rectangle. Let''s see what we can make!" Demonstrate multiple compositions.

3. GUIDED PRACTICE (10 minutes):
Guided composition activities. "Can you make this shape using smaller shapes? How many ways can you do it?" Share and compare solutions.

4. INDEPENDENT APPLICATION (15 minutes):
Free exploration with pattern blocks and tangrams. Composition challenges. Recording compositions through drawing or photos.

DIFFERENTIATION:

For Struggling Learners:
- Provide frames to fill
- Start with two-piece compositions
- Use consistent, simple shapes
- Outline target shapes
- Work from models

For Advanced Learners:
- Tangram puzzles
- Compose with constraints
- Record numerically (3 triangles + 1 square)
- Create symmetrical designs
- Design composition challenges for peers

ASSESSMENT INDICATORS:
- Combines shapes to make larger shapes
- Identifies component shapes in compositions
- Creates designs using shape composition
- Describes compositions using shape names
- Finds multiple solutions

REAL-WORLD CONNECTIONS:
- Quilt patterns
- Tile designs
- Building with blocks
- Mosaics and art
- Puzzle solving

VOCABULARY:
compose, combine, together, make, pattern, design, hexagon, trapezoid

QUESTIONING TECHNIQUES:
- "What shapes did you use to make this?"
- "Can you make this shape a different way?"
- "How many triangles would fill this hexagon?"
- "What happens if you put two of these together?"
- "Can you describe your design to a friend?"

MATERIALS:
- Pattern blocks
- Tangrams
- Composition cards
- Paper shapes for gluing
- Recording sheets

COMMON ERRORS AND RESPONSES:
Error: Gaps or overlaps in composition
Response: "Let''s look closely. Are these touching without overlapping? No gaps, no overlaps makes a new shape!"

Error: Not recognizing the composed shape
Response: "Step back and look. What shape does this look like now that the pieces are together?"

Error: Only finding one solution
Response: "Great! You found one way. Can you find a different combination that makes the same shape?"

CONNECTION TO FUTURE LEARNING:
Shape composition leads to understanding area (covering with units), fraction representation (parts of shapes), and geometric relationships. This spatial reasoning supports later geometry proofs and transformations.',
  90
FROM dual
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Composing Shapes' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VERIFICATION QUERY
-- ============================================================================
SELECT
  'Grade 1 Math topic prompts' as category,
  COUNT(*) as total
FROM prompt_templates
WHERE prompt_type = 'topic_global'
  AND subject_id = (SELECT id FROM subjects WHERE name = 'Math')
  AND topic_id IN (SELECT id FROM topics WHERE grade_level_min = 1 AND grade_level_max <= 1);
