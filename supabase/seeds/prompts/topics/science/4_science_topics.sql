-- Grade 4 Science Topic Prompts
-- Comprehensive teaching guides for each topic

-- =====================================================
-- UNIT: ENERGY
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Forms of Energy' AND grade_level_min = 4),
  'Forms of Energy Topic Guide', 'Identify kinetic, potential, thermal, electrical, and light energy',
  'FORMS OF ENERGY - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand basic force and motion concepts. Vocabulary for describing movement and heat. Experience with everyday energy examples.

LEARNING OBJECTIVES:
- Identify different forms of energy (kinetic, potential, thermal, electrical, light, sound)
- Provide examples of each energy form
- Understand that energy makes things happen (do work)
- Recognize energy in everyday situations

KEY CONCEPTS:
1) Energy is the ability to do work or cause change
2) Kinetic energy is energy of motion—moving things have it
3) Potential energy is stored energy (gravitational, elastic, chemical)
4) Thermal energy is heat from particle movement
5) Electrical energy flows through circuits
6) Light and sound are forms of radiant energy
7) Energy cannot be created or destroyed, only transformed

COMMON MISCONCEPTIONS:
- Thinking energy is a substance that flows
- Believing energy is used up rather than transformed
- Confusing energy with force
- Thinking only visible movement involves energy

TEACHING SEQUENCE:
Brainstorm forms of energy with examples. Demonstrate each: rolling ball (kinetic), stretched rubber band (potential), hot water (thermal), flashlight (electrical to light). Classify everyday situations by energy type. Introduce concept that energy cannot be created or destroyed. Create energy observation journals.

DIFFERENTIATION:
Struggling learners: Focus on three main types first, use hands-on demonstrations, visual classification charts. Advanced learners: Research nuclear energy, investigate energy storage, explore quantitative energy concepts.

VOCABULARY:
Energy, kinetic, potential, thermal, electrical, light, sound, motion, stored, heat, work, form.

CONNECTION TO FUTURE LEARNING:
Understanding energy forms prepares students for energy transformation, conservation, and physics concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Forms of Energy' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Energy Transfer' AND grade_level_min = 4),
  'Energy Transfer Topic Guide', 'Understand how energy moves from one object to another',
  'ENERGY TRANSFER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should know forms of energy. Basic understanding of motion and heat. Experience with energy examples.

LEARNING OBJECTIVES:
- Understand that energy can move from one object to another
- Identify methods of energy transfer (conduction, convection, radiation)
- Explain how energy transfers in everyday situations
- Predict energy transfer outcomes

KEY CONCEPTS:
1) Energy transfer means energy moves from one object/place to another
2) Conduction transfers thermal energy through direct contact
3) Convection transfers energy through moving fluids (air, water)
4) Radiation transfers energy through waves (light, heat rays)
5) Energy transfers from higher to lower energy (hot to cold)
6) Collisions transfer kinetic energy between objects

COMMON MISCONCEPTIONS:
- Thinking cold transfers (it''s actually heat that moves)
- Believing energy transfer is always visible
- Confusing insulation with creating cold
- Thinking energy transfer is instantaneous

TEACHING SEQUENCE:
Demonstrate conduction with metal rods in hot water. Show convection with colored water in heated tank. Feel radiation from heat lamp without touching. Explore collision energy transfer with marbles or pool balls. Investigate everyday examples: cooking, heating homes, ball games. Design experiments to test transfer methods.

DIFFERENTIATION:
Struggling learners: Focus on one transfer method at a time, use dramatic demonstrations, hands-on exploration. Advanced learners: Investigate heat transfer rates, design insulation tests, explore thermal conductors vs insulators.

VOCABULARY:
Transfer, conduction, convection, radiation, contact, collision, heat, thermal, flow, movement.

