-- Grade 1 Science Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 1 Science expanded topics
-- ============================================================================

-- ============================================================================
-- SCIENTIFIC EXPLORATION TOPICS (8 topics)
-- ============================================================================

-- What is Science?
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'What is Science?' AND grade_level_min = 1),
  'What is Science Topic Guide', 'Introduction to scientific thinking for first graders',
  'WHAT IS SCIENCE? - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic observation skills
- Curiosity about the world
- Ability to ask questions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define science as learning about the world around us
2. Understand that scientists ask questions and find answers
3. Identify ways scientists learn (observing, experimenting, reading)
4. Recognize themselves as young scientists

KEY CONCEPTS:
- Science is learning about how the world works
- Scientists study nature, animals, plants, weather, and many other things
- Everyone can be a scientist by asking questions and looking for answers
- Science uses observation, experiments, and research
- Science helps us understand and solve problems

COMMON MISCONCEPTIONS:
- Thinking only adults in labs are scientists
- Believing science is just about memorizing facts
- Not understanding that science is all around us
- Thinking you have to be "smart" to do science

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show an interesting object or phenomenon (magnet attracting, plant growing, ice melting). Ask: "How can we learn about this?"

2. DIRECT INSTRUCTION (10 minutes):
   Define science: learning about the world by asking questions and finding answers
   Introduce what scientists do: observe carefully, ask questions, test ideas, share findings
   Show pictures of different kinds of scientists: marine biologist, astronomer, botanist, chemist
   Emphasize: You are all scientists! When you wonder "why?" you''re thinking like a scientist
   Discuss science topics: living things, weather, space, matter, energy

3. GUIDED PRACTICE (12 minutes):
   Science walk: Explore classroom or outdoors as scientists
   Students observe and ask questions: "Why is that bird singing? Why is the sky blue?"
   Record questions on "Our Science Questions" chart
   Demonstrate thinking like a scientist: "I wonder... How could we find out?"
   Read a book about scientists or watch a video showing scientists at work

4. INDEPENDENT PRACTICE (10 minutes):
   Students draw themselves as scientists doing something to learn about the world
   Complete sentence frame: "Scientists learn about ___. I am a scientist when I ___."
   Share drawings with the class

DIFFERENTIATION:
For Struggling Learners:
- Use concrete examples from their daily experience
- Focus on simple definition: science is learning about our world
- Provide picture cards showing science activities
- Model asking science questions with familiar objects

For Advanced Learners:
- Explore different science fields (biology, chemistry, physics, astronomy)
- Research a famous scientist and their discoveries
- Generate complex science questions to investigate
- Create a "Scientist''s Toolbox" with tools scientists use

ASSESSMENT INDICATORS:
- Defines science as learning about the world
- Asks questions about natural phenomena
- Identifies activities that scientists do
- Shows enthusiasm for scientific exploration', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What is Science?' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Asking Good Questions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Asking Good Questions' AND grade_level_min = 1),
  'Asking Good Questions Topic Guide', 'Teaching students to ask testable science questions',
  'ASKING GOOD QUESTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of what science is
- Ability to form questions
- Curiosity about how things work

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Distinguish between questions we can investigate and those we cannot
2. Form questions using question words (what, how, why, when)
3. Ask questions based on observations
4. Understand that good questions lead to investigations

KEY CONCEPTS:
- Good science questions can be answered through observation or testing
- Questions often start with: What? How? Why? Where? When?
- We ask questions when we notice something interesting or surprising
- Some questions can be answered by investigating, others by researching
- Scientists ask lots of questions - it''s okay if we don''t know the answer

COMMON MISCONCEPTIONS:
- Thinking there''s only one right question to ask
- Believing they should already know all the answers
- Not understanding that some questions are easier to investigate than others
- Thinking questions have to be complicated

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present a strange or interesting scenario: ice melting in different conditions. Model wondering aloud: "Hmm, I wonder why this ice melted faster? What could I ask about this?"

2. DIRECT INSTRUCTION (10 minutes):
   Explain that good science questions are ones we can investigate or research
   Model forming questions from observations: See a bird → Ask "What does it eat?" "Where does it sleep?"
   Introduce question starters: What happens when...? How does...? Why does...?
   Distinguish: "Do I like ice cream?" (opinion) vs "Does ice cream melt faster in sun or shade?" (testable)
   Practice converting observations to questions: "The flower is wilting" → "What does the flower need to grow?"

3. GUIDED PRACTICE (12 minutes):
   Provide interesting objects or pictures (magnet, plants growing, weather photos)
   Students generate questions about each one as a class
   Sort questions: "Can we investigate this?" vs "Would we need to research this?"
   Question improvement: Turn weak questions into stronger ones
   Example: "Is space big?" → "How big is our solar system?"
   Create an "I Wonder..." wall where students can post questions

4. INDEPENDENT PRACTICE (9 minutes):
   Students observe something in the classroom or outside
   Write or draw their observation
   Formulate one question they have about it
   Share question with a partner: "I noticed ___. I wonder ___."

DIFFERENTIATION:
For Struggling Learners:
- Provide question frames: "What happens if ___?" "How does ___ work?"
- Focus on simple observations and questions
- Use picture cards to prompt questions
- Practice with very familiar objects

For Advanced Learners:
- Generate multiple questions from one observation
- Categorize questions by how we''d find answers (experiment, research, observe)
- Refine questions to make them more specific
- Begin planning how to investigate their questions

ASSESSMENT INDICATORS:
- Forms questions using question words
- Asks questions based on observations
- Distinguishes testable from non-testable questions
- Shows curiosity through questioning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Asking Good Questions' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Making Predictions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Making Predictions' AND grade_level_min = 1),
  'Making Predictions Topic Guide', 'Teaching scientific prediction skills',
  'MAKING PREDICTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding cause and effect
