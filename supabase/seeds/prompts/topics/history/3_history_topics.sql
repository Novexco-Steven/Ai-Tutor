-- Grade 3 History Topic Prompts
-- 16 comprehensive topic prompts for Grade 3 History
-- Topics organized by unit: Communities Through Time, Geography and Resources, Economy and Trade, Government and Civic Responsibility

-- =====================================================
-- UNIT: COMMUNITIES THROUGH TIME
-- =====================================================

-- Topic: Reading Primary Sources
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Reading Primary Sources' AND grade_level_min = 3),
  'Reading Primary Sources (Grade 3) Topic Guide',
  'Teaching students to read letters, diaries, and photographs from history',
  'READING PRIMARY SOURCES - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should have basic reading comprehension skills and understanding of historical time periods. They should know the difference between past and present and have some experience discussing how we learn about history.

LEARNING OBJECTIVES:
- Understand what a primary source is (created during the time period being studied)
- Identify different types of primary sources: letters, diaries, photographs, artifacts
- Analyze what primary sources tell us about the past
- Distinguish between primary and secondary sources
- Use primary sources to draw conclusions about historical events

KEY CONCEPTS:
1) Primary sources are original documents or objects created during the time period being studied
2) Examples include diaries, letters, photographs, maps, newspapers, and artifacts
3) Primary sources give us firsthand accounts and evidence about the past
4) Secondary sources are created later, by people who studied the primary sources
5) Historians use primary sources as evidence to understand what really happened

COMMON MISCONCEPTIONS:
- Thinking any old document is a primary source (must be from the time period studied)
- Believing primary sources always tell the complete truth (perspective matters)
- Confusing primary sources with any historical information
- Not understanding that textbooks are secondary sources

TEACHING SEQUENCE:
Introduce primary sources with familiar examples (old family photos, letters from grandparents). Show examples of historical primary sources: letters from soldiers, diary entries, old photographs. Compare a primary source (a diary from the 1800s) with a secondary source (a textbook about the 1800s). Practice analyzing photographs: what do you see? What can you infer? What questions do you have? Examine letters or documents together, discussing vocabulary and meaning. Have students "become historians" by drawing conclusions from primary source evidence.

DIFFERENTIATION:
For struggling learners: Focus on visual primary sources like photographs first. Provide guided questions for analysis. Use simplified documents with vocabulary support.
For advanced learners: Compare multiple primary sources about the same event. Discuss reliability and perspective. Have students find primary sources independently.

VOCABULARY:
Primary source, secondary source, artifact, evidence, document, diary, letter, photograph, analyze, historian, firsthand, perspective, interpret

CONNECTION TO FUTURE LEARNING:
Understanding primary sources is fundamental to historical thinking at all levels. This skill prepares students for research, critical analysis of evidence, and understanding how we construct historical knowledge.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading Primary Sources' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Topic: How Communities Change
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'How Communities Change' AND grade_level_min = 3),
  'How Communities Change (Grade 3) Topic Guide',
  'Teaching students to compare communities from long ago to today',
  'HOW COMMUNITIES CHANGE - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand what a community is and have basic knowledge of life long ago from earlier grades. They should be able to compare and contrast and understand that things change over time.

LEARNING OBJECTIVES:
- Compare a community from the past to the same community today
- Identify factors that cause communities to change (technology, population, economy)
- Analyze how daily life has changed in communities over time
- Recognize what has remained the same despite changes
- Use evidence from then and now to support conclusions

KEY CONCEPTS:
1) Communities change over time due to many factors: technology, population growth, economic changes
2) Some aspects of community life change (transportation, communication) while others stay similar (need for homes, schools, gathering places)
3) We can compare old and new photographs, maps, and accounts to see changes
4) Changes can be positive, negative, or both depending on perspective
5) Understanding change helps us understand our own community better

COMMON MISCONCEPTIONS:
- Thinking communities changed all at once rather than gradually
- Believing all change is improvement
- Not recognizing continuity alongside change
- Assuming all communities change in the same ways

TEACHING SEQUENCE:
Use local history: show old photos of your community alongside current photos of the same locations. Create then-and-now comparison charts. Study how specific aspects changed: transportation (horses to cars), communication (letters to phones), work (farms to offices). Discuss WHY these changes happened. Interview older community members about changes they''ve witnessed. Create a timeline of community changes. Discuss what has stayed the same (need for homes, schools, parks). Debate: is your community better now or was it better before?

