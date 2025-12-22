-- Grade 6 Math Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 6 Math topics
-- ============================================================================

-- ============================================================================
-- RATIOS AND RATES (12 topics)
-- ============================================================================

-- Understanding Ratios
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Ratios' AND grade_level_min = 6),
  'Understanding Ratios Topic Guide', 'Teaching ratio concepts and notation',
  'UNDERSTANDING RATIOS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of multiplication and division
- Ability to compare quantities
- Familiarity with fractions
- Basic understanding of relationships between numbers

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define ratio as a comparison of two quantities
2. Write ratios in three forms: a to b, a:b, and a/b
3. Identify and describe part-to-part and part-to-whole ratios
4. Apply ratio reasoning to real-world contexts

KEY CONCEPTS:
- Ratios compare two or more quantities
- Three notation forms all represent the same relationship
- Part-to-part ratios compare parts within a whole
- Part-to-whole ratios compare a part to the total
- Order matters in ratios (2:3 is different from 3:2)

COMMON MISCONCEPTIONS:
- Confusing part-to-part with part-to-whole ratios
- Thinking ratios are the same as fractions
- Reversing the order of quantities in a ratio
- Not maintaining consistent units when writing ratios

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a recipe that makes 12 cookies with 2 cups flour and 1 cup sugar. "How can we describe the relationship between flour and sugar?"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce ratio notation using visual models (counters, tape diagrams).
   Model writing the same ratio in three forms: 2 to 1, 2:1, 2/1
   Distinguish between part-to-part (flour to sugar) and part-to-whole (flour to total ingredients).

3. GUIDED PRACTICE (12 minutes):
   Students identify ratios in real scenarios: class boys to girls, colors in a pattern
   Practice writing ratios in all three forms
   Identify whether ratios are part-to-part or part-to-whole.

4. INDEPENDENT PRACTICE (10 minutes):
   Write ratios from given scenarios
   Convert between different ratio notations
   Create scenarios that match given ratios.

DIFFERENTIATION:
For Struggling Learners:
- Use physical manipulatives to create visual ratios
- Focus on one notation form at a time
- Provide sentence frames: "The ratio of ___ to ___ is ___"
- Start with simple whole number ratios

For Advanced Learners:
- Explore ratios with more than two quantities
- Find ratios in complex real-world contexts
- Investigate when ratios can be written as unit rates
- Create ratio problems for peers to solve

ASSESSMENT INDICATORS:
- Correctly identifies quantities being compared
- Writes ratios in all three notation forms accurately
- Distinguishes between part-to-part and part-to-whole
- Explains ratio relationships in context', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Ratios' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Equivalent Ratios
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equivalent Ratios' AND grade_level_min = 6),
  'Equivalent Ratios Topic Guide', 'Teaching how to generate equivalent ratios',
  'EQUIVALENT RATIOS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of ratio notation
- Multiplication and division fluency
- Understanding of equivalent fractions
- Ability to identify patterns

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize when two ratios are equivalent
2. Generate equivalent ratios by multiplying or dividing
3. Use equivalent ratios to solve problems
4. Simplify ratios to lowest terms

KEY CONCEPTS:
- Equivalent ratios represent the same relationship
- Multiply or divide both terms by the same number
- Connection to equivalent fractions
- Simplifying ratios by dividing by GCF
- Visual models show equivalent ratios

COMMON MISCONCEPTIONS:
- Adding the same amount to both terms (not multiplicative)
- Multiplying only one term of the ratio
- Thinking all ratios with the same sum are equivalent
- Confusing equivalent with equal

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "If a paint mixture uses 2 parts blue to 3 parts yellow, how much of each color for a bigger batch?"

2. DIRECT INSTRUCTION (10 minutes):
   Model creating equivalent ratios using tables and diagrams
   Show: 2:3 = 4:6 = 6:9 = 8:12
   Connect to equivalent fractions: 2/3 = 4/6 = 6/9
   Demonstrate simplifying ratios by dividing both terms by GCF.

3. GUIDED PRACTICE (12 minutes):
   Create equivalent ratios by multiplying/dividing
   Complete ratio tables
   Determine if given ratios are equivalent
   Simplify ratios to lowest terms.

4. INDEPENDENT PRACTICE (10 minutes):
   Generate three equivalent ratios for given ratios
   Find missing values in equivalent ratio problems
   Simplify complex ratios.

DIFFERENTIATION:
For Struggling Learners:
- Use visual models (double number lines, tape diagrams)
- Provide multiplication/division charts
- Start with simple ratios (1:2, 1:3)
- Use ratio tables with guided steps

For Advanced Learners:
- Work with ratios involving three quantities
- Scale ratios up and down in same problem
- Find all possible whole number ratios within a range
- Solve multi-step problems involving equivalent ratios

ASSESSMENT INDICATORS:
- Generates equivalent ratios correctly
- Recognizes equivalent ratios in different forms
- Simplifies ratios to lowest terms
- Explains why ratios are or are not equivalent', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equivalent Ratios' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Ratio Tables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ratio Tables' AND grade_level_min = 6),
  'Ratio Tables Topic Guide', 'Teaching use of tables for ratio problems',
  'RATIO TABLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of equivalent ratios
- Ability to identify patterns in tables
- Multiplication fluency
- Basic understanding of variables

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Create and complete ratio tables
2. Use ratio tables to find equivalent ratios
3. Identify patterns and relationships in ratio tables
4. Solve problems using ratio tables

KEY CONCEPTS:
- Ratio tables organize equivalent ratios systematically
- Columns represent quantities being compared
- Rows show equivalent ratios
- Can scale up or down to find unknown values
- Multiplicative relationship between rows

COMMON MISCONCEPTIONS:
- Adding instead of multiplying to find next row
- Mixing up which columns represent which quantities
- Not maintaining the same ratio relationship across rows
- Thinking tables only work with unit ratios

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "A lemonade recipe uses 3 lemons for 2 cups of water. How can we organize different batch sizes?"

2. DIRECT INSTRUCTION (10 minutes):
   Model creating a ratio table with headers
   Show how each row represents an equivalent ratio
   Demonstrate finding missing values by identifying the multiplier
   Use arrows to show multiplicative relationships.

3. GUIDED PRACTICE (12 minutes):
   Complete partially filled ratio tables
   Create ratio tables from word problems
   Find specific values using ratio tables
   Identify the pattern in each table.

4. INDEPENDENT PRACTICE (10 minutes):
   Build ratio tables from scratch
   Use tables to answer specific questions
   Solve multi-step problems with ratio tables.

DIFFERENTIATION:
For Struggling Learners:
- Provide pre-formatted table templates
- Start with tables that show ×2 or ×3 patterns
- Use color coding for different quantities
- Include visual representations alongside tables

For Advanced Learners:
- Work with non-integer multipliers
- Create tables with three or more quantities
- Find patterns and write rules for tables
- Solve problems requiring multiple table entries

ASSESSMENT INDICATORS:
- Correctly labels and fills ratio tables
- Identifies the multiplier between rows
- Uses tables efficiently to solve problems
- Recognizes when a ratio table is appropriate', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ratio Tables' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Tape Diagrams for Ratios
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Tape Diagrams for Ratios' AND grade_level_min = 6),
  'Tape Diagrams for Ratios Topic Guide', 'Teaching visual ratio problem solving',
  'TAPE DIAGRAMS FOR RATIOS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of ratio concepts
- Ability to draw simple diagrams
- Understanding of division
- Experience with bar models

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Draw tape diagrams to represent ratio situations
2. Use tape diagrams to solve ratio problems
3. Determine the value of one unit in a ratio
4. Apply tape diagrams to part-to-part and part-to-whole problems

KEY CONCEPTS:
- Tape diagrams visualize ratio relationships
- Each unit represents an equal amount
- Total units can be found by adding ratio parts
- Find one unit by dividing total by number of units
- Scale up to find actual quantities

COMMON MISCONCEPTIONS:
- Making units different sizes
- Forgetting to label diagrams clearly
- Confusing number of units with actual values
- Not using the ratio to determine unit sizes

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "45 students split into groups with ratio 2:3 of sixth graders to seventh graders. How many in each group?"

2. DIRECT INSTRUCTION (10 minutes):
   Model drawing tape diagrams with equal-sized units
   Show how ratio 2:3 means 2 units and 3 units
   Demonstrate finding one unit: 45 ÷ 5 = 9
   Calculate each quantity: 2×9 = 18, 3×9 = 27.

3. GUIDED PRACTICE (12 minutes):
   Draw tape diagrams for given ratios
   Solve problems using the diagrams
   Check answers by adding parts to verify total
   Practice with both part-to-part and part-to-whole.

4. INDEPENDENT PRACTICE (10 minutes):
   Create and solve tape diagram problems
   Choose between tape diagrams and other strategies
   Write word problems that match diagrams.

DIFFERENTIATION:
For Struggling Learners:
- Provide pre-drawn unit boxes to fill
- Use grid paper for accurate unit sizes
- Start with simple ratios (1:2, 1:3)
- Work with smaller total numbers

For Advanced Learners:
- Solve problems with three-part ratios
- Work backwards from quantities to find ratios
- Create complex word problems requiring tape diagrams
- Compare tape diagram method to algebraic methods

ASSESSMENT INDICATORS:
- Draws accurate tape diagrams with equal units
- Correctly identifies total number of units
- Calculates value of one unit accurately
- Solves ratio problems using tape diagrams', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Tape Diagrams for Ratios' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Unit Rate
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Unit Rate' AND grade_level_min = 6),
  'Unit Rate Topic Guide', 'Teaching unit rate concepts and calculations',
  'UNIT RATE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of ratios
- Division fluency
- Ability to interpret fractions
- Understanding of "per" language

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define unit rate as a ratio with denominator of 1
2. Calculate unit rates from given ratios
3. Use unit rates to solve problems
4. Interpret unit rates in context

KEY CONCEPTS:
- Unit rate compares a quantity to 1 unit of another quantity
- Expressed with "per" language (miles per hour, cost per item)
- Found by dividing the numerator by the denominator
- Makes comparison easier between different rates
- Always has denominator of 1

COMMON MISCONCEPTIONS:
- Dividing in wrong order (denominator by numerator)
- Confusing unit rate with regular ratio
- Not including units in the rate
- Thinking all rates must be whole numbers

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "A car travels 120 miles in 2 hours. How fast is it going per hour?"

2. DIRECT INSTRUCTION (10 minutes):
   Define unit rate and show examples (mph, cost per item)
   Model finding unit rate: 120 miles ÷ 2 hours = 60 miles per hour
   Show with ratio table: reduce to denominator of 1
   Emphasize including units in the answer.

3. GUIDED PRACTICE (12 minutes):
   Calculate unit rates from various situations
   Write unit rates using proper notation
   Compare quantities using unit rates
   Interpret meaning of unit rates in context.

4. INDEPENDENT PRACTICE (10 minutes):
   Find unit rates from word problems
   Use unit rates to solve multi-step problems
   Determine which scenarios involve unit rates.

DIFFERENTIATION:
For Struggling Learners:
- Use ratio tables to scaffold finding unit rate
- Provide calculator for complex division
- Start with rates that divide evenly
- Use real objects to model rate situations

For Advanced Learners:
- Work with complex unit rates (fractions, decimals)
- Compare multiple rates to find best deal
- Calculate multiple related rates (mph and feet per second)
- Solve problems requiring unit rate conversions

ASSESSMENT INDICATORS:
- Accurately calculates unit rates
- Includes appropriate units in answers
- Interprets unit rate meaning correctly
- Applies unit rates to solve problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Unit Rate' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Unit Price
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Unit Price' AND grade_level_min = 6),
  'Unit Price Topic Guide', 'Teaching unit price comparison and calculation',
  'UNIT PRICE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of unit rate
- Division with decimals
- Money sense and decimal place value
- Ability to compare numbers

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate unit price (price per item or per unit)
2. Compare unit prices to find better deals
3. Use unit price to calculate total cost
4. Apply unit price reasoning to real shopping scenarios

KEY CONCEPTS:
- Unit price is cost per single unit or standard measure
- Found by dividing total price by quantity
- Enables fair comparison of different package sizes
- Expressed in cents or dollars per unit
- Smaller unit price means better value

COMMON MISCONCEPTIONS:
- Assuming larger packages are always cheaper per unit
- Forgetting to compare using same units
- Rounding too early in calculations
- Choosing lower total price instead of lower unit price

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show two cereal boxes: 12 oz for $3.60 vs 18 oz for $4.86. "Which is the better deal?"

2. DIRECT INSTRUCTION (10 minutes):
   Model calculating unit price for both options
   Box 1: $3.60 ÷ 12 = $0.30 per oz
   Box 2: $4.86 ÷ 18 = $0.27 per oz
   Demonstrate comparing to identify better value
   Discuss real-world application in grocery shopping.

3. GUIDED PRACTICE (12 minutes):
   Calculate unit prices for various products
   Compare products with different package sizes
   Determine best value among multiple options
   Solve problems finding total cost from unit price.

4. INDEPENDENT PRACTICE (10 minutes):
   Calculate and compare unit prices independently
   Make purchasing decisions based on unit price
   Create shopping scenarios for peers.

DIFFERENTIATION:
For Struggling Learners:
- Provide calculators for division
- Use whole number quantities initially
- Create comparison charts to organize work
- Practice with same units first

For Advanced Learners:
- Compare products with different units (oz vs lb)
- Factor in coupons and discounts
- Analyze when larger quantity isn''t worth it
- Calculate savings using unit price reasoning

ASSESSMENT INDICATORS:
- Accurately calculates unit price
- Compares unit prices to identify best value
- Explains reasoning for choice
- Applies unit price to real decisions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Unit Price' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Rate Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rate Problems' AND grade_level_min = 6),
  'Rate Problems Topic Guide', 'Teaching complex rate problem solving',
  'RATE PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of unit rate
- Multiplication and division fluency
- Ability to set up proportions
- Understanding of time, distance, and speed

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Solve problems involving distance, rate, and time
2. Apply rate reasoning to various contexts
3. Use rate to find unknown quantities
4. Interpret and create rate problem situations

