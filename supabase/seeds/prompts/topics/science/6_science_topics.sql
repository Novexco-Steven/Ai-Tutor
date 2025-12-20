-- Grade 6 Science Topic Prompts
-- Comprehensive teaching guides for each topic

-- =====================================================
-- UNIT: EARTH'S SYSTEMS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Water Cycle' AND grade_level_min = 6),
  'The Water Cycle (Grade 6) Topic Guide', 'How water moves through Earth''s systems',
  'THE WATER CYCLE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand states of matter and phase changes. Basic knowledge of Earth''s spheres. Experience with evaporation and condensation.

LEARNING OBJECTIVES:
- Describe the major processes of the water cycle in detail
- Explain how water moves between Earth''s spheres
- Calculate water distribution across reservoirs
- Analyze how human activities affect the water cycle

KEY CONCEPTS:
1) Water continuously cycles through evaporation, condensation, precipitation, and collection
2) Solar energy drives evaporation from oceans, lakes, and land
3) Water vapor rises, cools, and condenses into clouds
4) Precipitation returns water to land and oceans
5) Runoff, infiltration, and groundwater flow complete the cycle
6) Transpiration from plants adds significant water vapor to atmosphere

COMMON MISCONCEPTIONS:
- Believing water cycle is linear rather than continuous
- Thinking clouds are water vapor (they are tiny liquid droplets)
- Not recognizing groundwater as part of the cycle
- Underestimating transpiration''s contribution

TEACHING SEQUENCE:
Model water cycle processes with demonstrations. Calculate percentages of water in different reservoirs (oceans 97%, freshwater 3%). Trace multiple pathways water can take. Investigate groundwater movement. Research human impacts (irrigation, dams, pollution). Analyze how climate change affects the water cycle.

DIFFERENTIATION:
Struggling learners: Focus on main cycle pathways, visual diagrams, physical models. Advanced learners: Quantify water residence times, model regional water cycles, research desalination.

VOCABULARY:
Water cycle, evaporation, condensation, precipitation, transpiration, infiltration, groundwater, runoff, reservoir.

CONNECTION TO FUTURE LEARNING:
Understanding the water cycle prepares students for climate science, hydrology, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Water Cycle' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Weathering and Erosion' AND grade_level_min = 6),
  'Weathering and Erosion (Grade 6) Topic Guide', 'How Earth''s surface changes over time',
  'WEATHERING AND EROSION - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand properties of rocks and minerals. Basic knowledge of water cycle and Earth''s systems. Experience with observation over time.

LEARNING OBJECTIVES:
- Distinguish between physical and chemical weathering
- Explain how erosion and deposition shape landscapes
- Analyze factors affecting rates of weathering and erosion
- Predict landform changes over time

KEY CONCEPTS:
1) Physical weathering breaks rock without chemical change (freeze-thaw, roots, abrasion)
2) Chemical weathering changes rock composition (oxidation, acid rain, dissolution)
3) Erosion transports weathered material by water, wind, ice, or gravity
4) Deposition occurs when transporting agents slow down
5) Weathering and erosion work together to shape Earth''s surface
6) Rate depends on climate, rock type, and vegetation

COMMON MISCONCEPTIONS:
- Confusing weathering with erosion
- Thinking weathering happens quickly
- Believing only water causes erosion
- Not recognizing chemical weathering in everyday objects (rust)

TEACHING SEQUENCE:
Examine weathered rock samples. Demonstrate physical and chemical weathering processes. Model erosion with stream tables. Analyze landform photos for evidence of weathering and erosion. Calculate erosion rates from data. Investigate human impacts on erosion.

DIFFERENTIATION:
Struggling learners: Focus on visible examples, hands-on demonstrations, clear process distinctions. Advanced learners: Research geological time scales, model feedback loops, analyze case studies.

VOCABULARY:
Weathering, erosion, deposition, physical, chemical, abrasion, oxidation, dissolution, sediment, landform.

CONNECTION TO FUTURE LEARNING:
Understanding weathering and erosion prepares students for geology, soil science, and environmental management in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Weathering and Erosion' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Rock Cycle' AND grade_level_min = 6),
  'Rock Cycle (Grade 6) Topic Guide', 'Formation and transformation of different rock types',
  'ROCK CYCLE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand weathering and erosion. Basic knowledge of heat and pressure effects. Ability to classify objects by properties.

LEARNING OBJECTIVES:
- Classify rocks as igneous, sedimentary, or metamorphic
- Explain the formation process for each rock type
- Trace pathways through the rock cycle
- Connect rock formation to plate tectonic processes

KEY CONCEPTS:
1) Igneous rocks form from cooling magma/lava (intrusive vs extrusive)
2) Sedimentary rocks form from compressed and cemented sediments
3) Metamorphic rocks form when heat and pressure change existing rocks
4) The rock cycle shows how rock types transform over millions of years
5) Plate tectonics provides the heat and pressure for rock cycle processes
6) Any rock type can become any other rock type through various pathways

COMMON MISCONCEPTIONS:
- Thinking the rock cycle follows a single sequence
- Believing rock formation is observable in human lifetimes
- Confusing rock types based on appearance alone
- Thinking rocks don''t change

TEACHING SEQUENCE:
Classify rock samples by type. Investigate formation evidence (crystals, layers, foliation). Model rock formation processes. Create rock cycle diagrams showing multiple pathways. Connect to local geology. Research economic importance of different rock types.

