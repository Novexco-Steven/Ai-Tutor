-- Kindergarten Science Topic Prompts
-- Comprehensive teaching guides for each topic

-- =====================================================
-- UNIT: WEATHER AND SEASONS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Daily Weather' AND grade_level_min = 0),
  'Daily Weather Topic Guide', 'Observe and describe what the weather is like each day',
  'DAILY WEATHER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have basic vocabulary for describing what they see and feel. No prior science instruction required. Ability to look outside and describe observations.

LEARNING OBJECTIVES:
- Observe weather conditions each day
- Use words to describe weather (sunny, cloudy, rainy, snowy, windy)
- Recognize that weather changes from day to day
- Connect weather to personal experiences (what we wear, what we do)

KEY CONCEPTS:
1) Weather describes what the air is like outside right now
2) Weather can be sunny, cloudy, rainy, snowy, or windy
3) We can feel weather (hot, cold, wet)
4) Weather changes every day
5) Weather affects what we do and wear

COMMON MISCONCEPTIONS:
- Confusing weather with climate
- Thinking weather is the same every day
- Not understanding clouds can exist without rain
- Thinking wind is invisible so it doesn''t exist

TEACHING SEQUENCE:
Start each science time with a weather check. Look out the window together. Ask: "What do you see in the sky? How does the air feel?" Use simple vocabulary: sunny, cloudy, rainy, windy. Create a class weather calendar with pictures. Connect to students'' lives: "What did you wear today because of the weather?" Use songs and movement to reinforce weather words.

DIFFERENTIATION:
Struggling learners: Use picture cards for weather words, feel weather through touch (warm vs cold), focus on two weather types at a time. Advanced learners: Predict tomorrow''s weather, compare today to yesterday, begin simple weather journaling with pictures.

VOCABULARY:
Weather, sunny, cloudy, rainy, snowy, windy, hot, cold, warm, cool, sky, outside.

CONNECTION TO FUTURE LEARNING:
Daily weather observation builds scientific observation skills and prepares for understanding weather patterns, seasons, and eventually climate in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Daily Weather' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Weather Tools' AND grade_level_min = 0),
  'Weather Tools Topic Guide', 'Learn about thermometers, rain gauges, and wind vanes',
  'WEATHER TOOLS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should recognize basic weather types from Daily Weather topic. Familiarity with words like hot, cold, rain, and wind. Basic counting ability for simple measurements.

LEARNING OBJECTIVES:
- Recognize that tools help us measure weather
- Understand thermometers tell us if it is hot or cold
- Understand rain gauges collect and measure rain
- Understand wind vanes show which way wind blows

KEY CONCEPTS:
1) Scientists use special tools to learn about weather
2) A thermometer measures temperature (hot or cold)
3) A rain gauge is a container that catches rain
4) A wind vane points the direction the wind comes from
5) Tools help us be more exact than just looking and feeling

COMMON MISCONCEPTIONS:
- Thinking you need special powers to know the weather
- Confusing thermometer with other measuring tools
- Not understanding what "measuring" rain means
- Thinking wind vanes make the wind blow

TEACHING SEQUENCE:
Introduce one tool at a time across several lessons. Start with thermometer—show the red liquid going up and down. Use hot and cold water demonstrations. For rain gauge, make a simple one from a clear container with marks. For wind vanes, show how they spin and point. Connect each tool to the weather element it measures. Have students pretend to be weather scientists using their tools.

DIFFERENTIATION:
Struggling learners: Focus on one tool per lesson, use hands-on exploration, connect tools to simple concepts (thermometer = hot/cold). Advanced learners: Read numbers on thermometer, create class weather station, record measurements over several days.

VOCABULARY:
Thermometer, temperature, rain gauge, wind vane, measure, scientist, weather tools, hot, cold, direction.

CONNECTION TO FUTURE LEARNING:
Understanding weather tools introduces measurement concepts and scientific instruments, preparing students for more precise data collection in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Weather Tools' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Four Seasons' AND grade_level_min = 0),
  'The Four Seasons Topic Guide', 'Understand spring, summer, fall, and winter',
  'THE FOUR SEASONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have experience observing daily weather. Basic understanding that weather changes. Awareness of time passing (days, weeks).

LEARNING OBJECTIVES:
- Name the four seasons: spring, summer, fall, winter
- Describe what happens in each season
- Recognize seasons repeat in the same order every year
- Connect seasons to activities and clothing

