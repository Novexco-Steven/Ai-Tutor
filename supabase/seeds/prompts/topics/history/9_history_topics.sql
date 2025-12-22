-- ============================================================================
-- GRADE 9 HISTORY TOPIC PROMPTS (World Geography)
-- Comprehensive teaching guides for all Grade 9 History topics
-- 20 topics across 4 units: Physical Geography, Human Geography,
-- World Regions, Global Issues
-- ============================================================================

-- ============================================================================
-- UNIT 1: PHYSICAL GEOGRAPHY (5 topics)
-- ============================================================================

-- Topic 9.1.1: Map Skills and Tools
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Map Skills and Tools' AND grade_level_min = 9),
  'Map Skills and Tools (Grade 9) Topic Guide',
  'Teaching GIS, GPS, and geographic tools',
  'MAP SKILLS AND TOOLS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should have basic map reading skills including interpreting legends, using scale, and understanding coordinate systems. Familiarity with latitude and longitude concepts from middle school geography provides essential foundation. Basic computer literacy supports engagement with digital mapping tools.

LEARNING OBJECTIVES:
- Interpret and analyze various types of maps including topographic, thematic, and political maps
- Understand and apply Geographic Information Systems (GIS) concepts and capabilities
- Explain how Global Positioning System (GPS) technology works and its applications
- Analyze spatial data and draw conclusions about geographic patterns
- Evaluate the appropriate use of different mapping tools for various purposes
- Create and interpret maps using modern geographic technologies

KEY CONCEPTS:
1) GIS Technology: Computer systems that capture, store, analyze, and display geographically referenced data, enabling layered analysis of multiple geographic factors
2) GPS Technology: Satellite-based navigation system providing precise location data; applications range from personal navigation to precision agriculture
3) Remote Sensing: Using satellites and aircraft to collect data about Earth''s surface; enables monitoring of environmental changes, land use, and natural phenomena
4) Spatial Analysis: Techniques for analyzing geographic patterns, relationships, and trends using quantitative methods and visualization
5) Cartographic Principles: Design principles for creating effective maps including projection choices, scale selection, symbol design, and data representation

COMMON MISCONCEPTIONS:
- Believing GPS is completely accurate when it has limitations in certain conditions
- Thinking GIS is just digital maps rather than powerful analytical tools
- Assuming all maps show truth rather than choices by cartographers
- Believing one map projection can accurately show all properties (area, shape, direction)
- Thinking geographic technology eliminates the need for traditional map reading skills

TEACHING SEQUENCE:
Begin by establishing why geographic tools matter for understanding our world. Review traditional map reading skills and introduce limitations that technology addresses. Explore GPS technology: how it works (satellite triangulation), accuracy, and everyday applications. Introduce GIS concepts: data layers, spatial queries, analysis capabilities. Demonstrate GIS applications: urban planning, emergency response, environmental monitoring. Explore remote sensing: satellite imagery, aerial photography, applications in science and policy. Practice interpreting different map types: topographic, thematic, choropleth. Analyze how map projections distort reality and evaluate appropriate uses. Create simple maps or analyze spatial data using available tools. Discuss career applications in surveying, urban planning, environmental science, and technology.

DIFFERENTIATION:
For struggling learners: Focus on concrete applications with familiar examples (phone GPS, Google Maps), use hands-on activities with physical maps, provide structured guides for interpreting geographic data, and connect to student experiences.
For advanced learners: Explore actual GIS software or web-based applications, analyze spatial data sets and draw conclusions, research specific geographic technologies in depth, and create projects using mapping tools.

VOCABULARY:
GIS (Geographic Information System), GPS (Global Positioning System), remote sensing, satellite imagery, data layers, spatial analysis, topographic map, thematic map, choropleth, cartography, projection, coordinates, triangulation, scale, legend

CONNECTION TO FUTURE LEARNING:
Geographic technology skills apply throughout geography and environmental science. Understanding GIS prepares for careers in planning, science, and technology. Map analysis skills support understanding of all geographic and historical content.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Map Skills and Tools' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.1.2: Landforms and Processes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Landforms and Processes' AND grade_level_min = 9),
  'Landforms and Processes (Grade 9) Topic Guide',
  'Teaching plate tectonics, erosion, and landform creation',
  'LANDFORMS AND PROCESSES - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should have basic understanding of Earth''s structure including layers and physical processes. Knowledge of major landform types from middle school provides foundation. Understanding of scientific processes and cause-effect relationships supports geological reasoning.

LEARNING OBJECTIVES:
- Explain plate tectonic theory and its role in shaping Earth''s surface
- Analyze how internal processes (volcanism, earthquakes) create and modify landforms
- Understand external processes (weathering, erosion, deposition) that shape landscapes
- Identify major landform types and the processes that created them
- Evaluate how landforms influence human settlement and activity
- Connect geological time scales to current landscape features

KEY CONCEPTS:
1) Plate Tectonics: Theory explaining Earth''s surface as divided into moving plates whose interactions create earthquakes, volcanoes, and mountain ranges
2) Internal Processes: Forces within Earth including volcanism, folding, faulting, and uplift that create primary landforms
3) External Processes: Weathering (breaking down rock), erosion (transporting material), and deposition (depositing material) that modify landforms over time
4) Landform Classification: Categorizing surface features by origin (tectonic, volcanic, erosional, depositional) and type (mountains, plains, plateaus, valleys)
5) Geological Time: Understanding that current landscapes result from processes operating over millions of years

COMMON MISCONCEPTIONS:
- Believing landforms are static rather than constantly changing
- Thinking plate movement is visible or rapid when it occurs over geological time
- Assuming all mountains form the same way when different processes create different types
- Believing erosion only destroys rather than also creating landforms
- Confusing weathering and erosion as the same process

TEACHING SEQUENCE:
Begin with observable landforms: what do students see in their region and how might it have formed? Introduce plate tectonics: evidence, mechanisms, and resulting landforms at plate boundaries. Study volcanic landforms: volcanoes, lava plateaus, and volcanic islands. Examine tectonic landforms: fold mountains, fault-block mountains, rift valleys. Introduce weathering processes: mechanical and chemical breakdown of rock. Study erosion and deposition by water: river systems, deltas, valleys, canyons. Examine glacial landforms: evidence of past ice ages, moraines, U-shaped valleys. Analyze wind erosion and coastal processes. Connect landforms to human geography: settlement patterns, resource location, natural hazards. Use maps, imagery, and virtual field trips to observe landforms globally.

DIFFERENTIATION:
For struggling learners: Use visual diagrams of processes, focus on local landforms as examples, provide physical models or simulations, and create graphic organizers linking processes to landforms.
For advanced learners: Research specific geological features in depth, analyze cross-sections and geological maps, investigate recent geological events, and explore connections between landforms and mineral resources.

VOCABULARY:
Plate tectonics, convergent, divergent, transform boundary, fault, fold, volcano, earthquake, weathering, erosion, deposition, sediment, glacier, moraine, delta, floodplain, plateau, rift valley, subduction

CONNECTION TO FUTURE LEARNING:
Understanding landform processes prepares for studying climate, ecosystems, and natural resources. Geological concepts apply to environmental issues including hazards and resource management. Physical geography provides foundation for understanding human settlement patterns.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Landforms and Processes' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.1.3: Climate and Weather
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Climate and Weather' AND grade_level_min = 9),
  'Climate and Weather (Grade 9) Topic Guide',
  'Teaching climate zones and weather patterns',
  'CLIMATE AND WEATHER - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic atmospheric concepts and the difference between weather and climate. Knowledge of Earth-Sun relationships including seasons and latitude effects provides important context. Familiarity with maps and geographic patterns supports climate zone analysis.