DIFFERENTIATION:
Struggling learners: Focus on identification features, hands-on samples, simplified pathways. Advanced learners: Analyze thin sections, research specific rock histories, connect to plate tectonics.

VOCABULARY:
Rock cycle, igneous, sedimentary, metamorphic, magma, lava, sediment, compression, cementation, heat, pressure.

CONNECTION TO FUTURE LEARNING:
Understanding the rock cycle prepares students for geology, paleontology, and Earth history in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rock Cycle' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Atmosphere and Weather' AND grade_level_min = 6),
  'Atmosphere and Weather Topic Guide', 'How atmospheric conditions create weather',
  'ATMOSPHERE AND WEATHER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand the water cycle. Basic knowledge of energy transfer. Experience with weather observations.

LEARNING OBJECTIVES:
- Describe the layers and composition of Earth''s atmosphere
- Explain how atmospheric conditions create weather
- Analyze weather patterns using data and maps
- Predict weather changes based on atmospheric conditions

KEY CONCEPTS:
1) Atmosphere has layers (troposphere, stratosphere, mesosphere, thermosphere)
2) Weather occurs in the troposphere
3) Uneven heating creates air pressure differences and wind
4) Water vapor in atmosphere determines humidity and precipitation
5) Fronts occur where air masses meet
6) Weather patterns are predictable but complex

COMMON MISCONCEPTIONS:
- Thinking the atmosphere is uniform throughout
- Believing clouds are in the stratosphere
- Confusing weather and climate
- Thinking wind comes from specific places rather than pressure differences

TEACHING SEQUENCE:
Model atmospheric layers. Investigate air pressure and its effects. Analyze weather maps and data. Track local weather patterns. Explore how fronts create weather changes. Research meteorology as a career.

DIFFERENTIATION:
Struggling learners: Focus on troposphere and familiar weather, visual maps, daily weather tracking. Advanced learners: Analyze complex weather systems, model atmospheric circulation, research climate connections.

VOCABULARY:
Atmosphere, troposphere, air pressure, humidity, front, air mass, precipitation, barometer, weather map.

CONNECTION TO FUTURE LEARNING:
Understanding atmosphere and weather prepares students for climate science, meteorology, and environmental studies in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Atmosphere and Weather' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Climate Zones' AND grade_level_min = 6),
  'Climate Zones (Grade 6) Topic Guide', 'Major climate regions and what determines them',
  'CLIMATE ZONES - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand atmosphere and weather. Basic geography skills. Knowledge of seasons and solar energy.

LEARNING OBJECTIVES:
- Identify and describe Earth''s major climate zones
- Explain factors that determine climate
- Analyze climate data to classify regions
- Predict how climate affects ecosystems and human activities

KEY CONCEPTS:
1) Climate is long-term average weather patterns
2) Latitude is primary factor—more direct sunlight near equator
3) Major zones: tropical, temperate, polar (with subdivisions)
4) Altitude affects climate—higher is colder
5) Ocean currents and proximity to water moderate temperatures
6) Climate determines ecosystems and human adaptations

COMMON MISCONCEPTIONS:
- Confusing weather with climate
- Thinking only latitude matters for climate
- Believing deserts are always hot (some are cold)
- Assuming climate zones have sharp boundaries

TEACHING SEQUENCE:
Map climate zones globally. Analyze climate graphs (temperature, precipitation). Compare climates at same latitude but different locations. Investigate local climate factors. Research how organisms and humans adapt to different climates. Explore climate change effects on zones.

DIFFERENTIATION:
Struggling learners: Focus on major zones, clear examples, visual comparisons. Advanced learners: Analyze microclimates, model climate factors, research paleoclimates.

VOCABULARY:
Climate, climate zone, tropical, temperate, polar, latitude, altitude, precipitation, temperature, ecosystem.

CONNECTION TO FUTURE LEARNING:
Understanding climate zones prepares students for ecology, biogeography, and climate change science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Climate Zones' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Human Impact on Earth Systems' AND grade_level_min = 6),
  'Human Impact on Earth Systems Topic Guide', 'How human activities affect Earth''s processes',
  'HUMAN IMPACT ON EARTH SYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand Earth''s systems and how they interact. Basic knowledge of environmental issues. Ability to analyze cause and effect.

LEARNING OBJECTIVES:
- Identify major ways humans affect Earth''s systems
- Analyze data on human environmental impacts
- Evaluate solutions to environmental problems
- Propose actions to reduce negative impacts

KEY CONCEPTS:
1) Humans significantly modify all Earth systems
2) Burning fossil fuels increases atmospheric CO2
3) Deforestation affects carbon and water cycles
4) Agriculture and urbanization change land surfaces
5) Pollution affects water, air, and soil quality
6) Some impacts are reversible; others are not

COMMON MISCONCEPTIONS:
- Thinking individual actions don''t matter
- Believing technology will solve all problems
- Underestimating cumulative effects
- Assuming natural systems are infinitely resilient

TEACHING SEQUENCE:
Analyze data on human impacts (deforestation rates, CO2 levels, species loss). Research local environmental issues. Evaluate proposed solutions (cost, effectiveness, feasibility). Calculate personal environmental footprint. Design and advocate for sustainable practices. Investigate environmental careers.

DIFFERENTIATION:
Struggling learners: Focus on local examples, clear cause-effect, practical solutions. Advanced learners: Analyze complex trade-offs, model system responses, research policy approaches.

