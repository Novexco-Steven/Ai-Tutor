-- Grade 4 History Topic Prompts
-- 17 comprehensive topic prompts for Grade 4 History
-- Topics organized by unit: State History, US Regions, American Revolution, Economic Concepts

-- =====================================================
-- UNIT: STATE HISTORY
-- =====================================================

-- Topic: Native Americans in Your Region
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Native Americans in Your Region' AND grade_level_min = 4),
  'Native Americans in Your Region (Grade 4) Topic Guide',
  'Teaching about the first peoples of your area',
  'NATIVE AMERICANS IN YOUR REGION - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should have basic knowledge of Native Americans from earlier grades. They should understand that different Native American nations existed throughout North America. Map reading skills for their region are helpful.

LEARNING OBJECTIVES:
- Identify the Native American nations that lived in their region before European contact
- Describe how these nations adapted to the local environment
- Explain the culture, traditions, and way of life of regional Native peoples
- Understand the impact of European contact on these nations
- Recognize the continued presence and contributions of Native Americans today

KEY CONCEPTS:
1) Specific Native American nations lived in your region for thousands of years before Europeans arrived
2) These nations developed cultures adapted to the local geography, climate, and resources
3) Each nation had its own language, government, traditions, and beliefs
4) European contact dramatically changed Native American life through disease, displacement, and conflict
5) Native Americans in your region continue their cultures and communities today

COMMON MISCONCEPTIONS:
- Treating all Native Americans as one group (each nation is distinct)
- Using past tense exclusively (Native Americans are present, not just historical)
- Romanticizing or stereotyping Native American life
- Ignoring the devastating impacts of colonization

TEACHING SEQUENCE:
Identify the specific Native American nations of your region (this will vary by location). Study the geography and resources of your region and how Native peoples used them. Explore daily life: housing, food, clothing, tools adapted to local conditions. Learn about social structure, government, and spiritual practices. Study the history of European contact and its effects. Examine treaties and reservations in your state. Connect to today: learn about contemporary Native American communities in your area. If possible, invite Native American speakers or visit cultural centers.

DIFFERENTIATION:
For struggling learners: Focus on concrete aspects of daily life with visual examples. Create comparison charts (then vs. now). Use maps to locate tribal lands.
For advanced learners: Research one nation in depth using primary sources. Study treaties affecting your region. Interview or research contemporary Native American community members.

VOCABULARY:
Tribe, nation, indigenous, adapt, resources, culture, tradition, government, treaty, reservation, ancestor, descendant, contact, colonization

CONNECTION TO FUTURE LEARNING:
Understanding regional Native American history connects to state history, westward expansion, and contemporary Native American issues. This develops historical empathy and understanding of multiple perspectives.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Native Americans in Your Region' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Topic: Explorers and Settlement
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Explorers and Settlement' AND grade_level_min = 4),
  'Explorers and Settlement (Grade 4) Topic Guide',
  'Teaching how Europeans explored and settled your region',
  'EXPLORERS AND SETTLEMENT - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should have learned about Native Americans in their region and understand basic geography. Knowledge of early American colonization from earlier grades provides helpful context.

LEARNING OBJECTIVES:
- Identify European explorers who came to their region
- Understand the motivations for exploration and settlement
- Describe the early settlements in their region
- Analyze the impact of settlement on Native American peoples
- Trace how their region developed from exploration to statehood

KEY CONCEPTS:
1) Europeans explored your region for various reasons: trade, land, resources, religious freedom
2) Different European nations (Spain, France, England, etc.) may have explored or claimed your region
3) Early settlements faced challenges: unfamiliar environment, conflicts, survival struggles
4) Settlement dramatically impacted Native Americans through displacement, disease, and conflict
5) Over time, settlements grew into the communities that became your state

COMMON MISCONCEPTIONS:
- Portraying explorers as purely heroic without acknowledging harm caused
- Viewing "discovery" without recognizing people already lived there
- Ignoring the diversity of settlers (not just English in all regions)
- Simplifying complex motivations for exploration

TEACHING SEQUENCE:
Identify which European nations explored your region and who the key explorers were. Map exploration routes and early settlements. Discuss motivations: gold, trade routes, religious freedom, land, adventure. Study the challenges early settlers faced. Examine interactions between settlers and Native Americans from multiple perspectives. Trace the growth from early settlements to later communities. Connect exploration and settlement to your state''s founding. Compare your region''s settlement to other regions.

DIFFERENTIATION:
For struggling learners: Focus on one or two key explorers or settlements. Use maps with clear routes. Create timeline of key events.
For advanced learners: Study primary sources from explorers or early settlers. Analyze multiple perspectives on the same events. Research how your specific town or city was founded.

VOCABULARY:
Explorer, settlement, colony, colonist, motivation, mission, trading post, frontier, pioneer, territory, claim, conflict, interaction, statehood