DIFFERENTIATION:
For struggling learners: Focus on concrete, visible changes with photo comparisons. Use simple then-and-now charts. Limit the time period compared.
For advanced learners: Research specific community changes in depth. Analyze causes and effects of changes. Compare change in different communities.

VOCABULARY:
Community, change, continuity, compare, contrast, population, technology, transportation, development, progress, past, present, transform, evolve

CONNECTION TO FUTURE LEARNING:
Understanding community change prepares students for studying historical change at larger scales: regional, national, and global. This develops the historical thinking skill of recognizing patterns of continuity and change over time.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'How Communities Change' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Topic: Important Historical Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Important Historical Events' AND grade_level_min = 3),
  'Important Historical Events (Grade 3) Topic Guide',
  'Teaching students about events that shaped communities',
  'IMPORTANT HISTORICAL EVENTS - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand that events happen in the past and can affect the present. They should be familiar with community concepts and have basic timeline skills.

LEARNING OBJECTIVES:
- Identify important events in local, state, or national history
- Understand how specific events changed communities
- Analyze cause and effect relationships in historical events
- Sequence events correctly on a timeline
- Explain the significance of historical events

KEY CONCEPTS:
1) Historical events are significant happenings that changed how people lived
2) Events have causes (why they happened) and effects (what happened because of them)
3) Some events are local (affected one community), while others are national or global
4) Understanding past events helps us understand our present community
5) Different people may view the same event differently depending on how it affected them

COMMON MISCONCEPTIONS:
- Thinking historical events don''t affect life today
- Believing there is always one clear cause for every event
- Not understanding that events affect different groups differently
- Assuming all events are clearly good or clearly bad

TEACHING SEQUENCE:
Choose 2-3 significant events to study in depth (could be local events, state events, or national events appropriate for the grade level). For each event, explore: What happened? When did it happen? Why did it happen (causes)? What changed because of it (effects)? Use primary sources to understand the event. Create cause-and-effect charts. Place events on a timeline. Discuss how the event affects life today. Compare perspectives of different groups affected by the event.

DIFFERENTIATION:
For struggling learners: Focus on one event at a time with clear, concrete effects. Use visual timelines and simple cause-effect diagrams. Provide structured note-taking guides.
For advanced learners: Research additional events independently. Compare multiple perspectives. Analyze how different events connect to each other.

VOCABULARY:
Historical event, cause, effect, significant, consequence, timeline, sequence, impact, change, perspective, local, national, affect

CONNECTION TO FUTURE LEARNING:
Understanding how events shape communities prepares students for studying broader historical periods and themes. The cause-and-effect thinking developed here is essential for all historical analysis.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Important Historical Events' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Topic: Timelines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Timelines' AND grade_level_min = 3),
  'Timelines (Grade 3) Topic Guide',
  'Teaching students to create and read timelines of events',
  'TIMELINES - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand that events happen in sequence and have basic number line concepts from math. They should be familiar with dates and chronological order.

LEARNING OBJECTIVES:
- Read and interpret timelines showing historical events
- Create timelines with correctly placed events
- Understand that timelines show events in chronological order
- Calculate time elapsed between events on a timeline
- Use timelines to understand historical sequences

KEY CONCEPTS:
1) A timeline is a visual representation of events in chronological (time) order
2) Events are placed on the timeline according to when they happened
3) The space between events shows the passage of time
4) Timelines can cover different spans: days, years, centuries, or more
5) Timelines help us see the sequence of events and how much time passed between them

COMMON MISCONCEPTIONS:
- Thinking all spaces on a timeline represent equal time (if not drawn to scale)
- Not understanding BCE/BC and CE/AD (if applicable)
- Confusing the order of events when the scale is unclear
- Believing timelines must show every event in history

TEACHING SEQUENCE:
Begin with personal timelines: major events in students'' lives from birth to now. Read existing timelines together, identifying events and their dates. Practice determining what happened first, second, third. Create timelines of familiar stories or recent events. Calculate time elapsed between events. Create class timelines of studied historical events. Compare timelines of different lengths (one year vs. one century). Practice adding events to existing timelines in the correct position.

DIFFERENTIATION:
For struggling learners: Use simple timelines with few events. Focus on sequencing (before/after) before calculating time. Use physical timeline activities with movement.
For advanced learners: Create timelines with different scales. Add multiple categories of events to one timeline. Compare parallel timelines (what was happening in two places at the same time?).