VOCABULARY:
Impact, pollution, sustainability, carbon footprint, conservation, ecosystem services, renewable, nonrenewable.

CONNECTION TO FUTURE LEARNING:
Understanding human impacts prepares students for environmental science, policy, and sustainable development in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Human Impact on Earth Systems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: STRUCTURE AND PROPERTIES OF MATTER
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Atoms and Molecules' AND grade_level_min = 6),
  'Atoms and Molecules Topic Guide', 'Building blocks of all matter',
  'ATOMS AND MOLECULES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand the particle model of matter. Basic knowledge of elements from prior grades. Vocabulary for describing matter.

LEARNING OBJECTIVES:
- Describe the structure of atoms (protons, neutrons, electrons)
- Explain how atoms combine to form molecules
- Distinguish between atoms and molecules
- Model atomic and molecular structures

KEY CONCEPTS:
1) Atoms are the smallest unit of an element that retains element properties
2) Atoms have a nucleus (protons, neutrons) and electrons in shells
3) Protons determine element identity (atomic number)
4) Molecules form when atoms bond together
5) Chemical formulas represent molecular composition
6) Atoms are incredibly small—billions fit on a pinhead

COMMON MISCONCEPTIONS:
- Thinking atoms are solid spheres
- Confusing atoms with molecules
- Believing electrons orbit like planets (they exist in probability clouds)
- Thinking nucleus is large relative to atom size

TEACHING SEQUENCE:
Build physical models of atoms. Investigate periodic table organization. Model molecule formation with connecting blocks. Practice reading chemical formulas. Research how scientists discovered atomic structure. Explore atomic scale through comparisons.

DIFFERENTIATION:
Struggling learners: Focus on basic structure, physical models, simple molecules. Advanced learners: Investigate electron configurations, explore isotopes, research quantum model.

VOCABULARY:
Atom, molecule, proton, neutron, electron, nucleus, element, chemical formula, bond, atomic number.

CONNECTION TO FUTURE LEARNING:
Understanding atoms and molecules prepares students for chemistry, bonding, and chemical reactions in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Atoms and Molecules' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Elements and the Periodic Table' AND grade_level_min = 6),
  'Elements and the Periodic Table Topic Guide', 'Organization of elements and their properties',
  'ELEMENTS AND THE PERIODIC TABLE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand atomic structure. Basic classification skills. Ability to identify patterns.

LEARNING OBJECTIVES:
- Navigate the periodic table to find element information
- Identify patterns in element properties
- Classify elements as metals, nonmetals, or metalloids
- Predict element properties based on periodic table position

KEY CONCEPTS:
1) Elements are pure substances made of one type of atom
2) Periodic table organizes elements by atomic number
3) Periods (rows) and groups (columns) show patterns
4) Groups share similar properties (alkali metals, halogens, noble gases)
5) Metals, nonmetals, and metalloids have distinct properties
6) Periodic trends include reactivity, atomic size, and electronegativity

COMMON MISCONCEPTIONS:
- Thinking elements are random on the table
- Believing all metals are the same
- Confusing element symbol with abbreviation
- Thinking periodic table is just for memorization

TEACHING SEQUENCE:
Explore periodic table organization. Identify element groups and their properties. Compare metals, nonmetals, and metalloids through samples. Predict unknown element properties from table position. Research element discovery history. Investigate elements in everyday life.

DIFFERENTIATION:
Struggling learners: Focus on common elements, physical table exploration, property observations. Advanced learners: Investigate periodic trends quantitatively, research synthetic elements, explore electron shells.

VOCABULARY:
Element, periodic table, period, group, metal, nonmetal, metalloid, atomic number, symbol, properties.

CONNECTION TO FUTURE LEARNING:
Understanding the periodic table prepares students for chemistry, bonding, and understanding chemical behavior in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Elements and the Periodic Table' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Compounds and Mixtures' AND grade_level_min = 6),
  'Compounds and Mixtures Topic Guide', 'How substances combine in different ways',
  'COMPOUNDS AND MIXTURES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand atoms, molecules, and elements. Basic observation skills. Vocabulary for describing matter.

LEARNING OBJECTIVES:
- Distinguish between compounds and mixtures
- Classify substances as elements, compounds, or mixtures
- Explain that compounds have fixed compositions
- Describe methods for separating mixtures

KEY CONCEPTS:
1) Compounds are substances formed when elements bond chemically
2) Compounds have fixed proportions and new properties
3) Mixtures combine substances without chemical bonding
4) Mixtures retain individual component properties
5) Homogeneous mixtures (solutions) look uniform; heterogeneous don''t
6) Mixtures can be separated by physical methods; compounds cannot

COMMON MISCONCEPTIONS:
- Thinking mixing creates compounds
- Believing salt water is a compound
- Confusing solutions with compounds
- Thinking compound properties are averages of element properties

TEACHING SEQUENCE:
Create mixtures and observe properties. Compare to compound formation (watch reaction occur). Separate mixtures by filtration, evaporation, magnetism. Classify mystery samples. Investigate compound formulas and fixed ratios. Connect to everyday substances.

DIFFERENTIATION:
Struggling learners: Clear hands-on comparisons, focus on key differences, visual classification charts. Advanced learners: Calculate compound proportions, investigate solution concentrations, research separation technologies.

VOCABULARY:
Compound, mixture, element, homogeneous, heterogeneous, solution, solute, solvent, separate, properties.

