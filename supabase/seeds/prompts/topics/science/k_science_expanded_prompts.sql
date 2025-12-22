-- Kindergarten Science Expanded Topic Prompts
-- Comprehensive teaching prompts for Kindergarten Science expanded topics
-- ============================================================================

-- ============================================================================
-- SCIENCE SKILLS TOPICS (8 topics)
-- ============================================================================

-- Using Our Senses
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Using Our Senses' AND grade_level_min = 0),
  'Using Our Senses Topic Guide', 'Teaching kindergarteners to use all five senses',
  'USING OUR SENSES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to name body parts (eyes, ears, nose, mouth, hands)
- Basic attention and focus skills
- Willingness to participate in sensory activities

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Name all five senses and their corresponding body parts
2. Use each sense to gather information about objects
3. Describe observations using sense words
4. Understand that senses help us learn about the world

KEY CONCEPTS:
- We have five senses: sight, hearing, touch, taste, and smell
- Each sense uses a specific body part
- We use our senses to learn about things around us
- Different senses tell us different information
- We can use multiple senses at the same time

COMMON MISCONCEPTIONS:
- Thinking we can only use one sense at a time
- Confusing which body part goes with which sense
- Believing all senses give the same information
- Not understanding that senses help keep us safe

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a mystery box with an interesting object inside. Ask: "How can we learn about what''s inside without looking?"

2. DIRECT INSTRUCTION (8 minutes):
   Introduce each sense with a song or rhyme.
   Point to each body part: eyes-see, ears-hear, nose-smell, tongue-taste, skin-touch.
   Demonstrate using each sense with simple objects.

3. GUIDED PRACTICE (12 minutes):
   Sense stations: Students rotate through 5 stations, each focusing on one sense.
   Station 1: Look at colorful pictures or objects
   Station 2: Listen to different sounds
   Station 3: Smell safe scents (vanilla, lemon, cinnamon)
   Station 4: Touch different textures (soft, rough, bumpy, smooth)
   Station 5: Taste safe foods (sweet, salty, sour)

4. INDEPENDENT PRACTICE (7 minutes):
   Students draw a picture showing them using one of their senses.
   Share with a partner what sense they drew.

DIFFERENTIATION:
For Struggling Learners:
- Focus on three senses first (sight, hearing, touch)
- Use larger, more obvious examples
- Provide picture cards to match senses to body parts
- Use more repetition and hands-on practice

For Advanced Learners:
- Use multiple senses to describe one object
- Play "guess the object" using only one sense
- Describe how senses work together
- Think about animals with different senses

ASSESSMENT INDICATORS:
- Can name all five senses
- Points to correct body part for each sense
- Uses senses to describe objects
- Explains how a sense helps them learn', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Using Our Senses' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Asking Questions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Asking Questions' AND grade_level_min = 0),
  'Asking Questions Topic Guide', 'Teaching kindergarteners to wonder and ask questions',
  'ASKING QUESTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic verbal communication skills
- Familiarity with question words (what, where, when, who, why, how)
- Curiosity about the world

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Ask questions about objects and events they observe
2. Use question words to form complete questions
3. Understand that questions help us learn
4. Listen to and respond to others'' questions

KEY CONCEPTS:
- Questions help us learn new things
- We can ask questions about anything we see or wonder about
- Questions start with special words (what, where, when, who, why, how)
- Scientists ask questions all the time
- There are many ways to find answers to questions

COMMON MISCONCEPTIONS:
- Thinking there are "bad" questions
- Believing they must know the answer before asking
- Confusing statements with questions
- Not understanding that questions can have multiple answers

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Bring in an unusual object (like a pinecone or seashell). Ask: "What do you wonder about this?"

2. DIRECT INSTRUCTION (7 minutes):
   Model asking questions using a picture book or object.
   Introduce question words with hand motions: What? Where? When? Who? Why? How?
   Demonstrate the difference between a statement and a question.
   Show that questions end with a question mark and often have a "?" sound in voice.

3. GUIDED PRACTICE (10 minutes):
   Show interesting pictures (animals, places, events).
   As a class, generate questions about each picture.
   Record questions on chart paper with student names.
   Celebrate every question asked.

4. INDEPENDENT PRACTICE (10 minutes):
   Give each student a "Wonder Book" page.
   Students draw something they wonder about.
   Students tell their question to a partner or teacher to write down.

DIFFERENTIATION:
For Struggling Learners:
- Provide sentence frames: "What is ___?" "Where is ___?"
- Use picture cards showing question words
- Practice with familiar objects first
- Allow pointing and gesturing to ask questions

For Advanced Learners:
- Ask "why" and "how" questions
- Ask questions that require investigation
- Think about how to find answers to their questions
- Help younger students ask questions

ASSESSMENT INDICATORS:
- Asks questions spontaneously
- Uses question words correctly
- Questions are related to observations
- Listens to others'' questions with interest', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Asking Questions' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Looking Closely
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Looking Closely' AND grade_level_min = 0),
  'Looking Closely Topic Guide', 'Teaching careful observation skills',
  'LOOKING CLOSELY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to focus attention on an object
- Basic color recognition
- Understanding of simple descriptive words

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Observe objects carefully using their eyes
2. Notice details they might have missed at first
3. Describe what they see using specific words
4. Understand that careful looking helps us learn more

KEY CONCEPTS:
- Observing means looking very carefully
- We notice more details when we look closely
- Magnifying glasses help us see tiny details
- Scientists look closely to learn about things
- Colors, shapes, patterns, and textures are things we can observe

COMMON MISCONCEPTIONS:
- Thinking a quick glance is enough to observe
- Believing they see everything the first time
- Not understanding that some details are very small
- Thinking observation is the same as guessing

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a familiar object from far away, then up close. Ask: "What do you notice now that you didn''t see before?"

2. DIRECT INSTRUCTION (8 minutes):
   Model looking at an object from different distances and angles.
   Use a magnifying glass to explore details.
   Think aloud: "I see..., I notice..., I observe..."
   Draw attention to colors, shapes, lines, patterns, textures.

3. GUIDED PRACTICE (12 minutes):
   Provide interesting objects (leaves, rocks, shells, fabric samples).
   Students use magnifying glasses to explore objects.
   Guide observations with prompts: "What color do you see? What shape? Is it smooth or bumpy?"
   Students share one detail they noticed.

4. INDEPENDENT PRACTICE (7 minutes):
   Students draw a detailed picture of an object they observed.
   Encourage them to include colors, shapes, and patterns they saw.

DIFFERENTIATION:
For Struggling Learners:
- Start with larger, simpler objects
- Focus on one feature at a time (just color, then just shape)
- Use sentence frames: "I see ___"
- Provide hand-over-hand magnifying glass support

For Advanced Learners:
- Compare two similar objects and find small differences
- Use science vocabulary (rough, smooth, jagged, round)
- Create detailed observational drawings
- Use microscopes or digital magnification

ASSESSMENT INDICATORS:
- Looks carefully at objects before describing
- Uses magnifying glass appropriately
- Names specific details (colors, shapes, patterns)
- Notices details others might miss', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Looking Closely' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Comparing Things
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Comparing Things' AND grade_level_min = 0),
  'Comparing Things Topic Guide', 'Teaching students to find similarities and differences',
  'COMPARING THINGS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of "same" and "different"
- Basic observation skills
- Ability to attend to two objects at once

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify ways objects are the same
2. Identify ways objects are different
3. Use comparison words (bigger/smaller, same/different, more/less)
4. Understand that comparing helps us understand things better

KEY CONCEPTS:
- Comparing means looking at two or more things to see how they are same and different
- Things can be the same in some ways and different in other ways
- We can compare size, color, shape, texture, and other properties
- Comparison words help us describe differences
- Scientists compare things to learn about them

COMMON MISCONCEPTIONS:
- Thinking things must be all the same or all different
- Not noticing that things can be similar in some ways but different in others
- Confusing comparison words (bigger vs smaller)
- Thinking comparison is just about size

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Hold up two apples (or two similar objects with small differences). Ask: "Are these the same?"

2. DIRECT INSTRUCTION (7 minutes):
   Model comparing two objects side by side.
   Think aloud: "How are they the same? How are they different?"
   Introduce comparison words with gestures: bigger/smaller, longer/shorter, same/different.
   Use Venn diagrams (two circles) to show same and different.

3. GUIDED PRACTICE (12 minutes):
   Provide pairs of objects to compare: two leaves, two rocks, two toys.
   Students work in pairs to find what''s the same and what''s different.
   Create a class chart: "Same" on one side, "Different" on the other.
   Students share their findings.

4. INDEPENDENT PRACTICE (8 minutes):
   Students choose two objects to compare.
   Draw both objects and circle one way they are the same or different.
   Share with a partner.

DIFFERENTIATION:
For Struggling Learners:
- Use very obviously different objects first (ball and block)
- Focus on one property at a time (just color or just size)
- Provide picture cards showing comparison words
- Use hand motions to show bigger/smaller