- Ability to make observations
- Experience with "what comes next" patterns

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Make predictions based on observations
2. Understand that predictions are educated guesses
3. Use the phrase "I think... because..." when predicting
4. Recognize that predictions can be tested

KEY CONCEPTS:
- A prediction is a guess about what will happen
- Good predictions are based on what we already know or observe
- We can test predictions to see if they''re correct
- It''s okay if predictions are wrong - we learn either way
- Scientists use predictions to guide their investigations

COMMON MISCONCEPTIONS:
- Thinking predictions must be correct or they failed
- Confusing predictions with wild guesses
- Believing predictions are the same as knowing
- Not using evidence to support predictions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Drop a ball. Ask: "What do you think will happen if I drop this ball again? Why do you think that?"

2. DIRECT INSTRUCTION (10 minutes):
   Define prediction: An educated guess about what will happen, based on what we know
   Emphasize predictions use evidence: "I think ___ because ___"
   Model making predictions: "I predict the ice will melt because it''s warm in here."
   Explain that we test predictions by observing or experimenting
   Share that scientists make predictions all the time
   Stress: Wrong predictions teach us too! They''re not failures.

3. GUIDED PRACTICE (13 minutes):
   Prediction activities with immediate testing:
   Activity 1: Will this object sink or float? "I predict ___ because ___" Test it!
   Activity 2: Which will roll down a ramp faster? Predict, then test
   Activity 3: What will happen if we water this plant? Predict (long-term)
   After each test, discuss: Was your prediction correct? What did you learn?
   Create a prediction chart: Prediction / What Happened / What We Learned

4. INDEPENDENT PRACTICE (9 minutes):
   Set up a simple scenario: ice cube on a plate, plant without water, etc.
   Students draw and write their prediction: "I think ___ will happen."
   Add "because ___" with teacher support
   Share predictions with class

DIFFERENTIATION:
For Struggling Learners:
- Use very obvious cause-effect scenarios (drop object → it falls)
- Provide sentence frames for predictions
- Focus on "I think ___" before adding "because"
- Use pictures to show predictions

For Advanced Learners:
- Make multiple predictions for one scenario
- Explain reasoning with multiple pieces of evidence
- Make longer-term predictions requiring days to test
- Distinguish between likely and unlikely predictions

ASSESSMENT INDICATORS:
- Makes predictions before events occur
- Bases predictions on observations or prior knowledge
- Uses "because" to explain reasoning
- Understands that wrong predictions still provide learning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Making Predictions' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Planning Investigations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Planning Investigations' AND grade_level_min = 1),
  'Planning Investigations Topic Guide', 'Teaching basic investigation planning',
  'PLANNING INVESTIGATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to ask questions
- Experience making predictions
- Understanding of simple sequences

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that investigations help answer questions
2. Identify steps to investigate a question (plan, do, observe, share)
3. Determine what materials are needed for an investigation
4. Follow a simple investigation plan

KEY CONCEPTS:
- An investigation is how we test our ideas and answer questions
- We plan before we investigate: What will we do? What do we need?
- Investigation steps: Ask question → Make prediction → Plan → Do → Observe → Share
- We need the right materials and tools for our investigation
- Following the plan helps us get good results

COMMON MISCONCEPTIONS:
- Thinking we should just start without planning
- Believing investigations are too hard for kids
- Not understanding why planning is important
- Confusing investigations with random play

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Present a question: "Do all balls bounce the same height?" Ask: "How could we find out? What would we need to do?"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce investigation process:
   1. Ask a question (What do we want to know?)
   2. Make a prediction (What do we think will happen?)
   3. Plan (How will we test it? What do we need?)
   4. Do the investigation (Test our idea)
   5. Observe and record (What happened?)
   6. Share (Tell others what we learned)
   Model planning: For "Do plants need light?" we need: plant, dark place, light place, water, time
   Show that planning helps us remember what to do and not forget anything

3. GUIDED PRACTICE (15 minutes):
   Choose a simple investigation as a class: "Which paper towel soaks up more water?"
   Work through planning together:
   - Question: clear and focused
   - Prediction: what we think and why
   - Materials: paper towels, water, measuring cups, tray
   - Steps: 1. Pour same amount of water. 2. Place towel on water. 3. Observe how much soaks up
   Conduct the investigation following the plan
   Observe and discuss results

4. INDEPENDENT PRACTICE (11 minutes):
   Provide a simple question for small groups: "Which magnet is strongest?"
   Groups plan their investigation with teacher support:
   - Draw or write materials needed
   - List or draw steps (first, next, then, last)
   If time, begin investigation; if not, save plan for next class

DIFFERENTIATION:
For Struggling Learners:
- Use very simple investigations with few steps
- Provide pre-made plan templates with pictures
- Focus on identifying needed materials
- Conduct investigation as whole class

For Advanced Learners:
- Plan more complex multi-step investigations
- Consider what could go wrong and plan for it
- Write detailed step-by-step procedures
- Generate their own investigation questions to plan

ASSESSMENT INDICATORS:
- Identifies materials needed for an investigation
- Sequences investigation steps logically
- Follows a simple investigation plan
- Understands purpose of planning before doing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Planning Investigations' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Using Tools
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Using Tools' AND grade_level_min = 1),
  'Using Tools Topic Guide', 'Teaching proper use of science tools',
  'USING TOOLS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Fine motor skills for tool manipulation
- Understanding of safe behavior
- Ability to follow directions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify common science tools and their purposes
2. Use tools safely and correctly
3. Understand that tools help us observe and measure better
4. Choose appropriate tools for different investigations

KEY CONCEPTS:
- Scientists use tools to help them observe, measure, and investigate
- Common tools: hand lens/magnifying glass, ruler, balance, thermometer, measuring cup
- Each tool has a specific purpose
- We must use tools carefully and safely
- Tools help us see more, measure accurately, and gather better information