CONNECTION TO FUTURE LEARNING:
Understanding energy transfer prepares students for thermodynamics, engineering design, and physics in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Energy Transfer' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Energy Transformation' AND grade_level_min = 4),
  'Energy Transformation Topic Guide', 'Learn how energy changes from one form to another',
  'ENERGY TRANSFORMATION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should know forms of energy and energy transfer. Basic understanding of cause and effect. Experience with devices that use energy.

LEARNING OBJECTIVES:
- Understand that energy can change from one form to another
- Identify energy transformations in devices and systems
- Trace energy through multiple transformations
- Recognize that some energy always becomes heat in transformations

KEY CONCEPTS:
1) Energy transformation means energy changes from one form to another
2) Most devices transform energy: light bulbs (electrical → light + heat)
3) Energy can transform through several forms in sequence
4) Some energy always becomes thermal energy (heat) in any transformation
5) The total amount of energy stays the same—it just changes form
6) We can trace energy transformation chains

COMMON MISCONCEPTIONS:
- Thinking energy is "lost" in transformations
- Believing energy transformations are 100% efficient
- Confusing transformation with transfer
- Not recognizing that all transformations produce some heat

TEACHING SEQUENCE:
Trace energy in familiar devices: flashlight (chemical → electrical → light), car (chemical → kinetic + heat). Create energy transformation diagrams. Investigate why devices get warm (energy becoming heat). Compare efficient vs inefficient devices. Design transformation chains. Connect to conservation of energy principle.

DIFFERENTIATION:
Struggling learners: Start with simple one-step transformations, use visual chain diagrams, focus on familiar devices. Advanced learners: Calculate efficiency, investigate energy loss, research renewable energy transformations.

VOCABULARY:
Transform, change, convert, form, chain, efficiency, waste, heat, device, machine, system.

CONNECTION TO FUTURE LEARNING:
Understanding energy transformation prepares students for thermodynamics, efficiency, and engineering design in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Energy Transformation' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Designing Energy Systems' AND grade_level_min = 4),
  'Designing Energy Systems Topic Guide', 'Create devices that transfer or transform energy',
  'DESIGNING ENERGY SYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand energy forms, transfer, and transformation. Basic engineering design concepts. Experience with simple machines.

LEARNING OBJECTIVES:
- Apply energy concepts to design problems
- Build devices that transfer or transform energy
- Test and improve designs
- Explain how designs use energy concepts

KEY CONCEPTS:
1) Engineering design applies science concepts to solve problems
2) Energy systems have inputs, processes, and outputs
3) Good designs transform energy efficiently
4) Design requires testing and iteration
5) Understanding energy helps create better solutions
6) Constraints (materials, cost, time) affect design choices

COMMON MISCONCEPTIONS:
- Expecting first designs to work perfectly
- Not connecting science concepts to design
- Thinking all solutions will work the same way
- Ignoring energy efficiency

TEACHING SEQUENCE:
Present design challenges: build a solar oven, create a rubber band car, design a ball launcher. Identify energy involved in each challenge. Brainstorm, build, test, and improve. Document design process. Compare different solutions. Discuss trade-offs and efficiency. Reflect on how energy concepts guided designs.

DIFFERENTIATION:
Struggling learners: Provide structured design templates, work in groups, focus on one energy concept per design. Advanced learners: Add constraints, require efficiency calculations, investigate multiple solutions.

VOCABULARY:
Design, engineer, system, input, output, prototype, test, improve, constraint, efficiency, solution.

CONNECTION TO FUTURE LEARNING:
Engineering design with energy prepares students for STEM challenges, physics applications, and technology design in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Designing Energy Systems' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: WAVES
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Wave Properties' AND grade_level_min = 4),
  'Wave Properties Topic Guide', 'Learn about wavelength, amplitude, and frequency',
  'WAVE PROPERTIES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have experience with water waves. Basic vocabulary for describing patterns. Understanding of energy concepts.