For Advanced Learners:
- Compare three or more objects
- Find multiple similarities and differences
- Use more sophisticated comparison words (heavier, rougher, shinier)
- Create sorting rules based on comparisons

ASSESSMENT INDICATORS:
- Identifies at least one similarity
- Identifies at least one difference
- Uses comparison words appropriately
- Compares multiple properties', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Things' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Sorting and Grouping
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Sorting and Grouping' AND grade_level_min = 0),
  'Sorting and Grouping Topic Guide', 'Teaching classification skills',
  'SORTING AND GROUPING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to identify basic properties (color, size, shape)
- Understanding of "same" and "different"
- Fine motor skills to manipulate objects

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Sort objects into groups based on one property
2. Explain the rule they used to sort
3. Recognize that objects can be sorted in different ways
4. Understand that sorting helps us organize and learn

KEY CONCEPTS:
- Sorting means putting similar things together
- We can sort by color, size, shape, or other properties
- All items in a group share something in common
- The same objects can be sorted different ways
- Scientists sort and classify to organize information

COMMON MISCONCEPTIONS:
- Thinking there is only one correct way to sort
- Changing the sorting rule in the middle
- Not understanding what "belongs together" means
- Believing sorting is just for cleanup time

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Dump a mixed collection of objects (buttons, blocks, toys). Ask: "How can we organize these?"

2. DIRECT INSTRUCTION (7 minutes):
   Model sorting objects by color, showing all reds together, all blues together.
   Explain the sorting rule: "I put all the red ones here."
   Re-sort the same objects by size: big and small.
   Emphasize that the same objects can be sorted different ways.

3. GUIDED PRACTICE (12 minutes):
   Provide collections to sort (leaves, shells, blocks, counters).
   Students work in small groups to sort their collection one way.
   Each group shares: "We sorted by ___. Things in this group are all ___."
   Challenge: Sort the same collection a different way.

4. INDEPENDENT PRACTICE (8 minutes):
   Give each student a mixed collection of objects.
   Students sort into two or three groups.
   Draw or place objects in sorting circles.
   Explain their sorting rule to a partner.

DIFFERENTIATION:
For Struggling Learners:
- Sort by only one obvious property (color)
- Use two groups only
- Provide sorting mats or circles
- Give fewer objects to sort (5-8 items)

For Advanced Learners:
- Sort by two properties at once (big red vs small red vs big blue vs small blue)
- Create their own sorting rules
- Play "guess my rule" where others figure out the sorting pattern
- Sort into three or more groups

ASSESSMENT INDICATORS:
- Sorts objects accurately into groups
- Can explain the sorting rule used
- All items in a group share the identified property
- Understands objects can be sorted multiple ways', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sorting and Grouping' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Measuring
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Measuring' AND grade_level_min = 0),
  'Measuring Topic Guide', 'Teaching measurement concepts with comparison words',
  'MEASURING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding comparison words (bigger, smaller)
- Ability to compare two objects visually
- Basic counting skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Use measurement words to describe objects (bigger, smaller, longer, shorter, heavier, lighter)
2. Compare sizes of objects directly
3. Order three objects by size
4. Understand that measuring helps us describe how big or small things are

KEY CONCEPTS:
- Measuring is finding out how big, long, heavy, or much
- We can use words to describe size: big, small, tall, short, long, heavy, light
- We can compare by placing objects next to each other
- Some things are bigger in one way but smaller in another
- Scientists measure to describe and compare

COMMON MISCONCEPTIONS:
- Confusing long and tall, big and heavy
- Thinking the bigger object is always heavier
- Not understanding that measurement is comparison
- Believing you need numbers to measure

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show two very different-sized objects (big teddy bear, tiny toy). Ask: "How can we describe how these are different?"

2. DIRECT INSTRUCTION (7 minutes):
   Introduce measurement words with gestures: big/small (arms wide/close), tall/short (hand high/low), long/short (hands apart), heavy/light (pretend to lift).
   Model comparing objects directly: placing them side-by-side, holding them to compare weight.
   Show that we describe by comparing to something else.

3. GUIDED PRACTICE (12 minutes):
   Stations with different types of comparing:
   Station 1: Compare lengths of ribbons or sticks
   Station 2: Compare heights of towers or bottles
   Station 3: Compare weights of objects (which feels heavier?)
   Station 4: Compare sizes of circles or shapes
   Students use measurement words to describe what they find.

4. INDEPENDENT PRACTICE (8 minutes):
   Give students three objects to order from smallest to biggest.
   Students draw the objects in order.
   Label with "smallest," "medium," "biggest" or draw arrows.

DIFFERENTIATION:
For Struggling Learners:
- Compare only two objects at a time
- Use very obvious size differences
- Focus on one type of measurement (just length or just size)
- Provide picture cards with measurement words

For Advanced Learners:
- Order four or five objects by size
- Measure using non-standard units (hand spans, blocks)
- Find objects around the room that are longer/shorter than their arm
- Discuss why actual measuring tools are helpful

ASSESSMENT INDICATORS:
- Uses measurement words correctly
- Accurately compares sizes of objects
- Can order three objects by size
- Explains which is bigger/smaller and how they know', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measuring' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Recording What We See
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Recording What We See' AND grade_level_min = 0),
  'Recording What We See Topic Guide', 'Teaching observation recording through drawing and describing',
  'RECORDING WHAT WE SEE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic drawing abilities
- Observation skills (looking closely)
- Some ability to describe observations verbally

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Draw pictures to record what they observe
2. Use simple words or labels to describe observations
3. Understand that recording helps us remember what we learned
4. Share their recorded observations with others

KEY CONCEPTS:
- Scientists record what they see so they don''t forget
- Drawing is one way to record observations
- We can write words or have someone write words for us
- Recordings help us share what we learned with others
- The more details we include, the better our record

COMMON MISCONCEPTIONS:
- Thinking drawings must be perfect or artistic
- Believing they need to remember everything without recording
- Not including enough details in recordings
- Thinking only writing counts as recording

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show an object briefly, then hide it. Ask students to describe it from memory. Show again and ask: "What did we forget? How could we remember better?"

2. DIRECT INSTRUCTION (8 minutes):
   Model observing an object and drawing what you see.
   Think aloud: "I see green, so I''ll color this green. I see spots, so I''ll add spots."
   Show adding labels: "leaf" with an arrow, "rough" with an arrow to texture.
   Demonstrate using a science notebook or observation sheet.

3. GUIDED PRACTICE (10 minutes):
   Provide interesting objects for students to observe.
   Students draw what they see, including details (colors, shapes, patterns).
   Teacher circulates and asks: "What else do you notice? Can you add that to your drawing?"
   Students dictate labels or words for teacher to write, or copy simple words.

4. INDEPENDENT PRACTICE (8 minutes):
   Students observe an object of their choice (nature item, classroom object).
   Complete an observation page: draw and add one label or description.
   Share with a partner: "I observed a ___. I recorded ___."

DIFFERENTIATION:
For Struggling Learners:
- Provide observation templates with some details already drawn
- Focus on drawing before adding words
- Scribe words for students
- Use stamps or stickers if drawing is difficult

For Advanced Learners:
- Add multiple labels to their drawings
- Write simple sentences about observations
- Create before-and-after observation drawings
- Record observations over multiple days

ASSESSMENT INDICATORS:
- Drawing includes observable details
- Recording is recognizable as the object observed
- Attempts to add labels or descriptions
- Can explain their observation drawing to others', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Recording What We See' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Sharing Discoveries
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Sharing Discoveries' AND grade_level_min = 0),
  'Sharing Discoveries Topic Guide', 'Teaching students to communicate their findings',
  'SHARING DISCOVERIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic speaking and listening skills
- Some experience observing and recording
- Confidence to speak in front of small groups

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Tell others about something they discovered or learned
2. Show their observations or recordings to others
3. Listen when others share their discoveries
4. Ask questions about others'' discoveries

KEY CONCEPTS:
- Scientists share what they learn with others
- Sharing helps everyone learn more
- We can share by talking, showing, or demonstrating
- Listening to others'' discoveries is important too
- Questions help us understand better

COMMON MISCONCEPTIONS:
- Thinking only the teacher shares information
- Believing their discovery isn''t important enough to share
- Not understanding that others can learn from them
- Thinking sharing is the same as show-and-tell

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Share an exciting discovery you made: "I observed a bird building a nest! Let me show you what I saw." Model enthusiasm for sharing.

2. DIRECT INSTRUCTION (7 minutes):
   Model how to share a discovery: "I learned that... I noticed... I found out..."
   Show how to use drawings or objects when sharing.
   Model good listening: eyes on speaker, quiet hands, thinking of questions.
   Practice asking questions: "What did you notice? How did you find that out?"

3. GUIDED PRACTICE (12 minutes):
   Students pair up for "Discovery Partners."
   Each student shares one thing they learned recently (from science time or exploration).
   Partner listens and asks one question.
   Switch roles.
   Volunteers share with the whole class.

4. INDEPENDENT PRACTICE (8 minutes):
   Students prepare a "Discovery Card": draw or write one discovery.
   In small groups of 3-4, each student shares their discovery.
   Group members give a thumbs up or say "I learned..."

