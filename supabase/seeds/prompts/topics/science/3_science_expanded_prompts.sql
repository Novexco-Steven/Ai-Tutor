-- Grade 3 Science Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 3 Science expanded topics
-- ============================================================================

-- ============================================================================
-- SCIENTIFIC INVESTIGATION TOPICS (9 topics)
-- ============================================================================

-- Asking Testable Questions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Asking Testable Questions' AND grade_level_min = 3),
  'Asking Testable Questions Topic Guide', 'Developing questions that can be answered through investigation',
  'ASKING TESTABLE QUESTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Experience asking general questions
- Understanding of what questions are
- Familiarity with observations and investigations
- Basic knowledge of scientific inquiry

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Distinguish testable questions from non-testable questions
2. Formulate questions that can be answered through investigation
3. Identify what would need to be measured or observed to answer a question
4. Refine broad questions into specific testable questions

KEY CONCEPTS:
- Testable questions can be answered by doing an experiment or making observations
- Good testable questions often ask "How does ___ affect ___?"
- Questions about opinions or preferences are not scientifically testable
- Testable questions can be answered with evidence and data
- Some good questions require research instead of experimentation

COMMON MISCONCEPTIONS:
- Thinking all questions are testable
- Believing personal preference questions can be tested scientifically
- Confusing testable questions with questions that have known answers
- Not understanding that "why" questions often need to be rephrased

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Present two questions: "Which paper airplane design flies farther?" vs "Which airplane is prettiest?"
   Which question can we test with an experiment? Why?

2. DIRECT INSTRUCTION (12 minutes):
   Define testable question: Can be answered by collecting data through investigation.
   Show examples and non-examples:
   Testable: "Do plants grow taller in sunlight or shade?" (Can measure and compare)
   Not testable: "What is the best kind of plant?" (Opinion-based)
   Introduce question stems for testable questions: "How does ___ affect ___?", "What is the effect of ___ on ___?"
   Demonstrate turning non-testable into testable: "Are magnets cool?" → "Which materials do magnets attract?"

3. GUIDED PRACTICE (15 minutes):
   Provide list of mixed questions. Students sort into "Testable" and "Not Testable" with reasons.
   Partner activity: Turn non-testable questions into testable ones.
   Generate testable questions from scenarios:
   - You notice ice melting at different rates
   - You see different birds at the feeder
   - You wonder about exercise and heart rate
   For each, ask: What could we measure or observe?

4. INDEPENDENT PRACTICE (10 minutes):
   Students observe an object or phenomenon (plant, toy car on ramp, magnet).
   Write one non-testable question and explain why it isn''t testable.
   Write two testable questions about the same thing.
   Share with partner: Would this be possible to test? How?

DIFFERENTIATION:
For Struggling Learners:
- Provide question stems to complete
- Use picture prompts to generate questions
- Start with clear testable vs. not testable examples
- Work in small groups with guided support

For Advanced Learners:
- Identify what variables would be tested in each question
- Write questions that require multi-step investigations
- Evaluate complexity and feasibility of testable questions
- Generate questions for real-world problems

ASSESSMENT INDICATORS:
- Correctly identifies at least 4 out of 5 questions as testable or not testable
- Writes at least two testable questions independently
- Explains what would need to be measured to answer the question
- Revises non-testable questions to make them testable', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Asking Testable Questions' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Planning Fair Tests
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Planning Fair Tests' AND grade_level_min = 3),
  'Planning Fair Tests Topic Guide', 'Designing investigations that test one variable at a time',
  'PLANNING FAIR TESTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to ask testable questions
- Understanding of basic cause and effect
- Experience with simple investigations
- Ability to follow multi-step procedures

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Explain what makes a test "fair"
2. Identify what should be changed and what should stay the same in a test
3. Plan procedures for fair test investigations
4. Understand why fair tests are important in science