CONNECTION TO FUTURE LEARNING:
Understanding early exploration and settlement prepares students for studying colonial America, westward expansion, and how their state developed into what it is today.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Explorers and Settlement' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Topic: State Government
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'State Government' AND grade_level_min = 4),
  'State Government (Grade 4) Topic Guide',
  'Teaching about your state''s government structure',
  'STATE GOVERNMENT - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand the three branches of federal government. They should have learned about local government and understand basic civic concepts like voting and representation.

LEARNING OBJECTIVES:
- Describe the structure of their state government
- Identify the three branches of state government and their functions
- Name current state leaders (governor, legislators)
- Explain how state government differs from local and federal government
- Understand how state government affects daily life

KEY CONCEPTS:
1) State government has three branches similar to federal government: executive, legislative, judicial
2) The governor leads the executive branch and enforces state laws
3) The state legislature (may be called different names) makes state laws
4) State courts interpret state laws and handle most legal cases
5) State government handles things like education, highways, state parks, and many regulations

COMMON MISCONCEPTIONS:
- Confusing state and federal responsibilities
- Not knowing who state leaders are compared to national leaders
- Thinking the President makes decisions for individual states
- Not understanding that states have their own constitutions

TEACHING SEQUENCE:
Review the three branches at federal level. Apply the same structure to your state. Identify your state''s specific offices and names (Governor, state legislature name, state courts). Compare: what does state government handle vs. federal vs. local? Learn about your state constitution and when it was created. Identify current state leaders with photos and their roles. Study how a state law is made in your legislature. Discuss: how does state government affect you? (schools, drivers licenses, state parks). If possible, visit the state capitol or take a virtual tour.

DIFFERENTIATION:
For struggling learners: Create a comparison chart: federal vs. state vs. local. Focus on current leaders with photos. Use concrete examples of state services.
For advanced learners: Research your state constitution''s history. Study a current issue being debated in state legislature. Compare your state government to another state.

VOCABULARY:
Governor, state legislature, state capitol, constitution, executive, legislative, judicial, representative, senator (state), bill, law, veto, term

CONNECTION TO FUTURE LEARNING:
Understanding state government prepares students for studying federalism, the relationship between state and federal power, and active citizenship in state politics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'State Government' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Topic: Important State Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Important State Events' AND grade_level_min = 4),
  'Important State Events (Grade 4) Topic Guide',
  'Teaching key events that shaped your state',
  'IMPORTANT STATE EVENTS - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should have learned about their state''s early history, including Native Americans and European settlement. They should understand timeline and chronological thinking skills.

LEARNING OBJECTIVES:
- Identify key events in their state''s history
- Explain how these events shaped their state''s development
- Analyze causes and effects of important state events
- Place events on a timeline of state history
- Connect state events to national history

KEY CONCEPTS:
1) Every state has key events that shaped its character and development
2) Events might include: statehood, major industries, civil rights, natural disasters, famous achievements
3) State events often connect to larger national events (Civil War, civil rights movement, industrial growth)
4) Understanding key events helps explain why your state is the way it is today
5) Different groups may have been affected differently by the same events

COMMON MISCONCEPTIONS:
- Thinking state history is unconnected to national history
- Viewing all events as equally important
- Not recognizing that events affect different groups differently
- Assuming the "official" narrative is the only perspective

TEACHING SEQUENCE:
Create a timeline of major events in your state''s history. Identify 4-6 key events for deeper study. For each event: what happened? When? Why? What changed because of it? Study how each event connects to national trends. Examine events from multiple perspectives when possible. Use primary sources from your state''s history. Research local aspects: how did national events affect your community? Create a museum exhibit or presentation about state history.

DIFFERENTIATION:
For struggling learners: Focus on 3-4 major events with clear causes and effects. Use visual timelines and graphic organizers. Provide structured research guides.
For advanced learners: Research a lesser-known event in state history. Study primary sources from state archives. Create a documentary or in-depth presentation about one event.

VOCABULARY:
Event, statehood, development, cause, effect, timeline, era, decade, century, impact, transform, significant, perspective, primary source

CONNECTION TO FUTURE LEARNING:
Understanding state history prepares students for connecting local and national narratives and for studying U.S. history as a collection of state and regional stories.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Important State Events' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: US REGIONS
-- =====================================================

-- Topic: Northeast Region
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Northeast Region' AND grade_level_min = 4),
  'Northeast Region (Grade 4) Topic Guide',
  'Teaching the geography and culture of the Northeast',
  'NORTHEAST REGION - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand the concept of geographic regions and be able to use maps. They should have basic knowledge of U.S. geography and understand that regions have distinct characteristics.

LEARNING OBJECTIVES:
- Identify states in the Northeast region
- Describe the geography, climate, and natural resources of the Northeast
- Explain the historical significance of the Northeast in American history
- Recognize economic activities and industries of the region
- Compare the Northeast to other U.S. regions