DIFFERENTIATION:
For Struggling Learners:
- Share with just one partner instead of a group
- Use sentence frames: "I discovered ___" "I learned ___"
- Show an object or picture instead of just talking
- Teacher support during sharing time

For Advanced Learners:
- Share multiple discoveries or more complex findings
- Demonstrate a process they learned
- Answer follow-up questions from audience
- Help facilitate other students'' sharing

ASSESSMENT INDICATORS:
- Shares at least one discovery or learning
- Speaks clearly enough for others to understand
- Listens attentively when others share
- Asks or answers questions about discoveries', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sharing Discoveries' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- MY BODY TOPICS (7 topics)
-- ============================================================================

-- Body Parts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Body Parts' AND grade_level_min = 0),
  'Body Parts Topic Guide', 'Teaching kindergarteners to name and identify body parts',
  'BODY PARTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic language skills
- Ability to point to parts of own body
- Understanding of simple directions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Name major body parts (head, arms, legs, hands, feet, etc.)
2. Point to body parts when named
3. Understand that everyone has the same basic body parts
4. Know that body parts have different jobs

KEY CONCEPTS:
- Our body has many parts with different names
- Major parts include: head, neck, shoulders, arms, hands, chest, stomach, legs, feet
- Face parts include: eyes, ears, nose, mouth
- Each body part has a special job
- Taking care of our body parts keeps us healthy

COMMON MISCONCEPTIONS:
- Confusing left and right
- Thinking everyone''s body parts look exactly the same
- Not understanding that body parts work together
- Believing some body parts are more important than others

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Sing "Head, Shoulders, Knees, and Toes" with motions. Ask: "How many body parts did we touch?"

2. DIRECT INSTRUCTION (8 minutes):
   Use a large body diagram or poster.
   Point to and name each major body part.
   Have students touch their own body parts as you name them.
   Discuss what each part helps us do: "Hands help us grab things."

3. GUIDED PRACTICE (10 minutes):
   Play "Simon Says" with body parts: "Simon says touch your nose."
   Partner activity: One student names a body part, partner points to it.
   Create body part movements: "Wave your hands, stomp your feet."
   Sort picture cards of body parts into categories (arms, legs, face parts).

4. INDEPENDENT PRACTICE (9 minutes):
   Students trace around their hand or foot.
   Label body parts on a simple body outline worksheet.
   Draw themselves and point to three body parts they can name.

DIFFERENTIATION:
For Struggling Learners:
- Focus on five main parts first (head, arms, legs, hands, feet)
- Use songs and repetition
- Provide hand-over-hand support for pointing
- Use real photos of children''s body parts

For Advanced Learners:
- Learn additional parts (elbows, knees, ankles, wrists, hips)
- Name internal body parts (heart, stomach, brain)
- Describe what each body part does
- Compare human body parts to animal body parts

ASSESSMENT INDICATORS:
- Names at least 8-10 major body parts
- Points to correct body part when named
- Can match body part names to pictures
- Describes at least one function of a body part', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Body Parts' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- How I Move
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'How I Move' AND grade_level_min = 0),
  'How I Move Topic Guide', 'Teaching about body movement and motor skills',
  'HOW I MOVE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Knowledge of basic body parts
- Ability to follow movement directions
- Gross motor control

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Demonstrate different ways the body can move
2. Identify which body parts are used for different movements
3. Understand that muscles and bones help us move
4. Practice controlled movements

KEY CONCEPTS:
- Our bodies can move in many ways: walk, run, jump, bend, stretch, twist
- Arms and legs help us move from place to place
- Bones give our body structure and support
- Muscles help our body parts move
- We can control how we move

COMMON MISCONCEPTIONS:
- Thinking only legs are used for movement
- Not understanding that small movements (fingers) count as movement
- Believing movement is automatic and doesn''t require practice
- Not recognizing that different movements use different body parts

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Challenge: "How many different ways can you move your body without leaving your spot?"

2. DIRECT INSTRUCTION (7 minutes):
   Demonstrate and name different movements: walk, run, jump, hop, skip, crawl, march.
   Show arm movements: wave, reach, clap, push, pull.
   Explain that bones are like the frame of our body and muscles pull on bones to make us move.
   Feel arm muscle tightening when bending elbow.

3. GUIDED PRACTICE (12 minutes):
   Movement exploration stations:
   Station 1: Leg movements (hop, jump, march in place)
   Station 2: Arm movements (reach high, reach low, make circles)
   Station 3: Whole body (bend, twist, stretch)
   Station 4: Balance (stand on one foot, walk on a line)
   Discuss which body parts were used at each station.

4. INDEPENDENT PRACTICE (8 minutes):
   Students create a "movement sequence": choose 3 movements and perform them in order.
   Draw pictures of themselves doing each movement.
   Show their sequence to a partner.

DIFFERENTIATION:
For Struggling Learners:
- Break down movements into smaller steps
- Provide physical support for balance activities
- Focus on three simple movements (walk, jump, reach)
- Use videos or pictures showing movements

For Advanced Learners:
- Create longer movement sequences (5-6 movements)
- Try more complex movements (gallop, leap, skip)
- Move to rhythm or music
- Describe which muscles and bones they''re using

ASSESSMENT INDICATORS:
- Demonstrates at least 5 different movements
- Can name body parts used for specific movements
- Shows controlled, purposeful movement
- Understands that muscles and bones work together', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'How I Move' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- My Senses at Work
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'My Senses at Work' AND grade_level_min = 0),
  'My Senses at Work Topic Guide', 'Understanding how the five senses help us',
  'MY SENSES AT WORK - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to name the five senses
- Knowledge of which body part goes with each sense
- Experience using senses to explore

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Explain how each sense gives us different information
2. Use multiple senses together to learn about objects
3. Understand that senses help keep us safe
4. Appreciate that senses help us enjoy the world

KEY CONCEPTS:
- Each sense tells us something different about the world
- We often use more than one sense at a time
- Senses give us information to make decisions
- Senses can warn us of danger (smoke smell, loud noise)
- Some people''s senses work differently, and that''s okay

COMMON MISCONCEPTIONS:
- Thinking we can only use one sense at a time
- Believing all senses are needed for every activity
- Not understanding that senses provide information for our brain
- Thinking people who are deaf or blind can''t learn

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Eat a cookie or snack while describing: "I see the brown color, smell the chocolate, hear the crunch, taste the sweetness, feel the texture." How many senses did I use?

2. DIRECT INSTRUCTION (8 minutes):
   Review the five senses and their body parts.
   Explain that senses send information to our brain.
   Give examples of how senses help: eyes see cars coming, nose smells smoke, ears hear someone calling.
   Discuss using multiple senses: eating uses taste, smell, touch, and sight.

3. GUIDED PRACTICE (12 minutes):
   Provide various objects (apple, flower, bell, fabric, lemon).
   For each object, students identify which senses they can use to learn about it.
   Create a chart: Object / Senses We Can Use / What We Learned
   Discuss how using more senses gives more information.

4. INDEPENDENT PRACTICE (7 minutes):
   Students draw a picture showing themselves using senses to stay safe or learn.
   Examples: looking before crossing street, listening to teacher, tasting to see if food is good.
   Share with class: "I am using my ___ to ___."

DIFFERENTIATION:
For Struggling Learners:
- Focus on three senses (sight, hearing, touch)
- Use very clear, simple examples
- Provide picture cards showing senses helping
- Act out using senses for safety

For Advanced Learners:
- Explore how animals use senses differently (dogs smell better, eagles see better)
- Discuss how people adapt when one sense doesn''t work
- Investigate which senses are strongest for different tasks
- Create a book: "My Senses Help Me"

ASSESSMENT INDICATORS:
- Describes what each sense tells us
- Gives examples of using multiple senses together
- Explains at least one way senses keep us safe
- Shows appreciation for their senses', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'My Senses at Work' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Growing Up
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Growing Up' AND grade_level_min = 0),
  'Growing Up Topic Guide', 'Teaching about human growth and change',
  'GROWING UP - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of time concepts (baby, child, grown-up)
- Ability to sequence events
- Awareness of their own growth

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Describe how people change as they grow
2. Sequence stages of human growth (baby, child, teen, adult, elder)
3. Understand that everyone grows and changes
4. Recognize changes in themselves over time

KEY CONCEPTS:
- All humans start as babies and grow into adults
- As we grow, our bodies get bigger and we learn new skills
- Growth happens slowly over time
- We need food, water, sleep, and exercise to grow healthy
- Growing up means learning and changing, not just getting bigger

COMMON MISCONCEPTIONS:
- Thinking growth happens quickly or overnight
- Believing all children grow at exactly the same rate
- Not understanding that adults were once children
- Thinking growth stops after childhood

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show baby pictures of yourself or a volunteer student. Ask: "Who is this? How have they changed?"

