-- ============================================================================
-- MATH UNIT PROMPTS (ALL GRADES Pre-K THROUGH CALCULUS)
-- ============================================================================
-- Comprehensive pedagogical prompts for each Math unit
-- Each prompt provides teaching methodology, learning progressions,
-- common misconceptions, and instructional strategies
-- ============================================================================

-- ============================================================================
-- PRE-KINDERGARTEN MATH UNITS (Grade -1, Ages 3-5)
-- ============================================================================

-- Count to 3 (Pre-K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Count to 3' AND grade_level = -1),
  'Count to 3 Teaching Guide',
  'Comprehensive pedagogical approach for teaching counting to 3 in Pre-K',
  'COUNT TO 3 - PRE-KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This is the foundational counting unit for our youngest learners. Children begin their mathematical journey by developing number sense with very small quantities (1, 2, and 3). At this stage, counting is learned through play, songs, movement, and hands-on exploration with real objects. The goal is joyful engagement with numbers, not rote memorization.

LEARNING PROGRESSION:
1. Verbal counting: Saying "1, 2, 3" in sequence
2. Recognizing numerals 1, 2, and 3
3. One-to-one correspondence with very small sets
4. Understanding cardinality: The last number tells "how many"
5. Representing quantities with objects and fingers
6. Beginning ten-frame use (with just 1-3)

DEVELOPMENTAL CONSIDERATIONS:
Pre-kindergarteners are in the sensorimotor-preoperational transition. They learn through all senses - touching, moving, seeing, hearing. Attention spans are 3-5 minutes maximum. They need physical objects they can manipulate. Abstract symbols (numerals) come AFTER concrete understanding.

COMMON DEVELOPMENTAL PATTERNS:
- May say numbers without understanding quantity
- May count the same object multiple times
- May skip objects when counting
- May not understand that "3" means the total, not just the last object touched
- May recognize numerals as shapes without connecting to quantity

INSTRUCTIONAL STRATEGIES:

One Object at a Time:
Place one object. "One." Add another. "Two." Add another. "Three." Touch each object as you count. Have children imitate.

Finger Counting:
Show one finger. "One." Show two. "Two." Show three. "Three." Children love using their own fingers.

Songs and Rhymes:
"One, Two, Buckle My Shoe," "One Potato, Two Potato," "This Old Man" - use songs constantly. Music activates memory.

Simple Ten Frames:
Use the first row of a ten-frame. Place 1, 2, or 3 objects. This builds early visual number sense.

Everyday Counting:
"How many crackers? One, two. Two crackers!" Count everything: toys, snacks, books, steps.

Body Movement:
"Clap three times!" "Jump one time!" "Touch your nose two times!" Connect numbers to physical actions.

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- Celebrate all attempts enthusiastically
- Never pressure or correct harshly
- Allow children to watch and imitate before participating
- Use calm, clear, slow speech
- Repeat activities many times - repetition builds comfort
- Follow the child''s pace and interest

ASSESSMENT INDICATORS (Observation-Based):
- Attempts to count along with songs
- Points to objects when counting
- Holds up fingers to show a quantity
- Says numbers in order (1, 2, 3)
- Shows beginning understanding that numbers mean "how many"

VOCABULARY TO DEVELOP:
one, two, three, count, how many, more

MATERIALS:
Blocks, buttons, counting bears, finger plays, simple picture books with counting, ten-frame mats',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Count to 3' AND grade_level = -1)
ON CONFLICT DO NOTHING;

-- Count to 5 (Pre-K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Count to 5' AND grade_level = -1),
  'Count to 5 Teaching Guide',
  'Comprehensive pedagogical approach for teaching counting to 5 in Pre-K',
  'COUNT TO 5 - PRE-KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit extends counting from 3 to 5, a significant expansion for young learners. Five is special because it maps to one hand - children can "see" and "feel" five through their fingers. This unit develops stronger one-to-one correspondence and cardinality understanding with slightly larger sets.

LEARNING PROGRESSION:
1. Verbal counting 1-5 with rhythm and songs
2. Recognizing numerals 4 and 5
3. One-to-one correspondence with sets of 4-5
4. Cardinality with 4 and 5 objects
5. "One more" and "one less" with small quantities
6. Patterns: What comes after 4?

DEVELOPMENTAL CONSIDERATIONS:
Sets of 4 and 5 are harder to subitize (instantly recognize) than 1-3. Children may need to count to verify. The five-frame provides visual support. Continue using concrete objects and physical movement.

COMMON CHALLENGES:
- May say 4 and 5 but lose track when counting objects
- May confuse 4 and 5 when recognizing numerals
- May not yet understand "one more" or "one less"
- Teen numbers may be confused with single digits (5 and 15)

INSTRUCTIONAL STRATEGIES:

Hand Connection:
"Your hand has FIVE fingers! Let''s count them: 1, 2, 3, 4, 5!" This physical connection is powerful for young children.

Five-Frame Introduction:
Use a five-frame (a row of 5 squares). Fill in squares one by one. When full, it shows 5. This visual supports subitizing.

Counting Games:
"I Spy 5 blocks!" Count together to verify. Hide and find activities engage children.

Comparison:
"Do we have 4 or 5?" Build both quantities and compare. Use language: "4 is one less than 5."

Number Songs to 5:
"Five Little Ducks," "Five Little Monkeys," "This Little Piggy" - songs reinforce the counting sequence.

Everyday Five:
Point out "fives" in the environment: a hand, a star, five petals on some flowers.

ASSESSMENT INDICATORS:
- Counts objects to 5 accurately
- Recognizes numerals 1-5
- Shows 1-5 on fingers
- Says what comes after 4
- Beginning to understand "one more"

VOCABULARY TO DEVELOP:
four, five, after, next, one more, count, how many

MATERIALS:
Five-frames, counting bears, dice (1-5), finger rhymes, counting books',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Count to 5' AND grade_level = -1)
ON CONFLICT DO NOTHING;

