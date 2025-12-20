-- Grade 2 Science Topic Prompts
-- Comprehensive teaching guides for each topic

-- =====================================================
-- UNIT: MATTER AND MATERIALS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Properties of Matter' AND grade_level_min = 2),
  'Properties of Matter Topic Guide', 'Describe objects by color, texture, size, and shape',
  'PROPERTIES OF MATTER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have experience using senses to observe. Basic vocabulary for describing objects. Understanding that matter is anything that takes up space.

LEARNING OBJECTIVES:
- Describe objects using observable properties
- Classify objects by properties like color, texture, size, shape, hardness
- Compare and contrast objects based on their properties
- Understand that properties help us identify and sort matter

KEY CONCEPTS:
1) Properties are characteristics we can observe or measure
2) Color, texture, size, shape, and hardness are physical properties
3) Different objects have different combinations of properties
4) We can use properties to sort and classify objects
5) The same material can have different properties (hot water vs cold water)

COMMON MISCONCEPTIONS:
- Thinking properties are always permanent
- Confusing properties with uses
- Believing only large differences count as different properties
- Not recognizing that the same object can be described many ways

TEACHING SEQUENCE:
Gather various objects for hands-on exploration. Describe one object using all senses: "This is smooth, red, small, and hard." Create property charts for objects. Play "guess the object" using property clues. Sort objects different ways using different properties. Measure and compare sizes. Explore texture through touch activities. Connect to real-world sorting (organizing toys, groceries).

DIFFERENTIATION:
Struggling learners: Focus on one property at a time, use sensory exploration, provide property word cards. Advanced learners: Create their own sorting categories, measure properties precisely, compare properties of similar objects.

VOCABULARY:
Property, color, texture, size, shape, hard, soft, rough, smooth, heavy, light, describe, classify, sort.

CONNECTION TO FUTURE LEARNING:
Understanding properties builds foundation for states of matter, chemical properties, and scientific measurement in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties of Matter' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Solids, Liquids, and Gases' AND grade_level_min = 2),
  'Solids, Liquids, and Gases Topic Guide', 'Identify the three states of matter',
  'SOLIDS, LIQUIDS, AND GASES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that matter has properties. Experience observing different materials. Basic vocabulary for describing states.

LEARNING OBJECTIVES:
- Identify and describe the three states of matter
- Classify objects as solid, liquid, or gas
- Describe properties unique to each state
- Provide examples of each state of matter

KEY CONCEPTS:
1) Solids hold their shape and have a definite form
2) Liquids take the shape of their container and can pour
3) Gases spread out to fill any space and are often invisible
4) All matter is made of tiny particles too small to see
5) The same substance can exist in different states (water, ice, steam)

COMMON MISCONCEPTIONS:
- Thinking only hard things are solids
- Believing gases don''t exist because we can''t see them
- Confusing soft solids (pillow) with liquids
- Thinking all liquids are like water

TEACHING SEQUENCE:
Explore examples of each state: ice cube (solid), water (liquid), air (gas). Pour liquids to show shape-taking. Observe that solids keep shape when moved. Use balloons to show gas takes up space. Sort everyday objects by state. Discuss tricky examples: Is toothpaste solid or liquid? Is sand solid or liquid? Connect to water in different states.

DIFFERENTIATION:
Struggling learners: Focus on clear examples first (rock, water, air), use hands-on sorting, relate to familiar objects. Advanced learners: Explore substances that behave unusually (oobleck), investigate how temperature affects state, research plasma as fourth state.

VOCABULARY:
Solid, liquid, gas, matter, state, shape, container, pour, flow, particles, invisible, fill.

CONNECTION TO FUTURE LEARNING:
Understanding states of matter prepares students for phase changes, particle theory, and chemistry concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solids, Liquids, and Gases' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Heating and Cooling' AND grade_level_min = 2),
  'Heating and Cooling Topic Guide', 'Observe how temperature changes matter',
  'HEATING AND COOLING - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand the three states of matter. Basic concept of hot and cold. Ability to make observations over time.

LEARNING OBJECTIVES:
- Observe that heating can change matter from solid to liquid to gas
- Observe that cooling can change matter from gas to liquid to solid
- Predict what will happen when matter is heated or cooled
- Connect temperature changes to state changes

