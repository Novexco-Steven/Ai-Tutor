-- Grade 5 Science Topic Prompts
-- Comprehensive teaching guides for each topic

-- =====================================================
-- UNIT: MATTER AND ITS INTERACTIONS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Particle Model of Matter' AND grade_level_min = 5),
  'Particle Model of Matter Topic Guide', 'Understand matter is made of tiny particles',
  'PARTICLE MODEL OF MATTER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand states of matter and their properties. Basic observation skills. Vocabulary for describing matter.

LEARNING OBJECTIVES:
- Understand that all matter is made of tiny particles too small to see
- Explain states of matter using particle movement
- Model particle behavior in solids, liquids, and gases
- Connect observable properties to particle behavior

KEY CONCEPTS:
1) All matter is made of extremely small particles (atoms/molecules)
2) Particles are constantly moving—faster when warmer
3) In solids, particles vibrate in fixed positions
4) In liquids, particles slide past each other
5) In gases, particles move freely in all directions
6) Particle spacing and movement explain state properties

COMMON MISCONCEPTIONS:
- Thinking particles are visible
- Believing particles stop moving in solids
- Confusing particles with visible grains
- Thinking particles change in state changes (only arrangement changes)

TEACHING SEQUENCE:
Introduce the idea of tiny particles through indirect evidence (smell travels, dissolving). Use models to represent particle arrangement in each state. Simulate particle motion with student movement activities. Explain how heating increases particle motion. Connect to observable properties: why gases expand, liquids pour, solids hold shape.

DIFFERENTIATION:
Struggling learners: Use physical models extensively, focus on one state at a time, relate to familiar experiences. Advanced learners: Explore atomic structure, investigate particle size, research Brownian motion.

VOCABULARY:
Particle, atom, molecule, model, motion, vibrate, solid, liquid, gas, arrange, spacing, energy.

CONNECTION TO FUTURE LEARNING:
Understanding the particle model prepares students for chemistry, atomic theory, and physics in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Particle Model of Matter' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Properties of Matter' AND grade_level_min = 5),
  'Properties of Matter Topic Guide', 'Identify matter by properties like density and solubility',
  'PROPERTIES OF MATTER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand the particle model of matter. Basic measurement skills. Experience describing physical properties.

LEARNING OBJECTIVES:
- Measure and describe physical properties of matter
- Calculate density from mass and volume
- Test solubility of different substances
- Use properties to identify unknown substances

KEY CONCEPTS:
1) Physical properties can be observed without changing the substance
2) Density is mass per unit volume (d = m/v)
3) Density determines if objects sink or float
4) Solubility is how much dissolves in a solvent
5) Melting and boiling points are characteristic properties
6) Properties help identify unknown substances

COMMON MISCONCEPTIONS:
- Confusing density with weight or size
- Thinking heavy things always sink
- Believing solubility means disappearing
- Confusing physical with chemical properties

TEACHING SEQUENCE:
Measure mass and volume of various objects. Calculate and compare densities. Test sinking/floating predictions. Investigate solubility with different substances and temperatures. Research melting/boiling points. Use properties as clues to identify mystery substances. Connect to real-world applications (ship design, cooking).

DIFFERENTIATION:
Struggling learners: Focus on observable properties first, hands-on measurement, structured data collection. Advanced learners: Investigate unusual density behaviors (ice), research property-based separation techniques, explore intensive vs extensive properties.

VOCABULARY:
Property, density, mass, volume, solubility, dissolve, melt, boil, identify, measure, characteristic.

CONNECTION TO FUTURE LEARNING:
Understanding matter properties prepares students for chemistry, materials science, and engineering in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties of Matter' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Physical Changes' AND grade_level_min = 5),
  'Physical Changes Topic Guide', 'Explore changes that don''t create new substances',
  'PHYSICAL CHANGES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand properties of matter and the particle model. Experience with state changes. Vocabulary for describing changes.

LEARNING OBJECTIVES:
- Define physical changes as changes that don''t create new substances
- Identify examples of physical changes
- Explain physical changes using the particle model
- Distinguish physical changes from chemical changes