COMMON MISCONCEPTIONS:
- Thinking tools are toys to play with
- Believing you can use any tool for any job
- Not understanding how tools improve observations
- Misusing tools (looking at sun with magnifier, breaking thermometers)

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show a tiny object or detail. Ask students to observe it. Then provide magnifying glasses. "What do you notice now that you didn''t see before?"

2. DIRECT INSTRUCTION (12 minutes):
   Introduce each tool with demonstration:
   1. Magnifying Glass: Makes small things look bigger so we see details
      - Demo: observe leaf, fabric, or insect
      - Safety: Never look at sun with magnifying glass!
   2. Ruler: Measures how long or tall something is
      - Demo: measure pencil, book length
   3. Balance: Compares weights, tells which is heavier
      - Demo: compare weight of rock and feather
   4. Thermometer: Measures temperature (how hot or cold)
      - Demo: check room temperature, compare warm and cold water
   5. Measuring Cup: Measures liquid amounts
      - Demo: pour and measure water
   Emphasize safe, careful use of each tool

3. GUIDED PRACTICE (15 minutes):
   Tool stations: Students rotate through stations, using each tool
   Station 1: Use magnifying glass to observe objects, draw what you see
   Station 2: Measure objects with rulers, record lengths
   Station 3: Use balance to compare objects, sort by weight
   Station 4: Read thermometer in different water temperatures
   Station 5: Measure and pour liquids with measuring cups
   Teacher circulates, coaching proper use and safety

4. INDEPENDENT PRACTICE (9 minutes):
   Tool matching activity: Given scenarios, students choose which tool to use
   "I want to see tiny details on a bug." → Magnifying glass
   "I want to know how long my shoe is." → Ruler
   "I want to know which rock is heavier." → Balance
   Students draw themselves using one science tool correctly

DIFFERENTIATION:
For Struggling Learners:
- Focus on two tools (magnifying glass and ruler)
- Provide hand-over-hand support
- Use picture cards showing tool use
- More time at each station with adult support

For Advanced Learners:
- Introduce additional tools (dropper, stopwatch, measuring tape)
- Use tools in combination for investigations
- Read measurements more precisely
- Research how scientists use advanced tools (microscopes, telescopes)

ASSESSMENT INDICATORS:
- Names at least 3 science tools
- Uses magnifying glass and ruler correctly
- Explains purpose of each tool
- Demonstrates safe tool handling', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Using Tools' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Recording Observations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Recording Observations' AND grade_level_min = 1),
  'Recording Observations Topic Guide', 'Teaching observation documentation',
  'RECORDING OBSERVATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Observation skills
- Basic drawing and writing abilities
- Understanding that we can forget things without records

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Record observations through drawings and words
2. Include important details in their records
3. Understand why scientists record observations
4. Use science notebooks or journals

KEY CONCEPTS:
- Recording means writing down or drawing what we observe
- Scientists record so they don''t forget and can share with others
- Good records include details: colors, sizes, shapes, what happened
- We can record with pictures, words, numbers, and charts
- Science notebooks keep all our observations in one place

COMMON MISCONCEPTIONS:
- Thinking they need to remember everything without recording
- Believing drawings must be artistic rather than accurate
- Not including enough detail in records
- Thinking recording takes away from observing

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show an object briefly, then hide it. Ask students to describe it from memory. Reveal object again. "What did we forget? How could recording help?"

2. DIRECT INSTRUCTION (10 minutes):
   Explain why we record: to remember, to compare later, to share with others
   Show examples of science notebooks from real scientists
   Demonstrate recording an observation:
   - Draw what you see (doesn''t have to be perfect, but should be accurate)
   - Add labels with arrows: color words, parts, sizes
   - Write what you notice: "The leaf has 5 points" "It feels rough"
   - Include date and your name
   Model recording a change: before/after drawings

3. GUIDED PRACTICE (15 minutes):
   Provide interesting objects for observation (plants, rocks, animals, weather)
   Students create observation records in science notebooks:
   - Draw the object carefully
   - Add color
   - Label parts or properties
   - Write 1-2 sentences about what they observe
   Teacher circulates, asking: "What else do you notice? Can you add that to your drawing?"
   Students share their records with a partner

4. INDEPENDENT PRACTICE (11 minutes):
   Begin a long-term observation (plant growing, ice melting, moon phases)
   Students make their first observation record
   "Day 1" observation with drawing and notes
   Plan to observe and record again tomorrow or next week
   Store records in science notebooks

DIFFERENTIATION:
For Struggling Learners:
- Provide observation templates with some details pre-drawn
- Focus on drawing before adding words
- Scribe words for students who dictate observations
- Use stamps or stickers to supplement drawings

For Advanced Learners:
- Include measurements in records (length, weight, temperature)
- Write detailed descriptions
- Create comparison charts (before/after, object A vs object B)
- Record over extended periods, noting changes

ASSESSMENT INDICATORS:
- Creates observation drawings with relevant details
- Adds labels or words to recordings
- Includes colors, shapes, and notable features
- Understands purpose of recording observations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Recording Observations' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Comparing Results
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Comparing Results' AND grade_level_min = 1),
  'Comparing Results Topic Guide', 'Teaching analysis and comparison of findings',
  'COMPARING RESULTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Experience making predictions
- Ability to make observations
- Understanding of same/different

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare investigation results to predictions
2. Identify whether predictions were correct or incorrect
3. Explain what they learned from results
4. Understand that unexpected results teach us too

KEY CONCEPTS:
- After investigating, we compare what happened to what we predicted
- Sometimes results match our prediction, sometimes they don''t
- Both expected and unexpected results teach us something
- We look for patterns in results: What was the same? What was different?
- Comparing helps us draw conclusions