LEARNING OBJECTIVES:
- Distinguish between weather (short-term) and climate (long-term patterns)
- Explain factors that influence climate including latitude, elevation, proximity to water, and ocean currents
- Identify and characterize major climate zones and their locations
- Analyze the causes and effects of major weather phenomena
- Understand climate patterns including monsoons, El Niño, and seasonal variations
- Evaluate how climate influences human activities and settlement patterns

KEY CONCEPTS:
1) Climate Controls: Factors determining climate including latitude, elevation, distance from water, ocean currents, air pressure systems, and topography
2) Climate Zones: Classification systems (Köppen) organizing climates by temperature and precipitation patterns: tropical, dry, temperate, continental, polar
3) Atmospheric Circulation: Global wind patterns (trade winds, westerlies, polar easterlies) and pressure systems that drive weather patterns
4) Ocean-Atmosphere Interaction: How oceans influence climate through currents, evaporation, and phenomena like El Niño/La Niña
5) Microclimate: Local climate variations caused by terrain, urban development, water bodies, and vegetation

COMMON MISCONCEPTIONS:
- Confusing weather and climate or using terms interchangeably
- Believing latitude is the only factor determining climate
- Thinking climate zones have sharp boundaries rather than gradual transitions
- Assuming climate has always been stable throughout history
- Believing El Niño and La Niña are the same phenomenon

TEACHING SEQUENCE:
Begin by distinguishing weather from climate with local examples. Introduce climate controls one by one with global examples showing each factor''s influence. Study the global atmospheric circulation model: why certain latitudes are wet or dry. Explore major climate zones using the Köppen system, identifying characteristics and locations. Analyze ocean currents and their influence on coastal climates. Study monsoons: causes, effects, and regions affected. Examine El Niño and La Niña: causes, global effects, and prediction. Analyze severe weather phenomena: hurricanes, tornadoes, droughts. Connect climate to human geography: agriculture, settlement, and culture. Introduce climate change: evidence, causes, and projected effects.

DIFFERENTIATION:
For struggling learners: Use climate graphs and visual representations, focus on concrete local examples, provide comparison charts for climate zones, and use maps extensively.
For advanced learners: Analyze climate data sets, research specific weather phenomena, investigate climate modeling, and explore microclimates and their causes.

VOCABULARY:
Climate, weather, latitude, elevation, ocean current, convection, atmospheric pressure, trade winds, westerlies, monsoon, El Niño, La Niña, precipitation, humidity, continental, maritime, microclimate, arid, temperate, tropical

CONNECTION TO FUTURE LEARNING:
Climate understanding applies to studying ecosystems, agriculture, and environmental issues. Climate patterns help explain human settlement and migration. Current climate change connects to contemporary issues unit and environmental policy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Climate and Weather' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.1.4: Natural Resources
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Natural Resources' AND grade_level_min = 9),
  'Natural Resources (Grade 9) Topic Guide',
  'Teaching types of resources and their distribution',
  'NATURAL RESOURCES - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic economic concepts of scarcity and production. Knowledge of Earth''s physical processes helps explain resource formation and location. Familiarity with global geography and maps supports analysis of resource distribution.

LEARNING OBJECTIVES:
- Classify natural resources by type: renewable, nonrenewable, and flow resources
- Analyze the global distribution of major resources and factors explaining patterns
- Evaluate resource extraction methods and their environmental impacts
- Understand resource management and sustainability concepts
- Examine how resource distribution affects economic development and geopolitics
- Assess current and future resource challenges facing the world

KEY CONCEPTS:
1) Resource Classification: Renewable resources (forests, fisheries, water), nonrenewable (fossil fuels, minerals), and flow resources (solar, wind, tidal)
2) Resource Distribution: Uneven global distribution due to geological, climatic, and biological factors creating resource-rich and resource-poor regions
3) Resource Extraction: Methods of obtaining resources including mining, drilling, harvesting; each with economic and environmental trade-offs
4) Sustainability: Managing resources to meet current needs without compromising future generations'' ability to meet their needs
5) Resource Economics: How scarcity, demand, technology, and politics affect resource prices and availability

COMMON MISCONCEPTIONS:
- Believing renewable means unlimited when overuse can deplete renewable resources
- Thinking resources are evenly distributed around the world
- Assuming technology will solve all resource scarcity problems
- Believing developing countries have fewer resources when distribution is complex
- Thinking only developing countries face resource challenges

TEACHING SEQUENCE:
Begin by cataloging resources students use daily and tracing their origins. Introduce resource classification systems: renewable, nonrenewable, flow. Map global distribution of major resources: fossil fuels, minerals, forests, water. Analyze geological and geographic factors explaining distribution patterns. Study resource extraction methods and their environmental impacts. Examine case studies of resource-rich and resource-poor regions. Analyze the "resource curse" concept and resource-based economic development. Study sustainable resource management practices and challenges. Explore alternative and emerging resources including renewable energy. Connect resource issues to geopolitics: conflict, trade, and international relations. Assess future resource challenges and potential solutions.

DIFFERENTIATION:
For struggling learners: Use visual maps of resource distribution, focus on familiar resources with concrete examples, provide comparison charts for resource types, and trace specific products to their origins.
For advanced learners: Research specific resources or regions in depth, analyze resource economics data, investigate emerging resource technologies, and examine case studies of resource conflicts.

VOCABULARY:
Natural resources, renewable, nonrenewable, flow resources, sustainable, extraction, mining, drilling, fossil fuels, ore, deforestation, aquifer, groundwater, reserves, scarcity, conservation, recycling, resource curse

CONNECTION TO FUTURE LEARNING:
Resource understanding connects to environmental issues and sustainable development. Resource distribution explains economic development patterns and geopolitics. Energy resources connect to climate change discussions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Natural Resources' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.1.5: Environmental Issues
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Environmental Issues' AND grade_level_min = 9),
  'Environmental Issues (Grade 9) Topic Guide',
  'Teaching climate change, pollution, conservation',
  'ENVIRONMENTAL ISSUES - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic climate and weather concepts, natural resources, and human-environment interaction. Knowledge of scientific processes and cause-effect relationships supports environmental analysis. Familiarity with global geography helps understand the scale of environmental issues.

LEARNING OBJECTIVES:
- Analyze major environmental issues including climate change, pollution, and biodiversity loss
- Evaluate causes and effects of environmental degradation at local and global scales
- Understand the science behind climate change and its projected impacts
- Examine conservation efforts and environmental protection strategies
- Assess the relationships between development, environment, and sustainability
- Evaluate personal, local, and global responses to environmental challenges

KEY CONCEPTS:
1) Climate Change: Global warming caused primarily by greenhouse gas emissions from human activities; impacts including rising temperatures, sea level rise, and extreme weather
2) Pollution: Contamination of air, water, and soil from industrial, agricultural, and urban sources affecting human and ecosystem health
3) Biodiversity Loss: Declining species diversity due to habitat destruction, pollution, climate change, and overexploitation; consequences for ecosystems and human welfare
4) Deforestation: Loss of forest cover due to agriculture, logging, and development; effects on climate, biodiversity, and indigenous communities
5) Sustainability: Balancing economic development with environmental protection and social equity for long-term human welfare

COMMON MISCONCEPTIONS:
- Confusing weather variations with climate change
- Believing individual actions don''t matter or that technology will solve everything
- Thinking environmental issues affect only distant places rather than local communities
- Assuming economic development and environmental protection are incompatible
- Believing climate change is entirely natural rather than primarily human-caused