CONNECTION TO FUTURE LEARNING:
Understanding compounds and mixtures prepares students for chemistry and materials science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compounds and Mixtures' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'States of Matter' AND grade_level_min = 6),
  'States of Matter (Grade 6) Topic Guide', 'Solids, liquids, gases, and their properties',
  'STATES OF MATTER - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand the particle model. Basic measurement skills. Prior experience with states of matter.

LEARNING OBJECTIVES:
- Describe particle arrangement and motion in each state
- Explain properties of each state using particle model
- Compare and contrast states of matter
- Predict state behavior under different conditions

KEY CONCEPTS:
1) Solids have fixed shape and volume—particles vibrate in fixed positions
2) Liquids have fixed volume but take container shape—particles slide
3) Gases have no fixed shape or volume—particles move freely
4) Particle motion increases with temperature
5) Intermolecular forces hold particles together
6) States exist on a continuum based on energy and forces

COMMON MISCONCEPTIONS:
- Thinking particles stop in solids
- Believing gases have no mass
- Confusing particle spacing with particle size
- Thinking all solids are hard

TEACHING SEQUENCE:
Model particle motion in each state using simulations and physical demonstrations. Measure properties (volume, shape, compressibility). Investigate unusual examples (non-Newtonian fluids, plasma). Connect particle motion to temperature. Research applications of state properties.

DIFFERENTIATION:
Struggling learners: Focus on observable properties, clear models, familiar examples. Advanced learners: Investigate plasma as fourth state, explore phase diagrams, research supercooling and superheating.

VOCABULARY:
State, solid, liquid, gas, particle, motion, vibrate, flow, expand, compress, intermolecular forces.

CONNECTION TO FUTURE LEARNING:
Understanding states of matter prepares students for phase changes, thermodynamics, and chemistry in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'States of Matter' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Phase Changes' AND grade_level_min = 6),
  'Phase Changes Topic Guide', 'How matter changes from one state to another',
  'PHASE CHANGES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand states of matter at particle level. Basic knowledge of energy concepts. Experience with melting and boiling.

LEARNING OBJECTIVES:
- Name and describe all phase changes
- Explain phase changes using particle model and energy
- Interpret heating and cooling curves
- Predict phase change temperatures for different substances

KEY CONCEPTS:
1) Phase changes: melting, freezing, vaporization, condensation, sublimation, deposition
2) Energy is absorbed during melting, vaporization, sublimation
3) Energy is released during freezing, condensation, deposition
4) Temperature remains constant during phase changes
5) Melting and boiling points are characteristic properties
6) Phase change temperatures depend on substance identity and pressure

COMMON MISCONCEPTIONS:
- Thinking temperature always changes when heating
- Believing boiling creates new substances
- Confusing evaporation with boiling
- Thinking phase changes occur at any temperature

TEACHING SEQUENCE:
Demonstrate and measure phase changes with water and other substances. Create heating/cooling curves from data. Explain energy absorption/release at molecular level. Investigate factors affecting phase change temperatures. Research phase change applications (refrigeration, firefighting).

DIFFERENTIATION:
Struggling learners: Focus on water examples, visual heating curves, hands-on observation. Advanced learners: Calculate latent heat, investigate pressure effects, research phase diagrams.

VOCABULARY:
Phase change, melting, freezing, vaporization, condensation, sublimation, deposition, latent heat, heating curve.

CONNECTION TO FUTURE LEARNING:
Understanding phase changes prepares students for thermodynamics, chemistry, and engineering in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Phase Changes' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Physical vs Chemical Changes' AND grade_level_min = 6),
  'Physical vs Chemical Changes Topic Guide', 'Distinguishing between types of changes in matter',
  'PHYSICAL VS CHEMICAL CHANGES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand matter properties, compounds, and mixtures. Basic observation skills. Vocabulary for describing changes.

LEARNING OBJECTIVES:
- Distinguish between physical and chemical changes
- Identify evidence of chemical changes
- Explain changes at the particle level
- Classify observations as physical or chemical changes

KEY CONCEPTS:
1) Physical changes alter form but not composition—same substance
2) Chemical changes produce new substances with different properties
3) Evidence of chemical change: color change, gas production, precipitate, energy change
4) Physical changes are often reversible; chemical usually are not
5) Particles rearrange in chemical changes but not in physical changes
6) Both types of changes conserve mass

COMMON MISCONCEPTIONS:
- Thinking all dramatic changes are chemical
- Believing dissolving is always chemical
- Assuming irreversible means chemical
- Confusing breaking bonds with changing arrangement

TEACHING SEQUENCE:
Conduct various changes and classify (melting vs burning, dissolving vs reacting). Identify evidence supporting classification. Model particle changes for each type. Design experiments to distinguish change types. Connect to everyday examples (cooking, cleaning, rusting).

DIFFERENTIATION:
Struggling learners: Focus on clear examples, evidence checklist, hands-on exploration. Advanced learners: Investigate borderline cases, write equations for chemical changes, research industrial applications.

VOCABULARY:
Physical change, chemical change, evidence, reversible, composition, properties, reaction, products, reactants.

CONNECTION TO FUTURE LEARNING:
Understanding change types prepares students for chemical reactions, equations, and chemistry in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Physical vs Chemical Changes' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: ECOSYSTEMS AND INTERACTIONS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Food Chains and Food Webs' AND grade_level_min = 6),
  'Food Chains and Food Webs (Grade 6) Topic Guide', 'How energy flows through ecosystems',
  'FOOD CHAINS AND FOOD WEBS - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand organisms and basic ecology. Knowledge of producers and consumers. Ability to trace relationships.