KEY CONCEPTS:
1) The Northeast includes New England and Mid-Atlantic states
2) Geography features: Atlantic coast, Appalachian Mountains, many harbors, forested areas
3) Climate: four distinct seasons, cold winters, warm summers
4) Historical significance: site of early colonies, American Revolution, early industry
5) Economy: finance, education, healthcare, technology, fishing, tourism

COMMON MISCONCEPTIONS:
- Thinking all of the Northeast is the same (great diversity within region)
- Equating Northeast with just New York City
- Not recognizing rural areas in the Northeast
- Overlooking the region''s historical significance

TEACHING SEQUENCE:
Locate Northeast states on a map. Study physical features: Atlantic coast, harbors, mountains, rivers. Examine climate patterns and their effects on life. Explore historical importance: Plymouth, Philadelphia, Boston - sites of American beginnings. Study economic activities past and present. Learn about major cities and their roles. Explore cultural characteristics: foods, sports, traditions. Compare Northeast to students'' own region. Create region fact sheets or travel brochures.

DIFFERENTIATION:
For struggling learners: Focus on a few key states and features. Use visual maps and pictures. Create simple comparison charts.
For advanced learners: Research one state in depth. Explore immigration patterns in the Northeast. Study how the region has changed over time.

VOCABULARY:
Region, New England, Mid-Atlantic, harbor, coast, Atlantic Ocean, Appalachian Mountains, industry, manufacturing, finance, urban, rural, commerce

CONNECTION TO FUTURE LEARNING:
Understanding the Northeast prepares students for studying colonial America, the American Revolution, and industrialization in greater depth.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Northeast Region' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Topic: Southeast Region
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Southeast Region' AND grade_level_min = 4),
  'Southeast Region (Grade 4) Topic Guide',
  'Teaching the geography and culture of the Southeast',
  'SOUTHEAST REGION - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand the concept of geographic regions and be able to use maps. Basic knowledge of U.S. geography and the ability to compare regions is needed.

LEARNING OBJECTIVES:
- Identify states in the Southeast region
- Describe the geography, climate, and natural resources of the Southeast
- Explain the historical significance of the Southeast
- Recognize economic activities and industries of the region
- Compare the Southeast to other U.S. regions

KEY CONCEPTS:
1) The Southeast includes states from Virginia to Florida and west to Louisiana
2) Geography features: Atlantic and Gulf coasts, Appalachian Mountains, Mississippi River, swamps, wetlands
3) Climate: generally warm, humid; hurricanes are a concern
4) Historical significance: early colonies, slavery, Civil War, Civil Rights Movement
5) Economy: agriculture, tourism, manufacturing, ports, growing tech sectors

COMMON MISCONCEPTIONS:
- Overlooking the diversity within the Southeast
- Not recognizing the complex history including slavery and civil rights
- Stereotyping Southern culture
- Ignoring urban and modern aspects of the region

TEACHING SEQUENCE:
Locate Southeast states on a map. Study physical features: coasts, rivers (especially Mississippi), mountains, swamps. Examine climate including hurricanes. Explore complex historical story: colonies, slavery, Civil War, Reconstruction, Civil Rights. Study economic activities past and present: agriculture, tourism, ports. Learn about major cities and their growth. Explore cultural characteristics: music (jazz, blues, country), food, traditions. Discuss historical and contemporary diversity. Compare Southeast to other regions.

DIFFERENTIATION:
For struggling learners: Focus on a few key states and features. Use visual maps and pictures. Highlight connections to things students know (music, food).
For advanced learners: Research the Civil Rights Movement in the Southeast. Study how the region has changed economically. Explore one state''s history in depth.

VOCABULARY:
Region, coast, Gulf of Mexico, Mississippi River, hurricane, agriculture, plantation, Civil War, Civil Rights, tourism, port, humid, subtropical

CONNECTION TO FUTURE LEARNING:
Understanding the Southeast prepares students for studying slavery, the Civil War, Reconstruction, and the Civil Rights Movement in greater depth.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Southeast Region' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Topic: Midwest Region
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Midwest Region' AND grade_level_min = 4),
  'Midwest Region (Grade 4) Topic Guide',
  'Teaching the geography and culture of the Midwest',
  'MIDWEST REGION - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand the concept of geographic regions and be able to use maps. Basic knowledge of U.S. geography and understanding of agriculture and industry concepts is helpful.

LEARNING OBJECTIVES:
- Identify states in the Midwest region
- Describe the geography, climate, and natural resources of the Midwest
- Explain the region''s importance in agriculture and industry
- Recognize economic activities characteristic of the region
- Compare the Midwest to other U.S. regions