KEY CONCEPTS:
1) There are four seasons: spring, summer, fall, winter
2) Spring is when flowers bloom and baby animals are born
3) Summer is hot and sunny with long days
4) Fall is when leaves change colors and fall from trees
5) Winter is cold with short days, sometimes snow
6) Seasons repeat in the same order every year

COMMON MISCONCEPTIONS:
- Thinking seasons happen randomly
- Confusing weather with seasons (one cold day doesn''t mean winter)
- Not understanding seasons in different locations vary
- Thinking all places have four distinct seasons

TEACHING SEQUENCE:
Use pictures, videos, and memories to explore each season. Start with the current season. Create a seasons circle showing the order. Use movement and songs to learn season names in order. Discuss what students do in each season (swimming in summer, sledding in winter). Make seasonal art projects. Read books about seasons. Connect to nature observations outside the classroom.

DIFFERENTIATION:
Struggling learners: Focus on two contrasting seasons first (summer/winter), use sensory experiences, connect to clothing and activities. Advanced learners: Explore what causes seasons (simply: Earth tilts toward and away from sun), compare seasons in different places, create season books.

VOCABULARY:
Season, spring, summer, fall, autumn, winter, bloom, grow, harvest, hibernate, pattern, repeat, year.

CONNECTION TO FUTURE LEARNING:
Understanding seasons builds foundation for Earth science concepts including Earth''s tilt, day length, and climate patterns explored in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Four Seasons' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Dressing for Weather' AND grade_level_min = 0),
  'Dressing for Weather Topic Guide', 'Choose appropriate clothing for different weather',
  'DRESSING FOR WEATHER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should know basic weather types and seasons. Familiarity with clothing names. Understanding of hot and cold.

LEARNING OBJECTIVES:
- Match clothing to weather conditions
- Explain why we dress differently in different weather
- Make choices about what to wear based on weather
- Understand clothing protects us from weather

KEY CONCEPTS:
1) We wear different clothes depending on the weather
2) Warm clothes (coat, hat, gloves) keep us warm when it''s cold
3) Light clothes (shorts, t-shirt) keep us cool when it''s hot
4) Rain gear (raincoat, boots, umbrella) keeps us dry
5) Clothing protects our bodies from weather

COMMON MISCONCEPTIONS:
- Thinking we wear the same clothes all year
- Not understanding why sunscreen is weather protection
- Confusing fashion choices with weather-appropriate choices
- Thinking only coats matter in cold weather (forgetting hats, gloves)

TEACHING SEQUENCE:
Use a weather dress-up game. Show a weather type and have students choose clothes from a pile or pictures. Discuss why each choice makes sense. Connect to students'' morning routines: "What did you check before getting dressed?" Use paper doll activities with seasonal wardrobes. Sort clothing into categories: for hot weather, for cold weather, for rain. Discuss personal experiences being too hot or too cold.

DIFFERENTIATION:
Struggling learners: Use real clothing for sorting, focus on extreme weather first (very hot, very cold), match pictures of weather to pictures of clothes. Advanced learners: Consider layering strategies, discuss weather that changes during the day, explore how different jobs require special weather gear.

VOCABULARY:
Clothing, coat, jacket, hat, gloves, mittens, boots, raincoat, umbrella, shorts, t-shirt, layers, protect, temperature.

CONNECTION TO FUTURE LEARNING:
Understanding weather-appropriate clothing develops practical life skills and connects science to personal decision-making, a foundation for applied science thinking.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dressing for Weather' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: PLANTS AND ANIMALS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'What Plants Need' AND grade_level_min = 0),
  'What Plants Need Topic Guide', 'Plants need water, sunlight, and air to grow',
  'WHAT PLANTS NEED - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should recognize what a plant is. Basic understanding that living things grow. No prior science instruction required.

LEARNING OBJECTIVES:
- Identify that plants are living things
- Name what plants need: water, sunlight, air
- Observe that plants grow and change
- Understand plants will not grow without their needs met

KEY CONCEPTS:
1) Plants are living things that grow
2) Plants need water to drink
3) Plants need sunlight for energy
4) Plants need air to breathe
5) Without water, light, or air, plants cannot live

COMMON MISCONCEPTIONS:
- Thinking plants only need water
- Not understanding plants are alive
- Thinking plants eat dirt (they use nutrients but don''t "eat")
- Believing plastic plants are alive