VOCABULARY:
Timeline, chronological, sequence, event, date, order, before, after, elapsed, century, decade, past, present, scale, era

CONNECTION TO FUTURE LEARNING:
Timeline skills are essential for all historical study. Understanding chronology and the passage of time prepares students for studying longer historical periods and understanding the relationship between events across time.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Timelines' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: GEOGRAPHY AND RESOURCES
-- =====================================================

-- Topic: Geographic Regions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Geographic Regions' AND grade_level_min = 3),
  'Geographic Regions (Grade 3) Topic Guide',
  'Teaching students to identify and describe different regions of the United States',
  'GEOGRAPHIC REGIONS - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should be able to read basic maps and use cardinal directions. They should know the continents and locate the United States. Understanding of basic landforms (mountains, rivers, plains) is helpful.

LEARNING OBJECTIVES:
- Identify the main geographic regions of the United States
- Describe characteristics of each region (landforms, climate, resources)
- Locate regions on a map of the United States
- Understand how geography affects how people live in different regions
- Compare and contrast different regions

KEY CONCEPTS:
1) The United States can be divided into geographic regions with shared characteristics
2) Regions are defined by landforms, climate, natural resources, and sometimes culture
3) Different regions have different characteristics: mountains, plains, deserts, coastlines
4) Geography affects how people live: what they grow, what jobs they have, how they travel
5) People adapt to their region''s geography and use its resources

COMMON MISCONCEPTIONS:
- Thinking region boundaries are absolute lines (regions often blend together)
- Believing all parts of a region are identical
- Not understanding that people in different regions face different challenges
- Assuming geography completely determines how people live

TEACHING SEQUENCE:
Introduce the concept of regions: areas with similar characteristics. Show maps dividing the U.S. into regions (there are different ways to divide it). Study each region: locate it, identify major landforms, describe climate, discuss resources. Compare regions using charts or Venn diagrams. Discuss how geography affects life in each region. Use videos and images to show each region''s landscapes. Have students "visit" different regions through research and presentations.

DIFFERENTIATION:
For struggling learners: Focus on 2-3 key characteristics per region. Use visual comparisons and maps. Create region fact cards with pictures.
For advanced learners: Research one region in depth. Compare U.S. regions to regions in other countries. Analyze how regions have changed over time.

VOCABULARY:
Region, landform, climate, natural resources, mountains, plains, plateau, coast, desert, valley, characteristics, geography, adapt

CONNECTION TO FUTURE LEARNING:
Understanding U.S. regions prepares students for detailed study of specific regions in Grade 4 and understanding how geography shapes history, economy, and culture at all grade levels.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Geographic Regions' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Topic: Natural Resources
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Natural Resources' AND grade_level_min = 3),
  'Natural Resources (Grade 3) Topic Guide',
  'Teaching students about renewable and nonrenewable resources',
  'NATURAL RESOURCES - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand basic geography and that different places have different resources. They should have basic understanding of where products come from and environmental awareness.

LEARNING OBJECTIVES:
- Define natural resources and give examples
- Distinguish between renewable and nonrenewable resources
- Identify natural resources in their region and the nation
- Understand how communities depend on natural resources
- Recognize the importance of conserving resources

KEY CONCEPTS:
1) Natural resources are materials from nature that people use: water, soil, trees, minerals, oil
2) Renewable resources can be replaced: trees, water, solar energy (if used wisely)
3) Nonrenewable resources cannot be replaced: oil, coal, natural gas, minerals
4) Different regions have different resources based on their geography
5) Communities depend on resources for food, energy, materials, and jobs

COMMON MISCONCEPTIONS:
- Thinking renewable means unlimited (renewable resources can be depleted if overused)
- Believing all natural things are natural resources (only things people use)
- Not understanding that many products require multiple resources
- Assuming resources are evenly distributed

TEACHING SEQUENCE:
Define natural resources and brainstorm examples. Sort resources into renewable and nonrenewable categories. Identify resources in your local area and region. Trace everyday products back to their natural resource origins (shirt → cotton → soil). Map where different resources are found in the U.S. Discuss how your community uses resources. Explore what happens when resources are used up or damaged. Discuss conservation and why it matters.

DIFFERENTIATION:
For struggling learners: Focus on familiar resources (water, trees, soil) first. Use sorting activities with pictures. Create a simple renewable/nonrenewable chart.
For advanced learners: Research how technology changes resource use. Explore debates about resource management. Study how communities have been affected by resource depletion.