KEY CONCEPTS:
1) The Midwest includes states from Ohio to the Dakotas
2) Geography features: Great Plains, Great Lakes, Mississippi and Missouri Rivers, fertile soil
3) Climate: four seasons, harsh winters, warm summers, tornadoes
4) The region is called "America''s Heartland" for its central location and farming importance
5) Economy: agriculture (corn, wheat, soybeans), manufacturing, Great Lakes shipping

COMMON MISCONCEPTIONS:
- Thinking the Midwest is entirely flat (it has varied terrain)
- Overlooking major cities like Chicago
- Believing agriculture is the only industry
- Not recognizing the region''s diversity

TEACHING SEQUENCE:
Locate Midwest states on a map. Study physical features: Great Plains, Great Lakes, major rivers. Examine climate including severe weather (tornadoes, blizzards). Explore why the region is so important for farming (fertile soil, climate, flat land). Study the Great Lakes and their importance for shipping. Learn about major cities (Chicago, Detroit) and their industries. Explore the history of the region: Native Americans, pioneers, immigration. Compare Midwest to other regions.

DIFFERENTIATION:
For struggling learners: Focus on farming and Great Lakes as key features. Use visual maps and pictures. Create simple region fact cards.
For advanced learners: Research the history of a Midwest industry (steel, automobiles, meatpacking). Study immigration patterns to the Midwest. Explore how farming has changed with technology.

VOCABULARY:
Region, Great Plains, Great Lakes, prairie, agriculture, fertile, heartland, manufacturing, tornado, breadbasket, rural, urban, industry

CONNECTION TO FUTURE LEARNING:
Understanding the Midwest prepares students for studying westward expansion, industrialization, and the agricultural economy in greater depth.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Midwest Region' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Topic: Southwest Region
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Southwest Region' AND grade_level_min = 4),
  'Southwest Region (Grade 4) Topic Guide',
  'Teaching the geography and culture of the Southwest',
  'SOUTHWEST REGION - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand the concept of geographic regions and be able to use maps. Basic knowledge of U.S. geography and understanding of adaptation to environments is helpful.

LEARNING OBJECTIVES:
- Identify states in the Southwest region
- Describe the geography, climate, and natural resources of the Southwest
- Explain how people have adapted to the desert environment
- Recognize the cultural influences in the region (Native American, Spanish, Mexican)
- Compare the Southwest to other U.S. regions

KEY CONCEPTS:
1) The Southwest includes Texas, Oklahoma, New Mexico, and Arizona
2) Geography features: deserts, canyons (Grand Canyon), mesas, Rio Grande, limited water
3) Climate: hot, dry, little rainfall in most areas; can be cold in mountains
4) Rich cultural mix: Native American, Spanish, Mexican, and Anglo influences
5) Economy: oil and gas, ranching, tourism, technology, retirement communities

COMMON MISCONCEPTIONS:
- Thinking the entire Southwest is desert
- Not recognizing the variety of cultures and influences
- Overlooking water management issues
- Assuming the Southwest was always part of the U.S.

TEACHING SEQUENCE:
Locate Southwest states on a map. Study physical features: deserts, canyons, mesas, Rio Grande. Examine climate and water scarcity challenges. Learn about Native American peoples of the region (Navajo, Hopi, Apache). Study Spanish colonization and Mexican heritage. Understand how the region became part of the U.S. (Mexican-American War). Explore cultural blending in architecture, food, art, and language. Study economic activities: energy, ranching, tourism. Discuss water management challenges. Compare Southwest to other regions.

DIFFERENTIATION:
For struggling learners: Focus on desert and canyon geography with pictures. Highlight cultural influences through food and art. Use visual comparisons.
For advanced learners: Research Native American nations of the Southwest in depth. Study the history of Texas independence and the Mexican-American War. Explore water management and climate challenges.

VOCABULARY:
Region, desert, canyon, mesa, arid, Rio Grande, adobe, pueblo, Spanish, Mexican, border, irrigation, ranch, reservation

CONNECTION TO FUTURE LEARNING:
Understanding the Southwest prepares students for studying westward expansion, the Mexican-American War, and the complex cultural history of the region.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Southwest Region' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Topic: West Region
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'West Region' AND grade_level_min = 4),
  'West Region (Grade 4) Topic Guide',
  'Teaching the geography and culture of the West',
  'WEST REGION - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand the concept of geographic regions and be able to use maps. Basic knowledge of U.S. geography and understanding of diverse environments is helpful.

LEARNING OBJECTIVES:
- Identify states in the West region
- Describe the diverse geography, climates, and natural resources of the West
- Explain the historical development of the West (gold rush, settlement)
- Recognize economic activities and industries of the region
- Compare the West to other U.S. regions

KEY CONCEPTS:
1) The West includes states from the Rocky Mountains to the Pacific Ocean, plus Alaska and Hawaii
2) Geography is extremely diverse: mountains, deserts, rainforests, coastline, volcanoes
3) Climate varies dramatically: from Alaska''s cold to Hawaii''s tropical to California''s Mediterranean
4) Historical significance: Gold Rush, Oregon Trail, Pacific gateway, diverse immigration
5) Economy: technology, entertainment, agriculture, tourism, ports, fishing

