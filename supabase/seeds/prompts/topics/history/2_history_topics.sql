-- Grade 2 History Topic Prompts
-- 16 comprehensive topic prompts for Grade 2 History
-- Topics organized by unit: Communities Around the World, Geography Skills, Government and Laws, American History

-- =====================================================
-- UNIT: COMMUNITIES AROUND THE WORLD
-- =====================================================

-- Topic: Urban Communities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Urban Communities' AND grade_level_min = 2),
  'Urban Communities (Grade 2) Topic Guide',
  'Teaching about life in cities',
  'URBAN COMMUNITIES - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should understand what a community is and have basic map reading skills. They should be able to compare different places. They should have awareness that people live in different types of places.

LEARNING OBJECTIVES:
- Define an urban community as a city with many people and buildings
- Identify characteristics of urban areas (tall buildings, public transportation, many people)
- Recognize advantages and challenges of living in a city
- Compare urban communities to students'' own community
- Understand why people choose to live in urban areas

KEY CONCEPTS:
1) An urban community is a city where many people live close together
2) Cities have tall buildings, apartments, lots of stores, and public transportation
3) People in cities often walk or use buses, subways, and taxis instead of cars
4) Cities have many jobs, stores, restaurants, museums, and entertainment options
5) Urban areas can be crowded, noisy, and busy, but also exciting and convenient

COMMON MISCONCEPTIONS:
- Thinking all cities look the same
- Believing city life is entirely good or entirely bad
- Not understanding that cities can have parks and nature
- Assuming everyone who lives in a city is rich or poor (cities have diversity)

TEACHING SEQUENCE:
Show pictures and videos of various cities (big cities, small cities, different countries). Discuss what children notice (tall buildings, lots of people, traffic). Create a chart of urban community characteristics. Discuss why people live in cities (jobs, entertainment, don''t need a car). Talk about challenges (crowded, expensive, noisy). Compare to students'' own community. Read books set in urban communities. If possible, take a virtual field trip to a major city. Discuss what students would like and not like about city life.

DIFFERENTIATION:
For struggling learners: Focus on concrete, visible features (tall buildings, buses, sidewalks). Use lots of pictures. Create simple comparison charts.
For advanced learners: Research a specific city''s history and growth. Compare cities in different countries. Explore how cities solve challenges (parks, traffic management).

VOCABULARY:
Urban, city, apartment, skyscraper, public transportation, subway, bus, crowded, downtown, neighborhood, sidewalk, traffic, metropolitan

CONNECTION TO FUTURE LEARNING:
Understanding urban communities prepares children for comparing community types, studying urbanization, and understanding population distribution. This connects to economics, geography, and civic education.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Urban Communities' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Topic: Suburban Communities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Suburban Communities' AND grade_level_min = 2),
  'Suburban Communities (Grade 2) Topic Guide',
  'Teaching about life in suburbs near cities',
  'SUBURBAN COMMUNITIES - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should understand what communities are and have learned about urban areas. They should have basic comparison skills. Many children may live in suburban areas themselves.

LEARNING OBJECTIVES:
- Define a suburban community as an area near a city but with more space
- Identify characteristics of suburbs (houses with yards, shopping centers, schools)
- Understand that many people in suburbs work in nearby cities
- Compare suburban life to urban and rural life
- Recognize why families choose suburban living

KEY CONCEPTS:
1) Suburbs are communities near cities, but with more space and fewer tall buildings
2) Many suburban homes have yards, driveways, and are spread apart
3) People in suburbs often drive cars to work, stores, and school
4) Suburbs usually have good schools, parks, and shopping centers
5) Many people live in suburbs for more space while staying close to city jobs

COMMON MISCONCEPTIONS:
- Thinking suburbs are boring or all the same
- Not understanding the connection between suburbs and cities
- Believing suburbs have always existed (they grew after cars became common)
- Assuming all suburban homes look identical

TEACHING SEQUENCE:
Show pictures and maps of suburban areas near cities. Point out the relationship between suburbs and urban centers. Discuss characteristics: single-family homes, yards, cars, shopping centers. Create a Venn diagram comparing suburbs and cities. Discuss why families might choose suburbs (space, schools, safer neighborhoods). Talk about challenges (need a car for everything, longer commutes). Compare to students'' own community. Read books set in suburban communities.

DIFFERENTIATION:
For struggling learners: Focus on visible differences from cities (houses instead of apartments, cars instead of subways). Use concrete picture comparisons.
For advanced learners: Research the history of suburbs and why they grew after WWII. Discuss environmental impacts of suburban development. Compare suburbs in different regions.

VOCABULARY:
Suburban, suburb, neighborhood, yard, driveway, commute, shopping center, mall, residential, single-family home, cul-de-sac, community