KEY CONCEPTS:
- A fair test only changes one thing at a time
- Everything else must stay the same for accurate results
- Changing multiple things makes it impossible to know what caused the result
- Fair tests can be repeated and should give similar results
- Controls are what we keep the same; variables are what we change or measure

COMMON MISCONCEPTIONS:
- Thinking it''s okay to change multiple things
- Not recognizing all the factors that need to be controlled
- Believing that one trial is sufficient
- Confusing "fair" in everyday life with "fair test" in science

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Demonstrate unfair test: Race two toy cars, but give one a push and roll the other.
   Ask: Was this a fair race? Why not?
   What would make it fair? (Same push, same starting point, same surface)

2. DIRECT INSTRUCTION (12 minutes):
   Define fair test: Only one thing changes; everything else stays the same.
   Demonstrate planning a fair test: "Do heavier objects fall faster?"
   What will change? (Weight of objects)
   What will stay the same? (Height of drop, same material, same time, same surface)
   How will we measure? (Time to fall or observation)
   Introduce terms: Variable (what changes), Control (what stays same).
   Emphasize: If we change more than one thing, we won''t know what caused the result.

3. GUIDED PRACTICE (15 minutes):
   Group activity: Plan fair tests for questions:
   "Does the size of a parachute affect how fast it falls?"
   "Do plants need light to grow?"
   "Which type of ball bounces highest?"
   For each, groups identify:
   - What will we change? (independent variable)
   - What will we measure? (dependent variable)
   - What must stay the same? (controls - list at least 3)
   Share plans. Evaluate: Is this a fair test? What might need to change?

4. INDEPENDENT PRACTICE (10 minutes):
   Students choose a testable question or are given one.
   Create a fair test plan using a planning sheet:
   Question / What I''ll Change / What I''ll Measure / What I''ll Keep the Same (list 4)
   Draw diagram of setup.

DIFFERENTIATION:
For Struggling Learners:
- Use very simple scenarios (e.g., which paper towel absorbs more)
- Provide partially completed planning sheets
- Focus on identifying just one change and two controls
- Use pictures and concrete materials

For Advanced Learners:
- Plan multi-variable investigations (one at a time)
- Identify hidden variables that others might miss
- Explain why each control is necessary
- Critique others'' test plans for fairness

ASSESSMENT INDICATORS:
- Explains that fair tests change only one thing
- Identifies what to change, measure, and control in a given scenario
- Plans a fair test with at least three controls
- Understands that fair tests give reliable results', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Planning Fair Tests' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Identifying Variables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Identifying Variables' AND grade_level_min = 3),
  'Identifying Variables Topic Guide', 'Understanding independent, dependent, and controlled variables',
  'IDENTIFYING VARIABLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of fair tests
- Experience planning investigations
- Ability to identify cause and effect
- Understanding of change vs. stay the same

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define variable as something that can change
2. Identify the independent variable (what we change)
3. Identify the dependent variable (what we measure)
4. Identify controlled variables (what we keep the same)

KEY CONCEPTS:
- Variables are factors that can change in an experiment
- Independent variable is what the scientist changes on purpose
- Dependent variable is what we observe or measure (the result)
- Controlled variables are kept the same to make the test fair
- Good experiments clearly identify all variables

COMMON MISCONCEPTIONS:
- Confusing independent and dependent variables
- Thinking there is only one controlled variable
- Not recognizing all the variables present
- Believing variables are the same as materials

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Simple demonstration: Blow up two balloons to different sizes, release them.
   What changed? (Balloon size) What changed because of that? (Distance traveled)
   What stayed the same? (Same balloon type, same release method, same room)

2. DIRECT INSTRUCTION (12 minutes):
   Introduce three types of variables:
   Independent Variable: What I CHANGE on purpose (also called manipulated variable)
   Dependent Variable: What HAPPENS as a result, what I measure or observe (also called responding variable)
   Controlled Variables: What I KEEP THE SAME to make it fair
   Use mnemonic: "I change the Independent variable to see what Depends on it"
   Model identifying variables in scenarios:
   "Does the amount of water affect how tall plants grow?"
   Independent: Amount of water
   Dependent: Height of plants
   Controlled: Type of plant, sunlight, soil, temperature, pot size