COMMON MISCONCEPTIONS:
- Thinking the West is one uniform landscape
- Overlooking Alaska and Hawaii as part of the West
- Not recognizing the diversity of people and cultures
- Assuming the West was "empty" before American settlement

TEACHING SEQUENCE:
Locate West states on a map, including Alaska and Hawaii. Study the incredible variety of landscapes: Rockies, Cascades, Sierra Nevada, deserts, rainforests, islands. Examine climate diversity across the region. Learn about Native Americans of the West (many distinct nations). Study the Gold Rush and its impacts. Explore immigration through the Pacific (Asian immigration). Learn about major cities and their economies. Study unique features: national parks, Hollywood, Silicon Valley. Compare the West''s diversity to other regions.

DIFFERENTIATION:
For struggling learners: Focus on key features: mountains, ocean, Hollywood, Alaska, Hawaii. Use pictures showing geographic diversity. Create simple comparison charts.
For advanced learners: Research the Gold Rush or Oregon Trail in depth. Study immigration patterns from Asia and the Pacific. Explore one western state''s unique history and geography.

VOCABULARY:
Region, Pacific Ocean, Rocky Mountains, Coast, volcano, diverse, Gold Rush, technology, entertainment, immigration, frontier, national park

CONNECTION TO FUTURE LEARNING:
Understanding the West prepares students for studying westward expansion, the Gold Rush, immigration history, and contemporary issues like technology and environmental conservation.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'West Region' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: AMERICAN REVOLUTION
-- =====================================================

-- Topic: Causes of the Revolution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Causes of the Revolution' AND grade_level_min = 4),
  'Causes of the Revolution (Grade 4) Topic Guide',
  'Teaching why colonists wanted independence',
  'CAUSES OF THE REVOLUTION - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand that America was once a British colony and have basic knowledge of colonial life. Understanding of cause and effect relationships is essential.

LEARNING OBJECTIVES:
- Identify key causes of the American Revolution
- Understand colonial grievances against British rule
- Analyze how specific events led toward independence
- Explain concepts like "taxation without representation"
- Recognize that colonists had different views on independence

KEY CONCEPTS:
1) Britain controlled the 13 American colonies and made laws and taxes for them
2) Colonists were upset about taxes without representation in Parliament
3) Key events: Stamp Act, Boston Massacre, Boston Tea Party, Intolerable Acts
4) "No taxation without representation" became a rallying cry
5) Not all colonists wanted independence; some remained loyal to Britain

COMMON MISCONCEPTIONS:
- Thinking the Revolution was inevitable from the beginning
- Believing all colonists supported independence
- Oversimplifying causes to just taxes
- Not understanding what "representation" meant

TEACHING SEQUENCE:
Establish that colonies were under British rule. Explain British taxes after the French and Indian War. Study specific acts: Stamp Act, Townshend Acts, Tea Act. Teach the concept of representation and why colonists felt it was unfair. Examine key events: Boston Massacre, Boston Tea Party, Intolerable Acts. Show how tensions escalated over time. Discuss different viewpoints: Patriots, Loyalists, undecided. Use primary sources like colonial newspapers or pamphlets. Create a timeline of causes.

DIFFERENTIATION:
For struggling learners: Focus on the core concept of unfair treatment. Use visual representations of key events. Create simple cause-effect chains.
For advanced learners: Study primary sources from the period. Debate Patriot vs. Loyalist perspectives. Research a specific event in depth.

VOCABULARY:
Colony, Parliament, representation, taxation, Stamp Act, boycott, protest, liberty, tyranny, independence, Patriot, Loyalist, Boston Massacre, Boston Tea Party

CONNECTION TO FUTURE LEARNING:
Understanding the causes of the Revolution prepares students for studying the Declaration of Independence, the Revolutionary War, and the formation of American government.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Causes of the Revolution' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Topic: Key Battles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Key Battles' AND grade_level_min = 4),
  'Key Battles (Grade 4) Topic Guide',
  'Teaching about Lexington, Concord, and other battles',
  'KEY BATTLES - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand the causes of the American Revolution and why colonists were upset with Britain. Basic map reading skills and understanding of timeline are needed.

LEARNING OBJECTIVES:
- Identify key battles of the American Revolution
- Explain the significance of each major battle
- Locate major battles on a map
- Understand how battles affected the war''s outcome
- Recognize the challenges faced by soldiers on both sides

KEY CONCEPTS:
1) The war began with "the shot heard round the world" at Lexington and Concord (1775)
2) Early challenges: Continental Army was small, poorly equipped, and inexperienced
3) Key turning point: Battle of Saratoga (1777) convinced France to help America
4) Valley Forge winter showed American perseverance
5) Final victory: Battle of Yorktown (1781) led to British surrender