LEARNING OBJECTIVES:
- Identify waves as patterns that transfer energy
- Define and measure wavelength, amplitude, and frequency
- Understand that waves carry energy without moving matter
- Compare waves with different properties

KEY CONCEPTS:
1) Waves are repeating patterns that transfer energy
2) Wavelength is the distance from one wave crest to the next
3) Amplitude is the height of the wave from rest position
4) Frequency is how many waves pass a point in a given time
5) Waves transfer energy without permanently moving matter
6) Higher amplitude = more energy; higher frequency = faster oscillation

COMMON MISCONCEPTIONS:
- Thinking waves carry matter with them (only energy moves)
- Confusing amplitude and wavelength
- Believing all waves are like water waves
- Thinking wave properties are the same as speed

TEACHING SEQUENCE:
Create waves in water troughs and observe properties. Measure wavelength and amplitude. Use slinkys to demonstrate longitudinal waves. Compare waves with different properties. Connect properties to energy (bigger waves carry more energy). Graph wave patterns. Investigate how changing source affects wave properties.

DIFFERENTIATION:
Struggling learners: Focus on water wave demonstrations, measure one property at a time, use visual diagrams. Advanced learners: Calculate wave speed, investigate wave interference, explore electromagnetic spectrum.

VOCABULARY:
Wave, wavelength, amplitude, frequency, crest, trough, energy, transfer, oscillate, period.

CONNECTION TO FUTURE LEARNING:
Understanding wave properties prepares students for studying sound, light, electromagnetic radiation, and physics in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Wave Properties' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Sound Waves' AND grade_level_min = 4),
  'Sound Waves Topic Guide', 'Understand how sound travels through matter',
  'SOUND WAVES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand wave properties. Basic knowledge that sound comes from vibrations. Experience with different sounds.

LEARNING OBJECTIVES:
- Understand that sound is a wave caused by vibrations
- Recognize that sound requires a medium to travel
- Explain how pitch relates to frequency
- Explain how volume relates to amplitude

KEY CONCEPTS:
1) Sound waves are longitudinal waves (compressions and rarefactions)
2) Sound requires a medium—cannot travel through vacuum
3) Sound travels through solids, liquids, and gases at different speeds
4) Pitch is determined by frequency (high pitch = high frequency)
5) Volume is determined by amplitude (loud = high amplitude)
6) Sound can be absorbed, reflected, or transmitted by materials

COMMON MISCONCEPTIONS:
- Thinking sound travels through empty space
- Confusing pitch with volume
- Believing sound waves look like water waves
- Thinking all sounds travel at the same speed

TEACHING SEQUENCE:
Create sounds and feel vibrations (tuning forks, rubber bands, vocal cords). Test sound through different materials (solids vs gases). Use vacuum demonstration if possible. Investigate pitch with different length strings or tubes. Explore volume with amplitude changes. Design experiments comparing sound in different media.

DIFFERENTIATION:
Struggling learners: Focus on vibration-sound connection, simple pitch and volume examples, hands-on exploration. Advanced learners: Calculate sound speeds in different media, investigate the Doppler effect, explore acoustics design.

VOCABULARY:
Sound wave, vibration, medium, pitch, frequency, volume, amplitude, compression, rarefaction, absorb, reflect.

CONNECTION TO FUTURE LEARNING:
Understanding sound waves prepares students for acoustics, music science, and physics concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sound Waves' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Light Waves' AND grade_level_min = 4),
  'Light Waves Topic Guide', 'Explore reflection, refraction, and absorption',
  'LIGHT WAVES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand wave properties. Basic knowledge of light from earlier grades. Experience with mirrors and shadows.

LEARNING OBJECTIVES:
- Understand that light is a wave that can travel through empty space
- Explore reflection (bouncing of light)
- Explore refraction (bending of light)
- Explore absorption (light being taken in by objects)
- Explain how these properties affect what we see