CONNECTION TO FUTURE LEARNING:
Understanding suburbs prepares children for studying population patterns, transportation, environmental issues, and how communities change over time. This connects to American history and the growth of the middle class.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Suburban Communities' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Topic: Rural Communities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Rural Communities' AND grade_level_min = 2),
  'Rural Communities (Grade 2) Topic Guide',
  'Teaching about life in the country and on farms',
  'RURAL COMMUNITIES - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should understand what communities are and have learned about urban and suburban areas. They should have basic knowledge of where food comes from. Some children may live in rural areas.

LEARNING OBJECTIVES:
- Define a rural community as countryside with open spaces and fewer people
- Identify characteristics of rural areas (farms, ranches, forests, small towns)
- Understand that rural areas produce food and resources for everyone
- Compare rural life to urban and suburban life
- Appreciate the importance of rural communities

KEY CONCEPTS:
1) Rural areas are the countryside, with open land, farms, and few buildings
2) People in rural communities often farm, raise animals, or work with natural resources
3) Rural communities provide food, wood, and other resources that cities need
4) Life in rural areas can be quieter and more spread out, with fewer stores and services
5) People must often travel farther for shopping, schools, and medical care

COMMON MISCONCEPTIONS:
- Thinking all rural areas are farms
- Believing rural life is entirely simple or old-fashioned
- Not understanding modern technology in agriculture
- Assuming rural people are less educated or sophisticated

TEACHING SEQUENCE:
Show pictures and videos of rural communities (farms, ranches, small towns, wilderness). Discuss what students notice (open spaces, animals, fewer buildings). Create a chart of rural characteristics. Discuss what rural communities provide (food, wood, recreation). Talk about what life is like: longer distances, fewer stores, different activities. Compare to urban and suburban life using a three-way Venn diagram. Read books set in rural communities. Discuss why people choose to live in rural areas.

DIFFERENTIATION:
For struggling learners: Focus on farms and animals as familiar rural images. Use picture matching activities. Create simple "city vs. country" comparisons.
For advanced learners: Research modern farming technology. Explore different types of rural communities (fishing, logging, ranching). Discuss challenges facing rural communities today.

VOCABULARY:
Rural, country, countryside, farm, ranch, agriculture, crops, livestock, small town, open space, nature, harvest, farmer

CONNECTION TO FUTURE LEARNING:
Understanding rural communities prepares children for studying agriculture, natural resources, economics, and the interdependence of communities. This connects to environmental science and understanding where products come from.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rural Communities' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Topic: Communities Worldwide
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Communities Worldwide' AND grade_level_min = 2),
  'Communities Worldwide (Grade 2) Topic Guide',
  'Teaching how people live in other countries',
  'COMMUNITIES WORLDWIDE - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should understand the three types of communities (urban, suburban, rural) and have basic knowledge of continents and countries. They should have beginning understanding that the world has diverse cultures and places.

LEARNING OBJECTIVES:
- Recognize that communities exist all over the world
- Identify similarities and differences between communities in different countries
- Understand that geography affects how people live (climate, landforms)
- Appreciate cultural diversity while recognizing shared human needs
- Compare communities in other countries to their own community

KEY CONCEPTS:
1) People around the world live in urban, suburban, and rural communities just like in America
2) Communities look different based on climate, geography, culture, and resources
3) All communities meet basic human needs (shelter, food, work, family) in different ways
4) Learning about other communities helps us understand and appreciate different ways of living
5) Despite differences, people everywhere share common needs and experiences

COMMON MISCONCEPTIONS:
- Thinking only America has cities and suburbs
- Believing other countries are "less developed" or "primitive"
- Assuming everyone in a country lives the same way
- Not recognizing that communities change and modernize everywhere

TEACHING SEQUENCE:
Select 3-4 communities from different continents to study (example: Tokyo, rural Kenya, a village in Peru, London). For each, explore: geography and climate, what homes look like, how children live, what people do for work. Create comparison charts across communities. Discuss similarities (families, schools, play) and differences (buildings, food, transportation). Use maps to locate each community. Read books or watch videos about children in different countries. Discuss what students would find familiar and unfamiliar.

DIFFERENTIATION:
For struggling learners: Focus on concrete similarities (families, homes, schools) across just 2-3 communities. Use lots of pictures and videos. Create simple matching activities.
For advanced learners: Research a community of their choice in depth. Discuss how geography affects lifestyle. Explore cultural traditions and celebrations.

VOCABULARY:
Culture, customs, traditions, climate, geography, diverse, similar, different, around the world, global, international, community, language

CONNECTION TO FUTURE LEARNING:
Understanding global communities prepares children for studying world cultures, geography, and history. This develops cultural competence and global awareness that is increasingly important in an interconnected world.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Communities Worldwide' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: GEOGRAPHY SKILLS
-- =====================================================

