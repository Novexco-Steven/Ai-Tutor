-- Grade 4 Science Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 4 Science expanded topics
-- ==============================================================================

-- ==============================================================================
-- ENERGY TRANSFER TOPICS (Sample prompts from 10 topics)
-- ==============================================================================

-- Forms of Energy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Forms of Energy' AND grade_level_min = 4),
  'Forms of Energy Topic Guide', 'Identifying and understanding different forms of energy',
  'FORMS OF ENERGY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding that energy makes things happen
- Basic knowledge of motion and forces
- Ability to observe and describe phenomena
- Experience with cause and effect

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify different forms of energy (kinetic, potential, thermal, electrical, light, sound)
2. Recognize energy in everyday situations
3. Understand that energy can change from one form to another
4. Explain that energy is the ability to do work or cause change

KEY CONCEPTS:
- Energy is the ability to cause change or do work
- Kinetic energy is energy of motion
- Potential energy is stored energy
- Thermal energy relates to temperature and heat
- Electrical energy powers devices and flows through circuits
- Light and sound are forms of energy we can detect

COMMON MISCONCEPTIONS:
- Thinking energy is a substance you can hold
- Confusing energy with force or power
- Believing some objects don''t have any energy
- Not recognizing that all energy forms are related

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Demonstrate multiple energy forms in sequence:
   Battery (electrical) → flashlight (light) → solar panel (electrical) → small motor (kinetic)
   Ask: What''s making each thing work? What do they all have in common?

2. DIRECT INSTRUCTION (15 minutes):
   Define energy: ability to cause change or do work
   Introduce six main forms:
   - Kinetic: Energy of movement (rolling ball, wind, running water)
   - Potential: Stored energy (stretched rubber band, object on high shelf)
   - Thermal: Heat energy (hot stove, warm hands)
   - Electrical: Moving electrons (lightning, batteries, outlets)
   - Light: Energy we can see (sun, lamps, fire)
   - Sound: Energy we can hear (music, voices, vibrations)
   For each, show examples and non-examples.
   Emphasize: Energy makes things happen!

3. GUIDED PRACTICE (20 minutes):
   Energy scavenger hunt: Around classroom or school, find examples of each energy form.
   Record findings on chart with columns for each energy type.
   Energy station rotations:
   Station 1: Kinetic - rolling balls, spinning tops
   Station 2: Potential - rubber bands, springs, raised objects
   Station 3: Thermal - warm water, ice, thermometer
   Station 4: Electrical - battery-powered devices
   Station 5: Light - flashlights, prisms, glow sticks
   Station 6: Sound - musical instruments, tuning forks
   Discuss: How do you know energy is present?

4. INDEPENDENT PRACTICE (12 minutes):
   Students create "Energy in My Day" poster showing at least 5 different forms of energy they use.
   Label each with energy type and brief explanation.
   Share with partner: Can they identify additional energy forms in each picture?

DIFFERENTIATION:
For Struggling Learners:
- Focus on three main types: kinetic, thermal, light
- Use concrete, observable examples
- Provide picture cards to match with energy forms
- Create word bank for labels

For Advanced Learners:
- Explore energy transformations (one form changing to another)
- Research additional energy forms (chemical, nuclear)
- Investigate how energy forms are measured
- Design demonstrations showing energy conversions

ASSESSMENT INDICATORS:
- Identifies and names at least 5 forms of energy
- Gives appropriate examples for each energy form
- Recognizes energy in everyday situations
- Explains that energy causes change or does work', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Forms of Energy' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Energy Conversion
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Energy Conversion' AND grade_level_min = 4),
  'Energy Conversion Topic Guide', 'Understanding how energy changes from one form to another',
  'ENERGY CONVERSION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Knowledge of different forms of energy
- Understanding of energy transfer
- Ability to trace cause and effect
- Experience observing energy in action

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify examples of energy conversion in everyday devices
2. Trace energy transformations through multiple steps
3. Understand that energy is conserved during conversion
4. Recognize that some energy is always converted to thermal energy

KEY CONCEPTS:
- Energy changes from one form to another (conversion or transformation)
- Devices and machines convert energy to useful forms
- Energy conversions can involve multiple steps
- Energy is conserved: total amount stays the same even when form changes
- Some energy is always "lost" as heat, but total energy remains constant