COMMON MISCONCEPTIONS:
- Thinking wrong predictions mean the investigation failed
- Believing we should change results to match predictions
- Not understanding value of unexpected findings
- Thinking comparing is just saying "same" or "different"

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Quick prediction activity: "Will this sink or float?" Test it. "Was your prediction right? What did you learn?"

2. DIRECT INSTRUCTION (10 minutes):
   Review: We made predictions (what we thought would happen) and did investigations (to test)
   Now we compare: What did we predict? What actually happened?
   Model comparison:
   - Prediction: "I thought the heavy ball would roll faster."
   - Result: "Both balls rolled at the same speed."
   - Comparison: "My prediction was incorrect. I learned that weight doesn''t change speed on the ramp."
   Emphasize: Being wrong means we learned something new!
   Show comparison words: same as expected, different from expected, surprising

3. GUIDED PRACTICE (15 minutes):
   Conduct a class investigation with prediction and results:
   Question: "Which liquid (water, oil, syrup) will the marble fall through fastest?"
   Students make predictions with reasons
   Conduct investigation together, observe carefully
   Record results
   Compare: Create a class chart with predictions and results side by side
   Discuss: "What matched? What surprised us? What did we learn?"
   Practice saying: "I predicted ___, but the result was ___. I learned ___."

4. INDEPENDENT PRACTICE (11 minutes):
   Give students data from a simple investigation (pictures or simple charts)
   Example: "Three students predicted which paper airplane would fly farthest."
   Students compare predictions to results
   Draw or write what happened vs what was predicted
   Answer: "What did we learn from this investigation?"

DIFFERENTIATION:
For Struggling Learners:
- Use very clear, simple investigations with obvious results
- Focus on "same" or "different" comparison
- Provide sentence frames: "We predicted ___. We saw ___."
- Use visual charts for comparison

For Advanced Learners:
- Analyze why results differed from predictions
- Look for patterns across multiple trials
- Suggest new investigations based on unexpected results
- Create their own comparison charts

ASSESSMENT INDICATORS:
- Compares results to original predictions
- Identifies whether prediction was correct
- Explains what was learned from results
- Values unexpected results as learning opportunities', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Results' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Sharing What We Learned
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Sharing What We Learned' AND grade_level_min = 1),
  'Sharing What We Learned Topic Guide', 'Teaching science communication skills',
  'SHARING WHAT WE LEARNED - TOPIC TEACHING GUIDE

PREREQUISITES:
- Experience doing investigations
- Recorded observations or results
- Basic presentation skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Present findings from investigations to others
2. Use drawings, objects, or demonstrations when sharing
3. Answer questions about their investigations
4. Listen respectfully when others share

KEY CONCEPTS:
- Scientists share their discoveries so others can learn
- We can share by talking, showing, or demonstrating
- Good sharing includes: question, prediction, what we did, what we found, what we learned
- Asking questions helps us all learn more
- Being a good listener is part of being a good scientist

COMMON MISCONCEPTIONS:
- Thinking only "successful" investigations should be shared
- Believing sharing is the same as show-and-tell
- Not understanding the importance of scientific communication
- Thinking questions mean you did something wrong

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Share an exciting finding from a previous investigation enthusiastically. Model: "I discovered that magnets stick to some metals but not others! Let me show you!"

2. DIRECT INSTRUCTION (10 minutes):
   Explain that sharing findings is an important part of science
   Introduce the sharing structure:
   1. Tell your question: "I wanted to know..."
   2. Tell your prediction: "I thought..."
   3. Tell what you did: "I investigated by..."
   4. Tell what happened: "I found out..."
   5. Tell what you learned: "I learned..."
   Model giving a science presentation using an investigation
   Show using visuals: drawings, objects, or demonstrations
   Model answering questions: "That''s a great question. I noticed..."
   Discuss being a good audience: listen, look, think of questions

3. GUIDED PRACTICE (15 minutes):
   Pair sharing: Students share a recent investigation with a partner using the structure
   Partner practices asking one question
   Switch roles
   Volunteers share with whole class
   Class practices being good audience: quiet, attentive, thoughtful questions
   Teacher models appreciative feedback: "I like how you explained..."

4. INDEPENDENT PRACTICE (11 minutes):
   Students prepare a simple science presentation:
   - Choose an investigation or observation they did
   - Create a poster or use science notebook
   - Practice with a partner
   - Present to small group
   Groups give positive feedback and ask questions

DIFFERENTIATION:
For Struggling Learners:
- Provide sentence frames for each part of presentation
- Allow showing instead of telling (demonstrate more, talk less)
- Share with just one or two students instead of large group
- Use pictures to prompt what to say

For Advanced Learners:
- Create more elaborate presentations with multiple visuals
- Answer detailed follow-up questions
- Compare results from multiple investigations
- Help coach other students on presentations

ASSESSMENT INDICATORS:
- Presents investigation findings clearly
- Includes key parts: question, what was done, findings
- Uses drawings or objects to support presentation
- Asks and answers questions appropriately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sharing What We Learned' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MATERIALS AND OBJECTS TOPICS (8 topics)
-- ============================================================================

-- Describing Objects
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Describing Objects' AND grade_level_min = 1),
  'Describing Objects Topic Guide', 'Teaching property vocabulary and description',
  'DESCRIBING OBJECTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic vocabulary
- Observation skills using senses
- Understanding of simple adjectives

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use property words to describe objects (color, shape, size, texture)
2. Identify properties using senses
3. Describe objects with multiple properties
4. Understand that properties help us identify and categorize objects

KEY CONCEPTS:
- Properties are characteristics that describe an object
- We use our senses to observe properties
- Color: red, blue, yellow, green, etc.
- Shape: round, square, triangle, oval, etc.
- Size: big, small, long, short, tall, wide
- Texture: smooth, rough, bumpy, soft, hard
- Using multiple properties gives better descriptions