KEY CONCEPTS:
1) Physical changes alter form or state but not chemical composition
2) State changes (melting, freezing, evaporating) are physical changes
3) Cutting, crushing, dissolving are physical changes
4) Physical changes are often reversible
5) Particles stay the same—only their arrangement or energy changes
6) Properties of the substance remain the same after physical change

COMMON MISCONCEPTIONS:
- Thinking dissolving is a chemical change (usually physical)
- Believing all changes that look dramatic are chemical
- Assuming all physical changes are reversible
- Confusing phase changes with chemical reactions

TEACHING SEQUENCE:
Demonstrate various physical changes: melting ice, dissolving salt, cutting paper, mixing substances. Compare before and after—is it still the same substance? Explain each using particle model. Discuss reversibility. Contrast with chemical changes. Design experiments to classify unknown changes.

DIFFERENTIATION:
Struggling learners: Focus on clear examples, use reversibility as key criterion, hands-on exploration. Advanced learners: Investigate subtle cases, explore solutions vs mixtures, research separation techniques.

VOCABULARY:
Physical change, state change, reversible, dissolve, melt, freeze, evaporate, condense, composition, arrange.

CONNECTION TO FUTURE LEARNING:
Understanding physical changes prepares students for distinguishing chemical changes and studying chemistry in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Physical Changes' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Chemical Changes' AND grade_level_min = 5),
  'Chemical Changes Topic Guide', 'Investigate changes that create new substances',
  'CHEMICAL CHANGES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand physical changes and properties of matter. Basic observation skills. Understanding of the particle model.

LEARNING OBJECTIVES:
- Define chemical changes as changes that create new substances
- Identify evidence of chemical changes
- Explain that chemical changes rearrange atoms into new molecules
- Distinguish chemical from physical changes

KEY CONCEPTS:
1) Chemical changes produce new substances with different properties
2) Evidence of chemical change: color change, gas production, precipitate, energy release/absorption
3) Chemical changes rearrange atoms into new molecules
4) Chemical changes are often difficult or impossible to reverse
5) Examples: burning, rusting, cooking, digestion
6) The same atoms are present before and after—just rearranged

COMMON MISCONCEPTIONS:
- Thinking any color change is chemical (not always)
- Believing chemical changes destroy atoms
- Confusing dramatic physical changes with chemical changes
- Thinking all chemical changes are permanent

TEACHING SEQUENCE:
Demonstrate chemical changes: baking soda + vinegar, rusty nail, burning paper. Identify evidence. Compare to physical changes. Discuss irreversibility. Investigate what happens to atoms (rearrangement, not destruction). Connect to everyday chemistry: cooking, cleaning, batteries. Classify unknown changes using evidence.

DIFFERENTIATION:
Struggling learners: Focus on clear examples with obvious evidence, use observation guides, compare directly to physical changes. Advanced learners: Write simple chemical equations, investigate reaction types, explore catalysts.

VOCABULARY:
Chemical change, reaction, evidence, produce, gas, precipitate, rearrange, atoms, molecules, irreversible.

CONNECTION TO FUTURE LEARNING:
Understanding chemical changes prepares students for chemistry, equations, and understanding reactions in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Chemical Changes' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Conservation of Matter' AND grade_level_min = 5),
  'Conservation of Matter Topic Guide', 'Learn that matter is conserved in reactions',
  'CONSERVATION OF MATTER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand chemical and physical changes. Basic measurement skills. Understanding that matter is made of particles.

LEARNING OBJECTIVES:
- Understand that matter is neither created nor destroyed
- Measure mass before and after changes to verify conservation
- Explain apparent mass changes (gases escaping, gases absorbed)
- Apply conservation to closed system experiments

KEY CONCEPTS:
1) Law of Conservation of Mass: total mass stays the same in any change
2) Atoms are rearranged but never created or destroyed
3) If mass seems to change, matter entered or left the system
4) Closed systems show conservation clearly
5) Burning seems to destroy but actually produces gases
6) This law applies to all physical and chemical changes

COMMON MISCONCEPTIONS:
- Thinking mass is lost when things burn
- Believing chemical reactions create or destroy atoms
- Confusing mass with weight
- Not accounting for gases in mass measurements