-- Count to 10 (Pre-K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Count to 10' AND grade_level = -1),
  'Count to 10 Teaching Guide',
  'Comprehensive pedagogical approach for teaching counting to 10 in Pre-K',
  'COUNT TO 10 - PRE-KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit extends counting to 10, completing the first decade of our number system. Ten is foundational - it''s the basis of our place value system. Children learn that two hands make 10, and ten is a special, important number. Ten-frame work becomes central.

LEARNING PROGRESSION:
1. Verbal counting 1-10 fluently
2. Recognizing numerals 6, 7, 8, 9, 10
3. One-to-one correspondence with sets to 10
4. Ten-frame as a visual model for 10
5. "5 and some more" concept (6 = 5+1)
6. Beginning to count backward from 10

DEVELOPMENTAL CONSIDERATIONS:
Sets of 6-10 are too large to subitize; children must count or use benchmarks (5 and some more). The ten-frame becomes essential. Numbers 6-10 may be confused with each other or with teen numbers.

COMMON CHALLENGES:
- Mixing up 6 and 9 (look similar)
- Losing count when counting larger sets
- Difficulty writing larger numerals
- May rush and skip numbers
- Not yet understanding 10 as a unit

INSTRUCTIONAL STRATEGIES:

Two-Hand Connection:
Both hands together make 10. "5 on this hand, 5 on that hand, 10 fingers all together!"

Ten-Frame Mastery:
Use ten-frames extensively. Fill the frame and see a complete 10. Notice patterns: 6 is "5 and 1 more," 9 is "10 with 1 missing."

Counting Collections:
Provide small collections (buttons, beads) to count and organize. Counting the same set multiple times builds accuracy.

Number Neighborhood:
Explore each number 6-10. "Today is number 7 day!" Count 7 things, find 7s, build 7.

Songs and Games:
"Ten in the Bed," counting down games, number path games. Make counting to 10 a daily joy.

Counting Back:
"10, 9, 8, 7, 6, 5, 4, 3, 2, 1... BLASTOFF!" Rocket ship countdown makes backward counting fun.

ASSESSMENT INDICATORS:
- Counts objects to 10 accurately
- Recognizes numerals 0-10
- Uses ten-frame to show numbers
- Counts backward from 10
- Shows understanding of 10 as both hands

VOCABULARY TO DEVELOP:
six, seven, eight, nine, ten, ten-frame, backward, countdown

MATERIALS:
Ten-frames, double five-frames, counting objects, numeral cards, number line to 10',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Count to 10' AND grade_level = -1)
ON CONFLICT DO NOTHING;

-- Count to 20 (Pre-K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Count to 20' AND grade_level = -1),
  'Count to 20 Teaching Guide',
  'Comprehensive pedagogical approach for teaching counting to 20 in Pre-K',
  'COUNT TO 20 - PRE-KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit introduces teen numbers (11-20) for advanced Pre-K learners. Teen numbers are conceptually challenging because their names don''t follow a clear pattern in English. The focus is on verbal counting to 20 and beginning to understand that teen numbers are "10 and some more."

LEARNING PROGRESSION:
1. Verbal counting to 20
2. Recognizing teen number patterns
3. Understanding teens as "10 and more"
4. Using double ten-frames
5. Counting larger collections
6. Number sequence patterns

DEVELOPMENTAL CONSIDERATIONS:
This is an advanced skill for Pre-K. Many children will continue developing this in Kindergarten. Teen number names are irregular in English ("eleven" doesn''t sound like "one-teen"). Focus on verbal fluency and beginning conceptual understanding.

COMMON CHALLENGES:
- Teen number names are confusing (eleven, twelve, thirteen...)
- May count "ten, eleven, twelve, thirteen, fourteen, fiveteen..."
- Difficulty connecting verbal count to quantity for large sets
- May reverse digits when seeing written teens

INSTRUCTIONAL STRATEGIES:

Verbal Fluency First:
Practice saying numbers to 20 through songs and chants. "1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20!" Make it rhythmic.

Double Ten-Frame:
Use two ten-frames. Fill one completely (10), then add to the second. 14 is one full frame and 4 more. This visual is essential.

"10 and Some More":
Emphasize: "13 is 10 and 3 more." Build with objects and ten-frames. The structure matters more than memorization.

Counting Songs:
Songs that count to 20, like "1-2 Buckle My Shoe" extended, or specialized counting songs.

Counting Collections:
Provide collections of 11-20 objects. Organize into a group of 10 and extras. Count to find total.

ASSESSMENT INDICATORS:
- Counts verbally to 20
- Begins to recognize written numbers 11-20
- Shows understanding that teens are 10 and some more
- Uses double ten-frame to represent teens

VOCABULARY TO DEVELOP:
eleven through twenty, teen, ten and more

MATERIALS:
Double ten-frames, counters (20+), numeral cards 11-20, number line to 20, counting songs',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Count to 20' AND grade_level = -1)
ON CONFLICT DO NOTHING;

-- Comparing (Pre-K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Comparing' AND grade_level = -1),
  'Comparing Teaching Guide',
  'Comprehensive pedagogical approach for teaching comparing in Pre-K',
  'COMPARING - PRE-KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit develops the ability to compare quantities using "more," "less/fewer," and "same." Comparison is foundational for understanding relationships between numbers. Children learn to look at two groups and determine which has more without necessarily counting each.

LEARNING PROGRESSION:
1. Visual comparison of obviously different quantities
2. Language: more, less, fewer, same, equal
3. Matching to compare (one-to-one)
4. Beginning to compare by counting
5. "Are there enough?" questions

DEVELOPMENTAL CONSIDERATIONS:
Young children often focus on arrangement rather than quantity. A longer line looks like "more" even if it has fewer objects. One-to-one matching (pairing objects from each group) builds understanding that arrangement doesn''t change quantity.

COMMON CHALLENGES:
- Thinking a spread-out group has "more"
- Confusing "more" with "bigger" (size vs. quantity)
- Not understanding that "fewer" and "less" mean the same thing for quantity
- Difficulty when groups are close in size

INSTRUCTIONAL STRATEGIES:

Obvious Differences First:
Start with clearly different quantities: 1 vs. 5, 2 vs. 10. Make the difference unmistakable.

Matching to Compare:
Place one group above the other, matching objects one-to-one. "Do they match? Which group has extras?"

Same/Different:
Play "same or different?" games. Make two groups the same, then different. Emphasize the vocabulary.

Everyday Comparisons:
"Does everyone have a snack?" (Are there enough for each child?) This contextualizes comparison.

Conservation Exploration:
Spread out one group without adding objects. "Is it still the same amount?" This challenges perceptual thinking.

"More" Hunt:
"Which basket has MORE blocks?" Have children point and explain.

ASSESSMENT INDICATORS:
- Uses "more" and "less/fewer" appropriately
- Compares two groups by matching
- Identifies when groups are the same
- Answers "are there enough" questions
- Beginning to understand arrangement doesn''t change quantity

VOCABULARY TO DEVELOP:
more, less, fewer, same, equal, enough, compare, match

MATERIALS:
Counting objects in two colors, matching mats, comparison cards, story books about comparing',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Comparing' AND grade_level = -1)
ON CONFLICT DO NOTHING;