2. DIRECT INSTRUCTION (8 minutes):
   Use pictures or dolls to show stages: baby, toddler, young child, older child, teenager, adult, older adult.
   Discuss changes at each stage: size, skills, responsibilities.
   Emphasize that everyone goes through these stages.
   Share that growing takes time - you didn''t learn to walk in one day!

3. GUIDED PRACTICE (10 minutes):
   Sequence activity: Put pictures of people at different ages in order from youngest to oldest.
   "Then and Now" comparison: Show baby photos and current photos of students (with permission).
   Discuss: "What could you do as a baby? What can you do now?"
   Create a timeline on chart paper showing growth stages.

4. INDEPENDENT PRACTICE (8 minutes):
   Students draw themselves at three stages: as a baby, now, and when they grow up.
   Label or dictate one thing they can do now that they couldn''t do as a baby.
   Share with a partner.

DIFFERENTIATION:
For Struggling Learners:
- Focus on just three stages (baby, child, adult)
- Use real photographs instead of drawings
- Provide pre-drawn stages to sequence
- Focus on size changes first, then skill changes

For Advanced Learners:
- Include more stages (infant, toddler, preschooler, etc.)
- Discuss what they''ll learn as they continue to grow
- Compare human growth to animal growth
- Create a book: "From Baby to Grown-up"

ASSESSMENT INDICATORS:
- Sequences at least three growth stages correctly
- Describes at least two ways people change as they grow
- Recognizes changes in their own growth
- Understands that growth is a natural, continuous process', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Growing Up' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Staying Healthy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Staying Healthy' AND grade_level_min = 0),
  'Staying Healthy Topic Guide', 'Teaching healthy habits for kindergarteners',
  'STAYING HEALTHY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic self-care awareness
- Understanding of feeling good vs feeling sick
- Familiarity with daily routines

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify healthy habits (eating well, sleeping, exercising)
2. Explain why these habits are important
3. Practice healthy behaviors
4. Make healthy choices when given options

KEY CONCEPTS:
- Our bodies need healthy food, water, sleep, and exercise to grow strong
- Eating fruits and vegetables helps our body work well
- Sleep helps our body rest and grow
- Exercise makes our muscles and heart strong
- Healthy habits help us feel good and have energy

COMMON MISCONCEPTIONS:
- Thinking treats and candy are okay to eat all the time
- Believing exercise is only for grown-ups or athletes
- Not understanding why sleep is important
- Thinking healthy habits are optional

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show two plants: one healthy and watered, one wilted. Ask: "What does the healthy plant need? What do our bodies need to stay healthy?"

2. DIRECT INSTRUCTION (8 minutes):
   Discuss four pillars of health: Food, Water, Sleep, Exercise
   Food: Show pictures of healthy foods (fruits, vegetables, whole grains, protein)
   Water: Explain our body needs water to work properly
   Sleep: Children need lots of sleep to grow and learn
   Exercise: Moving our body makes us strong
   Demonstrate simple exercises: jumping jacks, stretching, running in place

3. GUIDED PRACTICE (12 minutes):
   Healthy Choices Game: Show pairs of pictures (apple vs candy, playing outside vs watching TV, sleeping vs staying up late). Students show thumbs up for healthier choice.
   Create a class "Healthy Habits" poster with pictures
   Practice healthy movements: stretching, dancing, yoga poses
   Sample healthy snacks if available (fruit, vegetables, crackers)

4. INDEPENDENT PRACTICE (7 minutes):
   Students create a "My Healthy Day" drawing showing one healthy choice they make.
   Share: "I stay healthy by ___."
   Take home a healthy habits checklist for the week.

DIFFERENTIATION:
For Struggling Learners:
- Focus on one habit at a time (just food, or just exercise)
- Use very clear examples (water vs soda)
- Provide picture supports for healthy choices
- Model and practice behaviors together

For Advanced Learners:
- Explain why each habit helps the body
- Plan a healthy meal or daily schedule
- Teach younger students about healthy habits
- Track their own healthy habits for a week

ASSESSMENT INDICATORS:
- Names at least three healthy habits
- Explains why at least one habit is important
- Makes healthy choices in class activities
- Shows awareness of own health behaviors', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Staying Healthy' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Keeping Clean
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Keeping Clean' AND grade_level_min = 0),
  'Keeping Clean Topic Guide', 'Teaching hygiene habits',
  'KEEPING CLEAN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic self-care abilities
- Understanding of before/after concepts
- Awareness of germs at a simple level

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Wash hands properly using soap and water
2. Identify times when handwashing is important
3. Understand basic hygiene habits (brushing teeth, bathing, covering coughs)
4. Explain why staying clean helps us stay healthy

KEY CONCEPTS:
- Germs are tiny things we can''t see that can make us sick
- Washing hands with soap removes germs
- We should wash hands before eating, after using bathroom, after playing outside
- Brushing teeth keeps our mouth healthy
- Covering coughs and sneezes stops germs from spreading
- Bathing keeps our whole body clean

COMMON MISCONCEPTIONS:
- Thinking a quick rinse without soap cleans hands
- Believing germs are visible dirt
- Not understanding that we spread germs we can''t see
- Thinking they only need to wash hands when they look dirty

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Glitter activity: Put glitter on hands to represent germs. Shake hands with others. Notice how it spreads! Now try to wash it off - what works best?

2. DIRECT INSTRUCTION (8 minutes):
   Model proper handwashing: Wet, soap, scrub for 20 seconds (sing ABC song), rinse, dry
   Demonstrate scrubbing all parts: palms, backs, between fingers, under nails
   Discuss when to wash hands: before eating, after bathroom, after playing outside, after coughing/sneezing
   Show covering coughs and sneezes with elbow, not hands
   Mention other hygiene: brushing teeth, bathing, wearing clean clothes

3. GUIDED PRACTICE (10 minutes):
   Practice handwashing at sink (in small groups if needed)
   Sing ABC song or "Wash, Wash, Wash Your Hands" song while scrubbing
   Role-play scenarios: "You just came in from the playground. What should you do?"
   Sort picture cards: Times to wash hands vs. times when it''s not necessary
   Practice covering coughs with elbow

4. INDEPENDENT PRACTICE (8 minutes):
   Students create a handwashing poster with steps: wet, soap, scrub, rinse, dry
   Draw or place picture cards in order
   Take home a "Handwashing Hero" chart to track washing at home

DIFFERENTIATION:
For Struggling Learners:
- Use visual step-by-step handwashing poster at sink
- Focus on three key times to wash hands (before eating, after bathroom, after playing)
- Provide hand-over-hand support during handwashing
- Use songs with clear motions

For Advanced Learners:
- Explain how soap works to remove germs
- Identify many different times when handwashing is needed
- Teach younger students or siblings how to wash hands
- Create a class presentation about staying clean

ASSESSMENT INDICATORS:
- Washes hands correctly with all steps
- Names at least three times to wash hands
- Covers coughs and sneezes appropriately
- Explains that handwashing removes germs and prevents sickness', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Keeping Clean' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Staying Safe
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Staying Safe' AND grade_level_min = 0),
  'Staying Safe Topic Guide', 'Teaching safety rules and awareness',
  'STAYING SAFE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to follow rules
- Understanding of danger concepts
- Basic awareness of surroundings

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify safety rules at school and home
2. Explain why safety rules are important
3. Demonstrate safe behaviors
4. Know what to do in emergencies (who to ask for help)

KEY CONCEPTS:
- Safety rules keep us from getting hurt
- We follow rules at school, home, playground, and in cars
- Trusted adults help keep us safe
- We should tell an adult if something feels unsafe
- Emergency helpers include parents, teachers, police, firefighters, doctors

COMMON MISCONCEPTIONS:
- Thinking rules are just to be bossy
- Believing nothing bad can happen to them
- Not understanding when to ask for help
- Thinking all adults are safe (stranger danger awareness)

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show pictures of children in different settings (playground, car, kitchen, street). Ask: "What rules keep us safe here?"

2. DIRECT INSTRUCTION (8 minutes):
   Discuss safety rules in different places:
   - School: Walking in halls, staying with class, following teacher directions
   - Playground: Taking turns, using equipment correctly, staying in boundaries
   - Home: Not touching hot stoves, not playing with outlets, asking before eating unknown things
   - Street: Holding adult''s hand, looking both ways, crossing at crosswalks
   Introduce trusted adults: parents, teachers, police, firefighters
   Practice saying "No, go, and tell" if someone makes them feel unsafe

3. GUIDED PRACTICE (12 minutes):
   Safety Scenarios: Show pictures or act out situations. Students identify the safe choice.
   - "Your ball rolls into the street. What do you do?"
   - "A stranger offers you candy. What do you do?"
   - "You smell smoke at home. What do you do?"
   Practice emergency responses: Stop, drop, and roll for fire; calling 911; finding a trusted adult
   Create a class safety rules poster

4. INDEPENDENT PRACTICE (7 minutes):
   Students draw one safety rule they follow.
   Label or dictate: "This keeps me safe because ___."
   Role-play following the safety rule with a partner.