TEACHING SEQUENCE:
Measure mass before and after physical changes (crushing, dissolving in closed container). Measure chemical reactions in closed containers. Investigate why open-system reactions seem to lose/gain mass. Discuss where "missing" mass goes (gases escape). Connect to atomic rearrangement without atom loss. Explore historical development of this law.

DIFFERENTIATION:
Struggling learners: Focus on closed-system demonstrations, careful measurement procedures, clear before/after comparisons. Advanced learners: Investigate nuclear reactions (where mass-energy conversion occurs), research historical experiments, design verification experiments.

VOCABULARY:
Conservation, mass, closed system, open system, reaction, atom, law, measure, total, unchanged.

CONNECTION TO FUTURE LEARNING:
Understanding conservation of matter prepares students for balancing equations and studying chemistry in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Conservation of Matter' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: EARTH''S SYSTEMS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Earth''s Spheres' AND grade_level_min = 5),
  'Earth''s Spheres Topic Guide', 'Learn about hydrosphere, atmosphere, geosphere, biosphere',
  'EARTH''S SPHERES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand basic Earth science concepts. Knowledge of living and nonliving things. Vocabulary for describing Earth features.

LEARNING OBJECTIVES:
- Identify Earth''s four main spheres
- Describe what each sphere includes
- Explain how spheres interact with each other
- Provide examples of sphere interactions

KEY CONCEPTS:
1) Geosphere: solid Earth (rocks, soil, landforms)
2) Hydrosphere: all water (oceans, lakes, rivers, groundwater, ice)
3) Atmosphere: layer of gases surrounding Earth
4) Biosphere: all living things
5) The spheres constantly interact
6) Energy and matter cycle between spheres

COMMON MISCONCEPTIONS:
- Thinking spheres are separate layers
- Believing each sphere is isolated
- Forgetting that biosphere overlaps all others
- Confusing sphere boundaries (they overlap)

TEACHING SEQUENCE:
Define each sphere with examples. Create diagrams showing sphere overlaps. Identify where living things interact with other spheres. Trace water moving through all spheres. Analyze how events in one sphere affect others. Investigate local examples of sphere interactions.

DIFFERENTIATION:
Struggling learners: Focus on clear examples of each sphere, visual diagrams, one interaction at a time. Advanced learners: Research carbon cycle through spheres, investigate feedback loops, explore anthroposphere concept.

VOCABULARY:
Sphere, geosphere, hydrosphere, atmosphere, biosphere, interact, cycle, system, layer, environment.

CONNECTION TO FUTURE LEARNING:
Understanding Earth''s spheres prepares students for studying biogeochemical cycles, climate science, and Earth systems in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Earth''s Spheres' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Water Cycle' AND grade_level_min = 5),
  'The Water Cycle Topic Guide', 'Model how water moves through Earth''s systems',
  'THE WATER CYCLE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand Earth''s spheres. Knowledge of states of matter. Experience with evaporation and condensation.

LEARNING OBJECTIVES:
- Describe the processes of the water cycle
- Explain how water moves between Earth''s spheres
- Model the water cycle
- Understand that the same water has cycled for billions of years

KEY CONCEPTS:
1) Water cycles continuously through evaporation, condensation, precipitation
2) The sun drives the water cycle
3) Evaporation: liquid water becomes water vapor (hydrosphere → atmosphere)
4) Condensation: water vapor becomes liquid (forms clouds)
5) Precipitation: water falls as rain, snow, sleet, hail
6) Water moves through all spheres: ocean, atmosphere, land, living things

COMMON MISCONCEPTIONS:
- Thinking water is created or destroyed in the cycle
- Believing clouds are water vapor (they''re tiny droplets)
- Forgetting groundwater and glacier storage
- Thinking the cycle only involves oceans

TEACHING SEQUENCE:
Demonstrate evaporation and condensation. Model the water cycle in a sealed container. Trace water through all spheres. Discuss time scales (some water cycles quickly, some takes millennia). Investigate groundwater and glacial storage. Connect to weather and climate. Explore how human activities affect the water cycle.

