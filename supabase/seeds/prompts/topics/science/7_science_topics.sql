-- =============================================
-- GRADE 7 SCIENCE TOPIC PROMPTS
-- Subject: Science
-- Grade: 7 (Middle School)
-- Units: Life Science Cells and Organisms, Earth Science Our Dynamic Planet,
--        Physical Science Matter and Energy, Scientific Inquiry
-- =============================================

-- =============================================
-- UNIT: LIFE SCIENCE CELLS AND ORGANISMS
-- =============================================

-- Topic: Cell Structure and Function
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cell Structure and Function' AND grade_level_min = 7),
  'Cell Structure and Function (Grade 7) Topic Guide', 'The building blocks of life and their components',
  'CELL STRUCTURE AND FUNCTION - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand that living things are made of smaller parts and have basic knowledge of microscopes. They should know the difference between living and non-living things and understand that organisms have basic needs for survival. Prior experience with magnification tools and understanding of scale is helpful.

LEARNING OBJECTIVES:
- Identify and describe the function of major cell organelles including nucleus, mitochondria, cell membrane, cytoplasm, and ribosomes
- Compare and contrast plant and animal cells, identifying unique structures like cell walls and chloroplasts
- Explain how cell structure relates to cell function at the microscopic level
- Describe the relationship between cells, tissues, organs, and organ systems
- Use microscopes effectively to observe and sketch cell structures

KEY CONCEPTS:
1) The cell is the basic unit of structure and function in all living organisms, from single-celled bacteria to complex multicellular organisms like humans
2) Cell organelles are specialized structures that perform specific functions, similar to how organs perform specific functions in a body
3) The cell membrane controls what enters and exits the cell, maintaining homeostasis through selective permeability
4) Plant cells have additional structures (cell wall, chloroplasts, large central vacuole) that animal cells lack, reflecting their different needs
5) Cells are organized into tissues, tissues into organs, and organs into organ systems in multicellular organisms

COMMON MISCONCEPTIONS:
- Believing that cells are flat like their textbook diagrams rather than three-dimensional structures
- Thinking that all cells look identical rather than being specialized for different functions
- Confusing the cell wall with the cell membrane or thinking animal cells have cell walls
- Believing that plant cells only have chloroplasts and no mitochondria (they have both)
- Thinking cells are visible to the naked eye (most require microscopes)
- Assuming the nucleus is the "brain" that controls everything actively rather than storing genetic information

TEACHING SEQUENCE:
Begin with the analogy of a cell as a microscopic factory or city, where each organelle has a specific job. Use microscope observations of onion cells, cheek cells, and prepared slides to connect abstract concepts to visible structures. Create labeled 3D cell models using everyday materials to reinforce the spatial relationships between organelles. Compare plant and animal cells side by side, discussing WHY plants need additional structures. Connect to real-world applications like how understanding cells helps doctors treat diseases. Use interactive simulations to show organelles in action.

DIFFERENTIATION:
Struggling learners: Focus on the main organelles (nucleus, membrane, cytoplasm, mitochondria) before adding complexity. Use simple analogies consistently (factory, city). Provide pre-labeled diagrams to complete rather than drawing from scratch.
Advanced learners: Introduce prokaryotic vs eukaryotic cells, explore specialized cells like neurons and red blood cells, investigate how organelles work together in cellular processes like protein synthesis.

VOCABULARY:
Cell, organelle, nucleus, cell membrane, cytoplasm, mitochondria, ribosome, endoplasmic reticulum, Golgi body, vacuole, chloroplast, cell wall, tissue, organ, organ system, organism, microscope, magnification, prokaryote, eukaryote

CONNECTION TO FUTURE LEARNING:
Understanding cell structure prepares students for cell division and genetics topics later in the year. This foundation is essential for high school biology covering cellular respiration, photosynthesis, and molecular biology. Medical and biological careers depend on deep cellular understanding.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cell Structure and Function' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Cell Division
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cell Division' AND grade_level_min = 7),
  'Cell Division (Grade 7) Topic Guide', 'How cells reproduce through mitosis and cell cycle',
  'CELL DIVISION - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students must understand basic cell structure including the nucleus and its role in storing genetic information. They should know that organisms grow and reproduce and understand that cells are the basic units of life. Familiarity with chromosomes as structures containing genetic information is helpful.

LEARNING OBJECTIVES:
- Describe the stages of the cell cycle including interphase, mitosis, and cytokinesis
- Explain why cell division is necessary for growth, repair, and reproduction
- Identify the stages of mitosis (prophase, metaphase, anaphase, telophase)
- Compare cell division in plant and animal cells
- Explain the importance of DNA replication before cell division

KEY CONCEPTS:
1) The cell cycle is an ordered sequence of events that includes cell growth, DNA replication, and cell division
2) Interphase is the longest phase where cells grow, carry out normal functions, and duplicate their DNA
3) Mitosis is the division of the nucleus into two identical daughter nuclei, ensuring each new cell receives a complete set of chromosomes
4) Cytokinesis is the division of the cytoplasm, which differs between plant cells (cell plate) and animal cells (cleavage furrow)
5) Cell division is essential for organism growth, tissue repair, and asexual reproduction in some organisms

COMMON MISCONCEPTIONS:
- Believing mitosis and cell division are the same thing (mitosis is specifically nuclear division)
- Thinking cells divide randomly rather than in a controlled, regulated process
- Assuming all cells divide at the same rate (some divide rapidly, others rarely or never)
- Confusing mitosis with meiosis or thinking mitosis produces sex cells
- Believing that chromosomes are only present during cell division (they''re always present, just less visible)
- Thinking DNA doubles the number of genes rather than making exact copies

TEACHING SEQUENCE:
Start by demonstrating growth and repair in familiar contexts (healing cuts, growing taller). Use animations and videos to show the dynamic nature of cell division that static images cannot capture. Create hands-on activities using pipe cleaners or pool noodles to model chromosome movement during mitosis stages. Use flip books or stop-motion animations created by students to reinforce the sequential nature of the process. Connect to cancer as uncontrolled cell division to show real-world relevance. Compare time-lapse videos of plant and animal cell division.

DIFFERENTIATION:
Struggling learners: Focus on the main concept that one cell becomes two identical cells. Use memorable acronyms (PMAT: Prophase, Metaphase, Anaphase, Telophase). Provide simplified diagrams with fewer details.
Advanced learners: Explore cell cycle regulation and checkpoints, investigate what happens when cell division goes wrong (cancer), research stem cells and their unique properties.