TEACHING SEQUENCE:
Begin with local environmental issues students can observe and understand. Introduce the science of climate change: greenhouse effect, evidence, and projections. Map climate change impacts globally and locally: who is most affected and why. Study air and water pollution: sources, effects, and solutions. Examine soil degradation and desertification affecting agriculture. Analyze deforestation: drivers, consequences, and conservation efforts. Study biodiversity loss: extinction rates, causes, and protection strategies. Explore the concept of sustainable development and its challenges. Examine international cooperation: Paris Agreement, environmental treaties, and their effectiveness. Study conservation success stories and ongoing challenges. Connect to personal choices and civic engagement.

DIFFERENTIATION:
For struggling learners: Focus on observable local examples, use visual representations of environmental data, provide cause-effect graphic organizers, and connect to student experiences.
For advanced learners: Analyze scientific data on environmental change, research specific environmental issues in depth, evaluate policy proposals, and examine environmental justice.

VOCABULARY:
Climate change, global warming, greenhouse gases, carbon dioxide, fossil fuels, pollution, biodiversity, ecosystem, endangered species, habitat, deforestation, desertification, conservation, sustainability, renewable energy, carbon footprint

CONNECTION TO FUTURE LEARNING:
Environmental understanding applies to all geographic regions and global issues. Climate change connects to international relations and policy. Environmental concepts support understanding of sustainable development challenges.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Environmental Issues' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 2: HUMAN GEOGRAPHY (5 topics)
-- ============================================================================

-- Topic 9.2.1: Population Geography
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Population Geography' AND grade_level_min = 9),
  'Population Geography (Grade 9) Topic Guide',
  'Teaching demographics, migration, and population patterns',
  'POPULATION GEOGRAPHY - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic map reading and data interpretation skills. Knowledge of world regions and their general characteristics provides context. Familiarity with basic statistics supports demographic data analysis.

LEARNING OBJECTIVES:
- Analyze population distribution and density patterns globally and regionally
- Understand demographic measures including birth rates, death rates, and natural increase
- Apply the demographic transition model to explain population change
- Analyze causes and effects of migration at various scales
- Evaluate population policies and their effectiveness
- Examine relationships between population and development

KEY CONCEPTS:
1) Population Distribution: Patterns of where people live globally; influenced by climate, resources, history, and economic opportunities
2) Demographics: Statistical study of population including birth rates, death rates, fertility rates, life expectancy, and population pyramids
3) Demographic Transition Model: Theory explaining population change through stages from high birth/death rates to low rates as societies develop
4) Migration: Movement of people within or between countries; push factors drive people away, pull factors attract them elsewhere
5) Population Policies: Government efforts to influence population growth through incentives, restrictions, or education

COMMON MISCONCEPTIONS:
- Believing overpopulation is a simple problem with simple solutions
- Assuming population growth is always negative when impacts vary
- Thinking demographics are static when populations constantly change
- Believing all migration is international when internal migration is often larger
- Assuming all developing countries have high population growth

TEACHING SEQUENCE:
Begin by mapping global population distribution: where do people live and why? Introduce key demographic measures with current global data. Study population pyramids: what they reveal about past, present, and future. Explain the demographic transition model with examples from different regions. Analyze population growth rates and their geographic patterns. Study migration: types, causes, and patterns at various scales. Examine case studies of migration: economic, refugee, and forced displacement. Analyze population policies: pro-natalist and anti-natalist approaches. Connect population to resources, development, and environmental impact. Discuss population projections and their implications.

DIFFERENTIATION:
For struggling learners: Use visual population maps and pyramids, focus on concrete examples, provide step-by-step demographic calculations, and use case studies with clear narratives.
For advanced learners: Analyze complex demographic data, research specific country case studies, evaluate population projections critically, and examine debates about population and development.

VOCABULARY:
Population, distribution, density, demographics, birth rate, death rate, natural increase, fertility rate, life expectancy, population pyramid, demographic transition, migration, emigration, immigration, push factors, pull factors, refugee, carrying capacity

CONNECTION TO FUTURE LEARNING:
Population patterns explain settlement and urbanization. Demographics connect to economic development analysis. Migration understanding supports world regions study and current events analysis.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Population Geography' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.2.2: Cultural Geography
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Cultural Geography' AND grade_level_min = 9),
  'Cultural Geography (Grade 9) Topic Guide',
  'Teaching language, religion, and cultural diffusion',
  'CULTURAL GEOGRAPHY - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should have basic understanding of culture as a concept and awareness of cultural diversity. Knowledge of world regions and their histories provides context. Understanding of maps and spatial patterns supports geographic analysis of cultural phenomena.

LEARNING OBJECTIVES:
- Define culture and identify its components including language, religion, and customs
- Analyze the spatial distribution of major languages and language families
- Map the distribution and understand characteristics of major world religions
- Explain processes of cultural diffusion and their mechanisms
- Evaluate the effects of globalization on cultural diversity
- Understand cultural landscapes as reflections of human-environment interaction

KEY CONCEPTS:
1) Culture: Learned behaviors, beliefs, and practices shared by a group including language, religion, customs, art, and material culture
2) Cultural Regions: Areas defined by shared cultural characteristics; boundaries may be clear or transitional
3) Cultural Diffusion: Spread of cultural elements through migration, trade, media, and other contacts; types include relocation, expansion, and hierarchical diffusion
4) Language Distribution: Geographic patterns of language families and individual languages; relationships to history, migration, and political boundaries
5) Religious Geography: Spatial distribution of religions, sacred spaces, and religion''s influence on landscape and culture

COMMON MISCONCEPTIONS:
- Believing cultures are static rather than constantly evolving
- Thinking cultural regions have sharp boundaries rather than gradual transitions
- Assuming globalization leads only to cultural homogenization
- Believing language and ethnicity are the same thing
- Thinking religion is purely personal with no geographic expression

TEACHING SEQUENCE:
Begin by exploring students'' own cultural backgrounds and identities. Define culture and its components: language, religion, customs, material culture. Map major language families and analyze distribution patterns. Study language evolution, extinction, and preservation efforts. Explore world religions: origins, beliefs, distributions, and landscapes. Map religious distributions and analyze factors explaining patterns. Introduce cultural diffusion: types, mechanisms, and examples. Study cultural hearths: where innovations originated and how they spread. Analyze globalization''s effects on cultural diversity. Examine cultural landscapes: how cultures shape visible environments. Study cultural conflicts and cooperation in diverse societies.

DIFFERENTIATION:
For struggling learners: Use maps and visual representations extensively, focus on major patterns before details, provide comparison charts for religions and languages, and connect to student backgrounds.
For advanced learners: Research specific cultures or regions in depth, analyze cultural conflicts and their causes, examine endangered languages and preservation efforts, and evaluate globalization debates.

VOCABULARY:
Culture, cultural region, cultural hearth, diffusion, relocation diffusion, expansion diffusion, language family, lingua franca, religion, monotheism, polytheism, secular, sacred space, cultural landscape, acculturation, assimilation, globalization

CONNECTION TO FUTURE LEARNING:
Cultural geography provides framework for understanding world regions. Cultural patterns help explain conflicts and cooperation. Understanding diversity prepares for global issues and international relations.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cultural Geography' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.2.3: Economic Geography
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Economic Geography' AND grade_level_min = 9),
  'Economic Geography (Grade 9) Topic Guide',
  'Teaching economic systems and development',
  'ECONOMIC GEOGRAPHY - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic economic concepts of scarcity, production, and trade. Knowledge of natural resources and their distribution provides context. Familiarity with global geography and maps supports analysis of economic patterns.