-- Topic: Cardinal Directions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Cardinal Directions' AND grade_level_min = 2),
  'Cardinal Directions (Grade 2) Topic Guide',
  'Teaching north, south, east, and west on maps',
  'CARDINAL DIRECTIONS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should understand basic position words (left, right, up, down). They should have experience reading simple maps and understanding that maps show places from above.

LEARNING OBJECTIVES:
- Name and identify the four cardinal directions: north, south, east, west
- Use a compass rose to find directions on a map
- Apply cardinal directions to describe locations and give directions
- Understand that north is typically at the top of a map
- Use cardinal directions in the real world, not just on maps

KEY CONCEPTS:
1) There are four main directions: North, South, East, and West
2) A compass rose on a map shows which way is north, south, east, and west
3) North is usually at the top of a map, south at the bottom, east on the right, west on the left
4) We can use cardinal directions to describe where places are and how to get places
5) The sun rises in the east and sets in the west, which helps us find directions

COMMON MISCONCEPTIONS:
- Thinking "up" and "north" are the same (they are on most maps but not in real life)
- Confusing east and west
- Not understanding that directions are the same everywhere (north is always north)
- Thinking cardinal directions only apply to maps, not the real world

TEACHING SEQUENCE:
Introduce the four directions with movements (face north, turn east, etc.). Show how to remember: Never Eat Soggy Waffles (or other mnemonics). Practice with the compass rose on maps. Do a classroom direction activity (what''s north of the teacher''s desk?). Take directions outside and use sun position to find east/west. Play direction games (take three steps north, turn west). Apply to maps: "What city is south of us?" Create compass roses for the classroom.

DIFFERENTIATION:
For struggling learners: Use very consistent physical practice with classroom walls labeled. Focus on north and south first, then add east and west. Use mnemonics and songs.
For advanced learners: Introduce intermediate directions (northeast, southwest). Use cardinal directions to describe routes on maps. Connect to actual compass use.

VOCABULARY:
Cardinal directions, north, south, east, west, compass rose, direction, map, navigate, location, left, right, up, down, compass

CONNECTION TO FUTURE LEARNING:
Cardinal directions are fundamental for all geographic skills. This prepares children for using intermediate directions, understanding latitude and longitude, and navigation skills both on maps and in the real world.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cardinal Directions' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Topic: Continents and Oceans (Grade 2 - reinforcement)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Continents and Oceans' AND grade_level_min = 2),
  'Continents and Oceans (Grade 2) Topic Guide',
  'Reinforcing and deepening knowledge of continents and oceans',
  'CONTINENTS AND OCEANS (GRADE 2) - TOPIC TEACHING GUIDE

PREREQUISITES:
Children should have been introduced to continents and oceans in Grade 1. They should be able to identify land and water on maps and globes. They should know they live on North America.

LEARNING OBJECTIVES:
- Confidently name and locate all seven continents on a world map
- Name and locate all five oceans
- Describe basic characteristics of each continent (size, location, notable features)
- Identify which continents border which oceans
- Apply continent and ocean knowledge to understand stories and current events

KEY CONCEPTS:
1) The seven continents are Africa, Antarctica, Asia, Australia, Europe, North America, and South America
2) The five oceans are the Atlantic, Pacific, Indian, Arctic, and Southern (Antarctic) Oceans
3) Asia is the largest continent; Australia is the smallest
4) The Pacific is the largest ocean; the Arctic is the smallest
5) Continents and oceans are connected - oceans touch multiple continents

COMMON MISCONCEPTIONS:
- Confusing continents with countries (Australia is both, which adds confusion)
- Thinking oceans are completely separate rather than connected
- Believing all of each continent has the same climate
- Forgetting that Antarctica is a continent (it has no countries)

TEACHING SEQUENCE:
Review continent and ocean names with songs and games. Work on accurate placement on blank maps. Learn interesting facts about each continent (Antarctica has penguins, Africa has the Sahara Desert). Discuss relative sizes and locations. Practice identifying which oceans border which continents. Connect to stories: "This book is set in Europe - where is that?" Use puzzle maps and games for reinforcement. Create continent fact books.

DIFFERENTIATION:
For struggling learners: Use continent and ocean songs consistently. Focus on recognition before recall. Use color-coded maps and puzzles. Practice with games rather than tests.
For advanced learners: Learn major countries on each continent. Explore climate zones and how they relate to latitude. Research specific regions in depth.

VOCABULARY:
Continent, ocean, Africa, Antarctica, Asia, Australia, Europe, North America, South America, Atlantic, Pacific, Indian, Arctic, Southern, border, equator