VOCABULARY:
Cell cycle, interphase, mitosis, cytokinesis, chromosome, chromatid, centromere, spindle fibers, prophase, metaphase, anaphase, telophase, daughter cells, DNA replication, cell plate, cleavage furrow

CONNECTION TO FUTURE LEARNING:
Cell division concepts are foundational for understanding genetics and heredity. Students will later learn about meiosis and how it differs from mitosis in producing sex cells. Understanding cell cycle regulation connects to cancer biology and medical research.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cell Division' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Human Body Systems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Human Body Systems' AND grade_level_min = 7),
  'Human Body Systems (Grade 7) Topic Guide', 'Major organ systems and how they work together',
  'HUMAN BODY SYSTEMS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand the organizational hierarchy of cells, tissues, organs, and organ systems. They should have basic knowledge of what organs are and some familiarity with major organs like the heart, lungs, and brain. Understanding that body parts work together to keep us alive provides a foundation.

LEARNING OBJECTIVES:
- Identify the major organ systems and their primary functions
- Explain how organ systems interact and depend on each other
- Describe the structure and function of key organs within each system
- Analyze how the body maintains homeostasis through system interactions
- Connect lifestyle choices to organ system health

KEY CONCEPTS:
1) The human body contains 11 major organ systems, each with specific functions that support survival
2) Organ systems do not work in isolation; they interact constantly to maintain homeostasis and support life functions
3) The circulatory system transports materials throughout the body, connecting all other systems
4) The nervous and endocrine systems coordinate and control body activities through electrical and chemical signals
5) Homeostasis is the body''s ability to maintain stable internal conditions despite external changes

COMMON MISCONCEPTIONS:
- Believing organ systems work independently rather than as an integrated network
- Thinking the heart is the only organ involved in circulation (blood vessels are equally important)
- Confusing the nervous system''s rapid electrical signals with the endocrine system''s slower hormonal signals
- Believing digestion only happens in the stomach (it occurs throughout the digestive tract)
- Thinking bones are dead, static structures rather than living tissue
- Assuming breathing is the only function of the respiratory system

TEACHING SEQUENCE:
Introduce systems one at a time but constantly reference connections to previously learned systems. Use body maps and interactive models where students can build and explore. Conduct simple investigations like measuring heart rate and breathing rate before and after exercise to see systems in action. Create system interaction diagrams showing how eating a meal involves digestive, circulatory, and nervous systems. Use case studies of medical conditions to show what happens when systems malfunction. Invite health professionals to discuss real-world applications.

DIFFERENTIATION:
Struggling learners: Focus on 4-5 major systems first (circulatory, respiratory, digestive, nervous, skeletal-muscular). Use body outlines for students to draw and label. Create system-function matching activities.
Advanced learners: Explore feedback loops and homeostatic mechanisms in detail, investigate organ transplantation and artificial organs, research how diseases affect multiple systems simultaneously.

VOCABULARY:
Organ system, circulatory, respiratory, digestive, nervous, skeletal, muscular, excretory, endocrine, immune, integumentary, reproductive, homeostasis, metabolism, hormone, neuron, artery, vein, capillary

CONNECTION TO FUTURE LEARNING:
Understanding body systems prepares students for anatomy and physiology in high school. This knowledge is essential for health sciences, medicine, and understanding personal health. Systems thinking applies to ecology and other complex system studies.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Human Body Systems' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Ecosystems and Food Webs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Ecosystems and Food Webs' AND grade_level_min = 7),
  'Ecosystems and Food Webs (Grade 7) Topic Guide', 'Energy flow and matter cycling in ecosystems',
  'ECOSYSTEMS AND FOOD WEBS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand that organisms need energy to survive and that energy comes from food. They should know basic classification of organisms (plants, animals, decomposers) and understand simple food chains from elementary school. Familiarity with photosynthesis as how plants make food is helpful.

LEARNING OBJECTIVES:
- Distinguish between food chains and food webs, explaining why webs are more realistic representations
- Trace the flow of energy through trophic levels from producers to consumers
- Explain why energy decreases at each trophic level (10% rule)
- Analyze the roles of producers, consumers, and decomposers in cycling matter
- Predict the effects of population changes on other organisms in a food web

KEY CONCEPTS:
1) Food webs show the complex feeding relationships in an ecosystem, with organisms having multiple food sources and predators
2) Energy flows in one direction through ecosystems: from the sun to producers to consumers, with only about 10% transferred at each level
3) Producers (autotrophs) form the base of all food webs, converting sunlight into chemical energy through photosynthesis
4) Decomposers are essential for recycling nutrients back into the ecosystem by breaking down dead organisms
5) Changes in one population affect multiple other populations throughout the food web

COMMON MISCONCEPTIONS:
- Believing that food chains are separate from each other rather than interconnected in webs
- Thinking energy is recycled like matter (energy flows one way and is lost as heat)
- Assuming larger predators are always "better" or more important than smaller organisms
- Believing decomposers are unimportant or gross rather than essential for nutrient cycling
- Thinking the arrow in a food chain means "eats" rather than "energy flows to"
- Assuming removing one species won''t significantly affect the ecosystem

TEACHING SEQUENCE:
Begin by constructing simple food chains, then connect them into increasingly complex webs. Use yarn or string activities where students physically represent organisms and connections, then simulate what happens when one is removed. Calculate energy transfer using the 10% rule with concrete numbers. Study local ecosystems and have students create food webs for familiar environments. Use ecosystem simulations to model population dynamics. Analyze real case studies of ecological disruption like the reintroduction of wolves to Yellowstone.

DIFFERENTIATION:
Struggling learners: Start with linear food chains before introducing webs. Use visual organizers with clear producer-consumer-decomposer categories. Focus on familiar organisms and local ecosystems.
Advanced learners: Explore keystone species and their disproportionate impacts, calculate biomass and energy pyramids quantitatively, investigate invasive species effects on native food webs.

VOCABULARY:
Ecosystem, food chain, food web, producer, consumer, decomposer, autotroph, heterotroph, trophic level, primary consumer, secondary consumer, tertiary consumer, apex predator, herbivore, carnivore, omnivore, energy pyramid, biomass

CONNECTION TO FUTURE LEARNING:
Food web understanding is essential for studying biogeochemical cycles and ecosystem dynamics. Students will apply these concepts to environmental science, conservation biology, and understanding human impacts on ecosystems.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ecosystems and Food Webs' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Genetics Basics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Genetics Basics' AND grade_level_min = 7),
  'Genetics Basics (Grade 7) Topic Guide', 'Introduction to heredity and genetic traits',
  'GENETICS BASICS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand that offspring resemble their parents and that traits are passed from generation to generation. They should know about cell structure, particularly the nucleus, and understand that DNA is the genetic material. Basic understanding of reproduction in organisms is helpful.