COMMON MISCONCEPTIONS:
- Thinking America easily won the war
- Not understanding how long and difficult the war was
- Ignoring the role of foreign allies (France, Spain)
- Believing battles are the whole story (diplomacy and perseverance mattered too)

TEACHING SEQUENCE:
Start with the beginning: Lexington and Concord - the war begins. Create a war timeline with major battles. Study early challenges for the Continental Army. Explain why Saratoga was a turning point (French alliance). Discuss Valley Forge as a symbol of perseverance. Study the final victory at Yorktown. Map the battles across the colonies. Discuss what soldiers experienced (using age-appropriate details). Consider different perspectives: American soldiers, British soldiers, civilians.

DIFFERENTIATION:
For struggling learners: Focus on 4-5 major battles with clear significance. Use maps with clear markings. Create a simple timeline with pictures.
For advanced learners: Research one battle in depth using primary sources. Study the roles of different figures in battles. Analyze military strategies.

VOCABULARY:
Battle, Lexington, Concord, Saratoga, Yorktown, Valley Forge, Continental Army, British, troops, victory, defeat, turning point, surrender, alliance

CONNECTION TO FUTURE LEARNING:
Understanding key battles prepares students for studying war''s end, the Treaty of Paris, and how victory affected the formation of the new nation.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Key Battles' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Topic: Founding Fathers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Founding Fathers' AND grade_level_min = 4),
  'Founding Fathers (Grade 4) Topic Guide',
  'Teaching about Washington, Jefferson, Franklin, and others',
  'FOUNDING FATHERS - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand the American Revolution was happening and have learned about Washington and Lincoln from earlier grades. They should understand leadership concepts.

LEARNING OBJECTIVES:
- Identify major Founding Fathers and their contributions
- Understand the diverse roles different founders played
- Analyze character traits that made them effective leaders
- Recognize that founders held complex views (including on slavery)
- Appreciate how individual contributions shaped the nation

KEY CONCEPTS:
1) Many individuals worked together to create the United States
2) George Washington: military leader, first President, "Father of His Country"
3) Thomas Jefferson: wrote the Declaration of Independence
4) Benjamin Franklin: diplomat, inventor, elder statesman
5) Other key founders: John Adams, James Madison, Alexander Hamilton, and more

COMMON MISCONCEPTIONS:
- Viewing founders as perfect or infallible
- Not recognizing that founders disagreed with each other
- Ignoring founders'' involvement in slavery
- Thinking only a few people founded the nation

TEACHING SEQUENCE:
Introduce the concept of founders: people who helped create the nation. Study key figures one at a time: Washington (military leader, President), Jefferson (Declaration writer), Franklin (diplomat, inventor), Adams (independence advocate, President), and others. Identify each person''s unique contributions. Discuss character traits: courage, intelligence, perseverance. Address complexity: many founders owned enslaved people while writing about freedom. Discuss how founders disagreed (Hamilton vs. Jefferson). Have students research lesser-known founders.

DIFFERENTIATION:
For struggling learners: Focus on 3-4 main founders with clear contributions. Use portraits and key facts. Create founder trading cards.
For advanced learners: Research a lesser-known founder or "founding mother." Study primary source writings. Analyze debates between founders.

VOCABULARY:
Founder, Founding Fathers, contribution, leader, patriot, Constitution, Declaration, diplomat, inventor, statesman, compromise, debate

CONNECTION TO FUTURE LEARNING:
Understanding the Founding Fathers prepares students for studying the Constitution, the early Republic, and ongoing debates about the founders'' legacy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Founding Fathers' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Topic: Declaration of Independence (Grade 4)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Declaration of Independence' AND grade_level_min = 4),
  'Declaration of Independence (Grade 4) Topic Guide',
  'Teaching the meaning of the Declaration',
  'DECLARATION OF INDEPENDENCE (GRADE 4) - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand the causes of the American Revolution and know about key Founding Fathers. Basic understanding of government concepts and the word "independence" is needed.

LEARNING OBJECTIVES:
- Understand what the Declaration of Independence is
- Explain key ideas in the Declaration (equality, rights, consent of governed)
- Know when and why the Declaration was signed
- Recognize the Declaration''s importance in American history
- Connect Declaration principles to American values today

KEY CONCEPTS:
1) The Declaration announced that the colonies were independent from Britain (July 4, 1776)
2) Thomas Jefferson was the main writer, with help from others
3) Key ideas: "all men are created equal," unalienable rights (life, liberty, pursuit of happiness)
4) The Declaration listed grievances against King George III
5) Signing was dangerous - signers could be punished as traitors

COMMON MISCONCEPTIONS:
- Thinking the Declaration created the government (Constitution did that)
- Believing "all men" meant everyone equally at the time (it didn''t)
- Confusing the Declaration with the Constitution
- Not understanding the risk signers took