KEY CONCEPTS:
- Rate describes how one quantity changes relative to another
- Distance = Rate × Time formula and variations
- Can solve for any variable given the other two
- Multiple strategies: tables, diagrams, equations
- Consistent units are essential

COMMON MISCONCEPTIONS:
- Mixing units (miles with minutes instead of hours)
- Confusing which quantity is the rate
- Applying wrong operation (multiply vs divide)
- Not checking if answer makes sense in context

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "A cyclist rides at 15 mph for 3 hours. How far does she travel?"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce d = r × t relationship
   Model solving: d = 15 mph × 3 hours = 45 miles
   Show inverse: r = d ÷ t and t = d ÷ r
   Demonstrate using ratio tables and equations
   Emphasize checking units throughout.

3. GUIDED PRACTICE (12 minutes):
   Solve problems finding distance, rate, or time
   Use multiple representations (table, equation, diagram)
   Practice converting units when necessary
   Verify solutions make sense.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve varied rate problems independently
   Create rate problems from real situations
   Choose appropriate strategy for each problem.

DIFFERENTIATION:
For Struggling Learners:
- Provide d = r × t formula triangle
- Use ratio tables to scaffold
- Start with whole number rates and times
- Include diagrams showing the situation

For Advanced Learners:
- Solve problems with fractional or decimal rates
- Work with unit conversions (mph to feet per second)
- Solve multi-leg journey problems
- Compare rates for different portions of a trip

ASSESSMENT INDICATORS:
- Correctly identifies rate, distance, and time in problems
- Selects and applies appropriate operation
- Includes proper units in answers
- Solutions are reasonable in context', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rate Problems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Graphing Ratios
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Ratios' AND grade_level_min = 6),
  'Graphing Ratios Topic Guide', 'Teaching visual representation of ratios',
  'GRAPHING RATIOS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Plotting points on coordinate plane
- Understanding of equivalent ratios
- Ability to create ratio tables
- Basic graphing skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Plot ratio relationships on coordinate plane
2. Recognize that equivalent ratios form a straight line
3. Use graphs to find equivalent ratios
4. Compare ratios using their graphs

KEY CONCEPTS:
- Each equivalent ratio is a point on the graph
- Points form a straight line through origin
- Steeper lines represent larger ratios
- Can read equivalent ratios from the line
- Connection to proportional relationships

COMMON MISCONCEPTIONS:
- Not plotting through the origin for ratio graphs
- Confusing x and y coordinates
- Thinking only plotted points are valid ratios
- Connecting points that aren''t equivalent ratios

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "The ratio of length to width is 3:2. How can we show all equivalent ratios visually?"

2. DIRECT INSTRUCTION (10 minutes):
   Create ratio table: (3,2), (6,4), (9,6), (12,8)
   Plot points on coordinate plane
   Draw line connecting points through origin
   Show how to read other equivalent ratios from line.

3. GUIDED PRACTICE (12 minutes):
   Create tables and graph ratio relationships
   Plot multiple ratios on same axes to compare
   Use graphs to find specific equivalent ratios
   Identify ratios from graphed lines.

4. INDEPENDENT PRACTICE (10 minutes):
   Graph given ratios independently
   Find equivalent ratios using graphs
   Compare different ratios by comparing their graphs.

DIFFERENTIATION:
For Struggling Learners:
- Provide pre-labeled coordinate plane
- Use different colors for different ratios
- Start with simple ratios (1:1, 1:2)
- Plot only first quadrant initially

For Advanced Learners:
- Graph multiple ratios on same axes
- Determine ratio from graphed line
- Explore what happens with non-proportional relationships
- Connect to slope concepts

ASSESSMENT INDICATORS:
- Accurately plots ratio points on coordinate plane
- Draws line through origin correctly
- Reads equivalent ratios from graph
- Uses graphs to compare different ratios', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Ratios' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Proportional Relationships Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Proportional Relationships Introduction' AND grade_level_min = 6),
  'Proportional Relationships Introduction Topic Guide', 'Teaching basic proportional relationship concepts',
  'PROPORTIONAL RELATIONSHIPS INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of equivalent ratios
- Experience graphing ratios
- Familiarity with rate concepts
- Basic understanding of relationships between quantities

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Recognize proportional relationships in tables and graphs
2. Identify characteristics of proportional relationships
3. Distinguish proportional from non-proportional relationships
4. Understand that proportional relationships pass through origin

KEY CONCEPTS:
- Proportional relationships have constant ratio
- Graph is a straight line through origin
- Table shows equivalent ratios
- Multiplicative relationship between quantities
- Can be described with equation y = kx

COMMON MISCONCEPTIONS:
- Thinking all linear relationships are proportional
- Not recognizing (0,0) as required point
- Confusing additive and multiplicative relationships
- Assuming proportional means "increasing"

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You earn $12 per hour. Is the relationship between hours and earnings proportional? Why?"

2. DIRECT INSTRUCTION (10 minutes):
   Show table: 1 hr/$12, 2 hr/$24, 3 hr/$36
   Plot graph - line through origin
   Identify constant ratio: y/x = 12
   Contrast with non-proportional: "Earn $12/hr plus $5 bonus"
   Show this doesn''t pass through origin.

3. GUIDED PRACTICE (12 minutes):
   Analyze tables to identify proportional relationships
   Determine if graphs represent proportional relationships
   Find the constant ratio in proportional relationships
   Explain why relationships are or aren''t proportional.

4. INDEPENDENT PRACTICE (10 minutes):
   Identify proportional relationships from various representations
   Create examples of proportional and non-proportional relationships
   Justify reasoning for classifications.

DIFFERENTIATION:
For Struggling Learners:
- Use checklist: constant ratio? Through origin?
- Provide both examples and non-examples
- Focus on one representation at a time
- Use concrete contexts (recipes, speed)

For Advanced Learners:
- Find constant of proportionality from tables/graphs
- Write equations for proportional relationships
- Explore real-world proportional and non-proportional situations
- Investigate why (0,0) is necessary

ASSESSMENT INDICATORS:
- Correctly identifies proportional relationships
- Explains characteristics of proportionality
- Distinguishes proportional from non-proportional
- Verifies using multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Proportional Relationships Introduction' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Solving Proportions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Proportions' AND grade_level_min = 6),
  'Solving Proportions Topic Guide', 'Teaching cross multiplication and proportion solving',
  'SOLVING PROPORTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of equivalent ratios
- Multiplication and division fluency
- Solving one-step equations
- Ability to set up proportions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Set up proportions from word problems
2. Solve proportions using cross multiplication
3. Verify solutions to proportions
4. Apply proportion solving to real situations

KEY CONCEPTS:
- Proportion is an equation stating two ratios are equal
- Cross multiplication: if a/b = c/d, then ad = bc
- Can also solve by finding scale factor
- Solution should make both ratios equivalent
- Multiple strategies lead to same answer

COMMON MISCONCEPTIONS:
- Setting up proportion with mismatched units
- Cross multiplying incorrectly
- Forgetting to divide after cross multiplying
- Not checking if answer makes sense

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "If 3 apples cost $2, how much do 12 apples cost?"

2. DIRECT INSTRUCTION (10 minutes):
   Set up proportion: 3/2 = 12/x
   Model cross multiplication: 3x = 24
   Solve: x = 8
   Verify: 3/2 = 12/8 → 3/2 = 3/2 ✓
   Also show scale factor method: 3 × 4 = 12, so 2 × 4 = 8.

3. GUIDED PRACTICE (12 minutes):
   Set up proportions from word problems
   Solve using cross multiplication
   Verify solutions
   Compare cross multiplication to scale factor method.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve proportions independently
   Create and solve proportion word problems
   Choose efficient solution method.

DIFFERENTIATION:
For Struggling Learners:
- Provide proportion setup templates
- Use visual models alongside algebra
- Practice cross multiplication steps separately
- Start with simple whole number proportions

For Advanced Learners:
- Solve proportions with variables on both sides
- Work with decimal and fraction proportions
- Compare efficiency of different methods
- Solve multi-step problems requiring proportions

ASSESSMENT INDICATORS:
- Sets up proportions correctly from contexts
- Applies cross multiplication accurately
- Solves for unknown variable correctly
- Verifies solutions make sense', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Proportions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Scale Drawings
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scale Drawings' AND grade_level_min = 6),
  'Scale Drawings Topic Guide', 'Teaching scale factor and scale drawings',
  'SCALE DRAWINGS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of ratios and proportions
- Measurement skills
- Ability to use rulers accurately
- Understanding of similarity

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Interpret and use scale in drawings
2. Calculate actual dimensions from scale drawings
3. Create scale drawings of real objects
4. Solve problems involving scale

KEY CONCEPTS:
- Scale is a ratio of drawing length to actual length
- All dimensions scale by same factor
- Common scales: 1 in = 5 ft, 1:100
- Can use proportions to find actual or drawing measurements
- Scale drawings maintain shape (similarity)

COMMON MISCONCEPTIONS:
- Adding to find actual length instead of multiplying
- Using different scales for different dimensions
- Confusing which measurement is drawing vs actual
- Not converting units properly

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a simple map with scale 1 inch = 10 miles. "How far is it really between these cities?"

2. DIRECT INSTRUCTION (10 minutes):
   Explain scale notation and meaning
   Model finding actual distance: 3 in × 10 mi/in = 30 mi
   Demonstrate reverse: actual to drawing
   Show scale factor: 1 in to 10 mi is 1:633,600 (1 mile = 63,360 inches)
   Create simple scale drawing together.

3. GUIDED PRACTICE (12 minutes):
   Calculate actual dimensions from scaled drawings
   Calculate drawing dimensions from actual measurements
   Interpret various scale notations
   Identify appropriate scales for different purposes.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve scale drawing problems
   Create scale drawing of classroom object
   Calculate multiple dimensions using same scale.

DIFFERENTIATION:
For Struggling Learners:
- Provide conversion charts for scales
- Use simple scales (1:10, 1:100)
- Give partially completed scale drawings
- Focus on one direction (drawing to actual) first

For Advanced Learners:
- Work with complex scales requiring unit conversion
- Create scale drawings with multiple views
- Calculate areas using scale
- Compare different possible scales for same object

ASSESSMENT INDICATORS:
- Correctly interprets scale notation
- Calculates dimensions accurately using scale
- Creates scale drawings with consistent scaling
- Chooses appropriate scales for situations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scale Drawings' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Ratio and Rate Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ratio and Rate Word Problems' AND grade_level_min = 6),
  'Ratio and Rate Word Problems Topic Guide', 'Teaching complex ratio problem solving',
  'RATIO AND RATE WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- All ratio and rate concepts from unit
- Strong problem-solving skills
- Ability to choose appropriate strategies
- Experience with multi-step problems

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze complex ratio and rate problems
2. Select appropriate strategies for different problem types
3. Solve multi-step ratio and rate problems
4. Justify solutions and verify reasonableness

KEY CONCEPTS:
- Read carefully to identify the ratio relationship
- Multiple strategies may work for same problem
- Breaking problems into steps
- Using tables, diagrams, proportions, or equations
- Always check if answer makes sense

COMMON MISCONCEPTIONS:
- Not identifying all given information
- Choosing inefficient strategies
- Making computational errors under complexity
- Not re-reading to ensure answer matches question

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "A 5-lb bag of trail mix costs $12. How much would 3.5 lbs cost? What about 8.2 lbs?"

2. DIRECT INSTRUCTION (10 minutes):
   Model problem-solving process:
   - Read and identify known/unknown
   - Choose strategy (unit rate here)
   - Calculate: $12 ÷ 5 = $2.40 per lb
   - Apply: 3.5 × $2.40 = $8.40; 8.2 × $2.40 = $19.68
   - Verify reasonableness
   Show alternative approaches (proportion, ratio table).

3. GUIDED PRACTICE (12 minutes):
   Solve varied complex problems together
   Compare different solution strategies
   Identify which strategies work best for which types
   Practice justifying solutions.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve challenging ratio and rate problems
   Explain strategy choices
   Create original problems for peers.

DIFFERENTIATION:
For Struggling Learners:
- Provide problem-solving graphic organizers
- Break complex problems into explicit steps
- Offer choice of strategies
- Use simpler numbers in complex contexts

For Advanced Learners:
- Solve problems with extraneous information
- Create problems requiring multiple steps
- Explore optimization problems (best deal, fastest route)
- Investigate problems with multiple valid approaches

ASSESSMENT INDICATORS:
- Correctly identifies ratio/rate relationships in contexts
- Selects appropriate and efficient strategies
- Solves multi-step problems accurately
- Verifies solutions are reasonable', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ratio and Rate Word Problems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PERCENT APPLICATIONS (13 topics)
-- ============================================================================

-- Percent Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Percent Review' AND grade_level_min = 6),
  'Percent Review Topic Guide', 'Reviewing percent concepts and conversions',
  'PERCENT REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of fractions and decimals
- Place value understanding
- Multiplication and division fluency
- Visual fraction models

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand percent as "per hundred"
2. Convert between fractions, decimals, and percents
3. Model percents using visual representations
4. Recognize common percent benchmarks

KEY CONCEPTS:
- Percent means "out of 100"
- Can represent any ratio as a percent
- 100% = 1 whole
- Common benchmarks: 25% = 1/4, 50% = 1/2, 75% = 3/4
- Percent, decimal, and fraction are different names for same value

COMMON MISCONCEPTIONS:
- Thinking percent is always less than 100
- Confusing decimal placement in conversions
- Believing percent is different from fractions/decimals
- Not understanding "of" means multiply

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show 100-square grid with 37 squares shaded. "What fraction? Decimal? Percent?"

2. DIRECT INSTRUCTION (10 minutes):
   Review percent meaning using 100-grids
   Model conversions:
   - Fraction to percent: multiply by 100
   - Decimal to percent: move decimal 2 places right
   - Percent to fraction: write over 100, simplify
   Demonstrate with common benchmarks.

3. GUIDED PRACTICE (12 minutes):
   Convert between forms
   Identify equivalent representations
   Shade grids to show percents
   Order fractions, decimals, and percents.