COMMON MISCONCEPTIONS:
- Using vague words like "nice" or "cool" instead of specific properties
- Confusing texture with temperature
- Not understanding that different properties can be observed with different senses
- Thinking one property is enough to describe an object

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Mystery bag: Describe an object in a bag using only property words, never naming it. Can students guess what it is?

2. DIRECT INSTRUCTION (10 minutes):
   Introduce property categories:
   - Color (what we see): name and point to colors
   - Shape (what we see): show shapes and name them
   - Size (what we see/measure): big/small, long/short, tall/short
   - Texture (what we feel): smooth, rough, bumpy, soft, hard
   Model describing one object using all four property types:
   "This block is red (color), square (shape), small (size), and smooth (texture)."
   Emphasize using specific words instead of vague ones

3. GUIDED PRACTICE (15 minutes):
   Property hunt: Students find objects in classroom matching property descriptions
   "Find something blue." "Find something rough." "Find something round."
   Describe and guess: One student describes object''s properties, others guess
   Property sorting: Sort collection by one property at a time (all red things, all smooth things)
   Create a class "Property Word Wall" with pictures and examples

4. INDEPENDENT PRACTICE (11 minutes):
   Students choose an object to observe
   Draw the object
   Label with property words: color, shape, size, texture
   Write or dictate a complete description: "My object is ___, ___, ___, and ___."
   Partner reads description and tries to find the object

DIFFERENTIATION:
For Struggling Learners:
- Focus on two properties (color and shape)
- Provide property word cards with pictures
- Use familiar objects
- Model descriptions multiple times

For Advanced Learners:
- Add more properties: weight (heavy/light), flexibility (bendy/stiff), transparency (see-through/opaque)
- Use comparative words (rougher, smoother, bigger)
- Describe objects without showing them, making others visualize
- Categorize objects by multiple properties simultaneously

ASSESSMENT INDICATORS:
- Uses at least 3 property words to describe objects
- Identifies color, shape, size, and texture
- Applies correct property vocabulary
- Gives detailed rather than vague descriptions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Describing Objects' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Comparing Properties
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Comparing Properties' AND grade_level_min = 1),
  'Comparing Properties Topic Guide', 'Teaching property comparison skills',
  'COMPARING PROPERTIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to describe object properties
- Understanding of comparison concepts
- Knowledge of comparative vocabulary basics

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare objects using property words (heavier/lighter, bigger/smaller)
2. Use comparative language correctly
3. Identify which property is being compared
4. Understand that objects can be similar in some properties but different in others

KEY CONCEPTS:
- Comparing means looking at how objects are the same or different
- Comparative words show relationships: bigger/smaller, heavier/lighter, rougher/smoother, longer/shorter
- Objects can be compared for any property: size, weight, texture, color
- We can compare by direct observation or by measuring
- Things can be the same in one property but different in another

COMMON MISCONCEPTIONS:
- Confusing bigger with heavier
- Thinking comparisons only involve size
- Not understanding that comparison requires two or more objects
- Mixing up comparative pairs (saying "more small" instead of "smaller")

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show two very different objects (large feather, small rock). Ask: "Which is bigger? Which is heavier? Are they the same?"

2. DIRECT INSTRUCTION (11 minutes):
   Introduce comparative property pairs:
   - Size: bigger/smaller, larger/smaller, taller/shorter, longer/shorter, wider/narrower
   - Weight: heavier/lighter
   - Texture: rougher/smoother, softer/harder
   - Temperature: hotter/colder, warmer/cooler
   Model comparing objects directly:
   "I''ll hold one rock in each hand to feel which is heavier."
   "I''ll put the pencils side by side to see which is longer."
   Demonstrate that an object can be bigger but lighter (balloon vs pebble)
   Practice using "than": "This is bigger than that."

3. GUIDED PRACTICE (15 minutes):
   Comparison stations:
   Station 1: Compare lengths of ribbons, sticks, or blocks
   Station 2: Compare weights by holding objects (which feels heavier?)
   Station 3: Compare textures by touching (which feels rougher?)
   Station 4: Compare sizes by arranging objects from smallest to biggest
   Students use comparative language at each station
   Create comparison sentences: "___ is ___ than ___."

4. INDEPENDENT PRACTICE (10 minutes):
   Provide pairs of objects for students to compare
   Students draw both objects
   Complete sentences: "The ___ is bigger than the ___."
   "The ___ is rougher than the ___."
   Circle or color the object that has more of each property
   Share comparisons with class

DIFFERENTIATION:
For Struggling Learners:
- Compare objects with very obvious differences
- Focus on one property type (just size or just weight)
- Provide sentence frames with pictures
- Use hand gestures to show bigger/smaller

For Advanced Learners:
- Compare three or more objects, ordering them
- Compare multiple properties of the same objects
- Use measuring tools for precise comparisons
- Explain why comparisons are sometimes surprising (big but light)

ASSESSMENT INDICATORS:
- Uses comparative vocabulary correctly
- Compares objects by multiple properties
- Recognizes that "bigger" doesn''t always mean "heavier"
- Explains comparisons using "than"', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Properties' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Sorting Materials
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Sorting Materials' AND grade_level_min = 1),
  'Sorting Materials Topic Guide', 'Teaching classification by properties',
  'SORTING MATERIALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of object properties
- Ability to identify similarities and differences
- Experience with basic sorting

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Sort objects by one property (color, shape, size, texture, material)
2. Explain the sorting rule used
3. Recognize that objects can be sorted in multiple ways
4. Create their own sorting categories

KEY CONCEPTS:
- Sorting means grouping objects that share a property
- We can sort by any property: color, shape, size, texture, or what it''s made of
- All objects in a group must share the chosen property
- The same collection can be sorted different ways
- Sorting helps us organize and understand materials

COMMON MISCONCEPTIONS:
- Changing the sorting rule mid-sort
- Thinking there''s only one correct way to sort
- Not understanding that all items in a group must share the property
- Confusing sorting by property with sorting by personal preference

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Dump a mixed collection of objects. "Oh no! These are all mixed up. How can we organize them?"