KEY CONCEPTS:
1) Light is an electromagnetic wave—doesn''t need a medium
2) Light travels in straight lines until it hits something
3) Reflection: light bounces off surfaces (mirrors, water)
4) Refraction: light bends when entering a new medium (water, glass)
5) Absorption: light energy is taken in by objects (why things look colored)
6) Different materials reflect, refract, and absorb light differently

COMMON MISCONCEPTIONS:
- Thinking light needs a medium like sound
- Believing color is in the light, not from absorption
- Confusing reflection with refraction
- Thinking all surfaces reflect the same way

TEACHING SEQUENCE:
Explore reflection with mirrors at different angles. Investigate refraction with water and prisms. Explore absorption with different colored objects and filters. Explain how we see color (absorption of some wavelengths, reflection of others). Design experiments with light interaction. Connect to rainbows and optical illusions.

DIFFERENTIATION:
Struggling learners: Focus on one property at a time, use dramatic demonstrations, simple explanations. Advanced learners: Calculate angles of reflection, investigate total internal reflection, explore the electromagnetic spectrum.

VOCABULARY:
Light wave, reflection, refraction, absorption, mirror, lens, prism, transparent, opaque, translucent, color.

CONNECTION TO FUTURE LEARNING:
Understanding light waves prepares students for optics, electromagnetic spectrum, and physics concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Light Waves' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Waves in Communication' AND grade_level_min = 4),
  'Waves in Communication Topic Guide', 'Design devices that use waves to send information',
  'WAVES IN COMMUNICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand sound and light wave properties. Basic engineering design concepts. Familiarity with communication devices.

LEARNING OBJECTIVES:
- Understand that waves can carry information
- Explore how sound and light are used in communication
- Design devices that use waves to transmit information
- Compare different wave-based communication methods

KEY CONCEPTS:
1) Waves can be encoded with information
2) Sound waves carry information in speech, music, signals
3) Light waves carry information (fiber optics, signals)
4) Radio waves are electromagnetic waves used for wireless communication
5) Digital information can be encoded in wave patterns
6) Different applications require different wave types

COMMON MISCONCEPTIONS:
- Thinking waves ARE the information (they carry it)
- Not understanding how patterns encode messages
- Believing all communication is wireless
- Confusing radio waves with sound waves

TEACHING SEQUENCE:
Investigate how Morse code uses patterns. Build simple sound communication devices (tin can telephone, drum signals). Explore light communication (flashlight signals, fiber optics demonstration). Research wireless communication (radio, WiFi, cellular). Design and build a communication device that uses waves. Present and compare designs.

DIFFERENTIATION:
Struggling learners: Focus on simple wave communication (sound signals), build basic devices, work in groups. Advanced learners: Research digital encoding, investigate fiber optics, design complex communication systems.

VOCABULARY:
Communication, information, encode, transmit, receive, signal, pattern, radio wave, fiber optics, wireless.

CONNECTION TO FUTURE LEARNING:
Understanding waves in communication prepares students for studying telecommunications, computer science, and physics in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Waves in Communication' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: EARTH''S CHANGING SURFACE
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Weathering' AND grade_level_min = 4),
  'Weathering Topic Guide', 'Learn how rock breaks down through weathering',
  'WEATHERING - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have basic knowledge of rocks and minerals. Understanding that Earth''s surface changes. Vocabulary for describing rock properties.

LEARNING OBJECTIVES:
- Define weathering as the breakdown of rock
- Distinguish physical/mechanical weathering from chemical weathering
- Identify agents of weathering (water, ice, wind, plants, chemicals)
- Explain how weathering creates soil

KEY CONCEPTS:
1) Weathering breaks rock into smaller pieces without moving them
2) Physical weathering breaks rock without changing its composition
3) Chemical weathering changes the rock''s chemical makeup
4) Water is a major weathering agent (freezing, flowing, dissolving)
5) Plants contribute through root growth
6) Weathering produces sediments that become soil