4. INDEPENDENT PRACTICE (10 minutes):
   Practice conversions
   Match equivalent representations
   Solve simple "find the percent" problems.

DIFFERENTIATION:
For Struggling Learners:
- Provide 100-grids for visual support
- Create conversion anchor charts
- Focus on benchmark percents first
- Use calculators to verify conversions

For Advanced Learners:
- Work with percents greater than 100
- Convert repeating decimals to percents
- Explore percents in real data
- Investigate percent relationships

ASSESSMENT INDICATORS:
- Accurately converts between forms
- Explains percent as "per hundred"
- Identifies equivalent representations
- Uses benchmark percents fluently', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Percent Review' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Percent of a Number
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Percent of a Number' AND grade_level_min = 6),
  'Percent of a Number Topic Guide', 'Teaching how to find percent of quantities',
  'PERCENT OF A NUMBER - TOPIC TEACHING GUIDE

PREREQUISITES:
- Percent conversions
- Decimal multiplication
- Understanding of "of" as multiplication
- Fraction multiplication

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find percent of a number using multiplication
2. Use multiple strategies to calculate percents
3. Estimate percents mentally using benchmarks
4. Apply percent calculations to real contexts

KEY CONCEPTS:
- "Of" means multiply
- Convert percent to decimal, then multiply
- Can also use fraction form
- Benchmark percents help estimate
- Answer should make sense (less than, greater than whole)

COMMON MISCONCEPTIONS:
- Forgetting to convert percent to decimal/fraction
- Multiplying by the percent value directly
- Not knowing when answer should be less than original
- Confusing "percent of" with "percent more than"

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "30% of students in our school play sports. If there are 600 students, how many play sports?"

2. DIRECT INSTRUCTION (10 minutes):
   Model: 30% of 600
   Method 1: 0.30 × 600 = 180
   Method 2: 30/100 × 600 = 180
   Method 3: 10% of 600 = 60, so 30% = 3 × 60 = 180
   Discuss when each method is most efficient.

3. GUIDED PRACTICE (12 minutes):
   Calculate percents of various numbers
   Use different methods for different problems
   Estimate first, then calculate exactly
   Apply to word problems.

4. INDEPENDENT PRACTICE (10 minutes):
   Find percents of numbers independently
   Choose appropriate calculation method
   Solve real-world percent problems.

DIFFERENTIATION:
For Struggling Learners:
- Provide percent-to-decimal conversion charts
- Use 10% and 50% as anchors
- Allow calculators for complex multiplication
- Start with benchmark percents of simple numbers

For Advanced Learners:
- Find percents of large numbers mentally
- Calculate with percent greater than 100
- Work backwards (given result, find original)
- Solve multi-step problems involving percents

ASSESSMENT INDICATORS:
- Correctly converts percent before multiplying
- Calculates percent of numbers accurately
- Estimates to verify reasonableness
- Chooses efficient calculation methods', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Percent of a Number' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Finding the Whole
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding the Whole' AND grade_level_min = 6),
  'Finding the Whole Topic Guide', 'Teaching how to find whole when given part and percent',
  'FINDING THE WHOLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Finding percent of a number
- Solving equations with division
- Understanding inverse operations
- Proportional reasoning

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find the whole when given a part and percent
2. Set up and solve equations to find the whole
3. Use proportional reasoning to find the whole
4. Apply to real-world situations

KEY CONCEPTS:
- Part = Percent × Whole
- To find whole: divide part by percent (as decimal)
- Can also use proportion: part/whole = percent/100
- Answer should be greater than the part (if percent < 100%)
- Double bar models help visualize

COMMON MISCONCEPTIONS:
- Multiplying instead of dividing
- Using percent as whole number instead of decimal
- Not recognizing when to find the whole
- Expecting whole to be less than part

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You scored 18 points, which is 60% of the total. What''s the total possible score?"

2. DIRECT INSTRUCTION (10 minutes):
   Model problem: 18 is 60% of what number?
   Method 1: 18 = 0.60 × w → w = 18 ÷ 0.60 = 30
   Method 2: 18/w = 60/100 → 60w = 1800 → w = 30
   Use double bar model to show relationship
   Verify: 60% of 30 = 18 ✓.

3. GUIDED PRACTICE (12 minutes):
   Solve "find the whole" problems
   Use both equation and proportion methods
   Draw models to represent situations
   Verify solutions make sense.

4. INDEPENDENT PRACTICE (10 minutes):
   Find the whole in various contexts
   Choose solution method
   Create and solve original problems.

DIFFERENTIATION:
For Struggling Learners:
- Provide equation templates
- Use bar models for all problems
- Practice with friendly percents (50%, 25%)
- Allow calculators for division

For Advanced Learners:
- Work with complex percents (like 37.5%)
- Solve multi-step problems
- Find whole when percent is greater than 100%
- Compare efficiency of different methods

ASSESSMENT INDICATORS:
- Correctly identifies when to find the whole
- Sets up equations or proportions accurately
- Divides by percent correctly
- Verifies answers are reasonable', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding the Whole' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Finding the Percent
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding the Percent' AND grade_level_min = 6),
  'Finding the Percent Topic Guide', 'Teaching how to find percent when given part and whole',
  'FINDING THE PERCENT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of percent concept
- Division fluency
- Converting decimals to percents
- Fraction to percent conversion

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Find what percent one number is of another
2. Set up and solve for the percent
3. Express the relationship as a percent
4. Apply percent finding to real situations

KEY CONCEPTS:
- Percent = (Part ÷ Whole) × 100
- Creates a fraction first, then converts to percent
- Can also use proportion: part/whole = p/100
- Part must be compared to the correct whole
- Percent can be greater than 100%

COMMON MISCONCEPTIONS:
- Dividing whole by part instead of part by whole
- Forgetting to multiply by 100 after dividing
- Comparing to wrong whole
- Not recognizing this is inverse of "percent of"

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You answered 17 out of 20 questions correctly. What''s your percent score?"

2. DIRECT INSTRUCTION (10 minutes):
   Model: What percent is 17 of 20?
   Method 1: (17 ÷ 20) × 100 = 0.85 × 100 = 85%
   Method 2: 17/20 = p/100 → 20p = 1700 → p = 85
   Show on double bar model
   Verify: 85% of 20 = 17 ✓.

3. GUIDED PRACTICE (12 minutes):
   Find percents from various part-whole pairs
   Use both methods
   Determine correct whole to use
   Apply to test scores, discounts, comparisons.

4. INDEPENDENT PRACTICE (10 minutes):
   Calculate percents independently
   Interpret meaning of percents found
   Solve word problems requiring finding percent.

DIFFERENTIATION:
For Struggling Learners:
- Provide formula: (part ÷ whole) × 100
- Use visual models to identify part and whole
- Start with fractions that convert easily (1/2, 1/4)
- Allow calculators for division

For Advanced Learners:
- Find percents resulting in repeating decimals
- Work with percents greater than 100%
- Calculate percent change (preview)
- Solve complex comparison problems

ASSESSMENT INDICATORS:
- Correctly identifies part and whole
- Divides in correct order
- Converts decimal to percent accurately
- Interprets percent in context', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding the Percent' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Percent Equation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Percent Equation' AND grade_level_min = 6),
  'Percent Equation Topic Guide', 'Teaching the general percent equation',
  'PERCENT EQUATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- All three types of percent problems
- Solving equations with one variable
- Converting between percent and decimal
- Identifying unknown in problem

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use the equation part = percent × whole
2. Identify which value is unknown in problems
3. Solve for any of the three variables
4. Choose appropriate strategy for each problem type

KEY CONCEPTS:
- General form: part = percent × whole (p = r × w)
- Three problem types based on unknown: part, percent, or whole
- Percent must be in decimal form in equation
- Can rearrange to solve for any variable
- Consistent approach works for all percent problems

COMMON MISCONCEPTIONS:
- Not converting percent to decimal in equation
- Confusing which variable is which
- Using wrong operation to isolate variable
- Not labeling answers with units

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "One equation can solve all percent problems! Let''s see how."

2. DIRECT INSTRUCTION (10 minutes):
   Present part = percent × whole
   Show all three problem types:
   - Find part: p = 0.25 × 60 → p = 15
   - Find whole: 15 = 0.25 × w → w = 60
   - Find percent: 15 = r × 60 → r = 0.25 = 25%
   Model identifying unknown and solving.

3. GUIDED PRACTICE (12 minutes):
   Identify which variable is unknown
   Set up equations from word problems
   Solve for each type of unknown
   Verify solutions make sense.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve mixed percent problems using equation
   Create word problems for each problem type
   Explain which variable is unknown and why.

DIFFERENTIATION:
For Struggling Learners:
- Provide labeled equation template
- Use color coding for part, percent, whole
- Practice one problem type at a time first
- Create reference card with rearranged forms

For Advanced Learners:
- Solve problems with multiple steps
- Work with complex percents and decimals
- Compare equation method to other strategies
- Apply to real data and situations

ASSESSMENT INDICATORS:
- Correctly identifies unknown variable
- Sets up equation accurately
- Converts percent to decimal before calculating
- Solves for variable correctly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Percent Equation' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Percent Increase
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Percent Increase' AND grade_level_min = 6),
  'Percent Increase Topic Guide', 'Teaching percent increase calculations',
  'PERCENT INCREASE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Finding percent of a number
- Understanding of increase concept
- Subtraction fluency
- Percent equation understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate the amount of increase
2. Find percent increase from original value
3. Find new value after percent increase
4. Apply percent increase to real situations

KEY CONCEPTS:
- Increase is the difference between new and original
- Percent increase = (increase ÷ original) × 100
- New value = original + increase
- Can also calculate: new = original × (1 + percent increase)
- Percent increase compares to original value

COMMON MISCONCEPTIONS:
- Dividing by new value instead of original
- Thinking percent increase is same as percent of increase
- Forgetting to add increase to original for new value
- Comparing to wrong base value

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "A shirt cost $20 last year, now it costs $25. What''s the percent increase?"

2. DIRECT INSTRUCTION (10 minutes):
   Model finding percent increase:
   - Increase: $25 - $20 = $5
   - Percent: ($5 ÷ $20) × 100 = 25%
   Show finding new value from percent increase:
   - 20% increase of $40: $40 + (0.20 × $40) = $48
   - Or: $40 × 1.20 = $48.

3. GUIDED PRACTICE (12 minutes):
   Calculate percent increases from value changes
   Find new values after percent increases
   Solve word problems involving growth
   Verify solutions are reasonable.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve percent increase problems
   Apply to various contexts (prices, population, scores)
   Create and solve original problems.

DIFFERENTIATION:
For Struggling Learners:
- Provide step-by-step procedure chart
- Use visual models showing before/after
- Start with simple percents (10%, 25%, 50%)
- Practice finding increase first, then percent

For Advanced Learners:
- Find original value given new value and percent increase
- Calculate compound increases
- Compare percent increase to percent of new value
- Analyze real population or economic data

ASSESSMENT INDICATORS:
- Correctly calculates amount of increase
- Divides by original value for percent
- Finds new values accurately
- Applies to contextual problems appropriately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Percent Increase' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Percent Decrease
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Percent Decrease' AND grade_level_min = 6),
  'Percent Decrease Topic Guide', 'Teaching percent decrease calculations',
  'PERCENT DECREASE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding percent increase
- Subtraction fluency
- Percent equation mastery
- Finding percent of a number

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate the amount of decrease
2. Find percent decrease from original value
3. Find new value after percent decrease
4. Apply percent decrease to real situations like discounts

KEY CONCEPTS:
- Decrease is difference between original and new
- Percent decrease = (decrease ÷ original) × 100
- New value = original - decrease
- Can also calculate: new = original × (1 - percent decrease)
- Always compare to original value

COMMON MISCONCEPTIONS:
- Dividing by new value instead of original
- Confusing decrease with discount vs final price
- Adding decrease instead of subtracting
- Using new value as base for percent

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "A bike was $150, now on sale for $120. What''s the percent decrease?"

2. DIRECT INSTRUCTION (10 minutes):
   Model finding percent decrease:
   - Decrease: $150 - $120 = $30
   - Percent: ($30 ÷ $150) × 100 = 20%
   Show finding new value from percent decrease:
   - 30% decrease of $80: $80 - (0.30 × $80) = $56
   - Or: $80 × 0.70 = $56.

3. GUIDED PRACTICE (12 minutes):
   Calculate percent decreases from value changes
   Find new values after percent decreases
   Solve discount and reduction problems
   Compare to percent increase scenarios.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve percent decrease problems independently
   Apply to sales, depreciation, weight loss
   Distinguish between increase and decrease problems.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual models showing original minus decrease
- Use color coding: red for decrease, green for increase
- Practice with simple percents first
- Create anchor chart with steps

For Advanced Learners:
- Find original value given new value and percent decrease
- Calculate successive decreases
- Compare percent decrease to actual decrease
- Investigate real-world depreciation

ASSESSMENT INDICATORS:
- Correctly calculates amount of decrease
- Divides by original for percent calculation
- Finds new values accurately after decrease
- Applies correctly to discount situations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Percent Decrease' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Discount and Sale Price
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Discount and Sale Price' AND grade_level_min = 6),
  'Discount and Sale Price Topic Guide', 'Teaching discount calculations and sale prices',
  'DISCOUNT AND SALE PRICE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Percent decrease understanding
- Finding percent of a number
- Subtraction fluency
- Money sense

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate discount amount from percent
2. Find sale price after discount
3. Determine original price from sale price
4. Compare discounts to find best deals

KEY CONCEPTS:
- Discount is amount saved
- Sale price = original price - discount
- Discount = original price × discount percent
- Can calculate directly: sale price = original × (1 - discount %)
- Multiple discounts are not additive

COMMON MISCONCEPTIONS:
- Thinking sale price is the discount
- Adding discount percent to price instead of subtracting
- Believing 20% + 30% discount = 50% discount
- Not converting percent to decimal

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show store ad: "30% off all shoes! Regular price $60." "What will you pay?"