VOCABULARY:
Natural resource, renewable, nonrenewable, conservation, mineral, fuel, energy, soil, water, forest, oil, coal, natural gas, sustain, deplete

CONNECTION TO FUTURE LEARNING:
Understanding natural resources prepares students for studying economics, environmental science, and the relationship between resources and historical events (why communities formed where they did, causes of conflict, etc.).', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Natural Resources' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Topic: Adapting to Environments
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Adapting to Environments' AND grade_level_min = 3),
  'Adapting to Environments (Grade 3) Topic Guide',
  'Teaching students how people live in different climates',
  'ADAPTING TO ENVIRONMENTS - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand that Earth has different climates and geographic features. They should have learned about geographic regions and understand basic human needs (shelter, food, clothing).

LEARNING OBJECTIVES:
- Understand how people adapt to different environments and climates
- Identify how climate affects housing, clothing, food, and activities
- Compare how people in different environments meet their needs
- Recognize both historical and modern adaptations
- Appreciate human ingenuity in adapting to challenging environments

KEY CONCEPTS:
1) Humans have lived in almost every environment on Earth by adapting
2) Climate affects what people wear, how they build homes, what they eat, and how they travel
3) People use local resources and technology to adapt to their environment
4) Adaptations can be traditional (developed over time) or modern (using new technology)
5) Some environments are more challenging to live in than others, requiring more adaptations

COMMON MISCONCEPTIONS:
- Thinking people only live in "nice" environments
- Believing modern technology eliminates the need for adaptation
- Assuming people in different environments are less advanced
- Not recognizing that all communities adapt to their environment in some way

TEACHING SEQUENCE:
Compare how people meet basic needs (shelter, clothing, food) in different environments. Study specific examples: desert communities, arctic communities, tropical communities, mountain communities. Examine housing adaptations: igloos, adobe, stilted houses, etc. Discuss clothing adaptations for hot, cold, wet, and dry climates. Explore food adaptations based on what can be grown or found. Analyze how technology has changed adaptation (air conditioning, heating, irrigation). Connect to students'' own community: how do we adapt to our environment?

DIFFERENTIATION:
For struggling learners: Focus on 2-3 contrasting environments with clear visual comparisons. Use picture sorting activities. Create adaptation charts with images.
For advanced learners: Research one environment in depth. Compare traditional and modern adaptations. Study how climate change affects communities.

VOCABULARY:
Adapt, adaptation, environment, climate, shelter, housing, clothing, temperature, hot, cold, desert, arctic, tropical, technology, survive, thrive

CONNECTION TO FUTURE LEARNING:
Understanding human adaptation prepares students for studying how geography shaped historical settlements, why civilizations developed where they did, and how environmental challenges affect communities today.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adapting to Environments' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Topic: Human Impact on Environment
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Human Impact on Environment' AND grade_level_min = 3),
  'Human Impact on Environment (Grade 3) Topic Guide',
  'Teaching students how people change the land',
  'HUMAN IMPACT ON ENVIRONMENT - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand natural resources and how people use them. They should know about different environments and have basic environmental awareness.

LEARNING OBJECTIVES:
- Identify ways humans change the environment
- Distinguish between positive and negative environmental impacts
- Understand consequences of human actions on the environment
- Recognize how communities can protect the environment
- Connect individual actions to environmental impact

KEY CONCEPTS:
1) Humans change the environment through building, farming, mining, and other activities
2) Some changes help people (cities, farms, roads) but can harm nature
3) Pollution, deforestation, and overuse of resources are negative impacts
4) Conservation and protection can help restore and maintain environments
5) Everyone can help reduce negative environmental impact through their choices

COMMON MISCONCEPTIONS:
- Thinking individual actions don''t matter
- Believing environmental damage can''t be fixed
- Assuming all human changes are negative (or all are positive)
- Not understanding the connection between daily actions and environmental impact

TEACHING SEQUENCE:
Brainstorm ways humans change the environment (building, farming, driving). Sort impacts into helpful, harmful, and neutral categories. Study specific examples: deforestation, pollution, endangered species. Discuss why people make changes that harm the environment. Explore conservation efforts: national parks, recycling, clean energy. Connect to local environment: how has your community changed the land? Develop an action plan: how can we reduce our negative impact? Celebrate positive examples of environmental protection.