DIFFERENTIATION:
Struggling learners: Focus on main processes, use visual cycle diagrams, hands-on water cycle models. Advanced learners: Research residence times in different reservoirs, investigate climate change effects, explore transpiration.

VOCABULARY:
Water cycle, evaporation, condensation, precipitation, transpiration, groundwater, runoff, vapor, cloud.

CONNECTION TO FUTURE LEARNING:
Understanding the water cycle prepares students for climate science, weather patterns, and ecology in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Water Cycle' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Interactions Between Systems' AND grade_level_min = 5),
  'Interactions Between Systems Topic Guide', 'Study how Earth''s systems affect each other',
  'INTERACTIONS BETWEEN SYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand Earth''s spheres and the water cycle. Basic knowledge of ecosystems. Ability to identify cause and effect.

LEARNING OBJECTIVES:
- Identify interactions between Earth''s spheres
- Explain cause and effect in sphere interactions
- Analyze how changes in one sphere affect others
- Model complex system interactions

KEY CONCEPTS:
1) Earth''s spheres constantly interact and influence each other
2) Volcanic eruptions affect atmosphere, biosphere, hydrosphere
3) Living things affect atmosphere (oxygen production, carbon dioxide)
4) Ocean-atmosphere interactions affect climate
5) Weathering and erosion involve all spheres
6) Energy and matter flow between spheres continuously

COMMON MISCONCEPTIONS:
- Thinking spheres are independent systems
- Underestimating connection complexity
- Believing effects are always immediate
- Forgetting feedback loops

TEACHING SEQUENCE:
Analyze specific events and trace effects through spheres. Example: volcano erupts → ash in atmosphere → blocks sunlight → affects biosphere → changes hydrosphere temperature. Create interaction diagrams. Investigate local examples. Model how pollutants move through spheres. Research natural cycles (carbon, nitrogen).

DIFFERENTIATION:
Struggling learners: Focus on simple cause-effect chains, use flow charts, clear examples. Advanced learners: Analyze feedback loops, model cascading effects, research system modeling.

VOCABULARY:
Interaction, system, affect, influence, cycle, feedback, connection, cause, effect, flow, energy, matter.

CONNECTION TO FUTURE LEARNING:
Understanding system interactions prepares students for Earth science, ecology, and climate science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Interactions Between Systems' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Human Impact' AND grade_level_min = 5),
  'Human Impact Topic Guide', 'Analyze how people affect Earth''s systems',
  'HUMAN IMPACT ON EARTH''S SYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand Earth''s spheres and system interactions. Basic knowledge of pollution and environmental issues. Ability to analyze cause and effect.

LEARNING OBJECTIVES:
- Identify ways humans affect each Earth sphere
- Analyze positive and negative human impacts
- Explain how human actions cascade through systems
- Propose solutions to reduce negative impacts

KEY CONCEPTS:
1) Humans significantly affect all Earth spheres
2) Burning fossil fuels adds CO2 to atmosphere (climate change)
3) Deforestation affects biosphere and atmosphere
4) Pollution affects hydrosphere, biosphere, geosphere
5) Resource extraction changes geosphere
6) Some impacts are reversible; others are not
7) Human actions can also restore or protect systems

COMMON MISCONCEPTIONS:
- Thinking individual actions don''t matter
- Believing technology will solve all problems
- Underestimating impact accumulation
- Thinking only industrial activities cause harm

TEACHING SEQUENCE:
Investigate specific human activities and trace effects through spheres. Analyze local environmental issues. Research global challenges (climate change, deforestation, plastic pollution). Evaluate solutions at different scales (individual, community, global). Design and advocate for sustainable practices. Connect to careers in environmental science.

DIFFERENTIATION:
Struggling learners: Focus on local examples, clear cause-effect relationships, simple solution proposals. Advanced learners: Analyze complex trade-offs, research policy solutions, investigate technology innovations.

VOCABULARY:
Impact, pollution, climate change, deforestation, sustainable, resource, conservation, ecosystem, solution.