KEY CONCEPTS:
1) Heating adds energy to matter and can change its state
2) Cooling removes energy from matter and can change its state
3) Ice melts when heated, water freezes when cooled
4) Water evaporates when heated, steam condenses when cooled
5) Some materials change states at different temperatures

COMMON MISCONCEPTIONS:
- Thinking all matter melts at the same temperature
- Believing matter disappears when it evaporates
- Not understanding that cooling is removing heat (not adding cold)
- Thinking state changes happen instantly

TEACHING SEQUENCE:
Conduct ice cube investigations: time how long to melt, observe changes. Heat water to see evaporation (steam). Cool surfaces to see condensation. Make predictions before each experiment. Record observations. Connect to everyday experiences: chocolate melting, frost forming, puddles drying. Discuss safety around heat sources.

DIFFERENTIATION:
Struggling learners: Focus on water states first, use visible dramatic changes, provide observation guides. Advanced learners: Compare melting times of different substances, investigate factors that affect melting (salt on ice), research materials with unusual melting points.

VOCABULARY:
Heat, cool, melt, freeze, evaporate, condense, temperature, state change, energy, predict, observe.

CONNECTION TO FUTURE LEARNING:
Understanding heating and cooling connects to thermal energy, particle motion, and phase diagrams in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Heating and Cooling' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Choosing Materials' AND grade_level_min = 2),
  'Choosing Materials Topic Guide', 'Select the best material for a purpose',
  'CHOOSING MATERIALS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand properties of matter and states of matter. Ability to compare objects. Basic understanding of uses for different objects.

LEARNING OBJECTIVES:
- Understand that different materials have different properties
- Match material properties to their purposes
- Explain why certain materials are chosen for certain uses
- Design solutions by selecting appropriate materials

KEY CONCEPTS:
1) We choose materials based on what we need them to do
2) Strong materials are used where strength is needed (buildings)
3) Flexible materials are used where bending is needed (rubber bands)
4) Waterproof materials keep water out (raincoats)
5) The best material depends on the purpose

COMMON MISCONCEPTIONS:
- Thinking one material is best for everything
- Not connecting properties to purposes
- Believing expensive materials are always better
- Not recognizing that the same material can serve different purposes

TEACHING SEQUENCE:
Present engineering challenges: What material would make the best boat? (must float) What makes the best window? (must be see-through and strong) Test materials for specific purposes. Design simple solutions using chosen materials. Discuss why houses aren''t made of paper or glass. Explore materials around the classroom and discuss why they were chosen.

DIFFERENTIATION:
Struggling learners: Focus on one property at a time, use obvious examples (umbrella needs waterproof material), hands-on testing. Advanced learners: Design and test their own solutions, explore composite materials, investigate how engineers choose materials.

VOCABULARY:
Material, property, purpose, strong, flexible, waterproof, transparent, durable, design, engineer, select, test.

CONNECTION TO FUTURE LEARNING:
Understanding material selection builds foundation for engineering design, materials science, and technology applications in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Choosing Materials' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: LANDFORMS AND WATER
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Types of Landforms' AND grade_level_min = 2),
  'Types of Landforms Topic Guide', 'Identify mountains, valleys, plains, and more',
  'TYPES OF LANDFORMS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that Earth has different surfaces. Basic map awareness. Vocabulary for describing shapes and sizes.

LEARNING OBJECTIVES:
- Identify and name common landforms: mountains, hills, valleys, plains, plateaus
- Describe the characteristics of each landform type
- Recognize landforms in pictures and on maps
- Understand that landforms exist all over Earth

KEY CONCEPTS:
1) Landforms are natural features on Earth''s surface
2) Mountains are tall, raised areas with peaks
3) Hills are smaller raised areas, lower than mountains
4) Valleys are low areas between mountains or hills
5) Plains are flat, wide-open areas
6) Plateaus are flat areas raised high above sea level

COMMON MISCONCEPTIONS:
- Thinking all raised areas are mountains
- Believing landforms only exist in wilderness
- Confusing landforms with man-made features
- Thinking landforms never change

TEACHING SEQUENCE:
Use pictures and videos of different landforms around the world. Create clay or sand models of each landform type. Compare and contrast features. Use maps with elevation to identify landforms. Find local examples of landforms. Discuss how landforms affect where people live. Create landform vocabulary cards with pictures and descriptions.

DIFFERENTIATION:
Struggling learners: Focus on three main types first (mountain, valley, plain), use hands-on modeling, simple picture matching. Advanced learners: Identify landforms on world maps, research how landforms formed, compare landforms on different continents.

