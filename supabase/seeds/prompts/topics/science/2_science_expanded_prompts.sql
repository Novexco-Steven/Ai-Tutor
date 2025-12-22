-- Grade 2 Science Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 2 Science expanded topics
-- ============================================================================

-- ============================================================================
-- SCIENTIFIC PRACTICES TOPICS (8 topics)
-- ============================================================================

-- Asking Questions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Asking Questions' AND grade_level_min = 2),
  'Asking Questions Topic Guide', 'Teaching second graders to ask scientific questions',
  'ASKING QUESTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic ability to form simple questions
- Curiosity about the natural world
- Understanding of question words (what, why, how, when, where)
- Ability to observe and notice things around them

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Ask questions about objects, organisms, and events in the environment
2. Distinguish questions that can be answered through investigation from those that cannot
3. Use question words appropriately to form scientific questions
4. Understand that asking questions is the first step in scientific inquiry

KEY CONCEPTS:
- Scientists ask questions to learn about the world
- Good scientific questions can be answered by observing or testing
- Questions often start with "What if...", "How does...", or "Why does..."
- Some questions can be answered through investigation, others require research
- Multiple questions can be asked about the same observation

COMMON MISCONCEPTIONS:
- Thinking there are "stupid questions" in science
- Believing all questions have one simple answer
- Confusing questions with statements or predictions
- Not understanding that questions lead to investigations

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Show an unusual object (pinecone, seashell, mechanical toy). Ask: "What questions do you have about this?"
   Record student questions on chart paper without judging.

2. DIRECT INSTRUCTION (10 minutes):
   Model asking different types of questions using a familiar object.
   Introduce question starters: "What is...?", "Why does...?", "How does...?", "What if...?"
   Demonstrate difference between scientific questions (testable) and opinion questions.
   Show how observations lead to questions: "I notice... I wonder..."

3. GUIDED PRACTICE (15 minutes):
   Nature walk or observation time: Students observe plants, rocks, or classroom materials.
   Students generate "I notice... I wonder..." statements.
   Sort class questions: Which can we answer by observing? Which need testing? Which need research?
   Practice turning observations into questions.

4. INDEPENDENT PRACTICE (10 minutes):
   Students draw something that makes them curious.
   Write or dictate two questions about their drawing.
   Share questions in small groups.
   Begin a class "Wonder Wall" where students can add questions anytime.

DIFFERENTIATION:
For Struggling Learners:
- Provide question sentence frames: "What is ____?", "How does ____ work?"
- Use picture cards to prompt questions
- Allow verbal questions if writing is challenging
- Work one-on-one to develop questions from observations

For Advanced Learners:
- Ask questions that require multi-step investigations
- Distinguish between questions requiring observation vs. experimentation
- Help peers develop better questions
- Research answers to their own questions

ASSESSMENT INDICATORS:
- Asks at least two questions about observed phenomena
- Uses question words correctly
- Recognizes which questions can be answered through investigation
- Shows curiosity and engagement in asking questions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Asking Questions' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Making Observations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Making Observations' AND grade_level_min = 2),
  'Making Observations Topic Guide', 'Teaching careful observation using all senses',
  'MAKING OBSERVATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to use all five senses appropriately
- Basic descriptive vocabulary
- Understanding of the difference between observing and guessing
- Ability to focus attention on objects or events

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use multiple senses to make detailed observations
2. Describe observations using specific, descriptive words
3. Distinguish observations from inferences and opinions
4. Record observations using words and pictures

KEY CONCEPTS:
- Observations use our senses to gather information
- Scientists observe carefully before making conclusions
- Good observations are specific and detailed
- Qualitative observations describe properties; quantitative observations use numbers
- Observations are facts; inferences are interpretations

COMMON MISCONCEPTIONS:
- Confusing observations with opinions ("It''s pretty" vs "It is red")
- Thinking a quick look is enough
- Believing observations and inferences are the same
- Not understanding that different people can observe different details

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Mystery bag: Describe an object using only touch, then reveal it.
   Discuss: How did using our senses help us learn about the object?