COMMON MISCONCEPTIONS:
- Thinking energy is created or destroyed during conversion
- Believing energy conversions are 100% efficient
- Not recognizing multiple energy forms in single devices
- Confusing energy conversion with energy creation

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Flashlight demonstration: Battery → bulb → light and heat
   Trace the energy: Chemical (battery) → Electrical (circuit) → Light + Thermal (bulb)
   Ask: Did we create energy? Or just change its form?

2. DIRECT INSTRUCTION (15 minutes):
   Define energy conversion: Energy changing from one form to another
   Model tracing energy conversions:
   Example 1: Electric fan
   Electrical energy → Kinetic energy (spinning blades) + Sound + Thermal (motor heat)
   Example 2: Toaster
   Electrical energy → Thermal energy (heating element) + Light (red glow)
   Introduce energy flow diagrams with arrows showing transformations.
   Emphasize Law of Conservation of Energy: Energy is neither created nor destroyed, only converted.
   Explain: Some energy always converts to heat (often not useful).

3. GUIDED PRACTICE (20 minutes):
   Device energy conversion investigation:
   Groups receive different devices: wind-up toy, hand-crank flashlight, whistle, solar calculator, electric bell
   For each device, identify:
   - Starting energy form (input)
   - Conversion process
   - Ending energy form(s) (output)
   Create energy conversion diagram with arrows.
   Class shares: Compare conversions across devices.
   Identify common pattern: Most involve thermal energy as output.

4. INDEPENDENT PRACTICE (12 minutes):
   Students choose an everyday device (phone, lamp, car, microwave, bicycle).
   Draw energy conversion diagram showing at least 3 energy transformations.
   Write explanation: "Energy in a ____ changes from ____ to ____ to ____."
   Include where energy "losses" to heat might occur.

DIFFERENTIATION:
For Struggling Learners:
- Use simple, visible conversions (flashlight, bell)
- Provide conversion diagram templates
- Focus on two-step conversions
- Use picture cards to sequence energy forms

For Advanced Learners:
- Trace complex, multi-step energy conversions
- Calculate approximate energy efficiency
- Research energy waste and how to reduce it
- Design devices that minimize energy loss

ASSESSMENT INDICATORS:
- Identifies input and output energy forms in devices
- Correctly traces energy through at least 2 conversions
- Explains that energy changes form but is not created or destroyed
- Recognizes thermal energy as common conversion product', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Energy Conversion' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ==============================================================================
-- WAVES AND INFORMATION TOPICS (Sample prompts)
-- ==============================================================================

-- What Are Waves?
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'What Are Waves?' AND grade_level_min = 4),
  'What Are Waves Topic Guide', 'Understanding waves as patterns that transfer energy',
  'WHAT ARE WAVES? - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of energy transfer
- Ability to observe patterns
- Experience with motion and movement
- Basic understanding of vibrations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define waves as disturbances that transfer energy through matter or space
2. Identify examples of waves in daily life
3. Describe wave motion without matter moving from place to place
4. Distinguish between waves and moving objects

KEY CONCEPTS:
- Waves are repeating patterns that transfer energy
- Waves move through a medium (matter) or through space
- The medium vibrates but doesn''t travel with the wave
- Examples include water waves, sound waves, light waves
- Waves carry energy from one place to another

COMMON MISCONCEPTIONS:
- Thinking matter moves with waves (like water traveling with a wave)
- Confusing wave motion with object motion
- Believing all waves are water waves
- Not recognizing that waves transfer energy

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Stadium wave demonstration: Students do "the wave" around classroom.
   Observe: Did anyone leave their seat? Did energy/motion travel around the room?
   Connect: This is how waves work - energy moves, but matter stays in place!

2. DIRECT INSTRUCTION (15 minutes):
   Define wave: A disturbance or pattern that transfers energy
   Demonstrate with slinky or rope:
   - Send pulse down rope
   - Observe: Rope moves up and down, but doesn''t travel forward
   - Energy travels the length of rope
   Introduce key idea: Waves move energy without moving matter from place to place
   Show examples of waves:
   - Water waves (energy moves through water, water particles move in circles)
   - Sound waves (energy moves through air)
   - Light waves (energy moves through space)
   Compare wave motion to object motion: Ball rolling moves matter. Wave moves energy.