VOCABULARY:
Landform, mountain, hill, valley, plain, plateau, peak, slope, flat, raised, surface, elevation.

CONNECTION TO FUTURE LEARNING:
Understanding landforms prepares students for studying plate tectonics, erosion, and geography in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Types of Landforms' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Bodies of Water' AND grade_level_min = 2),
  'Bodies of Water Topic Guide', 'Learn about oceans, rivers, lakes, and streams',
  'BODIES OF WATER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that water is found in different places. Basic concept that water is essential for life. Map reading basics.

LEARNING OBJECTIVES:
- Identify different bodies of water: oceans, rivers, lakes, streams, ponds
- Describe characteristics of each water body type
- Understand that most of Earth is covered by water
- Recognize water bodies on maps

KEY CONCEPTS:
1) Oceans are vast saltwater bodies covering most of Earth
2) Rivers are flowing water that moves from high to low areas
3) Lakes are large bodies of freshwater surrounded by land
4) Streams and ponds are smaller water bodies
5) Water moves and cycles—rivers flow to oceans, rain fills lakes

COMMON MISCONCEPTIONS:
- Thinking all water bodies contain the same type of water
- Believing oceans are just very big lakes
- Not understanding that rivers move and flow
- Thinking all ponds and lakes are man-made

TEACHING SEQUENCE:
Explore maps showing water bodies. Compare salt water (oceans) to fresh water (most lakes and rivers). Trace river paths from mountains to oceans. Identify local water bodies. Create models or diagrams of water bodies. Discuss how water bodies are used (drinking, transportation, recreation). Connect to water cycle basics.

DIFFERENTIATION:
Struggling learners: Focus on three main types (ocean, river, lake), use clear picture cards, relate to personal experiences. Advanced learners: Research the five oceans, investigate watersheds, explore how water bodies connect to each other.

VOCABULARY:
Ocean, river, lake, stream, pond, saltwater, freshwater, flow, coast, shore, bank, source.

CONNECTION TO FUTURE LEARNING:
Understanding bodies of water prepares students for the water cycle, ecosystems, and oceanography in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Bodies of Water' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Erosion and Weathering' AND grade_level_min = 2),
  'Erosion and Weathering Topic Guide', 'See how wind and water shape the land',
  'EROSION AND WEATHERING - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand different landforms and bodies of water. Basic concept that things change over time. Observation skills.

LEARNING OBJECTIVES:
- Understand that Earth''s surface changes slowly over time
- Identify how water changes land (erosion, carving valleys)
- Identify how wind changes land (erosion, shaping rocks)
- Observe evidence of erosion in the local environment
- Understand that these changes are usually very slow

KEY CONCEPTS:
1) Weathering breaks down rocks into smaller pieces
2) Erosion moves rock and soil from one place to another
3) Water causes erosion through flowing rivers and waves
4) Wind causes erosion by carrying sand and particles
5) These processes take a very long time—thousands to millions of years

COMMON MISCONCEPTIONS:
- Expecting to see erosion happen quickly
- Thinking only water causes erosion
- Believing landforms have always looked the same
- Confusing erosion with natural disasters

TEACHING SEQUENCE:
Conduct erosion experiments with water and sand/soil. Observe how water carves channels. Discuss how the Grand Canyon formed. Look for local evidence of erosion (worn rocks, gullies). Use before/after pictures of landforms. Discuss how waves change coastlines. Create timelines showing slow changes. Connect to everyday observations of wear.

DIFFERENTIATION:
Struggling learners: Focus on water erosion first, use hands-on sand table experiments, observe concrete examples. Advanced learners: Research famous eroded landforms (canyons, arches), investigate factors that speed up erosion, explore prevention methods.

VOCABULARY:
Erosion, weathering, carve, wear away, sand, soil, sediment, flow, gradual, slow, valley, canyon.

CONNECTION TO FUTURE LEARNING:
Understanding erosion prepares students for geology, Earth history, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Erosion and Weathering' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Maps of Earth' AND grade_level_min = 2),
  'Maps of Earth Topic Guide', 'Use maps to find land and water features',
  'MAPS OF EARTH - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should know types of landforms and bodies of water. Basic understanding that maps represent real places. Ability to interpret pictures and symbols.