2. DIRECT INSTRUCTION (10 minutes):
   Review properties that can be used for sorting
   Model sorting a collection by color: all red together, all blue together, all yellow together
   Explain the sorting rule: "I sorted by color. Everything in this group is red."
   Re-sort the same collection by shape: all circles, all squares, all triangles
   Emphasize: Same objects, different sorting rule, different groups
   Show that good sorting means all items in a group share the chosen property

3. GUIDED PRACTICE (16 minutes):
   Provide collections of objects with multiple properties
   Whole class sorts one collection together:
   - Decide on a property (vote or discuss)
   - Sort objects into groups
   - Check: Does everything in each group share the property?
   - Label groups
   Re-sort the same collection using a different property
   Discuss: How did the groups change?
   Small groups receive their own collections to sort multiple ways

4. INDEPENDENT PRACTICE (10 minutes):
   Students receive a mixed collection
   Sort in one way and glue or draw objects in groups
   Label the sorting rule: "Sorted by ___"
   Challenge: How else could you sort these? Draw or write another way

DIFFERENTIATION:
For Struggling Learners:
- Sort by very obvious properties (color or shape)
- Use only two groups
- Provide pre-labeled sorting circles or mats
- Give fewer objects to sort (8-10 items)

For Advanced Learners:
- Sort by multiple properties simultaneously (big AND red)
- Create their own unique sorting rules
- Sort into three or more groups
- Explain why certain objects could belong in multiple groups

ASSESSMENT INDICATORS:
- Sorts objects accurately by chosen property
- Explains sorting rule clearly
- All items in each group share the identified property
- Can re-sort same objects using different property', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sorting Materials' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- What Floats and Sinks?
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'What Floats and Sinks?' AND grade_level_min = 1),
  'What Floats and Sinks Topic Guide', 'Teaching about buoyancy and testing materials',
  'WHAT FLOATS AND SINKS? - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of water
- Ability to make predictions
- Safe behavior around water

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Test objects to determine if they float or sink
2. Predict whether objects will float or sink
3. Understand that some materials float and some sink
4. Begin to recognize patterns (heavy objects often sink, light objects often float)

KEY CONCEPTS:
- Floating means staying on top of the water
- Sinking means going down to the bottom
- Some objects float, some sink, some do both depending on shape
- We can test to find out which objects float or sink
- Patterns: Heavy objects usually sink, light objects usually float (but not always)

COMMON MISCONCEPTIONS:
- Thinking all heavy things sink (boats float even though they''re heavy)
- Believing all small things float
- Not understanding that shape can affect floating
- Thinking floating is about whether you want it to float

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Drop a cork and a rock in water. Ask: "What happened? Why do you think one floated and one sank?"

2. DIRECT INSTRUCTION (10 minutes):
   Define float and sink with demonstrations
   Show clear examples: cork floats, rock sinks
   Explain that we can test to find out
   Model making predictions: "I think this will float because it feels light."
   Demonstrate testing procedure:
   - Fill container with water
   - Make prediction
   - Gently place object in water (don''t throw or drop)
   - Observe: Does it float or sink?
   - Record results
   Discuss patterns observed: What do floating objects have in common?

3. GUIDED PRACTICE (16 minutes):
   Float/Sink investigation:
   Provide collection of objects: wood block, metal spoon, plastic toy, leaf, penny, cork, crayon, foam, etc.
   Students work in pairs or small groups
   For each object:
   - Observe and describe it
   - Predict: float or sink?
   - Test in water
   - Record on chart: Object / Prediction / Result
   Class discussion: What patterns do we notice?
   Were any results surprising?

4. INDEPENDENT PRACTICE (10 minutes):
   Students complete a float/sink worksheet
   Draw or write objects that floated and objects that sank
   Circle their most surprising result
   Write or dictate: "I thought ___ would ___, but it ___."

DIFFERENTIATION:
For Struggling Learners:
- Test fewer objects (5-6)
- Provide picture chart for recording
- Focus on clear float/sink examples (no in-between)
- Use sentence frames for predictions

For Advanced Learners:
- Test how shape affects floating (clay ball sinks, clay boat floats)
- Explore why some things float even though they''re heavy (hollow)
- Test liquids other than water
- Investigate what happens when you add salt to water

ASSESSMENT INDICATORS:
- Correctly tests objects for floating/sinking
- Makes predictions before testing
- Records results accurately
- Begins to identify patterns in which objects float vs sink', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What Floats and Sinks?' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Stretchy and Bendy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Stretchy and Bendy' AND grade_level_min = 1),
  'Stretchy and Bendy Topic Guide', 'Teaching about flexibility in materials',
  'STRETCHY AND BENDY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of material properties
- Fine motor skills for testing materials
- Safe handling of objects

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify materials that stretch, bend, or stay rigid
2. Test materials for flexibility
3. Understand that flexibility is a property of materials
4. Recognize that flexibility is useful for different purposes

KEY CONCEPTS:
- Some materials stretch (rubber band, stretchy fabric)
- Some materials bend (paper, pipe cleaner, foil)
- Some materials are rigid/stiff (stick, plastic ruler)
- Flexible means able to change shape
- Different materials are useful for different jobs based on flexibility

COMMON MISCONCEPTIONS:
- Thinking stretchy and bendy are the same
- Believing all materials can stretch if you pull hard enough
- Not understanding that rigid materials can break if forced to bend
- Thinking flexibility makes a material weak

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Try to bend a wooden stick and a pipe cleaner. "What''s different about these materials?"