2. DIRECT INSTRUCTION (10 minutes):
   Model two methods:
   Method 1: Discount = $60 × 0.30 = $18, Sale = $60 - $18 = $42
   Method 2: Sale = $60 × 0.70 = $42
   Discuss which method is more efficient
   Show successive discounts: 20% off, then 10% more off ≠ 30% off.

3. GUIDED PRACTICE (12 minutes):
   Calculate discounts and sale prices
   Compare different discount scenarios
   Determine original prices from sale prices
   Evaluate successive discount claims.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve shopping discount problems
   Find best deals among different sales
   Calculate total savings on multiple items.

DIFFERENTIATION:
For Struggling Learners:
- Provide two-step process organizer
- Use realistic shopping scenarios
- Allow calculators for computations
- Start with simpler discounts (10%, 25%, 50%)

For Advanced Learners:
- Calculate original price from sale price and discount
- Evaluate multiple successive discounts
- Compare percent discount to dollar discount
- Find what discount percent was applied

ASSESSMENT INDICATORS:
- Accurately calculates discount amounts
- Finds correct sale prices
- Distinguishes between discount and sale price
- Applies to real shopping situations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Discount and Sale Price' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Sales Tax
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sales Tax' AND grade_level_min = 6),
  'Sales Tax Topic Guide', 'Teaching sales tax calculation',
  'SALES TAX - TOPIC TEACHING GUIDE

PREREQUISITES:
- Finding percent of a number
- Addition with decimals
- Money sense and rounding
- Percent increase understanding

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate sales tax from purchase amount
2. Find total cost including tax
3. Determine price before tax from total
4. Apply tax calculations to real purchases

KEY CONCEPTS:
- Sales tax is percent of purchase price
- Tax = price × tax rate
- Total = price + tax
- Can calculate directly: total = price × (1 + tax rate)
- Tax rates vary by location

COMMON MISCONCEPTIONS:
- Thinking tax is subtracted from price
- Confusing tax rate with tax amount
- Not adding tax to price for total
- Believing tax applies to already-taxed amount

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You buy a game for $40. Sales tax is 8%. How much do you actually pay?"

2. DIRECT INSTRUCTION (10 minutes):
   Model two methods:
   Method 1: Tax = $40 × 0.08 = $3.20, Total = $40 + $3.20 = $43.20
   Method 2: Total = $40 × 1.08 = $43.20
   Show finding price before tax: Total ÷ 1.08
   Discuss rounding tax to nearest cent.

3. GUIDED PRACTICE (12 minutes):
   Calculate tax amounts for various purchases
   Find totals including tax
   Determine pre-tax prices from totals
   Apply different tax rates.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve sales tax problems
   Calculate totals for shopping lists
   Compare prices in different tax rate areas.

DIFFERENTIATION:
For Struggling Learners:
- Provide calculation templates
- Use round tax rates (5%, 10%)
- Allow calculators
- Practice two-step method before shortcut

For Advanced Learners:
- Calculate with combined discounts and tax
- Find equivalent tax-inclusive pricing
- Investigate actual local tax rates
- Determine tax rate from price and total

ASSESSMENT INDICATORS:
- Correctly calculates tax amount
- Adds tax to price for accurate total
- Rounds money appropriately
- Applies to real purchase scenarios', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sales Tax' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Tips and Gratuity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Tips and Gratuity' AND grade_level_min = 6),
  'Tips and Gratuity Topic Guide', 'Teaching tip calculations',
  'TIPS AND GRATUITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Finding percent of a number
- Mental math with percents
- Money operations
- Understanding of service context

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate appropriate tip amounts
2. Estimate tips mentally using benchmarks
3. Find total including tip
4. Determine tip percent from amounts

KEY CONCEPTS:
- Tip is percent of bill before tax
- Common tip rates: 15%, 18%, 20%
- Total = bill + tip
- Can estimate: 10% is easy, double for 20%
- Tip reflects service quality

COMMON MISCONCEPTIONS:
- Calculating tip on total including tax
- Not knowing appropriate tip percentages
- Thinking tip is required by law
- Adding tip percent to wrong base

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Your restaurant bill is $35. You want to leave a 20% tip. About how much?"

2. DIRECT INSTRUCTION (10 minutes):
   Model exact calculation: $35 × 0.20 = $7
   Show mental estimation: 10% of $35 = $3.50, double it = $7
   Demonstrate finding total: $35 + $7 = $42
   Discuss tip etiquette and appropriate percentages.

3. GUIDED PRACTICE (12 minutes):
   Calculate tips for various bill amounts
   Estimate tips mentally using 10% method
   Find totals including tips
   Determine what tip percent was left.

4. INDEPENDENT PRACTICE (10 minutes):
   Calculate tips for realistic scenarios
   Estimate reasonable tips mentally
   Solve problems finding bill or tip from total.

DIFFERENTIATION:
For Struggling Learners:
- Focus on 10% and 20% initially
- Provide tip estimation chart
- Use simpler bill amounts
- Allow calculators for exact amounts

For Advanced Learners:
- Calculate split bills with different tip percentages
- Find bill amount given total and tip percent
- Calculate tip on bill after discount
- Analyze tipping customs in different contexts

ASSESSMENT INDICATORS:
- Calculates tip amounts accurately
- Estimates tips reasonably
- Knows appropriate tip percentages
- Applies to real dining scenarios', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Tips and Gratuity' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Commission
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Commission' AND grade_level_min = 6),
  'Commission Topic Guide', 'Teaching commission calculations',
  'COMMISSION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Finding percent of a number
- Understanding of sales context
- Money calculations
- Proportional reasoning

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate commission from sales and rate
2. Find total earnings with salary plus commission
3. Determine sales needed to earn target commission
4. Compare different commission structures

KEY CONCEPTS:
- Commission is percent of sales amount
- Commission = sales × commission rate
- Total pay may include salary + commission
- Higher sales = higher commission
- Commission incentivizes sales performance

COMMON MISCONCEPTIONS:
- Thinking commission is fixed amount
- Confusing commission rate with commission amount
- Not understanding commission is based on sales
- Believing all salespeople work on commission only

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "A car salesperson earns 5% commission. If they sell a $25,000 car, how much commission?"

2. DIRECT INSTRUCTION (10 minutes):
   Model: Commission = $25,000 × 0.05 = $1,250
   Show combined pay: $2,000 salary + $1,250 commission = $3,250
   Demonstrate finding sales needed: Want $2,000 commission at 5%
   Sales = $2,000 ÷ 0.05 = $40,000.

3. GUIDED PRACTICE (12 minutes):
   Calculate commission from various sales
   Find total pay with salary and commission
   Determine sales needed for target commission
   Compare different commission rates.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve commission word problems
   Analyze different pay structures
   Calculate monthly/annual commissions.

DIFFERENTIATION:
For Struggling Learners:
- Provide commission formula reference
- Use simple commission rates (5%, 10%)
- Practice commission calculation separately from total pay
- Use visual models showing sales → commission

For Advanced Learners:
- Work with tiered commission structures
- Compare salary vs commission-only positions
- Calculate break-even sales points
- Analyze real commission job advertisements

ASSESSMENT INDICATORS:
- Accurately calculates commission amounts
- Finds total pay correctly
- Determines sales needed for target earnings
- Understands commission as career concept', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Commission' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Simple Interest
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simple Interest' AND grade_level_min = 6),
  'Simple Interest Topic Guide', 'Teaching simple interest calculations',
  'SIMPLE INTEREST - TOPIC TEACHING GUIDE

PREREQUISITES:
- Percent of a number
- Understanding of money and banking
- Multiplication with decimals
- Time conversions (years, months)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Calculate simple interest using I = PRT
2. Find total amount including interest
3. Determine principal, rate, or time from interest
4. Apply interest concepts to savings and loans

KEY CONCEPTS:
- Interest is money earned (savings) or owed (loans)
- Formula: I = PRT (Principal × Rate × Time)
- Rate must be decimal, time in years
- Total amount = Principal + Interest
- Simple interest calculated on original principal only

COMMON MISCONCEPTIONS:
- Using percent instead of decimal for rate
- Not converting time to years
- Thinking interest is only for loans
- Confusing simple with compound interest

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You deposit $500 in a savings account with 4% annual interest for 3 years. How much interest do you earn?"

2. DIRECT INSTRUCTION (10 minutes):
   Model using I = PRT:
   - P = $500, R = 0.04, T = 3
   - I = $500 × 0.04 × 3 = $60
   - Total = $500 + $60 = $560
   Show finding other variables: P = I/(RT), R = I/(PT), T = I/(PR).

3. GUIDED PRACTICE (12 minutes):
   Calculate interest for various scenarios
   Find total amounts
   Solve for missing variables (principal, rate, time)
   Apply to both savings and loan contexts.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve simple interest problems
   Compare different interest rates and times
   Determine best savings options.

DIFFERENTIATION:
For Struggling Learners:
- Provide I = PRT formula card
- Use time periods in years only initially
- Practice with simple rates (5%, 10%)
- Create organized calculation templates

For Advanced Learners:
- Convert months/days to fractional years
- Compare simple to compound interest (preview)
- Calculate interest with variable rates
- Analyze real bank account offers

ASSESSMENT INDICATORS:
- Correctly applies I = PRT formula
- Converts percent to decimal for rate
- Expresses time in years
- Solves for different variables accurately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simple Interest' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Percent Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Percent Word Problems' AND grade_level_min = 6),
  'Percent Word Problems Topic Guide', 'Teaching complex percent problem solving',
  'PERCENT WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- All percent concepts from unit
- Strong problem-solving skills
- Multi-step thinking
- Ability to identify problem type

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze complex percent word problems
2. Determine which percent concept applies
3. Solve multi-step percent problems
4. Justify solutions and verify reasonableness

KEY CONCEPTS:
- Read carefully to identify percent type
- May combine multiple percent concepts
- Organize information systematically
- Choose efficient strategy for problem
- Check answer makes sense in context

COMMON MISCONCEPTIONS:
- Not identifying which percent operation needed
- Attempting to solve before understanding problem
- Missing steps in multi-step problems
- Not verifying answer reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You buy a $80 jacket on 25% off sale, then pay 6% tax. What do you pay?"

2. DIRECT INSTRUCTION (10 minutes):
   Model problem-solving process:
   - Identify: discount, then tax (two steps)
   - Sale price: $80 × 0.75 = $60
   - Tax: $60 × 0.06 = $3.60
   - Total: $60 + $3.60 = $63.60
   Demonstrate checking: discount reduces, tax increases, $63.60 is reasonable.

3. GUIDED PRACTICE (12 minutes):
   Solve varied complex problems
   Identify which percent concepts apply
   Break multi-step problems into parts
   Verify solutions make sense.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve challenging percent problems independently
   Explain solution strategies
   Create multi-step problems for peers.

DIFFERENTIATION:
For Struggling Learners:
- Provide problem-solving graphic organizers
- Break complex problems into explicit steps
- Use simpler numbers in complex contexts
- Allow reference sheets with percent formulas

For Advanced Learners:
- Solve problems with extraneous information
- Create problems requiring three or more steps
- Analyze data requiring multiple percent calculations
- Compare different solution approaches

ASSESSMENT INDICATORS:
- Correctly identifies percent problem type
- Solves multi-step problems accurately
- Shows organized work
- Verifies answers are reasonable', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Percent Word Problems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- RATIONAL NUMBERS (12 topics)
-- ============================================================================

-- Integers on Number Line
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Integers on Number Line' AND grade_level_min = 6),
  'Integers on Number Line Topic Guide', 'Teaching integer representation on number lines',
  'INTEGERS ON NUMBER LINE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of whole numbers on number line
- Concept of zero as a reference point
- Left and right directions
- Counting forward and backward

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Plot positive and negative integers on number line
2. Identify integers from number line positions
3. Understand zero as neither positive nor negative
4. Use number lines to model real-world contexts

KEY CONCEPTS:
- Number line extends infinitely in both directions
- Zero is the center point
- Positive integers are to the right of zero
- Negative integers are to the left of zero
- Equal spacing between consecutive integers

COMMON MISCONCEPTIONS:
- Thinking negative numbers are "less than nothing"
- Confusing distance from zero with the integer value
- Believing zero is positive
- Not understanding symmetry around zero

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Temperature can be above or below zero. How can we show -5°F and 5°F on a number line?"

2. DIRECT INSTRUCTION (10 minutes):
   Draw number line with zero in center
   Model plotting positive and negative integers
   Discuss contexts: temperature, elevation, money owed/saved
   Show symmetry: -3 and 3 are same distance from zero
   Emphasize zero is neither positive nor negative.

3. GUIDED PRACTICE (12 minutes):
   Plot integers on provided number lines
   Identify integers from marked points
   Create number lines for specific ranges
   Apply to contextual situations.

4. INDEPENDENT PRACTICE (10 minutes):
   Plot sets of integers independently
   Answer questions using number lines
   Create real-world scenarios represented by number lines.

DIFFERENTIATION:
For Struggling Learners:
- Use horizontal number lines consistently
- Provide pre-drawn number lines with zero marked
- Start with small ranges (-5 to 5)
- Use color coding: positive (green), negative (red)

For Advanced Learners:
- Work with larger ranges and intervals
- Create vertical number lines (thermometers, elevations)
- Plot and compare multiple quantities
- Investigate properties of number line symmetry

ASSESSMENT INDICATORS:
- Accurately plots positive and negative integers
- Identifies integer values from number line
- Understands zero as reference point
- Connects number line to real contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Integers on Number Line' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Comparing Integers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Integers' AND grade_level_min = 6),
  'Comparing Integers Topic Guide', 'Teaching integer comparison and ordering',
  'COMPARING INTEGERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Integers on number line
- Understanding of inequality symbols
- Greater than and less than concepts
- Ordering whole numbers

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare two integers using <, >, or =
2. Order sets of integers from least to greatest
3. Use number line to justify comparisons
4. Apply comparisons to real contexts