TEACHING SEQUENCE:
Set the scene: 1776, war has begun, what should colonies do? Discuss why a formal declaration was needed. Study Jefferson''s role as primary author. Read and analyze key passages in age-appropriate language. Discuss core principles: equality, rights, government by consent. Study the list of grievances against King George. Discuss the danger of signing. Learn about July 4 and its significance. Connect principles to today: how do we still try to live up to these ideas?

DIFFERENTIATION:
For struggling learners: Focus on key phrases: "all men are created equal," "life, liberty, and pursuit of happiness." Use simplified text versions. Discuss meanings in concrete terms.
For advanced learners: Read more of the actual text with support. Analyze how the Declaration has been interpreted over time. Discuss who was left out initially.

VOCABULARY:
Declaration, independence, self-evident, equality, unalienable rights, liberty, pursuit of happiness, consent, governed, grievances, tyrant

CONNECTION TO FUTURE LEARNING:
Understanding the Declaration prepares students for studying the Constitution, Bill of Rights, and how these founding principles continue to shape debates about rights and equality.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Declaration of Independence' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: ECONOMIC CONCEPTS
-- =====================================================

-- Topic: Specialization
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Specialization' AND grade_level_min = 4),
  'Specialization (Grade 4) Topic Guide',
  'Teaching why people and regions specialize',
  'SPECIALIZATION - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand basic economic concepts like goods and services and trade. They should have learned about U.S. regions and their different resources.

LEARNING OBJECTIVES:
- Define specialization and explain why it exists
- Identify examples of specialization by workers and regions
- Understand how specialization increases efficiency
- Connect specialization to trade and interdependence
- Recognize specialization in their own community

KEY CONCEPTS:
1) Specialization means focusing on producing one thing or a few things very well
2) Workers specialize in jobs that use their skills and training
3) Regions specialize based on their resources, climate, and advantages
4) Specialization makes production faster and more efficient
5) Specialization requires trade because specialists don''t produce everything they need

COMMON MISCONCEPTIONS:
- Thinking everyone should try to produce everything themselves
- Not connecting specialization to efficiency gains
- Overlooking that specialization creates dependence on others
- Assuming specialization is only about regions, not workers

TEACHING SEQUENCE:
Introduce with a classroom simulation: compare everyone making their own pencils vs. each person specializing in one step. Discuss why specialization was faster and produced better results. Apply to workers: why does a doctor specialize rather than also being a farmer? Apply to regions: why does Florida grow oranges while Iowa grows corn? Connect to U.S. regions studied earlier. Identify examples of specialization in your community. Discuss how specialization creates need for trade. Explore advantages and disadvantages of specialization.

DIFFERENTIATION:
For struggling learners: Use hands-on simulations to demonstrate specialization. Focus on familiar examples: doctors, farmers, teachers. Use regional examples with clear geographic connections.
For advanced learners: Research how an industry specializes (assembly line, division of labor). Explore global specialization. Analyze trade-offs of specialization.

VOCABULARY:
Specialization, efficiency, production, skill, advantage, region, resources, trade, depend, division of labor, expert, focus

CONNECTION TO FUTURE LEARNING:
Understanding specialization prepares students for studying economic systems, industrial development, and how the modern economy works through interconnected specialists.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Specialization' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Topic: Trade and Interdependence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Trade and Interdependence' AND grade_level_min = 4),
  'Trade and Interdependence (Grade 4) Topic Guide',
  'Teaching how regions depend on each other',
  'TRADE AND INTERDEPENDENCE - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand specialization and basic trade concepts. They should have learned about the different U.S. regions and their resources.

LEARNING OBJECTIVES:
- Understand that regions trade goods and services
- Explain why regions are interdependent (depend on each other)
- Trace how products move between regions
- Analyze benefits and challenges of interdependence
- Apply concepts to their own consumption patterns

KEY CONCEPTS:
1) Because regions specialize, they must trade for things they don''t produce
2) Interdependence means regions need each other for goods and services
3) Trade networks connect regions through transportation and communication
4) Interdependence benefits everyone by making more goods available
5) Interdependence also creates vulnerabilities when trade is disrupted

COMMON MISCONCEPTIONS:
- Thinking regions could be completely self-sufficient if they wanted
- Not recognizing how many products travel long distances
- Believing trade only happens between countries, not regions
- Overlooking local vs. long-distance trade

TEACHING SEQUENCE:
Review specialization: regions focus on what they do best. Ask: what happens when you want something your region doesn''t produce? Trace a product''s journey: where does your orange juice come from? Your computer? Study how U.S. regions trade with each other. Create maps showing trade connections between regions. Discuss: what would happen if trucks couldn''t deliver goods for a week? Explore benefits (variety, lower costs) and challenges (vulnerability, transportation costs) of interdependence.