3. GUIDED PRACTICE (15 minutes):
   Provide investigation scenarios. Groups identify all variables:
   1. "Do different types of paper affect how far a paper airplane flies?"
   2. "Does the temperature of water affect how fast sugar dissolves?"
   3. "Do taller people have bigger handprints?"
   For each scenario:
   - Identify independent variable
   - Identify dependent variable
   - List at least 4 controlled variables
   Color-code variables on poster: Blue=Independent, Red=Dependent, Green=Controlled

4. INDEPENDENT PRACTICE (10 minutes):
   Students receive or create a testable question.
   Complete variable identification chart:
   Question / Independent Variable / Dependent Variable / Controlled Variables (minimum 4)
   Explain in one sentence: "I will change ____ to see how it affects ____."

DIFFERENTIATION:
For Struggling Learners:
- Use concrete, hands-on scenarios
- Start with clearly distinct variables
- Provide sentence frames: "I change ____. I measure ____. I keep ____ the same."
- Use color-coding consistently

For Advanced Learners:
- Identify variables in complex, multi-step experiments
- Explain why specific controlled variables matter
- Design experiments after identifying possible variables
- Recognize hidden or confounding variables

ASSESSMENT INDICATORS:
- Correctly identifies independent variable in 4 out of 5 scenarios
- Correctly identifies dependent variable in 4 out of 5 scenarios
- Lists at least three controlled variables for a given experiment
- Explains the difference between independent and dependent variables', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Identifying Variables' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Using Scientific Tools
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Using Scientific Tools' AND grade_level_min = 3),
  'Using Scientific Tools Topic Guide', 'Advanced use of measurement and observation tools',
  'USING SCIENTIFIC TOOLS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic familiarity with hand lens, ruler, thermometer
- Ability to read numbers and measure
- Fine motor skills for tool handling
- Understanding of measurement units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use tools accurately to make quantitative observations
2. Select appropriate tools for different investigations
3. Read measurements correctly with proper units
4. Understand how tools extend our ability to observe

KEY CONCEPTS:
- Different tools are designed for different types of measurements
- Accurate use of tools requires practice and care
- Measurements must include units (cm, g, °C, etc.)
- Tools help us make precise, numerical observations
- Multiple measurements improve accuracy

COMMON MISCONCEPTIONS:
- Thinking any tool works for any measurement
- Forgetting to include units with measurements
- Believing one measurement is always enough
- Not understanding importance of tool accuracy

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Challenge: Estimate length of pencil. Then measure with ruler.
   How close was your estimate? Why is measuring more accurate than estimating?

2. DIRECT INSTRUCTION (12 minutes):
   Review and deepen understanding of key tools:
   - Ruler/Measuring Tape: Length and distance (cm, m)
   - Balance/Scale: Mass (g, kg)
   - Graduated Cylinder: Volume of liquids (mL)
   - Thermometer: Temperature (°C or °F)
   - Hand Lens/Microscope: Magnification
   - Stopwatch: Time (seconds, minutes)
   For each tool, demonstrate: proper technique, how to read measurement, common mistakes.
   Emphasize: Always include units! "5" means nothing, but "5 cm" tells us length.

3. GUIDED PRACTICE (18 minutes):
   Tool stations - students rotate, practicing each tool:
   Station 1: Measure length and width of objects with ruler
   Station 2: Find mass of objects using balance
   Station 3: Measure volume of liquids with graduated cylinder
   Station 4: Record temperature of different water samples
   Station 5: Time how long it takes objects to complete tasks
   Station 6: Observe details with hand lens
   Record all measurements with correct units in science notebook.