DIFFERENTIATION:
For struggling learners: Focus on local, visible examples of environmental impact. Use before/after pictures. Create simple cause-and-effect chains.
For advanced learners: Research an environmental issue in depth. Study the debate between development and conservation. Create an environmental action project.

VOCABULARY:
Environment, impact, pollution, conservation, deforestation, endangered, extinct, protect, recycle, resources, damage, restore, ecosystem, habitat

CONNECTION TO FUTURE LEARNING:
Understanding human environmental impact prepares students for studying environmental science, sustainable development, and the environmental consequences of historical events like industrialization and urbanization.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Human Impact on Environment' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: ECONOMY AND TRADE
-- =====================================================

-- Topic: Goods and Services
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Goods and Services' AND grade_level_min = 3),
  'Goods and Services (Grade 3) Topic Guide',
  'Teaching the difference between goods and services',
  'GOODS AND SERVICES - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should have basic understanding of jobs and work. They should understand that people exchange money for things they need or want. Basic vocabulary about community workers is helpful.

LEARNING OBJECTIVES:
- Define goods and services and distinguish between them
- Identify examples of goods and services in their community
- Understand that people produce goods and provide services
- Recognize that goods and services meet people''s needs and wants
- Analyze how goods and services connect in the economy

KEY CONCEPTS:
1) Goods are physical things that people make or grow to sell (food, clothes, toys)
2) Services are helpful actions that people do for others (haircut, teaching, medical care)
3) People buy goods and services to meet their needs and wants
4) Some workers produce goods (farmers, manufacturers); others provide services (doctors, teachers)
5) Goods and services are the foundation of the economy

COMMON MISCONCEPTIONS:
- Thinking services aren''t valuable because you can''t hold them
- Confusing needs (what we must have) with wants (what we''d like)
- Believing all goods come from factories (some are natural, some are handmade)
- Not understanding that services require skill and training

TEACHING SEQUENCE:
Define goods with concrete examples (book, apple, chair). Define services with examples (haircut, bus ride, medical checkup). Practice sorting: is this a good or a service? Explore your community: what goods are produced here? What services are available? Connect goods and services to jobs. Discuss: what goods and services does your family use? Play a goods and services game or simulation. Create a class store or service center.

DIFFERENTIATION:
For struggling learners: Use picture sorting with clear goods and service examples. Create a class chart with pictures. Focus on familiar, everyday examples.
For advanced learners: Explore how goods and services connect (haircut uses scissors - goods - and skill - service). Analyze the goods and services in a complex product or experience.

VOCABULARY:
Goods, services, produce, provide, consumer, producer, needs, wants, buy, sell, market, economy, trade, exchange

CONNECTION TO FUTURE LEARNING:
Understanding goods and services is foundational for all economic study. This prepares students for learning about trade, supply and demand, specialization, and how economies work.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Goods and Services' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Topic: Supply and Demand
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Supply and Demand' AND grade_level_min = 3),
  'Supply and Demand (Grade 3) Topic Guide',
  'Teaching how prices are affected by supply and demand',
  'SUPPLY AND DEMAND - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand what goods and services are and the concept of buying and selling. Basic number sense for comparing prices is helpful.

LEARNING OBJECTIVES:
- Understand supply as the amount of something available
- Understand demand as how much people want something
- Explain how supply and demand affect prices
- Apply supply and demand concepts to real-world examples
- Predict what happens to prices when supply or demand changes

KEY CONCEPTS:
1) Supply is how much of a good or service is available
2) Demand is how much people want a good or service
3) When demand is high and supply is low, prices go up
4) When supply is high and demand is low, prices go down
5) Supply and demand help explain why different things cost different amounts

COMMON MISCONCEPTIONS:
- Thinking prices are random or arbitrary
- Believing only supply OR demand matters (both interact)
- Not understanding that demand can change based on preferences
- Assuming prices never change once set

TEACHING SEQUENCE:
Introduce supply with a concrete example (limited toy everyone wants). Introduce demand (how much people want something). Use a simulation: classroom auction with limited items. Observe how prices change based on supply and demand. Study real examples: why do umbrellas cost more during rain? Why are strawberries cheaper in summer? Create supply and demand scenarios and predict price changes. Graph simple supply and demand relationships.