LEARNING OBJECTIVES:
- Use maps to identify land and water features
- Understand that maps represent real places from above
- Read simple map keys and legends
- Locate landforms and water bodies on maps
- Compare maps to globes

KEY CONCEPTS:
1) Maps show Earth''s surface from above, like a bird''s view
2) Colors on maps often represent features (blue = water, green = land)
3) Map keys explain what symbols mean
4) Globes show Earth''s round shape; maps are flat versions
5) Different maps show different information

COMMON MISCONCEPTIONS:
- Thinking maps are exact pictures of places
- Confusing directions on maps
- Believing all maps use the same colors
- Not understanding scale (things on maps are much smaller than real)

TEACHING SEQUENCE:
Start with classroom maps (desks from above). Transition to local area maps. Explore world maps and globes. Practice using map keys. Find landforms and water on maps. Compare flat maps to round globes—discuss why both are useful. Create simple maps of familiar places. Use technology (Google Earth) to see satellite views.

DIFFERENTIATION:
Struggling learners: Start with very simple maps, use hands-on globe exploration, focus on color coding. Advanced learners: Explore different map types (political, physical), investigate map projections, create detailed maps.

VOCABULARY:
Map, globe, key, legend, symbol, feature, land, water, represent, scale, direction, north, south, east, west.

CONNECTION TO FUTURE LEARNING:
Map skills prepare students for geography, navigation, and spatial reasoning throughout education.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Maps of Earth' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: PLANT AND ANIMAL HABITATS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'What is a Habitat?' AND grade_level_min = 2),
  'What is a Habitat? Topic Guide', 'Learn that habitats provide food, water, and shelter',
  'WHAT IS A HABITAT? - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that living things have needs (food, water, shelter). Basic knowledge of different environments. Vocabulary for describing places.

LEARNING OBJECTIVES:
- Define habitat as a place where living things find what they need
- Identify the basic needs habitats provide: food, water, shelter, space
- Recognize that different animals live in different habitats
- Understand that organisms are adapted to their habitats

KEY CONCEPTS:
1) A habitat is the natural home of plants and animals
2) Habitats provide food for organisms to eat
3) Habitats provide water for organisms to drink
4) Habitats provide shelter for protection and raising young
5) Habitats provide space for organisms to live and grow

COMMON MISCONCEPTIONS:
- Thinking any animal can live in any habitat
- Confusing habitat with ecosystem
- Believing animals choose habitats randomly
- Not understanding that habitats can change

TEACHING SEQUENCE:
Define habitat using classroom examples—fish tank as a habitat. Discuss what the tank provides. Explore pictures of different habitats (forest, ocean, desert). For each, identify what living things find there. Match animals to habitats and explain why. Create habitat dioramas. Discuss what happens when habitats are destroyed.

DIFFERENTIATION:
Struggling learners: Focus on familiar habitats first (backyard, pond), use clear picture matching, relate to pet habitats. Advanced learners: Research unusual habitats, explore how humans create habitats (zoos, aquariums), investigate habitat conservation.

VOCABULARY:
Habitat, home, environment, food, water, shelter, space, needs, survive, adapted, natural.

CONNECTION TO FUTURE LEARNING:
Understanding habitats prepares students for studying ecosystems, adaptations, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What is a Habitat?' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Forest Habitats' AND grade_level_min = 2),
  'Forest Habitats Topic Guide', 'Explore plants and animals that live in forests',
  'FOREST HABITATS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand what a habitat is and what it provides. Basic knowledge of trees and common forest animals. Observation skills.

LEARNING OBJECTIVES:
- Describe the characteristics of forest habitats
- Identify plants and animals that live in forests
- Explain how forest organisms are adapted to their habitat
- Compare different types of forests

KEY CONCEPTS:
1) Forests are habitats with many trees providing shade and food
2) Forest animals include deer, bears, birds, squirrels, insects
3) Forest plants include trees, bushes, ferns, mosses
4) Animals use forests for food (nuts, berries), shelter (trees, burrows), and water
5) Different forests exist: rainforests, deciduous forests, coniferous forests

COMMON MISCONCEPTIONS:
- Thinking all forests are the same
- Believing only ground animals live in forests (many live in trees)
- Not recognizing the importance of decomposers (mushrooms, insects)
- Thinking forests don''t change with seasons