4. INDEPENDENT PRACTICE (10 minutes):
   Students select an object and investigate it using three different tools.
   Record findings: Tool Used / Measurement / Units
   Explain: Which tools were most helpful for learning about this object? Why?

DIFFERENTIATION:
For Struggling Learners:
- Start with one or two tools
- Use tools with clear, simple markings
- Provide measurement guides with pictures
- Work with partners for support

For Advanced Learners:
- Calculate with measurements (perimeter, area, density)
- Compare accuracy of different measurement tools
- Identify sources of measurement error
- Use more advanced tools (microscopes, electronic scales)

ASSESSMENT INDICATORS:
- Uses at least four different tools correctly
- Records measurements with appropriate units
- Selects appropriate tool for a given measurement task
- Explains how tools help scientists observe more accurately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Using Scientific Tools' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Collecting Data
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Collecting Data' AND grade_level_min = 3),
  'Collecting Data Topic Guide', 'Systematic gathering and recording of scientific data',
  'COLLECTING DATA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Experience using scientific tools
- Ability to make and record observations
- Understanding of measurements and units
- Basic organizational skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Collect data systematically during investigations
2. Record both qualitative and quantitative data
3. Organize data collection to avoid losing information
4. Understand the importance of accurate, honest data collection

KEY CONCEPTS:
- Data is information gathered during investigations
- Qualitative data describes properties (colors, textures, behaviors)
- Quantitative data uses numbers and measurements
- Data must be recorded accurately and immediately
- Multiple trials provide better data than single trials
- Data should be organized in tables or charts

COMMON MISCONCEPTIONS:
- Thinking memory is sufficient without recording
- Believing it''s okay to change data to match expectations
- Not recognizing that data includes both numbers and descriptions
- Assuming one data point is enough

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Show messy, disorganized data notes vs. clear data table.
   Which would be easier to use? Why does organization matter?

2. DIRECT INSTRUCTION (12 minutes):
   Distinguish qualitative (descriptions) from quantitative (numbers) data.
   Model collecting both types during simple observation (of plant or object).
   Qualitative: green, smooth, oval-shaped
   Quantitative: 12 cm tall, 8 leaves, 3 cm wide
   Demonstrate organizing data in tables with clear headings and units.
   Emphasize: Record data immediately, honestly, and accurately.
   Show value of multiple trials: do same test 3 times, average results.

3. GUIDED PRACTICE (18 minutes):
   Class investigation: "How many drops of water fit on different coin surfaces?"
   Create data table together: Coin Type / Trial 1 / Trial 2 / Trial 3 / Average
   Students work in pairs to collect data for all coin types.
   Record both quantitative data (number of drops) and qualitative observations (how water looks on coin).
   Discuss: Why do results vary between trials? Why is averaging helpful?

4. INDEPENDENT PRACTICE (10 minutes):
   Students plan data collection for a simple investigation.
   Create appropriate data table with labeled columns and rows.
   Include space for: what''s being tested, measurements, units, trials.
   Share data tables: Would someone else understand how to use this?

DIFFERENTIATION:
For Struggling Learners:
- Provide pre-made data tables to fill in
- Focus on collecting one type of data at a time
- Use pictures or symbols in addition to words/numbers
- Work with partner or small group

For Advanced Learners:
- Design complex data tables for multi-variable experiments
- Collect additional related data
- Identify potential sources of error in data collection
- Calculate averages, ranges, or other simple statistics

ASSESSMENT INDICATORS:
- Records both qualitative and quantitative data
- Organizes data in table format with appropriate labels
- Records data accurately with units where appropriate
- Explains why multiple trials are important', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Collecting Data' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Organizing Data in Tables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Organizing Data in Tables' AND grade_level_min = 3),
  'Organizing Data in Tables Topic Guide', 'Creating and using data tables effectively',
  'ORGANIZING DATA IN TABLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Experience collecting data
- Understanding of rows and columns
- Ability to read and create simple charts
- Basic organizational skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Create data tables with appropriate rows and columns
2. Label tables with clear headings and units
3. Fill in data tables accurately
4. Read and interpret data from tables