LEARNING OBJECTIVES:
- Define genes, alleles, and chromosomes and explain their relationships
- Distinguish between dominant and recessive alleles
- Use Punnett squares to predict offspring trait probabilities
- Differentiate between genotype and phenotype
- Explain how genetic variation arises and why it is important

KEY CONCEPTS:
1) Genes are segments of DNA that code for specific traits, and alleles are different versions of the same gene
2) Organisms inherit one allele from each parent, resulting in genotypes that determine phenotypes
3) Dominant alleles mask the expression of recessive alleles when present together
4) Punnett squares are tools for predicting the probability of offspring inheriting certain trait combinations
5) Genetic variation within populations arises from different allele combinations and is essential for species survival

COMMON MISCONCEPTIONS:
- Believing dominant means "better" or "stronger" rather than just expressed over recessive
- Thinking traits blend (like mixing paint) rather than following inheritance patterns
- Assuming offspring will show the predicted Punnett square ratios exactly (these are probabilities)
- Believing all traits are controlled by single genes (many are polygenic)
- Thinking that organisms inherit half their DNA from each parent means they''re 50% each parent
- Confusing genetic changes with mutations being always harmful

TEACHING SEQUENCE:
Start with observable traits students can relate to (attached/detached earlobes, tongue rolling, eye color). Use Punnett squares with simple single-trait examples before progressing to more complex situations. Conduct "family trait" surveys while being sensitive to diverse family structures. Use simulations with coins or dice to demonstrate probability concepts. Connect to real-world applications like genetic testing and selective breeding. Discuss the difference between what genes you have (genotype) and what you look like (phenotype).

DIFFERENTIATION:
Struggling learners: Use color coding for dominant and recessive alleles. Focus on monohybrid crosses only. Provide Punnett square templates and step-by-step guides. Use concrete examples with clear inheritance patterns.
Advanced learners: Introduce incomplete dominance and codominance, explore sex-linked traits, investigate genetic disorders and their inheritance patterns, calculate multi-generation probabilities.

VOCABULARY:
Gene, allele, chromosome, dominant, recessive, genotype, phenotype, homozygous, heterozygous, Punnett square, heredity, trait, offspring, probability, inheritance, genetic variation, mutation

CONNECTION TO FUTURE LEARNING:
Genetics basics prepare students for studying DNA structure, genetic engineering, and evolution. High school biology will expand these concepts to molecular genetics, biotechnology, and population genetics. Understanding genetics is increasingly important for personal health decisions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Genetics Basics' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: EARTH SCIENCE OUR DYNAMIC PLANET
-- =============================================

-- Topic: Earth's Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Earth''s Structure' AND grade_level_min = 7),
  'Earth''s Structure (Grade 7) Topic Guide', 'Layers of the Earth and their properties',
  'EARTH''S STRUCTURE - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand that Earth is a planet in our solar system and have basic knowledge of rocks and minerals. They should be familiar with the concept that Earth''s surface has different features like mountains and oceans. Understanding of solid vs liquid states of matter is helpful.

LEARNING OBJECTIVES:
- Identify and describe the four main layers of Earth: crust, mantle, outer core, and inner core
- Explain how scientists use seismic waves to learn about Earth''s interior
- Compare the physical and chemical properties of each layer
- Describe the composition and thickness of Earth''s layers
- Explain the difference between oceanic and continental crust

KEY CONCEPTS:
1) Earth is composed of distinct layers with different compositions, densities, and physical states
2) The thin crust floats on the mantle; oceanic crust is denser and thinner than continental crust
3) The mantle is the thickest layer, composed of hot rock that flows very slowly over geological time
4) The outer core is liquid iron and nickel, creating Earth''s magnetic field through convection
5) Scientists study Earth''s interior using seismic waves from earthquakes, which behave differently in different materials

COMMON MISCONCEPTIONS:
- Believing the mantle is liquid like lava (it''s solid but flows slowly like silly putty)
- Thinking we have directly sampled Earth''s deep interior (deepest drilling is only about 12 km)
- Assuming the crust is uniformly thick everywhere
- Believing Earth''s layers have sharp, distinct boundaries (transitions are gradual)
- Thinking lava comes from the core (it comes from the upper mantle and lower crust)
- Confusing the layers of Earth with layers of the atmosphere

TEACHING SEQUENCE:
Begin with the analogy of a hard-boiled egg (shell=crust, white=mantle, yolk=core). Create scale models showing relative thicknesses of layers. Investigate how seismic waves travel through different materials using springs or slinkies. Analyze how shadow zones from earthquakes reveal information about the core. Compare densities of different materials to understand layer stratification. Use virtual journeys to Earth''s center with accurate scale and temperatures. Connect to real-world applications like geothermal energy and mining.

DIFFERENTIATION:
Struggling learners: Focus on the four main layers and their basic characteristics. Use color-coded diagrams and hands-on models. Emphasize the main idea that Earth is layered by density.
Advanced learners: Explore the asthenosphere and lithosphere distinction, investigate convection currents in the mantle, research how the magnetic field is generated in the outer core.

VOCABULARY:
Crust, mantle, outer core, inner core, lithosphere, asthenosphere, oceanic crust, continental crust, seismic waves, density, composition, convection, magnetic field, geologist, seismologist

CONNECTION TO FUTURE LEARNING:
Understanding Earth''s structure is foundational for plate tectonics and geological processes. Students will use this knowledge to understand earthquakes, volcanoes, and mountain formation. This connects to environmental science and resource geology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Earth''s Structure' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Plate Tectonics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Plate Tectonics' AND grade_level_min = 7),
  'Plate Tectonics (Grade 7) Topic Guide', 'Moving continents and plate boundaries',
  'PLATE TECTONICS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand Earth''s layered structure, particularly the crust and upper mantle. They should have heard of continents and oceans and ideally be familiar with continental drift concept. Understanding that the mantle can flow slowly over long time periods is essential.

LEARNING OBJECTIVES:
- Explain the theory of plate tectonics and the evidence supporting it
- Identify and describe the three types of plate boundaries
- Predict geological features and events that occur at each boundary type
- Explain the role of convection currents in plate movement
- Trace the historical development of plate tectonic theory from continental drift

KEY CONCEPTS:
1) Earth''s lithosphere is broken into plates that move slowly on the flowing asthenosphere below
2) Convection currents in the mantle drive plate movement through the circulation of hot material
3) Divergent boundaries occur where plates move apart, creating new crust at mid-ocean ridges
4) Convergent boundaries occur where plates collide, causing subduction, mountains, or volcanic arcs
5) Transform boundaries occur where plates slide past each other, causing earthquakes