CONNECTION TO FUTURE LEARNING:
Mastery of continents and oceans is essential for all geographic learning. This knowledge enables study of world history, cultures, trade, and environmental issues at higher grade levels.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Continents and Oceans' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Topic: Reading Different Maps
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Reading Different Maps' AND grade_level_min = 2),
  'Reading Different Maps (Grade 2) Topic Guide',
  'Teaching physical, political, and thematic maps',
  'READING DIFFERENT MAPS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should be able to read basic maps and use map keys. They should understand cardinal directions and be familiar with map symbols. They should have experience with school and community maps.

LEARNING OBJECTIVES:
- Recognize that different types of maps show different information
- Identify and use physical maps (showing landforms and water)
- Identify and use political maps (showing countries, states, and cities)
- Understand that the same place can be shown on different types of maps
- Choose the right type of map for different purposes

KEY CONCEPTS:
1) Physical maps show natural features like mountains, rivers, plains, and deserts
2) Political maps show human-made boundaries like countries, states, and cities
3) Both types of maps can show the same area but highlight different information
4) The colors and symbols on each type of map mean different things
5) We choose which map to use based on what we want to learn

COMMON MISCONCEPTIONS:
- Thinking colors on maps always mean the same thing (green on physical maps means low elevation, not countries)
- Believing boundaries on political maps are visible in real life
- Not understanding that the same place appears on both types
- Confusing features on one map type with another

TEACHING SEQUENCE:
Show the same region on a physical map and a political map. Discuss what each shows and what colors and symbols mean. Practice reading a physical map: finding mountains, rivers, deserts. Practice reading a political map: finding countries, capitals, borders. Create a class comparison chart. Ask questions that require choosing the right map: "Which map would help us find the highest mountains? Which shows us what country Paris is in?" Introduce the concept of other thematic maps (population, weather) briefly.

DIFFERENTIATION:
For struggling learners: Focus on just physical vs. political distinction. Use very clear, simple examples. Create side-by-side comparisons of the same area.
For advanced learners: Explore additional map types (climate, population, resource maps). Create their own simple thematic maps. Discuss how maps can be misleading.

VOCABULARY:
Physical map, political map, thematic map, mountains, rivers, plains, desert, ocean, border, boundary, country, state, capital, elevation, landform

CONNECTION TO FUTURE LEARNING:
Understanding different map types prepares children for studying geography, history, and current events. This skill is essential for research and understanding how geographic information is presented.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading Different Maps' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Topic: The Globe
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Globe' AND grade_level_min = 2),
  'The Globe (Grade 2) Topic Guide',
  'Teaching latitude, longitude, and the equator',
  'THE GLOBE - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should have seen and used globes before. They should understand continents and oceans. They should have basic understanding that Earth is round (a sphere).

LEARNING OBJECTIVES:
- Understand that a globe is a model of Earth
- Identify the equator and understand it divides Earth into hemispheres
- Recognize the Northern and Southern Hemispheres
- Begin to understand latitude lines and their relationship to climate
- Compare globes and flat maps and understand why both are useful

KEY CONCEPTS:
1) A globe is a round model that shows what Earth really looks like
2) The equator is an imaginary line around the middle of Earth
3) The equator divides Earth into Northern Hemisphere (top half) and Southern Hemisphere (bottom half)
4) Lines going around the globe parallel to the equator are latitude lines
5) Places near the equator are generally warmer; places far from it (near poles) are colder

COMMON MISCONCEPTIONS:
- Thinking the equator is a real line visible from space
- Not understanding hemispheres as halves of the sphere
- Believing maps are more accurate than globes (actually globes are more accurate)
- Confusing latitude and longitude at this early stage

TEACHING SEQUENCE:
Examine a globe closely - notice it''s round like Earth. Find the equator and trace it around the globe. Discuss dividing the world into two halves (hemispheres). Identify which hemisphere we live in. Notice that the equator goes through certain continents and countries. Discuss how areas near the equator are warm all year. Compare the globe to a flat world map - discuss distortion (Greenland looks different). Practice finding places on the globe. Spin the globe and learn about Earth''s rotation.

DIFFERENTIATION:
For struggling learners: Focus on the equator and the concept of hemispheres. Use physical globes that students can touch and turn. Don''t introduce latitude as a number system yet.
For advanced learners: Explore the poles and polar regions. Discuss why we need flat maps when globes are more accurate. Introduce the concept of longitude briefly.

VOCABULARY:
Globe, sphere, model, Earth, equator, Northern Hemisphere, Southern Hemisphere, hemisphere, latitude, poles, North Pole, South Pole, rotate, spin

CONNECTION TO FUTURE LEARNING:
Understanding the globe prepares children for learning about Earth''s geography, climate zones, seasons, and eventually the coordinate system of latitude and longitude for precise location.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Globe' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: GOVERNMENT AND LAWS
-- =====================================================

-- Topic: Why We Have Laws
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Why We Have Laws' AND grade_level_min = 2),
  'Why We Have Laws (Grade 2) Topic Guide',
  'Teaching that laws keep communities safe and fair',
  'WHY WE HAVE LAWS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should understand rules at home and school and why they exist. They should have basic understanding of government. They should be developing moral reasoning about fairness and safety.