DIFFERENTIATION:
For struggling learners: Use very concrete classroom simulations with physical objects. Focus on basic concepts: more wanted + less available = higher price. Use visual representations.
For advanced learners: Explore factors that affect supply and demand. Study how businesses use supply and demand. Analyze more complex market scenarios.

VOCABULARY:
Supply, demand, price, scarce, plentiful, available, want, need, cost, expensive, cheap, increase, decrease, market

CONNECTION TO FUTURE LEARNING:
Understanding supply and demand prepares students for deeper economic study, including market systems, competition, and how prices coordinate economic activity.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Supply and Demand' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Topic: Trade
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Trade' AND grade_level_min = 3),
  'Trade (Grade 3) Topic Guide',
  'Teaching why communities trade with each other',
  'TRADE - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand goods and services and have learned about natural resources and geographic regions. They should know that different places have different resources.

LEARNING OBJECTIVES:
- Understand that trade is exchanging goods or services
- Explain why communities trade with each other
- Recognize that trade allows people to get things they can''t produce themselves
- Identify examples of trade in their community, nation, and world
- Understand that trade connects communities

KEY CONCEPTS:
1) Trade is the exchange of goods or services between people or communities
2) People trade because different places have different resources and abilities
3) Trade allows people to get things they can''t make or grow themselves
4) Trade can happen between neighbors, between states, or between countries
5) Trade connects communities and makes everyone better off by allowing specialization

COMMON MISCONCEPTIONS:
- Thinking a community should produce everything itself
- Believing trade only benefits one side
- Not understanding that trade can be local, regional, national, or global
- Assuming trade always involves money (barter is also trade)

TEACHING SEQUENCE:
Start with a classroom trading activity (trade cards, stickers, or classroom tokens). Discuss why trading made everyone happier. Extend to communities: why does your community trade with others? Map trade: where do products in your home come from? Study historical examples of trade (Silk Road, colonial trade). Discuss how trade connects communities and countries. Explore what would happen without trade. Examine fair trade and ethical trade concepts.

DIFFERENTIATION:
For struggling learners: Use concrete trading simulations. Focus on obvious examples (oranges from Florida, cars from Detroit). Create visual trade maps.
For advanced learners: Research complex trade networks. Explore why trade can be controversial. Study the history of trade routes and their impact.

VOCABULARY:
Trade, exchange, barter, import, export, goods, resources, specialization, benefit, connect, local, regional, international, partner

CONNECTION TO FUTURE LEARNING:
Understanding trade prepares students for studying historical trade networks, economic systems, globalization, and international relations.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Trade' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Topic: Making Choices
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Making Choices' AND grade_level_min = 3),
  'Making Choices (Grade 3) Topic Guide',
  'Teaching opportunity cost and scarcity',
  'MAKING CHOICES - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand basic economic concepts like goods, services, and wants vs. needs. They should have experience making choices and understanding consequences.

LEARNING OBJECTIVES:
- Understand that scarcity means we can''t have everything we want
- Recognize that choices involve trade-offs
- Define and apply the concept of opportunity cost
- Make informed choices by considering trade-offs
- Analyze economic decisions in terms of what is gained and what is given up

KEY CONCEPTS:
1) Scarcity means we have limited resources but unlimited wants
2) Because of scarcity, we must make choices about how to use our resources
3) Every choice has a trade-off: getting one thing means giving up another
4) Opportunity cost is what you give up when you make a choice
5) Good decision-making considers the costs and benefits of each option

COMMON MISCONCEPTIONS:
- Thinking only money is scarce (time, resources, and attention are also scarce)
- Believing we can have everything if we just work hard enough
- Not recognizing that choosing one thing means not choosing another
- Ignoring opportunity cost in decision-making

TEACHING SEQUENCE:
Present a choice scenario with limited resources (class party budget, limited free time). Discuss: what would you choose? What would you give up? Define scarcity with examples beyond money (time, materials, energy). Introduce opportunity cost: the thing you gave up is the cost of your choice. Practice identifying opportunity costs in various scenarios. Apply to personal decisions: how do you choose how to spend your allowance or time? Discuss government and community choices: building a new park means not building something else.

DIFFERENTIATION:
For struggling learners: Use concrete, familiar choices (buy candy OR save for a toy). Create choice charts with pictures. Focus on simple one-or-the-other scenarios.
For advanced learners: Analyze complex decisions with multiple factors. Explore how opportunity cost applies to communities and nations. Study economic decision-making models.