TEACHING SEQUENCE:
Grow plants in the classroom! Start bean seeds in clear cups so students can see roots. Water some, not others. Put some in sunlight, some in dark. Observe daily and discuss what happens. Ask: "Which plants look healthy? Why?" Connect to experience: "Have you ever helped water a plant?" Use songs about plant needs. Create drawings of happy plants with sun, water drops, and air.

DIFFERENTIATION:
Struggling learners: Focus on water first as most visible need, use frequent observation and discussion, provide physical care of classroom plants. Advanced learners: Design simple experiments (one plant in dark, one in light), learn plant parts (roots for water, leaves for sunlight), predict what happens without each need.

VOCABULARY:
Plant, living, grow, water, sunlight, sun, air, needs, healthy, roots, leaves, seed.

CONNECTION TO FUTURE LEARNING:
Understanding plant needs builds foundation for plant life cycles, photosynthesis, and ecosystem concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What Plants Need' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'What Animals Need' AND grade_level_min = 0),
  'What Animals Need Topic Guide', 'Animals need food, water, air, and shelter',
  'WHAT ANIMALS NEED - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should recognize what an animal is. Understanding that living things need things to survive from plant unit. Basic vocabulary for naming animals.

LEARNING OBJECTIVES:
- Identify that animals are living things
- Name what animals need: food, water, air, shelter
- Compare what different animals eat
- Understand that animals find or make shelters

KEY CONCEPTS:
1) Animals are living things that move and grow
2) All animals need food to eat
3) All animals need water to drink
4) All animals need air to breathe
5) Many animals need shelter to stay safe and warm

COMMON MISCONCEPTIONS:
- Thinking only pets are animals
- Believing all animals eat the same food
- Not understanding insects and fish are animals
- Thinking animals in zoos or homes don''t have needs

TEACHING SEQUENCE:
Start with familiar animals: pets, farm animals. Ask: "What do dogs need? What do cats need?" Extend to wild animals: "What does a bird need? A fish?" Discuss different foods: some animals eat plants, some eat other animals, some eat both. Explore shelters: nests, burrows, caves, dog houses. Use videos of animals in their homes. If possible, observe animals outside or have a class pet.

DIFFERENTIATION:
Struggling learners: Focus on one or two familiar animals, use pictures to match animals with needs, connect to personal experience with pets. Advanced learners: Compare needs of very different animals (fish vs bird), explore how animals get water in different environments, discuss how humans help animals meet needs.

VOCABULARY:
Animal, living, food, water, air, shelter, home, nest, burrow, pet, wild, habitat.

CONNECTION TO FUTURE LEARNING:
Understanding animal needs builds foundation for habitat, adaptation, and ecosystem concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What Animals Need' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Living vs Non-Living' AND grade_level_min = 0),
  'Living vs Non-Living Topic Guide', 'Tell the difference between living and non-living things',
  'LIVING VS NON-LIVING - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should know what plants and animals need from previous topics. Basic observation skills. Vocabulary for naming objects in environment.

LEARNING OBJECTIVES:
- Identify living things (plants, animals, people)
- Identify non-living things (rocks, toys, water)
- List characteristics of living things (grow, need food/water, move)
- Sort objects into living and non-living categories

KEY CONCEPTS:
1) Living things grow and change
2) Living things need food, water, and air
3) Living things can move on their own (animals) or grow toward light (plants)
4) Living things can make more of themselves (have babies, make seeds)
5) Non-living things do not grow, eat, or breathe
6) Non-living things do not move on their own

COMMON MISCONCEPTIONS:
- Thinking things that move (cars, clouds) are alive
- Thinking things that don''t move much (plants, sleeping animals) are not alive
- Confusing "living" with "once living" (dead leaves, wood furniture)
- Thinking robots or toys with batteries are alive

TEACHING SEQUENCE:
Go on a nature walk to find living and non-living things. Create a class chart sorting items. Ask guiding questions: "Does it grow? Does it need food? Can it have babies?" Address tricky cases: clouds move but aren''t alive; plants don''t move much but are alive. Use sorting games with pictures. Discuss once-living things (paper comes from trees, wool from sheep).