LEARNING OBJECTIVES:
- Understand that laws are rules for everyone in a community, city, state, or country
- Recognize that laws exist to keep people safe and treat everyone fairly
- Identify examples of laws and explain their purposes
- Understand that there are consequences for breaking laws
- Appreciate that laws protect rights and establish responsibilities

KEY CONCEPTS:
1) Laws are official rules that everyone must follow, made by the government
2) Laws protect people''s safety (traffic laws, building codes)
3) Laws protect people''s rights and property (can''t steal, can''t hurt others)
4) Laws help society be fair by applying equally to everyone
5) Breaking laws has consequences (fines, punishment) that encourage following them

COMMON MISCONCEPTIONS:
- Thinking laws only exist to punish people
- Believing laws are unfair or only restrict freedom
- Not understanding that laws apply to everyone, including leaders
- Confusing rules (school, home) with legal laws

TEACHING SEQUENCE:
Begin by discussing school and home rules, then introduce laws as rules for bigger communities. Explore examples of laws: traffic laws (stop at red lights), property laws (can''t take others'' things), safety laws (wear seatbelts). Discuss why each law exists - what would happen without it? Role-play scenarios with and without laws. Create a class "law" with a clear purpose. Discuss consequences for breaking laws. Emphasize that laws exist to help, not just to punish.

DIFFERENTIATION:
For struggling learners: Focus on concrete, familiar laws (traffic signals, not stealing). Use role-play and pictures. Create simple cause-and-effect charts (law → keeps us safe).
For advanced learners: Discuss how laws are made and changed. Explore examples of unfair laws that were changed. Research a specific law and its history.

VOCABULARY:
Law, rule, government, community, safety, protect, fair, consequence, citizen, right, responsibility, legal, illegal, enforce

CONNECTION TO FUTURE LEARNING:
Understanding why laws exist prepares children for studying the Constitution, civic participation, and the justice system. This foundational understanding of law as protecting society is essential for democratic citizenship.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Why We Have Laws' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Topic: Local Government
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Local Government' AND grade_level_min = 2),
  'Local Government (Grade 2) Topic Guide',
  'Teaching about mayors and city councils',
  'LOCAL GOVERNMENT - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should understand what government is generally. They should know that laws are rules for communities. They should have some awareness of their city or town as a community.

LEARNING OBJECTIVES:
- Understand that local government makes decisions for cities and towns
- Identify the mayor as the leader of local government
- Learn about the city or town council and what they do
- Recognize local government services (police, fire, trash, parks)
- Understand that citizens can participate in local government

KEY CONCEPTS:
1) Local government is the government of your city, town, or county
2) The mayor is the elected leader of the city or town
3) The city council or town council is a group that makes local laws
4) Local government provides services like police, fire protection, parks, and libraries
5) Citizens can attend council meetings, vote for local leaders, and share their opinions

COMMON MISCONCEPTIONS:
- Thinking the President runs everything in their town
- Not realizing that local leaders are elected by people in the community
- Believing local government has no impact on their daily life
- Confusing city/town government with state or federal government

TEACHING SEQUENCE:
Discuss what "local" means (nearby, in our community). Introduce the concept of local government. Learn about the mayor: what do they do? Who is the current mayor? Discuss the city or town council: a group that meets to make decisions for the community. List local government services students use (parks, libraries, fire trucks, roads). If possible, invite a local leader to visit or take a virtual tour of city hall. Discuss how citizens participate: voting, attending meetings, writing letters.

DIFFERENTIATION:
For struggling learners: Focus on the mayor and 2-3 concrete services (fire trucks, parks). Use pictures of actual local leaders and buildings. Create simple role-plays of council meetings.
For advanced learners: Research the local government structure in detail. Attend or watch a local government meeting. Interview a local government worker.

VOCABULARY:
Local government, mayor, city council, town council, county, elect, vote, services, taxes, meeting, citizen, participate, community

CONNECTION TO FUTURE LEARNING:
Understanding local government prepares children for learning about state and federal government. Recognizing how government directly affects their lives builds civic awareness and prepares them for future participation.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Local Government' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Topic: Voting
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Voting' AND grade_level_min = 2),
  'Voting (Grade 2) Topic Guide',
  'Teaching how voting works in a democracy',
  'VOTING - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should understand what leaders and government do. They should have experience with classroom voting or choices. They should understand the concept of fairness in decision-making.

LEARNING OBJECTIVES:
- Understand that voting is how citizens choose leaders and make decisions
- Recognize that voting gives everyone a say in democracy
- Participate in a classroom vote and understand the process
- Learn that adults vote for President, Governors, Mayors, and other leaders
- Appreciate that the right to vote is important and was fought for