COMMON MISCONCEPTIONS:
- Believing continents plow through oceanic crust rather than plates carrying continents
- Thinking plates move quickly (they move at roughly the rate fingernails grow)
- Assuming all plate boundaries produce the same geological features
- Believing earthquakes and volcanoes occur randomly rather than at plate boundaries
- Thinking continental drift and plate tectonics are the same theory
- Assuming the Atlantic and Pacific oceans have always existed as they do now

TEACHING SEQUENCE:
Begin with the puzzle-piece fit of continents, especially South America and Africa. Present multiple lines of evidence: fossil distributions, rock formations, climate evidence. Use maps showing earthquake and volcano locations to reveal plate boundaries. Model the three boundary types using hands, graham crackers, or clay. Simulate convection currents with colored water in a heated container. Create flipbooks showing continental movement over geological time. Discuss how plate tectonics connects to earthquake and volcano prediction.

DIFFERENTIATION:
Struggling learners: Focus on the main idea that Earth''s surface is broken into moving pieces. Use simplified maps with major plates. Emphasize the three boundary types with clear examples (Mid-Atlantic Ridge, Himalayas, San Andreas Fault).
Advanced learners: Investigate mantle plumes and hot spots, calculate plate movement rates from GPS data, research supercontinent cycles (Pangaea, Rodinia), explore subduction zone dynamics.

VOCABULARY:
Plate tectonics, lithosphere, asthenosphere, continental drift, divergent boundary, convergent boundary, transform boundary, subduction, mid-ocean ridge, rift valley, convection current, Pangaea, fault, seafloor spreading

CONNECTION TO FUTURE LEARNING:
Plate tectonics explains the distribution of earthquakes, volcanoes, and mountains studied in subsequent units. This concept is fundamental to understanding rock cycles, geological time, and Earth''s dynamic systems. Applications include earthquake preparedness and natural resource location.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Plate Tectonics' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Weather vs Climate
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Weather vs Climate' AND grade_level_min = 7),
  'Weather vs Climate (Grade 7) Topic Guide', 'Understanding short-term and long-term atmospheric patterns',
  'WEATHER VS CLIMATE - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have experience observing and describing weather conditions and understand basic atmospheric concepts like temperature, precipitation, and wind. They should know that different places have different typical weather patterns. Familiarity with maps and data interpretation is helpful.

LEARNING OBJECTIVES:
- Clearly distinguish between weather and climate using time scale and geographic scale
- Identify and describe the factors that influence climate
- Interpret climate data including temperature and precipitation graphs
- Explain how latitude, elevation, and proximity to water affect climate
- Analyze evidence of climate change and its potential impacts

KEY CONCEPTS:
1) Weather describes atmospheric conditions at a specific place and time; climate describes long-term average weather patterns over 30+ years
2) Climate is influenced by latitude, elevation, proximity to water bodies, ocean currents, and prevailing winds
3) Different climate zones exist across Earth based on temperature and precipitation patterns
4) Climate data is collected over decades and analyzed statistically to identify trends and patterns
5) Earth''s climate has changed throughout history and is currently changing due to human activities

COMMON MISCONCEPTIONS:
- Using weather and climate interchangeably (a cold day doesn''t disprove climate change)
- Believing climate is just "average weather" without understanding the 30-year timeframe
- Thinking climate is uniform within a region rather than varying with local factors
- Assuming climate change means all places get uniformly warmer
- Believing climate cannot be predicted while weather can (actually the opposite for long-term)
- Confusing climate zones with biomes (related but distinct concepts)

TEACHING SEQUENCE:
Start with personal experience: "What''s the weather today?" vs "What''s the climate here?" Analyze weather data for your location over days, months, and years to see patterns emerge. Compare climographs from different cities around the world. Investigate why cities at similar latitudes have different climates (London vs. Winnipeg). Model the effects of water bodies on temperature moderation. Examine ice core, tree ring, and other paleoclimate evidence. Connect to current climate change data and local impacts.

DIFFERENTIATION:
Struggling learners: Use concrete time comparisons (weather = today, climate = typical year). Focus on the main climate factors of latitude and water proximity. Provide pre-made climograph templates for interpretation.
Advanced learners: Analyze multiple climate datasets, investigate feedback loops in the climate system, research climate models and their predictions, explore microclimates and urban heat islands.

VOCABULARY:
Weather, climate, atmosphere, temperature, precipitation, humidity, latitude, elevation, ocean current, prevailing wind, climate zone, climograph, meteorologist, climatologist, climate change, greenhouse effect

CONNECTION TO FUTURE LEARNING:
Understanding weather vs climate is essential for studying climate change, water cycles, and human impacts on Earth systems. This knowledge applies to environmental science, ecology, and understanding news about climate issues.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Weather vs Climate' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: The Rock Cycle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Rock Cycle' AND grade_level_min = 7),
  'The Rock Cycle (Grade 7) Topic Guide', 'How rocks form, change, and transform over time',
  'THE ROCK CYCLE - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should be able to identify basic rock types (igneous, sedimentary, metamorphic) and understand that rocks are made of minerals. They should have basic knowledge of weathering and erosion concepts. Understanding that Earth processes operate over very long time scales is helpful.

LEARNING OBJECTIVES:
- Describe the formation processes for igneous, sedimentary, and metamorphic rocks
- Explain the rock cycle as a continuous process of transformation
- Identify the geological processes that cause rock transitions
- Classify rocks based on their formation characteristics
- Connect the rock cycle to plate tectonics and other Earth systems

KEY CONCEPTS:
1) The rock cycle is a continuous process where rocks are created, destroyed, and transformed over geological time
2) Igneous rocks form from cooling magma or lava; cooling rate affects crystal size
3) Sedimentary rocks form from accumulated, compacted sediments through lithification
4) Metamorphic rocks form when existing rocks are transformed by heat and/or pressure
5) Plate tectonic processes drive the rock cycle by providing heat, pressure, and movement

COMMON MISCONCEPTIONS:
- Believing rocks cycle in a fixed order rather than potentially transforming in any direction
- Thinking the rock cycle happens quickly or can be observed in a human lifetime
- Assuming all igneous rocks are volcanic (intrusive igneous rocks form underground)
- Believing fossils can be found in any rock type (only sedimentary)
- Thinking metamorphic rocks melt to become metamorphic (melting creates igneous)
- Assuming weathering only breaks rocks into smaller pieces (chemical weathering changes composition)