CONNECTION TO FUTURE LEARNING:
Understanding human impact prepares students for environmental science, policy, and sustainability studies in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Human Impact' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: SPACE SYSTEMS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Day and Night' AND grade_level_min = 5),
  'Day and Night Topic Guide', 'Understand Earth''s rotation causes day and night',
  'DAY AND NIGHT - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand basic Earth concepts. Experience with day/night patterns. Vocabulary for describing motion.

LEARNING OBJECTIVES:
- Explain that Earth''s rotation causes day and night
- Model Earth''s rotation using globes and light sources
- Understand that one rotation takes approximately 24 hours
- Explain why different places experience day and night at different times

KEY CONCEPTS:
1) Earth rotates (spins) on its axis once every 24 hours
2) The side facing the sun experiences day
3) The opposite side experiences night
4) This rotation, not the sun moving, causes day/night
5) Different locations experience day and night at different times
6) Time zones account for this difference

COMMON MISCONCEPTIONS:
- Thinking the sun moves around Earth
- Believing it''s day/night everywhere simultaneously
- Confusing rotation with revolution
- Not understanding why rotation appears like sun moving

TEACHING SEQUENCE:
Model day/night with globe and flashlight—rotate the globe, not move the light. Discuss why it looks like the sun moves. Explore time zones—when it''s day here, it''s night elsewhere. Investigate how ancient people explained day/night. Connect to personal experience of sunrise and sunset. Model perspective from space.

DIFFERENTIATION:
Struggling learners: Focus on globe demonstrations, simple rotation concept, personal experience connection. Advanced learners: Investigate time zone calculations, explore polar day/night variations, research historical astronomical understanding.

VOCABULARY:
Rotation, axis, day, night, Earth, spin, facing, opposite, time zone, 24 hours, sun.

CONNECTION TO FUTURE LEARNING:
Understanding day and night prepares students for studying Earth''s motion, time, and astronomy in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Day and Night' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Moon Phases' AND grade_level_min = 5),
  'Moon Phases Topic Guide', 'Explain the changing appearance of the moon',
  'MOON PHASES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand day and night. Basic knowledge that the moon orbits Earth. Experience observing the moon.

LEARNING OBJECTIVES:
- Explain why the moon appears to change shape
- Name and identify the eight moon phases
- Model the Earth-Moon-Sun system
- Predict moon phases based on position

KEY CONCEPTS:
1) The moon reflects sunlight—it doesn''t produce its own light
2) The moon orbits Earth approximately every 29.5 days
3) We see different amounts of the lit side as the moon orbits
4) Phases: new, waxing crescent, first quarter, waxing gibbous, full, waning gibbous, third quarter, waning crescent
5) The same side of the moon always faces Earth
6) Moon phases are predictable and cyclical

COMMON MISCONCEPTIONS:
- Thinking the moon makes its own light
- Believing Earth''s shadow causes phases (that''s eclipses)
- Confusing phases with moon rising/setting times
- Thinking the moon changes shape physically

TEACHING SEQUENCE:
Model phases with a ball and light source—view from different angles. Identify which part is lit vs which we see. Track actual moon phases over a month. Learn phase names and sequence. Predict upcoming phases. Discuss why phases matter (tides, cultural calendars). Compare to lunar eclipses (different cause).

DIFFERENTIATION:
Struggling learners: Focus on major phases (new, quarter, full), use clear models, track real moon. Advanced learners: Research lunar orbit details, investigate tides, explore why we only see one side.

VOCABULARY:
Phase, orbit, reflect, waxing, waning, crescent, gibbous, quarter, full moon, new moon, cycle.

CONNECTION TO FUTURE LEARNING:
Understanding moon phases prepares students for studying orbits, tides, and astronomy in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Moon Phases' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Earth''s Seasons' AND grade_level_min = 5),
  'Earth''s Seasons Topic Guide', 'Learn how Earth''s tilt causes seasons',
  'EARTH''S SEASONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand day and night and Earth''s rotation. Basic knowledge of seasonal differences. Understanding that Earth orbits the sun.

LEARNING OBJECTIVES:
- Explain that Earth''s tilted axis causes seasons
- Model how tilt affects sunlight distribution
- Understand why seasons are opposite in hemispheres
- Connect tilt to daylight hours and temperature