KEY CONCEPTS:
1) Voting is when people make a choice together about leaders or decisions
2) In a democracy, people vote to choose who will lead the government
3) Each person gets one vote, and the choice with the most votes wins (usually)
4) Voting is kept secret so people can vote freely without pressure
5) In America, citizens 18 and older can vote in elections

COMMON MISCONCEPTIONS:
- Thinking one person (like the President) chooses all other leaders
- Believing children can vote in government elections
- Not understanding that voting happens at many levels (school, local, state, national)
- Assuming voting only happens for President

TEACHING SEQUENCE:
Conduct classroom votes on various topics (class pet name, activity choice) to build familiarity. Discuss what just happened: everyone had a say, we counted, the most votes won. Connect to government voting: adults do this to choose leaders. Discuss different elections: mayor, governor, President. Watch or read about Election Day. Discuss why voting matters and why it''s kept secret. Learn briefly about history: not everyone could always vote (connect to MLK and civil rights). Hold a mock election with candidates and campaigns.

DIFFERENTIATION:
For struggling learners: Focus on the concept through multiple classroom voting experiences. Use hands-on voting with colored chips or raised hands. Keep the process concrete and immediate.
For advanced learners: Research a current or upcoming election. Discuss what candidates do to earn votes. Explore the history of voting rights in America.

VOCABULARY:
Vote, election, ballot, candidate, citizen, democracy, choose, decide, majority, winner, campaign, elect, secret ballot, polling place

CONNECTION TO FUTURE LEARNING:
Understanding voting prepares children for civic participation and studying democracy, the Constitution, and civil rights. This foundational understanding of how citizens influence government is essential for democratic education.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Voting' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Topic: Being a Good Citizen (Grade 2)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Being a Good Citizen' AND grade_level_min = 2),
  'Being a Good Citizen (Grade 2) Topic Guide',
  'Teaching how to contribute to your community',
  'BEING A GOOD CITIZEN (GRADE 2) - TOPIC TEACHING GUIDE

PREREQUISITES:
Children should have learned about citizenship in earlier grades. They should understand rights and responsibilities. They should have experience with community helpers and local government.

LEARNING OBJECTIVES:
- Deepen understanding of what good citizenship means
- Identify ways to contribute to their community
- Understand that good citizens participate in democracy
- Take action on a community issue or service project
- Recognize that citizenship involves both rights and responsibilities

KEY CONCEPTS:
1) Good citizens follow laws, respect others, and help make their community better
2) Citizenship includes participation: voting (when old enough), attending meetings, and speaking up
3) Good citizens take care of shared spaces and resources
4) Helping others through service and volunteering is part of citizenship
5) Everyone, including children, can be good citizens in their own ways

COMMON MISCONCEPTIONS:
- Thinking citizenship is only about following rules
- Believing children are too young to contribute
- Not connecting everyday actions to citizenship
- Thinking citizenship is only about special occasions (elections, holidays)

TEACHING SEQUENCE:
Review prior learning about citizenship from earlier grades. Discuss: what does a good citizen do? Create an expanded list including participation (not just behavior). Explore ways citizens participate beyond voting: attending meetings, writing letters, volunteering. Plan and complete a class service project. Discuss how students can be good citizens right now. Create "good citizen" action plans for home, school, and community. Celebrate citizenship actions students take.

DIFFERENTIATION:
For struggling learners: Focus on concrete, achievable actions. Create a simple checklist of citizenship behaviors. Provide immediate recognition and encouragement.
For advanced learners: Research a community issue and propose solutions. Study examples of young activists and change-makers. Lead younger students in citizenship activities.

VOCABULARY:
Citizen, citizenship, community, participate, volunteer, service, responsibility, rights, contribute, democracy, help, respect, laws

CONNECTION TO FUTURE LEARNING:
Deepening citizenship understanding prepares children for active civic participation, studying civil rights and democracy, and becoming engaged members of their community.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Being a Good Citizen' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: AMERICAN HISTORY
-- =====================================================

-- Topic: Native Americans
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Native Americans' AND grade_level_min = 2),
  'Native Americans (Grade 2) Topic Guide',
  'Teaching about the first people to live in America',
  'NATIVE AMERICANS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should have basic understanding that things happened "long ago" before they were born. They should have map skills to identify regions of America. They should be developing understanding of culture and traditions.

LEARNING OBJECTIVES:
- Understand that Native Americans were the first people to live in North America
- Recognize that many different Native American nations exist with different cultures
- Learn about how Native Americans lived in different regions (adapted to environment)
- Identify aspects of Native American culture (homes, food, clothing, traditions)
- Respect and appreciate Native American contributions to American culture