KEY CONCEPTS:
- Numbers increase moving right on number line
- All positive integers are greater than all negative integers
- For negative integers, greater value is closer to zero
- Zero is greater than all negative integers
- Can use number line as visual proof

COMMON MISCONCEPTIONS:
- Thinking -10 > -5 because 10 > 5
- Believing larger magnitude means larger value for negatives
- Confusing "further left" with "greater than"
- Not recognizing all negatives are less than all positives

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Which is colder: -10°F or -5°F? Which temperature is greater? Why might those be different?"

2. DIRECT INSTRUCTION (10 minutes):
   Use number line to show: -10 is left of -5, so -10 < -5
   Model thinking: -5 is closer to zero, so it''s greater
   Compare across zero: -3 < 2 (negative < positive)
   Order set: {5, -2, 0, -7, 3} → {-7, -2, 0, 3, 5}
   Connect to contexts: debt, temperature, elevation.

3. GUIDED PRACTICE (12 minutes):
   Compare pairs of integers
   Order sets of integers
   Use number line to justify comparisons
   Solve contextual comparison problems.

4. INDEPENDENT PRACTICE (10 minutes):
   Compare and order integers independently
   Write comparison statements with correct symbols
   Create word problems requiring integer comparison.

DIFFERENTIATION:
For Struggling Learners:
- Always provide number line reference
- Use highlighters to show positions
- Compare one pair at a time initially
- Focus on one side of zero before mixing

For Advanced Learners:
- Order larger sets of integers
- Work without number line visualization
- Explain why -100 < -1
- Compare integers in various real-world contexts

ASSESSMENT INDICATORS:
- Correctly uses <, >, = symbols with integers
- Orders integers from least to greatest accurately
- Explains comparisons using number line reasoning
- Applies comparisons appropriately to contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Integers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Absolute Value
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value' AND grade_level_min = 6),
  'Absolute Value Topic Guide', 'Teaching absolute value concept and notation',
  'ABSOLUTE VALUE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Integers on number line
- Understanding of distance
- Comparing integers
- Concept of magnitude

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define absolute value as distance from zero
2. Find absolute value of any integer
3. Use absolute value notation |n|
4. Apply absolute value to real situations

KEY CONCEPTS:
- Absolute value is distance from zero
- Always positive or zero (never negative)
- |5| = 5 and |-5| = 5
- Removes the sign, keeps the magnitude
- Represents magnitude in real contexts

COMMON MISCONCEPTIONS:
- Thinking absolute value "makes it positive"
- Believing |-5| = -5
- Confusing absolute value with opposite
- Not understanding it represents distance

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "You walk 5 blocks north or 5 blocks south from home. How far are you from home in each case?"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce absolute value as distance from zero
   Show on number line: 5 and -5 are both 5 units from zero
   Model notation: |5| = 5, |-5| = 5, |0| = 0
   Apply to contexts: distance traveled, magnitude of change
   Compare to opposite: opposite of 5 is -5, but |5| = 5.

3. GUIDED PRACTICE (12 minutes):
   Find absolute values of various integers
   Use number line to justify absolute values
   Compare integers using absolute value
   Solve problems involving distance/magnitude.

4. INDEPENDENT PRACTICE (10 minutes):
   Calculate absolute values independently
   Order integers by absolute value
   Apply absolute value to word problems.

DIFFERENTIATION:
For Struggling Learners:
- Always use number line to show distance
- Practice with notation separately
- Use consistent contexts (temperature magnitude)
- Provide absolute value anchor chart

For Advanced Learners:
- Solve equations like |x| = 5
- Compare with and without absolute value
- Investigate |-x| = |x|
- Apply to more complex contexts (error, deviation)

ASSESSMENT INDICATORS:
- Correctly finds absolute value of integers
- Uses absolute value notation properly
- Explains absolute value as distance from zero
- Applies to contextual problems appropriately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Opposite Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Opposite Numbers' AND grade_level_min = 6),
  'Opposite Numbers Topic Guide', 'Teaching opposite integer concepts',
  'OPPOSITE NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Integers on number line
- Understanding of symmetry
- Absolute value concept
- Addition fact families

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify the opposite of any integer
2. Understand opposites are equidistant from zero
3. Recognize that opposite of opposite is original number
4. Apply opposite relationships to real contexts

KEY CONCEPTS:
- Opposites are same distance from zero in opposite directions
- Notation: opposite of n is -n
- Opposite of positive is negative, opposite of negative is positive
- Opposite of 0 is 0
- Opposites sum to zero

COMMON MISCONCEPTIONS:
- Thinking opposite means absolute value
- Believing opposite is always negative
- Confusing opposite with absolute value
- Not recognizing -(-5) = 5

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "If you owe $5, that''s -5. If someone forgives that debt, you gain the opposite. What happens?"

2. DIRECT INSTRUCTION (10 minutes):
   Show on number line: 4 and -4 are opposites
   Model notation: opposite of 4 is -4, opposite of -4 is -(-4) = 4
   Demonstrate: opposites have same absolute value
   Show: n + (-n) = 0 for any integer
   Apply to contexts: deposits/withdrawals, above/below sea level.

3. GUIDED PRACTICE (12 minutes):
   Find opposites of various integers
   Evaluate expressions like -(-7)
   Plot integer and its opposite on number line
   Solve problems using opposite relationships.

4. INDEPENDENT PRACTICE (10 minutes):
   Identify opposites independently
   Simplify expressions with multiple negatives
   Create opposite scenarios from real contexts.

DIFFERENTIATION:
For Struggling Learners:
- Use number line for all opposites
- Practice with positive integers first
- Use consistent language "opposite of"
- Connect to familiar contexts (temperature)

For Advanced Learners:
- Evaluate chains: -(-(-(-5)))
- Explore why -n doesn''t always mean negative
- Connect opposites to additive inverse
- Investigate properties: -(a+b) = -a + (-b)

ASSESSMENT INDICATORS:
- Correctly identifies opposites of all integers
- Understands -(-n) = n
- Recognizes opposites are equidistant from zero
- Applies opposite relationships to contexts', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Opposite Numbers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Adding Integers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Integers' AND grade_level_min = 6),
  'Adding Integers Topic Guide', 'Teaching integer addition with rules and models',
  'ADDING INTEGERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Integers on number line
- Understanding of opposites
- Absolute value
- Addition of whole numbers

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Add two integers using rules or models
2. Use number line to model integer addition
3. Apply addition rules for same and different signs
4. Solve problems involving integer addition

KEY CONCEPTS:
- Same signs: add absolute values, keep the sign
- Different signs: subtract absolute values, use sign of larger
- Adding zero doesn''t change value
- Number line: move right for positive, left for negative
- Contexts: combining gains/losses, temperature changes

COMMON MISCONCEPTIONS:
- Always adding absolute values regardless of signs
- Not understanding "adding negative" means moving left
- Forgetting to determine sign of answer
- Confusing addition with subtraction when negatives involved

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Temperature is -3°F, then rises 8°F. What''s the new temperature?"

2. DIRECT INSTRUCTION (10 minutes):
   Model with number line: start at -3, move right 8 → lands at 5
   Teach same sign rule: 5 + 3 = 8, (-5) + (-3) = -8
   Teach different sign rule: 5 + (-3) = 2, (-5) + 3 = -2
   Show: (-8) + 8 = 0 (opposite integers sum to zero)
   Use two-color counters or number line consistently.

3. GUIDED PRACTICE (12 minutes):
   Add integers using number lines
   Apply addition rules
   Model with counters or diagrams
   Solve contextual addition problems.

4. INDEPENDENT PRACTICE (10 minutes):
   Add integers independently
   Choose appropriate model or rule
   Verify answers make sense.

DIFFERENTIATION:
For Struggling Learners:
- Provide number lines for all problems
- Use two-color counters for visual model
- Create rule reference cards
- Practice same-sign and different-sign separately

For Advanced Learners:
- Add three or more integers
- Solve without visual models
- Find missing addends: (-5) + ? = 3
- Apply to more complex contexts

ASSESSMENT INDICATORS:
- Correctly adds integers with same signs
- Correctly adds integers with different signs
- Uses number line or models appropriately
- Applies integer addition to problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Integers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Subtracting Integers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Integers' AND grade_level_min = 6),
  'Subtracting Integers Topic Guide', 'Teaching integer subtraction using addition',
  'SUBTRACTING INTEGERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Adding integers fluently
- Understanding of opposites
- Subtraction as inverse of addition
- Number line skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Subtract integers by adding the opposite
2. Use "keep-change-change" strategy
3. Apply subtraction in various contexts
4. Explain why subtracting is adding the opposite

KEY CONCEPTS:
- Subtracting is adding the opposite: a - b = a + (-b)
- "Keep-change-change": keep first, change operation, change sign
- Number line: move left for subtract positive, right for subtract negative
- Every subtraction can be rewritten as addition
- Contexts: temperature drops, depth changes, comparing elevations

COMMON MISCONCEPTIONS:
- Thinking 5 - (-3) = 2
- Not changing subtraction to addition
- Changing both operation and first number
- Believing "subtract negative" always gives negative result

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Temperature drops from 2°F to -5°F. What''s the change? We need 2 - (-5)."

2. DIRECT INSTRUCTION (10 minutes):
   Introduce "keep-change-change" rule
   Model: 7 - 4 = 7 + (-4) = 3
   Model: 3 - (-5) = 3 + 5 = 8
   Model: (-2) - 6 = (-2) + (-6) = -8
   Model: (-4) - (-7) = (-4) + 7 = 3
   Show on number line: subtracting means adding opposite.

3. GUIDED PRACTICE (12 minutes):
   Rewrite subtractions as additions
   Subtract integers using keep-change-change
   Model with number lines
   Solve contextual subtraction problems.

4. INDEPENDENT PRACTICE (10 minutes):
   Subtract integers independently
   Find differences between integers
   Apply to word problems.

DIFFERENTIATION:
For Struggling Learners:
- Provide "keep-change-change" cards
- Always rewrite as addition first
- Use number line for verification
- Practice patterns (positive - positive, then positive - negative, etc.)

For Advanced Learners:
- Solve without rewriting
- Find missing numbers: ? - (-4) = 10
- Solve multi-step problems
- Explain why rule works mathematically

ASSESSMENT INDICATORS:
- Correctly rewrites subtraction as adding opposite
- Applies "keep-change-change" accurately
- Subtracts all integer combinations correctly
- Solves contextual subtraction problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Integers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Multiplying Integers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Integers' AND grade_level_min = 6),
  'Multiplying Integers Topic Guide', 'Teaching integer multiplication rules',
  'MULTIPLYING INTEGERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Multiplication fact fluency
- Understanding of integers
- Repeated addition concept
- Pattern recognition

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Multiply integers using sign rules
2. Understand why like signs give positive product
3. Understand why unlike signs give negative product
4. Apply integer multiplication to contexts

KEY CONCEPTS:
- Same signs (both positive or both negative) → positive product
- Different signs → negative product
- Multiply absolute values, then apply sign rule
- Patterns justify the rules
- Zero times any integer equals zero

COMMON MISCONCEPTIONS:
- Thinking two negatives always make positive (only for multiplication/division)
- Not understanding why negative × negative = positive
- Forgetting to apply sign rules
- Believing negative × positive could be positive

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "If you lose $5 per day for 3 days, how has your money changed? That''s 3 × (-5)."

2. DIRECT INSTRUCTION (10 minutes):
   Model sign rules:
   - Positive × Positive: 4 × 3 = 12
   - Positive × Negative: 4 × (-3) = -12 (losing $3 four times)
   - Negative × Positive: (-4) × 3 = -12 (same by commutative)
   - Negative × Negative: (-4) × (-3) = 12
   Show pattern: 3×(-2)=-6, 2×(-2)=-4, 1×(-2)=-2, 0×(-2)=0, (-1)×(-2)=2
   Explain: removing debt is gain.

3. GUIDED PRACTICE (12 minutes):
   Multiply integers with same signs
   Multiply integers with different signs
   Identify patterns in multiplication tables
   Apply to word problems.

4. INDEPENDENT PRACTICE (10 minutes):
   Multiply integers independently
   Complete integer multiplication patterns
   Solve contextual problems.

DIFFERENTIATION:
For Struggling Learners:
- Provide sign rule reference card
- Practice same signs and different signs separately
- Use repeated addition for positive × negative
- Create color-coded multiplication charts

For Advanced Learners:
- Multiply three or more integers
- Determine sign without calculating
- Explain why (-) × (-) = (+) conceptually
- Investigate powers of negative numbers

ASSESSMENT INDICATORS:
- Correctly applies sign rules for multiplication
- Multiplies integers accurately
- Explains why like signs yield positive
- Solves contextual multiplication problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Integers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Dividing Integers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Integers' AND grade_level_min = 6),
  'Dividing Integers Topic Guide', 'Teaching integer division rules',
  'DIVIDING INTEGERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Division fact fluency
- Multiplying integers
- Division as inverse of multiplication
- Understanding of quotients

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Divide integers using sign rules
2. Apply same sign rules as multiplication
3. Connect division to multiplication
4. Solve problems involving integer division

KEY CONCEPTS:
- Same signs (both positive or both negative) → positive quotient
- Different signs → negative quotient
- Division sign rules match multiplication rules
- Can check with multiplication: if a ÷ b = c, then b × c = a
- Cannot divide by zero

COMMON MISCONCEPTIONS:
- Thinking different sign rules apply for division
- Not connecting division to multiplication
- Believing division always makes numbers smaller
- Attempting to divide by zero

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "If your total debt is $12 split evenly over 3 days, what''s the daily change? That''s (-12) ÷ 3."

2. DIRECT INSTRUCTION (10 minutes):
   Model sign rules (same as multiplication):
   - Positive ÷ Positive: 12 ÷ 3 = 4
   - Negative ÷ Positive: (-12) ÷ 3 = -4
   - Positive ÷ Negative: 12 ÷ (-3) = -4
   - Negative ÷ Negative: (-12) ÷ (-3) = 4
   Show connection: (-12) ÷ 3 = -4 because 3 × (-4) = -12
   Emphasize: same sign rules for × and ÷.