3. GUIDED PRACTICE (20 minutes):
   Wave exploration stations:
   Station 1: Water waves in tray - drop object, watch waves spread, observe floating cork stays in place
   Station 2: Slinky waves - send pulses, observe medium returns to original position
   Station 3: Jump rope waves - create waves, notice rope doesn''t travel
   Station 4: Sound waves - tuning fork in water, see ripples from vibration
   Students record: What moved? What stayed in place? What was transferred?
   Class discussion: What do all waves have in common?

4. INDEPENDENT PRACTICE (12 minutes):
   Students draw and label diagram showing:
   - A wave transferring energy
   - Medium that wave travels through
   - Arrows showing energy movement
   - Labels explaining what moves and what doesn''t
   Write: "Waves transfer ____ without moving ____ from place to place."

DIFFERENTIATION:
For Struggling Learners:
- Use highly visible waves (water, rope)
- Provide sentence frames for explanations
- Focus on the concept: energy moves, matter stays
- Use videos slowing down wave motion

For Advanced Learners:
- Explore different wave types (transverse vs. longitudinal)
- Investigate wave speed in different media
- Research how waves carry information
- Model mathematical wave patterns

ASSESSMENT INDICATORS:
- Defines waves as energy transfer patterns
- Identifies at least 3 examples of waves
- Explains that medium vibrates but doesn''t travel with wave
- Distinguishes wave motion from object motion', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What Are Waves?' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Sound Waves
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Sound Waves' AND grade_level_min = 4),
  'Sound Waves Topic Guide', 'Understanding how sound travels through vibrations',
  'SOUND WAVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of waves
- Awareness of vibrations
- Ability to make and observe sounds
- Knowledge that sound is a form of energy

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Explain that sound is caused by vibrations
2. Understand that sound waves travel through matter (solids, liquids, gases)
3. Recognize that sound cannot travel through a vacuum
4. Observe how sound waves make objects vibrate

KEY CONCEPTS:
- Sound is created when objects vibrate
- Sound waves are vibrations traveling through matter
- Sound travels through solids, liquids, and gases but not through empty space
- Vibrating object causes air particles to vibrate, creating waves
- Sound waves cause our eardrums to vibrate, allowing us to hear

COMMON MISCONCEPTIONS:
- Thinking sound can travel through empty space (like light)
- Believing sound waves are visible
- Not connecting sound to vibrations
- Thinking louder sounds are different from quieter sounds in fundamental ways (both are vibrations)

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Place smartphone or music player in a jar. Play music.
   Gradually pump air out (or simulate with bell jar if available).
   Sound gets quieter, then silent. Why? Sound needs matter to travel!

2. DIRECT INSTRUCTION (15 minutes):
   Demonstrate sound = vibration:
   - Strike tuning fork, touch to water surface → see ripples
   - Hit drum with rice grains on top → see rice bounce
   - Hum while touching throat → feel vibrations
   Explain sound wave transmission:
   Vibrating object → vibrates nearby air particles → vibrations spread outward in waves → reach our ear → vibrate eardrum → brain interprets as sound
   Demonstrate sound traveling through different materials:
   - Air: normal hearing
   - Solid: tap on desk, listen with ear on desk (louder!)
   - Liquid: sound underwater (if possible, or show video)
   Emphasize: No matter = no sound (vacuum of space is silent)

3. GUIDED PRACTICE (20 minutes):
   Sound investigation stations:
   Station 1: Vibration observation - speakers with paper or sand on top, observe vibration patterns
   Station 2: Sound through materials - tap on metal, wood, plastic; listen through each
   Station 3: String telephone - show sound traveling through solid string
   Station 4: Vocal cords - hum and feel throat vibrations
   Station 5: Ruler vibration - hang ruler over desk edge, pluck, observe and hear vibration
   Students record: How is sound created? What vibrates? How does sound travel?