DIFFERENTIATION:
Struggling learners: Focus on clear examples first (cat vs rock), use yes/no questions for sorting, provide physical objects to sort. Advanced learners: Explore once-living vs non-living distinction, investigate edge cases (is fire alive?), create living vs non-living books.

VOCABULARY:
Living, non-living, alive, grow, breathe, move, food, water, plant, animal, rock, toy, once-living.

CONNECTION TO FUTURE LEARNING:
Understanding living vs non-living is fundamental to all biology, preparing students for life cycles, classification, and ecosystem concepts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Living vs Non-Living' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Plant and Animal Babies' AND grade_level_min = 0),
  'Plant and Animal Babies Topic Guide', 'Learn how plants and animals have babies',
  'PLANT AND ANIMAL BABIES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that plants and animals are living things with needs. Basic vocabulary for naming animals. Concept that living things grow.

LEARNING OBJECTIVES:
- Understand that living things make more living things
- Recognize that baby animals grow to look like their parents
- Understand that plants grow from seeds
- Compare baby animals to their parents

KEY CONCEPTS:
1) All living things can make more of their own kind
2) Baby animals come from parent animals
3) Baby animals grow up to look like their parents
4) Plants make seeds that grow into new plants
5) Babies need care from parents (animals) or the right conditions (plants)

COMMON MISCONCEPTIONS:
- Thinking all babies look exactly like parents
- Not understanding that caterpillars become butterflies
- Thinking plants appear from nowhere (not from seeds)
- Believing baby animals stay babies forever

TEACHING SEQUENCE:
Show pictures of baby animals with their parents. Play matching games: which baby goes with which parent? Discuss how babies look similar but smaller. Explore how babies change as they grow (puppies open eyes, chicks grow feathers). For plants, plant seeds and watch them grow. Observe that the new plant looks like the parent plant. Read books about baby animals and plant life cycles.

DIFFERENTIATION:
Struggling learners: Focus on familiar animals (cats, dogs, birds), use clear picture matching, emphasize similar features. Advanced learners: Explore dramatic changes (tadpoles to frogs, caterpillars to butterflies), investigate how long different animals stay babies, compare number of babies different animals have.

VOCABULARY:
Baby, parent, grow, seed, seedling, offspring, born, hatch, similar, young, adult, life cycle.

CONNECTION TO FUTURE LEARNING:
Understanding reproduction and growth builds foundation for life cycles, heredity, and genetics concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Plant and Animal Babies' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: PUSHES AND PULLS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'What is a Push?' AND grade_level_min = 0),
  'What is a Push? Topic Guide', 'A push moves things away from you',
  'WHAT IS A PUSH? - TOPIC TEACHING GUIDE

PREREQUISITES:
No prior science instruction required. Basic motor skills for pushing objects. Vocabulary for describing movement (go, move, away).

LEARNING OBJECTIVES:
- Understand that a push is a force
- Demonstrate pushing objects
- Observe that pushes move things away from you
- Recognize pushes in everyday activities

KEY CONCEPTS:
1) A push is when you press against something
2) Pushes move things away from your body
3) We use pushes every day (pushing doors, pushing toys)
4) Different pushes can be big or small
5) Pushes can make things start moving

COMMON MISCONCEPTIONS:
- Confusing pushing with hitting
- Not recognizing gentle pushes as pushes
- Thinking you can only push with hands (feet push too!)
- Not connecting everyday actions to the concept of pushing

TEACHING SEQUENCE:
Start with hands-on exploration. Have students push different objects: balls, toy cars, blocks. Ask: "What happened? Where did it go?" Use their bodies: push on a wall, push a friend gently (with permission). Identify pushes in classroom: pushing in chairs, pushing open doors. Use action songs about pushing. Play games that involve pushing (ball activities). Connect to familiar experiences: pushing a shopping cart, pushing a swing.

DIFFERENTIATION:
Struggling learners: Focus on one type of push at a time, use large obvious pushes first, pair movement with words. Advanced learners: Explore pushing with different body parts, investigate what''s hard vs easy to push, begin thinking about why (heavy vs light).

VOCABULARY:
Push, force, move, away, press, slide, roll, direction.

CONNECTION TO FUTURE LEARNING:
Understanding pushing introduces force concepts that build toward Newton''s laws and more complex physics in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What is a Push?' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'What is a Pull?' AND grade_level_min = 0),
  'What is a Pull? Topic Guide', 'A pull moves things toward you',
  'WHAT IS A PULL? - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand what a push is from previous topic. Basic motor skills for pulling objects. Vocabulary for movement (come, toward, here).