COMMON MISCONCEPTIONS:
- Confusing weathering with erosion (weathering breaks, erosion moves)
- Thinking weathering only happens in certain places
- Believing chemical weathering is only from pollution
- Assuming weathering happens quickly

TEACHING SEQUENCE:
Examine weathered rocks and compare to fresh rocks. Demonstrate freeze-thaw weathering with water in sealed bottles. Explore chemical weathering with vinegar and chalk. Investigate root weathering effects. Compare weathering rates on different rock types. Connect weathering to soil formation.

DIFFERENTIATION:
Struggling learners: Focus on observable weathering effects, simple demonstrations, local examples. Advanced learners: Design weathering rate experiments, investigate climate effects on weathering, research cave formation.

VOCABULARY:
Weathering, physical, chemical, mechanical, breakdown, fragment, freeze-thaw, dissolve, sediment, soil.

CONNECTION TO FUTURE LEARNING:
Understanding weathering prepares students for studying rock cycles, soil science, and geological processes in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Weathering' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Erosion and Deposition' AND grade_level_min = 4),
  'Erosion and Deposition Topic Guide', 'Understand how water, wind, and ice move sediment',
  'EROSION AND DEPOSITION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand weathering. Basic knowledge of landforms. Experience observing natural landscapes.

LEARNING OBJECTIVES:
- Define erosion as the movement of weathered material
- Identify agents of erosion (water, wind, ice, gravity)
- Understand deposition as the dropping of sediment
- Explain how erosion and deposition shape landforms

KEY CONCEPTS:
1) Erosion moves weathered rock and soil from one place to another
2) Water erosion creates valleys, canyons, and changes coastlines
3) Wind erosion shapes deserts and carries dust long distances
4) Glacial erosion carves dramatic mountain landscapes
5) Gravity moves material downhill (landslides, rockfalls)
6) Deposition occurs when the agent slows—creates deltas, dunes, moraines

COMMON MISCONCEPTIONS:
- Confusing erosion with weathering
- Thinking erosion only affects mountains
- Believing human activities don''t affect erosion
- Not understanding that sediment must go somewhere (deposition)

TEACHING SEQUENCE:
Model erosion with stream tables. Compare erosion by different agents. Investigate factors affecting erosion rate (slope, vegetation, water flow). Explore where sediment is deposited. Connect to real landforms: Grand Canyon, river deltas, sand dunes. Investigate human effects on erosion.

DIFFERENTIATION:
Struggling learners: Use stream table demonstrations, focus on water erosion, clear before/after comparisons. Advanced learners: Calculate erosion rates, investigate prevention methods, research geological features.

VOCABULARY:
Erosion, deposition, sediment, transport, agent, valley, delta, dune, moraine, landslide, glacier.

CONNECTION TO FUTURE LEARNING:
Understanding erosion and deposition prepares students for studying landforms, geological time, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Erosion and Deposition' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Rock Cycle' AND grade_level_min = 4),
  'The Rock Cycle Topic Guide', 'Trace how rocks transform over time',
  'THE ROCK CYCLE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand weathering, erosion, and deposition. Basic knowledge of rock types. Vocabulary for describing rock characteristics.

LEARNING OBJECTIVES:
- Identify three types of rock: igneous, sedimentary, metamorphic
- Explain how each rock type forms
- Describe how rocks change from one type to another
- Understand the rock cycle as a continuous process

KEY CONCEPTS:
1) Igneous rocks form when molten rock (magma/lava) cools
2) Sedimentary rocks form from compressed and cemented sediments
3) Metamorphic rocks form when existing rocks are changed by heat and pressure
4) The rock cycle shows how rocks transform over millions of years
5) Rocks can change into any other type, not just in sequence
6) The rock cycle is powered by Earth''s internal heat and solar energy

COMMON MISCONCEPTIONS:
- Thinking the rock cycle follows a single path
- Believing rock changes happen quickly
- Confusing how different rock types form
- Thinking rocks we see will never change