KEY CONCEPTS:
1) Earth''s axis is tilted 23.5 degrees from vertical
2) This tilt stays pointed in the same direction as Earth orbits
3) When Northern Hemisphere tilts toward sun: longer days, more direct sunlight = summer
4) When tilting away: shorter days, less direct sunlight = winter
5) Seasons are opposite in Northern and Southern Hemispheres
6) Distance from sun doesn''t cause seasons (Earth is actually closer in January)

COMMON MISCONCEPTIONS:
- Thinking seasons are caused by distance from the sun
- Believing the whole Earth has the same season
- Confusing rotation with revolution
- Not understanding how tilt affects sunlight intensity

TEACHING SEQUENCE:
Model Earth''s orbit with a tilted globe around a light. Observe how different parts receive more direct light at different positions. Explain why direct light is more intense. Connect to daylight hours and temperature. Compare hemispheres. Investigate solstices and equinoxes. Discuss why distance doesn''t explain seasons.

DIFFERENTIATION:
Struggling learners: Focus on summer/winter contrast, use clear models, connect to personal experience. Advanced learners: Calculate angle of sunlight at different latitudes, research equatorial climate, explore other planets'' seasons.

VOCABULARY:
Season, tilt, axis, orbit, hemisphere, direct sunlight, angle, solstice, equinox, revolution.

CONNECTION TO FUTURE LEARNING:
Understanding seasons prepares students for studying climate, astronomy, and Earth science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Earth''s Seasons' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Solar System' AND grade_level_min = 5),
  'The Solar System Topic Guide', 'Explore the sun, planets, and other objects',
  'THE SOLAR SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand Earth''s motion (rotation and revolution). Basic knowledge of the sun. Vocabulary for describing space objects.

LEARNING OBJECTIVES:
- Identify the sun as the center of our solar system
- Name and describe the eight planets
- Explain how planets orbit the sun
- Distinguish planets from other solar system objects

KEY CONCEPTS:
1) The solar system includes the sun, planets, moons, asteroids, and comets
2) Eight planets orbit the sun: Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
3) Inner planets (rocky) differ from outer planets (gas giants)
4) Planets orbit the sun in roughly the same plane
5) Moons orbit planets; asteroids and comets orbit the sun
6) Scale of the solar system is enormous

COMMON MISCONCEPTIONS:
- Thinking planets are close together (vast distances)
- Believing Pluto is a planet (dwarf planet)
- Underestimating scale differences
- Thinking all planets are similar

TEACHING SEQUENCE:
Create scale models of the solar system (size and distance). Compare planet characteristics: size, composition, distance, moons. Investigate why some planets have rings or many moons. Explore asteroid belt and comets. Research planetary missions. Discuss why scientists reclassified Pluto.

DIFFERENTIATION:
Struggling learners: Focus on planet order and basic characteristics, use mnemonics, visual comparisons. Advanced learners: Calculate orbital periods, research specific missions, explore exoplanet discoveries.

VOCABULARY:
Solar system, planet, orbit, inner, outer, rocky, gas giant, moon, asteroid, comet, dwarf planet.

CONNECTION TO FUTURE LEARNING:
Understanding the solar system prepares students for studying astronomy, space science, and physics in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Solar System' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Gravity in Space' AND grade_level_min = 5),
  'Gravity in Space Topic Guide', 'Understand how gravity affects objects in space',
  'GRAVITY IN SPACE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand basic gravity and the solar system. Knowledge of orbits. Vocabulary for describing forces.

LEARNING OBJECTIVES:
- Explain that gravity is a force between all objects with mass
- Understand that gravity keeps planets orbiting the sun
- Explain that gravity keeps moons orbiting planets
- Describe how gravity affects astronauts and spacecraft

KEY CONCEPTS:
1) Gravity is a force of attraction between all objects with mass
2) Larger masses have stronger gravitational pull
3) Gravity decreases with distance
4) Planets orbit because gravity pulls them toward the sun while they move forward
5) "Weightlessness" is really continuous free fall
6) Gravity holds galaxies, solar systems, and planet-moon systems together