3. GUIDED PRACTICE (12 minutes):
   Divide integers with same signs
   Divide integers with different signs
   Verify using multiplication
   Solve contextual division problems.

4. INDEPENDENT PRACTICE (10 minutes):
   Divide integers independently
   Check answers with multiplication
   Apply to word problems.

DIFFERENTIATION:
For Struggling Learners:
- Use same sign rule cards as multiplication
- Verify every division with multiplication
- Practice same signs and different signs separately
- Provide division-multiplication connection examples

For Advanced Learners:
- Solve equations like x/(-3) = 5
- Divide with larger integers
- Explain why sign rules are same for × and ÷
- Investigate division resulting in fractions

ASSESSMENT INDICATORS:
- Correctly applies sign rules for division
- Divides integers accurately
- Verifies using multiplication
- Solves contextual division problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Integers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Rational Numbers on Number Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rational Numbers on Number Lines' AND grade_level_min = 6),
  'Rational Numbers on Number Lines Topic Guide', 'Teaching rational number representation',
  'RATIONAL NUMBERS ON NUMBER LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Integers on number line
- Fractions and decimals understanding
- Equivalent fractions
- Decimal place value

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Plot positive and negative fractions on number line
2. Plot positive and negative decimals on number line
3. Identify rational numbers from number line positions
4. Understand density of rational numbers

KEY CONCEPTS:
- Rational numbers include fractions, decimals, and integers
- Can be positive or negative
- Number line can be scaled to show any rational number
- Infinitely many rational numbers between any two points
- Can represent as fractions or decimals

COMMON MISCONCEPTIONS:
- Thinking only whole units can be plotted
- Difficulty with negative fractions/decimals
- Not understanding appropriate scale for fractions
- Believing there are gaps between rational numbers

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "How do we show -2.5 or -3/4 on a number line?"

2. DIRECT INSTRUCTION (10 minutes):
   Review integer number line, then add fractions between
   Model plotting: 1.5, -1.5, 3/4, -3/4
   Show appropriate scaling: if plotting halves, mark every 0.5
   Demonstrate: between any two rationals, infinite others exist
   Example: between 1 and 2, we have 1.5, 1.25, 1.75, etc.

3. GUIDED PRACTICE (12 minutes):
   Plot positive and negative fractions
   Plot positive and negative decimals
   Identify rational numbers from number line
   Create scaled number lines for specific numbers.

4. INDEPENDENT PRACTICE (10 minutes):
   Plot sets of rational numbers
   Find and plot rational numbers between given values
   Apply to contextual situations.

DIFFERENTIATION:
For Struggling Learners:
- Provide pre-scaled number lines
- Start with halves and tenths
- Use separate number lines for fractions and decimals initially
- Color code positive (green) and negative (red)

For Advanced Learners:
- Plot mixed numbers and improper fractions
- Create number lines with unconventional scales
- Find multiple rationals between close values
- Investigate why rationals are "dense"

ASSESSMENT INDICATORS:
- Accurately plots rational numbers with appropriate scale
- Identifies rational numbers from number line
- Understands negatives of fractions and decimals
- Recognizes infinite rationals between any two points', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rational Numbers on Number Lines' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Comparing Rational Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Rational Numbers' AND grade_level_min = 6),
  'Comparing Rational Numbers Topic Guide', 'Teaching comparison of fractions, decimals, and integers',
  'COMPARING RATIONAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Comparing integers
- Comparing fractions
- Comparing decimals
- Converting between forms

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare rational numbers in different forms
2. Order sets of fractions, decimals, and integers
3. Convert between forms to facilitate comparison
4. Apply comparisons to real contexts

KEY CONCEPTS:
- Can compare by converting to same form
- Number line: farther right is greater
- Negative rationals: closer to zero is greater
- Can use benchmark values (0, 0.5, 1)
- Multiple strategies available

COMMON MISCONCEPTIONS:
- Difficulty comparing when different forms (fraction vs decimal)
- Thinking -1/2 > -1/4 (comparing like positives)
- Not recognizing when conversion is helpful
- Forgetting all negatives < all positives

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Which is colder: -2.5°F or -2 1/4°F? How can we determine this?"

2. DIRECT INSTRUCTION (10 minutes):
   Model comparing: -2.5 vs -2.25
   Strategy 1: Convert both to decimals: -2.5 < -2.25
   Strategy 2: Plot on number line
   Strategy 3: Think "closer to zero is greater for negatives"
   Order set: {-1/2, 0.25, -0.75, 1/4, -1} → {-1, -0.75, -1/2, 0.25=1/4}.

3. GUIDED PRACTICE (12 minutes):
   Compare pairs of rational numbers
   Order sets with mixed forms
   Choose efficient comparison strategies
   Apply to contextual situations.

4. INDEPENDENT PRACTICE (10 minutes):
   Compare and order rational numbers independently
   Determine appropriate conversion strategy
   Solve comparison word problems.

DIFFERENTIATION:
For Struggling Learners:
- Convert all to decimals first
- Use number line for all comparisons
- Compare positives and negatives separately first
- Provide conversion charts

For Advanced Learners:
- Compare without converting (mental benchmarks)
- Order larger, more complex sets
- Find rational numbers between given values
- Investigate comparison strategies for efficiency

ASSESSMENT INDICATORS:
- Correctly compares rational numbers in various forms
- Orders mixed sets accurately
- Chooses appropriate comparison strategy
- Applies comparisons to contextual problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Rational Numbers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Operations with Rational Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Operations with Rational Numbers' AND grade_level_min = 6),
  'Operations with Rational Numbers Topic Guide', 'Teaching operations with all rational numbers',
  'OPERATIONS WITH RATIONAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Integer operations mastery
- Fraction operations mastery
- Decimal operations mastery
- Converting between forms

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Add and subtract positive and negative fractions/decimals
2. Multiply and divide positive and negative fractions/decimals
3. Apply integer operation rules to all rational numbers
4. Solve multi-step problems with rational numbers

KEY CONCEPTS:
- Same sign rules apply to all rational numbers
- Can convert to same form before operating
- Fraction rules + integer sign rules
- Decimal rules + integer sign rules
- Order of operations applies

COMMON MISCONCEPTIONS:
- Thinking sign rules only apply to integers
- Difficulty combining fraction/decimal operations with signs
- Not using common denominators with signed fractions
- Forgetting to simplify final answers

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "Temperature is -3.5°F, then drops another 2.25°F. What''s the new temperature?"

2. DIRECT INSTRUCTION (10 minutes):
   Model: (-3.5) + (-2.25) = -5.75 (same sign rule)
   Model: (-1/2) - (-3/4) = (-1/2) + (3/4) = 1/4 (subtraction rule)
   Model: (-2/3) × (3/4) = -1/2 (different sign rule)
   Model: (-0.6) ÷ (-0.2) = 3 (same sign rule)
   Emphasize: integer sign rules apply to all rationals.

3. GUIDED PRACTICE (12 minutes):
   Perform all operations with rational numbers
   Choose appropriate forms for operations
   Apply sign rules consistently
   Solve multi-step problems.

4. INDEPENDENT PRACTICE (10 minutes):
   Compute with rational numbers independently
   Solve complex word problems
   Verify answers are reasonable.

DIFFERENTIATION:
For Struggling Learners:
- Provide operation and sign rule cards
- Convert all to decimals when possible
- Practice one operation type at a time
- Use number lines for verification

For Advanced Learners:
- Solve multi-step expressions with mixed operations
- Work with repeating decimals
- Solve equations involving rational numbers
- Create and solve complex real-world problems

ASSESSMENT INDICATORS:
- Accurately performs all operations with rational numbers
- Applies sign rules correctly to fractions and decimals
- Chooses efficient computational strategies
- Solves complex multi-step problems', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Operations with Rational Numbers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Rational Number Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rational Number Word Problems' AND grade_level_min = 6),
  'Rational Number Word Problems Topic Guide', 'Teaching complex rational number problem solving',
  'RATIONAL NUMBER WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- All rational number operations
- Strong problem-solving skills
- Understanding of various contexts
- Multi-step problem experience

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Analyze complex rational number word problems
2. Determine appropriate operations for situations
3. Solve multi-step problems with rational numbers
4. Verify solutions are reasonable in context

KEY CONCEPTS:
- Read carefully to identify all given information
- Determine which operations are needed
- May require multiple steps
- Answers should make sense in context
- Check using estimation or inverse operations

COMMON MISCONCEPTIONS:
- Not identifying whether numbers are positive or negative from context
- Choosing wrong operation
- Not completing all steps in multi-step problems
- Not verifying answer reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   "A submarine at -125.5 feet rises 37.25 feet, then descends 18.75 feet. What''s its depth now?"

2. DIRECT INSTRUCTION (10 minutes):
   Model problem-solving process:
   - Identify: starting depth -125.5, rise +37.25, descend -18.75
   - Calculate: (-125.5) + 37.25 = -88.25
   - Then: (-88.25) + (-18.75) = -107
   - Answer: -107 feet (below surface)
   - Verify: started at -125.5, net change is +37.25-18.75 = +18.5, so -125.5+18.5 = -107 ✓.

3. GUIDED PRACTICE (12 minutes):
   Solve varied contextual problems
   Identify operations from context clues
   Complete multi-step calculations
   Verify solutions make sense.

4. INDEPENDENT PRACTICE (10 minutes):
   Solve complex problems independently
   Create word problems for given expressions
   Explain solution strategies.

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers for problem solving
- Highlight key information in problems
- Break multi-step problems into explicit steps
- Use simpler numbers in complex contexts

For Advanced Learners:
- Solve problems with extraneous information
- Create multi-step problems requiring all operations
- Analyze real-world data with rational numbers
- Investigate efficiency of different approaches

ASSESSMENT INDICATORS:
- Correctly identifies operations from context
- Solves multi-step problems accurately
- Shows organized work
- Verifies answers are reasonable in context', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rational Number Word Problems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;
-- Grade 6 Math Expanded Topic Prompts - Continuation
-- Remaining units: Expressions and Equations through Geometry
-- ============================================================================

-- ============================================================================
-- EXPRESSIONS AND EQUATIONS (16 topics)
-- ============================================================================


-- Writing Algebraic Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Algebraic Expressions' AND grade_level_min = 6),
  'Writing Algebraic Expressions Topic Guide', 'Translate words to algebraic expressions',
  'WRITING ALGEBRAIC EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of writing algebraic expressions
2. Apply strategies to solve problems involving writing algebraic expressions
3. Demonstrate fluency with writing algebraic expressions in various contexts
4. Connect writing algebraic expressions to real-world situations

KEY CONCEPTS:
- Translate words to algebraic expressions
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires writing algebraic expressions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Algebraic Expressions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Evaluating Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Evaluating Expressions' AND grade_level_min = 6),
  'Evaluating Expressions Topic Guide', 'Substitute values and evaluate expressions',
  'EVALUATING EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of evaluating expressions
2. Apply strategies to solve problems involving evaluating expressions
3. Demonstrate fluency with evaluating expressions in various contexts
4. Connect evaluating expressions to real-world situations

KEY CONCEPTS:
- Substitute values and evaluate expressions
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires evaluating expressions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evaluating Expressions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Properties of Operations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Properties of Operations' AND grade_level_min = 6),
  'Properties of Operations Topic Guide', 'Apply commutative, associative, and distributive properties',
  'PROPERTIES OF OPERATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of properties of operations
2. Apply strategies to solve problems involving properties of operations
3. Demonstrate fluency with properties of operations in various contexts
4. Connect properties of operations to real-world situations

KEY CONCEPTS:
- Apply commutative, associative, and distributive properties
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires properties of operations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties of Operations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Combining Like Terms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Combining Like Terms' AND grade_level_min = 6),
  'Combining Like Terms Topic Guide', 'Simplify expressions with like terms',
  'COMBINING LIKE TERMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of combining like terms
2. Apply strategies to solve problems involving combining like terms
3. Demonstrate fluency with combining like terms in various contexts
4. Connect combining like terms to real-world situations

KEY CONCEPTS:
- Simplify expressions with like terms
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires combining like terms.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Combining Like Terms' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Distributive Property
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Distributive Property' AND grade_level_min = 6),
  'Distributive Property Topic Guide', 'Expand expressions using distribution',
  'DISTRIBUTIVE PROPERTY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of distributive property
2. Apply strategies to solve problems involving distributive property
3. Demonstrate fluency with distributive property in various contexts
4. Connect distributive property to real-world situations

KEY CONCEPTS:
- Expand expressions using distribution
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires distributive property.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Distributive Property' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Factoring Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Factoring Expressions' AND grade_level_min = 6),
  'Factoring Expressions Topic Guide', 'Factor expressions using GCF',
  'FACTORING EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of factoring expressions
2. Apply strategies to solve problems involving factoring expressions
3. Demonstrate fluency with factoring expressions in various contexts
4. Connect factoring expressions to real-world situations

KEY CONCEPTS:
- Factor expressions using GCF
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires factoring expressions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factoring Expressions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Equivalent Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equivalent Expressions' AND grade_level_min = 6),
  'Equivalent Expressions Topic Guide', 'Identify and write equivalent expressions',
  'EQUIVALENT EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of equivalent expressions
2. Apply strategies to solve problems involving equivalent expressions
3. Demonstrate fluency with equivalent expressions in various contexts
4. Connect equivalent expressions to real-world situations

KEY CONCEPTS:
- Identify and write equivalent expressions
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires equivalent expressions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equivalent Expressions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Writing Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Equations' AND grade_level_min = 6),
  'Writing Equations Topic Guide', 'Write equations from word situations',
  'WRITING EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of writing equations
2. Apply strategies to solve problems involving writing equations
3. Demonstrate fluency with writing equations in various contexts
4. Connect writing equations to real-world situations

KEY CONCEPTS:
- Write equations from word situations
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires writing equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Solving Addition Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Addition Equations' AND grade_level_min = 6),
  'Solving Addition Equations Topic Guide', 'Solve equations like x + 5 = 12',
  'SOLVING ADDITION EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of solving addition equations