TEACHING SEQUENCE:
Examine samples of igneous, sedimentary, and metamorphic rocks. Investigate how each forms. Model sedimentary rock formation with layers. Discuss metamorphism with pressure and heat. Create rock cycle diagrams showing multiple pathways. Trace a hypothetical rock through the cycle. Connect to real geological features.

DIFFERENTIATION:
Struggling learners: Focus on one rock type at a time, use hands-on samples, simplified cycle diagrams. Advanced learners: Research specific rock examples, investigate time scales, explore plate tectonics connection.

VOCABULARY:
Rock cycle, igneous, sedimentary, metamorphic, magma, lava, sediment, compress, cement, transform, pressure, heat.

CONNECTION TO FUTURE LEARNING:
Understanding the rock cycle prepares students for studying geology, plate tectonics, and Earth history in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Rock Cycle' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Natural Hazards' AND grade_level_min = 4),
  'Natural Hazards Topic Guide', 'Study earthquakes, volcanoes, and floods',
  'NATURAL HAZARDS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand Earth''s surface processes. Basic knowledge of weather patterns. Vocabulary for describing geological events.

LEARNING OBJECTIVES:
- Identify natural hazards (earthquakes, volcanoes, floods, landslides)
- Understand causes of different natural hazards
- Explain how natural hazards affect people and environments
- Investigate how hazards can be predicted and mitigated

KEY CONCEPTS:
1) Natural hazards are natural events that can harm people or property
2) Earthquakes result from sudden movement along faults
3) Volcanoes erupt when magma reaches the surface
4) Floods occur when water overflows normal boundaries
5) Landslides happen when gravity moves earth materials downhill
6) Science helps predict hazards and develop safety measures

COMMON MISCONCEPTIONS:
- Thinking natural hazards are completely unpredictable
- Believing hazards only occur in certain places
- Confusing hazard frequency with intensity
- Thinking we can prevent all natural hazards

TEACHING SEQUENCE:
Research local natural hazard risks. Study causes of different hazards. Investigate prediction methods (seismographs, volcano monitoring). Explore safety measures and emergency preparedness. Model hazards with hands-on demonstrations. Compare hazard impacts in different areas. Design solutions to reduce hazard effects.

DIFFERENTIATION:
Struggling learners: Focus on local hazards, clear cause-effect explanations, practical safety information. Advanced learners: Analyze historical events, investigate prediction technology, design mitigation systems.

VOCABULARY:
Natural hazard, earthquake, volcano, flood, landslide, fault, magma, predict, mitigate, emergency, preparedness.

CONNECTION TO FUTURE LEARNING:
Understanding natural hazards prepares students for studying plate tectonics, engineering design, and earth science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Natural Hazards' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Fossils' AND grade_level_min = 4),
  'Fossils Topic Guide', 'Learn how fossils form and what they tell us',
  'FOSSILS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand the rock cycle, especially sedimentary rock formation. Basic concepts of living things. Vocabulary for describing organisms.

LEARNING OBJECTIVES:
- Understand what fossils are and how they form
- Identify different types of fossils (body, trace, mold, cast)
- Explain how fossils provide evidence of past life
- Connect fossil evidence to Earth''s history

KEY CONCEPTS:
1) Fossils are preserved remains or traces of ancient organisms
2) Most fossils form in sedimentary rock
3) Fossilization requires specific conditions (rapid burial, lack of decay)
4) Body fossils preserve actual organism parts
5) Trace fossils preserve evidence of activity (footprints, burrows)
6) Fossils tell us about past life, environments, and climate

COMMON MISCONCEPTIONS:
- Thinking any old organism becomes a fossil
- Believing fossils are only dinosaur bones
- Confusing fossils with rocks
- Thinking fossil formation is quick