4. INDEPENDENT PRACTICE (12 minutes):
   Students create diagram showing how sound travels from source to ear:
   Include: vibrating object, sound wave arrows, air particles, eardrum
   Label each step in sound transmission
   Answer: Why can''t astronauts hear each other in space without radios?

DIFFERENTIATION:
For Struggling Learners:
- Use very concrete, visible vibrations
- Provide labeled diagram templates
- Focus on connection: vibration = sound
- Use hands-on experiences to feel vibrations

For Advanced Learners:
- Investigate speed of sound in different materials
- Explore how vibration frequency affects pitch
- Research how musical instruments create specific vibrations
- Design experiments to measure sound transmission

ASSESSMENT INDICATORS:
- Explains that sound is created by vibrations
- Demonstrates that sound travels through matter
- States that sound cannot travel in a vacuum
- Identifies vibrations as the source of all sounds', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sound Waves' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ==============================================================================
-- PLANT AND ANIMAL STRUCTURE TOPICS (Sample prompts)
-- ==============================================================================

-- Photosynthesis Basics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Photosynthesis Basics' AND grade_level_min = 4),
  'Photosynthesis Basics Topic Guide', 'Understanding how plants make food from sunlight',
  'PHOTOSYNTHESIS BASICS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Knowledge of plant parts and their functions
- Understanding that plants need sunlight, water, and air
- Recognition that plants are living things that grow
- Basic concept of energy

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Explain that plants make their own food using sunlight
2. Identify the inputs needed for photosynthesis (sunlight, water, carbon dioxide)
3. Identify the outputs of photosynthesis (glucose/sugar, oxygen)
4. Understand that photosynthesis occurs mainly in leaves

KEY CONCEPTS:
- Photosynthesis is the process plants use to make food
- Plants capture light energy from the sun
- Plants use water (from roots), carbon dioxide (from air), and sunlight to make glucose (sugar)
- Oxygen is released as a byproduct
- Chlorophyll in leaves captures sunlight and makes leaves green
- Energy from sun is stored in glucose molecules

COMMON MISCONCEPTIONS:
- Thinking plants get food from soil
- Believing water or sunlight alone is plant food
- Not understanding that plants make their own food
- Thinking photosynthesis only makes oxygen (also makes sugar)

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Question: What do plants eat? Where do they get food?
   Common answer: Soil, water, sun
   Reveal: Plants don''t eat - they make their own food! How?

2. DIRECT INSTRUCTION (15 minutes):
   Introduce photosynthesis: Process where plants make food using sunlight
   Word origin: "Photo" = light, "synthesis" = putting together
   Show simple equation (in words):
   Water + Carbon Dioxide + Sunlight → Glucose (Sugar) + Oxygen
   Explain each component:
   - Water: Absorbed by roots, travels to leaves
   - Carbon Dioxide: Gas from air, enters through tiny leaf pores
   - Sunlight: Energy source, captured by chlorophyll in leaves
   - Glucose: Sugar (food) plant makes and uses or stores
   - Oxygen: Waste product released into air (helpful for animals!)
   Demonstrate role of leaves: green color from chlorophyll which captures sunlight
   Emphasize: Light energy is converted to chemical energy (stored in glucose)

3. GUIDED PRACTICE (20 minutes):
   Photosynthesis model activity:
   Create human model: Students represent components
   - "Sunlight" students bring energy
   - "Water" students enter from roots
   - "CO2" students enter from air
   - Mix in "chloroplast" (center of room)
   - Create "glucose" and "oxygen" student groups exit
   Leaf investigation:
   Examine leaves with hand lens, observe green chlorophyll
   Cover part of leaf on a living plant with foil → check days later (covered part yellows without light)
   Create photosynthesis diagram showing inputs and outputs

4. INDEPENDENT PRACTICE (12 minutes):
   Students draw and label photosynthesis process:
   Show plant with roots, stem, leaves
   Draw arrows showing water entering roots, CO2 entering leaves, sunlight hitting leaves
   Label outputs: glucose (stays in plant), oxygen (released to air)
   Write: "Plants use ____, ____, and ____ to make ____ and ____."