LEARNING OBJECTIVES:
- Construct food chains showing energy flow
- Create complex food webs from multiple food chains
- Analyze effects of removing species from webs
- Calculate energy transfer between trophic levels

KEY CONCEPTS:
1) Food chains show single pathways of energy transfer
2) Food webs show all feeding relationships in an ecosystem
3) Arrows show direction of energy flow, not who eats whom
4) Energy decreases at each trophic level (about 10% rule)
5) Changes to one population affect many others
6) More complex webs tend to be more stable

COMMON MISCONCEPTIONS:
- Drawing arrows pointing to predator (arrows show energy flow)
- Thinking energy is recycled like matter
- Believing all organisms are equally important
- Underestimating food web complexity

TEACHING SEQUENCE:
Build food chains from organism cards. Connect chains into webs. Model removing species and tracing effects. Calculate energy at each trophic level. Analyze real ecosystem food webs. Research keystone species and their importance.

DIFFERENTIATION:
Struggling learners: Focus on clear food chains first, visual web construction, simplified ecosystems. Advanced learners: Model population dynamics, analyze energy flow quantitatively, research web stability.

VOCABULARY:
Food chain, food web, trophic level, producer, consumer, energy flow, predator, prey, ecosystem, keystone species.

CONNECTION TO FUTURE LEARNING:
Understanding food webs prepares students for ecology, population dynamics, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Food Chains and Food Webs' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Producers, Consumers, and Decomposers' AND grade_level_min = 6),
  'Producers Consumers Decomposers (Grade 6) Topic Guide', 'Roles of different organisms in ecosystems',
  'PRODUCERS, CONSUMERS, AND DECOMPOSERS - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand food chains and energy flow. Basic knowledge of photosynthesis. Vocabulary for organism relationships.

LEARNING OBJECTIVES:
- Classify organisms by their ecological role
- Explain how each group contributes to ecosystem function
- Analyze energy and matter flow through each group
- Evaluate the importance of each group to ecosystem health

KEY CONCEPTS:
1) Producers (autotrophs) make food from sunlight through photosynthesis
2) Consumers (heterotrophs) must eat other organisms for energy
3) Primary consumers eat producers; secondary eat primary, etc.
4) Decomposers break down dead matter and recycle nutrients
5) All three groups are essential for ecosystem function
6) Decomposers are the link between dead matter and producers

COMMON MISCONCEPTIONS:
- Thinking decomposers are unimportant
- Believing producers don''t need anything from the ecosystem
- Confusing scavengers with decomposers
- Assuming consumers are only animals

TEACHING SEQUENCE:
Classify organisms by role. Investigate what each group needs and provides. Model nutrient cycling through all groups. Research decomposition processes. Analyze what happens when each group is missing. Connect to real ecosystem examples.

DIFFERENTIATION:
Struggling learners: Focus on clear examples of each role, visual classifications, familiar organisms. Advanced learners: Investigate chemosynthetic producers, model nutrient cycling, research extremophile decomposers.

VOCABULARY:
Producer, consumer, decomposer, autotroph, heterotroph, photosynthesis, nutrient, recycle, primary, secondary, tertiary.

CONNECTION TO FUTURE LEARNING:
Understanding organism roles prepares students for ecology, biochemistry, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Producers, Consumers, and Decomposers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Energy Pyramids' AND grade_level_min = 6),
  'Energy Pyramids Topic Guide', 'How energy decreases through trophic levels',
  'ENERGY PYRAMIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand food chains and trophic levels. Basic knowledge of energy transfer. Math skills for percentages.

LEARNING OBJECTIVES:
- Construct energy pyramids for ecosystems
- Explain why energy decreases at each level
- Calculate energy available at each trophic level
- Predict maximum food chain length from energy constraints

KEY CONCEPTS:
1) Energy pyramids show energy available at each trophic level
2) Only about 10% of energy transfers to the next level
3) 90% is lost as heat through metabolism
4) Pyramid shape reflects decreasing energy at higher levels
5) Energy limits the number of trophic levels possible
6) Biomass and numbers pyramids may differ from energy pyramids

COMMON MISCONCEPTIONS:
- Thinking 90% of food is wasted
- Believing energy is destroyed (it''s transformed to heat)
- Confusing energy pyramids with food pyramids
- Expecting equal energy at all levels

TEACHING SEQUENCE:
Calculate energy transfer through example food chains. Build energy pyramid models to scale. Explain why organisms use 90% of their energy. Investigate why food chains rarely exceed 4-5 levels. Compare energy, biomass, and numbers pyramids. Research energy efficiency in agriculture.

DIFFERENTIATION:
Struggling learners: Focus on 10% rule, visual pyramids, simple calculations. Advanced learners: Analyze inverted biomass pyramids, calculate ecological efficiency, research aquaculture efficiency.

VOCABULARY:
Energy pyramid, trophic level, biomass, efficiency, transfer, heat, metabolism, pyramid of numbers.

CONNECTION TO FUTURE LEARNING:
Understanding energy pyramids prepares students for ecology, thermodynamics, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Energy Pyramids' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cycles in Nature' AND grade_level_min = 6),
  'Cycles in Nature Topic Guide', 'Carbon, nitrogen, and other biogeochemical cycles',
  'CYCLES IN NATURE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand matter conservation. Basic knowledge of atoms and molecules. Experience with the water cycle.