2. DIRECT INSTRUCTION (10 minutes):
   Define and demonstrate three categories:
   1. Stretchy: Can be pulled longer and returns to original size (rubber band, spring, stretchy fabric)
   2. Bendy: Can change shape but doesn''t stretch (paper, foil, pipe cleaner, ribbon)
   3. Rigid/Stiff: Doesn''t bend easily, stays the same shape (wooden stick, hard plastic, ruler)
   Model testing: Gently try to stretch, gently try to bend, observe what happens
   Safety note: Don''t force rigid materials - they might break!
   Discuss uses: "Why is it good that rubber bands stretch?" "Why do we want sticks to be rigid?"

3. GUIDED PRACTICE (16 minutes):
   Materials testing:
   Provide variety of materials: rubber bands, springs, fabric scraps, paper, foil, pipe cleaners, straws, wooden sticks, plastic spoons, ribbons
   Students test each material:
   - Try to stretch it
   - Try to bend it
   - Classify: Stretchy, Bendy, or Rigid
   Record results on a chart with three columns
   Some materials might fit in multiple categories
   Discuss patterns: What are stretchy materials made of? What are rigid materials made of?

4. INDEPENDENT PRACTICE (10 minutes):
   Students choose one material from each category
   Draw each material in its normal state and being stretched or bent
   Label: "stretchy," "bendy," or "rigid"
   Write or dictate how each material could be useful:
   "Rubber bands are stretchy, so they can hold things together."

DIFFERENTIATION:
For Struggling Learners:
- Focus on clear examples (rubber band = stretchy, stick = rigid)
- Test fewer materials
- Provide picture cards showing each category
- Demonstrate testing for each material first

For Advanced Learners:
- Test how far materials can stretch or bend before breaking
- Design a tool using specific materials based on flexibility
- Explore materials that fit multiple categories
- Investigate why some materials are flexible (molecular structure, simplified)

ASSESSMENT INDICATORS:
- Correctly identifies stretchy, bendy, and rigid materials
- Tests materials appropriately and safely
- Classifies materials by flexibility
- Explains practical uses based on flexibility', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Stretchy and Bendy' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Magnetic Materials
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Magnetic Materials' AND grade_level_min = 1),
  'Magnetic Materials Topic Guide', 'Teaching about magnetism and testing for magnetic materials',
  'MAGNETIC MATERIALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Awareness of magnets
- Ability to make predictions and test
- Safe handling of materials and magnets

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use magnets to test which materials are magnetic
2. Identify materials that magnets attract (stick to)
3. Understand that only some metals are magnetic
4. Recognize that magnets can attract through some materials

KEY CONCEPTS:
- Magnets attract (pull) some materials
- Magnetic materials stick to magnets
- Most magnetic materials are metals (iron, steel, nickel)
- Not all metals are magnetic (aluminum, copper, gold are not)
- Non-metals (plastic, wood, paper) are not magnetic
- Magnets can work through thin materials (paper, fabric)

COMMON MISCONCEPTIONS:
- Thinking magnets stick to all metals
- Believing magnets only attract other magnets
- Not understanding that magnetism works at a distance
- Thinking heavy objects can''t be magnetic

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Hold a magnet near various objects without touching. Some are pulled toward the magnet, some aren''t. "Why do some objects move toward the magnet and some don''t?"

2. DIRECT INSTRUCTION (10 minutes):
   Introduce magnets: special objects that attract certain materials
   Demonstrate: magnet attracts paper clip (metal), but not pencil (wood)
   Explain: Magnets attract some metals, but not all
   - Magnetic metals: iron, steel, nickel
   - Non-magnetic metals: aluminum, copper, gold
   Show that magnets attract even without touching (hold magnet near paper clip)
   Demonstrate magnetic force through materials: magnet attracts paper clip through paper
   Safety: Don''t put magnets near electronics

3. GUIDED PRACTICE (16 minutes):
   Magnetic testing investigation:
   Provide magnets and collection of materials: paper clips, pennies, aluminum foil, steel washers, plastic toys, wooden blocks, fabric, brass fasteners, iron nails
   Testing procedure:
   - Observe object and predict: Will the magnet attract it?
   - Test: Hold magnet near object
   - Record: Attracted or Not Attracted
   Create a class chart: Magnetic (stick) vs. Non-Magnetic (don''t stick)
   Look for patterns: What do magnetic objects have in common?
   Test magnet through barriers: paper clip through paper, through fabric

4. INDEPENDENT PRACTICE (10 minutes):
   Magnetic scavenger hunt: Students use magnets to find magnetic objects in classroom (with permission)
   Draw or list objects that were magnetic
   Draw or list objects that were not magnetic
   Complete: "Magnets stick to ___. Magnets do not stick to ___."

DIFFERENTIATION:
For Struggling Learners:
- Test fewer, very obvious materials
- Focus on "stick" vs "don''t stick" without naming metals
- Provide picture chart for recording
- Give hand-over-hand support for testing

For Advanced Learners:
- Investigate strength of different magnets
- Test magnetic force at different distances
- Explore how magnets can repel as well as attract
- Research how magnets are used in everyday life

ASSESSMENT INDICATORS:
- Uses magnet to test materials correctly
- Identifies materials that are magnetic
- Understands not all metals are magnetic
- Recognizes patterns in magnetic materials', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Magnetic Materials' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Changing Materials
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Changing Materials' AND grade_level_min = 1),
  'Changing Materials Topic Guide', 'Teaching about physical changes to materials',
  'CHANGING MATERIALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of material properties
- Awareness that things can change
- Safe handling of materials and tools

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify ways materials can be changed (cutting, folding, melting, freezing)
2. Understand that some changes are reversible, some are not
3. Observe and describe changes to materials
4. Predict outcomes of changes to materials

KEY CONCEPTS:
- Materials can be changed in different ways
- Physical changes: cutting, tearing, folding, bending, melting, freezing, dissolving
- Some changes can be undone (reversible): folding paper, melting ice
- Some changes can''t be undone (irreversible): cutting paper, breaking stick
- The material is still the same material even when its shape or state changes