TEACHING SEQUENCE:
Begin with rock samples and observations before introducing categories. Use hands-on activities like creating "sedimentary rocks" from layered crayon shavings or creating "igneous rocks" from melted chocolate. Model the heat and pressure of metamorphism with modeling clay. Create rock cycle diagrams that show multiple pathways, not just a simple circle. Connect each transformation to specific Earth processes and plate tectonics. Take field trips or virtual explorations to observe rocks in their geological context.

DIFFERENTIATION:
Struggling learners: Focus on the three rock types and one formation process for each. Use a simplified cycle diagram. Emphasize the key idea that rocks change from one type to another over long time periods.
Advanced learners: Explore specific rock textures and classification systems, investigate the mineral composition of different rock types, research how the rock cycle relates to the carbon cycle.

VOCABULARY:
Rock cycle, igneous rock, sedimentary rock, metamorphic rock, magma, lava, weathering, erosion, deposition, compaction, cementation, lithification, heat, pressure, intrusive, extrusive, mineral, crystallization

CONNECTION TO FUTURE LEARNING:
The rock cycle connects to geological resources, fossil formation, and understanding Earth''s history. Students will use this knowledge in studying natural resources, environmental geology, and historical geology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Rock Cycle' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Natural Resources
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Natural Resources' AND grade_level_min = 7),
  'Natural Resources (Grade 7) Topic Guide', 'Types, uses, and conservation of Earth''s resources',
  'NATURAL RESOURCES - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand that humans depend on the environment for materials and energy. They should be familiar with common materials like metals, fuels, and water. Basic understanding of the rock cycle and Earth''s structure provides helpful context for resource formation.

LEARNING OBJECTIVES:
- Classify resources as renewable or nonrenewable and explain the distinction
- Describe how various natural resources form and where they are found
- Analyze the environmental impacts of resource extraction and use
- Evaluate strategies for sustainable resource management
- Connect resource distribution to geological and environmental factors

KEY CONCEPTS:
1) Natural resources are materials from Earth that humans use; they are classified as renewable (can regenerate) or nonrenewable (finite supply)
2) Fossil fuels (coal, oil, natural gas) formed from ancient organisms over millions of years and are being depleted faster than they form
3) Mineral and metal resources form through geological processes and are unevenly distributed across Earth
4) Water, soil, and forests are renewable but can be depleted if used faster than they regenerate
5) Sustainable resource management balances current needs with preservation for future generations

COMMON MISCONCEPTIONS:
- Believing renewable means unlimited (renewable resources can be depleted through overuse)
- Thinking fossil fuels will regenerate in a reasonable timeframe (they form over millions of years)
- Assuming all natural resources are equally distributed across Earth
- Believing recycling alone can solve resource depletion problems
- Thinking conservation means not using resources at all rather than using them wisely
- Assuming new technology will always find alternatives before resources run out

TEACHING SEQUENCE:
Start by inventorying resources used in daily life—where do they come from? Investigate the formation of fossil fuels and why they are concentrated in certain areas. Calculate personal and national resource footprints. Analyze the true cost of products including extraction, processing, transportation, and disposal. Study case studies of resource depletion (fisheries collapse, water shortages). Explore renewable energy alternatives and their tradeoffs. Design sustainable resource management plans for local or hypothetical scenarios.

DIFFERENTIATION:
Struggling learners: Focus on the renewable vs nonrenewable distinction with clear examples. Use visual timelines showing resource formation vs depletion rates. Emphasize familiar resources and local examples.
Advanced learners: Investigate rare earth elements and their importance in technology, analyze the geopolitics of resource distribution, research life cycle analysis of products, explore circular economy concepts.

VOCABULARY:
Natural resource, renewable, nonrenewable, fossil fuel, mineral, ore, extraction, sustainability, conservation, depletion, reserves, recycling, alternative energy, environmental impact, resource management

CONNECTION TO FUTURE LEARNING:
Understanding natural resources connects to environmental science, economics, and civic decision-making. Students will apply these concepts to climate change discussions, energy policy, and personal consumption choices.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Natural Resources' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: PHYSICAL SCIENCE MATTER AND ENERGY
-- =============================================

-- Topic: Properties of Matter
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Properties of Matter' AND grade_level_min = 7),
  'Properties of Matter (Grade 7) Topic Guide', 'Physical and chemical properties of substances',
  'PROPERTIES OF MATTER - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand that all things are made of matter and be familiar with states of matter (solid, liquid, gas). They should have experience measuring properties like mass, volume, and temperature. Basic understanding of atoms and molecules provides helpful context.

LEARNING OBJECTIVES:
- Distinguish between physical and chemical properties of matter
- Calculate density and use it to identify substances
- Differentiate between intensive and extensive properties
- Conduct investigations to determine properties of unknown substances
- Explain how properties are used to classify and identify matter

KEY CONCEPTS:
1) Physical properties can be observed without changing the substance''s chemical composition; chemical properties describe how a substance reacts with other substances
2) Extensive properties (mass, volume) depend on the amount of matter; intensive properties (density, melting point) do not
3) Density is mass per unit volume and is a characteristic intensive property used to identify substances
4) Properties are used to separate mixtures and identify unknown substances
5) Matter can be classified by its properties as elements, compounds, or mixtures

COMMON MISCONCEPTIONS:
- Believing that changing size or shape changes the substance''s identity
- Confusing physical changes with chemical changes (melting is physical, burning is chemical)
- Thinking heavy objects are always denser than light objects (a small gold nugget is denser than a large plastic ball)
- Assuming color change always indicates a chemical change (some physical changes also change color)
- Believing density changes when objects are cut into pieces (intensive property)
- Thinking gases have no mass or density

TEACHING SEQUENCE:
Begin with property investigations—have students measure and describe various substances. Introduce the density formula and practice calculations with different materials. Conduct "mystery substance" investigations where students must identify unknowns using property measurements. Compare physical and chemical properties through demonstrations (melting ice vs. burning wood). Create classification systems based on observed properties. Investigate why objects float or sink using density concepts.

DIFFERENTIATION:
Struggling learners: Focus on the physical vs chemical property distinction with clear examples. Provide density calculation templates and practice with whole numbers. Use density column demonstrations for visual understanding.
Advanced learners: Explore the relationship between molecular structure and properties, investigate phase diagrams, research how forensic scientists use properties to analyze evidence.

VOCABULARY:
Matter, physical property, chemical property, extensive property, intensive property, density, mass, volume, melting point, boiling point, solubility, conductivity, reactivity, characteristic property