LEARNING OBJECTIVES:
- Compare major economic systems: market, command, and mixed economies
- Analyze economic sectors: primary, secondary, tertiary, and quaternary activities
- Understand indicators and measures of economic development
- Evaluate factors contributing to different levels of development
- Examine global trade patterns and their effects
- Assess the geography of economic inequality at various scales

KEY CONCEPTS:
1) Economic Systems: Frameworks for organizing production and distribution; market economies rely on supply and demand, command economies on government planning, mixed economies combine elements
2) Economic Sectors: Primary (extraction), secondary (manufacturing), tertiary (services), and quaternary (knowledge/information) activities; development shifts sector emphasis
3) Development Indicators: Measures including GDP per capita, HDI, literacy rates, and life expectancy that assess economic and human development
4) Core-Periphery Model: Theory explaining global inequality through economic relationships between developed cores and less-developed peripheries
5) Global Trade: International exchange of goods and services; patterns shaped by comparative advantage, trade agreements, and technology

COMMON MISCONCEPTIONS:
- Believing economic systems are purely one type rather than mixed
- Thinking GDP alone measures development or welfare
- Assuming development follows a single path for all countries
- Believing trade always benefits all participants equally
- Thinking development is purely economic rather than multidimensional

TEACHING SEQUENCE:
Begin by exploring local economy: what do people produce and trade? Compare major economic systems with examples from different countries. Introduce economic sectors and analyze their relationships. Map primary sector activities: agriculture, mining, fishing, forestry. Study secondary sector: manufacturing patterns and industrial regions. Explore tertiary and quaternary sectors: services and knowledge economy. Introduce development indicators: GDP, HDI, and their limitations. Map global development patterns and analyze explanations. Study core-periphery relationships at various scales. Analyze global trade: patterns, agreements, and effects. Examine development strategies and their effectiveness.

DIFFERENTIATION:
For struggling learners: Use concrete examples of economic activities, focus on familiar products and their origins, provide visual representations of data, and trace production chains.
For advanced learners: Analyze economic data sets, research specific development strategies, examine trade agreements critically, and investigate multinational corporations'' roles.

VOCABULARY:
Economic system, market economy, command economy, mixed economy, primary sector, secondary sector, tertiary sector, quaternary sector, GDP, per capita, HDI, development, developed, developing, trade, export, import, comparative advantage

CONNECTION TO FUTURE LEARNING:
Economic geography explains development patterns in world regions. Trade and development connect to global issues. Understanding economic systems supports government and economics in senior year.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Economic Geography' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.2.4: Political Geography
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Political Geography' AND grade_level_min = 9),
  'Political Geography (Grade 9) Topic Guide',
  'Teaching borders, nations, and political systems',
  'POLITICAL GEOGRAPHY - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic concepts of government and the state from civics education. Knowledge of world history helps explain current political boundaries. Familiarity with world maps and countries provides essential geographic foundation.

LEARNING OBJECTIVES:
- Distinguish between states, nations, and nation-states
- Analyze how political boundaries are established and their types
- Understand factors that create and maintain state cohesion or division
- Evaluate territorial disputes and their causes
- Examine the role of international organizations in world politics
- Analyze geographic factors in elections and political organization

KEY CONCEPTS:
1) State and Nation: State is a political entity with sovereignty over territory; nation is a cultural group with shared identity; nation-states align the two, but most states are multinational
2) Political Boundaries: Lines separating states or internal divisions; types include geometric, physical, and cultural boundaries with different origins and challenges
3) Centripetal and Centrifugal Forces: Factors that unite a state (nationalism, shared culture) versus those that divide it (ethnic conflicts, economic disparities)
4) Territorial Disputes: Conflicts over boundaries, resources, or sovereignty; causes include colonial legacies, ethnic divisions, and resource competition
5) International Organizations: Groups of states cooperating for various purposes: UN, regional organizations, military alliances, economic blocs

COMMON MISCONCEPTIONS:
- Confusing nation and state as identical concepts
- Believing political boundaries are natural or inevitable
- Thinking all conflicts are about territory rather than complex factors
- Assuming international organizations have unlimited power
- Believing democracy is the default or inevitable form of government

TEACHING SEQUENCE:
Begin by examining a current political map and asking why boundaries are where they are. Define key concepts: state, nation, nation-state, sovereignty. Analyze types of political boundaries with examples of each. Study how boundaries were established: historical processes and colonial legacies. Examine centripetal and centrifugal forces with case studies. Analyze stateless nations and their situations. Study territorial disputes: causes, locations, and resolution attempts. Introduce forms of government: democracy, authoritarianism, theocracy. Examine electoral geography: how geography shapes political outcomes. Study international organizations: UN, EU, AU, and their roles. Connect to current events and ongoing political changes.

DIFFERENTIATION:
For struggling learners: Use maps extensively to visualize political concepts, focus on specific case studies, provide comparison charts for government types, and connect to familiar political examples.
For advanced learners: Research specific territorial disputes in depth, analyze election maps and voting patterns, examine international law concepts, and evaluate the effectiveness of international organizations.

VOCABULARY:
State, nation, nation-state, sovereignty, boundary, border, territory, centripetal, centrifugal, nationalism, self-determination, federalism, unitary, democracy, authoritarianism, territorial dispute, international organization, supranational

CONNECTION TO FUTURE LEARNING:
Political geography provides framework for understanding world regions and their conflicts. Boundary and territorial concepts apply to current events analysis. Understanding international organizations prepares for global issues study.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Political Geography' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.2.5: Urban Geography
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Urban Geography' AND grade_level_min = 9),
  'Urban Geography (Grade 9) Topic Guide',
  'Teaching cities, urbanization, and development',
  'URBAN GEOGRAPHY - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic population geography concepts including distribution and migration. Knowledge of economic sectors and development provides context. Familiarity with local urban areas helps make concepts concrete.

LEARNING OBJECTIVES:
- Trace the history of urbanization from ancient cities to modern megacities
- Analyze factors that explain city locations and growth
- Understand urban structure models and their applications
- Evaluate urban challenges including sprawl, pollution, and inequality
- Compare urbanization patterns in developed and developing countries
- Assess urban planning approaches and smart city concepts

KEY CONCEPTS:
1) Urbanization: Process of population concentration in cities; accelerating globally with over half of world population now urban
2) Site and Situation: Site is physical characteristics of a location; situation is relative location and connections; both explain city origins and growth
3) Urban Structure: Internal organization of cities; models include concentric zone, sector, and multiple nuclei; different patterns in different regions
4) Megacities: Cities exceeding 10 million population; rapid growth especially in developing world creates opportunities and challenges
5) Urban Challenges: Problems including housing, transportation, pollution, inequality, and governance facing cities worldwide

COMMON MISCONCEPTIONS:
- Believing urbanization is new when cities have existed for millennia
- Thinking all cities have the same structure regardless of culture and history
- Assuming urban growth is always positive or always negative
- Believing developed world cities don''t face serious challenges
- Thinking urban problems have simple solutions

TEACHING SEQUENCE:
Begin by exploring students'' experiences with urban and rural environments. Trace urbanization history from first cities to the industrial revolution to today. Analyze site and situation factors using examples of major cities. Study urban structure models: concentric zone, sector, multiple nuclei. Compare models with actual cities and regional variations. Examine the global urban explosion: megacities and their characteristics. Analyze urbanization in developing countries: rapid growth, informal settlements. Study urban challenges: transportation, housing, pollution, inequality. Examine urban planning approaches and their effectiveness. Explore smart city concepts and technology in urban management. Connect to sustainability: what makes cities sustainable?