TEACHING SEQUENCE:
Take a nature walk in a local forest or park if possible. Observe different plants at different levels (ground, understory, canopy). Identify animal evidence (nests, tracks, sounds). Create forest habitat diagrams. Compare rainforest to local forest using pictures. Discuss how forest animals find food and shelter. Read books about forest animals and their adaptations.

DIFFERENTIATION:
Struggling learners: Focus on familiar forest animals, use hands-on nature exploration, simple animal-habitat matching. Advanced learners: Compare forest types around the world, investigate food webs in forests, explore seasonal changes in deciduous forests.

VOCABULARY:
Forest, trees, canopy, understory, deciduous, coniferous, rainforest, shelter, burrow, nest, adapted.

CONNECTION TO FUTURE LEARNING:
Understanding forest habitats prepares students for ecosystem studies and environmental conservation topics in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Forest Habitats' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Desert Habitats' AND grade_level_min = 2),
  'Desert Habitats Topic Guide', 'Learn how living things survive in deserts',
  'DESERT HABITATS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand what a habitat is. Basic knowledge that different places have different weather. Concept that living things have needs.

LEARNING OBJECTIVES:
- Describe the characteristics of desert habitats (hot, dry, little rain)
- Identify plants and animals that live in deserts
- Explain special adaptations for surviving with little water
- Understand that deserts can be hot or cold

KEY CONCEPTS:
1) Deserts receive very little rainfall
2) Desert organisms have special adaptations for water conservation
3) Many desert animals are active at night when it''s cooler
4) Desert plants (cacti) store water and have few leaves
5) Not all deserts are hot—some are cold (Antarctica)

COMMON MISCONCEPTIONS:
- Thinking deserts have no life
- Believing all deserts are hot and sandy
- Assuming desert animals need as much water as other animals
- Thinking only cacti grow in deserts

TEACHING SEQUENCE:
Compare desert to forest—discuss differences in water, plants, temperature. Explore pictures of desert plants and animals. Investigate adaptations: camel humps, cactus water storage, nocturnal behavior. Create desert habitat models. Discuss survival strategies. Compare hot deserts (Sahara) to cold deserts (Antarctica). Research how desert organisms find water.

DIFFERENTIATION:
Struggling learners: Focus on a few key adaptations, use clear contrasts with other habitats, explore through pictures and videos. Advanced learners: Research specific desert organisms in depth, investigate how humans survive in deserts, explore desert food chains.

VOCABULARY:
Desert, dry, arid, cactus, adaptation, nocturnal, water conservation, sand, hot, cold, survive.

CONNECTION TO FUTURE LEARNING:
Understanding desert adaptations prepares students for deeper study of evolution, adaptation, and biomes in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Desert Habitats' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Ocean Habitats' AND grade_level_min = 2),
  'Ocean Habitats Topic Guide', 'Discover life in the ocean',
  'OCEAN HABITATS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand what a habitat is. Basic knowledge of different water bodies. Vocabulary for describing marine life.

LEARNING OBJECTIVES:
- Describe the characteristics of ocean habitats
- Identify various ocean organisms (fish, whales, sharks, corals, jellyfish)
- Explain how ocean animals are adapted to life in water
- Recognize different ocean zones (surface, deep)

KEY CONCEPTS:
1) Oceans cover most of Earth''s surface
2) Ocean water is salty
3) Ocean animals have adaptations for underwater life (gills, fins, streamlined bodies)
4) Different depths have different animals and conditions
5) Coral reefs are special ocean habitats with huge biodiversity

COMMON MISCONCEPTIONS:
- Thinking all ocean animals are fish
- Believing the ocean is the same everywhere
- Confusing saltwater and freshwater organisms
- Thinking ocean animals don''t need to breathe (they do—some come up for air)

TEACHING SEQUENCE:
Explore pictures and videos of ocean life. Compare ocean animals to land animals—how do they breathe, move, find food? Discuss ocean zones: sunny surface vs dark deep sea. Investigate coral reefs as special habitats. Create ocean habitat murals. Discuss adaptations like gills and fins. If possible, visit an aquarium or use virtual tours.

DIFFERENTIATION:
Struggling learners: Focus on familiar ocean animals (fish, dolphins, whales), use video exploration, simple comparisons. Advanced learners: Research deep-sea creatures, investigate bioluminescence, explore ocean conservation issues.

VOCABULARY:
Ocean, saltwater, fish, whale, shark, coral, reef, gills, fins, surface, deep sea, marine.