COMMON MISCONCEPTIONS:
- Thinking there''s no gravity in space (gravity is everywhere)
- Believing objects float because there''s no gravity (they''re falling)
- Confusing mass with weight
- Thinking gravity only affects large objects

TEACHING SEQUENCE:
Demonstrate orbits: ball on string, simulations. Explain orbit as constant falling while moving forward. Discuss why astronauts appear weightless. Compare gravity on different planets. Explore how spacecraft use gravity (slingshot effect). Investigate how gravity formed the solar system.

DIFFERENTIATION:
Struggling learners: Focus on simple orbit concept, use physical demonstrations, relate to familiar gravity experiences. Advanced learners: Calculate gravity on other planets, research orbital mechanics, explore gravitational waves.

VOCABULARY:
Gravity, force, mass, orbit, attract, weight, weightlessness, free fall, distance, spacecraft.

CONNECTION TO FUTURE LEARNING:
Understanding gravity in space prepares students for physics, astronomy, and space exploration in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Gravity in Space' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: ECOSYSTEMS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Energy in Ecosystems' AND grade_level_min = 5),
  'Energy in Ecosystems Topic Guide', 'Trace energy from the sun through living things',
  'ENERGY IN ECOSYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand food chains and webs. Basic knowledge of producers and consumers. Energy concepts from physical science.

LEARNING OBJECTIVES:
- Trace energy from sun through producers to consumers
- Understand that energy decreases at each trophic level
- Explain why there are more producers than top consumers
- Model energy flow in an ecosystem

KEY CONCEPTS:
1) All energy in most ecosystems comes from the sun
2) Producers convert sunlight to chemical energy (food)
3) Consumers get energy by eating other organisms
4) Only about 10% of energy transfers to the next level
5) Energy is lost as heat at each transfer
6) Energy pyramids show decreasing energy at higher levels

COMMON MISCONCEPTIONS:
- Thinking energy is recycled like matter
- Believing all food energy transfers to the eater
- Not understanding why energy decreases at each level
- Confusing energy flow with matter cycling

TEACHING SEQUENCE:
Trace energy from sunlight through a food chain. Create energy pyramids. Calculate why only 10% transfers. Explain where the 90% goes (heat, movement, life processes). Investigate why ecosystems need constant energy input. Compare to matter, which cycles. Model energy flow with simulations.

DIFFERENTIATION:
Struggling learners: Focus on simple energy paths, visual pyramids, clear examples. Advanced learners: Calculate energy at each level, research ecological efficiency, explore exceptions like deep-sea ecosystems.

VOCABULARY:
Energy, flow, transfer, trophic level, pyramid, producer, consumer, efficiency, heat, sunlight, chemical energy.

CONNECTION TO FUTURE LEARNING:
Understanding energy flow prepares students for ecology, biology, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Energy in Ecosystems' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Food Webs' AND grade_level_min = 5 AND grade_level_max = 5),
  'Food Webs (Grade 5) Topic Guide', 'Model complex feeding relationships',
  'FOOD WEBS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand food chains and energy flow. Knowledge of producers, consumers, and decomposers. Ability to analyze relationships.

LEARNING OBJECTIVES:
- Create complex food web diagrams
- Analyze how changes affect entire food webs
- Identify keystone species
- Understand food web stability and resilience

KEY CONCEPTS:
1) Food webs show interconnected food chains
2) Most organisms are part of multiple food chains
3) Removal of one species affects many others
4) Keystone species have outsized effects on web stability
5) More complex webs are generally more stable
6) Food webs help ecologists understand ecosystems

COMMON MISCONCEPTIONS:
- Thinking simple food webs are accurate
- Believing only apex predators matter
- Underestimating decomposer importance
- Assuming all species are equally important

TEACHING SEQUENCE:
Build complex food webs from multiple food chains. Analyze what happens when species are removed. Identify organisms with many connections. Research keystone species examples. Compare stable vs fragile webs. Model real ecosystem food webs. Investigate how scientists study food webs.