2. DIRECT INSTRUCTION (10 minutes):
   Model observing an object (apple, rock, leaf) using all appropriate senses.
   Think aloud using observation language: "I see...", "I feel...", "I smell..."
   Demonstrate difference between observation ("It is round") and inference ("It is old").
   Introduce observation vocabulary: texture, color, size, shape, pattern, smell.

3. GUIDED PRACTICE (15 minutes):
   Observation stations with different objects (shells, fabrics, foods, plants).
   Students rotate through stations, using appropriate senses.
   Record observations in science notebooks using words and drawings.
   Compare observations: Did everyone notice the same things?
   Practice sorting statements: observation or inference?

4. INDEPENDENT PRACTICE (10 minutes):
   Each student selects an object to observe carefully.
   Create detailed observation drawing with labels.
   Write three observation sentences.
   Partner shares: describe object while partner sketches based on description.

DIFFERENTIATION:
For Struggling Learners:
- Focus on three senses (sight, touch, hearing)
- Provide observation sentence frames
- Use larger, simpler objects
- Scribe observations for students who struggle with writing

For Advanced Learners:
- Use tools (magnifying glass, ruler) to make more detailed observations
- Make quantitative observations (count, measure)
- Compare observations of similar objects
- Identify patterns in observations

ASSESSMENT INDICATORS:
- Uses at least three senses appropriately for observations
- Records observations with specific details
- Distinguishes observations from inferences
- Uses descriptive vocabulary accurately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Making Observations' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Scientific Tools
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Scientific Tools' AND grade_level_min = 2),
  'Scientific Tools Topic Guide', 'Introduction to basic scientific tools and their uses',
  'SCIENTIFIC TOOLS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic fine motor skills for handling tools
- Understanding of measurement concepts (bigger/smaller, longer/shorter)
- Ability to follow safety rules
- Experience with making observations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify common scientific tools and their purposes
2. Use tools safely and appropriately (hand lens, ruler, balance, thermometer)
3. Explain how tools help scientists observe and measure
4. Record measurements using appropriate units

KEY CONCEPTS:
- Scientific tools help us observe things we couldn''t see with our eyes alone
- Different tools are used for different purposes
- Tools must be used correctly to get accurate information
- Measurements help us describe observations with numbers
- Safety is important when using any scientific tool

COMMON MISCONCEPTIONS:
- Thinking all tools measure the same thing
- Believing tools give information even when used incorrectly
- Not understanding why we need tools in addition to our senses
- Confusing tools (thermometer vs ruler)

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Challenge: Try to see details on a leaf or rock with eyes only.
   Introduce magnifying glass - what can you see now?

2. DIRECT INSTRUCTION (12 minutes):
   Introduce four main tools: hand lens, ruler, balance, thermometer.
   For each tool, demonstrate: What does it do? How do we use it? What does it measure?
   Hand lens: Makes small things look bigger
   Ruler: Measures length (in centimeters or inches)
   Balance: Compares weights or measures mass
   Thermometer: Measures temperature
   Model proper handling and safety for each tool.

3. GUIDED PRACTICE (18 minutes):
   Tool stations - students rotate through four stations:
   Station 1: Use hand lens to observe small objects in detail
   Station 2: Measure lengths of various objects with ruler
   Station 3: Use balance to compare masses of objects
   Station 4: Read thermometer in different liquids (warm water, cold water, room temp)
   Record findings at each station.

4. INDEPENDENT PRACTICE (10 minutes):
   Students choose an object and decide which tool(s) would help them learn more.
   Use selected tool(s) to investigate object.
   Draw the tool and write what it helped them discover.

DIFFERENTIATION:
For Struggling Learners:
- Start with just two tools (hand lens and ruler)
- Provide step-by-step visual guides for using tools
- Use larger, easier-to-handle tools
- Work in pairs with peer support

For Advanced Learners:
- Introduce additional tools (stopwatch, measuring cups)
- Measure same object with multiple tools
- Compare tool accuracy (estimate vs. measure)
- Explain why specific tools are best for specific tasks

ASSESSMENT INDICATORS:
- Identifies at least three scientific tools by name and purpose
- Uses hand lens and ruler correctly
- Records measurements with correct units
- Explains how tools help scientists observe better', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scientific Tools' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Recording Data
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Recording Data' AND grade_level_min = 2),
  'Recording Data Topic Guide', 'Teaching students to document observations and findings',
  'RECORDING DATA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to write words and numbers (or dictate)