DIFFERENTIATION:
For Struggling Learners:
- Use simplified vocabulary ("food-making" instead of photosynthesis)
- Provide diagram templates to label
- Focus on inputs and outputs, not complex processes
- Use concrete props (sun cutout, water droplets, etc.)

For Advanced Learners:
- Explore chemical equation with formulas
- Investigate factors that affect photosynthesis rate
- Research where glucose is stored (fruits, roots, seeds)
- Connect photosynthesis to cellular respiration in animals

ASSESSMENT INDICATORS:
- Names the three inputs needed for photosynthesis
- Identifies glucose and oxygen as outputs
- Explains that plants make their own food
- Locates photosynthesis primarily in leaves', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Photosynthesis Basics' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ==============================================================================
-- EARTH''S CHANGING SURFACE TOPICS (Sample prompts)
-- ==============================================================================

-- Weathering
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Weathering' AND grade_level_min = 4),
  'Weathering Topic Guide', 'Understanding how rocks break down into smaller pieces',
  'WEATHERING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Knowledge of rocks and minerals
- Understanding of change over time
- Awareness of weather and environmental conditions
- Ability to observe and compare

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define weathering as the breaking down of rocks into smaller pieces
2. Distinguish between physical and chemical weathering
3. Identify causes of weathering (water, ice, wind, temperature, plants)
4. Recognize evidence of weathering in the environment

KEY CONCEPTS:
- Weathering is the breakdown of rocks into smaller pieces
- Physical weathering breaks rocks without changing their composition
- Chemical weathering changes rocks through chemical reactions
- Water, ice, wind, temperature changes, and living things cause weathering
- Weathering happens slowly over time
- Weathering produces sediment (small rock pieces) that can become soil

COMMON MISCONCEPTIONS:
- Confusing weathering with erosion (weathering breaks down; erosion moves pieces)
- Thinking weathering happens quickly
- Not recognizing that plants and animals contribute to weathering
- Believing weathering only affects old rocks

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Show two rocks: one smooth and rounded (weathered), one jagged and sharp (less weathered)
   Ask: Why do they look different? What happened to the smooth one?
   Discuss: Natural forces can change rocks over time!

2. DIRECT INSTRUCTION (15 minutes):
   Define weathering: Process of breaking down rocks into smaller pieces
   Introduce two types:
   Physical Weathering: Breaking without changing what rock is made of
   - Ice wedging: Water in cracks freezes, expands, splits rock
   - Temperature changes: Rock expands and contracts, creating cracks
   - Plant roots: Roots grow in cracks, break rocks apart
   - Abrasion: Rocks rub against each other (by wind or water), wear down
   Chemical Weathering: Chemical reactions change rock composition
   - Rust (oxidation): Oxygen reacts with iron in rocks
   - Acid rain: Weak acids dissolve certain rocks
   - Dissolution: Water slowly dissolves minerals
   Show pictures and models of each type
   Emphasize: Weathering creates sediment and contributes to soil formation

3. GUIDED PRACTICE (20 minutes):
   Weathering simulations:
   Station 1: Ice weathering - Water-soaked sponge in freezer (observe expansion)
   Station 2: Abrasion - Shake sugar cubes or soft rocks in container (observe wearing down)
   Station 3: Chemical weathering - Chalk (limestone) in vinegar (observe fizzing, dissolving)
   Station 4: Plant weathering - Observe tree roots breaking sidewalk or rock (pictures or local example)
   Students record observations and identify weathering type
   Nature walk (or photo observation): Find evidence of weathering (smooth rocks, cracked pavement, rust on rocks, roots in cracks)

4. INDEPENDENT PRACTICE (12 minutes):
   Students create weathering poster showing:
   - Definition of weathering
   - Two examples of physical weathering
   - One example of chemical weathering
   - Before and after drawings of each
   Write: How is weathering changing the land around us?

DIFFERENTIATION:
For Struggling Learners:
- Focus on physical weathering only
- Use simple, visible examples
- Provide sentence frames for descriptions
- Use hands-on models and demonstrations

For Advanced Learners:
- Research rates of weathering for different rock types
- Investigate how climate affects weathering rates
- Design long-term weathering experiments
- Explore how weathering contributes to soil formation