DIFFERENTIATION:
For Struggling Learners:
- Focus on three main safety rules (hold hands crossing street, tell adult if hurt, stay with class)
- Use lots of visuals and demonstrations
- Practice safety behaviors repeatedly
- Keep scenarios very simple and concrete

For Advanced Learners:
- Discuss why rules might be different in different places
- Identify unsafe situations and suggest solutions
- Learn about community helpers and their roles
- Create a safety guide for younger students

ASSESSMENT INDICATORS:
- Names at least four safety rules
- Explains why a safety rule is important
- Demonstrates safe behavior in class and on playground
- Knows to tell a trusted adult when something is wrong', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Staying Safe' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- DAY AND NIGHT TOPICS (7 topics)
-- ============================================================================

-- Daytime
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Daytime' AND grade_level_min = 0),
  'Daytime Topic Guide', 'Teaching about daytime characteristics',
  'DAYTIME - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of light and dark
- Ability to describe what they observe
- Awareness of daily routines

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Describe what daytime looks like
2. Identify activities that happen during the day
3. Understand that the sun makes daytime bright
4. Observe and describe the daytime sky

KEY CONCEPTS:
- Daytime is when the sun is in the sky
- Daytime is bright and we can see clearly
- Most people are awake during the day
- Many activities happen during daytime (school, playing, eating)
- The sky is usually blue during the day

COMMON MISCONCEPTIONS:
- Thinking the sun goes away at night
- Believing clouds mean it''s not daytime
- Not understanding that day happens because Earth turns
- Confusing afternoon with night

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Look outside during the day. Ask: "How do you know it''s daytime right now? What do you see and feel?"

2. DIRECT INSTRUCTION (7 minutes):
   Explain that daytime is when the sun is up in the sky
   Discuss characteristics of daytime: bright, light, can see clearly, shadows appear
   Show pictures of daytime scenes: children at school, people working, playing at park
   Introduce time of day: morning (sun rising), afternoon (sun high), evening (sun setting)
   Note: Even on cloudy days, it''s still daytime when sun is up (just behind clouds)

3. GUIDED PRACTICE (12 minutes):
   Daytime observation: Go outside or look out windows
   Students observe and describe: color of sky, position of sun (never look directly!), shadows, temperature
   Create a "What We Do During the Day" chart with pictures and words
   Sort activity cards: daytime activities vs nighttime activities
   Sing daytime songs or read daytime books

4. INDEPENDENT PRACTICE (8 minutes):
   Students draw a daytime picture showing the sun and a daytime activity they do
   Include details: blue sky, sun, themselves doing something
   Share: "During the day I ___."

DIFFERENTIATION:
For Struggling Learners:
- Focus on simple daytime indicators (sun up, bright)
- Use real photographs of daytime
- Provide daytime picture templates
- Focus on their own daytime routine

For Advanced Learners:
- Discuss different times of day (morning, noon, afternoon, evening)
- Observe how shadows change throughout the day
- Explain why sky is blue (in simple terms)
- Compare daytime in different seasons or places

ASSESSMENT INDICATORS:
- Describes daytime as bright with sun up
- Names at least three daytime activities
- Draws daytime scene with appropriate features
- Understands daytime is when we can see clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Daytime' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- The Sun
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Sun' AND grade_level_min = 0),
  'The Sun Topic Guide', 'Teaching about the sun safely',
  'THE SUN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding that daytime is bright
- Ability to follow safety rules
- Awareness of warm and hot

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that the sun gives us light and warmth
2. Know NEVER to look directly at the sun
3. Describe the sun''s appearance (round, bright, yellow/orange)
4. Recognize the sun''s importance for life on Earth

KEY CONCEPTS:
- The sun is a star that gives Earth light and heat
- The sun looks like a bright circle in the sky
- We should NEVER look directly at the sun - it can hurt our eyes
- The sun rises in the morning and sets in the evening
- Without the sun, Earth would be dark and cold
- Plants and animals need the sun to live

COMMON MISCONCEPTIONS:
- Thinking the sun is small because it looks small in the sky
- Believing the sun goes away at night
- Not understanding that the sun is always shining (Earth just turns)
- Thinking it''s safe to look at the sun if you squint

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Feel the warmth of sunlight through a window or outside. Ask: "Where does this warmth come from?"

2. DIRECT INSTRUCTION (8 minutes):
   Explain the sun is a giant ball of hot, glowing gas that gives light and heat
   SAFETY RULE: Never, ever look directly at the sun! It can hurt your eyes.
   Show pictures or illustrations of the sun (since we can''t look at it directly)
   Discuss sun''s appearance: bright, round, yellow or orange color
   Explain sun''s path: rises in east, travels across sky, sets in west
   Emphasize importance: sun gives light for daytime, warmth, helps plants grow, gives us energy

3. GUIDED PRACTICE (12 minutes):
   Observe the sun''s effects safely: look at sunlight on the ground, feel warmth on skin
   Shadow exploration: Stand in sunlight, observe your shadow
   Create sun art: Draw or paint the sun with yellow/orange, add rays
   Discuss: "What would happen if there was no sun?" (dark, cold, no plants)
   Sing sun songs: "You Are My Sunshine" or "Mr. Sun"

4. INDEPENDENT PRACTICE (7 minutes):
   Students draw a picture showing the sun helping Earth (sun shining on plants, warming the day, giving light)
   Add labels or dictate: "The sun gives us ___."
   Share their drawing with a partner.

DIFFERENTIATION:
For Struggling Learners:
- Focus on two main ideas: sun gives light and warmth
- Use songs and repetition for safety rule
- Provide sun templates to color
- Keep concepts concrete (sun makes day bright and warm)

For Advanced Learners:
- Explain that sun is a star like other stars, just closer
- Discuss how sun helps plants make food (basic photosynthesis)
- Track sun''s position at different times of day
- Learn about sun safety (sunscreen, hats)

ASSESSMENT INDICATORS:
- States that sun gives light and warmth
- Knows NEVER to look directly at the sun
- Describes sun as round, bright, and yellow/orange
- Understands sun is important for life on Earth', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Sun' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Shadows
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Shadows' AND grade_level_min = 0),
  'Shadows Topic Guide', 'Teaching about shadows and light',
  'SHADOWS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding that sun gives light
- Awareness of light and dark areas
- Ability to observe and compare

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that shadows form when light is blocked
2. Create shadows using light sources and objects
3. Observe that shadows change size and position
4. Describe the relationship between object and shadow

KEY CONCEPTS:
- A shadow is a dark area created when something blocks light
- Light cannot bend around objects, so shadows form
- Shadows appear on the opposite side of the light source
- Shadows are the same shape as the object blocking light
- Shadow size changes based on light position and distance

COMMON MISCONCEPTIONS:
- Thinking shadows are separate things, not just absence of light
- Believing shadows only happen outside
- Not understanding that any light source can create shadows
- Thinking shadows can exist without a light source

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Use a flashlight and an object in a darkened area. Turn light on and off. Ask: "What appears when the light is on? Where does it go when the light is off?"

2. DIRECT INSTRUCTION (8 minutes):
   Demonstrate shadow formation: Light source → Object blocks light → Shadow appears
   Show that shadow is on opposite side from light
   Move object closer/farther from light to show shadow size changes
   Explain: Shadows happen because light can''t pass through solid objects
   Point out shadows in the classroom and outside

3. GUIDED PRACTICE (12 minutes):
   Shadow exploration stations:
   Station 1: Use flashlight and toys to create shadows on wall
   Station 2: Outside - observe your own shadow, jump and watch shadow jump
   Station 3: Shadow tracing - trace object''s shadow on paper
   Station 4: Shadow puppets with hands
   Discuss observations: When is shadow big? When is it small? What shape is it?

4. INDEPENDENT PRACTICE (7 minutes):
   Students create a shadow picture: draw an object and its shadow
   Demonstrate understanding that shadow is same shape as object
   Share: "I made a shadow by ___."

DIFFERENTIATION:
For Struggling Learners:
- Focus on just creating shadows, not changing them
- Use clear, strong light source for obvious shadows
- Trace shadows to make them more concrete
- Compare light area and dark area (shadow) side by side

For Advanced Learners:
- Investigate how time of day changes shadow length
- Create specific shadow shapes using objects
- Make shadow puppets that tell a story
- Predict where shadow will appear before shining light

ASSESSMENT INDICATORS:
- Creates shadows using light and objects
- Explains that shadows form when light is blocked
- Observes that shadow shape matches object shape
- Notices shadows change with light position', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Shadows' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Nighttime
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Nighttime' AND grade_level_min = 0),
  'Nighttime Topic Guide', 'Teaching about nighttime characteristics',
  'NIGHTTIME - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of day and night cycle
- Awareness of light and dark
- Familiarity with bedtime routines

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Describe characteristics of nighttime
2. Identify activities that happen at night
3. Understand that nighttime is dark because sun is not visible
4. Observe and describe the night sky

KEY CONCEPTS:
- Nighttime is when the sun is not in our part of the sky
- Nighttime is dark, and we need lights to see
- Most people sleep at night to rest their bodies
- The moon and stars become visible at night
- Some animals are active at night (nocturnal)