DIFFERENTIATION:
Struggling learners: Start with simple webs, add complexity gradually, use visual connections. Advanced learners: Research specific ecosystem webs, model population dynamics, investigate invasive species effects.

VOCABULARY:
Food web, interconnected, complex, keystone species, stability, resilience, population, ecosystem, relationship.

CONNECTION TO FUTURE LEARNING:
Understanding food webs prepares students for ecology, conservation, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Food Webs' AND grade_level_min = 5 AND grade_level_max = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Matter Cycling' AND grade_level_min = 5),
  'Matter Cycling Topic Guide', 'Understand how matter cycles through ecosystems',
  'MATTER CYCLING - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand energy flow in ecosystems. Basic knowledge of atoms and molecules. Experience with Earth''s spheres.

LEARNING OBJECTIVES:
- Explain that matter cycles through ecosystems
- Trace carbon and nitrogen through living and nonliving systems
- Compare matter cycling to energy flow
- Understand that the same atoms are used repeatedly

KEY CONCEPTS:
1) Matter cycles—it is used repeatedly, not used up
2) Carbon moves through atmosphere, organisms, and geosphere
3) Nitrogen cycles through atmosphere, soil, and organisms
4) Decomposers are essential for returning matter to the cycle
5) Matter can be traced through food chains and back to the environment
6) Unlike energy, matter is not lost—it is recycled

COMMON MISCONCEPTIONS:
- Thinking matter is used up like energy
- Not understanding that atoms are reused
- Confusing matter cycling with energy flow
- Forgetting decomposers'' role in cycles

TEACHING SEQUENCE:
Trace a carbon atom through photosynthesis, eating, decomposition, and back to atmosphere. Compare matter cycling to energy flow (energy flows, matter cycles). Model nitrogen or water cycles. Investigate how decomposition returns matter to soil/atmosphere. Explore how human activities affect cycles.

DIFFERENTIATION:
Struggling learners: Focus on one cycle clearly, use visual diagrams, trace simple paths. Advanced learners: Research carbon cycle and climate change, investigate nitrogen cycle in agriculture, explore other biogeochemical cycles.

VOCABULARY:
Cycle, matter, carbon, nitrogen, decompose, recycle, atom, organism, environment, atmosphere, biosphere.

CONNECTION TO FUTURE LEARNING:
Understanding matter cycling prepares students for chemistry, ecology, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Matter Cycling' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Decomposers' AND grade_level_min = 5),
  'Decomposers Topic Guide', 'Learn the role of decomposers in ecosystems',
  'DECOMPOSERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand food webs and matter cycling. Basic knowledge of fungi and bacteria. Experience with decay in nature.

LEARNING OBJECTIVES:
- Identify organisms that are decomposers
- Explain how decomposers break down dead matter
- Understand decomposers'' essential role in nutrient cycling
- Investigate factors affecting decomposition

KEY CONCEPTS:
1) Decomposers break down dead organisms and waste
2) Main decomposers: bacteria, fungi, some invertebrates
3) Decomposition releases nutrients back into soil and air
4) Without decomposers, matter would not cycle
5) Decomposition rate depends on temperature, moisture, and oxygen
6) Composting is managed decomposition

COMMON MISCONCEPTIONS:
- Thinking decomposers are gross or unimportant
- Believing only bacteria decompose
- Not connecting decomposition to nutrient cycling
- Thinking decomposition only happens on land

TEACHING SEQUENCE:
Observe decomposition over time (apple, leaves). Identify decomposers in soil samples. Investigate conditions affecting decay rate. Create compost and monitor changes. Discuss what would happen without decomposers. Explore decomposition in different environments. Connect to agriculture and waste management.

DIFFERENTIATION:
Struggling learners: Focus on observable decomposition, hands-on composting, clear before/after comparisons. Advanced learners: Research decomposer diversity, investigate anaerobic decomposition, explore bioremediation.

VOCABULARY:
Decomposer, bacteria, fungi, break down, decay, nutrient, recycle, compost, organic matter, soil.

CONNECTION TO FUTURE LEARNING:
Understanding decomposers prepares students for microbiology, ecology, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Decomposers' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;