TEACHING SEQUENCE:
Examine fossil samples or replicas. Model fossilization process with plaster molds. Investigate conditions needed for fossil formation. Classify fossils by type. Research what specific fossils tell us about the past. Connect fossils to geological time. Discuss paleontology as a career.

DIFFERENTIATION:
Struggling learners: Focus on recognizable fossils, hands-on molding activities, simple classification. Advanced learners: Research local fossil sites, investigate dating methods, explore evolutionary connections.

VOCABULARY:
Fossil, preserve, sedimentary, organism, trace, mold, cast, paleontologist, ancient, extinct, evidence.

CONNECTION TO FUTURE LEARNING:
Understanding fossils prepares students for studying evolution, geological time, and Earth history in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fossils' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: STRUCTURE AND FUNCTION
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Body Systems' AND grade_level_min = 4),
  'Body Systems Topic Guide', 'Learn how organ systems work together',
  'BODY SYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have basic knowledge of body organs. Understanding of organism needs. Vocabulary for describing body functions.

LEARNING OBJECTIVES:
- Identify major body systems (digestive, circulatory, respiratory, muscular, skeletal, nervous)
- Describe the function of each system
- Explain how systems work together
- Understand that structure enables function

KEY CONCEPTS:
1) Body systems are groups of organs working together for a function
2) Digestive system breaks down food into nutrients
3) Circulatory system transports blood, oxygen, and nutrients
4) Respiratory system takes in oxygen and removes carbon dioxide
5) Muscular and skeletal systems enable movement and provide structure
6) Nervous system controls and coordinates body activities
7) Systems interact—they cannot function independently

COMMON MISCONCEPTIONS:
- Thinking systems work independently
- Believing the heart or brain controls everything alone
- Confusing different systems'' functions
- Thinking body systems are separate from each other

TEACHING SEQUENCE:
Investigate one system at a time: structure and function. Use models and diagrams. Explore how systems connect (digestion provides nutrients, circulation delivers them). Create body system maps showing interactions. Model system failures and how they affect other systems. Connect to health and nutrition.

DIFFERENTIATION:
Struggling learners: Focus on three main systems, use visual models, simple function descriptions. Advanced learners: Investigate system disorders, explore feedback mechanisms, research medical applications.

VOCABULARY:
System, organ, function, digestive, circulatory, respiratory, muscular, skeletal, nervous, interact, nutrient.

CONNECTION TO FUTURE LEARNING:
Understanding body systems prepares students for studying physiology, health science, and biology in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Body Systems' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Plant Structures' AND grade_level_min = 4),
  'Plant Structures Topic Guide', 'Understand how plant parts help survival',
  'PLANT STRUCTURES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should know basic plant parts from earlier grades. Understanding of plant needs. Observation skills for detailed examination.

LEARNING OBJECTIVES:
- Identify plant structures beyond basic parts (vascular tissue, stomata, root hairs)
- Explain how structure relates to function
- Compare structures across different plant types
- Understand how structures help plants survive

KEY CONCEPTS:
1) Plant structures are adapted to specific functions
2) Roots anchor plants and absorb water through root hairs
3) Stems transport materials through vascular tissue (xylem and phloem)
4) Leaves have stomata for gas exchange
5) Flowers have structures for reproduction (stamens, pistils)
6) Different environments require different structural adaptations

COMMON MISCONCEPTIONS:
- Thinking all plant parts are identical across species
- Believing water transport is passive only
- Confusing structure with function
- Not recognizing specialized adaptations

TEACHING SEQUENCE:
Examine plant structures with magnification. Investigate vascular tissue with celery dye experiment. Observe stomata under microscopes or models. Compare structures across different plants. Connect structures to environments (desert plants have thick leaves, aquatic plants have air pockets). Design experiments testing structure function.

DIFFERENTIATION:
Struggling learners: Focus on visible structures, hands-on observation, simple function connections. Advanced learners: Investigate cellular structures, research unusual plant adaptations, explore plant hormones.

