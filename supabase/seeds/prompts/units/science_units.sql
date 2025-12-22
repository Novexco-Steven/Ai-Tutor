-- ============================================================================
-- SCIENCE UNIT PROMPTS (ALL GRADES K-12)
-- ============================================================================
-- Comprehensive pedagogical prompts for each Science unit
-- Each prompt provides teaching methodology, inquiry approaches,
-- common misconceptions, and instructional strategies
-- ============================================================================

-- ============================================================================
-- KINDERGARTEN SCIENCE UNITS
-- ============================================================================

-- Weather and Seasons (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Weather and Seasons' AND grade_level = 0),
  'Weather and Seasons Teaching Guide',
  'Comprehensive pedagogical approach for teaching weather and seasons in Kindergarten',
  'WEATHER AND SEASONS - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit introduces young scientists to observable weather phenomena and seasonal patterns. Students develop observation skills by tracking daily weather, identifying weather types, and connecting weather to appropriate clothing and activities. This foundational understanding supports later study of Earth science, climate, and the water cycle.

LEARNING PROGRESSION:
1. Identifying types of weather (sunny, cloudy, rainy, snowy, windy)
2. Observing and describing daily weather
3. Recording weather over time (class weather graph)
4. Understanding the four seasons
5. Connecting weather to seasons
6. Weather-appropriate clothing and activities

DEVELOPMENTAL CONSIDERATIONS:
Kindergartners are excellent observers when given focus. They learn best through direct experience, so weather observation should happen daily. Abstract concepts like "why" seasons change are developmentally inappropriate - focus on "what" we observe.

COMMON MISCONCEPTIONS:
- Believing clouds are solid objects (you can stand on them)
- Thinking rain comes from clouds "emptying out"
- Confusing weather (today) with climate (pattern over time)
- Believing it rains more at night (just noticing rain sounds more)
- Thinking warm coat makes you warm (rather than keeping warmth in)

INSTRUCTIONAL STRATEGIES:

Daily Weather Check:
Begin each day with weather observation. Look outside, describe what you see, feel, hear. Record on a class chart.

Weather Walk:
Take weather walks to experience weather firsthand. Feel the wind, observe clouds, notice temperature. Use all senses (appropriately).

Season Sorting:
Sort pictures by season. What clues tell you the season? Discuss clothing, activities, plants, weather in each season.

Dramatic Play:
Dress-up area with weather-appropriate clothing. Children match clothing to weather scenarios.

Weather Tools:
Introduce simple tools: thermometer (red line goes up = warmer), rain gauge, wind sock. Connect tools to senses.

Literature Connection:
Read weather-themed books. Discuss weather in stories. Compare to local weather.

Art Integration:
Draw or paint different weather types. Create season collages with natural materials.

ASSESSMENT INDICATORS:
- Names and describes different weather types
- Appropriately describes daily weather
- Identifies the four seasons
- Connects weather to clothing choices
- Contributes to weather data collection

VOCABULARY TO DEVELOP:
sunny, cloudy, rainy, snowy, windy, warm, cold, hot, temperature, season, spring, summer, fall/autumn, winter, observe, weather

SAFETY CONSIDERATIONS:
- Never look directly at the sun
- Discuss weather safety (storms, lightning)
- Appropriate dress for outdoor observation',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Weather and Seasons' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- Plants and Animals (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Plants and Animals' AND grade_level = 0),
  'Plants and Animals Teaching Guide',
  'Comprehensive pedagogical approach for teaching about plants and animals in Kindergarten',
  'PLANTS AND ANIMALS - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This life science unit develops understanding of living things and their needs. Students explore what plants and animals need to survive, observe living things in their environment, and compare plant and animal characteristics. Hands-on experiences with real organisms bring science to life.

LEARNING PROGRESSION:
1. Distinguishing living from non-living things
2. Identifying needs of living things (food, water, air, shelter)
3. Observing and describing plants
4. Observing and describing animals
5. Comparing plants and animals
6. Understanding that animals and plants live in places suited to their needs

DEVELOPMENTAL CONSIDERATIONS:
Kindergartners are naturally curious about living things. Real specimens and live observations are far more engaging than pictures. Address fears (insects, worms) gently and model respectful interaction with all living things.

COMMON MISCONCEPTIONS:
- Thinking only things that move are alive (plants are alive!)
- Believing animals only include mammals (insects, fish, birds are animals too)
- Not understanding that dead things were once living
- Thinking plants don''t need water if it rains
- Believing all animals eat what humans eat

INSTRUCTIONAL STRATEGIES:

Living/Non-Living Sorts:
Sort objects and pictures into living and non-living. Discuss criteria: Does it grow? Does it need food? Can it reproduce?

Classroom Organisms:
Keep classroom plants and animals (fish, hermit crab, butterfly garden). Students observe and care for them, learning responsibility and observation skills.

Plant Growth:
Plant seeds and observe growth over weeks. Draw or photograph stages. Measure changes. This is authentic inquiry.

Animal Observation:
Observe animals in schoolyard: birds, insects, squirrels. Use magnifying glasses. Record observations through drawing.

Needs Investigation:
Experiment: What happens if a plant doesn''t get water? Light? This demonstrates needs through evidence (with ethical consideration).

Habitat Connection:
Where do different animals live? Why? Match animals to habitats. Discuss how habitats provide needs.

ASSESSMENT INDICATORS:
- Distinguishes living from non-living
- Names basic needs of plants and animals
- Describes observable characteristics of organisms
- Compares plants and animals
- Explains why organisms live in certain places

VOCABULARY TO DEVELOP:
living, non-living, plant, animal, needs, food, water, air, shelter, grow, habitat, observe, compare',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Plants and Animals' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- Pushes and Pulls (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Pushes and Pulls' AND grade_level = 0),
  'Pushes and Pulls Teaching Guide',
  'Comprehensive pedagogical approach for teaching forces in Kindergarten',
  'PUSH AND PULL - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This physical science unit introduces the concept of forces through push and pull. Students explore how pushes and pulls can make objects move, stop, or change direction. Hands-on exploration with ramps, balls, and toys builds intuition about forces that will support later physics study.

LEARNING PROGRESSION:
1. Identifying pushes and pulls in everyday life
2. Exploring how pushes and pulls make things move
3. Investigating direction of motion
4. Exploring how force strength affects motion
5. Understanding that things that are not moving can be pushed or pulled to make them move
6. Simple problem-solving with pushes and pulls

DEVELOPMENTAL CONSIDERATIONS:
Kindergartners experience forces constantly (opening doors, playing with balls) but haven''t formalized this understanding. Start with their experiences and build scientific language. Movement activities engage their kinesthetic learning style.

COMMON MISCONCEPTIONS:
- Thinking an object in motion needs continuous push (it keeps moving after you stop)
- Believing heavier things always need more force (depends on friction too)
- Confusing push/pull with general motion
- Thinking objects push back (conceptually difficult at this age)

INSTRUCTIONAL STRATEGIES:

Movement Exploration:
Let students push and pull classroom objects. What happens? How can you make it go faster? Slower? Change direction?

Push/Pull Scavenger Hunt:
Find things you push (door, buttons) and pull (drawers, wagon) in the classroom and beyond. Classify and discuss.

Ramp Investigations:
Use ramps with toy cars. Change the ramp height, surface, car weight. What changes? Introduce variables through play.

Ball Games:
Rolling, bouncing, catching - all involve pushes and pulls. Name the force in each action.

Engineering Challenges:
"How can we move this toy from here to there without carrying it?" Students design solutions using pushes, pulls, ramps.

Force Strength:
Compare gentle push vs hard push. What''s different about the motion? Build vocabulary: harder, softer, stronger, weaker.

ASSESSMENT INDICATORS:
- Identifies actions as push or pull
- Describes how pushes and pulls affect motion
- Predicts direction of motion based on force
- Connects force strength to motion
- Applies understanding to solve simple problems

VOCABULARY TO DEVELOP:
push, pull, force, motion, move, stop, fast, slow, direction, strength, change, ramp, roll',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Pushes and Pulls' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- Our Five Senses (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Our Five Senses' AND grade_level = 0),
  'Our Five Senses Teaching Guide',
  'Comprehensive pedagogical approach for teaching about senses in Kindergarten',
  'OUR SENSES - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit explores the five senses and how we use them to learn about the world. Students identify sense organs, describe what each sense detects, and practice using senses for scientific observation. This foundational work develops observation skills essential to all scientific inquiry.

LEARNING PROGRESSION:
1. Naming the five senses and their organs
2. Exploring sight - observing with eyes
3. Exploring hearing - identifying sounds
4. Exploring touch - describing textures
5. Exploring smell - identifying odors
6. Exploring taste - describing flavors
7. Using multiple senses together

DEVELOPMENTAL CONSIDERATIONS:
Young children are naturally sensory learners. This unit formalizes what they do naturally - explore through senses. Include sensory accommodations for students with sensory processing differences. Safety is paramount with taste activities.

COMMON MISCONCEPTIONS:
- Thinking we taste with our whole mouth (taste buds on tongue)
- Believing we only use one sense at a time
- Confusing "flavor" (multiple senses) with "taste" (tongue only)
- Thinking ears only hear (also balance)
- Not recognizing that some people may not have all senses

INSTRUCTIONAL STRATEGIES:

Sense Stations:
Create stations for each sense. Touch: texture boxes. Sound: mystery sounds. Smell: scent jars. Sight: I-spy activities. Taste: flavor samples (with parent permission and allergy awareness).

Observation Focus:
During nature walks or explorations, focus on one sense at a time. "Close your eyes. What do you hear?" This builds focused observation.

Mystery Boxes:
Use touch boxes where students reach in without looking. Describe what you feel. Build descriptive vocabulary.

Sensory Language:
Develop rich vocabulary: rough, smooth, bumpy, loud, quiet, sweet, sour, bitter, salty, bright, dim, fragrant.

Multi-Sensory Experiences:
Combine senses: describe an apple using all senses (except sound - or can it make sound?). How do senses work together?

Accessibility Discussion:
Discuss how people who are blind or deaf experience the world. Build empathy and understanding.

ASSESSMENT INDICATORS:
- Names five senses and corresponding organs
- Uses senses to observe and describe objects
- Uses appropriate vocabulary for sensory experiences
- Explains how senses help us learn about the world
- Uses multiple senses for thorough observation

VOCABULARY TO DEVELOP:
senses, sight, hearing, touch, smell, taste, eyes, ears, skin, nose, tongue, observe, describe, texture, sound, scent, flavor

SAFETY CONSIDERATIONS:
- Never taste unknown substances
- Be aware of food allergies
- Respect sensory sensitivities
- Handle sharp or dangerous objects appropriately',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Our Five Senses' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 1 SCIENCE UNITS
-- ============================================================================

-- Light and Sound (Grade 1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Light and Sound' AND grade_level = 1),
  'Light and Sound Teaching Guide',
  'Comprehensive pedagogical approach for teaching light and sound in Grade 1',
  'LIGHT AND SOUND - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
This unit explores light and sound as phenomena we can observe and investigate. Students learn that light travels from sources and can be blocked, reflected, or allowed through materials. They discover that sound is caused by vibrations and travels through materials. Engineering challenges integrate understanding with design thinking.

LEARNING PROGRESSION:
1. Identifying light sources (sun, lamps, flashlights)
2. Exploring how light travels and can be blocked (shadows)
3. Investigating transparent, translucent, and opaque materials
4. Exploring sound sources and vibrations
5. Investigating how sound travels
6. Engineering challenge: communicate with light or sound

DEVELOPMENTAL CONSIDERATIONS:
First graders can understand that light and sound travel from sources, but wave concepts are too abstract. Focus on observable phenomena: shadows, vibrations, blocking light/sound. Hands-on investigation is essential.

COMMON MISCONCEPTIONS:
- Thinking shadows are "stuck" to objects
- Believing we can see because eyes send out light
- Confusing light source with objects that reflect light (moon)
- Thinking sounds come from nowhere (not recognizing vibration sources)
- Believing sound travels only through air

INSTRUCTIONAL STRATEGIES:

Shadow Play:
Use flashlights and objects to create shadows. Move light source closer/farther. How does the shadow change? This builds understanding of light traveling in straight lines.

Material Testing:
Test materials with flashlights: paper, plastic, wood, fabric. Categorize as transparent, translucent, or opaque. Real investigation with predictions.

Vibration Exploration:
Use tuning forks, drums, rubber bands, vocal cords. Touch to feel vibrations. Sound = vibration.

Sound Travel:
Listen through different materials (cup phone with string). Does sound travel through solids? Liquids? Compare.

Light Art:
Create shadow puppet shows or light box art. Apply understanding creatively.

Engineering Design:
Challenge: Design a way to send a message using light or sound. Students design, build, test, and improve.

ASSESSMENT INDICATORS:
- Identifies sources of light
- Explains how shadows form
- Categorizes materials by light transmission
- Connects sound to vibrations
- Describes how light and sound can be used to communicate

VOCABULARY TO DEVELOP:
light, dark, shadow, source, transparent, translucent, opaque, sound, vibration, travel, communicate',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Light and Sound' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- Animal Survival (Grade 1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Animal Survival' AND grade_level = 1),
  'Animal Survival Teaching Guide',
  'Comprehensive pedagogical approach for teaching animal survival in Grade 1',
  'ANIMAL SURVIVAL - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
This unit explores how animals use their body parts and behaviors to survive. Students learn that animals have structures that help them find food, protect themselves, and meet other needs. They also explore how parents help offspring survive. This builds toward understanding adaptation and natural selection in later grades.

LEARNING PROGRESSION:
1. Identifying animal body parts and their functions
2. How animals use body parts to get food
3. How animals use body parts for protection
4. Animal behaviors for survival (migration, hibernation)
5. How parents help offspring survive
6. Mimicking animal structures for human designs (biomimicry)

DEVELOPMENTAL CONSIDERATIONS:
First graders are fascinated by animals. Use this interest to develop observation and comparison skills. Real specimens, videos, and photos provide evidence. Connect to students'' pets and familiar animals.

COMMON MISCONCEPTIONS:
- Thinking animals "choose" to develop features (vs. inherited)
- Believing camouflage makes animals invisible
- Confusing animal adaptations with human tools (bird uses beak like we use fork)
- Thinking all baby animals look like mini adults
- Believing migration is because animals don''t like cold

INSTRUCTIONAL STRATEGIES:

Body Part Function:
Study different animals'' body parts. What does a duck''s webbed feet help it do? What about a rabbit''s long ears? Connect structure to function.

Comparative Study:
Compare similar body parts across species. Bird beaks: Why are they shaped differently? What does each help the bird eat?

Protection Features:
Explore shells, spines, camouflage, speed, size. How do these help animals survive? Use images and videos.

Behavior Investigation:
Research migration, hibernation, herding, nest-building. Why do animals do these things? Role-play behaviors.

Parent Care:
How do different animals care for young? Compare birds, mammals, fish. Some care a lot, some don''t - both can work.

Biomimicry Engineering:
Design something inspired by an animal feature. Velcro from burrs, airplane wings from birds. Apply understanding creatively.

ASSESSMENT INDICATORS:
- Identifies animal body parts and functions
- Explains how features help animals survive
- Gives examples of protective adaptations
- Describes how parents help offspring survive
- Applies understanding through biomimicry design

VOCABULARY TO DEVELOP:
survive, body parts, function, protection, camouflage, prey, predator, offspring, parent, behavior, adaptation, shelter',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Animal Survival' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- Sky Patterns (Grade 1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Sky Patterns' AND grade_level = 1),
  'Sky Patterns Teaching Guide',
  'Comprehensive pedagogical approach for teaching space and sky in Grade 1',
  'SPACE AND SKY - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
This unit develops understanding of observable patterns in the sky. Students explore the apparent motion of the sun, observe the moon''s phases over time, recognize stars and constellations, and understand day/night patterns. The emphasis is on observation and pattern recognition rather than abstract explanations.

LEARNING PROGRESSION:
1. Observing the sun''s apparent motion (never look directly at sun!)
2. Connecting sun position to time of day
3. Understanding day and night
4. Observing the moon over several weeks
5. Recognizing moon phases
6. Exploring stars and patterns (constellations)
7. Seasonal changes in the sky

DEVELOPMENTAL CONSIDERATIONS:
Young children see the sun "move across the sky" - this is their reality. Don''t try to explain rotation yet. Focus on observable patterns. Moon observation requires homework component or parent involvement.

COMMON MISCONCEPTIONS:
- The sun moves around the Earth (don''t correct yet - focus on patterns)
- The moon is only visible at night
- Stars are small (they''re far away suns)
- The moon makes its own light (reflects sunlight)
- Clouds cover the stars during day

INSTRUCTIONAL STRATEGIES:

Sun Tracking:
Track the sun''s position at different times (shadow sticks, noting where sun is). Build sense of pattern without explaining rotation.

Day/Night Understanding:
Model with a lamp (sun) and globe or ball (Earth). Show that half is always lit. This is developmentally appropriate introduction.

Moon Journal:
Students observe and draw the moon over 2-4 weeks. Notice patterns. This is real scientific observation.

Star Patterns:
Use constellation viewers, apps, or planetarium visits. Recognize familiar patterns. Connect to stories and cultures.

Sky Art:
Create day sky, night sky, sunrise/sunset artwork. Build observational vocabulary.

Literature Connection:
Read books about the sun, moon, stars. Compare fictional and informational texts.

ASSESSMENT INDICATORS:
- Describes the sun''s apparent motion across the sky
- Explains the day/night cycle
- Records moon observations over time
- Recognizes that moon appearance changes in a pattern
- Identifies that stars are visible at night

VOCABULARY TO DEVELOP:
sun, moon, stars, sky, sunrise, sunset, day, night, phases, pattern, observe, constellation

SAFETY:
- NEVER look directly at the sun
- Use indirect methods for sun observation',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Sky Patterns' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 2 SCIENCE UNITS
-- ============================================================================

-- Matter and Materials (Grade 2)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Matter and Materials' AND grade_level = 2),
  'Matter and Materials Teaching Guide',
  'Comprehensive pedagogical approach for teaching matter and materials in Grade 2',
  'MATTER AND MATERIALS - GRADE 2 UNIT GUIDE

UNIT OVERVIEW:
This unit develops understanding of different kinds of matter and their properties. Students classify materials by observable properties, investigate how heating and cooling can change states, and explore how materials can be combined or changed. This builds foundation for later chemistry study.

LEARNING PROGRESSION:
1. Identifying properties of materials (hard, soft, rough, smooth, etc.)
2. Classifying materials by properties
3. Exploring solids, liquids, and gases
4. Investigating heating and cooling effects
5. Observing reversible and irreversible changes
6. Determining best materials for different purposes

DEVELOPMENTAL CONSIDERATIONS:
Second graders can investigate properties through hands-on testing. They understand that materials have consistent properties. The concept of molecules and atoms is too abstract - focus on observable phenomena.

COMMON MISCONCEPTIONS:
- Thinking matter disappears when it melts or evaporates
- Believing gases are not matter (can''t see them, so not "real")
- Confusing melting and dissolving
- Thinking cold "goes into" objects (rather than heat leaving)
- Believing some liquids can''t freeze or some solids can''t melt

INSTRUCTIONAL STRATEGIES:

Property Testing:
Set up stations where students test materials for properties: hardness, flexibility, magnetism, float/sink, texture. Record findings.

Classification:
Sort materials by properties. Same materials can be sorted different ways depending on criteria.

State of Matter Exploration:
Explore solids, liquids, gases. What are properties of each? Solid = definite shape, liquid = takes shape of container, gas = fills space.

Heating and Cooling:
Melt ice, freeze water, heat butter. Observe and describe changes. Are they reversible? (Boiled egg is not!)

Dissolving vs. Melting:
Distinguish between dissolving (sugar in water) and melting (ice). Both "disappear" but differently.

Engineering Challenge:
Select best material for a purpose: What material makes the best boat? Bridge? Umbrella? Test and evaluate.

ASSESSMENT INDICATORS:
- Describes objects by multiple properties
- Classifies materials based on properties
- Identifies solids, liquids, and gases
- Describes effects of heating and cooling
- Selects appropriate materials for purposes

VOCABULARY TO DEVELOP:
matter, solid, liquid, gas, property, texture, hard, soft, flexible, rigid, absorb, reflect, heat, cool, melt, freeze, dissolve',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Matter and Materials' AND grade_level = 2)
ON CONFLICT DO NOTHING;

-- Living Things and Habitats (Grade 2)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Living Things and Habitats' AND grade_level = 2),
  'Living Things and Habitats Teaching Guide',
  'Comprehensive pedagogical approach for teaching living things and habitats in Grade 2',
  'LIVING THINGS AND HABITATS - GRADE 2 UNIT GUIDE

UNIT OVERVIEW:
This unit explores diverse habitats and how organisms are suited to their environments. Students investigate different habitats, understand how organisms depend on their habitat and each other, and explore food chains. This builds understanding of ecosystems and interdependence.

LEARNING PROGRESSION:
1. Identifying different habitats (forest, desert, ocean, etc.)
2. Exploring organisms in each habitat
3. Understanding how organisms are suited to their habitats
4. Investigating how organisms depend on each other
5. Simple food chains
6. What happens when habitats change

DEVELOPMENTAL CONSIDERATIONS:
Second graders can understand that different places have different living things. The concept of adaptation should focus on observable features matching habitat needs, not evolutionary mechanisms. Food chains provide introduction to ecosystem thinking.

COMMON MISCONCEPTIONS:
- Thinking desert = always hot (cold deserts exist)
- Believing animals choose where to live (vs. being suited to habitat)
- Confusing habitat (where it lives) with niche (what it does)
- Thinking food chains are always linear (actually webs)
- Believing humans aren''t part of ecosystems

INSTRUCTIONAL STRATEGIES:

Habitat Exploration:
Study several contrasting habitats through books, videos, virtual field trips. What''s the same and different?

Organism-Habitat Match:
Match organisms to habitats and explain why. How does a polar bear''s fur help in the Arctic? Could it live in a desert?

Local Habitat Study:
Investigate the schoolyard habitat. What organisms live here? What do they need? How is this habitat suited to them?

Food Chain Building:
Build food chains: plant → herbivore → predator. Use arrows showing energy flow. Every chain starts with a plant.

Habitat Change:
What happens if a habitat changes? Drought, fire, flood, human development. How do organisms respond?

Create a Habitat:
Design a habitat for a specific organism. What does it need? Students apply understanding creatively.

ASSESSMENT INDICATORS:
- Identifies and describes different habitats
- Explains how organisms are suited to their habitats
- Describes dependence between organisms
- Constructs simple food chains
- Predicts effects of habitat change

VOCABULARY TO DEVELOP:
habitat, organism, environment, suited, adapted, depend, food chain, producer, consumer, predator, prey, energy, survive',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Living Things and Habitats' AND grade_level = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 6 SCIENCE UNITS
-- ============================================================================

-- Earth''s Systems (Grade 6)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Earth''s Systems' AND grade_level = 6),
  'Earth''s Systems Teaching Guide',
  'Comprehensive pedagogical approach for teaching Earth systems in Grade 6',
  'EARTH''S SYSTEMS - GRADE 6 UNIT GUIDE

UNIT OVERVIEW:
This unit examines Earth as a complex system with interconnected spheres: geosphere, hydrosphere, atmosphere, and biosphere. Students investigate the water cycle, rock cycle, weathering and erosion, and how energy from the sun drives Earth''s processes. This systems thinking prepares students for understanding climate and environmental science.

LEARNING PROGRESSION:
1. Identifying Earth''s four spheres and their interactions
2. Tracing the water cycle through Earth''s systems
3. Understanding weathering and erosion processes
4. Investigating the rock cycle
5. Exploring atmosphere, weather, and climate
6. Examining human impacts on Earth''s systems

DEVELOPMENTAL CONSIDERATIONS:
Sixth graders can engage with systems thinking and understand cause-effect relationships across scales. Use models and simulations to make invisible processes visible. Connect to local examples and current events.

COMMON MISCONCEPTIONS:
- Thinking the water cycle has a start and end point
- Confusing weathering (breaking down) and erosion (transport)
- Believing rocks don''t change ("rock-solid" = permanent)
- Confusing weather (short-term) and climate (long-term patterns)
- Thinking human impact is always negative (we can have positive impact)

INSTRUCTIONAL STRATEGIES:

Systems Diagrams:
Create diagrams showing interactions between spheres. Where does water move? Where does rock cycle? How does atmosphere affect biosphere?

Water Cycle Modeling:
Use terrariums or sealed bags to model water cycle. Track water movement over days. This makes invisible processes visible.

Rock Investigation:
Examine rock samples from each type. How does each form? Use evidence from rock characteristics.

Erosion Experiments:
Build stream tables or investigate erosion in schoolyard. What factors affect erosion rate?

Climate Data Analysis:
Analyze local climate data over time. What patterns emerge? How does this differ from daily weather?

Human Impact Case Studies:
Investigate specific examples: deforestation effects on water cycle, urbanization effects on erosion. Systems thinking applied.

ASSESSMENT INDICATORS:
- Explains interactions between Earth''s spheres
- Traces matter through water and rock cycles
- Distinguishes weathering from erosion
- Differentiates weather and climate
- Analyzes human impacts on Earth''s systems

VOCABULARY TO DEVELOP:
geosphere, hydrosphere, atmosphere, biosphere, water cycle, evaporation, condensation, precipitation, weathering, erosion, deposition, rock cycle, igneous, sedimentary, metamorphic, climate',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Earth''s Systems' AND grade_level = 6)
ON CONFLICT DO NOTHING;

-- Structure and Properties of Matter (Grade 6)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Structure and Properties of Matter' AND grade_level = 6),
  'Structure and Properties of Matter Teaching Guide',
  'Comprehensive pedagogical approach for teaching matter structure and properties in Grade 6',
  'STRUCTURE AND PROPERTIES OF MATTER - GRADE 6 UNIT GUIDE

UNIT OVERVIEW:
This unit develops understanding of matter at the particle level. Students learn that all matter is made of atoms, understand the relationship between particle motion and states of matter, and distinguish between elements, compounds, and mixtures. This foundational chemistry prepares for more advanced study.

LEARNING PROGRESSION:
1. All matter is made of atoms
2. Atomic structure (protons, neutrons, electrons)
3. Elements and the periodic table
4. Compounds and molecules
5. Mixtures vs. pure substances
6. States of matter and particle motion
7. Phase changes and energy

DEVELOPMENTAL CONSIDERATIONS:
Sixth graders can reason about invisible particles if given models and analogies. Use simulations and physical models to make atomic-level phenomena accessible. Connect to observable properties.

COMMON MISCONCEPTIONS:
- Thinking atoms are like tiny solar systems with orbiting electrons
- Believing atoms of a solid don''t move
- Confusing atoms with cells (mixing biology and chemistry)
- Thinking molecules have the same properties as their atoms
- Believing temperature causes matter to expand (particles move more, not get bigger)

INSTRUCTIONAL STRATEGIES:

Particle Models:
Use physical models (balls) and simulations to show particle behavior. Students can "be" particles demonstrating states of matter.

Periodic Table Exploration:
Explore the periodic table as organized information. Find patterns. Research elements and their uses.

Compound Building:
Use molecular modeling kits to build compounds. Compare properties of elements vs. the compound they form (Na + Cl = NaCl).

Mixture Separation:
Separate mixtures using physical properties: filtration, evaporation, magnetism. This demonstrates mixture vs. compound.

Temperature and Motion:
Connect heating to increased particle motion. Use simulations to visualize. Explain phase changes through particle motion.

Density Investigation:
Investigate density through experimentation. Why do some things float? Connect to particle arrangement.

ASSESSMENT INDICATORS:
- Describes matter in terms of atoms and molecules
- Explains basic atomic structure
- Distinguishes elements, compounds, and mixtures
- Explains states of matter using particle motion
- Describes phase changes in terms of energy and particles

VOCABULARY TO DEVELOP:
atom, molecule, element, compound, mixture, periodic table, proton, neutron, electron, nucleus, solid, liquid, gas, kinetic energy, phase change, density',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Structure and Properties of Matter' AND grade_level = 6)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 8 SCIENCE UNITS
-- ============================================================================

-- Forces and Motion (Grade 8)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Forces and Motion' AND grade_level = 8),
  'Forces and Motion Teaching Guide',
  'Comprehensive pedagogical approach for teaching forces and motion in Grade 8',
  'FORCES AND MOTION - GRADE 8 UNIT GUIDE

UNIT OVERVIEW:
This unit develops quantitative understanding of motion and Newton''s laws. Students calculate speed, velocity, and acceleration, apply Newton''s three laws to predict and explain motion, and analyze forces including gravity and friction. This prepares students for high school physics.

LEARNING PROGRESSION:
1. Describing motion: position, speed, velocity
2. Calculating and graphing speed and velocity
3. Understanding acceleration
4. Newton''s First Law: inertia and balanced forces
5. Newton''s Second Law: F = ma
6. Newton''s Third Law: action-reaction pairs
7. Gravity, friction, and other forces

DEVELOPMENTAL CONSIDERATIONS:
Eighth graders can work with formulas and quantitative relationships. However, conceptual understanding must come before formula manipulation. Use investigations to build intuition, then formalize mathematically.

COMMON MISCONCEPTIONS:
- Believing motion requires continuous force
- Thinking heavier objects fall faster
- Confusing speed and acceleration
- Misunderstanding action-reaction pairs (thinking they cancel out)
- Believing friction only opposes motion (static friction exists)

INSTRUCTIONAL STRATEGIES:

Motion Graphing:
Create and interpret distance-time and velocity-time graphs. Motion sensors make this real-time and engaging.

Newton''s First Law Demo:
Table cloth pull, ball on car demonstrations. Build intuition about inertia before formal definition.

F = ma Investigations:
Vary mass and force, measure acceleration. Verify F = ma relationship experimentally.

Force Diagrams:
Draw and analyze free-body diagrams. Identify all forces. Predict motion from net force.

Action-Reaction Identification:
Identify action-reaction pairs. Emphasize: same force, different objects. This is the most commonly misunderstood law.

Friction Experiments:
Investigate factors affecting friction. Connect to real-world applications: brakes, tires, ice.

ASSESSMENT INDICATORS:
- Calculates speed, velocity, and acceleration
- Applies Newton''s three laws to explain motion
- Draws and interprets force diagrams
- Predicts motion from force analysis
- Distinguishes between contact and field forces

VOCABULARY TO DEVELOP:
position, speed, velocity, acceleration, inertia, force, mass, Newton, balanced, unbalanced, net force, friction, gravity, action-reaction',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Forces and Motion' AND grade_level = 8)
ON CONFLICT DO NOTHING;

-- Heredity and Genetics (Grade 8)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Heredity and Genetics' AND grade_level = 8),
  'Heredity and Genetics Teaching Guide',
  'Comprehensive pedagogical approach for teaching heredity and genetics in Grade 8',
  'HEREDITY AND GENETICS - GRADE 8 UNIT GUIDE

UNIT OVERVIEW:
This unit explores how genetic information is passed from parents to offspring and how it determines traits. Students learn about DNA structure, genes, and chromosomes, apply Mendelian genetics to predict trait inheritance, and explore sources of genetic variation. This foundational genetics supports biology and biotechnology understanding.

LEARNING PROGRESSION:
1. DNA as genetic material - structure and function
2. Genes and chromosomes
3. Cell division: mitosis and meiosis
4. Mendelian genetics: dominant and recessive
5. Punnett squares and probability
6. Complex inheritance patterns
7. Genetic variation and mutations
8. Introduction to biotechnology

DEVELOPMENTAL CONSIDERATIONS:
Eighth graders can handle abstract concepts when connected to concrete examples. Use models extensively for DNA and cell division. Probability in genetics connects nicely to math learning.

COMMON MISCONCEPTIONS:
- Thinking traits blend (green + yellow = light green) rather than segregate
- Believing dominant means more common or better
- Confusing genotype and phenotype
- Thinking mutations are always bad
- Believing we inherit traits from one parent or the other (not combinations)

INSTRUCTIONAL STRATEGIES:

DNA Modeling:
Build DNA models (candy, paper, 3D printing). Understand base pairing rules through construction.

Mitosis vs. Meiosis:
Compare processes using diagrams, animations, and modeling. Emphasize: mitosis = identical copies, meiosis = genetic variation.

Punnett Square Practice:
Start with single traits, progress to two-trait crosses. Connect to probability. Practice until fluent.

Trait Surveys:
Survey class for genetic traits (attached/detached earlobes, tongue rolling). This makes genetics personal.

Case Studies:
Analyze inheritance in families through pedigrees. Apply understanding to real scenarios.

Biotechnology Discussion:
Explore genetic engineering, GMOs, gene therapy. Discuss both benefits and ethical considerations.

ASSESSMENT INDICATORS:
- Describes DNA structure and function
- Explains the role of genes in inheritance
- Compares mitosis and meiosis
- Uses Punnett squares to predict outcomes
- Explains sources of genetic variation
- Discusses implications of genetic technology

VOCABULARY TO DEVELOP:
DNA, gene, chromosome, allele, dominant, recessive, genotype, phenotype, Punnett square, homozygous, heterozygous, mitosis, meiosis, mutation, variation',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Heredity and Genetics' AND grade_level = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- HIGH SCHOOL SCIENCE UNITS (GRADES 9-12)
-- ============================================================================

-- Matter and Its Properties (Grade 9 - Physical Science)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Matter and Its Properties' AND grade_level = 9),
  'Matter and Its Properties Teaching Guide',
  'Comprehensive pedagogical approach for teaching matter in Physical Science',
  'MATTER AND ITS PROPERTIES - PHYSICAL SCIENCE UNIT GUIDE

UNIT OVERVIEW:
This unit provides a rigorous introduction to the nature of matter. Students explore atomic structure, periodic trends, and chemical bonding. They distinguish between physical and chemical properties and changes. This foundation supports all further chemistry and physics study.

LEARNING PROGRESSION:
1. Classification of matter (elements, compounds, mixtures)
2. Atomic structure (historical models to current)
3. Electron configuration
4. Periodic table organization and trends
5. Ionic and covalent bonding
6. Physical vs. chemical properties and changes

COMMON MISCONCEPTIONS:
- Electrons orbit like planets (probability clouds are more accurate)
- Atoms are mostly solid (mostly empty space)
- Chemical bonds are physical connections (they''re electron interactions)
- Periodic table position is arbitrary (it reveals atomic structure)

INSTRUCTIONAL STRATEGIES:

Historical Models:
Trace atomic model development: Dalton → Thomson → Rutherford → Bohr → Quantum. Science progresses through evidence.

Electron Configuration Practice:
Use the periodic table as a map for electron configuration. Find patterns. Practice extensively.

Periodic Trend Analysis:
Graph and analyze trends: atomic radius, ionization energy, electronegativity. Explain trends using atomic structure.

Bond Type Comparison:
Compare ionic and covalent bonds through properties of resulting substances. Predict bond types.

Lab Investigations:
Investigate physical and chemical changes through lab activities. Use evidence to distinguish types.

VOCABULARY TO DEVELOP:
atom, electron, proton, neutron, nucleus, orbital, shell, periodic table, period, group, valence, ionic bond, covalent bond, molecule',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Matter and Its Properties' AND grade_level = 9)
ON CONFLICT DO NOTHING;

-- Cell Biology (Grade 10 - Biology)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Cell Biology' AND grade_level = 10),
  'Cell Biology Teaching Guide',
  'Comprehensive pedagogical approach for teaching cell biology',
  'CELL BIOLOGY - BIOLOGY UNIT GUIDE

UNIT OVERVIEW:
This foundational biology unit explores the cell as the basic unit of life. Students compare prokaryotic and eukaryotic cells, learn organelle structure and function, understand membrane transport, and explore cell communication. This understanding supports all biological study.

LEARNING PROGRESSION:
1. Cell theory and microscopy
2. Prokaryotic vs. eukaryotic cells
3. Organelle structure and function
4. Cell membrane structure (fluid mosaic model)
5. Passive transport: diffusion and osmosis
6. Active transport and bulk transport
7. Cell signaling and communication

COMMON MISCONCEPTIONS:
- Thinking cells are empty except for organelles
- Believing cell membranes are solid barriers
- Confusing osmosis with diffusion
- Thinking active transport just means faster
- Believing only neurons communicate

INSTRUCTIONAL STRATEGIES:

Microscopy Skills:
Develop microscopy skills through progressive lab work. Observe real cells from various sources.

Cell Model Building:
Build 3D cell models with organelles. Explain function of each part.

Membrane Simulation:
Model membrane structure and transport using simulations. Visualize how molecules cross.

Osmosis/Diffusion Labs:
Classic egg or potato osmosis lab. Observe, measure, explain using particle concepts.

Case Studies:
Explore cell dysfunction in disease (cystic fibrosis = transport defect, diabetes = signaling issue). Apply understanding.

Vocabulary Development:
Use concept maps to show organelle relationships and functions.

VOCABULARY TO DEVELOP:
cell, organelle, nucleus, mitochondria, ribosome, endoplasmic reticulum, Golgi, membrane, phospholipid, diffusion, osmosis, active transport, signal, receptor',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Cell Biology' AND grade_level = 10)
ON CONFLICT DO NOTHING;

-- Evolution (Grade 10 - Biology)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM units WHERE name = 'Evolution' AND grade_level = 10),
  'Evolution Teaching Guide',
  'Comprehensive pedagogical approach for teaching evolution',
  'EVOLUTION - BIOLOGY UNIT GUIDE