VOCABULARY:
Scarcity, choice, trade-off, opportunity cost, decision, limited, unlimited, resources, wants, needs, benefit, cost, value, prioritize

CONNECTION TO FUTURE LEARNING:
Understanding scarcity and opportunity cost is fundamental to all economic thinking. These concepts prepare students for studying personal finance, business decisions, and government policy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Making Choices' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: GOVERNMENT AND CIVIC RESPONSIBILITY
-- =====================================================

-- Topic: Three Branches of Government
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Three Branches of Government' AND grade_level_min = 3),
  'Three Branches of Government (Grade 3) Topic Guide',
  'Teaching about legislative, executive, and judicial branches',
  'THREE BRANCHES OF GOVERNMENT - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand what government is and why communities have rules and laws. They should be familiar with the concept of leadership and have learned about local government.

LEARNING OBJECTIVES:
- Name the three branches of the U.S. federal government
- Describe the main job of each branch
- Identify key leaders and institutions in each branch
- Understand why power is divided among three branches
- Apply the concept to both federal and state governments

KEY CONCEPTS:
1) The U.S. government has three branches: legislative, executive, and judicial
2) The legislative branch (Congress) makes the laws
3) The executive branch (President) enforces the laws
4) The judicial branch (Courts) interprets the laws
5) Dividing power prevents any one person or group from having too much control

COMMON MISCONCEPTIONS:
- Thinking the President makes all laws
- Confusing different leaders'' roles
- Believing one branch is more important than others
- Not understanding that states have similar three-branch systems

TEACHING SEQUENCE:
Ask: why don''t we have just one person in charge of everything? Introduce the concept of separating power. Teach each branch with its key job and institutions. Use hand signals or movements for each branch. Learn about key figures: President, Senators, Representatives, Supreme Court Justices. Create a three-branches chart or diagram. Study how the branches work together on an issue (how a law is made). Apply to state government: what are our state''s three branches?

DIFFERENTIATION:
For struggling learners: Use simple keywords: makes laws, enforces laws, interprets laws. Create visual diagrams with pictures of key buildings and leaders. Use songs or rhymes to remember.
For advanced learners: Study checks and balances between branches. Research current leaders. Analyze a current event involving multiple branches.

VOCABULARY:
Branch, legislative, executive, judicial, Congress, Senate, House of Representatives, President, Supreme Court, law, Constitution, government, federal, power

CONNECTION TO FUTURE LEARNING:
Understanding the three branches prepares students for deeper study of checks and balances, the Constitution, and how government decisions are made. This is foundational for all civic education.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Three Branches of Government' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Topic: Local Government (Grade 3)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Local Government' AND grade_level_min = 3),
  'Local Government (Grade 3) Topic Guide',
  'Teaching about city and county governance',
  'LOCAL GOVERNMENT (GRADE 3) - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have basic understanding of government from earlier grades. They should know their community and city/town. Familiarity with community services is helpful.

LEARNING OBJECTIVES:
- Identify local government leaders and their roles
- Understand how local government is organized
- Recognize services provided by local government
- Explain how citizens can participate in local government
- Compare local government to state and federal government

KEY CONCEPTS:
1) Local government manages your city, town, or county
2) Local leaders include mayors, city council members, and county commissioners
3) Local government provides services: police, fire, parks, roads, libraries
4) Citizens can participate through voting, attending meetings, and communicating with leaders
5) Local government is closest to the people and handles everyday community needs

COMMON MISCONCEPTIONS:
- Thinking the federal government handles local services
- Not knowing who local leaders are or how they''re chosen
- Believing citizens can''t influence local government
- Confusing city and county government roles

TEACHING SEQUENCE:
Review what local government means (your city, town, or county). Identify your local leaders: who is the mayor? City council members? Research what each local leader does. List services local government provides (most are things students use daily). Compare local government structure to state and federal. Study how local decisions are made (council meetings). Explore how citizens participate: attending meetings, writing letters, voting. If possible, visit city hall or invite a local official.

DIFFERENTIATION:
For struggling learners: Focus on concrete services students experience (parks, libraries, roads). Create a local government chart with photos of actual local buildings and leaders.
For advanced learners: Research a current local issue. Attend or watch a city council meeting. Interview a local government worker.

VOCABULARY:
Local government, city council, mayor, county, commissioner, services, meeting, vote, citizen, participate, community, tax, represent