KEY CONCEPTS:
- Data tables organize information in rows and columns
- Column headings tell what kind of information is in each column
- Rows usually represent different trials or different items tested
- Units must be included in headings or data cells
- Well-organized tables make data easy to understand and use

COMMON MISCONCEPTIONS:
- Putting all data in one column without organization
- Forgetting to label columns and rows
- Not including units in the table
- Mixing up what belongs in rows vs. columns

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Show list of random data vs. same data in organized table.
   Which is easier to find information? Which is easier to compare?

2. DIRECT INSTRUCTION (12 minutes):
   Show structure of data table: title, column headings, row labels.
   Model creating table for investigation: "Plant growth with different amounts of water"
   Title: Plant Growth with Different Water Amounts
   Column headings: Plant ID | Water Amount (mL per day) | Height Day 1 (cm) | Height Day 7 (cm) | Growth (cm)
   Row labels: Plant A, Plant B, Plant C
   Demonstrate filling in data accurately.
   Show how to read across rows to compare and down columns to see patterns.

3. GUIDED PRACTICE (15 minutes):
   Provide investigation scenario: "Testing how temperature affects ice melting"
   As a class, design appropriate data table:
   - What columns are needed? (Temperature, Time to Melt, Observations)
   - What rows are needed? (Different temperatures tested)
   - What units are needed? (°C, minutes)
   Fill in sample data together.
   Practice reading table: "At which temperature did ice melt fastest?"
   Students create another table in pairs for different scenario.

4. INDEPENDENT PRACTICE (10 minutes):
   Given an investigation description, students design and create an appropriate data table.
   Scenario: "Comparing how far different types of balls bounce when dropped from 1 meter"
   Table must include: proper title, labeled columns with units, rows for each ball type, space for multiple trials.
   Check with partner: Does your table make sense? Can we find information easily?

DIFFERENTIATION:
For Struggling Learners:
- Provide table templates with some headings filled in
- Start with simple 2-column tables
- Use color-coding for columns
- Work with teacher in small group

For Advanced Learners:
- Create tables for complex multi-variable experiments
- Add calculated columns (averages, differences)
- Design tables that allow for unexpected data
- Compare different table formats for same data

ASSESSMENT INDICATORS:
- Creates data table with clear title and column headings
- Includes appropriate units in table headings or cells
- Organizes data logically in rows and columns
- Accurately reads information from data tables', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Organizing Data in Tables' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Creating Graphs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Creating Graphs' AND grade_level_min = 3),
  'Creating Graphs Topic Guide', 'Visual representation of data through graphs',
  'CREATING GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to organize data in tables
- Understanding of numerical order and comparison
- Experience with basic graphs (picture graphs, bar graphs)
- Counting and number line skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Create bar graphs from data tables
2. Label graph axes with titles and units
3. Choose appropriate scales for graphs
4. Interpret information from graphs

KEY CONCEPTS:
- Graphs show data visually so patterns are easier to see
- Bar graphs compare amounts of different items or categories
- X-axis (horizontal) shows what was tested
- Y-axis (vertical) shows what was measured
- Graphs need titles and labeled axes to be understood
- The scale (numbers on Y-axis) must fit the data

COMMON MISCONCEPTIONS:
- Thinking graphs are just decorations
- Forgetting to label axes and include units
- Using inconsistent spacing or scale
- Not understanding that graphs represent data, not pictures

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Show data table of favorite fruits in class.
   Create quick bar graph together on board.
   Ask: Is it easier to see which fruit is most popular in the table or the graph?

2. DIRECT INSTRUCTION (12 minutes):
   Identify parts of a bar graph: title, X-axis label, Y-axis label, scale, bars.
   Model creating bar graph from data table (e.g., plant heights):
   1. Draw X and Y axes
   2. Label X-axis: "Plant Type"
   3. Label Y-axis: "Height (cm)"
   4. Determine scale for Y-axis based on data (0 to highest value, by 2s or 5s)
   5. Draw bars for each data point
   6. Add title: "Plant Heights After Two Weeks"
   Demonstrate reading graph: "Which plant is tallest? How much taller?"