COMMON MISCONCEPTIONS:
- Thinking changed materials become completely different materials
- Believing all changes can be undone
- Not understanding that melting and freezing are changes
- Confusing physical changes with chemical changes (not introduced yet)

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show a whole piece of paper, then tear it. "What happened? Can I put it back together exactly like it was?"

2. DIRECT INSTRUCTION (11 minutes):
   Introduce types of changes to materials:
   - Cutting/Tearing: Material is separated into pieces
   - Folding/Bending: Shape changes but material stays whole
   - Melting: Solid turns to liquid with heat (ice → water)
   - Freezing: Liquid turns to solid with cold (water → ice)
   - Dissolving: Material mixes into liquid (sugar in water)

   Demonstrate each type with examples:
   - Cut paper - can''t undo
   - Fold paper - can undo
   - Ice melting - can refreeze (reversible)
   - Rip paper - can''t undo

   Discuss reversible vs irreversible:
   - Reversible: can change back (fold, melt/freeze, dissolve)
   - Irreversible: can''t change back (cut, tear, break)

3. GUIDED PRACTICE (15 minutes):
   Materials changing stations:
   Station 1: Paper - fold, unfold, cut, try to "uncut" - which can be undone?
   Station 2: Play dough - squish, roll, shape - can you remake the ball?
   Station 3: Ice - observe melting, discuss refreezing
   Station 4: Foil - fold, bend, wrinkle - which changes can be undone?
   Students record: Can this change be reversed? Yes or No
   Discuss findings as a class

4. INDEPENDENT PRACTICE (10 minutes):
   Students draw a material changing: before and after
   Examples: paper folded, ice melted, clay shaped, paper cut
   Label: reversible or irreversible
   Write: "I can/cannot change this back because ___."

DIFFERENTIATION:
For Struggling Learners:
- Focus on two types of changes (folding and cutting)
- Use very clear, observable changes
- Provide picture cards showing before/after
- Demonstrate each change multiple times

For Advanced Learners:
- Explore more complex changes (mixing, dissolving, hardening)
- Predict which changes are reversible before testing
- Design investigations to test reversibility
- Begin discussing that the material is still the same (paper is paper, even when cut)

ASSESSMENT INDICATORS:
- Identifies multiple ways materials can change
- Distinguishes reversible from irreversible changes
- Describes changes using appropriate vocabulary
- Predicts outcomes of changes to materials', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Changing Materials' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Materials for a Purpose
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Materials for a Purpose' AND grade_level_min = 1),
  'Materials for a Purpose Topic Guide', 'Teaching material selection based on properties',
  'MATERIALS FOR A PURPOSE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of material properties
- Knowledge of different materials
- Experience testing materials

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Select appropriate materials for specific purposes
2. Explain why certain materials are chosen for certain uses
3. Understand that material properties determine their uses
4. Design simple solutions using appropriate materials

KEY CONCEPTS:
- We choose materials based on their properties
- Different jobs need different materials
- Waterproof materials for rain gear
- Soft materials for cushions
- Strong materials for structures
- Transparent materials for windows
- The right material makes an object work better

COMMON MISCONCEPTIONS:
- Thinking any material can be used for any purpose
- Not connecting material properties to function
- Believing appearance is more important than properties
- Not understanding why specific materials are chosen

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show a winter coat made of paper. "Would this work? Why not? What material should a coat be made from?"

2. DIRECT INSTRUCTION (11 minutes):
   Discuss: We choose materials based on what we need them to do

   Examples of material-purpose matching:
   - Umbrellas: waterproof material (plastic, nylon) keeps us dry
   - Windows: transparent material (glass) lets light in
   - Pillows: soft material (fabric, foam) for comfort
   - Buildings: strong materials (wood, metal, concrete) for stability
   - Pots: heat-resistant material (metal, ceramic) for cooking
   - Clothes: different materials for different weather (warm, waterproof, light)

   Model thinking process: "I need to keep rain out → I need waterproof material → I''ll use plastic"
   Emphasize: Properties determine use

3. GUIDED PRACTICE (15 minutes):
   Material matching activity:
   Present design challenges and material options

   Challenge 1: Build a raincoat for a doll
   Materials: plastic bag, paper, fabric
   Discuss: Which is waterproof? Test if needed.

   Challenge 2: Make a soft bed for a toy
   Materials: cotton balls, wooden blocks, cardboard
   Discuss: Which is softest? Which would be comfortable?

   Challenge 3: Create a see-through window
   Materials: plastic wrap, aluminum foil, wax paper
   Discuss: Which lets light through? Test by looking through each.

   Students work in groups to select and test materials
   Explain choices: "We chose ___ because it is ___."

4. INDEPENDENT PRACTICE (10 minutes):
   Students design one object with appropriate materials:
   Options: raincoat, boat, bag, building, pillow, kite
   Draw the object
   Label materials used
   Write: "I used ___ because it is ___."
   Share designs and explain material choices

DIFFERENTIATION:
For Struggling Learners:
- Present only two material choices
- Use very clear property-purpose connections (soft for pillow)
- Provide picture cards matching materials to uses
- Model decision-making process multiple times

For Advanced Learners:
- Design with multiple material requirements (waterproof AND strong)
- Compare why different materials could work for same purpose
- Redesign everyday objects with better material choices
- Explain trade-offs in material selection

ASSESSMENT INDICATORS:
- Selects materials based on properties
- Explains connection between properties and uses
- Chooses appropriate materials for design challenges
- Understands that properties determine function', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Materials for a Purpose' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- Note: Due to length constraints, this file continues with remaining units.
-- Patterns in Nature (8 topics), Plants (8 topics), and Light and Sound (6 topics)
-- will need to be added in the same format.
-- Total expected: 38 topics for Grade 1 Science
-- ============================================================================