LEARNING OBJECTIVES:
- Understand that a pull is a force
- Demonstrate pulling objects
- Observe that pulls move things toward you
- Recognize pulls in everyday activities
- Compare pulls to pushes

KEY CONCEPTS:
1) A pull is when you drag something toward you
2) Pulls move things closer to your body
3) We use pulls every day (pulling wagons, pulling doors)
4) Pulls are the opposite of pushes
5) Pulls can make things start moving

COMMON MISCONCEPTIONS:
- Confusing pulling with carrying
- Not recognizing gentle pulls as pulls
- Thinking push and pull are the same thing
- Not understanding you can pull things you''re not touching (using a rope)

TEACHING SEQUENCE:
Start with hands-on exploration. Have students pull different objects: wagons, toy trains, friends in a game. Ask: "What happened? Where did it go?" Compare to pushing: "When we pushed, the ball went away. When we pull, it comes toward us." Identify pulls in classroom: pulling open doors, pulling out chairs. Use action songs and games. Play tug-of-war to feel pulling. Connect to experiences: pulling a sled, pulling up socks.

DIFFERENTIATION:
Struggling learners: Use clear contrast with pushing, practice with ropes and wagons, pair movement with words. Advanced learners: Explore objects that can be both pushed and pulled (door), investigate using tools to pull (hooks, handles), think about when to push vs pull.

VOCABULARY:
Pull, force, move, toward, drag, tug, opposite, direction.

CONNECTION TO FUTURE LEARNING:
Understanding pulling completes the foundation for force concepts that build toward Newton''s laws in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What is a Pull?' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Making Things Move' AND grade_level_min = 0),
  'Making Things Move Topic Guide', 'Use pushes and pulls to make objects move',
  'MAKING THINGS MOVE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand pushes and pulls from previous topics. Ability to observe and describe movement. Basic vocabulary for motion.

LEARNING OBJECTIVES:
- Use pushes and pulls to make objects move
- Observe different types of movement (roll, slide, spin)
- Experiment with making objects move different ways
- Predict how an object might move based on force applied

KEY CONCEPTS:
1) Pushes and pulls make things move
2) Objects can move in different ways: roll, slide, spin, swing
3) We choose to push or pull based on what we want the object to do
4) Objects that aren''t pushed or pulled stay still
5) We can change an object''s direction with a push or pull

COMMON MISCONCEPTIONS:
- Thinking objects move on their own
- Not connecting force to motion
- Believing objects know where to go without force
- Thinking only one type of force (push OR pull) works for all objects

TEACHING SEQUENCE:
Set up exploration stations with different objects: balls, blocks, toy cars, tops. Challenge students to make each object move. Ask: "Did you push or pull? How did it move?" Classify movements: rolling, sliding, spinning, swinging. Discuss which objects can roll vs slide. Try making the same object move different ways. Build ramps and tracks. Connect to playground activities: swings (push), slides (slide down), merry-go-round (spin).

DIFFERENTIATION:
Struggling learners: Focus on one movement type at a time, use large clear examples, provide verbal scaffolding. Advanced learners: Design courses for balls, predict movements before testing, investigate what stops movement (friction introduction).

VOCABULARY:
Move, motion, roll, slide, spin, swing, start, stop, direction, change.

CONNECTION TO FUTURE LEARNING:
Understanding how forces cause motion prepares students for concepts of inertia, friction, and Newton''s laws in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Making Things Move' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Fast and Slow' AND grade_level_min = 0),
  'Fast and Slow Topic Guide', 'Different forces make things move fast or slow',
  'FAST AND SLOW - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand pushes and pulls and how to make things move. Basic vocabulary for speed (fast, slow). Ability to compare.

LEARNING OBJECTIVES:
- Observe that objects can move fast or slow
- Understand that bigger pushes or pulls make things move faster
- Experiment with changing how fast objects move
- Compare the speed of different movements

KEY CONCEPTS:
1) Objects can move at different speeds
2) A stronger push or pull makes things move faster
3) A gentler push or pull makes things move slower
4) We can choose how hard to push or pull
5) Speed is how fast something moves

COMMON MISCONCEPTIONS:
- Thinking all pushes make things move the same speed
- Not connecting force strength to speed
- Believing heavier things always move slower
- Confusing distance with speed