-- Positions (Pre-K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Positions' AND grade_level = -1),
  'Positions Teaching Guide',
  'Comprehensive pedagogical approach for teaching positions in Pre-K',
  'POSITIONS - PRE-KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit develops spatial vocabulary and positional understanding. Children learn to describe where objects are located using words like "above," "below," "beside," "in front of," and "behind." This spatial reasoning is foundational for geometry and following directions.

LEARNING PROGRESSION:
1. Inside and outside
2. Above and below, over and under
3. In front of and behind
4. Beside, next to
5. Left and right (beginning awareness)
6. Following positional directions

DEVELOPMENTAL CONSIDERATIONS:
Spatial concepts are relative - "above" depends on your perspective. Young children are egocentric and may struggle with viewpoints different from their own. Use physical experiences extensively.

COMMON CHALLENGES:
- Confusing above/below, in front/behind
- Left and right are very difficult (often not mastered until age 6-7)
- Understanding that position depends on perspective
- Following multi-step positional directions

INSTRUCTIONAL STRATEGIES:

Body-Based Learning:
"Put your hands ABOVE your head!" "Sit BEHIND the chair." Use children''s bodies to experience positions.

Object Hiding Games:
Hide a toy and give positional clues. "The bear is UNDER the table, BESIDE the chair." Children love seeking.

Position Songs:
Songs with position words, like a modified "Hokey Pokey" or position-based action songs.

Obstacle Courses:
"Go UNDER the tunnel, OVER the mat, AROUND the cone." Full-body experience of positions.

Story Books:
Books that emphasize position words, like "Rosie''s Walk" or "Over, Under, Through."

Classroom Directions:
Use position words throughout the day: "Put your coat IN your cubby." "Sit NEXT TO a friend."

ASSESSMENT INDICATORS:
- Follows simple positional directions
- Uses position words to describe location
- Places objects in specified positions
- Understands inside/outside, above/below

VOCABULARY TO DEVELOP:
inside, outside, above, below, over, under, in front of, behind, beside, next to, between

MATERIALS:
Position word cards, small toys for hiding, obstacle course materials, positional story books',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Positions' AND grade_level = -1)
ON CONFLICT DO NOTHING;

-- Classify and Sort (Pre-K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Classify and Sort' AND grade_level = -1),
  'Classify and Sort Teaching Guide',
  'Comprehensive pedagogical approach for teaching classification in Pre-K',
  'CLASSIFY AND SORT - PRE-KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit develops the ability to recognize attributes and sort objects into groups. Classification is fundamental mathematical thinking - looking for what''s the same and what''s different. Children sort by one attribute (color, shape, size) and explain their sorting rule.

LEARNING PROGRESSION:
1. Identifying same and different
2. Sorting by color
3. Sorting by shape
4. Sorting by size
5. Explaining "how I sorted"
6. Finding objects that don''t belong

DEVELOPMENTAL CONSIDERATIONS:
Pre-kindergarteners sort by one attribute at a time. Sorting by two attributes (red AND small) is too complex. Focus on clear, obvious attributes first. The ability to verbalize the sorting rule is emerging.

COMMON CHALLENGES:
- Switching sorting rules mid-task
- Difficulty articulating why objects go together
- May sort by personal preference rather than attribute
- Focusing on one attribute while ignoring others

INSTRUCTIONAL STRATEGIES:

Free Sorting:
Give a collection of objects. "Put the ones that go together in the same pile." Observe and discuss their rule.

Color Sorting:
Start with color - often the most obvious attribute. "Put all the red ones here."

Shape Sorting:
Sort by shape: all circles, all squares. Use clear shape categories.

Size Sorting:
Big and small sorting. Start with obviously different sizes.

"What''s My Rule?":
Sort objects and have children guess the rule. Then let them make a rule for others to guess.

"Which Doesn''t Belong?":
Show 4 objects where 3 share an attribute. "Which one doesn''t belong? Why?"

ASSESSMENT INDICATORS:
- Sorts objects by a given attribute
- Explains their sorting rule
- Identifies when objects are the same or different
- Finds objects that don''t belong in a group

VOCABULARY TO DEVELOP:
same, different, sort, group, color, shape, size, belong

MATERIALS:
Sorting trays, attribute blocks, colored bears/counters, everyday objects to sort, sorting mats',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Classify and Sort' AND grade_level = -1)
ON CONFLICT DO NOTHING;

-- Patterns (Pre-K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Patterns' AND grade_level = -1),
  'Patterns Teaching Guide',
  'Comprehensive pedagogical approach for teaching patterns in Pre-K',
  'PATTERNS - PRE-KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit introduces the concept of patterns - sequences that repeat in a predictable way. Recognizing and creating patterns develops algebraic thinking foundations. Children work with simple AB patterns (like red-blue-red-blue) and begin to predict "what comes next."

LEARNING PROGRESSION:
1. Recognizing patterns in the environment
2. Copying simple AB patterns
3. Extending AB patterns ("what comes next?")
4. Creating own AB patterns
5. Exploring ABB and AAB patterns

DEVELOPMENTAL CONSIDERATIONS:
Patterns require seeing the repeating unit - a conceptual leap. Start with clear, simple AB patterns using concrete materials. Sound and movement patterns are as important as visual patterns.

COMMON CHALLENGES:
- Not recognizing the core unit that repeats
- Creating patterns that don''t repeat
- Difficulty predicting what comes next
- Confusing random sequences with patterns

INSTRUCTIONAL STRATEGIES:

Body Patterns:
Clap-stomp-clap-stomp. Stand-sit-stand-sit. Use body movements to create and copy patterns.

Color Patterns:
Red-blue-red-blue with blocks. The visual is clear and appealing.

Sound Patterns:
Clap-snap-clap-snap. Loud-quiet-loud-quiet. Pattern work isn''t just visual.

Pattern Trains:
Use connecting cubes to build pattern "trains." Extend them together.

Nature Patterns:
Find patterns in nature: stripes, spots, petals. Patterns are everywhere!

"What Comes Next?":
Build a pattern and stop. "What comes next?" Children predict and verify.

Error Correction:
Make a pattern with one mistake. "Is this a pattern? What''s wrong?"

ASSESSMENT INDICATORS:
- Recognizes simple patterns
- Copies an AB pattern
- Extends an AB pattern correctly
- Creates own simple pattern
- Says what comes next in a pattern

VOCABULARY TO DEVELOP:
pattern, repeat, next, same, over and over, core

MATERIALS:
Pattern blocks, colored cubes, pattern strips, stamps, beads for stringing',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Patterns' AND grade_level = -1)
ON CONFLICT DO NOTHING;

-- Size (Pre-K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Size' AND grade_level = -1),
  'Size Teaching Guide',
  'Comprehensive pedagogical approach for teaching size in Pre-K',
  'SIZE - PRE-KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit develops understanding of size concepts and comparison. Children learn vocabulary for describing and comparing sizes: big/small, long/short, tall/short, heavy/light. These early measurement concepts prepare for formal measurement in later grades.

LEARNING PROGRESSION:
1. Big and small
2. Long and short
3. Tall and short
4. Heavy and light
5. Comparing sizes directly
6. Ordering by size (small to big)

DEVELOPMENTAL CONSIDERATIONS:
Size is relative - something can be big compared to one thing and small compared to another. Use direct comparison extensively. Perceptual features may confuse (a thin but tall object vs. short but wide).

COMMON CHALLENGES:
- Confusing long/short with tall/short
- Not understanding relative size
- Difficulty with "medium" concept
- Confusing size with quantity

INSTRUCTIONAL STRATEGIES:

Direct Comparison:
Place two objects side by side. "Which is longer? Which is shorter?" Always compare directly.

Body Comparisons:
Who is taller? Compare children''s heights. Compare hand sizes, foot sizes.

Size Vocabulary:
Use rich vocabulary: big/small, long/short, tall/short, wide/narrow, heavy/light. Practice in context.

Ordering Activities:
Order 3 objects by size: small, medium, big. Use nesting cups, stacking rings.

Heavy and Light:
Hold objects to compare weight. Use a simple balance scale for visual comparison.

Size Sorts:
Sort objects into "big" and "small" piles. Discuss why each object belongs.

ASSESSMENT INDICATORS:
- Uses size vocabulary appropriately
- Compares two objects by size attribute
- Orders objects from small to big
- Identifies heavier and lighter objects

VOCABULARY TO DEVELOP:
big, small, long, short, tall, wide, narrow, heavy, light, medium

MATERIALS:
Nesting cups, stacking rings, measuring spoons, balance scale, objects of various sizes',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Size' AND grade_level = -1)
ON CONFLICT DO NOTHING;