2. Apply strategies to solve problems involving solving addition equations
3. Demonstrate fluency with solving addition equations in various contexts
4. Connect solving addition equations to real-world situations

KEY CONCEPTS:
- Solve equations like x + 5 = 12
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires solving addition equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Addition Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Solving Subtraction Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Subtraction Equations' AND grade_level_min = 6),
  'Solving Subtraction Equations Topic Guide', 'Solve equations like x - 3 = 8',
  'SOLVING SUBTRACTION EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of solving subtraction equations
2. Apply strategies to solve problems involving solving subtraction equations
3. Demonstrate fluency with solving subtraction equations in various contexts
4. Connect solving subtraction equations to real-world situations

KEY CONCEPTS:
- Solve equations like x - 3 = 8
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires solving subtraction equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Subtraction Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Solving Multiplication Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Multiplication Equations' AND grade_level_min = 6),
  'Solving Multiplication Equations Topic Guide', 'Solve equations like 4x = 24',
  'SOLVING MULTIPLICATION EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of solving multiplication equations
2. Apply strategies to solve problems involving solving multiplication equations
3. Demonstrate fluency with solving multiplication equations in various contexts
4. Connect solving multiplication equations to real-world situations

KEY CONCEPTS:
- Solve equations like 4x = 24
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires solving multiplication equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Multiplication Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Solving Division Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Division Equations' AND grade_level_min = 6),
  'Solving Division Equations Topic Guide', 'Solve equations like x/5 = 7',
  'SOLVING DIVISION EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of solving division equations
2. Apply strategies to solve problems involving solving division equations
3. Demonstrate fluency with solving division equations in various contexts
4. Connect solving division equations to real-world situations

KEY CONCEPTS:
- Solve equations like x/5 = 7
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires solving division equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Division Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Two-Step Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Two-Step Equations' AND grade_level_min = 6),
  'Two-Step Equations Topic Guide', 'Solve equations with two operations',
  'TWO-STEP EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of two-step equations
2. Apply strategies to solve problems involving two-step equations
3. Demonstrate fluency with two-step equations in various contexts
4. Connect two-step equations to real-world situations

KEY CONCEPTS:
- Solve equations with two operations
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires two-step equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Two-Step Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Writing Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Inequalities' AND grade_level_min = 6),
  'Writing Inequalities Topic Guide', 'Translate situations to inequalities',
  'WRITING INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of writing inequalities
2. Apply strategies to solve problems involving writing inequalities
3. Demonstrate fluency with writing inequalities in various contexts
4. Connect writing inequalities to real-world situations

KEY CONCEPTS:
- Translate situations to inequalities
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires writing inequalities.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Inequalities' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Solving Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Inequalities' AND grade_level_min = 6),
  'Solving Inequalities Topic Guide', 'Solve and graph one-step inequalities',
  'SOLVING INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of solving inequalities
2. Apply strategies to solve problems involving solving inequalities
3. Demonstrate fluency with solving inequalities in various contexts
4. Connect solving inequalities to real-world situations

KEY CONCEPTS:
- Solve and graph one-step inequalities
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires solving inequalities.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Inequalities' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Equations and Inequalities Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equations and Inequalities Word Problems' AND grade_level_min = 6),
  'Equations and Inequalities Word Problems Topic Guide', 'Solve real-world algebra problems',
  'EQUATIONS AND INEQUALITIES WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of equations and inequalities word problems
2. Apply strategies to solve problems involving equations and inequalities word problems
3. Demonstrate fluency with equations and inequalities word problems in various contexts
4. Connect equations and inequalities word problems to real-world situations

KEY CONCEPTS:
- Solve real-world algebra problems
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires equations and inequalities word problems.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equations and Inequalities Word Problems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- COORDINATE PLANE (9 topics)
-- ============================================================================


-- Four Quadrants Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Four Quadrants Review' AND grade_level_min = 6),
  'Four Quadrants Review Topic Guide', 'Plot points in all four quadrants',
  'FOUR QUADRANTS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of four quadrants review
2. Apply strategies to solve problems involving four quadrants review
3. Demonstrate fluency with four quadrants review in various contexts
4. Connect four quadrants review to real-world situations

KEY CONCEPTS:
- Plot points in all four quadrants
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires four quadrants review.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Four Quadrants Review' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Reflecting Points
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reflecting Points' AND grade_level_min = 6),
  'Reflecting Points Topic Guide', 'Reflect points across axes',
  'REFLECTING POINTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of reflecting points
2. Apply strategies to solve problems involving reflecting points
3. Demonstrate fluency with reflecting points in various contexts
4. Connect reflecting points to real-world situations

KEY CONCEPTS:
- Reflect points across axes
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires reflecting points.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reflecting Points' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Distance on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Distance on Coordinate Plane' AND grade_level_min = 6),
  'Distance on Coordinate Plane Topic Guide', 'Calculate horizontal and vertical distances',
  'DISTANCE ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of distance on coordinate plane
2. Apply strategies to solve problems involving distance on coordinate plane
3. Demonstrate fluency with distance on coordinate plane in various contexts
4. Connect distance on coordinate plane to real-world situations

KEY CONCEPTS:
- Calculate horizontal and vertical distances
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires distance on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Distance on Coordinate Plane' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Absolute Value and Distance
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value and Distance' AND grade_level_min = 6),
  'Absolute Value and Distance Topic Guide', 'Use absolute value to find distance',
  'ABSOLUTE VALUE AND DISTANCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of absolute value and distance
2. Apply strategies to solve problems involving absolute value and distance
3. Demonstrate fluency with absolute value and distance in various contexts
4. Connect absolute value and distance to real-world situations

KEY CONCEPTS:
- Use absolute value to find distance
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires absolute value and distance.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value and Distance' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Polygons on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polygons on Coordinate Plane' AND grade_level_min = 6),
  'Polygons on Coordinate Plane Topic Guide', 'Draw and identify polygons using coordinates',
  'POLYGONS ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of polygons on coordinate plane
2. Apply strategies to solve problems involving polygons on coordinate plane
3. Demonstrate fluency with polygons on coordinate plane in various contexts
4. Connect polygons on coordinate plane to real-world situations

KEY CONCEPTS:
- Draw and identify polygons using coordinates
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires polygons on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polygons on Coordinate Plane' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Perimeter on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Perimeter on Coordinate Plane' AND grade_level_min = 6),
  'Perimeter on Coordinate Plane Topic Guide', 'Calculate perimeter using coordinates',
  'PERIMETER ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of perimeter on coordinate plane
2. Apply strategies to solve problems involving perimeter on coordinate plane
3. Demonstrate fluency with perimeter on coordinate plane in various contexts
4. Connect perimeter on coordinate plane to real-world situations

KEY CONCEPTS:
- Calculate perimeter using coordinates
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires perimeter on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Perimeter on Coordinate Plane' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Area on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area on Coordinate Plane' AND grade_level_min = 6),
  'Area on Coordinate Plane Topic Guide', 'Calculate area using coordinates',
  'AREA ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of area on coordinate plane
2. Apply strategies to solve problems involving area on coordinate plane
3. Demonstrate fluency with area on coordinate plane in various contexts
4. Connect area on coordinate plane to real-world situations

KEY CONCEPTS:
- Calculate area using coordinates
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires area on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area on Coordinate Plane' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Graphing Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Equations' AND grade_level_min = 6),
  'Graphing Equations Topic Guide', 'Graph linear equations',
  'GRAPHING EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of graphing equations
2. Apply strategies to solve problems involving graphing equations
3. Demonstrate fluency with graphing equations in various contexts
4. Connect graphing equations to real-world situations

KEY CONCEPTS:
- Graph linear equations
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires graphing equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Coordinate Plane Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Coordinate Plane Word Problems' AND grade_level_min = 6),
  'Coordinate Plane Word Problems Topic Guide', 'Solve real-world coordinate problems',
  'COORDINATE PLANE WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of coordinate plane word problems
2. Apply strategies to solve problems involving coordinate plane word problems
3. Demonstrate fluency with coordinate plane word problems in various contexts
4. Connect coordinate plane word problems to real-world situations

KEY CONCEPTS:
- Solve real-world coordinate problems
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires coordinate plane word problems.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Coordinate Plane Word Problems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- AREA AND SURFACE AREA (10 topics)
-- ============================================================================


-- Area of Parallelograms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Parallelograms' AND grade_level_min = 6),
  'Area of Parallelograms Topic Guide', 'Use A = b × h for parallelograms',
  'AREA OF PARALLELOGRAMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of area of parallelograms
2. Apply strategies to solve problems involving area of parallelograms
3. Demonstrate fluency with area of parallelograms in various contexts
4. Connect area of parallelograms to real-world situations

KEY CONCEPTS:
- Use A = b × h for parallelograms
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires area of parallelograms.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Parallelograms' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Area of Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Triangles' AND grade_level_min = 6),
  'Area of Triangles Topic Guide', 'Use A = 1/2 × b × h for triangles',
  'AREA OF TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of area of triangles
2. Apply strategies to solve problems involving area of triangles
3. Demonstrate fluency with area of triangles in various contexts
4. Connect area of triangles to real-world situations

KEY CONCEPTS:
- Use A = 1/2 × b × h for triangles
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires area of triangles.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Triangles' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Area of Trapezoids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Trapezoids' AND grade_level_min = 6),
  'Area of Trapezoids Topic Guide', 'Use formula for trapezoid area',
  'AREA OF TRAPEZOIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of area of trapezoids
2. Apply strategies to solve problems involving area of trapezoids
3. Demonstrate fluency with area of trapezoids in various contexts
4. Connect area of trapezoids to real-world situations

KEY CONCEPTS:
- Use formula for trapezoid area
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires area of trapezoids.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Trapezoids' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Area of Composite Figures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Composite Figures' AND grade_level_min = 6),
  'Area of Composite Figures Topic Guide', 'Break complex shapes into simpler ones',
  'AREA OF COMPOSITE FIGURES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of area of composite figures
2. Apply strategies to solve problems involving area of composite figures
3. Demonstrate fluency with area of composite figures in various contexts
4. Connect area of composite figures to real-world situations

KEY CONCEPTS:
- Break complex shapes into simpler ones
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires area of composite figures.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Composite Figures' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Area on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area on Coordinate Plane' AND grade_level_min = 6),
  'Area on Coordinate Plane Topic Guide', 'Find area using coordinate points',
  'AREA ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of area on coordinate plane
2. Apply strategies to solve problems involving area on coordinate plane
3. Demonstrate fluency with area on coordinate plane in various contexts
4. Connect area on coordinate plane to real-world situations

KEY CONCEPTS:
- Find area using coordinate points
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires area on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area on Coordinate Plane' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Understanding Nets
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Nets' AND grade_level_min = 6),
  'Understanding Nets Topic Guide', 'Identify nets of 3D figures',
  'UNDERSTANDING NETS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of understanding nets
2. Apply strategies to solve problems involving understanding nets
3. Demonstrate fluency with understanding nets in various contexts
4. Connect understanding nets to real-world situations

KEY CONCEPTS:
- Identify nets of 3D figures
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires understanding nets.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Nets' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Surface Area of Rectangular Prisms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Rectangular Prisms' AND grade_level_min = 6),
  'Surface Area of Rectangular Prisms Topic Guide', 'Calculate surface area using nets',
  'SURFACE AREA OF RECTANGULAR PRISMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of surface area of rectangular prisms
2. Apply strategies to solve problems involving surface area of rectangular prisms
3. Demonstrate fluency with surface area of rectangular prisms in various contexts
4. Connect surface area of rectangular prisms to real-world situations

KEY CONCEPTS:
- Calculate surface area using nets
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires surface area of rectangular prisms.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Rectangular Prisms' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Surface Area of Triangular Prisms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Triangular Prisms' AND grade_level_min = 6),
  'Surface Area of Triangular Prisms Topic Guide', 'Calculate surface area of triangular prisms',
  'SURFACE AREA OF TRIANGULAR PRISMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of surface area of triangular prisms
2. Apply strategies to solve problems involving surface area of triangular prisms
3. Demonstrate fluency with surface area of triangular prisms in various contexts
4. Connect surface area of triangular prisms to real-world situations

KEY CONCEPTS:
- Calculate surface area of triangular prisms
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires surface area of triangular prisms.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Triangular Prisms' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Surface Area of Pyramids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Pyramids' AND grade_level_min = 6),
  'Surface Area of Pyramids Topic Guide', 'Calculate surface area of pyramids',
  'SURFACE AREA OF PYRAMIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of surface area of pyramids
2. Apply strategies to solve problems involving surface area of pyramids
3. Demonstrate fluency with surface area of pyramids in various contexts
4. Connect surface area of pyramids to real-world situations

KEY CONCEPTS:
- Calculate surface area of pyramids
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires surface area of pyramids.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Pyramids' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Surface Area Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area Word Problems' AND grade_level_min = 6),
  'Surface Area Word Problems Topic Guide', 'Solve real-world surface area problems',
  'SURFACE AREA WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of surface area word problems
2. Apply strategies to solve problems involving surface area word problems
3. Demonstrate fluency with surface area word problems in various contexts
4. Connect surface area word problems to real-world situations

KEY CONCEPTS:
- Solve real-world surface area problems
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires surface area word problems.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area Word Problems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- STATISTICS (14 topics)
-- ============================================================================


-- Statistical Questions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Statistical Questions' AND grade_level_min = 6),
  'Statistical Questions Topic Guide', 'Identify statistical questions',
  'STATISTICAL QUESTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of statistical questions
2. Apply strategies to solve problems involving statistical questions
3. Demonstrate fluency with statistical questions in various contexts
4. Connect statistical questions to real-world situations

KEY CONCEPTS:
- Identify statistical questions
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires statistical questions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Statistical Questions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Mean
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Mean' AND grade_level_min = 6),
  'Mean Topic Guide', 'Calculate mean of data sets',
  'MEAN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of mean
2. Apply strategies to solve problems involving mean
3. Demonstrate fluency with mean in various contexts
4. Connect mean to real-world situations