TEACHING SEQUENCE:
Demonstrate with balls on a ramp: gentle push vs strong push. Ask: "Which was faster? What was different about how I pushed?" Have students experiment with toy cars: push gently, then push hard. Race cars with different push strengths. Compare running fast vs walking slow. Use timer or counting to measure relative speed. Connect to real life: walking to school vs running late, cars going fast vs slow.

DIFFERENTIATION:
Struggling learners: Use clear extremes (very fast, very slow), focus on one variable at a time, provide consistent objects for testing. Advanced learners: Explore what else affects speed (hills, surfaces), predict which will be faster before testing, introduce timing with counting.

VOCABULARY:
Fast, slow, speed, strong, gentle, harder, softer, farther, closer, compare.

CONNECTION TO FUTURE LEARNING:
Understanding the relationship between force and speed builds toward quantitative force and motion concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fast and Slow' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: OUR FIVE SENSES
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Sight' AND grade_level_min = 0),
  'Sight Topic Guide', 'Use your eyes to see colors, shapes, and sizes',
  'SIGHT - TOPIC TEACHING GUIDE

PREREQUISITES:
No prior science instruction required. Basic color and shape recognition helpful. Vocabulary for describing what is seen.

LEARNING OBJECTIVES:
- Understand that we see with our eyes
- Identify colors, shapes, and sizes using sight
- Describe objects based on what we see
- Understand that light helps us see

KEY CONCEPTS:
1) We use our eyes to see
2) Our eyes see colors (red, blue, green, yellow, etc.)
3) Our eyes see shapes (circle, square, triangle)
4) Our eyes see sizes (big, small, tall, short)
5) We need light to see

COMMON MISCONCEPTIONS:
- Thinking we see with our brains (brain interprets but eyes receive)
- Not understanding we need light to see
- Confusing seeing with other senses
- Thinking everyone sees exactly the same way

TEACHING SEQUENCE:
Explore what eyes can do. Play "I Spy" games focusing on colors, shapes, sizes. Use magnifying glasses to see details. Explore in a dark room vs light room. Sort objects by color or size using only eyes. Create artwork based on observations. Use picture books that emphasize visual details. Play matching games. Discuss what happens when we close our eyes.

DIFFERENTIATION:
Struggling learners: Focus on one visual attribute at a time (just colors, then shapes), use high-contrast objects, provide physical objects before pictures. Advanced learners: Explore optical illusions, investigate how magnifying glasses change what we see, compare near and far vision.

VOCABULARY:
See, sight, eyes, color, shape, size, big, small, light, dark, look, observe.

CONNECTION TO FUTURE LEARNING:
Understanding sight develops scientific observation skills and builds foundation for understanding how eyes and light work in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sight' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Hearing' AND grade_level_min = 0),
  'Hearing Topic Guide', 'Use your ears to hear sounds all around you',
  'HEARING - TOPIC TEACHING GUIDE

PREREQUISITES:
Basic vocabulary for sounds (loud, quiet). No prior science instruction required. Ability to describe what is heard.

LEARNING OBJECTIVES:
- Understand that we hear with our ears
- Identify different sounds (loud, quiet, high, low)
- Recognize familiar sounds
- Understand that sounds come from objects vibrating

KEY CONCEPTS:
1) We use our ears to hear
2) Sounds can be loud or quiet
3) Sounds can be high or low
4) Different things make different sounds
5) Sounds are all around us

COMMON MISCONCEPTIONS:
- Thinking sound only comes from music or voices
- Not recognizing quiet sounds as sounds
- Believing you can only hear with your ears (vibrations can be felt)
- Thinking all sounds are the same

TEACHING SEQUENCE:
Start with a listening walk or moment of silence. Ask: "What sounds do you hear?" Play sound identification games. Explore musical instruments and everyday objects that make sounds. Compare loud and quiet (whispering vs shouting). Explore high and low sounds. Make sounds with your body (clapping, stomping). Use recordings of familiar sounds (doorbell, dog barking). Close eyes and identify sounds.

DIFFERENTIATION:
Struggling learners: Focus on familiar sounds first, use clear loud/quiet contrasts, pair sounds with pictures. Advanced learners: Explore how sounds are made (vibrations), investigate what blocks sounds, create sound maps of different locations.