CONNECTION TO FUTURE LEARNING:
Understanding properties is foundational for chemistry including atomic structure, periodic trends, and chemical reactions. Students will use these concepts to predict behavior of substances in chemical reactions and understand material science.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties of Matter' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Chemical Reactions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Chemical Reactions' AND grade_level_min = 7),
  'Chemical Reactions (Grade 7) Topic Guide', 'How substances combine and change to form new substances',
  'CHEMICAL REACTIONS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand the difference between physical and chemical properties and changes. They should know that matter is made of atoms and that atoms combine to form molecules. Basic understanding of elements and compounds is essential. Familiarity with chemical symbols is helpful.

LEARNING OBJECTIVES:
- Distinguish between physical and chemical changes using evidence
- Identify evidence that a chemical reaction has occurred
- Interpret simple chemical equations showing reactants and products
- Explain the law of conservation of mass in chemical reactions
- Describe factors that affect reaction rate

KEY CONCEPTS:
1) Chemical reactions involve the breaking of bonds in reactants and formation of new bonds to create products with different properties
2) Evidence of chemical reactions includes color change, gas production, precipitate formation, temperature change, and light emission
3) The law of conservation of mass states that mass is neither created nor destroyed in chemical reactions
4) Chemical equations represent reactions using symbols, with reactants on the left and products on the right
5) Reaction rates are affected by temperature, concentration, surface area, and catalysts

COMMON MISCONCEPTIONS:
- Believing matter is created or destroyed during reactions (atoms are rearranged, not created/destroyed)
- Thinking all color changes indicate chemical reactions (physical changes can also change color)
- Assuming that larger reactant amounts mean faster reactions (concentration matters, not just total amount)
- Believing burning destroys matter rather than converting it to gases
- Confusing dissolving with chemical reactions (dissolving sugar is physical)
- Thinking chemical equations are like math equations where both sides are identical

TEACHING SEQUENCE:
Begin by comparing physical and chemical changes with hands-on investigations (melting vs. burning, dissolving vs. reacting). Conduct classic reaction demonstrations: baking soda and vinegar, elephant toothpaste, color-changing reactions. Introduce conservation of mass by weighing closed systems before and after reactions. Write word equations before introducing chemical formulas. Investigate factors affecting reaction rate through controlled experiments. Connect to everyday chemical reactions: cooking, rusting, digestion.

DIFFERENTIATION:
Struggling learners: Focus on identifying evidence of chemical reactions. Use word equations before symbolic equations. Emphasize the conservation of mass with concrete demonstrations using scales.
Advanced learners: Balance chemical equations, explore types of reactions (synthesis, decomposition, single/double replacement), investigate activation energy and energy diagrams.

VOCABULARY:
Chemical reaction, reactant, product, chemical equation, conservation of mass, precipitate, catalyst, reaction rate, bond, synthesis, decomposition, endothermic, exothermic, evidence

CONNECTION TO FUTURE LEARNING:
Chemical reactions are central to all of chemistry. Students will build on this foundation to understand atomic structure, bonding, stoichiometry, and reaction types in high school chemistry. This knowledge applies to understanding biochemistry, environmental chemistry, and industrial processes.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Chemical Reactions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Forces and Motion
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Forces and Motion' AND grade_level_min = 7),
  'Forces and Motion (Grade 7) Topic Guide', 'How forces affect the motion of objects',
  'FORCES AND MOTION - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have experience describing motion in terms of position, direction, and speed. They should understand that forces are pushes and pulls that can change motion. Basic familiarity with gravity as a force is expected. Experience with measuring distance and time provides a foundation.

LEARNING OBJECTIVES:
- Describe motion using position, speed, velocity, and acceleration
- Calculate speed and average speed from distance and time data
- Explain how balanced and unbalanced forces affect motion
- Apply Newton''s three laws of motion to real-world situations
- Analyze force diagrams to predict motion

KEY CONCEPTS:
1) Motion is described relative to a reference point using position, distance, speed, velocity, and acceleration
2) Speed is distance divided by time; velocity includes direction; acceleration is change in velocity over time
3) Balanced forces result in no change in motion; unbalanced forces cause acceleration
4) Newton''s First Law: objects at rest stay at rest and objects in motion stay in motion unless acted on by unbalanced force
5) Newton''s Second Law: Force equals mass times acceleration (F=ma); Newton''s Third Law: every action has an equal and opposite reaction

COMMON MISCONCEPTIONS:
- Believing motion requires a continuous force (objects in motion stay in motion without force)
- Thinking heavier objects fall faster than lighter objects (in a vacuum they fall at the same rate)
- Confusing speed with acceleration or velocity
- Believing an object at rest has no forces acting on it (balanced forces are acting)
- Thinking the "equal and opposite" forces in Newton''s Third Law cancel out (they act on different objects)
- Assuming friction always opposes motion (static friction can enable motion, like walking)

TEACHING SEQUENCE:
Begin with observations and descriptions of everyday motion. Use motion sensors or video analysis to collect position and time data. Calculate speed from graphs and data tables. Demonstrate balanced vs unbalanced forces with spring scales and carts. Investigate Newton''s First Law with puck and air table or friction demonstrations. Explore F=ma with different masses and forces. Demonstrate Third Law with balloon rockets, skating, and jumping. Create force diagrams for various scenarios.

DIFFERENTIATION:
Struggling learners: Focus on intuitive understanding before mathematical formulas. Use concrete demonstrations extensively. Provide calculation templates for speed problems. Emphasize one Newton''s law at a time.
Advanced learners: Introduce vector addition of forces, analyze complex scenarios with multiple forces, calculate acceleration and apply F=ma quantitatively, research projectile motion.

VOCABULARY:
Motion, position, distance, displacement, speed, velocity, acceleration, force, balanced forces, unbalanced forces, net force, inertia, mass, Newton''s laws, friction, gravity, force diagram

CONNECTION TO FUTURE LEARNING:
Forces and motion concepts are foundational for physics courses. Students will apply Newton''s laws to more complex scenarios including circular motion, momentum, and energy. This knowledge applies to engineering, transportation, and sports science.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Forces and Motion' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Energy Transformations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Energy Transformations' AND grade_level_min = 7),
  'Energy Transformations (Grade 7) Topic Guide', 'How energy changes from one form to another',
  'ENERGY TRANSFORMATIONS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand that energy is needed to make things happen and recognize different forms of energy like light, heat, and motion. They should be familiar with the concepts of potential and kinetic energy at a basic level. Understanding that energy comes from the sun and from food provides context.

LEARNING OBJECTIVES:
- Identify different forms of energy: kinetic, potential, thermal, chemical, electrical, light, sound
- Describe energy transformations in various systems and devices
- Explain the law of conservation of energy
- Analyze energy flow in systems including efficiency and energy loss
- Trace energy transformations from source to final use