LEARNING OBJECTIVES:
- Describe major biogeochemical cycles (carbon, nitrogen, phosphorus)
- Trace matter through living and nonliving components
- Compare energy flow (one-way) to matter cycling (circular)
- Analyze human impacts on natural cycles

KEY CONCEPTS:
1) Matter cycles continuously through ecosystems
2) Carbon cycle: photosynthesis, respiration, decomposition, fossil fuels
3) Nitrogen cycle: nitrogen fixation, nitrification, denitrification
4) Same atoms are used repeatedly by organisms
5) Unlike energy, matter is not lost—it is recycled
6) Human activities can disrupt natural cycles

COMMON MISCONCEPTIONS:
- Thinking matter is used up like energy
- Believing cycles are simple and linear
- Confusing carbon dioxide with carbon
- Not recognizing human roles in cycles

TEACHING SEQUENCE:
Model carbon cycle through multiple pathways. Investigate nitrogen cycle in soil. Compare cycling to energy flow. Trace individual atoms through ecosystem. Research human impacts on cycles (fossil fuels, fertilizers). Connect to climate change and water pollution.

DIFFERENTIATION:
Struggling learners: Focus on carbon cycle, visual cycle diagrams, simple pathways. Advanced learners: Model feedback loops, quantify reservoir sizes and fluxes, research cycle disruptions.

VOCABULARY:
Cycle, carbon, nitrogen, phosphorus, reservoir, flux, fixation, decomposition, photosynthesis, respiration.

CONNECTION TO FUTURE LEARNING:
Understanding biogeochemical cycles prepares students for ecology, chemistry, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cycles in Nature' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Biodiversity' AND grade_level_min = 6),
  'Biodiversity (Grade 6) Topic Guide', 'Importance of species diversity in ecosystems',
  'BIODIVERSITY - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand ecosystems and food webs. Basic knowledge of species classification. Vocabulary for describing organisms.

LEARNING OBJECTIVES:
- Define biodiversity at genetic, species, and ecosystem levels
- Explain why biodiversity is important for ecosystem health
- Analyze threats to biodiversity
- Evaluate conservation strategies

KEY CONCEPTS:
1) Biodiversity includes genetic diversity, species diversity, and ecosystem diversity
2) Higher biodiversity generally means more stable ecosystems
3) Each species plays a role in ecosystem function
4) Biodiversity provides ecosystem services (food, medicine, clean water)
5) Major threats: habitat loss, pollution, climate change, invasive species
6) Conservation efforts protect biodiversity

COMMON MISCONCEPTIONS:
- Thinking only charismatic species matter
- Believing biodiversity is just species counts
- Assuming ecosystems will naturally recover
- Underestimating human dependence on biodiversity

TEACHING SEQUENCE:
Survey local biodiversity. Analyze biodiversity data from different ecosystems. Research threats to biodiversity. Investigate ecosystem services. Evaluate conservation strategies. Create action plans for local biodiversity protection.

DIFFERENTIATION:
Struggling learners: Focus on species diversity, local examples, tangible benefits. Advanced learners: Analyze biodiversity indices, research genetic diversity importance, evaluate conservation trade-offs.

VOCABULARY:
Biodiversity, species, genetic, ecosystem, conservation, endangered, extinction, habitat, ecosystem services.

CONNECTION TO FUTURE LEARNING:
Understanding biodiversity prepares students for ecology, conservation biology, and environmental policy in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Biodiversity' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Ecosystem Disruptions' AND grade_level_min = 6),
  'Ecosystem Disruptions Topic Guide', 'How changes affect ecosystem balance',
  'ECOSYSTEM DISRUPTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand food webs and biodiversity. Basic knowledge of environmental issues. Ability to analyze cause and effect.

LEARNING OBJECTIVES:
- Identify natural and human-caused ecosystem disruptions
- Predict cascading effects of disruptions
- Analyze ecosystem recovery and resilience
- Evaluate strategies to prevent or mitigate disruptions

KEY CONCEPTS:
1) Disruptions can be natural (fire, flood) or human-caused (pollution, development)
2) Effects cascade through food webs
3) Keystone species removal causes major disruptions
4) Invasive species can devastate native ecosystems
5) Some ecosystems recover; others do not
6) Prevention is often more effective than restoration

COMMON MISCONCEPTIONS:
- Thinking ecosystems always return to normal
- Believing all disruptions are negative (some benefit systems)
- Underestimating cascading effects
- Assuming only large changes matter

TEACHING SEQUENCE:
Model ecosystem disruptions and trace effects. Analyze case studies of ecosystem collapse and recovery. Investigate invasive species impacts. Research restoration efforts. Design strategies to prevent disruptions. Evaluate success of conservation programs.

DIFFERENTIATION:
Struggling learners: Focus on clear cause-effect examples, visual models, local issues. Advanced learners: Model complex cascading effects, analyze tipping points, research restoration ecology.

VOCABULARY:
Disruption, cascade, resilience, recovery, invasive, native, restoration, keystone, tipping point, ecosystem collapse.

CONNECTION TO FUTURE LEARNING:
Understanding ecosystem disruptions prepares students for ecology, conservation, and environmental management in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ecosystem Disruptions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: SPACE SYSTEMS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Solar System' AND grade_level_min = 6),
  'The Solar System (Grade 6) Topic Guide', 'Structure and components of our solar system',
  'THE SOLAR SYSTEM - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand basic astronomy concepts. Knowledge of gravity. Vocabulary for describing space objects.