UNIT OVERVIEW:
This unit explores the theory of evolution by natural selection, the unifying concept of biology. Students examine evidence for evolution, understand mechanisms of evolutionary change, and apply population genetics. This understanding explains the diversity and unity of life.

LEARNING PROGRESSION:
1. Darwin''s theory of natural selection
2. Evidence for evolution (fossils, anatomy, DNA)
3. Mechanisms: natural selection, genetic drift, gene flow
4. Population genetics and Hardy-Weinberg
5. Speciation
6. Phylogenetics and classification

COMMON MISCONCEPTIONS:
- Evolution is "just a theory" (misunderstanding scientific meaning)
- Individuals evolve (populations evolve, not individuals)
- Evolution = progress toward perfection (adaptation to current conditions)
- Evolution is random (natural selection is not random)
- Humans descended from chimpanzees (common ancestor)

INSTRUCTIONAL STRATEGIES:

Evidence Analysis:
Examine multiple lines of evidence: fossil record, comparative anatomy, molecular biology. Build argument from evidence.

Natural Selection Simulations:
Simulate natural selection with games or computer simulations. See how populations change over generations.

Population Genetics Problems:
Apply Hardy-Weinberg equilibrium. Calculate allele frequencies. Identify evolutionary forces.

Speciation Case Studies:
Examine real speciation events: Hawaiian honeycreepers, cichlid fish, Darwin''s finches.

Phylogenetic Analysis:
Build and interpret phylogenetic trees. Understand relationships between organisms.

Discuss Nature of Science:
Address the nature of scientific theories. Distinguish scientific from everyday use of "theory."

VOCABULARY TO DEVELOP:
evolution, natural selection, adaptation, fitness, population, gene pool, allele frequency, genetic drift, speciation, phylogeny, common ancestor, evidence',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Evolution' AND grade_level = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VERIFICATION QUERY
-- ============================================================================
SELECT
  'Science unit prompts' as category,
  COUNT(*) as total
FROM prompt_templates
WHERE prompt_type = 'unit_global'
  AND subject_id = (SELECT id FROM subjects WHERE name = 'Science');