CONNECTION TO FUTURE LEARNING:
Understanding local government prepares students for studying state and federal government and for becoming active citizens in their communities.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Local Government' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Topic: Laws and Rules
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Laws and Rules' AND grade_level_min = 3),
  'Laws and Rules (Grade 3) Topic Guide',
  'Teaching why laws exist and how they are made',
  'LAWS AND RULES - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand rules at home and school. They should have learned about the three branches of government. Basic understanding of rights and responsibilities is helpful.

LEARNING OBJECTIVES:
- Distinguish between rules and laws
- Explain why communities need laws
- Describe the process of how laws are made
- Recognize that laws apply equally to everyone
- Understand that laws can be changed through proper processes

KEY CONCEPTS:
1) Laws are official rules made by government that everyone must follow
2) Laws protect people''s rights, safety, and property
3) Laws are made through a democratic process by elected representatives
4) Laws apply equally to all citizens, including government leaders
5) Laws can be changed when people believe they should be (through voting, legislators, or courts)

COMMON MISCONCEPTIONS:
- Thinking laws are made by one person
- Believing laws are permanent and can never change
- Assuming rules and laws are the same thing
- Not understanding that citizens can influence law-making

TEACHING SEQUENCE:
Compare rules (school, home) to laws (government). Discuss: what''s the difference? Why do communities need laws? Explore categories of laws: safety laws, property laws, civil rights laws. Learn the law-making process in simplified form: an idea becomes a bill, lawmakers vote, President signs. Study a specific law and trace how it was made. Discuss how laws have changed over time (historical examples like voting rights). Practice proposing a "law" through democratic process in the classroom.

DIFFERENTIATION:
For struggling learners: Focus on familiar laws and their purposes. Use visual flowcharts for the law-making process. Create simple cause-effect connections (law → protection).
For advanced learners: Research a specific law''s history. Study how a current bill is progressing. Explore the amendment process for changing laws.

VOCABULARY:
Law, rule, bill, Congress, vote, president, sign, veto, constitution, amendment, citizen, rights, represent, legislator, legal, illegal

CONNECTION TO FUTURE LEARNING:
Understanding laws and the legislative process prepares students for studying the Constitution, citizenship, and how to be active participants in a democracy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Laws and Rules' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Topic: Being a Responsible Citizen (Grade 3)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Being a Responsible Citizen' AND grade_level_min = 3),
  'Being a Responsible Citizen (Grade 3) Topic Guide',
  'Teaching rights and responsibilities of citizens',
  'BEING A RESPONSIBLE CITIZEN (GRADE 3) - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have learned about citizenship in earlier grades. They should understand basic rights and responsibilities. Familiarity with government structure is helpful.

LEARNING OBJECTIVES:
- Identify key rights of American citizens
- Understand responsibilities that come with citizenship
- Explain how citizens can participate in democracy
- Recognize the connection between rights and responsibilities
- Practice citizenship through community involvement

KEY CONCEPTS:
1) Citizens have rights (freedoms) protected by law
2) Citizens also have responsibilities to their community and nation
3) Key rights include freedom of speech, religion, and voting (when old enough)
4) Key responsibilities include following laws, paying taxes, and jury duty
5) Good citizens actively participate in making their community and nation better

COMMON MISCONCEPTIONS:
- Thinking rights exist without responsibilities
- Believing only adults can be good citizens
- Not understanding that voting is both a right and a responsibility
- Assuming citizenship only involves following rules

TEACHING SEQUENCE:
Review rights students have learned about (from Bill of Rights). Pair each right with related responsibilities. Discuss: why are responsibilities important? Explore ways citizens participate: voting, serving on juries, paying taxes, volunteering. Identify ways young people can be good citizens now. Study examples of citizens making a difference. Plan a class citizenship project. Reflect: how can I be a better citizen?

DIFFERENTIATION:
For struggling learners: Focus on concrete actions young people can take. Create a rights-and-responsibilities match game. Use local examples of good citizenship.
For advanced learners: Research a citizen activist who made a difference. Explore constitutional rights in more depth. Lead a community service project.

VOCABULARY:
Citizen, citizenship, rights, responsibilities, freedom, participate, vote, jury, taxes, volunteer, democracy, community, service, represent, civic

CONNECTION TO FUTURE LEARNING:
Understanding citizenship prepares students for active participation in democracy as they grow. This connects to all future civic education and preparing students to become engaged citizens.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Being a Responsible Citizen' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;