LEARNING OBJECTIVES:
- Describe the structure and components of the solar system
- Compare characteristics of inner and outer planets
- Explain how gravity shapes the solar system
- Analyze scale and distances in the solar system

KEY CONCEPTS:
1) Solar system includes Sun, 8 planets, dwarf planets, moons, asteroids, comets
2) Inner planets (Mercury, Venus, Earth, Mars) are rocky and smaller
3) Outer planets (Jupiter, Saturn, Uranus, Neptune) are gaseous and larger
4) Asteroid belt separates inner and outer planets
5) All objects orbit the Sun due to gravity
6) Distances are vast—measured in AU (astronomical units)

COMMON MISCONCEPTIONS:
- Underestimating the scale of the solar system
- Thinking planets are close together
- Believing Pluto is a major planet
- Confusing asteroids with comets

TEACHING SEQUENCE:
Create scale models of the solar system (size and distance separately). Compare planet characteristics using data. Research each planet''s unique features. Investigate dwarf planets and their classification. Model orbital mechanics. Explore current and future space missions.

DIFFERENTIATION:
Struggling learners: Focus on planet order and basic facts, visual comparisons, memorable mnemonics. Advanced learners: Calculate orbital periods, research specific missions, explore exoplanet discoveries.

VOCABULARY:
Solar system, planet, dwarf planet, asteroid, comet, orbit, inner planets, outer planets, astronomical unit.

CONNECTION TO FUTURE LEARNING:
Understanding the solar system prepares students for astronomy, space science, and physics in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Solar System' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Earth''s Rotation and Revolution' AND grade_level_min = 6),
  'Earth''s Rotation and Revolution Topic Guide', 'How Earth''s movements create days and years',
  'EARTH''S ROTATION AND REVOLUTION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand basic concepts of day and night. Knowledge of Earth as a sphere. Vocabulary for describing motion.

LEARNING OBJECTIVES:
- Distinguish between rotation and revolution
- Explain how rotation causes day and night
- Explain how revolution defines the year
- Calculate time differences based on Earth''s rotation

KEY CONCEPTS:
1) Rotation is spinning on axis—one rotation ≈ 24 hours (one day)
2) Revolution is orbiting the Sun—one revolution ≈ 365.25 days (one year)
3) Rotation causes day/night cycle
4) Axis tilt during revolution causes seasons
5) Earth rotates counterclockwise when viewed from above North Pole
6) Time zones result from Earth''s rotation

COMMON MISCONCEPTIONS:
- Confusing rotation with revolution
- Thinking the Sun moves around Earth
- Believing it''s the same time everywhere
- Confusing seasons with Earth''s distance from Sun

TEACHING SEQUENCE:
Model rotation and revolution with globes and lamps. Demonstrate day/night from rotation. Calculate time zone differences. Investigate why leap years exist. Explore how ancient people tracked these motions. Connect to calendars and time measurement.

DIFFERENTIATION:
Struggling learners: Focus on one motion at a time, physical demonstrations, clear diagrams. Advanced learners: Calculate orbital velocity, investigate precession, research calendrical systems.

VOCABULARY:
Rotation, revolution, axis, orbit, day, night, year, time zone, counterclockwise, leap year.

CONNECTION TO FUTURE LEARNING:
Understanding Earth''s motions prepares students for studying seasons, astronomy, and time in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Earth''s Rotation and Revolution' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Seasons' AND grade_level_min = 6),
  'Seasons (Grade 6) Topic Guide', 'Why Earth experiences different seasons',
  'SEASONS - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand rotation and revolution. Basic knowledge of sunlight and heat. Experience with seasonal changes.

LEARNING OBJECTIVES:
- Explain how Earth''s tilt causes seasons
- Model the relationship between tilt, sunlight, and seasons
- Compare seasons in Northern and Southern Hemispheres
- Analyze data on daylight hours and sun angles throughout the year

KEY CONCEPTS:
1) Earth''s axis is tilted 23.5° from perpendicular to orbital plane
2) Tilt direction stays constant during orbit
3) Hemisphere tilted toward Sun receives more direct light = summer
4) Hemisphere tilted away receives less direct light = winter
5) Seasons are opposite in Northern and Southern Hemispheres
6) Solstices mark maximum tilt; equinoxes mark equal day/night

COMMON MISCONCEPTIONS:
- Thinking distance from Sun causes seasons
- Believing tilt changes during the year
- Not understanding direct vs angled sunlight
- Assuming equator has no seasons

TEACHING SEQUENCE:
Model Earth''s tilted orbit with globe and lamp. Measure light intensity at different angles. Graph daylight hours throughout the year. Compare hemispheres during each season. Investigate solstices and equinoxes. Research how different cultures mark seasonal changes.

DIFFERENTIATION:
Struggling learners: Focus on tilt direction, clear models, local seasonal observations. Advanced learners: Calculate sun angles at different latitudes, investigate midnight sun phenomenon, research climate vs seasons.

VOCABULARY:
Season, tilt, axis, hemisphere, solstice, equinox, direct sunlight, angle, summer, winter, spring, fall.