3. GUIDED PRACTICE (18 minutes):
   Provide data table: "Number of seeds that sprouted for different plants"
   Students work in pairs to create bar graph:
   - Determine appropriate scale together
   - Draw and label axes
   - Create bars accurately
   - Add title
   Share graphs: Do all look similar? Any differences in how we showed data?
   Practice reading each other''s graphs: answer questions about the data.

4. INDEPENDENT PRACTICE (10 minutes):
   Students receive simple data table.
   Independently create bar graph with all required parts.
   Write two questions that can be answered using their graph.
   Trade with partner: Can they answer the questions using the graph?

DIFFERENTIATION:
For Struggling Learners:
- Provide graph paper with pre-drawn axes
- Use simple data with small numbers
- Offer step-by-step checklist for graph creation
- Allow use of graph templates

For Advanced Learners:
- Create graphs with larger ranges requiring skip counting
- Make graphs with more data points
- Explain why bar graphs are better than tables for showing patterns
- Create and interpret line plots or picture graphs

ASSESSMENT INDICATORS:
- Creates bar graph with labeled axes and title
- Includes appropriate units on axis labels
- Uses consistent scale on Y-axis
- Draws bars that accurately represent data
- Answers questions by reading graphs', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Creating Graphs' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Drawing Conclusions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Drawing Conclusions' AND grade_level_min = 3),
  'Drawing Conclusions Topic Guide', 'Using evidence to answer investigation questions',
  'DRAWING CONCLUSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Experience collecting and organizing data
- Ability to analyze graphs and tables
- Understanding of evidence and claims
- Critical thinking skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use data as evidence to answer investigation questions
2. Distinguish between observations and conclusions
3. Support conclusions with specific evidence from data
4. Recognize when data does not support a conclusion

KEY CONCEPTS:
- Conclusions answer the investigation question using evidence
- Good conclusions refer to specific data as support
- Conclusions may confirm or contradict predictions - both are valid
- Patterns in data help us draw stronger conclusions
- Sometimes data is unclear and we cannot draw firm conclusions

COMMON MISCONCEPTIONS:
- Thinking conclusions are just opinions
- Believing conclusions must match predictions to be "right"
- Drawing conclusions without looking at data
- Confusing conclusions with observations or summaries

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Show graph of plant growth with and without fertilizer.
   Ask: What can we conclude? How do we know?
   Emphasize: Conclusions need evidence!

2. DIRECT INSTRUCTION (12 minutes):
   Define conclusion: A statement that answers our question based on evidence from data.
   Model drawing conclusion from investigation: "Do taller people have longer arms?"
   Look at data table and graph together.
   Identify pattern: As height increases, arm length generally increases.
   Write conclusion: "Based on our data, taller people tend to have longer arms. For example, the tallest person (150 cm) had arms measuring 60 cm, while the shortest person (120 cm) had arms measuring 50 cm."
   Emphasize structure: Claim + Evidence
   Show weak vs. strong conclusions:
   Weak: "Tall people have long arms." (No evidence)
   Strong: "Our data shows tall people have long arms because..." (Evidence cited)

3. GUIDED PRACTICE (15 minutes):
   Provide data tables and graphs from class investigations.
   In groups, answer: What was the question? What patterns do you see? What conclusion can we draw?
   Practice writing conclusions using sentence frame:
   "Based on our data, ____ (claim) because ____ (evidence from data)."
   Groups share conclusions. Evaluate: Is there evidence? Does it answer the question?
   Practice identifying conclusions that don''t match data (common errors).