DIFFERENTIATION:
For struggling learners: Trace one simple product from source to home. Use maps with clear arrows showing trade. Focus on familiar products.
For advanced learners: Research supply chains for complex products. Study historical trade routes. Analyze how disruptions affect trade (weather, economic issues).

VOCABULARY:
Interdependence, trade, depend, supply chain, transportation, import, export, network, economy, goods, services, vulnerability, connection

CONNECTION TO FUTURE LEARNING:
Understanding interdependence prepares students for studying global trade, economics, and how modern economies connect people and places around the world.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Trade and Interdependence' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Topic: Technology and Economy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Technology and Economy' AND grade_level_min = 4),
  'Technology and Economy (Grade 4) Topic Guide',
  'Teaching how inventions change economies',
  'TECHNOLOGY AND ECONOMY - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand basic economic concepts and have learned about how communities change over time. Knowledge of specialization and trade is helpful.

LEARNING OBJECTIVES:
- Understand that technology changes how people work and produce goods
- Identify examples of technology that transformed economies
- Analyze how specific inventions affected jobs and industries
- Recognize that technology creates both opportunities and challenges
- Connect historical technological change to current innovations

KEY CONCEPTS:
1) Technology includes tools, machines, and methods that help people work
2) New technology can transform entire industries (farming, manufacturing, transportation)
3) Technology often increases efficiency but may eliminate some jobs while creating others
4) Historical examples: cotton gin, railroad, automobile, computer
5) Technology change continues today with internet, automation, and more

COMMON MISCONCEPTIONS:
- Thinking technology is always good for everyone
- Not recognizing that technology eliminates some jobs
- Viewing past technology as primitive rather than innovative for its time
- Ignoring the connection between technology and trade

TEACHING SEQUENCE:
Define technology broadly: tools and methods that help us work. Study historical examples of transformative technology: cotton gin and farming, railroads and trade, automobile and travel. Analyze each: how did it change work? What jobs did it create or eliminate? How did it affect the economy? Connect to trade: how did railroads help regions trade? Discuss modern technology: computers, internet, automation. Explore both positive effects and challenges. Have students imagine future technology and its effects.

DIFFERENTIATION:
For struggling learners: Focus on 2-3 clear examples with before/after comparisons. Use pictures and videos showing technology in action.
For advanced learners: Research one technology''s economic impact in depth. Study debates about automation and jobs. Analyze how technology changed their community.

VOCABULARY:
Technology, invention, innovation, industry, efficiency, production, automation, transform, economy, manufacturing, transportation, communication

CONNECTION TO FUTURE LEARNING:
Understanding technology''s economic impact prepares students for studying the Industrial Revolution, modern economics, and ongoing debates about technology and work.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Technology and Economy' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Topic: Economic Systems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Economic Systems' AND grade_level_min = 4),
  'Economic Systems (Grade 4) Topic Guide',
  'Comparing market and command economies',
  'ECONOMIC SYSTEMS - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand basic economic concepts including supply and demand, goods and services, and trade. Understanding of government roles is helpful.

LEARNING OBJECTIVES:
- Understand that different countries organize their economies differently
- Describe characteristics of market economies
- Describe characteristics of command economies
- Compare how decisions are made in each system
- Recognize that most real economies are mixed

KEY CONCEPTS:
1) An economic system determines how goods and services are produced and distributed
2) In a market economy, individuals and businesses make most economic decisions
3) In a command economy, the government makes most economic decisions
4) Market economies use prices and profit as guides; command economies use government plans
5) Most real-world economies are mixed, combining elements of both

COMMON MISCONCEPTIONS:
- Thinking any economy is purely market or purely command
- Equating "market" with good and "command" with bad (or vice versa)
- Not understanding that the U.S. has elements of both systems
- Believing economic systems are simple or static

TEACHING SEQUENCE:
Present the basic question: who decides what to produce and how to distribute it? Introduce market economies: individuals and businesses decide based on supply, demand, and prices. Introduce command economies: government makes decisions through planning. Compare: Who owns businesses? Who sets prices? Who chooses jobs? Discuss advantages and disadvantages of each system. Explore how the U.S. economy works (mostly market with some government involvement). Discuss why most economies are mixed.

DIFFERENTIATION:
For struggling learners: Use simple scenarios: In one system, you choose what to sell; in another, the government tells you. Create comparison charts. Focus on key differences.
For advanced learners: Research how different countries organize their economies. Study debates about economic systems. Analyze a specific industry through both lenses.

VOCABULARY:
Economic system, market economy, command economy, free enterprise, competition, profit, government, planning, production, distribution, mixed economy, private, public

CONNECTION TO FUTURE LEARNING:
Understanding economic systems prepares students for studying historical and contemporary economic debates, globalization, and how countries make economic policy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Economic Systems' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;