KEY CONCEPTS:
- Calculate mean of data sets
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires mean.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mean' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Median
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Median' AND grade_level_min = 6),
  'Median Topic Guide', 'Find median of data sets',
  'MEDIAN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of median
2. Apply strategies to solve problems involving median
3. Demonstrate fluency with median in various contexts
4. Connect median to real-world situations

KEY CONCEPTS:
- Find median of data sets
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires median.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Median' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Mode
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Mode' AND grade_level_min = 6),
  'Mode Topic Guide', 'Identify mode in data sets',
  'MODE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of mode
2. Apply strategies to solve problems involving mode
3. Demonstrate fluency with mode in various contexts
4. Connect mode to real-world situations

KEY CONCEPTS:
- Identify mode in data sets
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires mode.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mode' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Range
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Range' AND grade_level_min = 6),
  'Range Topic Guide', 'Calculate range of data',
  'RANGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of range
2. Apply strategies to solve problems involving range
3. Demonstrate fluency with range in various contexts
4. Connect range to real-world situations

KEY CONCEPTS:
- Calculate range of data
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires range.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Range' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Choosing Measures of Center
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Choosing Measures of Center' AND grade_level_min = 6),
  'Choosing Measures of Center Topic Guide', 'Select appropriate measure',
  'CHOOSING MEASURES OF CENTER - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of choosing measures of center
2. Apply strategies to solve problems involving choosing measures of center
3. Demonstrate fluency with choosing measures of center in various contexts
4. Connect choosing measures of center to real-world situations

KEY CONCEPTS:
- Select appropriate measure
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires choosing measures of center.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Choosing Measures of Center' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Mean Absolute Deviation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Mean Absolute Deviation' AND grade_level_min = 6),
  'Mean Absolute Deviation Topic Guide', 'Calculate MAD',
  'MEAN ABSOLUTE DEVIATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of mean absolute deviation
2. Apply strategies to solve problems involving mean absolute deviation
3. Demonstrate fluency with mean absolute deviation in various contexts
4. Connect mean absolute deviation to real-world situations

KEY CONCEPTS:
- Calculate MAD
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires mean absolute deviation.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mean Absolute Deviation' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Interquartile Range
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Interquartile Range' AND grade_level_min = 6),
  'Interquartile Range Topic Guide', 'Find IQR of data sets',
  'INTERQUARTILE RANGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of interquartile range
2. Apply strategies to solve problems involving interquartile range
3. Demonstrate fluency with interquartile range in various contexts
4. Connect interquartile range to real-world situations

KEY CONCEPTS:
- Find IQR of data sets
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires interquartile range.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Interquartile Range' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Dot Plots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dot Plots' AND grade_level_min = 6),
  'Dot Plots Topic Guide', 'Create and interpret dot plots',
  'DOT PLOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of dot plots
2. Apply strategies to solve problems involving dot plots
3. Demonstrate fluency with dot plots in various contexts
4. Connect dot plots to real-world situations

KEY CONCEPTS:
- Create and interpret dot plots
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires dot plots.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dot Plots' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Histograms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Histograms' AND grade_level_min = 6),
  'Histograms Topic Guide', 'Create and interpret histograms',
  'HISTOGRAMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of histograms
2. Apply strategies to solve problems involving histograms
3. Demonstrate fluency with histograms in various contexts
4. Connect histograms to real-world situations

KEY CONCEPTS:
- Create and interpret histograms
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires histograms.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Histograms' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Box Plots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Box Plots' AND grade_level_min = 6),
  'Box Plots Topic Guide', 'Create and interpret box-and-whisker plots',
  'BOX PLOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of box plots
2. Apply strategies to solve problems involving box plots
3. Demonstrate fluency with box plots in various contexts
4. Connect box plots to real-world situations

KEY CONCEPTS:
- Create and interpret box-and-whisker plots
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires box plots.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Box Plots' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Comparing Data Displays
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Data Displays' AND grade_level_min = 6),
  'Comparing Data Displays Topic Guide', 'Choose appropriate data displays',
  'COMPARING DATA DISPLAYS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of comparing data displays
2. Apply strategies to solve problems involving comparing data displays
3. Demonstrate fluency with comparing data displays in various contexts
4. Connect comparing data displays to real-world situations

KEY CONCEPTS:
- Choose appropriate data displays
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires comparing data displays.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Data Displays' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Describing Distributions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Describing Distributions' AND grade_level_min = 6),
  'Describing Distributions Topic Guide', 'Describe shape, center, spread',
  'DESCRIBING DISTRIBUTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of describing distributions
2. Apply strategies to solve problems involving describing distributions
3. Demonstrate fluency with describing distributions in various contexts
4. Connect describing distributions to real-world situations

KEY CONCEPTS:
- Describe shape, center, spread
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires describing distributions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Describing Distributions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Outliers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Outliers' AND grade_level_min = 6),
  'Outliers Topic Guide', 'Identify and understand outliers',
  'OUTLIERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of outliers
2. Apply strategies to solve problems involving outliers
3. Demonstrate fluency with outliers in various contexts
4. Connect outliers to real-world situations

KEY CONCEPTS:
- Identify and understand outliers
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires outliers.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Outliers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- PROBABILITY (10 topics)
-- ============================================================================


-- Probability Basics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Probability Basics' AND grade_level_min = 6),
  'Probability Basics Topic Guide', 'Understand probability as a ratio',
  'PROBABILITY BASICS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of probability basics
2. Apply strategies to solve problems involving probability basics
3. Demonstrate fluency with probability basics in various contexts
4. Connect probability basics to real-world situations

KEY CONCEPTS:
- Understand probability as a ratio
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires probability basics.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Probability Basics' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Theoretical Probability
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Theoretical Probability' AND grade_level_min = 6),
  'Theoretical Probability Topic Guide', 'Calculate probability of simple events',
  'THEORETICAL PROBABILITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of theoretical probability
2. Apply strategies to solve problems involving theoretical probability
3. Demonstrate fluency with theoretical probability in various contexts
4. Connect theoretical probability to real-world situations

KEY CONCEPTS:
- Calculate probability of simple events
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires theoretical probability.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Theoretical Probability' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Probability as Fraction Decimal Percent
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Probability as Fraction Decimal Percent' AND grade_level_min = 6),
  'Probability as Fraction Decimal Percent Topic Guide', 'Express probability in different forms',
  'PROBABILITY AS FRACTION DECIMAL PERCENT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of probability as fraction decimal percent
2. Apply strategies to solve problems involving probability as fraction decimal percent
3. Demonstrate fluency with probability as fraction decimal percent in various contexts
4. Connect probability as fraction decimal percent to real-world situations

KEY CONCEPTS:
- Express probability in different forms
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires probability as fraction decimal percent.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Probability as Fraction Decimal Percent' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Experimental Probability
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Experimental Probability' AND grade_level_min = 6),
  'Experimental Probability Topic Guide', 'Find probability from experiments',
  'EXPERIMENTAL PROBABILITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of experimental probability
2. Apply strategies to solve problems involving experimental probability
3. Demonstrate fluency with experimental probability in various contexts
4. Connect experimental probability to real-world situations

KEY CONCEPTS:
- Find probability from experiments
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires experimental probability.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Experimental Probability' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Comparing Theoretical and Experimental
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Theoretical and Experimental' AND grade_level_min = 6),
  'Comparing Theoretical and Experimental Topic Guide', 'Compare types of probability',
  'COMPARING THEORETICAL AND EXPERIMENTAL - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of comparing theoretical and experimental
2. Apply strategies to solve problems involving comparing theoretical and experimental
3. Demonstrate fluency with comparing theoretical and experimental in various contexts
4. Connect comparing theoretical and experimental to real-world situations

KEY CONCEPTS:
- Compare types of probability
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires comparing theoretical and experimental.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Theoretical and Experimental' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Sample Space
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sample Space' AND grade_level_min = 6),
  'Sample Space Topic Guide', 'List all possible outcomes',
  'SAMPLE SPACE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of sample space
2. Apply strategies to solve problems involving sample space
3. Demonstrate fluency with sample space in various contexts
4. Connect sample space to real-world situations

KEY CONCEPTS:
- List all possible outcomes
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires sample space.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sample Space' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Tree Diagrams
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Tree Diagrams' AND grade_level_min = 6),
  'Tree Diagrams Topic Guide', 'Use tree diagrams for compound events',
  'TREE DIAGRAMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of tree diagrams
2. Apply strategies to solve problems involving tree diagrams
3. Demonstrate fluency with tree diagrams in various contexts
4. Connect tree diagrams to real-world situations

KEY CONCEPTS:
- Use tree diagrams for compound events
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires tree diagrams.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Tree Diagrams' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Compound Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Compound Events' AND grade_level_min = 6),
  'Compound Events Topic Guide', 'Find probability of compound events',
  'COMPOUND EVENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of compound events
2. Apply strategies to solve problems involving compound events
3. Demonstrate fluency with compound events in various contexts
4. Connect compound events to real-world situations

KEY CONCEPTS:
- Find probability of compound events
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires compound events.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compound Events' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Independent Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Independent Events' AND grade_level_min = 6),
  'Independent Events Topic Guide', 'Calculate independent probability',
  'INDEPENDENT EVENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of independent events
2. Apply strategies to solve problems involving independent events
3. Demonstrate fluency with independent events in various contexts
4. Connect independent events to real-world situations

KEY CONCEPTS:
- Calculate independent probability
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires independent events.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Independent Events' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Simulations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simulations' AND grade_level_min = 6),
  'Simulations Topic Guide', 'Design and use probability simulations',
  'SIMULATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of simulations
2. Apply strategies to solve problems involving simulations
3. Demonstrate fluency with simulations in various contexts
4. Connect simulations to real-world situations

KEY CONCEPTS:
- Design and use probability simulations
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires simulations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simulations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- FRACTIONS (4 topics)
-- ============================================================================


-- Dividing Fractions by Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Fractions by Fractions' AND grade_level_min = 6),
  'Dividing Fractions by Fractions Topic Guide', 'Divide fraction by fraction',
  'DIVIDING FRACTIONS BY FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of dividing fractions by fractions
2. Apply strategies to solve problems involving dividing fractions by fractions
3. Demonstrate fluency with dividing fractions by fractions in various contexts
4. Connect dividing fractions by fractions to real-world situations

KEY CONCEPTS:
- Divide fraction by fraction
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires dividing fractions by fractions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Fractions by Fractions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Dividing Mixed Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Mixed Numbers' AND grade_level_min = 6),
  'Dividing Mixed Numbers Topic Guide', 'Divide mixed numbers',
  'DIVIDING MIXED NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of dividing mixed numbers
2. Apply strategies to solve problems involving dividing mixed numbers
3. Demonstrate fluency with dividing mixed numbers in various contexts
4. Connect dividing mixed numbers to real-world situations

KEY CONCEPTS:
- Divide mixed numbers
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires dividing mixed numbers.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Mixed Numbers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Fraction Division Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fraction Division Word Problems' AND grade_level_min = 6),
  'Fraction Division Word Problems Topic Guide', 'Solve division word problems',
  'FRACTION DIVISION WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of fraction division word problems
2. Apply strategies to solve problems involving fraction division word problems
3. Demonstrate fluency with fraction division word problems in various contexts
4. Connect fraction division word problems to real-world situations

KEY CONCEPTS:
- Solve division word problems
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires fraction division word problems.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fraction Division Word Problems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Complex Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Complex Fractions' AND grade_level_min = 6),
  'Complex Fractions Topic Guide', 'Simplify complex fractions',
  'COMPLEX FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of complex fractions
2. Apply strategies to solve problems involving complex fractions
3. Demonstrate fluency with complex fractions in various contexts
4. Connect complex fractions to real-world situations

KEY CONCEPTS:
- Simplify complex fractions
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires complex fractions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complex Fractions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- GEOMETRY (4 topics)
-- ============================================================================


-- Volume of Rectangular Prisms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Rectangular Prisms' AND grade_level_min = 6),
  'Volume of Rectangular Prisms Topic Guide', 'Use V = l × w × h',
  'VOLUME OF RECTANGULAR PRISMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of volume of rectangular prisms
2. Apply strategies to solve problems involving volume of rectangular prisms
3. Demonstrate fluency with volume of rectangular prisms in various contexts
4. Connect volume of rectangular prisms to real-world situations

KEY CONCEPTS:
- Use V = l × w × h
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires volume of rectangular prisms.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Rectangular Prisms' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Volume with Fractional Dimensions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume with Fractional Dimensions' AND grade_level_min = 6),
  'Volume with Fractional Dimensions Topic Guide', 'Calculate volume with fractions',
  'VOLUME WITH FRACTIONAL DIMENSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of volume with fractional dimensions
2. Apply strategies to solve problems involving volume with fractional dimensions
3. Demonstrate fluency with volume with fractional dimensions in various contexts
4. Connect volume with fractional dimensions to real-world situations

KEY CONCEPTS:
- Calculate volume with fractions
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires volume with fractional dimensions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume with Fractional Dimensions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Volume of Composite Figures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Composite Figures' AND grade_level_min = 6),
  'Volume of Composite Figures Topic Guide', 'Find volume of combined shapes',
  'VOLUME OF COMPOSITE FIGURES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of volume of composite figures
2. Apply strategies to solve problems involving volume of composite figures
3. Demonstrate fluency with volume of composite figures in various contexts
4. Connect volume of composite figures to real-world situations

KEY CONCEPTS:
- Find volume of combined shapes
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires volume of composite figures.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Composite Figures' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- 3D Figures from Nets
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = '3D Figures from Nets' AND grade_level_min = 6),
  '3D Figures from Nets Topic Guide', 'Identify 3D shapes from nets',
  '3D FIGURES FROM NETS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of 3d figures from nets
2. Apply strategies to solve problems involving 3d figures from nets
3. Demonstrate fluency with 3d figures from nets in various contexts
4. Connect 3d figures from nets to real-world situations

KEY CONCEPTS:
- Identify 3D shapes from nets
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires 3d figures from nets.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = '3D Figures from Nets' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;