-- Money Introduction (Pre-K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Money Introduction' AND grade_level = -1),
  'Money Introduction Teaching Guide',
  'Comprehensive pedagogical approach for introducing money in Pre-K',
  'MONEY INTRODUCTION - PRE-KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit provides a very basic introduction to money as a concept. Children learn to recognize coins, understand that money is used to buy things, and begin to identify penny, nickel, dime, and quarter. Values and counting money are not the focus - just recognition and purpose.

LEARNING PROGRESSION:
1. Understanding money is used to buy things
2. Recognizing coins as different from other objects
3. Identifying pennies
4. Identifying nickels, dimes, quarters by sight
5. Pretend play with money

DEVELOPMENTAL CONSIDERATIONS:
Pre-K children don''t need to know coin values. The focus is recognition and the concept that money is exchanged for goods. Pretend play (store, restaurant) provides meaningful context.

COMMON CHALLENGES:
- Thinking bigger coins are worth more
- Confusing coins by appearance
- Not understanding the exchange concept
- May think more coins = more money

INSTRUCTIONAL STRATEGIES:

Coin Recognition:
"This is a penny. It''s the brown/copper one." Focus on visual features, not values.

Pretend Store:
Set up a pretend store. Children use "money" (real coins or play money) to "buy" items. Focus on the exchange.

Coin Sorting:
Sort coins by type: all pennies here, all nickels here. This is classification practice.

Coin Rubbing:
Use paper and crayons to make coin rubbings. Children examine details.

Stories About Money:
Read books about shopping, saving, and using money. Build conceptual understanding.

Real-World Connection:
Discuss that parents use money to buy groceries, clothes, etc. Money helps us get what we need.

ASSESSMENT INDICATORS:
- Understands money is used to buy things
- Recognizes and names common coins
- Participates in pretend money play
- Sorts coins by type

VOCABULARY TO DEVELOP:
money, coin, penny, nickel, dime, quarter, buy, pay, store

MATERIALS:
Real coins, play money, pretend store setup, coin sorting trays, piggy bank',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Money Introduction' AND grade_level = -1)
ON CONFLICT DO NOTHING;

-- Flat Shapes (Pre-K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Flat Shapes' AND grade_level = -1),
  'Flat Shapes Teaching Guide',
  'Comprehensive pedagogical approach for teaching 2D shapes in Pre-K',
  'FLAT SHAPES - PRE-KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit introduces basic two-dimensional (flat) shapes: circle, square, triangle, and rectangle. Children learn to recognize these shapes in various orientations and sizes, find them in their environment, and describe them using emerging attribute language.

LEARNING PROGRESSION:
1. Identifying circles
2. Identifying squares
3. Identifying triangles
4. Identifying rectangles
5. Finding shapes in the environment
6. Beginning to describe shapes (sides, corners)

DEVELOPMENTAL CONSIDERATIONS:
Young children recognize shapes by overall appearance. They may only recognize "prototypical" examples (an equilateral triangle "pointing up"). Expose children to varied examples in different orientations, colors, and sizes.

COMMON CHALLENGES:
- Only recognizing prototypical shapes
- Confusing squares and rectangles
- Thinking a rotated square is a "diamond," not a square
- Not recognizing shapes in the environment

INSTRUCTIONAL STRATEGIES:

Shape Recognition Games:
Show a shape. "Is this a circle or a square?" Use clear examples first.

Shape Hunts:
Find circles in the classroom: clock, button, wheel. Shapes are everywhere!

Multiple Examples:
Show triangles of all types (equilateral, isosceles, scalene) in different orientations. "These are ALL triangles."

Shape Sorting:
Sort shapes into categories. All circles here, all squares there.

Shape Art:
Make pictures using shapes. A house = triangle + square. A tree = triangle + rectangle.

Feel the Shape:
Put shapes in a bag. Feel and identify without looking. Notice sides and corners.

Shape Songs:
Songs about shapes help memory: "This is a circle, it goes round and round..."

ASSESSMENT INDICATORS:
- Names circles, squares, triangles, rectangles
- Finds shapes in the environment
- Recognizes shapes in various orientations
- Beginning to describe shapes by attributes

VOCABULARY TO DEVELOP:
circle, square, triangle, rectangle, shape, side, corner, round, flat

MATERIALS:
Shape blocks, shape cards, shape puzzles, shape books, shapes in the environment',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Flat Shapes' AND grade_level = -1)
ON CONFLICT DO NOTHING;

-- Solid Shapes (Pre-K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Solid Shapes' AND grade_level = -1),
  'Solid Shapes Teaching Guide',
  'Comprehensive pedagogical approach for teaching 3D shapes in Pre-K',
  'SOLID SHAPES - PRE-KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit introduces three-dimensional (solid) shapes: sphere, cube, cylinder, and cone. Children learn that these shapes are different from flat shapes because they can be held and have depth. They explore how solids roll, stack, and slide.

LEARNING PROGRESSION:
1. Distinguishing flat from solid (2D vs 3D)
2. Identifying spheres (balls)
3. Identifying cubes (blocks)
4. Identifying cylinders (cans)
5. Identifying cones
6. Exploring properties: roll, stack, slide

DEVELOPMENTAL CONSIDERATIONS:
Three-dimensional shapes are more concrete for young children because they can hold them. The challenge is connecting solid shapes to their flat "faces" (a cube has square faces). Use real objects extensively.

COMMON CHALLENGES:
- Calling a sphere a "circle" (confusing 3D with 2D)
- Calling a cube a "square"
- Not understanding that faces are flat shapes on solid shapes
- Difficulty with vocabulary (cylinder, cone)

INSTRUCTIONAL STRATEGIES:

Real Object Connection:
"A ball is a sphere. A box is like a cube. A can is a cylinder. An ice cream cone is a cone." Use familiar objects.

Exploration Table:
Set up an exploration table with 3D shapes to handle, stack, roll, and examine.

Roll or Stack?:
Explore which shapes roll (sphere, cylinder, cone on side) and which stack (cube). Why?

2D/3D Connection:
Show the flat faces of 3D shapes. "The face of this cube is a square." Trace around faces.

Shape Hunt 3D:
Find 3D shapes in the classroom and at home. Balls, boxes, cans, party hats.

Building:
Build with 3D shapes. Towers, houses, structures. Which shapes are good for building?

Shape Sorting:
Sort 3D shapes: all spheres here, all cubes there. Describe the shapes.

ASSESSMENT INDICATORS:
- Identifies sphere, cube, cylinder, cone
- Distinguishes flat shapes from solid shapes
- Describes how shapes move (roll, stack, slide)
- Finds solid shapes in the environment

VOCABULARY TO DEVELOP:
sphere, cube, cylinder, cone, solid, ball, box, can, roll, stack, slide, face

MATERIALS:
3D shape sets, balls, boxes, cans, party hats, building blocks, everyday 3D objects',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Solid Shapes' AND grade_level = -1)
ON CONFLICT DO NOTHING;

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
-- CALCULUS MATH UNITS (Grade 13 - Advanced)
-- ============================================================================