4. INDEPENDENT PRACTICE (10 minutes):
   Students receive data from a simple experiment.
   Write investigation question being answered.
   Identify key patterns in data.
   Write conclusion statement with at least one specific piece of evidence.
   Self-check: Did I answer the question? Did I include evidence?

DIFFERENTIATION:
For Struggling Learners:
- Provide sentence frames for conclusions
- Use very clear, obvious patterns in data
- Work in pairs to identify evidence
- Focus on simple cause-effect conclusions

For Advanced Learners:
- Draw conclusions from complex or ambiguous data
- Identify limitations in conclusions (sample size, errors)
- Compare multiple data sets to draw broader conclusions
- Explain what additional data would strengthen conclusions

ASSESSMENT INDICATORS:
- Writes conclusion that answers the investigation question
- Supports conclusion with specific evidence from data
- Distinguishes between conclusions and observations
- Recognizes when data does or does not support a claim', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Drawing Conclusions' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Communicating Results
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Communicating Results' AND grade_level_min = 3),
  'Communicating Results Topic Guide', 'Sharing scientific investigations clearly and effectively',
  'COMMUNICATING RESULTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Experience conducting investigations
- Ability to organize information logically
- Basic presentation skills
- Understanding of conclusions and evidence

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Communicate investigation results in multiple formats (oral, written, visual)
2. Include all essential parts of scientific communication (question, procedure, results, conclusion)
3. Use data displays (tables, graphs) to support explanations
4. Listen critically to others'' scientific presentations

KEY CONCEPTS:
- Scientific communication follows a standard format
- Clear communication allows others to understand and repeat investigations
- Visual displays (graphs, diagrams) enhance understanding
- Scientists share results so knowledge can grow
- Good communication includes question, methods, data, and conclusions

COMMON MISCONCEPTIONS:
- Thinking only final results matter (procedure and data are important too)
- Believing scientific communication is only written
- Not including enough detail for others to replicate
- Thinking negative results aren''t worth sharing

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Show two presentations of same experiment: one missing key information, one complete.
   Which helps you understand what happened? What''s missing from the first?

2. DIRECT INSTRUCTION (12 minutes):
   Introduce standard scientific communication format:
   1. Question/Purpose: What did you investigate?
   2. Hypothesis/Prediction: What did you think would happen?
   3. Materials: What did you use?
   4. Procedure: What steps did you follow?
   5. Data/Results: What did you observe/measure? (Include tables/graphs)
   6. Conclusion: What did you learn? Does data support hypothesis?
   Model creating simple poster or report following this format.
   Demonstrate using graphs and diagrams to show results clearly.

3. GUIDED PRACTICE (18 minutes):
   Using a recent class investigation, groups create a presentation:
   - Option 1: Poster with all six sections
   - Option 2: Oral presentation with visual aids
   - Option 3: Written report
   Provide templates with sections labeled.
   Groups present to class (2-3 minutes each).
   Class provides feedback: Was information clear? What questions do we have?

4. INDEPENDENT PRACTICE (10 minutes):
   Students create "Mini Science Report" for a simple investigation they conducted.
   Include all six sections in notebook or on template.
   Must include at least one data display (table or graph).
   Peer review: Partner checks that all sections are complete.

DIFFERENTIATION:
For Struggling Learners:
- Provide heavily scaffolded templates
- Allow alternative formats (drawing with labels, oral recording)
- Focus on 3-4 main sections instead of all six
- Work in small groups with teacher support

For Advanced Learners:
- Create polished, detailed presentations
- Include analysis of sources of error
- Compare their results to other published findings
- Present to wider audiences (other classes, parents)

ASSESSMENT INDICATORS:
- Includes all essential parts of scientific communication
- Presents information in logical order
- Uses at least one data display effectively
- Communicates clearly enough for others to understand and potentially replicate', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Communicating Results' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Grade 3 Science Expanded Prompts Created:
-- - Scientific Investigation: 9 comprehensive teaching prompts
-- Total: 9 topics with detailed pedagogical guidance
-- ============================================================================