- Basic drawing skills
- Experience making observations
- Understanding that information needs to be remembered

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Record observations using drawings, words, and numbers
2. Organize data in simple tables or charts
3. Understand that recording helps us remember and share findings
4. Use science notebooks to document investigations

KEY CONCEPTS:
- Scientists record data so they don''t forget what they observed
- Data can be recorded through drawings, words, numbers, or tallies
- Organized data is easier to understand than scattered notes
- Good records include dates and labels
- Recorded data helps us share discoveries with others

COMMON MISCONCEPTIONS:
- Thinking they can remember everything without writing it down
- Believing only perfect drawings count as records
- Not understanding the purpose of recording data
- Thinking data only means numbers

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Memory challenge: Show 10 objects briefly, then hide them. How many can students remember?
   Repeat, but let them draw or write. How many now? Why does recording help?

2. DIRECT INSTRUCTION (10 minutes):
   Introduce science notebook as a tool scientists use.
   Model different ways to record: labeled drawings, word lists, tally marks, simple tables.
   Demonstrate recording observation of a plant: date, drawing, labels, observations in words.
   Emphasize: Records should be clear enough for someone else to understand.

3. GUIDED PRACTICE (15 minutes):
   Observation activity: Students observe weather outside or classroom plant.
   Practice recording in multiple ways:
   - Detailed drawing with labels
   - Description in words (at least 3 sentences)
   - Data table (if measuring something)
   Compare records: Can a partner understand your record?

4. INDEPENDENT PRACTICE (10 minutes):
   Students design their own observation page for a simple investigation.
   Include: date, question or topic, observations (drawing + words), and what they learned.
   Share records with small group.

DIFFERENTIATION:
For Struggling Learners:
- Provide templates with prompts
- Allow verbal recording (teacher scribes)
- Use simple vocabulary and large spaces for drawing
- Focus on one recording method at a time

For Advanced Learners:
- Create multi-day observation records
- Include measurements in recordings
- Compare different ways of recording same data
- Evaluate which recording method works best for different situations

ASSESSMENT INDICATORS:
- Records observations using both drawings and words
- Includes relevant details in records
- Organizes data so others can understand it
- Explains why recording data is important', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Recording Data' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Conducting Investigations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Conducting Investigations' AND grade_level_min = 2),
  'Conducting Investigations Topic Guide', 'Planning and carrying out simple scientific experiments',
  'CONDUCTING INVESTIGATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to ask scientific questions
- Experience making and recording observations
- Understanding of basic cause and effect
- Ability to follow multi-step procedures

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Plan a simple investigation to answer a question
2. Identify what to test and what to observe
3. Follow procedures step-by-step
4. Understand the importance of fair testing

KEY CONCEPTS:
- Investigations help us answer questions through testing
- We need a clear question before we investigate
- Procedures are step-by-step instructions
- Fair tests only change one thing at a time
- We must observe and record what happens during investigations

COMMON MISCONCEPTIONS:
- Thinking investigations always give the expected result
- Believing changing many things at once is fine
- Not understanding the need for careful procedures
- Confusing investigations with playing or exploring randomly

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Question: Which paper towel is strongest?
   Brainstorm: How could we find out? What would we need to do?

2. DIRECT INSTRUCTION (12 minutes):
   Introduce investigation steps: Question → Plan → Do → Observe → Record → Conclude
   Model planning an investigation: "Which ramp helps a car roll farther: steep or gentle?"
   What will we change? (ramp height)
   What will we measure? (distance car travels)
   What will we keep the same? (same car, same surface, same starting point)
   Demonstrate following the procedure and recording results.

3. GUIDED PRACTICE (18 minutes):
   Class investigation: "Do plants grow better in light or dark?"
   Work together to plan: What will we change? What will we observe? What stays the same?
   Set up investigation (two identical plants, one in light, one in dark).
   Create observation schedule for upcoming days.
   Record initial observations as a class.

4. INDEPENDENT PRACTICE (10 minutes):
   In pairs, students choose a simple investigation question:
   - Which magnet is strongest?
   - Which material absorbs more water?
   - Which object sinks or floats?
   Draw and write their investigation plan (what they''ll do, step by step).