-- Functions Review (Calculus)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Functions Review' AND grade_level = 13),
  'Functions Review Teaching Guide',
  'Comprehensive pedagogical approach for reviewing functions in Calculus',
  'FUNCTIONS REVIEW - CALCULUS UNIT GUIDE

UNIT OVERVIEW:
This unit reviews and deepens understanding of functions as preparation for calculus. Students must be fluent with function notation, operations, composition, and inverses before studying limits and derivatives. This review identifies gaps while extending prior knowledge.

LEARNING PROGRESSION:
1. Function definition, domain, and range
2. Evaluating functions and function notation f(x)
3. Function operations (sum, difference, product, quotient)
4. Composition of functions f(g(x))
5. Inverse functions and their properties
6. Analyzing functions graphically

PREREQUISITE KNOWLEDGE:
Students should have studied functions in Algebra II and Pre-Calculus. This unit reviews and solidifies understanding. Gaps in function knowledge will create major obstacles in calculus.

COMMON MISCONCEPTIONS:
- f(x + h) does not equal f(x) + f(h) (functions are not distributive)
- Confusing the inverse function f^(-1)(x) with 1/f(x)
- Not understanding that domain restrictions carry through operations
- Thinking all functions have inverses (only one-to-one functions do)
- Difficulty reading function values from graphs

INSTRUCTIONAL STRATEGIES:

Function Notation Fluency:
Practice evaluating f(3), f(-2), f(a), f(x+h). This notation is used constantly in calculus. Speed and accuracy matter.

Graphical Analysis:
Given a graph, students should identify domain, range, intercepts, maximum/minimum values, and intervals of increase/decrease.

Composition Understanding:
f(g(x)) means "apply g first, then f." Use real-world contexts: if g converts Celsius to Fahrenheit and f converts Fahrenheit to Kelvin, what does f(g(x)) do?

Inverse Functions:
Inverses "undo" functions. If f(2) = 5, then f^(-1)(5) = 2. Graphically, inverses reflect over y = x. Only one-to-one functions have inverses.

Function Transformations:
Review how parameters affect graphs: shifts, stretches, reflections. This understanding helps with derivative interpretation later.

ASSESSMENT INDICATORS:
- Evaluates functions for various inputs including expressions
- Finds and composes functions correctly
- Determines if a function has an inverse; finds inverses
- Reads and interprets information from graphs
- Articulates domain and range in set and interval notation

VOCABULARY TO DEVELOP:
function, domain, range, composition, inverse, one-to-one, onto, f(x) notation, input, output, vertical line test, horizontal line test

CONNECTIONS TO CALCULUS:
Understanding f(x+h) is essential for the derivative definition. Composition is used in the chain rule. Inverses are used with inverse trigonometric functions and in related rates.',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Functions Review' AND grade_level = 13)
ON CONFLICT DO NOTHING;

-- Introduction to Limits (Calculus)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Introduction to Limits' AND grade_level = 13),
  'Introduction to Limits Teaching Guide',
  'Comprehensive pedagogical approach for teaching limits in Calculus',
  'INTRODUCTION TO LIMITS - CALCULUS UNIT GUIDE

UNIT OVERVIEW:
This unit introduces the foundational concept of calculus: the limit. Limits describe behavior as inputs approach particular values, even when the function is undefined there. This concept underlies both derivatives and integrals. Students develop both intuitive understanding and computational skill.

LEARNING PROGRESSION:
1. Intuitive understanding of limits from graphs and tables
2. One-sided limits (left and right)
3. When limits exist and when they don''t
4. Limit notation and language
5. Graphical limits vs. function values
6. Limits involving infinity

CONCEPTUAL FOUNDATION:
Limits describe what a function APPROACHES, not what it EQUALS. The limit as x approaches 2 of f(x) may exist even if f(2) is undefined. This distinction is subtle but critical.

COMMON MISCONCEPTIONS:
- Thinking the limit equals the function value (they can differ)
- Believing limits involve "reaching" or "arriving at" a value
- Confusing the limit as x→a with f(a)
- Thinking if f(a) is undefined, the limit must not exist
- Not distinguishing between left and right limits

INSTRUCTIONAL STRATEGIES:

Graphical Introduction:
Start with graphs. "As x gets closer and closer to 2, what value is y approaching?" Use visual intuition before formalism.

Table of Values:
Create tables with x values approaching a from both sides. Watch the y values converge (or not). This builds intuition.

Language Precision:
Use precise language: "The limit of f(x) as x approaches 2 is 5" means "y values approach 5 as x values approach 2."

One-Sided Limits:
If left and right limits differ, the two-sided limit doesn''t exist. Use jump discontinuities to illustrate.

Limit vs. Value:
Show examples where the limit exists but the function value is different or undefined. A hole in the graph has a limit but no value.

Infinity Carefully:
Limits can "equal" infinity (unbounded behavior) or limits as x approaches infinity (end behavior). Clarify these different uses.

ASSESSMENT INDICATORS:
- Estimates limits from graphs and tables
- Distinguishes limits from function values
- Identifies one-sided limits
- Recognizes when limits don''t exist and why
- Uses proper limit notation

VOCABULARY TO DEVELOP:
limit, approaches, one-sided limit, left-hand limit, right-hand limit, limit does not exist, infinity, unbounded, indeterminate

HISTORICAL CONTEXT:
The rigorous definition of limits (epsilon-delta) was developed in the 19th century by Cauchy and Weierstrass. Before this, calculus worked but lacked rigorous foundation.',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Introduction to Limits' AND grade_level = 13)
ON CONFLICT DO NOTHING;

-- Calculate Limits (Calculus)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Calculate Limits' AND grade_level = 13),
  'Calculate Limits Teaching Guide',
  'Comprehensive pedagogical approach for calculating limits in Calculus',
  'CALCULATE LIMITS - CALCULUS UNIT GUIDE

UNIT OVERVIEW:
This unit develops algebraic techniques for computing limits. While graphical intuition is important, calculus requires precise calculation. Students learn limit laws and strategies for handling indeterminate forms like 0/0.