KEY CONCEPTS:
1) Native Americans (also called American Indians or Indigenous peoples) lived in America thousands of years before Europeans arrived
2) There are many different Native American nations, each with its own language, traditions, and history
3) Different nations lived in different ways depending on their environment (plains, forest, desert, coast)
4) Native Americans developed agriculture, art, governments, and complex societies
5) Native Americans are still here today and continue their cultures

COMMON MISCONCEPTIONS:
- Thinking all Native Americans lived in teepees (only some plains tribes did)
- Believing Native Americans only existed in the past
- Treating all Native American cultures as the same
- Romanticizing or stereotyping Native American life
- Not knowing that Native Americans had sophisticated societies and technologies

TEACHING SEQUENCE:
Introduce the concept: who lived here before Europeans came? Use maps to show different regions and nations. Study 2-3 specific nations from different regions (example: Powhatan, Lakota, Navajo). Compare how each adapted to their environment (homes, food, clothing). Discuss traditions, arts, and contributions (corn, canoes, lacrosse). Emphasize diversity - avoid generalizations. Include contemporary Native American voices and stories. Discuss how Native Americans were affected by European arrival (age-appropriately). Emphasize that Native peoples are still here today.

DIFFERENTIATION:
For struggling learners: Focus on one or two nations in depth. Use visual representations and hands-on activities. Create comparison charts with pictures.
For advanced learners: Research a specific nation in depth. Explore Native American contributions to American culture. Learn about contemporary Native American communities.

VOCABULARY:
Native American, American Indian, Indigenous, tribe, nation, culture, tradition, environment, teepee, longhouse, pueblo, adapt, respect, ancestor

CONNECTION TO FUTURE LEARNING:
Understanding Native Americans prepares children for studying European colonization, westward expansion, and the complex history of different peoples in America. Respectful understanding of indigenous cultures is essential for historical and cultural literacy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Native Americans' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Topic: The First Thanksgiving
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The First Thanksgiving' AND grade_level_min = 2),
  'The First Thanksgiving (Grade 2) Topic Guide',
  'Teaching about Pilgrims and the Wampanoag people',
  'THE FIRST THANKSGIVING - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should have learned about Native Americans. They should understand basic concepts of coming to a new place and adapting. They should have experience with the Thanksgiving holiday.

LEARNING OBJECTIVES:
- Learn who the Pilgrims were and why they came to America
- Understand the Wampanoag people and their role in the first Thanksgiving
- Know the basic story of the first Thanksgiving celebration
- Recognize multiple perspectives on this historical event
- Connect historical Thanksgiving to modern celebrations

KEY CONCEPTS:
1) The Pilgrims were English people who came to America in 1620 seeking religious freedom
2) The Wampanoag people already lived in the area where the Pilgrims landed (Plymouth)
3) The Wampanoag, especially Squanto, helped the Pilgrims learn to grow food and survive
4) The first Thanksgiving was a harvest celebration where Pilgrims and Wampanoag shared a feast
5) The story has different meanings for different people - it''s important to hear multiple perspectives

COMMON MISCONCEPTIONS:
- Believing the Thanksgiving story is simple and everyone was happy
- Thinking Pilgrims wore only black and white with buckles (actually wore colors)
- Not understanding that Wampanoag people had their own complex society
- Assuming the Pilgrims and Native Americans always got along afterward
- Treating Thanksgiving origin story as the complete history

TEACHING SEQUENCE:
Discuss what students already know about Thanksgiving. Introduce the Pilgrims: who they were, why they left England, the Mayflower journey. Learn about the Wampanoag: they were already living there for thousands of years. Discuss the first winter (very hard for Pilgrims) and how Wampanoag helped. Describe the first Thanksgiving feast. Present Wampanoag perspectives on this event (it''s a more complex story). Compare the first Thanksgiving to how we celebrate today. Focus on the value of thankfulness and sharing.

DIFFERENTIATION:
For struggling learners: Focus on the simple story of two groups sharing food. Use picture books and simple timelines. Create comparison activities (then vs. now).
For advanced learners: Explore both Pilgrim and Wampanoag perspectives in depth. Research what happened to the Wampanoag later. Discuss why different people tell this story differently.

VOCABULARY:
Pilgrim, Mayflower, Plymouth, Wampanoag, Squanto, Massasoit, harvest, feast, thankful, survive, cooperation, perspective, history

CONNECTION TO FUTURE LEARNING:
Understanding the first Thanksgiving prepares children for studying colonization, early American history, and the complex relationships between European settlers and Native peoples. Learning multiple perspectives develops critical historical thinking.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The First Thanksgiving' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Topic: Pioneers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Pioneers' AND grade_level_min = 2),
  'Pioneers (Grade 2) Topic Guide',
  'Teaching about people who moved west across America',
  'PIONEERS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should understand that America expanded over time. They should have map skills to understand east and west. They should understand "long ago" and have learned about early American history.