CONNECTION TO FUTURE LEARNING:
Understanding ocean habitats prepares students for marine biology, ocean ecosystems, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ocean Habitats' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Food Chains' AND grade_level_min = 2),
  'Food Chains Topic Guide', 'Understand how energy moves from plants to animals',
  'FOOD CHAINS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that living things need food. Basic knowledge of habitats and what lives in them. Concept that some animals eat plants, others eat animals.

LEARNING OBJECTIVES:
- Understand that food chains show how energy moves from one organism to another
- Identify producers (plants) as the start of food chains
- Identify consumers (animals) that eat producers or other consumers
- Create simple food chains for different habitats
- Understand that all food chains start with the sun''s energy

KEY CONCEPTS:
1) A food chain shows who eats whom
2) Producers (plants) make their own food using sunlight
3) Consumers eat other living things to get energy
4) Herbivores eat plants, carnivores eat animals, omnivores eat both
5) Energy flows from sun → producers → consumers

COMMON MISCONCEPTIONS:
- Thinking food chains are literally chains
- Believing producers don''t need energy
- Confusing predator and prey
- Thinking arrows point to the eater (they show energy flow)

TEACHING SEQUENCE:
Start with simple examples: grass → rabbit → fox. Discuss who eats whom. Explain that arrows show energy movement, not "eats." Create food chains for different habitats. Identify producers and consumers. Discuss what happens if one part of the chain is removed. Use pictures to create physical food chains. Connect to the sun as the original energy source.

DIFFERENTIATION:
Struggling learners: Start with two-step chains, use familiar animals, physical chain activities. Advanced learners: Create food webs with multiple connections, investigate what happens when links are broken, explore decomposers.

VOCABULARY:
Food chain, energy, producer, consumer, herbivore, carnivore, omnivore, predator, prey, sun, flow.

CONNECTION TO FUTURE LEARNING:
Understanding food chains prepares students for food webs, ecosystems, and energy flow concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Food Chains' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: BIODIVERSITY
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Variety of Life' AND grade_level_min = 2),
  'Variety of Life Topic Guide', 'Explore the many different plants and animals on Earth',
  'VARIETY OF LIFE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand habitats and that different organisms live in different places. Basic classification skills. Experience observing nature.

LEARNING OBJECTIVES:
- Recognize that Earth has an incredible variety of living things
- Appreciate differences and similarities among organisms
- Understand that variety exists in all habitats
- Begin to classify organisms into groups

KEY CONCEPTS:
1) Millions of different species live on Earth
2) Variety (biodiversity) means many different types of living things
3) Even within one habitat, many different organisms exist
4) Living things can be grouped by similarities (birds, fish, mammals)
5) New species are still being discovered

COMMON MISCONCEPTIONS:
- Thinking we know about all species
- Believing only obvious animals count as biodiversity
- Not recognizing variety in plants and small organisms
- Thinking all animals in a group look the same

TEACHING SEQUENCE:
Explore pictures of diverse organisms from around the world. Count how many different organisms live in one habitat. Compare similar organisms (different types of birds, fish). Classify organisms into groups. Observe variety in local environment. Discuss how scientists discover new species. Create biodiversity posters showing many different organisms.

DIFFERENTIATION:
Struggling learners: Focus on observable differences, use sorting activities, explore local variety first. Advanced learners: Research newly discovered species, investigate how scientists classify organisms, explore variety within one group deeply.

VOCABULARY:
Variety, biodiversity, species, different, similar, classify, group, organism, discover, diverse.

CONNECTION TO FUTURE LEARNING:
Understanding variety of life prepares students for classification systems, evolution, and ecology in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Variety of Life' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Why Diversity Matters' AND grade_level_min = 2),
  'Why Diversity Matters Topic Guide', 'Learn why it is important to have many species',
  'WHY DIVERSITY MATTERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that many different organisms exist. Basic knowledge of food chains. Concept that living things depend on each other.

LEARNING OBJECTIVES:
- Understand why having many species is important
- Recognize that organisms depend on each other
- Explain what might happen if a species disappears
- Appreciate the value of biodiversity

KEY CONCEPTS:
1) Different organisms do different jobs in nature (pollination, decomposition)
2) Food chains require many different species
3) If one species disappears, others are affected
4) Diversity makes ecosystems stronger
5) Humans benefit from biodiversity (food, medicine, clean air)