LEARNING PROGRESSION:
1. Limit laws (sum, product, quotient, constant multiple)
2. Direct substitution (when it works)
3. Polynomial and rational function limits
4. Factoring to resolve 0/0 forms
5. Rationalizing techniques
6. Trigonometric limits (sin x/x as x→0)

COMPUTATIONAL FOCUS:
This unit is algebraically intensive. Students must be fluent with factoring, simplifying, and algebraic manipulation. Review these skills as needed.

COMMON MISCONCEPTIONS:
- Thinking 0/0 means the limit is undefined (it''s indeterminate - could be any value)
- Not recognizing when direct substitution works
- Errors in factoring and simplification
- Forgetting domain restrictions after cancellation
- Misapplying limit laws

INSTRUCTIONAL STRATEGIES:

Direct Substitution First:
Always try plugging in the value first. If you get a number (not 0/0 or ∞/∞), that''s the limit. Many limits are this simple.

Indeterminate Forms:
0/0 is "indeterminate" - it could equal any value. Factor, simplify, or rationalize to find the actual limit. 0/0 is not an answer.

Limit Laws:
The limit of a sum is the sum of limits (if both exist). Same for products. For quotients, denominators can''t approach 0. These laws let us work with pieces.

Factoring Practice:
Many limits require factoring the numerator and denominator, then canceling the factor causing 0/0. Fluent factoring is essential.

Trigonometric Limits:
The fundamental limit lim(x→0) sin(x)/x = 1 is derived from geometry. Use it to evaluate other trig limits through algebraic manipulation.

Strategy Comparison:
Give the same limit to different students using different methods. Compare approaches. Build strategic flexibility.

ASSESSMENT INDICATORS:
- Evaluates limits using limit laws
- Recognizes and resolves indeterminate forms
- Uses factoring and rationalization appropriately
- Applies trigonometric limit formulas
- Shows clear, justified work

VOCABULARY TO DEVELOP:
limit laws, direct substitution, indeterminate form, 0/0, rationalize, conjugate, algebraic manipulation

CONNECTIONS:
These skills directly prepare for derivative calculations using the limit definition. L''Hopital''s Rule (later) provides another tool for indeterminate forms.',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Calculate Limits' AND grade_level = 13)
ON CONFLICT DO NOTHING;

-- Continuity (Calculus)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Continuity' AND grade_level = 13),
  'Continuity Teaching Guide',
  'Comprehensive pedagogical approach for teaching continuity in Calculus',
  'CONTINUITY - CALCULUS UNIT GUIDE

UNIT OVERVIEW:
This unit defines continuity precisely using limits and explores its implications. A function is continuous at a point if the limit equals the function value there. Continuous functions have important properties that make calculus work, including the Intermediate Value Theorem.

LEARNING PROGRESSION:
1. Definition of continuity at a point
2. Three conditions for continuity
3. Types of discontinuities (removable, jump, infinite)
4. Continuity on intervals
5. Continuity of elementary functions
6. Intermediate Value Theorem

DEFINITION PRECISION:
A function f is continuous at x = a if: (1) f(a) exists, (2) lim(x→a) f(x) exists, and (3) lim(x→a) f(x) = f(a). All three conditions must hold.

COMMON MISCONCEPTIONS:
- Thinking continuous means "smooth" (continuity doesn''t require differentiability)
- Believing a function with no breaks in its graph is continuous everywhere (must check formally)
- Confusing different types of discontinuities
- Not understanding why IVT requires continuity
- Thinking piecewise functions are always discontinuous

INSTRUCTIONAL STRATEGIES:

Definition Check:
For any continuity question, systematically check all three conditions. This structured approach prevents errors.

Discontinuity Types:
Removable discontinuity: hole in graph (limit exists but doesn''t equal value). Jump: left and right limits differ. Infinite: vertical asymptote.

Visual and Algebraic:
Connect graphical intuition to algebraic verification. Students should identify discontinuities from graphs AND prove continuity algebraically.

Elementary Functions:
Polynomials are continuous everywhere. Rational functions are continuous except where denominator is zero. These facts simplify many problems.

Intermediate Value Theorem:
If f is continuous on [a,b] and N is between f(a) and f(b), then f(c) = N for some c in (a,b). This guarantees solutions exist.

IVT Applications:
Use IVT to show equations have solutions. "f(1) = -2 and f(2) = 3, and f is continuous, so f(c) = 0 for some c between 1 and 2."

ASSESSMENT INDICATORS:
- Verifies continuity using the three-condition definition
- Classifies discontinuities by type
- Identifies where elementary functions are continuous
- Applies Intermediate Value Theorem correctly
- Analyzes piecewise function continuity

VOCABULARY TO DEVELOP:
continuous, discontinuity, removable discontinuity, jump discontinuity, infinite discontinuity, piecewise function, Intermediate Value Theorem

CONNECTIONS:
Continuity is required for many calculus theorems: IVT, Mean Value Theorem, Extreme Value Theorem. Understanding continuity is essential.',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Continuity' AND grade_level = 13)
ON CONFLICT DO NOTHING;

-- Introduction to Derivatives (Calculus)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Introduction to Derivatives' AND grade_level = 13),
  'Introduction to Derivatives Teaching Guide',
  'Comprehensive pedagogical approach for introducing derivatives in Calculus',
  'INTRODUCTION TO DERIVATIVES - CALCULUS UNIT GUIDE

UNIT OVERVIEW:
This unit introduces the derivative as the instantaneous rate of change, building from average rate of change. The derivative measures the slope of the tangent line at a point and has profound applications in science, economics, and engineering.

LEARNING PROGRESSION:
1. Average rate of change (slope of secant line)
2. Instantaneous rate of change (slope of tangent line)
3. The derivative as a limit
4. Derivative at a point vs. derivative function
5. Differentiability and its relationship to continuity
6. Notation: f''(x), dy/dx, Df(x)

CONCEPTUAL FOUNDATION:
The derivative answers: "How fast is y changing when x equals a particular value?" This is instantaneous rate of change, found by taking the limit of average rates over smaller intervals.

COMMON MISCONCEPTIONS:
- Confusing average and instantaneous rates of change
- Thinking the derivative IS the tangent line (it''s the SLOPE of the tangent line)
- Believing differentiable means continuous (differentiable implies continuous, not vice versa)
- Errors in limit calculations with the definition
- Not understanding derivative as a function

INSTRUCTIONAL STRATEGIES:

From Secant to Tangent:
Start with average rate of change (secant line slope). As the two points get closer, the secant approaches the tangent. The limit IS the derivative.

Multiple Representations:
Show the same derivative as: limit of difference quotient, slope of tangent line, instantaneous velocity, rate of change. Connect interpretations.

The Limit Definition:
f''(a) = lim(h→0) [f(a+h) - f(a)]/h. Practice using this definition before shortcut rules. Understanding the definition is essential.

Physical Context:
If position is s(t), then s''(t) is velocity. If velocity is v(t), then v''(t) is acceleration. Physics provides intuition.