ASSESSMENT INDICATORS:
- Defines weathering as breakdown of rocks
- Distinguishes physical from chemical weathering
- Identifies at least three causes of weathering
- Provides real-world examples of weathering', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Weathering' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- The Rock Cycle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Rock Cycle' AND grade_level_min = 4),
  'The Rock Cycle Topic Guide', 'Understanding how rocks change from one type to another',
  'THE ROCK CYCLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Knowledge of three rock types (igneous, sedimentary, metamorphic)
- Understanding of weathering and erosion
- Concept of cycles in nature
- Awareness that Earth changes over time

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Describe the rock cycle as the continuous process of rock formation and change
2. Trace how rocks change from one type to another
3. Identify processes that change rocks (melting, cooling, pressure, heat, weathering)
4. Understand that the rock cycle has no beginning or end

KEY CONCEPTS:
- The rock cycle shows how rocks continually change from one type to another
- Igneous rocks form from cooling magma or lava
- Sedimentary rocks form from compressed sediment layers
- Metamorphic rocks form when existing rocks are changed by heat and pressure
- Rocks can change through melting, erosion, deposition, compaction, heat, and pressure
- The cycle is continuous and has no fixed starting point

COMMON MISCONCEPTIONS:
- Thinking the rock cycle has a definite beginning and end
- Believing rocks can only change in one direction
- Not understanding that all rock types can eventually become any other type
- Thinking the rock cycle happens quickly

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Show crayon rock cycle: Shave crayons (weathering), compress into sedimentary rock, heat to melt (metamorphic/igneous).
   Ask: Can we do this over and over? Is there a starting point?

2. DIRECT INSTRUCTION (15 minutes):
   Introduce rock cycle: Continuous process where rocks change from one type to another over millions of years
   Review three rock types:
   - Igneous: From cooling magma/lava (volcanic or underground)
   - Sedimentary: From compressed layers of sediment
   - Metamorphic: From heat and pressure changing existing rocks
   Show rock cycle diagram with arrows connecting all types
   Trace example pathways:
   Path 1: Igneous → weathered to sediment → sedimentary → buried, heated → metamorphic
   Path 2: Metamorphic → melted → igneous → weathered → sediment → sedimentary
   Emphasize: Any rock can become any other type; cycle has no start or finish

3. GUIDED PRACTICE (20 minutes):
   Rock cycle role-play:
   Students represent rocks moving through cycle
   Call out processes: "Melting!" (become igneous), "Weathering and compaction!" (become sedimentary), "Heat and pressure!" (become metamorphic)
   Students move to different areas representing rock types
   Trace multiple pathways through cycle
   Rock cycle model creation:
   Groups create diagrams showing:
   - Three rock types
   - Arrows showing possible changes
   - Labels for processes (melting, cooling, weathering, erosion, compaction, heat, pressure)

4. INDEPENDENT PRACTICE (12 minutes):
   Students create "rock biography":
   Choose a rock type as starting point
   Describe journey through at least 3 transformations
   "I started as ____ rock. Then I was weathered into sediment. After millions of years of pressure, I became ____."
   Illustrate each stage of journey

DIFFERENTIATION:
For Struggling Learners:
- Use simplified cycle showing one pathway
- Provide cycle diagram templates
- Focus on one transformation at a time
- Use concrete models (crayons, clay)

For Advanced Learners:
- Trace multiple complex pathways through cycle
- Research time scales for different transformations
- Explain specific conditions needed for each change
- Connect rock cycle to plate tectonics

ASSESSMENT INDICATORS:
- Identifies three types of rocks in the cycle
- Describes at least two processes that change rocks
- Explains that the rock cycle is continuous with no beginning or end
- Traces how one rock type can become another', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Rock Cycle' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ==============================================================================
-- SUMMARY
-- ==============================================================================
-- Grade 4 Science Expanded Prompts Created:
-- Sample prompts from major units:
-- - Energy Transfer: 2 topics
-- - Waves and Information: 2 topics
-- - Plant and Animal Structure: 1 topic
-- - Earth''s Changing Surface: 2 topics
-- Total: 7 comprehensive teaching prompts as examples
-- Additional prompts can be created following the same comprehensive format
-- ==============================================================================