DIFFERENTIATION:
For struggling learners: Use maps and aerial imagery of cities, focus on local urban examples, provide visual urban models, and connect to student experiences.
For advanced learners: Research specific cities in depth, analyze urban data and patterns, examine urban planning case studies, and investigate smart city technologies.

VOCABULARY:
Urban, rural, urbanization, city, metropolis, megacity, site, situation, CBD (central business district), suburb, sprawl, slum, informal settlement, gentrification, urban planning, smart city, infrastructure, sustainability

CONNECTION TO FUTURE LEARNING:
Urban geography applies to understanding all world regions. Urbanization connects to development and environmental challenges. Urban patterns help explain social and economic issues.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Urban Geography' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 3: WORLD REGIONS (6 topics)
-- ============================================================================

-- Topic 9.3.1: North America
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'North America' AND grade_level_min = 9),
  'North America (Grade 9) Topic Guide',
  'Teaching geography, culture, and economy of North America',
  'NORTH AMERICA - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should have foundational geographic skills including map reading and analysis. Knowledge of physical geography concepts (climate, landforms) and human geography (population, culture, economy) provides framework for regional study. Familiarity with their own region within North America helps ground new learning.

LEARNING OBJECTIVES:
- Analyze North America''s physical geography including major landforms, climate regions, and resources
- Examine population distribution and demographic characteristics across the region
- Understand cultural diversity including indigenous peoples, immigration patterns, and ethnic geography
- Evaluate economic activities and development patterns across the region
- Analyze relationships between the United States, Canada, and Mexico
- Assess current issues facing North America including environment, immigration, and trade

KEY CONCEPTS:
1) Physical Diversity: From Arctic tundra to tropical coasts; major features include Rocky Mountains, Great Plains, Mississippi River system, and varied climate zones
2) Cultural Mosaic: Indigenous peoples, European colonization, African heritage, immigration from around the world creating diverse societies
3) Economic Integration: USMCA trade agreement linking economies; United States as global economic power; resource-based and diversified economies
4) Urban Patterns: Major metropolitan areas, megalopolis regions, and urban challenges including sprawl and inequality
5) Environmental Issues: Climate change impacts, resource management, and conservation efforts across the continent

COMMON MISCONCEPTIONS:
- Thinking North America means only the United States
- Assuming cultural homogeneity within or across countries
- Believing indigenous peoples are only historical rather than present populations
- Thinking Canada and Mexico are simply extensions of the United States
- Assuming environmental issues are uniform across the continent

TEACHING SEQUENCE:
Begin by mapping North America''s major physical features and climate regions. Analyze how physical geography shaped settlement and development. Study indigenous peoples: pre-contact societies and contemporary presence. Trace European colonization and its lasting effects on culture and boundaries. Examine immigration patterns: historical and contemporary; diversity and distribution. Analyze population distribution: why are people concentrated where they are? Study each country''s economic characteristics and specializations. Examine economic integration: USMCA, trade patterns, and interdependence. Analyze urban patterns and major metropolitan areas. Study current issues: environment, immigration, inequality, and politics.

DIFFERENTIATION:
For struggling learners: Use physical and political maps extensively, focus on major patterns before details, connect to students'' own experiences within the region, and provide comparison frameworks.
For advanced learners: Research specific subregions or issues in depth, analyze demographic and economic data, examine transnational issues, and compare with other regions.

VOCABULARY:
USMCA, NAFTA, megalopolis, Great Plains, Rocky Mountains, Appalachian Mountains, Mississippi River, tundra, prairie, immigration, indigenous, First Nations, cultural mosaic, melting pot, resource extraction

CONNECTION TO FUTURE LEARNING:
North America study provides foundation for comparative regional analysis. Understanding the region helps interpret current events. Economic and political concepts apply to global issues study.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'North America' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.3.2: Latin America
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Latin America' AND grade_level_min = 9),
  'Latin America (Grade 9) Topic Guide',
  'Teaching diversity and development in Central and South America',
  'LATIN AMERICA - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic physical and human geography concepts. Knowledge of colonialism and its legacy provides historical context. Familiarity with map reading and regional analysis supports systematic study.

LEARNING OBJECTIVES:
- Analyze Latin America''s diverse physical geography from mountains to rainforests
- Understand the cultural heritage blending indigenous, European, and African influences
- Evaluate development challenges and economic patterns across the region
- Examine urbanization patterns including megacities and informal settlements
- Analyze political systems and recent democratic development
- Assess current issues including environment, inequality, and migration

KEY CONCEPTS:
1) Physical Geography: Andes Mountains, Amazon Basin, varied climate zones from tropical to temperate, major river systems
2) Cultural Heritage: Indigenous civilizations (Maya, Aztec, Inca), Spanish and Portuguese colonization, African influence, mestizo and multicultural societies
3) Economic Development: Historically dependent on primary exports; industrialization in some countries; significant inequality within and between countries
4) Urbanization: Rapid urban growth; megacities like São Paulo and Mexico City; challenges of informal settlements and services
5) Political Transformation: Transition from authoritarian to democratic governments; ongoing challenges including corruption and stability

COMMON MISCONCEPTIONS:
- Viewing Latin America as homogeneous when it includes great diversity
- Assuming all of Latin America is tropical when climate varies greatly
- Believing Spanish is the only language when Portuguese and indigenous languages are significant
- Thinking colonialism is entirely in the past when its effects persist
- Assuming the region is entirely poor when it includes developed areas

TEACHING SEQUENCE:
Begin by mapping Latin America''s boundaries and physical features. Analyze climate diversity from tropical rainforest to Patagonian steppes. Study indigenous civilizations and their achievements. Trace European colonization: Spanish and Portuguese impacts on culture, language, and boundaries. Examine population distribution and the cultural blending of peoples. Analyze economic patterns: agriculture, mining, manufacturing, and services. Study urbanization with case studies of major cities and their challenges. Examine environmental issues: Amazon deforestation, biodiversity, and climate change. Analyze political development and current governance challenges. Connect to global issues: trade, migration, and international relations.

DIFFERENTIATION:
For struggling learners: Use maps extensively, focus on major subregions, provide comparison charts for countries, and use case studies with clear narratives.
For advanced learners: Research specific countries or issues in depth, analyze development data, examine environmental debates, and investigate regional organizations like Mercosur.

VOCABULARY:
Latin America, Central America, South America, Caribbean, Andes, Amazon, mestizo, indigenous, colonial, export economy, import substitution, favela, informal economy, deforestation, biodiversity

CONNECTION TO FUTURE LEARNING:
Latin America study provides comparative case for development studies. Regional issues connect to global challenges. Understanding the region supports current events analysis.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Latin America' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.3.3: Europe
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Europe' AND grade_level_min = 9),
  'Europe (Grade 9) Topic Guide',
  'Teaching historical and modern Europe',
  'EUROPE - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic physical and human geography concepts. Knowledge of European history including Renaissance, colonialism, and world wars provides context. Understanding of political systems and economic concepts supports analysis.

LEARNING OBJECTIVES:
- Analyze Europe''s physical geography and its influence on historical development
- Understand the cultural diversity and linguistic-religious patterns of Europe
- Evaluate European economic development and the role of the European Union
- Examine the transition of Eastern Europe from communism to market economies
- Analyze immigration and demographic challenges facing contemporary Europe
- Assess Europe''s role in global affairs and current issues facing the region