Differentiability:
Corners, cusps, and discontinuities prevent differentiability. Explore graphically why the limit doesn''t exist at these points.

Notation Fluency:
f''(x), dy/dx, y'', d/dx[f(x)] all mean the same thing. Practice reading and using different notations.

ASSESSMENT INDICATORS:
- Uses the limit definition to find derivatives
- Interprets derivative as instantaneous rate of change
- Finds equations of tangent lines
- Identifies where functions are not differentiable
- Translates between notations

VOCABULARY TO DEVELOP:
derivative, rate of change, instantaneous, tangent line, secant line, difference quotient, differentiable, slope

HISTORICAL CONTEXT:
Newton and Leibniz independently developed calculus in the 17th century. Their notations (dot notation, dy/dx) reflect different conceptual approaches.',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Introduction to Derivatives' AND grade_level = 13)
ON CONFLICT DO NOTHING;

-- Derivative Rules (Calculus)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Derivative Rules' AND grade_level = 13),
  'Derivative Rules Teaching Guide',
  'Comprehensive pedagogical approach for teaching derivative rules in Calculus',
  'DERIVATIVE RULES - CALCULUS UNIT GUIDE

UNIT OVERVIEW:
This unit develops the fundamental rules for differentiation. These rules (power, product, quotient, chain) make finding derivatives efficient without using the limit definition every time. Mastery of these rules is essential for all further calculus work.

LEARNING PROGRESSION:
1. Constant rule and power rule
2. Constant multiple and sum/difference rules
3. Product rule
4. Quotient rule
5. Chain rule
6. Combining rules for complex functions

COMPUTATIONAL FLUENCY:
This unit requires extensive practice. Students must differentiate fluently to succeed in applications. The rules must become automatic.

COMMON MISCONCEPTIONS:
- Applying the product rule as d/dx[fg] = f''g'' (it''s f''g + fg'')
- Forgetting the denominator squared in the quotient rule
- Not recognizing when to use the chain rule
- Errors in applying multiple rules together
- Confusing power rule with chain rule for powers of functions

INSTRUCTIONAL STRATEGIES:

Build from Definition:
Prove each rule using the limit definition. Students who understand WHY rules work apply them more accurately.

Power Rule Foundation:
d/dx[x^n] = nx^(n-1) is the most-used rule. Practice with positive, negative, and fractional exponents.

Product Rule Pattern:
"First times derivative of second, plus second times derivative of first." Create memorable patterns but ensure understanding.

Quotient Rule Pattern:
"Low d-high minus high d-low, all over low squared." The jingle helps, but algebraic understanding is essential.

Chain Rule Critical:
The chain rule handles composition: d/dx[f(g(x))] = f''(g(x)) · g''(x). Practice identifying "outside" and "inside" functions.

Combining Rules:
Complex functions require multiple rules. Show strategy: work from outside in, use chain rule for composition, product/quotient for products/quotients.

ASSESSMENT INDICATORS:
- Applies each rule correctly
- Recognizes which rules to use
- Combines multiple rules accurately
- Simplifies derivative answers appropriately
- Works efficiently and accurately

VOCABULARY TO DEVELOP:
power rule, product rule, quotient rule, chain rule, inside function, outside function, composite function, differentiate

PRACTICE EMPHASIS:
This unit requires more practice than most. Assign many derivatives of increasing complexity. Speed and accuracy both matter.',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Derivative Rules' AND grade_level = 13)
ON CONFLICT DO NOTHING;

-- Applications of Derivatives (Calculus)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Applications of Derivatives' AND grade_level = 13),
  'Applications of Derivatives Teaching Guide',
  'Comprehensive pedagogical approach for derivative applications in Calculus',
  'APPLICATIONS OF DERIVATIVES - CALCULUS UNIT GUIDE

UNIT OVERVIEW:
This unit applies derivatives to solve real-world problems. Students use derivatives for optimization, related rates, curve sketching, and understanding function behavior. This is where calculus becomes a powerful problem-solving tool.

LEARNING PROGRESSION:
1. Related rates problems
2. Critical points and extrema
3. First derivative test
4. Second derivative test
5. Curve sketching
6. Optimization problems
7. Linear approximation

KEY APPLICATIONS:
Derivatives reveal where functions increase/decrease, have maximum/minimum values, are concave up/down, and how quantities change in relation to each other.

COMMON MISCONCEPTIONS:
- Confusing relative and absolute extrema
- Setting f(x) = 0 instead of f''(x) = 0 to find critical points
- Forgetting to check endpoints in closed interval problems
- Errors in setting up related rates equations
- Not verifying that a critical point is actually a maximum/minimum

INSTRUCTIONAL STRATEGIES:

Related Rates Framework:
1. Draw and label diagram
2. Identify known and unknown rates
3. Write equation relating quantities
4. Differentiate implicitly with respect to time
5. Substitute and solve

Optimization Framework:
1. Understand what''s being optimized
2. Write objective function
3. Use constraints to get function of one variable
4. Find critical points
5. Verify maximum or minimum

Curve Sketching Checklist:
Domain, intercepts, symmetry, asymptotes, first derivative (increase/decrease, extrema), second derivative (concavity, inflection points).

First vs. Second Derivative Tests:
First derivative test: sign changes of f'' determine local max/min.
Second derivative test: f''''(c) < 0 means local max, f''''(c) > 0 means local min.

Real-World Context:
Optimization: minimum cost, maximum profit, minimum material.
Related rates: expanding circles, filling tanks, moving objects.

ASSESSMENT INDICATORS:
- Sets up and solves related rates problems
- Finds and classifies critical points
- Determines absolute extrema on intervals
- Sketches curves using calculus analysis
- Solves optimization word problems

VOCABULARY TO DEVELOP:
critical point, local maximum, local minimum, absolute maximum, absolute minimum, extrema, optimization, related rates, increasing, decreasing, concave up, concave down, inflection point

PROBLEM-SOLVING EMPHASIS:
Applications require setting up problems, not just computing. Practice the process of translating words to mathematics.',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Applications of Derivatives' AND grade_level = 13)
ON CONFLICT DO NOTHING;

-- Introduction to Integration (Calculus)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Introduction to Integration' AND grade_level = 13),
  'Introduction to Integration Teaching Guide',
  'Comprehensive pedagogical approach for introducing integration in Calculus',
  'INTRODUCTION TO INTEGRATION - CALCULUS UNIT GUIDE

UNIT OVERVIEW:
This unit introduces the integral as the accumulation of quantities, starting with area under curves. The definite integral represents the signed area between a function and the x-axis. Riemann sums provide the foundation for understanding why integration works.

LEARNING PROGRESSION:
1. Area approximation with rectangles
2. Riemann sums (left, right, midpoint)
3. Sigma notation
4. The definite integral as a limit
5. Properties of definite integrals
6. The Fundamental Theorem of Calculus

CONCEPTUAL FOUNDATION:
Integration is "continuous summation." Just as adding discrete quantities gives a sum, integrating continuous quantities gives an integral. Area is the simplest example, but integration applies to any accumulation.