DIFFERENTIATION:
For Struggling Learners:
- Use picture-based procedure cards
- Start with very simple investigations (2-3 steps)
- Work in small groups with teacher guidance
- Provide investigation templates with prompts

For Advanced Learners:
- Design their own complete investigation
- Identify variables independently
- Conduct multi-day investigations
- Explain why fair testing matters

ASSESSMENT INDICATORS:
- Identifies a question that can be investigated
- Plans simple procedures to test the question
- Follows procedures systematically
- Understands importance of changing only one thing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Conducting Investigations' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Comparing Results
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Comparing Results' AND grade_level_min = 2),
  'Comparing Results Topic Guide', 'Analyzing data and drawing conclusions',
  'COMPARING RESULTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Experience recording observations
- Understanding of comparison words (more/less, faster/slower, bigger/smaller)
- Ability to look for patterns
- Basic counting and comparing skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare data from investigations or observations
2. Look for patterns in results
3. Determine which result answers their question
4. Understand that results may be different from predictions

KEY CONCEPTS:
- Comparing results helps us find answers to questions
- We look for patterns and differences in our data
- Sometimes results surprise us - that''s okay and helps us learn
- Results from experiments can be compared to what we predicted
- Evidence (data) supports our conclusions

COMMON MISCONCEPTIONS:
- Thinking results must match predictions to be "correct"
- Believing one trial is enough to reach a conclusion
- Ignoring results that don''t match expectations
- Not understanding what "comparing" means in science

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Show results from a simple experiment (e.g., which material is waterproof: paper, plastic, foil).
   Which material kept water out best? How can we tell?

2. DIRECT INSTRUCTION (10 minutes):
   Review data from a class investigation (plant growth, ramp races, etc.).
   Model comparing: "Plant A grew 3 cm. Plant B grew 7 cm. Plant B grew more."
   Look for patterns: "All the plants in sunlight grew more than plants in shade."
   Introduce concept: What we expected vs. what actually happened.
   Emphasize: Scientists learn from unexpected results!

3. GUIDED PRACTICE (15 minutes):
   Provide data from simple investigation (e.g., how far different balls rolled).
   Students work in groups to:
   - Identify which had the greatest/least result
   - Look for patterns
   - Create simple bar graph or picture graph
   - Discuss: Does this answer our question? How?

4. INDEPENDENT PRACTICE (10 minutes):
   Students review their own investigation data from previous lesson.
   Compare results: Which was more/less/fastest/slowest?
   Draw conclusion: What did the results show?
   Write: "I predicted _____. The results showed _____."

DIFFERENTIATION:
For Struggling Learners:
- Use visual representations (pictures, objects)
- Compare just two results instead of many
- Provide sentence frames for comparisons
- Use very concrete, obvious differences

For Advanced Learners:
- Compare multiple sets of data
- Create graphs to show comparisons
- Identify unusual or outlier results
- Explain possible reasons for unexpected results

ASSESSMENT INDICATORS:
- Compares at least two results using comparison words
- Identifies patterns in data
- States whether results matched predictions
- Uses evidence to answer the investigation question', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Results' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Sharing Findings
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Sharing Findings' AND grade_level_min = 2),
  'Sharing Findings Topic Guide', 'Communicating scientific discoveries to others',
  'SHARING FINDINGS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Experience conducting investigations
- Ability to speak in front of small groups
- Understanding of what they investigated and found
- Basic presentation skills (showing and telling)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Explain their investigation to others
2. Share results clearly using words and visuals
3. Answer questions about their findings
4. Understand that scientists share discoveries to help others learn

KEY CONCEPTS:
- Scientists share their findings so others can learn
- Good presentations include: question, what we did, what we found
- Visual aids (posters, drawings, objects) help explain findings
- Listening to others'' findings helps us learn new things
- Questions and discussions improve our understanding

COMMON MISCONCEPTIONS:
- Thinking only "successful" results should be shared
- Believing sharing is only about talking
- Not understanding the importance of clear communication in science
- Thinking audience questions mean they did something wrong

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Show a simple science "discovery" without explaining it (e.g., magnet attracting objects).
   Ask: What do you wonder? What do you want to know?
   Explain: When scientists share clearly, we can all learn!