CONNECTION TO FUTURE LEARNING:
Understanding seasons prepares students for climate science, agriculture, and advanced astronomy in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Seasons' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Moon Phases and Eclipses' AND grade_level_min = 6),
  'Moon Phases and Eclipses Topic Guide', 'Lunar cycles and eclipse phenomena',
  'MOON PHASES AND ECLIPSES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand Earth''s rotation and revolution. Basic knowledge of light and shadows. Experience observing the moon.

LEARNING OBJECTIVES:
- Explain the cause of moon phases
- Identify and name all eight moon phases
- Distinguish between solar and lunar eclipses
- Predict when eclipses can occur

KEY CONCEPTS:
1) Moon phases result from viewing the lit half from different angles
2) Phases cycle every 29.5 days (synodic month)
3) Moon always keeps same side facing Earth (tidal locking)
4) Lunar eclipse: Earth''s shadow on Moon during full moon
5) Solar eclipse: Moon''s shadow on Earth during new moon
6) Eclipse alignment must be precise—moon''s orbit is tilted

COMMON MISCONCEPTIONS:
- Thinking Earth''s shadow causes moon phases
- Confusing phases with eclipses
- Believing solar eclipses are visible everywhere
- Thinking eclipses happen every month

TEACHING SEQUENCE:
Model moon phases with lamp and ball—view from different positions. Track actual moon phases over a month. Model eclipse geometry. Research recent and upcoming eclipses. Investigate eclipse safety. Explore cultural significance of moon and eclipses.

DIFFERENTIATION:
Struggling learners: Focus on major phases, clear phase models, eclipse diagrams. Advanced learners: Calculate eclipse timing, investigate umbra/penumbra, research eclipse prediction history.

VOCABULARY:
Moon phase, new moon, full moon, waxing, waning, crescent, gibbous, lunar eclipse, solar eclipse, umbra, penumbra.

CONNECTION TO FUTURE LEARNING:
Understanding moon phases and eclipses prepares students for astronomy, orbital mechanics, and space science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Moon Phases and Eclipses' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Gravity and Orbits' AND grade_level_min = 6),
  'Gravity and Orbits (Grade 6) Topic Guide', 'How gravity keeps objects in orbit',
  'GRAVITY AND ORBITS - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand basic gravity concepts. Knowledge of solar system. Vocabulary for describing motion and forces.

LEARNING OBJECTIVES:
- Explain gravity as an attractive force between all masses
- Describe how gravity decreases with distance
- Explain why objects orbit rather than fall directly
- Predict orbital behavior based on mass and distance

KEY CONCEPTS:
1) Gravity is attraction between all objects with mass
2) Greater mass means stronger gravitational pull
3) Greater distance means weaker gravitational pull
4) Orbiting objects fall toward the center while moving forward
5) Balance between velocity and gravity creates stable orbits
6) Closer orbits require greater velocity

COMMON MISCONCEPTIONS:
- Thinking there''s no gravity in space
- Believing astronauts float because of zero gravity
- Confusing mass with weight
- Thinking orbits need constant propulsion

TEACHING SEQUENCE:
Demonstrate orbit as continuous falling using simulations. Model gravity''s dependence on mass and distance. Calculate orbital periods for different distances. Investigate weightlessness as free fall. Research how spacecraft use gravity for travel. Explore how gravity shaped the solar system.

DIFFERENTIATION:
Struggling learners: Focus on orbit concept, visual demonstrations, simple gravity rules. Advanced learners: Calculate gravitational force, investigate Kepler''s laws, research gravitational assists.

VOCABULARY:
Gravity, orbit, mass, distance, velocity, free fall, attraction, gravitational force, weightlessness.

CONNECTION TO FUTURE LEARNING:
Understanding gravity and orbits prepares students for physics, astronomy, and space exploration in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Gravity and Orbits' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Stars and Galaxies' AND grade_level_min = 6),
  'Stars and Galaxies Topic Guide', 'Our Sun, other stars, and the Milky Way',
  'STARS AND GALAXIES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand the solar system. Basic knowledge of light and energy. Vocabulary for describing space.

LEARNING OBJECTIVES:
- Describe the Sun as a star and compare it to other stars
- Explain the life cycle of stars
- Describe the structure of the Milky Way galaxy
- Understand the scale of the universe beyond our solar system

KEY CONCEPTS:
1) The Sun is a medium-sized star—there are much larger and smaller stars
2) Stars produce energy through nuclear fusion
3) Stars have life cycles: birth, main sequence, death (varies by size)
4) Our solar system is in the Milky Way galaxy
5) Galaxies contain billions of stars and come in different shapes
6) Light-years measure vast distances in space

COMMON MISCONCEPTIONS:
- Thinking the Sun is the center of the universe
- Believing all stars are the same
- Underestimating cosmic distances
- Confusing galaxy with solar system

TEACHING SEQUENCE:
Compare star sizes and temperatures. Research stellar life cycles. Locate the solar system in the Milky Way. Explore galaxy types and structures. Calculate distances in light-years. Investigate what we can learn from starlight. Research current space telescopes and discoveries.

DIFFERENTIATION:
Struggling learners: Focus on star comparisons, visual representations, local night sky. Advanced learners: Research stellar spectroscopy, investigate galaxy evolution, explore cosmological concepts.

VOCABULARY:
Star, galaxy, Milky Way, light-year, nuclear fusion, nebula, supernova, black hole, spiral, elliptical.

CONNECTION TO FUTURE LEARNING:
Understanding stars and galaxies prepares students for astronomy, physics, and cosmology in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Stars and Galaxies' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;