COMMON MISCONCEPTIONS:
- Thinking integration is just "anti-differentiation" (it''s accumulation)
- Confusing definite and indefinite integrals
- Not understanding why negative values give negative area
- Errors in Riemann sum calculations
- Not connecting the integral to its limit definition

INSTRUCTIONAL STRATEGIES:

Riemann Sums Foundation:
Start with rectangles approximating area. More rectangles give better approximations. The limit of this process IS the integral.

Left, Right, Midpoint:
Compare approximation methods. For increasing functions, left underestimates, right overestimates. Midpoint is often better.

Sigma Notation Practice:
Students must read and write sigma notation fluently. Practice converting between summation and expanded forms.

Signed Area:
Area below the x-axis contributes negatively to the integral. The integral gives NET signed area, not total area.

Properties Use:
∫[a to b] f + ∫[b to c] f = ∫[a to c] f. Properties simplify calculations and build understanding.

FTC Connection:
The Fundamental Theorem connects derivatives and integrals. If F''(x) = f(x), then ∫[a to b] f(x)dx = F(b) - F(a). This is profound and powerful.

ASSESSMENT INDICATORS:
- Approximates integrals using Riemann sums
- Evaluates definite integrals using FTC
- Applies properties of integrals
- Interprets integrals as accumulated quantities
- Understands signed area concept

VOCABULARY TO DEVELOP:
integral, integrate, Riemann sum, definite integral, indefinite integral, antiderivative, Fundamental Theorem of Calculus, area, accumulation

HISTORICAL CONTEXT:
Newton and Leibniz discovered that integration and differentiation are inverse operations. This insight - the Fundamental Theorem - unified calculus.',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Introduction to Integration' AND grade_level = 13)
ON CONFLICT DO NOTHING;

-- Antiderivatives (Calculus)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Antiderivatives' AND grade_level = 13),
  'Antiderivatives Teaching Guide',
  'Comprehensive pedagogical approach for teaching antiderivatives in Calculus',
  'ANTIDERIVATIVES - CALCULUS UNIT GUIDE

UNIT OVERVIEW:
This unit develops techniques for finding antiderivatives (indefinite integrals). An antiderivative of f is a function F such that F'' = f. Finding antiderivatives is essential for evaluating definite integrals using the Fundamental Theorem.

LEARNING PROGRESSION:
1. Understanding antiderivatives and the constant C
2. Power rule for integration
3. Antiderivatives of exponential functions
4. Antiderivatives of trigonometric functions
5. Basic substitution (u-substitution)
6. Initial value problems

REVERSE DIFFERENTIATION:
Finding antiderivatives reverses differentiation. If d/dx[x^3] = 3x^2, then ∫3x^2 dx = x^3 + C. Knowledge of derivatives is essential.

COMMON MISCONCEPTIONS:
- Forgetting the constant of integration +C
- Misapplying the power rule (not adding 1 to exponent first)
- Confusing ∫1/x dx = ln|x| + C with power rule
- Errors in u-substitution (forgetting to substitute dx)
- Not checking answers by differentiating

INSTRUCTIONAL STRATEGIES:

Connection to Derivatives:
Every antiderivative problem is a derivative problem in reverse. Ask: "What function has this as its derivative?"

The +C Requirement:
If F''(x) = f(x), then (F(x) + 3)'' = f(x) too. Any constant works. The family of antiderivatives differs by constants, hence +C.

Power Rule Inverse:
∫x^n dx = x^(n+1)/(n+1) + C (except n = -1). The "+1, divide" pattern reverses the "-1, multiply" of differentiation.

Special Cases:
∫1/x dx = ln|x| + C (not the power rule!)
∫e^x dx = e^x + C (exponential is its own antiderivative)

Check by Differentiating:
Always verify by taking the derivative of your answer. This catches errors and builds understanding.

U-Substitution:
When the integrand contains a function and its derivative, use substitution. "Let u = [inside function], then du = [its derivative]dx."

ASSESSMENT INDICATORS:
- Finds antiderivatives of polynomials, exponentials, and trig functions
- Always includes +C for indefinite integrals
- Applies u-substitution correctly
- Solves initial value problems
- Verifies answers by differentiation

VOCABULARY TO DEVELOP:
antiderivative, indefinite integral, constant of integration, u-substitution, initial value problem, general solution, particular solution

PRACTICE EMPHASIS:
Like derivatives, antiderivatives require extensive practice. Pattern recognition develops through many examples.',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Antiderivatives' AND grade_level = 13)
ON CONFLICT DO NOTHING;

-- Applications of Integration (Calculus)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Applications of Integration' AND grade_level = 13),
  'Applications of Integration Teaching Guide',
  'Comprehensive pedagogical approach for integration applications in Calculus',
  'APPLICATIONS OF INTEGRATION - CALCULUS UNIT GUIDE

UNIT OVERVIEW:
This unit applies integration to solve problems involving area between curves, average values, and accumulation in real-world contexts. Students see how integration answers questions about total quantities from rate information.

LEARNING PROGRESSION:
1. Area between curves
2. Average value of a function
3. Position from velocity
4. Interpreting integrals in context
5. Differential equations (introduction)
6. Applications in physics and economics

CONCEPTUAL APPLICATION:
Integration answers: "If I know the rate, what''s the total?" Velocity gives position, rate of change gives accumulated change, marginal cost gives total cost.

COMMON MISCONCEPTIONS:
- Setting up area integrals with wrong bounds or wrong order
- Forgetting absolute value for total distance vs. displacement
- Not identifying which function is "top" and which is "bottom"
- Confusing rate and amount in word problems
- Errors in reading problems to set up integrals

INSTRUCTIONAL STRATEGIES:

Area Between Curves:
∫[a to b] (top - bottom) dx gives area between curves. Identify intersection points (bounds) and which curve is higher.

Vertical vs. Horizontal:
Some regions are easier to compute integrating with respect to y. Consider both approaches.

Average Value:
f_avg = (1/(b-a)) ∫[a to b] f(x)dx. The average value is the height of a rectangle with the same area.

Motion Applications:
∫v(t)dt gives displacement. ∫|v(t)|dt gives total distance. The difference matters when velocity changes sign.

Real-World Problems:
Economics: ∫MC(x)dx gives total cost. Physics: ∫F(x)dx gives work. Biology: ∫r(t)dt gives total growth.

Differential Equations:
Simple DEs like dy/dx = f(x) are solved by antidifferentiation. More complex DEs preview future courses.

ASSESSMENT INDICATORS:
- Sets up and evaluates area integrals
- Computes average values
- Solves motion problems with integrals
- Interprets integrals in applied contexts
- Connects rate to accumulated quantity

VOCABULARY TO DEVELOP:
area between curves, average value, displacement, distance, differential equation, initial condition, accumulated change

REAL-WORLD CONNECTIONS:
Integration has applications in every quantitative field: physics (work, center of mass), engineering (design optimization), economics (consumer/producer surplus), biology (population growth).',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Applications of Integration' AND grade_level = 13)
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