COMMON MISCONCEPTIONS:
- Thinking the sun disappears at night
- Believing the moon only comes out at night
- Not understanding Earth''s rotation causes day and night
- Thinking it''s always nighttime when it''s dark outside

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show two pictures: same place during day and at night. Ask: "How are these different? How can you tell which is nighttime?"

2. DIRECT INSTRUCTION (7 minutes):
   Explain nighttime is when our part of Earth faces away from the sun
   Characteristics of night: dark sky, can''t see well without lights, cooler temperature
   Show pictures of night sky: moon, stars, dark blue or black sky
   Discuss nighttime activities: sleeping, bedtime routines, some people working night jobs
   Introduce nocturnal animals (owls, bats) that are awake at night

3. GUIDED PRACTICE (12 minutes):
   Create a day/night comparison chart: What''s the same? What''s different?
   Sort activity cards: day activities, night activities, both
   Read a nighttime book or sing nighttime songs
   Create a dark area in classroom and explore with flashlights
   Discuss: "How do we see at night?" (lights, moon, stars, flashlights)

4. INDEPENDENT PRACTICE (8 minutes):
   Students draw a nighttime scene with dark sky, moon, stars
   Include a nighttime activity (sleeping, reading bedtime story, etc.)
   Share: "At night I ___."

DIFFERENTIATION:
For Struggling Learners:
- Focus on simple nighttime indicators (dark, moon visible, time to sleep)
- Use real photos of nighttime
- Provide nighttime picture templates
- Connect to their own bedtime routine

For Advanced Learners:
- Discuss why we need sleep and what happens while we sleep
- Learn about nocturnal animals and their adaptations
- Explore artificial lights and how they help us at night
- Discuss people who work at night (doctors, firefighters)

ASSESSMENT INDICATORS:
- Describes nighttime as dark with moon and stars
- Explains nighttime happens when sun is not in our sky
- Names nighttime activities, especially sleeping
- Draws nighttime scenes with appropriate features', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Nighttime' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- The Moon
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Moon' AND grade_level_min = 0),
  'The Moon Topic Guide', 'Teaching kindergarteners about the moon',
  'THE MOON - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of day and night
- Awareness that moon appears in sky
- Ability to describe shapes (circle, crescent)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Describe the moon''s appearance
2. Understand the moon is visible mostly at night
3. Know the moon reflects sunlight (doesn''t make its own light)
4. Observe that the moon changes shape over time

KEY CONCEPTS:
- The moon is Earth''s closest neighbor in space
- The moon looks like it glows, but it''s reflecting light from the sun
- We see the moon mostly at night, but sometimes during the day too
- The moon appears to change shape (phases) over time
- The moon is round like a ball, even when it looks like a crescent

COMMON MISCONCEPTIONS:
- Thinking the moon makes its own light
- Believing the moon actually changes shape
- Not understanding moon and sun are both in sky at different times
- Thinking the moon is very small

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show pictures of different moon phases. Ask: "Is this the same moon or different moons? Why does it look different?"

2. DIRECT INSTRUCTION (8 minutes):
   Show the moon is a big rock ball that goes around Earth
   Explain moon doesn''t make light - it reflects sun''s light like a mirror
   Show photos of different moon phases: full moon, crescent moon, half moon
   Explain moon is always round, but we see different amounts lit up
   Discuss: We can sometimes see the moon during the day too!
   Share that people have visited the moon (astronauts)

3. GUIDED PRACTICE (10 minutes):
   Moon observation: If possible, observe moon outside or through window (or show live moon photo)
   Describe what we see: shape, color, bright or dim
   Create moon phases using Oreo cookies: twist apart and scrape to show different phases
   Or use white circle and cover parts with black paper to show phases
   Sing moon songs: "I See the Moon"

4. INDEPENDENT PRACTICE (9 minutes):
   Students create moon art: paint or draw the moon on dark paper
   Add stars around the moon
   Optionally track moon observations for a week: draw what moon looks like each night

DIFFERENTIATION:
For Struggling Learners:
- Focus on moon''s basic appearance (round, white/gray)
- Show just full moon and crescent moon
- Provide moon shape templates
- Keep concepts simple: moon is in night sky, reflects light

For Advanced Learners:
- Learn names of moon phases (new, crescent, quarter, gibbous, full)
- Track moon observations over a month
- Learn that moon has craters and no air
- Discuss astronauts and moon landing

ASSESSMENT INDICATORS:
- Describes moon as round and visible at night
- Understands moon reflects sunlight
- Recognizes at least two moon phases
- Shows interest in observing the moon', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Moon' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Stars
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Stars' AND grade_level_min = 0),
  'Stars Topic Guide', 'Teaching about stars in the night sky',
  'STARS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of nighttime
- Ability to observe the sky
- Awareness that sky has different objects

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify stars as objects in the night sky
2. Understand stars make their own light
3. Recognize that stars appear very small because they''re far away
4. Know the sun is a star

KEY CONCEPTS:
- Stars are balls of hot, glowing gas very far away
- Stars make their own light (unlike the moon)
- Stars look like tiny points of light because they''re so far away
- There are many, many stars in the sky
- The sun is a star - the closest star to Earth
- We can only see stars at night when sky is dark

COMMON MISCONCEPTIONS:
- Thinking stars are tiny
- Believing stars are different from the sun
- Confusing stars with planets
- Thinking we can reach or touch stars

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a picture of a night sky full of stars. Ask: "What are these tiny lights? How many do you think there are?"

2. DIRECT INSTRUCTION (7 minutes):
   Explain stars are huge balls of hot gas that make light, like the sun
   The sun is actually a star - the closest one to us!
   Other stars look tiny because they''re very, very far away
   Stars are always in the sky, but we can only see them at night when it''s dark
   Stars seem to twinkle because of air moving around Earth
   Point out that there are more stars than we could ever count

3. GUIDED PRACTICE (12 minutes):
   Star observation: If possible, observe stars outside at night (or show photographs/video)
   Count stars in a small section of sky (or in photo)
   Create star art: Use white crayon or paint on black paper to make stars
   Sprinkle glitter on glue to make sparkling stars
   Learn a simple constellation (Big Dipper) if age-appropriate
   Sing "Twinkle, Twinkle, Little Star" and discuss the lyrics

4. INDEPENDENT PRACTICE (8 minutes):
   Students create a night sky picture with many stars
   Use dots, stickers, or stamps for stars
   Add moon and label "stars" and "moon"
   Share: "Stars are ___."

DIFFERENTIATION:
For Struggling Learners:
- Focus on simple facts: stars are in night sky, stars make light, sun is a star
- Use concrete representations (flashlights as stars)
- Provide dark paper with pre-drawn stars to trace
- Keep number of facts to remember small

For Advanced Learners:
- Learn about constellations and their stories
- Understand why we can''t see stars during day (sun too bright)
- Compare sizes of different stars
- Learn that stars can be different colors
- Track star observations over several nights

ASSESSMENT INDICATORS:
- Identifies stars as lights in night sky
- States that stars make their own light
- Knows sun is a star
- Understands stars are far away, not actually small', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Stars' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Daily Patterns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Daily Patterns' AND grade_level_min = 0),
  'Daily Patterns Topic Guide', 'Teaching about the daily cycle of day and night',
  'DAILY PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of day and night
- Awareness of daily routines
- Ability to sequence events

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Describe the pattern of morning, afternoon, evening, and night
2. Sequence daily events in correct order
3. Understand that the day/night pattern repeats every day
4. Connect daily patterns to their own routines

KEY CONCEPTS:
- Every day follows the same pattern: morning, afternoon, evening, night, then morning again
- Morning is when the sun rises and day begins
- Afternoon is the middle of the day when sun is high
- Evening is when the sun sets and it starts getting dark
- Night is when it''s dark and most people sleep
- This pattern repeats every single day
- We do different activities at different times of day

COMMON MISCONCEPTIONS:
- Confusing afternoon with evening
- Thinking the pattern can be different on different days
- Not understanding that the pattern is caused by Earth spinning
- Believing they control when it''s day or night

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show four pictures of the same place at different times: sunrise, midday, sunset, night. Ask: "What order do these go in?"

2. DIRECT INSTRUCTION (8 minutes):
   Introduce four parts of the day: Morning, Afternoon, Evening, Night
   Morning: Sun rises, breakfast time, school starts
   Afternoon: Sun is high, lunchtime, middle of day
   Evening: Sun sets, getting dark, dinner time
   Night: Dark, bedtime, sleeping
   Emphasize that this pattern happens every day and repeats
   Show with a circular diagram: morning → afternoon → evening → night → morning...

3. GUIDED PRACTICE (12 minutes):
   Create a class "Our Daily Pattern" chart with pictures of classroom activities
   Sequence activity cards: put daily events in order from morning to night
   Act out a day: Students role-play waking up, going to school, eating lunch, going to bed
   Discuss sun''s position: low in morning, high at noon, low in evening, gone at night
   Read a book about daily patterns or sing songs about parts of the day