KEY CONCEPTS:
1) Energy exists in many forms and can transform from one form to another but is never created or destroyed
2) Kinetic energy is energy of motion; potential energy is stored energy based on position or condition
3) Energy transformations occur constantly in nature and in human-made devices
4) During energy transformations, some energy is always converted to thermal energy (heat), reducing efficiency
5) Tracing energy transformations helps us understand how systems work and how to improve efficiency

COMMON MISCONCEPTIONS:
- Believing energy is used up or consumed rather than transformed
- Thinking energy efficiency can reach 100% (some energy always becomes heat)
- Confusing energy with force or power
- Believing batteries store electricity (they store chemical energy)
- Thinking heat and temperature are the same thing
- Assuming renewable energy sources create energy (they convert existing energy)

TEACHING SEQUENCE:
Start by identifying energy forms in everyday situations. Build Rube Goldberg machines or energy transformation chains. Track energy flow from the sun through food chains to animal movement. Analyze common devices: flashlight (chemical→electrical→light+heat), car (chemical→thermal→kinetic+heat). Calculate efficiency as useful energy out divided by total energy in. Investigate renewable and nonrenewable energy sources. Design systems to minimize energy waste.

DIFFERENTIATION:
Struggling learners: Focus on identifying kinetic and potential energy first. Use energy transformation chains with clear before and after. Provide visual energy flow diagrams. Use familiar examples like bouncing balls and roller coasters.
Advanced learners: Calculate kinetic and potential energy quantitatively, analyze efficiency calculations, research power plant energy transformations, explore entropy and energy quality.

VOCABULARY:
Energy, kinetic energy, potential energy, thermal energy, chemical energy, electrical energy, radiant energy, sound energy, mechanical energy, energy transformation, conservation of energy, efficiency, joule, watt

CONNECTION TO FUTURE LEARNING:
Energy transformation concepts are essential for physics, chemistry, and environmental science. Students will apply these ideas to understanding metabolism, climate, technology, and sustainability issues.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Energy Transformations' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Waves and Sound
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Waves and Sound' AND grade_level_min = 7),
  'Waves and Sound (Grade 7) Topic Guide', 'Properties of waves and how sound travels',
  'WAVES AND SOUND - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand that energy can be transferred and that sound is a form of energy. They should have experience hearing sounds of different pitches and volumes. Basic understanding of vibration as back-and-forth motion is helpful. Familiarity with the concept of waves from water observations provides context.

LEARNING OBJECTIVES:
- Describe waves using amplitude, wavelength, frequency, and wave speed
- Distinguish between transverse and longitudinal waves
- Explain how sound is produced, transmitted, and received
- Relate pitch to frequency and loudness to amplitude
- Describe wave behaviors including reflection, refraction, and absorption

KEY CONCEPTS:
1) Waves transfer energy without transferring matter; particles vibrate but don''t travel with the wave
2) Wave properties include amplitude (height), wavelength (length of one cycle), frequency (waves per second), and wave speed
3) Sound is a longitudinal wave that requires a medium to travel; it cannot travel through a vacuum
4) Pitch depends on frequency (higher frequency = higher pitch); loudness depends on amplitude (larger amplitude = louder)
5) Waves can be reflected, refracted (bent), absorbed, or transmitted when they encounter different materials

COMMON MISCONCEPTIONS:
- Believing waves carry matter along with them (only energy travels)
- Thinking sound can travel through empty space like light can
- Confusing loudness with pitch (these are independent properties)
- Believing all waves are the same type (transverse vs longitudinal)
- Thinking the medium moves in the direction the wave travels (it oscillates)
- Assuming sound travels at the same speed in all materials (faster in solids, slower in gases)

TEACHING SEQUENCE:
Begin with wave observations using ropes, slinkies, and water tanks. Measure wavelength and amplitude from wave diagrams and observations. Generate sound waves with tuning forks and observe their properties. Investigate how sound travels through different media. Use oscilloscopes or frequency apps to visualize sound waves. Explore pitch and loudness relationships with musical instruments. Investigate reflection (echoes), absorption (soundproofing), and refraction through demonstrations.

DIFFERENTIATION:
Struggling learners: Focus on the main wave properties and the transverse/longitudinal distinction. Use visual wave diagrams with labeled parts. Emphasize concrete sound examples for abstract wave concepts.
Advanced learners: Calculate wave speed using frequency and wavelength, explore the Doppler effect, investigate resonance and standing waves, research ultrasound and infrasound applications.

VOCABULARY:
Wave, amplitude, wavelength, frequency, wave speed, transverse wave, longitudinal wave, compression, rarefaction, medium, pitch, loudness, decibel, hertz, vibration, reflection, refraction, absorption

CONNECTION TO FUTURE LEARNING:
Wave concepts apply to light, electromagnetic radiation, and advanced physics. Students will use these principles to understand optics, communication technology, and medical imaging. This foundation is essential for physics and engineering studies.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Waves and Sound' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: SCIENTIFIC INQUIRY
-- =============================================

-- Topic: The Scientific Method
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Scientific Method' AND grade_level_min = 7),
  'The Scientific Method (Grade 7) Topic Guide', 'Systematic process for scientific investigation',
  'THE SCIENTIFIC METHOD - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have experience conducting simple investigations and making observations. They should understand the difference between observation and inference. Basic familiarity with asking questions and making predictions provides foundation. Experience recording and organizing information is helpful.

LEARNING OBJECTIVES:
- Describe the steps of the scientific method and their purpose
- Formulate testable hypotheses from research questions
- Design controlled experiments with independent and dependent variables
- Identify control groups and explain their importance
- Recognize that the scientific method is iterative, not strictly linear

KEY CONCEPTS:
1) The scientific method is a systematic approach to investigation involving questioning, hypothesizing, testing, analyzing, and concluding
2) A hypothesis is a testable prediction that can be supported or refuted by evidence
3) Controlled experiments manipulate one variable (independent) while measuring another (dependent), keeping all other variables constant
4) Control groups provide a baseline for comparison; they differ from experimental groups only in the variable being tested
5) Scientific knowledge is tentative and subject to revision based on new evidence and investigation

COMMON MISCONCEPTIONS:
- Believing the scientific method is a rigid linear sequence that must be followed exactly
- Thinking a hypothesis is just a guess rather than an educated prediction based on prior knowledge
- Confusing the hypothesis with the prediction or conclusion
- Believing an experiment that doesn''t support the hypothesis is a failure (it provides valuable information)
- Thinking scientists work alone rather than collaborating and building on others'' work
- Assuming one experiment proves something definitively (replication is essential)