KEY CONCEPTS:
1) Physical Geography: Peninsular nature, varied climate from Mediterranean to subarctic, key features including Alps, Rhine, and Danube
2) Cultural Diversity: Multiple language families, religious traditions, national identities within a relatively small area
3) European Union: Supranational organization promoting economic integration and cooperation; ongoing debates about sovereignty and expansion
4) East-West Divide: Legacy of Cold War division; transition challenges in former communist states; continuing disparities
5) Contemporary Challenges: Immigration and integration, demographic decline, nationalism versus integration, relations with neighbors

COMMON MISCONCEPTIONS:
- Viewing Europe as culturally uniform when it is highly diverse
- Assuming all of Europe is in the EU when many countries are not
- Believing Western European development is the only model
- Thinking the Cold War division has been fully overcome
- Assuming European unity is inevitable or permanent

TEACHING SEQUENCE:
Begin by mapping Europe''s physical geography and its influence on development. Analyze climate patterns and their economic implications. Study linguistic and religious diversity and their geographic patterns. Trace political development: nation-states, conflicts, and integration. Analyze the European Union: origins, structure, expansion, and challenges. Compare Western and Eastern European development paths. Examine the transition from communism and its ongoing effects. Analyze immigration patterns: historical and contemporary. Study demographic challenges: aging populations and low birth rates. Examine current issues: Brexit, EU debates, relations with Russia. Connect to global role and international relations.

DIFFERENTIATION:
For struggling learners: Use maps extensively, focus on major patterns and countries, provide comparison frameworks, and connect to students'' potential heritage.
For advanced learners: Research specific countries or regions in depth, analyze EU policies and debates, examine Eastern European transitions, and investigate current political movements.

VOCABULARY:
European Union, eurozone, peninsula, maritime climate, continental climate, language family, nation-state, nationalism, supranational, integration, Brexit, NATO, Cold War, Iron Curtain, transition economy

CONNECTION TO FUTURE LEARNING:
European study provides foundation for understanding World History and global affairs. EU model is relevant for studying international organizations. European issues connect to global challenges.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Europe' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.3.4: Africa
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Africa' AND grade_level_min = 9),
  'Africa (Grade 9) Topic Guide',
  'Teaching African geography, cultures, and challenges',
  'AFRICA - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic physical and human geography concepts. Knowledge of colonialism and its legacy is essential for understanding contemporary Africa. Familiarity with development concepts provides framework for analysis.

LEARNING OBJECTIVES:
- Analyze Africa''s diverse physical geography from deserts to rainforests
- Understand the rich cultural diversity including languages, religions, and traditions
- Evaluate the lasting effects of colonialism on boundaries, politics, and economy
- Examine economic development challenges and opportunities across the continent
- Analyze urbanization, demographic change, and social development
- Assess current issues including conflict, governance, and Africa''s growing global role

KEY CONCEPTS:
1) Physical Diversity: World''s second-largest continent with Sahara Desert, tropical rainforests, savannas, highlands, and varied climates
2) Cultural Richness: Thousands of ethnic groups and languages, diverse religious traditions, artistic and musical heritage
3) Colonial Legacy: European partition created artificial boundaries; extractive economies; political instability rooted in colonial structures
4) Development Challenges: Poverty in many regions alongside growing middle class; infrastructure needs; health and education gaps
5) Africa Rising: Economic growth, young population, growing cities, and increasing global influence in the 21st century

COMMON MISCONCEPTIONS:
- Viewing Africa as a single country rather than 54 diverse nations
- Focusing only on problems while ignoring achievements and growth
- Assuming all of Africa is poor or conflict-ridden when conditions vary greatly
- Believing African cultures are primitive rather than sophisticated and diverse
- Thinking colonialism is entirely in the past rather than having lasting effects

TEACHING SEQUENCE:
Begin by mapping Africa''s size (larger than many realize) and physical diversity. Analyze climate zones and their influence on settlement and economy. Study cultural diversity: major ethnic groups, language families, religious patterns. Trace pre-colonial African civilizations and achievements. Analyze the colonial period: partition, exploitation, and its lasting effects. Examine independence movements and post-colonial challenges. Study economic patterns: resources, agriculture, growing industries. Analyze urbanization and the growth of African cities. Examine demographic patterns: young population and its implications. Study current issues: conflict resolution, governance, and global role.

DIFFERENTIATION:
For struggling learners: Counter stereotypes with specific examples, use maps to show diversity, focus on subregions, and provide success stories alongside challenges.
For advanced learners: Research specific countries or issues in depth, analyze development data, examine colonial boundary effects, and investigate African Union and regional organizations.

VOCABULARY:
Sahara, Sahel, savanna, Nile, Great Rift Valley, colonialism, partition, apartheid, independence, African Union, civil conflict, ethnic group, tribe (use carefully), desertification, informal economy, young demographic

CONNECTION TO FUTURE LEARNING:
Africa study counters stereotypes and provides nuanced understanding. Colonial legacy connects to global development issues. African current events increasingly important in global affairs.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Africa' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.3.5: Asia
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Asia' AND grade_level_min = 9),
  'Asia (Grade 9) Topic Guide',
  'Teaching the world''s largest and most diverse continent',
  'ASIA - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic physical and human geography concepts. Knowledge of major Asian civilizations provides historical context. Understanding of economic development and political systems supports analysis.

LEARNING OBJECTIVES:
- Analyze Asia''s vast physical geography from Siberia to tropical islands
- Understand the cultural diversity including major religious and philosophical traditions
- Evaluate economic development from Asian Tigers to current growth centers
- Examine the rise of China and India as global powers
- Analyze demographic patterns including world''s largest populations
- Assess regional issues including tensions, cooperation, and environmental challenges

KEY CONCEPTS:
1) Physical Scale and Diversity: World''s largest continent with extreme climate variations, major mountain ranges (Himalayas), plateaus, deserts, and tropical regions
2) Cultural Hearths: Origins of major religions (Hinduism, Buddhism, Islam) and civilizations; diverse traditions across subregions
3) Economic Development: From Asian Tigers (South Korea, Singapore, Taiwan) to China''s rise and India''s growth; varied development levels
4) Population Giants: China and India together have over 2.8 billion people; demographic transitions and challenges
5) Regional Subregions: Southwest Asia (Middle East), South Asia, Southeast Asia, East Asia, Central Asia—each with distinct characteristics

COMMON MISCONCEPTIONS:
- Viewing Asia as homogeneous when it contains extreme diversity
- Focusing only on China and Japan while overlooking other significant countries
- Assuming all of Asia is densely populated when population varies greatly
- Believing Asian economic success has one model when paths vary
- Thinking Asian cultures are ancient and unchanging

TEACHING SEQUENCE:
Begin by establishing Asia''s scale and locating major subregions. Analyze physical geography: monsoons, Himalayas, river systems. Study population distribution: why are some areas densely populated? Examine cultural diversity: religions, languages, and traditions. Analyze each subregion systematically: Southwest, South, Southeast, East, Central Asia. Study economic development: Asian Tigers, China''s rise, India''s growth. Analyze the relationship between China and India and global implications. Examine environmental challenges: air quality, water issues, climate impacts. Study regional tensions and cooperation: territorial disputes, trade relationships. Connect to global issues: Asia''s growing influence on world affairs.

DIFFERENTIATION:
For struggling learners: Organize study by subregion, use maps extensively, provide comparison frameworks, and focus on major patterns.
For advanced learners: Research specific countries or issues in depth, analyze economic development models, examine geopolitical tensions, and investigate regional organizations like ASEAN.

VOCABULARY:
Monsoon, Himalayas, Plateau of Tibet, subcontinent, Asian Tigers, Four Little Dragons, Southeast Asia, Middle East, Central Asia, Buddhism, Hinduism, Islam, Confucianism, economic development, population density