2. DIRECT INSTRUCTION (10 minutes):
   Model presenting investigation findings:
   - Our question was: _____
   - We tested by: _____
   - We found that: _____
   - This means: _____
   Show using poster with drawings and simple words.
   Demonstrate answering audience questions politely.

3. GUIDED PRACTICE (15 minutes):
   Small groups prepare to share one class investigation.
   Provide template: Question / What We Did / What We Found / What We Learned
   Groups create simple poster with drawings.
   Practice presenting to each other.
   Give feedback: Could you hear? Did you understand? What questions do you have?

4. INDEPENDENT PRACTICE (10 minutes):
   Students create "discovery cards" about something they learned.
   Include: drawing, key finding, one sentence explanation.
   Gallery walk: Students post cards and visit others''.
   Leave positive comments or questions on sticky notes.

DIFFERENTIATION:
For Struggling Learners:
- Provide presentation templates with sentence frames
- Allow sharing in pairs instead of individually
- Use pictures as primary communication tool
- Practice presentation multiple times with support

For Advanced Learners:
- Present more complex investigations
- Create detailed posters or models
- Field audience questions independently
- Help peers prepare presentations

ASSESSMENT INDICATORS:
- Explains their investigation question and findings
- Uses visual aids to support presentation
- Speaks clearly enough for audience to understand
- Responds to at least one question about their work', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sharing Findings' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Lab Safety
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Lab Safety' AND grade_level_min = 2),
  'Lab Safety Topic Guide', 'Essential safety rules for scientific investigations',
  'LAB SAFETY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to follow classroom rules
- Understanding of potential dangers
- Listening and following directions skills
- Awareness of personal safety

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify and follow basic lab safety rules
2. Recognize potential hazards in investigations
3. Know what to do if an accident occurs
4. Understand that safety is everyone''s responsibility

KEY CONCEPTS:
- Safety rules protect us during science activities
- Always listen to instructions before starting
- Never taste or smell unknown substances without permission
- Wear safety gear when needed (goggles, gloves)
- Report spills, breaks, or injuries immediately
- Clean up and wash hands after investigations

COMMON MISCONCEPTIONS:
- Thinking accidents only happen to others
- Believing safety rules are optional
- Not understanding why specific rules exist
- Thinking safety is only the teacher''s job

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Show pictures of scientists wearing safety gear.
   Why do they wear goggles, gloves, and lab coats?
   Discuss: Safety helps scientists investigate safely!

2. DIRECT INSTRUCTION (12 minutes):
   Introduce key safety rules with visuals:
   1. Listen to all instructions first
   2. Wear safety goggles for certain activities
   3. Keep workspace organized and clean
   4. Never taste or smell without permission
   5. Tell teacher immediately about spills or breaks
   6. Wash hands after investigations
   Demonstrate each rule. Explain why each is important.
   Practice "freeze" signal for immediate stop when needed.

3. GUIDED PRACTICE (15 minutes):
   Safety scenario cards: Students identify unsafe behaviors and correct solutions.
   - Student running with scissors near experiment
   - Smelling unknown liquid without asking
   - Not wearing goggles when needed
   Role-play correct and incorrect behaviors.
   Create class safety poster with student-drawn rules.

4. INDEPENDENT PRACTICE (8 minutes):
   Students draw themselves following one safety rule.
   Write or dictate: "I follow this rule because..."
   Create personal "Safety Scientist" badge to wear during investigations.

DIFFERENTIATION:
For Struggling Learners:
- Focus on three core rules
- Use picture-based safety reminders
- Practice rules frequently with repetition
- Assign a safety partner

For Advanced Learners:
- Explain scientific reasons for safety rules
- Become classroom safety monitors
- Create safety guides for different types of investigations
- Research real lab safety in professional settings

ASSESSMENT INDICATORS:
- Names at least four lab safety rules
- Follows safety procedures during investigations
- Identifies unsafe behaviors in scenarios
- Knows to tell teacher about accidents immediately', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Lab Safety' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Grade 2 Science Expanded Prompts Created:
-- - Scientific Practices: 8 comprehensive teaching prompts
-- Total: 8 topics with detailed pedagogical guidance
-- ============================================================================