COMMON MISCONCEPTIONS:
- Thinking only "important" animals matter
- Believing losing one species doesn''t affect others
- Not understanding that small organisms are essential
- Thinking nature can easily replace lost species

TEACHING SEQUENCE:
Discuss roles different organisms play: bees pollinate, worms decompose. Explore what happens if bees disappear (less food!). Use food chain examples to show connections. Discuss how humans use nature (food, medicine, beauty). Create "web of life" activities showing connections. Discuss conservation as protecting diversity.

DIFFERENTIATION:
Struggling learners: Focus on one clear example (bees and flowers), use visual webs of connections, relate to personal experiences. Advanced learners: Research specific examples of species loss impacts, investigate ecosystem services, explore local conservation efforts.

VOCABULARY:
Diversity, important, ecosystem, depend, pollinate, decompose, connected, balance, protect, conservation.

CONNECTION TO FUTURE LEARNING:
Understanding why diversity matters prepares students for ecology, conservation biology, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Why Diversity Matters' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Protecting Wildlife' AND grade_level_min = 2),
  'Protecting Wildlife Topic Guide', 'Understand how we can help endangered species',
  'PROTECTING WILDLIFE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand why diversity matters. Basic knowledge of threats to animals (habitat loss). Concept of endangered species.

LEARNING OBJECTIVES:
- Understand what endangered means
- Identify threats to wildlife (habitat loss, pollution)
- Learn ways people help protect wildlife
- Recognize actions students can take to help

KEY CONCEPTS:
1) Endangered species are at risk of disappearing forever
2) Habitat destruction is a major threat to wildlife
3) Pollution and climate change also threaten animals
4) Zoos and conservation programs help protect endangered species
5) Everyone can help through small actions

COMMON MISCONCEPTIONS:
- Thinking endangered animals will magically recover
- Believing only famous animals (pandas, tigers) need protection
- Assuming children can''t make a difference
- Thinking problems are too big to solve

TEACHING SEQUENCE:
Introduce concept of endangered species with familiar examples (pandas, tigers). Discuss why animals become endangered. Explore what people do to help (national parks, zoos, laws). Identify local endangered species. Brainstorm actions students can take (reduce, reuse, recycle). Create "help wildlife" posters. Discuss success stories of species recovery.

DIFFERENTIATION:
Struggling learners: Focus on one endangered animal story, use pictures and videos, simple action ideas. Advanced learners: Research specific conservation programs, investigate local endangered species, create action plans.

VOCABULARY:
Endangered, extinct, protect, conserve, habitat, threat, pollution, zoo, wildlife, species, help.

CONNECTION TO FUTURE LEARNING:
Understanding wildlife protection prepares students for environmental science, conservation, and civic engagement in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Protecting Wildlife' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Local Nature' AND grade_level_min = 2),
  'Local Nature Topic Guide', 'Observe plants and animals in your neighborhood',
  'LOCAL NATURE - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand habitats and the variety of life. Basic observation skills. Safety awareness for outdoor exploration.

LEARNING OBJECTIVES:
- Observe and identify local plants and animals
- Describe local habitats (backyards, parks, schoolyards)
- Record observations about local nature
- Appreciate nature in everyday environments

KEY CONCEPTS:
1) Nature exists everywhere, even in cities and towns
2) Many plants and animals live in our neighborhoods
3) Local habitats include gardens, parks, ponds, trees
4) Seasonal changes affect local wildlife
5) We can observe nature by looking, listening, and being patient

COMMON MISCONCEPTIONS:
- Thinking nature only exists in wilderness
- Believing cities have no wildlife
- Not recognizing common organisms (birds, insects, plants)
- Thinking observation requires special equipment

TEACHING SEQUENCE:
Take nature walks around school or neighborhood. Use journals to record observations. Identify common birds, insects, and plants. Create local wildlife guides. Set up bird feeders or bug habitats. Track seasonal changes in local nature. Photograph or draw local organisms. Compare local nature to distant habitats studied.

DIFFERENTIATION:
Struggling learners: Focus on easy-to-spot organisms (birds, butterflies), use guided observation, simple recording methods. Advanced learners: Create detailed field guides, investigate seasonal patterns, participate in citizen science projects.

VOCABULARY:
Local, observe, identify, nature, wildlife, habitat, backyard, park, common, seasonal, record.

CONNECTION TO FUTURE LEARNING:
Local nature observation builds scientific observation skills and ecological awareness used throughout education.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Local Nature' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;