TEACHING SEQUENCE:
Begin with discussions of how scientists actually work—it''s messier than textbook descriptions. Practice writing testable vs untestable hypotheses. Design experiments for real questions, identifying variables explicitly. Critique experimental designs for flaws and improvements. Conduct actual investigations where students must apply the method. Analyze historical case studies showing the iterative nature of science. Emphasize that negative results are still results.

DIFFERENTIATION:
Struggling learners: Provide step-by-step templates for experimental design. Use familiar scenarios for practice. Focus on identifying independent and dependent variables. Use graphic organizers for the method steps.
Advanced learners: Analyze complex experimental designs with multiple variables, explore different research methods beyond experiments (observational, correlational), research how major scientific discoveries actually happened.

VOCABULARY:
Scientific method, hypothesis, variable, independent variable, dependent variable, controlled variable, control group, experimental group, observation, inference, conclusion, data, evidence, replicate, peer review

CONNECTION TO FUTURE LEARNING:
The scientific method is foundational to all science courses and scientific literacy. Students will apply these skills throughout their education and in evaluating scientific claims in daily life. This process is central to careers in research, medicine, engineering, and many other fields.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Scientific Method' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Data Collection and Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Data Collection and Analysis' AND grade_level_min = 7),
  'Data Collection and Analysis (Grade 7) Topic Guide', 'Gathering, organizing, and interpreting scientific data',
  'DATA COLLECTION AND ANALYSIS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have basic math skills including calculating averages and percentages. They should be familiar with tables and basic graphs from math classes. Understanding of measurement and units is essential. Experience recording observations from earlier investigations provides foundation.

LEARNING OBJECTIVES:
- Design data tables appropriate for different types of investigations
- Collect quantitative and qualitative data accurately and consistently
- Create appropriate graphs to display different types of data
- Calculate mean, median, mode, and range for data sets
- Identify patterns, trends, and anomalies in data

KEY CONCEPTS:
1) Data can be quantitative (numerical, measured) or qualitative (descriptive, observed)
2) Data tables organize information systematically with clear labels, units, and multiple trials
3) Different graph types serve different purposes: bar graphs for categories, line graphs for continuous data, scatter plots for relationships
4) Statistical measures (mean, median, mode, range) summarize data sets and help identify patterns
5) Anomalies or outliers may indicate measurement errors or interesting phenomena worthy of investigation

COMMON MISCONCEPTIONS:
- Believing more decimal places always means more accuracy (precision vs accuracy)
- Thinking one trial is sufficient to draw conclusions (multiple trials reduce error)
- Choosing graph types based on preference rather than data type
- Confusing correlation with causation in data analysis
- Believing data that doesn''t match expectations must be wrong (could reveal new findings)
- Thinking average is the only important statistical measure

TEACHING SEQUENCE:
Practice designing data tables before collecting data. Conduct investigations that generate real data requiring analysis. Create different graph types and discuss when each is appropriate. Calculate statistical measures by hand before using technology. Identify trends, patterns, and outliers in sample data sets. Critique data presentations for clarity and accuracy. Discuss sources of error and how to minimize them.

DIFFERENTIATION:
Struggling learners: Provide data table templates and graph paper with scales. Focus on one statistical measure at a time. Use small, simple data sets for practice. Connect to familiar contexts like sports statistics.
Advanced learners: Introduce standard deviation and error bars, explore correlation coefficients, analyze real scientific data sets, learn to use spreadsheet software for analysis.

VOCABULARY:
Data, quantitative data, qualitative data, data table, graph, bar graph, line graph, scatter plot, mean, median, mode, range, trend, pattern, outlier, precision, accuracy, significant figures, trial

CONNECTION TO FUTURE LEARNING:
Data analysis skills are essential for all sciences and many other fields. Students will use increasingly sophisticated statistical methods in high school and college. These skills transfer to understanding research, journalism, and making evidence-based decisions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Data Collection and Analysis' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Drawing Conclusions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Drawing Conclusions' AND grade_level_min = 7),
  'Drawing Conclusions (Grade 7) Topic Guide', 'Making valid inferences from scientific evidence',
  'DRAWING CONCLUSIONS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have experience conducting investigations and analyzing data. They should understand the scientific method including hypotheses and variables. Ability to identify patterns in data is essential. Understanding the difference between observation and inference provides foundation.

LEARNING OBJECTIVES:
- Draw logical conclusions supported by experimental evidence
- Distinguish between results, conclusions, and inferences
- Evaluate whether conclusions are valid based on the experimental design
- Identify limitations of investigations and sources of error
- Propose follow-up questions and investigations based on conclusions

KEY CONCEPTS:
1) Conclusions must be based on evidence and directly address the original question or hypothesis
2) Valid conclusions consider the experimental design, sample size, and potential sources of error
3) Results describe what happened; conclusions explain what it means; inferences go beyond the data
4) Every investigation has limitations that affect the confidence we can place in conclusions
5) Good conclusions often lead to new questions and further investigation

COMMON MISCONCEPTIONS:
- Believing conclusions must always support the hypothesis (rejecting a hypothesis is valuable)
- Thinking one experiment proves something definitively (science requires replication)
- Confusing stating results with drawing conclusions
- Overgeneralizing from limited data or specific conditions
- Ignoring or dismissing unexpected results rather than explaining them
- Believing scientists are always objective and never biased

TEACHING SEQUENCE:
Provide practice analyzing others'' experiments and evaluating their conclusions. Distinguish between valid and invalid conclusions with examples. Write conclusions that reference specific evidence from investigations. Identify limitations and sources of error in various experimental designs. Discuss how sample size affects confidence in conclusions. Practice generating new questions from experimental results. Examine real scientific controversies where evidence supports multiple conclusions.

DIFFERENTIATION:
Struggling learners: Provide conclusion sentence starters that connect to evidence. Use simple investigations with clear results. Focus on the evidence-conclusion connection. Create checklists for valid conclusions.
Advanced learners: Analyze peer-reviewed research conclusions, explore statistical significance concepts, investigate how scientific consensus develops over time, examine historical examples of changing conclusions.

VOCABULARY:
Conclusion, evidence, inference, results, hypothesis, support, refute, valid, limitation, error, sample size, replication, peer review, scientific consensus, tentative, revision

CONNECTION TO FUTURE LEARNING:
Drawing valid conclusions is a critical thinking skill that applies beyond science. Students will encounter increasingly complex research requiring sophisticated evaluation in higher education. This skill is essential for scientific literacy and informed citizenship.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Drawing Conclusions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;