VOCABULARY:
Structure, function, vascular, xylem, phloem, stomata, root hair, adaptation, transport, absorb, reproduce.

CONNECTION TO FUTURE LEARNING:
Understanding plant structures prepares students for studying plant biology, ecology, and agriculture in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Plant Structures' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Animal Adaptations' AND grade_level_min = 4),
  'Animal Adaptations Topic Guide', 'Study structures that help animals survive',
  'ANIMAL ADAPTATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand basic animal body parts. Knowledge of habitats and animal needs. Vocabulary for describing animal features.

LEARNING OBJECTIVES:
- Identify structural adaptations in various animals
- Explain how each adaptation helps survival
- Compare adaptations in different environments
- Connect structure to function in animal bodies

KEY CONCEPTS:
1) Adaptations are structures or behaviors that help survival
2) Structural adaptations include body coverings, appendages, senses
3) Each adaptation solves a survival problem (getting food, avoiding predators, staying warm)
4) Similar problems can have different structural solutions
5) Closely related animals may have very different adaptations
6) Adaptations develop over many generations

COMMON MISCONCEPTIONS:
- Thinking animals choose their adaptations
- Believing adaptations develop within one lifetime
- Confusing learned behaviors with structural adaptations
- Assuming all traits are adaptive

TEACHING SEQUENCE:
Survey animal adaptations: beaks, feet, camouflage, body coverings. Match adaptations to environments and survival needs. Compare different animals that solve the same problem differently. Investigate how adaptations work (owl hearing, chameleon eyes). Research unusual adaptations. Design imaginary animals with appropriate adaptations.

DIFFERENTIATION:
Struggling learners: Focus on obvious adaptations, use clear environment-adaptation connections, visual comparisons. Advanced learners: Research adaptation evolution, investigate trade-offs, explore convergent evolution.

VOCABULARY:
Adaptation, structure, survive, camouflage, predator, prey, appendage, covering, environment, function.

CONNECTION TO FUTURE LEARNING:
Understanding animal adaptations prepares students for studying evolution, ecology, and comparative biology in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Animal Adaptations' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Biomimicry' AND grade_level_min = 4),
  'Biomimicry Topic Guide', 'Design solutions inspired by nature',
  'BIOMIMICRY - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand plant and animal adaptations. Basic engineering design concepts. Experience with problem-solving.

LEARNING OBJECTIVES:
- Understand that nature provides solutions to human problems
- Identify examples of biomimicry in technology
- Analyze natural structures for engineering inspiration
- Design solutions based on natural models

KEY CONCEPTS:
1) Biomimicry means copying nature''s designs to solve human problems
2) Nature has been "engineering" solutions for millions of years
3) Examples include Velcro (burrs), swimsuits (shark skin), bullet trains (kingfisher beak)
4) Engineers study nature to improve designs
5) Natural solutions are often efficient and sustainable
6) Biomimicry connects biology to engineering

COMMON MISCONCEPTIONS:
- Thinking biomimicry just copies nature exactly
- Believing only high-tech solutions use biomimicry
- Not recognizing that ancient technologies also used nature
- Assuming natural is always better (it''s about learning, not copying exactly)

TEACHING SEQUENCE:
Research famous biomimicry examples. Analyze how the natural solution works. Identify a problem and search nature for inspiration. Design a biomimicry-inspired solution. Build prototypes and test. Present designs explaining the natural model. Discuss why nature''s solutions often work well.

DIFFERENTIATION:
Struggling learners: Focus on clear examples, guided design challenges, work in groups. Advanced learners: Research cutting-edge biomimicry, design for complex problems, investigate material science applications.

VOCABULARY:
Biomimicry, design, nature, inspire, model, engineer, solution, prototype, sustainable, efficient, innovation.

CONNECTION TO FUTURE LEARNING:
Understanding biomimicry prepares students for engineering design, environmental science, and biotechnology in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Biomimicry' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;