VOCABULARY:
Hear, hearing, ears, sound, loud, quiet, soft, high, low, listen, music, noise.

CONNECTION TO FUTURE LEARNING:
Understanding hearing develops scientific observation skills and builds foundation for understanding sound waves and acoustics in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Hearing' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Touch' AND grade_level_min = 0),
  'Touch Topic Guide', 'Use your hands to feel textures and temperatures',
  'TOUCH - TOPIC TEACHING GUIDE

PREREQUISITES:
Basic vocabulary for describing textures (soft, hard). No prior science instruction required. Ability to describe physical sensations.

LEARNING OBJECTIVES:
- Understand that we feel with our skin (especially hands)
- Identify different textures (soft, hard, rough, smooth)
- Identify temperatures (hot, cold, warm)
- Describe objects based on how they feel

KEY CONCEPTS:
1) We use our skin to feel things
2) Our hands are very good at feeling
3) Textures describe how things feel (soft, hard, rough, smooth, bumpy)
4) Our skin can feel temperature (hot, cold, warm, cool)
5) Touch helps us learn about objects we can''t see

COMMON MISCONCEPTIONS:
- Thinking we can only feel with our hands
- Confusing touch with other senses
- Not recognizing all surfaces have texture
- Thinking temperature is the same as texture

TEACHING SEQUENCE:
Create a texture exploration station with various materials (fur, sandpaper, silk, wood, ice, warm water). Have students touch and describe. Play guess-the-object games using touch only (mystery bag). Sort objects by texture. Explore temperature with safe examples (warm vs cold water, ice). Use blindfolds for texture identification. Create texture rubbings with crayons. Discuss how blind people use touch to read (Braille).

DIFFERENTIATION:
Struggling learners: Focus on extreme contrasts (very soft vs very hard), use familiar objects, provide word prompts. Advanced learners: Create texture collections, investigate which body parts are most sensitive, explore how touch helps us stay safe.

VOCABULARY:
Feel, touch, skin, hands, texture, soft, hard, rough, smooth, bumpy, slippery, warm, cold, hot, cool.

CONNECTION TO FUTURE LEARNING:
Understanding touch develops scientific observation skills and builds foundation for understanding materials and properties in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Touch' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Smell and Taste' AND grade_level_min = 0),
  'Smell and Taste Topic Guide', 'Use your nose and tongue to smell and taste safely',
  'SMELL AND TASTE - TOPIC TEACHING GUIDE

PREREQUISITES:
Basic vocabulary for describing smells and tastes. Understanding of safety rules (don''t taste unknown things). No prior science instruction required.

LEARNING OBJECTIVES:
- Understand that we smell with our nose
- Understand that we taste with our tongue
- Identify different smells (good, bad, strong, weak)
- Identify different tastes (sweet, salty, sour, bitter)
- Practice safety rules for smelling and tasting

KEY CONCEPTS:
1) We use our nose to smell
2) We use our tongue to taste
3) Smells can be pleasant or unpleasant
4) Tastes can be sweet, salty, sour, or bitter
5) Smell and taste work together
6) SAFETY: Only smell and taste things adults say are safe

COMMON MISCONCEPTIONS:
- Thinking taste and smell are the same sense
- Not recognizing that food looks different than it tastes
- Believing all bad smells mean danger (not always)
- Confusing texture with taste

TEACHING SEQUENCE:
SAFETY FIRST: Establish rules—only smell/taste what adults approve. Explore safe food samples for taste (sweet sugar, salty pretzel, sour lemon, bitter cocoa). Use smell exploration with spices, fruits, flowers. Discuss connection between smell and taste (hold nose while eating). Identify smells in closed containers. Discuss why these senses help us (spoiled food smells bad for safety). Sort foods by taste category.

DIFFERENTIATION:
Struggling learners: Focus on two taste categories at a time, use familiar foods, emphasize safety rules. Advanced learners: Explore how smell affects taste (blocked nose experiment), investigate favorite vs disliked tastes, categorize many foods by taste.

VOCABULARY:
Smell, taste, nose, tongue, sweet, salty, sour, bitter, pleasant, unpleasant, strong, weak, flavor, safe.

CONNECTION TO FUTURE LEARNING:
Understanding smell and taste develops scientific observation skills and builds foundation for understanding chemistry of food and biological adaptations in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Smell and Taste' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;