CONNECTION TO FUTURE LEARNING:
Asia study essential for understanding global economics and politics. Asian religions connect to World History. Current Asian issues central to global affairs.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Asia' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.3.6: Oceania
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Oceania' AND grade_level_min = 9),
  'Oceania (Grade 9) Topic Guide',
  'Teaching Australia, New Zealand, and Pacific islands',
  'OCEANIA - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic physical and human geography concepts. Knowledge of colonialism and indigenous peoples provides historical context. Understanding of island geography and climate helps explain the region''s characteristics.

LEARNING OBJECTIVES:
- Analyze Oceania''s unique physical geography including continent, large islands, and small island nations
- Understand the diverse indigenous cultures of the Pacific region
- Evaluate the effects of colonization on indigenous peoples and current societies
- Examine economic activities from resource extraction to tourism
- Analyze environmental challenges especially affecting Pacific island nations
- Assess the region''s role in global affairs including strategic and environmental importance

KEY CONCEPTS:
1) Geographic Diversity: Australia (continent), New Zealand (large islands), Melanesia, Micronesia, and Polynesia (small island groups) with distinct characteristics
2) Indigenous Heritage: Aboriginal Australians (60,000+ year history), Māori of New Zealand, and diverse Pacific Islander cultures
3) Colonial Experience: British settlement in Australia and New Zealand; varied colonial experiences across Pacific islands; independence movements
4) Unique Ecosystems: Isolation created unique flora and fauna; high endemism; vulnerability to invasive species and human impact
5) Climate Vulnerability: Pacific islands highly vulnerable to sea level rise and climate change; existential threat for some nations

COMMON MISCONCEPTIONS:
- Thinking Oceania is just Australia and forgetting the Pacific islands
- Assuming all Pacific islands are similar when they vary greatly
- Believing Aboriginal and Māori cultures are extinct rather than living traditions
- Thinking Australia''s interior is entirely empty desert
- Underestimating climate change threats to the region

TEACHING SEQUENCE:
Begin by mapping Oceania and its subregions: Australia, New Zealand, Melanesia, Micronesia, Polynesia. Analyze Australia''s physical geography: the Outback, Great Barrier Reef, varied climates. Study New Zealand''s geography: volcanic and tectonic features, varied climate. Examine small island types: continental, volcanic, and coral atoll. Study indigenous peoples: Aboriginal Australians, Māori, and Pacific Islanders. Trace colonial history and its effects on indigenous populations. Analyze contemporary societies: multiculturalism, indigenous rights movements. Study economic activities: mining, agriculture, tourism, fishing. Examine environmental challenges: coral bleaching, invasive species, climate vulnerability. Study climate change impacts especially on low-lying islands. Connect to global role and international relations.

DIFFERENTIATION:
For struggling learners: Use maps to distinguish subregions, focus on major areas, provide visual representations of island types, and connect to popular culture references.
For advanced learners: Research specific island groups or issues in depth, analyze climate change impacts, examine indigenous rights movements, and investigate Pacific Islands Forum.

VOCABULARY:
Oceania, Australia, Outback, New Zealand, Melanesia, Micronesia, Polynesia, atoll, coral reef, Great Barrier Reef, Aboriginal, Māori, Pacific Islander, endemic, invasive species, sea level rise, climate vulnerability

CONNECTION TO FUTURE LEARNING:
Oceania study provides unique case for environmental and development issues. Climate vulnerability connects to global issues. Indigenous rights movements connect to broader human rights discussions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Oceania' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 4: GLOBAL ISSUES (4 topics)
-- ============================================================================

-- Topic 9.4.1: Globalization
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Globalization' AND grade_level_min = 9),
  'Globalization (Grade 9) Topic Guide',
  'Teaching interconnectedness of the modern world',
  'GLOBALIZATION - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic economic concepts including trade and development. Knowledge of world regions and their characteristics provides context for understanding global connections. Familiarity with technology and communication supports discussion of globalization''s mechanisms.

LEARNING OBJECTIVES:
- Define globalization and its key dimensions: economic, cultural, political, and technological
- Analyze the forces driving contemporary globalization
- Evaluate the benefits and costs of globalization for different groups and regions
- Examine cultural globalization including spread of ideas, media, and practices
- Understand debates about globalization and anti-globalization movements
- Connect personal experiences to global economic and cultural systems

KEY CONCEPTS:
1) Economic Globalization: Integration of national economies through trade, investment, and multinational corporations; global supply chains
2) Cultural Globalization: Spread of ideas, values, and cultural products across borders; homogenization concerns versus cultural exchange
3) Technological Foundation: Communication and transportation technologies enabling faster, cheaper, and more extensive global connections
4) Winners and Losers: Uneven effects of globalization with some benefiting greatly while others are marginalized or harmed
5) Governance Challenges: Difficulty regulating global activities with national governments; need for international cooperation

COMMON MISCONCEPTIONS:
- Believing globalization is entirely new rather than having historical precedents
- Thinking globalization is either entirely good or entirely bad
- Assuming globalization affects everyone equally
- Believing cultural globalization only means Americanization
- Thinking there is no alternative to current patterns of globalization

TEACHING SEQUENCE:
Begin by tracing globalization in students'' lives: origins of products, global media, personal connections. Define globalization and its multiple dimensions. Trace historical development: from Silk Road to current hyper-connectivity. Analyze economic globalization: trade, investment, multinational corporations, supply chains. Study cultural globalization: spread of media, ideas, and practices. Examine technological enablers: communication, transportation, internet. Analyze benefits of globalization: economic growth, poverty reduction, cultural exchange. Study costs and criticisms: inequality, cultural loss, environmental damage, labor exploitation. Examine anti-globalization movements and their concerns. Connect to personal choices and global citizenship.

DIFFERENTIATION:
For struggling learners: Trace specific products through global supply chains, use concrete local examples, provide balanced assessment frameworks, and connect to student experiences.
For advanced learners: Research specific aspects of globalization, analyze globalization debates, examine anti-globalization movements, and investigate alternatives to current patterns.

VOCABULARY:
Globalization, economic integration, multinational corporation, supply chain, outsourcing, cultural exchange, cultural homogenization, global village, interconnected, trade agreement, World Trade Organization, global governance

CONNECTION TO FUTURE LEARNING:
Globalization concepts apply to understanding all global issues. Economic globalization connects to trade and development analysis. Cultural globalization informs understanding of world regions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Globalization' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.4.2: Sustainable Development
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Sustainable Development' AND grade_level_min = 9),
  'Sustainable Development (Grade 9) Topic Guide',
  'Teaching balancing growth and environment',
  'SUSTAINABLE DEVELOPMENT - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic environmental issues and development concepts. Knowledge of resources and their distribution provides context. Understanding of global inequality helps frame development challenges.

LEARNING OBJECTIVES:
- Define sustainable development and its three pillars: economic, social, and environmental
- Analyze the tension between economic growth and environmental protection
- Understand the UN Sustainable Development Goals and their targets
- Evaluate different approaches to sustainable development
- Examine case studies of sustainable and unsustainable development
- Connect personal choices to sustainable development

KEY CONCEPTS:
1) Sustainability: Meeting present needs without compromising future generations'' ability to meet their needs; long-term thinking
2) Three Pillars: Economic development, social equity, and environmental protection must be balanced; also called the "triple bottom line"
3) UN SDGs: 17 Sustainable Development Goals adopted in 2015 addressing poverty, inequality, climate, and other challenges through 2030
4) Development Trade-offs: Choices between immediate growth and long-term sustainability; who decides and who benefits?
5) Individual and Collective Action: Both personal choices and systemic changes needed for sustainable development