4. INDEPENDENT PRACTICE (7 minutes):
   Students create a "My Day" wheel or strip showing morning, afternoon, evening, night
   Draw one thing they do at each time
   Share with a partner: "In the morning I ___, in the afternoon I ___, ..."

DIFFERENTIATION:
For Struggling Learners:
- Focus on just two parts: daytime and nighttime
- Use very familiar activities from their routine
- Provide picture supports for each time of day
- Practice sequencing with just three parts

For Advanced Learners:
- Discuss why the pattern repeats (Earth spinning)
- Include more specific times (dawn, dusk, midnight)
- Track time throughout a school day
- Compare their daily pattern to someone in a different country

ASSESSMENT INDICATORS:
- Sequences morning, afternoon, evening, night correctly
- Names activities that happen at each time
- Understands the pattern repeats every day
- Connects times of day to sun''s position', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Daily Patterns' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WEATHER TOPICS (6 topics)
-- ============================================================================

-- What is Weather?
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'What is Weather?' AND grade_level_min = 0),
  'What is Weather Topic Guide', 'Introduction to weather concepts',
  'WHAT IS WEATHER? - TOPIC TEACHING GUIDE

PREREQUISITES:
- Awareness of outdoor conditions
- Ability to describe what they observe
- Understanding of temperature concepts (hot, cold, warm)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define weather as what it is like outside
2. Identify basic weather elements (temperature, precipitation, wind, clouds)
3. Observe and describe current weather
4. Understand that weather changes over time

KEY CONCEPTS:
- Weather is what it is like outside right now
- Weather includes temperature (hot or cold), rain or snow, wind, and clouds
- Weather can be different in different places
- Weather changes from day to day
- We can observe weather using our senses

COMMON MISCONCEPTIONS:
- Confusing weather with climate or seasons
- Thinking weather stays the same all the time
- Not understanding that weather happens in the air around us
- Believing we can control the weather

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Look outside. Ask: "What is it like outside right now? How can you tell?"

2. DIRECT INSTRUCTION (7 minutes):
   Define weather: Weather is what it is like outside
   Four main things we notice about weather:
   - Temperature: Is it hot, warm, cool, or cold?
   - Precipitation: Is it raining, snowing, or dry?
   - Wind: Is the air moving? Calm or windy?
   - Clouds: What does the sky look like? Cloudy or clear?
   Demonstrate observing weather using senses: feel temperature, see clouds, hear wind

3. GUIDED PRACTICE (12 minutes):
   Weather observation activity: Go outside or look out windows
   Use senses to observe: feel air, see sky, listen for wind
   Complete a weather observation chart as a class
   Temperature: hot/warm/cool/cold (thermometer if available)
   Sky: sunny/cloudy/rainy/snowy
   Wind: calm/breezy/windy
   Discuss: "How is today''s weather different from yesterday?"

4. INDEPENDENT PRACTICE (8 minutes):
   Students draw today''s weather showing temperature, sky, and any precipitation
   Add weather words or labels with teacher support
   Share: "Today the weather is ___."

DIFFERENTIATION:
For Struggling Learners:
- Focus on two weather elements (temperature and precipitation)
- Use simple weather words (hot/cold, sunny/rainy)
- Provide weather picture cards to match
- Connect to what they should wear outside

For Advanced Learners:
- Use more specific weather vocabulary (partly cloudy, drizzle, gusty)
- Compare weather in different locations
- Track weather changes over a week
- Discuss what causes different types of weather

ASSESSMENT INDICATORS:
- Defines weather as conditions outside
- Names at least two weather elements
- Observes and describes current weather accurately
- Understands weather can change', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What is Weather?' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Cloudy Days
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cloudy Days' AND grade_level_min = 0),
  'Cloudy Days Topic Guide', 'Teaching about clouds and cloudy weather',
  'CLOUDY DAYS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of basic weather concepts
- Ability to observe the sky
- Awareness that clouds are in the sky

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Describe what clouds look like
2. Understand clouds are made of tiny water droplets
3. Identify different types of clouds (fluffy, flat, dark)
4. Observe how clouds move across the sky

KEY CONCEPTS:
- Clouds are made of tiny drops of water floating in the air
- Clouds can be different shapes, sizes, and colors
- White fluffy clouds often mean nice weather
- Dark gray clouds often bring rain
- Clouds move when wind blows them
- Cloudy days are less bright than sunny days but still daytime

COMMON MISCONCEPTIONS:
- Thinking clouds are solid like cotton
- Believing clouds are made of cotton or foam
- Not understanding that rain comes from clouds
- Thinking clouds are very close (can be touched easily)

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Look at clouds outside or in pictures. Ask: "What do these clouds look like to you? What shapes do you see?"

2. DIRECT INSTRUCTION (7 minutes):
   Explain clouds are made of tiny, tiny water drops so light they float
   Show pictures of different cloud types:
   - Fluffy white clouds (fair weather)
   - Flat gray clouds (overcast)
   - Dark clouds (rain coming)
   Discuss cloud watching: finding shapes and pictures in clouds
   Explain clouds move when wind pushes them

3. GUIDED PRACTICE (12 minutes):
   Cloud observation: Go outside or look at cloud pictures/videos
   Describe clouds: color, shape, how many, moving or still
   Cloud art activities:
   - Paint clouds using white and gray on blue paper
   - Glue cotton balls to make fluffy clouds
   - Use shaving cream or whipped cream to make clouds
   Play cloud imagination game: "That cloud looks like a ___."

4. INDEPENDENT PRACTICE (8 minutes):
   Students create a cloud picture showing different types of clouds
   Draw or paint clouds in the sky
   Label "fluffy clouds" or "dark clouds"
   Share what shape or picture they see in their clouds

DIFFERENTIATION:
For Struggling Learners:
- Focus on two types: white clouds and dark clouds
- Provide cloud shape templates
- Use tactile materials (cotton, shaving cream)
- Keep concepts simple: clouds are water in the sky

For Advanced Learners:
- Learn cloud type names (cumulus, stratus, cirrus)
- Explain how clouds form (water vapor cooling)
- Track clouds over several days
- Discuss why clouds are different colors

ASSESSMENT INDICATORS:
- Describes clouds as water droplets in sky
- Identifies different cloud types by appearance
- Observes that clouds move
- Connects dark clouds with possible rain', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cloudy Days' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Windy Days
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Windy Days' AND grade_level_min = 0),
  'Windy Days Topic Guide', 'Teaching about wind and its effects',
  'WINDY DAYS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of weather concepts
- Awareness of moving air
- Ability to observe movement

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that wind is moving air
2. Observe evidence of wind (moving objects)
3. Describe wind as calm, breezy, or strong
4. Recognize that we can feel but not see wind

KEY CONCEPTS:
- Wind is air that moves
- We cannot see air or wind, but we can feel it and see what it moves
- Wind can be gentle (breeze) or strong (gust)
- Wind moves things like leaves, flags, clouds, and kites
- Wind can be helpful (flying kites, cooling us) or sometimes harmful (blowing things over)

COMMON MISCONCEPTIONS:
- Thinking wind comes from trees or buildings
- Believing we can see the wind itself
- Not understanding that wind is moving air
- Confusing wind with breathing or fans

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Wave a paper fan near students'' faces. Ask: "What do you feel? Can you see it? This is like wind!"

2. DIRECT INSTRUCTION (7 minutes):
   Explain wind is air moving around us
   We can''t see air, but we know it''s there when it moves
   Evidence of wind: flags waving, leaves rustling, clouds moving, hair blowing
   Wind can be calm (still air), breezy (gentle), or strong (powerful)
   Demonstrate: blow on paper, watch it move - that''s like wind moving things
   Discuss wind safety: strong wind can blow things away or knock things over

3. GUIDED PRACTICE (12 minutes):
   Wind observation: Go outside on a breezy day or create wind with fans
   Observe: What is moving? How can we tell wind is blowing?
   Wind experiments:
   - Hold up streamers or ribbons, watch them blow
   - Drop light objects (feathers, tissue paper) and watch wind carry them
   - Listen for sounds of wind
   Create wind: use hand fans, paper fans, or blow through straws
   Make pinwheels and blow on them or hold in wind

4. INDEPENDENT PRACTICE (8 minutes):
   Students draw a windy day showing things the wind moves
   Include trees bending, leaves flying, clouds moving, flag waving
   Add arrows to show wind direction
   Share: "On a windy day, the wind moves ___."

DIFFERENTIATION:
For Struggling Learners:
- Create wind experiences with fans
- Focus on feeling and seeing evidence of wind
- Provide picture cards showing windy effects
- Use simple vocabulary: windy, calm, blowing

For Advanced Learners:
- Discuss what causes wind (air moving from high to low pressure - simplified)
- Compare light breeze to strong wind
- Measure wind with windsock or flag
- Explore how wind helps (sail boats, windmills)

ASSESSMENT INDICATORS:
- Explains wind is moving air
- Identifies evidence of wind (moving objects)
- Describes different wind strengths
- Understands we feel but don''t see wind', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Windy Days' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Rainy Days
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Rainy Days' AND grade_level_min = 0),
  'Rainy Days Topic Guide', 'Teaching about rain and precipitation',
  'RAINY DAYS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of clouds