LEARNING OBJECTIVES:
- Understand who pioneers were and why they moved west
- Learn about the journey west (covered wagons, trails, challenges)
- Recognize what pioneer life was like (hard work, simple homes, new communities)
- Identify reasons people became pioneers (land, opportunity, adventure)
- Connect pioneer experiences to concepts of change and growth

KEY CONCEPTS:
1) Pioneers were people who moved to new, unsettled (by Europeans) areas, especially in the American West
2) Pioneers traveled in covered wagons on trails like the Oregon Trail, often for months
3) Pioneer life was very hard: difficult journeys, building homes, farming new land
4) People became pioneers for many reasons: free land, adventure, escaping problems, new opportunities
5) Pioneer movement had impacts on Native Americans who already lived in western lands

COMMON MISCONCEPTIONS:
- Romanticizing pioneer life (it was extremely difficult and dangerous)
- Thinking the West was empty (Native Americans lived there)
- Believing all pioneers were the same (diverse motivations and backgrounds)
- Not understanding the scale of time and distance involved

TEACHING SEQUENCE:
Use a U.S. map to show where pioneers traveled from and to. Discuss why people would leave their homes to go somewhere new. Learn about covered wagons and what pioneers brought. Trace major trails on maps. Discuss the challenges: months of travel, rivers to cross, mountains, weather, disease. Learn about pioneer homes (log cabins, sod houses). Discuss daily life: farming, chores, limited schooling. Acknowledge Native American perspectives on western expansion. Connect to students'' own experiences of moving or trying new things.

DIFFERENTIATION:
For struggling learners: Focus on concrete aspects of the journey and daily life. Use hands-on activities (pack a wagon, build a simple shelter). Read picture books about pioneer children.
For advanced learners: Research a specific trail or pioneer experience in depth. Compare pioneer life to modern life. Explore the consequences of westward expansion for different groups.

VOCABULARY:
Pioneer, covered wagon, trail, Oregon Trail, westward, frontier, settle, homestead, log cabin, sod house, journey, wilderness, opportunity

CONNECTION TO FUTURE LEARNING:
Understanding pioneers prepares children for studying westward expansion, Manifest Destiny, and the complex history of American growth. This connects to geography, economics, and the impact on Native American peoples.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pioneers' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;

-- Topic: American Holidays
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'American Holidays' AND grade_level_min = 2),
  'American Holidays (Grade 2) Topic Guide',
  'Teaching about important American celebrations',
  'AMERICAN HOLIDAYS - TOPIC TEACHING GUIDE (GRADE 2)

PREREQUISITES:
Children should have learned about national holidays in earlier grades. They should understand that holidays celebrate important events or people. They should have experience with calendar and time concepts.

LEARNING OBJECTIVES:
- Explain the historical significance of major American holidays
- Understand how and why we celebrate each holiday
- Connect holidays to historical events and figures
- Recognize that holidays help us remember our history and values
- Appreciate the diversity of holidays celebrated in America

KEY CONCEPTS:
1) National holidays celebrate important events and people in American history
2) Independence Day celebrates when America declared freedom from England in 1776
3) Memorial Day honors those who died serving in the military; Veterans Day honors all who served
4) Presidents Day honors American presidents, especially Washington and Lincoln
5) Martin Luther King Jr. Day celebrates the civil rights leader and his work for equality

COMMON MISCONCEPTIONS:
- Confusing Memorial Day and Veterans Day
- Thinking holidays are only about no school and celebrations, not the meaning
- Not understanding the historical events behind holidays
- Assuming all Americans celebrate holidays the same way

TEACHING SEQUENCE:
Create a calendar showing when major holidays occur during the school year. For each holiday studied, explore: What happened? Who is honored? Why do we celebrate? How do people celebrate? Focus on 4-5 key holidays in depth. Connect to what students already learned about Washington, Lincoln, and King. Study Independence Day: why did America want independence? Read age-appropriate books about each holiday. Discuss how students'' families celebrate. Compare holidays to see common themes (remembering, honoring, being grateful).

DIFFERENTIATION:
For struggling learners: Focus on 3-4 main holidays with clear meanings. Use pictures and celebrations they can connect to. Create simple "holiday fact cards."
For advanced learners: Research the history of a specific holiday in depth. Explore how holidays have changed over time. Learn about holidays from other cultures celebrated in America.

VOCABULARY:
Holiday, celebrate, honor, remember, Independence Day, Fourth of July, Memorial Day, Veterans Day, Presidents Day, Martin Luther King Jr. Day, Labor Day, Thanksgiving, tradition

CONNECTION TO FUTURE LEARNING:
Understanding American holidays prepares children for deeper study of American history, civics, and culture. Holidays serve as entry points for historical events and help students understand how societies remember and transmit values.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'American Holidays' AND grade_level_min = 2)
ON CONFLICT DO NOTHING;