COMMON MISCONCEPTIONS:
- Believing sustainable development means no development
- Assuming sustainability and economic growth are always opposed
- Thinking only poor countries face sustainability challenges
- Believing technology alone will solve sustainability problems
- Thinking individual actions don''t matter or are the only thing that matters

TEACHING SEQUENCE:
Begin by exploring what "sustainable" means and why it matters. Define sustainable development and its historical development. Introduce the three pillars: economic, social, environmental. Analyze tensions between pillars with case studies. Study the UN Sustainable Development Goals: what they are and progress toward them. Examine sustainable development at different scales: local, national, global. Analyze case studies of sustainable practices: cities, countries, companies. Study barriers to sustainability: economic pressures, political challenges, behavior change. Connect to personal choices: consumption, transportation, energy. Explore careers and actions that promote sustainability.

DIFFERENTIATION:
For struggling learners: Use concrete examples of sustainability in action, focus on local examples, provide visual frameworks for the three pillars, and connect to student interests.
For advanced learners: Research specific SDGs and progress, analyze sustainability policies, examine debates about growth versus sustainability, and develop proposals for local sustainability.

VOCABULARY:
Sustainable development, sustainability, UN Sustainable Development Goals, economic development, social equity, environmental protection, climate action, poverty reduction, renewable energy, conservation, consumption

CONNECTION TO FUTURE LEARNING:
Sustainability framework applies to all global issues. SDGs provide structure for analyzing challenges. Understanding sustainability prepares for citizenship and career decisions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sustainable Development' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.4.3: Global Conflicts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Global Conflicts' AND grade_level_min = 9),
  'Global Conflicts (Grade 9) Topic Guide',
  'Teaching causes and effects of international conflicts',
  'GLOBAL CONFLICTS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand political geography concepts including states, boundaries, and territorial disputes. Knowledge of world regions helps contextualize conflicts. Understanding of cultural diversity including religious and ethnic differences provides context for some conflicts.

LEARNING OBJECTIVES:
- Analyze causes of international and internal conflicts including political, economic, and cultural factors
- Evaluate the effects of conflicts on civilians, development, and regional stability
- Understand the role of resources in conflict and cooperation
- Examine terrorism as a global security challenge
- Analyze conflict resolution approaches and their effectiveness
- Connect geographic factors to conflict patterns and outcomes

KEY CONCEPTS:
1) Conflict Causes: Territorial disputes, resource competition, ethnic and religious tensions, political ideologies, and historical grievances
2) Conflict Types: Interstate wars, civil wars, insurgencies, terrorism, and hybrid conflicts with varying characteristics
3) Humanitarian Impact: Civilian casualties, displacement, refugees, destruction of infrastructure, and long-term development setbacks
4) Resource Conflicts: Competition over oil, water, minerals, and other resources as conflict driver
5) Conflict Resolution: Diplomacy, mediation, peacekeeping, and post-conflict reconstruction approaches

COMMON MISCONCEPTIONS:
- Believing conflicts are caused by single factors rather than complex combinations
- Thinking all conflicts are primarily about religion when causes are usually more complex
- Assuming conflicts are inevitable rather than having preventable causes
- Believing military force alone can resolve conflicts
- Thinking distant conflicts don''t affect students'' lives

TEACHING SEQUENCE:
Begin by mapping current global conflicts and their locations. Analyze conflict causes: political, economic, cultural, and historical factors. Study case studies of different conflict types with geographic analysis. Examine resource conflicts: oil, water, minerals as conflict drivers. Analyze terrorism: definitions, causes, and responses. Study humanitarian impacts: casualties, displacement, refugees. Examine media coverage and its effects on understanding conflicts. Analyze conflict resolution approaches: diplomacy, mediation, peacekeeping. Study post-conflict reconstruction challenges. Connect to international organizations'' roles in conflict prevention and resolution.

DIFFERENTIATION:
For struggling learners: Use maps to contextualize conflicts, focus on specific case studies, provide clear cause-effect frameworks, and distinguish from entertainment portrayals.
For advanced learners: Research specific conflicts in depth, analyze media coverage of conflicts, examine peacekeeping missions, and evaluate intervention debates.

VOCABULARY:
Conflict, war, civil war, insurgency, terrorism, territorial dispute, ethnic conflict, religious conflict, resource conflict, humanitarian crisis, refugee, displacement, peacekeeping, diplomacy, mediation, resolution

CONNECTION TO FUTURE LEARNING:
Conflict analysis applies to all world regions and historical periods. Understanding causes helps evaluate current events. Conflict resolution concepts apply to multiple scales.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Global Conflicts' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic 9.4.4: International Organizations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'International Organizations' AND grade_level_min = 9),
  'International Organizations (Grade 9) Topic Guide',
  'Teaching UN, NATO, and other global bodies',
  'INTERNATIONAL ORGANIZATIONS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic political geography including states and sovereignty. Knowledge of 20th-century history especially world wars provides context for organization founding. Understanding of global challenges helps frame organizational purposes.

LEARNING OBJECTIVES:
- Explain the purposes and structure of major international organizations
- Analyze the United Nations system including Security Council, General Assembly, and agencies
- Understand regional organizations and their roles in cooperation
- Evaluate the effectiveness and limitations of international organizations
- Examine the role of non-governmental organizations in global governance
- Connect international cooperation to addressing global challenges

KEY CONCEPTS:
1) United Nations: Founded 1945 to maintain peace and security; includes Security Council (5 permanent members with veto), General Assembly, and specialized agencies
2) Regional Organizations: Groups promoting cooperation within regions: EU, African Union, ASEAN, OAS, and others
3) Security Alliances: Military organizations like NATO providing collective defense
4) Economic Organizations: World Bank, IMF, WTO promoting economic development and trade
5) NGOs: Non-governmental organizations addressing issues from humanitarian aid to environmental protection

COMMON MISCONCEPTIONS:
- Believing the UN is a world government with authority over nations
- Thinking international organizations can solve problems alone without state cooperation
- Assuming all member states follow organizational rules
- Believing NGOs are the same as international governmental organizations
- Thinking international cooperation is entirely new

TEACHING SEQUENCE:
Begin by exploring why nations cooperate internationally despite sovereignty. Trace the history of international cooperation: League of Nations to UN founding. Study the UN system: structure, major bodies, and specialized agencies. Analyze Security Council powers and limitations including the veto. Examine regional organizations: EU, AU, ASEAN, and their varying levels of integration. Study security organizations: NATO and its post-Cold War evolution. Analyze economic organizations: World Bank, IMF, WTO and debates about their effectiveness. Study the role of NGOs in global governance. Evaluate organizational effectiveness: successes and failures. Connect to current global challenges and the need for international cooperation.

DIFFERENTIATION:
For struggling learners: Use organizational charts, focus on major organizations, provide case studies of organizational action, and connect to current events.
For advanced learners: Research specific organizations in depth, analyze reform debates, examine the relationship between sovereignty and international cooperation, and investigate emerging governance models.

VOCABULARY:
United Nations, Security Council, General Assembly, veto, peacekeeping, NATO, European Union, World Bank, IMF, WTO, NGO, multilateral, international law, treaty, sovereignty, collective security, humanitarian intervention

CONNECTION TO FUTURE LEARNING:
International organization understanding applies to all global issues. UN concepts connect to study of world regions and conflicts. Governance concepts apply to senior government course.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'International Organizations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF GRADE 9 HISTORY TOPIC PROMPTS
-- Total: 20 topics across 4 units
-- ============================================================================