- Awareness of water
- Experience with rain

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that rain is water falling from clouds
2. Describe what rainy weather is like
3. Identify appropriate clothing and activities for rainy days
4. Recognize that rain is important for plants and animals

KEY CONCEPTS:
- Rain is water that falls from clouds
- Rain happens when clouds get too full of water
- Rain makes puddles on the ground
- We wear raincoats, boots, and use umbrellas to stay dry
- Rain helps plants grow and gives animals water to drink
- After rain, we might see rainbows

COMMON MISCONCEPTIONS:
- Thinking rain comes from somewhere other than clouds
- Believing rain is different water than we drink
- Not understanding where rain goes after it falls
- Thinking rain is bad (it''s actually necessary)

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Sound of rain (recording or tapping fingers on desk). Ask: "What do you hear? What is rain?"

2. DIRECT INSTRUCTION (7 minutes):
   Explain rain is water falling from clouds
   Clouds hold tiny water drops, and when too many collect, they fall as rain
   Describe rainy weather: wet, puddles, cloudy sky, dripping sounds
   Show rain gear: umbrella, raincoat, rain boots
   Discuss importance: plants need rain to grow, animals need water to drink
   Mention rainbows can appear when sun shines through rain

3. GUIDED PRACTICE (12 minutes):
   If raining: Observe rain through window or go outside briefly with umbrellas
   Watch raindrops fall, see puddles form, listen to rain sounds
   If not raining: Watch rain videos or read rain books
   Rain activities:
   - Create rain sounds with instruments or fingers on desk
   - Dress a doll or picture in rain gear
   - Paint rain falling from clouds using blue streaks
   Discuss: "What do you like to do on rainy days?"

4. INDEPENDENT PRACTICE (8 minutes):
   Students draw a rainy day picture: clouds, rain falling, puddles
   Include themselves in rain gear (raincoat, boots, umbrella)
   Add labels: "rain," "clouds," "puddle"
   Share: "On rainy days I ___."

DIFFERENTIATION:
For Struggling Learners:
- Focus on simple concepts: rain is water from clouds
- Provide rain gear items to explore (real umbrellas, boots)
- Use rain sound recordings for sensory experience
- Give rain picture templates to color

For Advanced Learners:
- Explain simple water cycle: rain → ground → evaporates → clouds → rain
- Measure rain in a simple rain gauge
- Discuss different types of rain (drizzle, downpour)
- Explore where puddles go when they dry up

ASSESSMENT INDICATORS:
- States that rain is water falling from clouds
- Describes rainy weather appropriately
- Identifies rain gear and its purpose
- Understands rain helps plants and animals', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rainy Days' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Snowy Days
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Snowy Days' AND grade_level_min = 0),
  'Snowy Days Topic Guide', 'Teaching about snow and cold weather',
  'SNOWY DAYS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of weather and clouds
- Awareness of cold temperatures
- Experience with ice or cold (even if not snow)

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand that snow is frozen precipitation
2. Describe characteristics of snow (white, cold, soft)
3. Identify appropriate clothing for snowy weather
4. Recognize that snow melts when it gets warm

KEY CONCEPTS:
- Snow is frozen water that falls from clouds when it''s very cold
- Snowflakes are small and white, and many together make snow
- Snow feels cold and soft, and we can play in it
- We wear warm clothes in snow: coat, hat, gloves, boots
- Snow melts (turns to water) when it gets warmer
- Not all places get snow - it''s special to cold climates

COMMON MISCONCEPTIONS:
- Thinking snow and ice are the same thing
- Believing snow is made in clouds, not formed from water
- Not understanding that snow is frozen water
- Thinking snow stays forever

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show snow (real if available, or ice) and water side by side. Ask: "How are these the same? How are they different?"

2. DIRECT INSTRUCTION (7 minutes):
   Explain snow is water that freezes in cold clouds and falls as snowflakes
   Each snowflake is unique and has a special pattern
   Snow is white, cold, and soft when it lands
   Describe snowy weather: very cold, white ground, winter time
   Show warm winter clothing: heavy coat, hat, scarf, mittens/gloves, snow boots
   Demonstrate that snow melts: bring in snow or ice and let it melt to water
   Discuss snow activities: building snowmen, making snow angels, sledding

3. GUIDED PRACTICE (12 minutes):
   If snowing: Observe snow falling, catch snowflakes (on dark paper if possible)
   If not snowing: Explore ice or watch snow videos
   Snow activities:
   - Feel ice or frozen water, notice it''s cold and hard
   - Watch ice melt into water
   - Create snowflakes by cutting white paper
   - Paint snow scenes with white paint on dark paper
   - Practice putting on winter clothes (coat, hat, gloves)
   Read snowy day books or sing snow songs

4. INDEPENDENT PRACTICE (8 minutes):
   Students draw a snowy day scene: snow falling from clouds, snow on ground
   Include themselves dressed warmly or a snow activity (snowman, sledding)
   Use white crayon or paint for snow
   Share: "On snowy days I ___."

DIFFERENTIATION:
For Struggling Learners:
- Focus on simple facts: snow is cold, white, frozen water
- Provide real ice to explore even if no snow available
- Use picture cards showing snow activities and clothing
- Keep concepts concrete and sensory

For Advanced Learners:
- Examine snowflake patterns and symmetry
- Discuss why some places get snow and others don''t
- Measure snow depth or melting time
- Compare snow to rain and ice
- Learn about animals that live in snowy climates

ASSESSMENT INDICATORS:
- Describes snow as frozen water from clouds
- States that snow is cold and white
- Identifies warm clothing for snow
- Understands snow melts when it warms up', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Snowy Days' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Weather Clothes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Weather Clothes' AND grade_level_min = 0),
  'Weather Clothes Topic Guide', 'Teaching about dressing appropriately for weather',
  'WEATHER CLOTHES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of different weather types
- Familiarity with common clothing items
- Awareness of hot and cold

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Match appropriate clothing to different weather conditions
2. Explain why certain clothes are worn in certain weather
3. Make choices about what to wear based on weather
4. Understand that clothes help keep us comfortable and safe

KEY CONCEPTS:
- Different weather requires different clothing
- Hot weather: light, cool clothes like shorts and t-shirts
- Cold weather: warm layers like coats, hats, and gloves
- Rainy weather: waterproof clothes like raincoats and boots
- Snowy weather: warm and waterproof clothes
- Proper clothing keeps us safe and comfortable

COMMON MISCONCEPTIONS:
- Thinking any clothes are fine for any weather
- Not understanding that clothes help regulate body temperature
- Believing fashion is more important than function in extreme weather
- Thinking they don''t need to change clothes for different seasons

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Show a child wearing a heavy winter coat on a beach. Ask: "What''s wrong with this picture? Why?"

2. DIRECT INSTRUCTION (8 minutes):
   Review weather types: hot/sunny, cold, rainy, snowy
   Match clothes to weather:
   - Sunny/Hot: shorts, t-shirt, sandals, sunhat, sunglasses
   - Cold: long pants, sweater, jacket, socks, closed shoes
   - Rainy: raincoat, rain boots, umbrella
   - Snowy: winter coat, snow pants, boots, hat, mittens, scarf
   Explain why: "We wear shorts when it''s hot so we don''t get too warm. We wear coats when it''s cold so we stay warm."
   Emphasize that right clothes keep us comfortable and safe

3. GUIDED PRACTICE (12 minutes):
   Weather and clothes matching game:
   - Show weather picture, students choose appropriate clothes from options
   - Dress a doll or paper figure for different weather
   Sort clothing cards by weather type
   Role-play: Teacher calls out weather, students pantomime putting on appropriate clothes
   Create a weather clothing chart: draw or glue pictures of clothes under each weather type

4. INDEPENDENT PRACTICE (7 minutes):
   Students draw themselves dressed for their favorite weather
   Include weather elements (sun, rain, snow, etc.) in their picture
   Share: "I am dressed for ___ weather. I''m wearing ___."

DIFFERENTIATION:
For Struggling Learners:
- Focus on two weather types (hot and cold)
- Use real clothing items to sort
- Provide choice of just two outfits per weather
- Connect to what they wear to school in different weather

For Advanced Learners:
- Discuss layering clothes for changing temperatures
- Identify materials (waterproof, insulating, breathable)
- Plan a week''s wardrobe based on weather forecast
- Discuss how clothing varies in different climates around the world

ASSESSMENT INDICATORS:
- Matches at least 3 weather types to appropriate clothing
- Explains why specific clothes are worn in specific weather
- Makes appropriate clothing choices for current weather
- Understands clothes help us stay comfortable and safe', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Weather Clothes' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Kindergarten Science Expanded Prompts Created:
-- - Science Skills: 8 topics
-- - My Body: 7 topics
-- - Day and Night: 7 topics
-- - Weather: 6 topics
-- Total: 28 comprehensive teaching prompts
-- ============================================================================
