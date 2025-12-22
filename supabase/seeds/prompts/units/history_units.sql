-- ============================================================================
-- HISTORY/SOCIAL STUDIES UNIT PROMPTS (ALL GRADES K-12)
-- ============================================================================
-- Comprehensive pedagogical prompts for each History/Social Studies unit
-- Each prompt provides teaching methodology, inquiry approaches,
-- historical thinking skills, and instructional strategies
-- ============================================================================

-- ============================================================================
-- KINDERGARTEN HISTORY UNITS
-- ============================================================================

-- My School and Community (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'My School and Community' AND grade_level = 0),
  'My School and Community Teaching Guide',
  'Comprehensive pedagogical approach for teaching community in Kindergarten',
  'ME AND MY COMMUNITY - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit introduces social studies through the lens of self and immediate community. Students explore their identities, families, school, and neighborhood. They learn about community helpers and begin to understand how people depend on each other. This personal connection builds foundation for broader civic and geographic understanding.

LEARNING PROGRESSION:
1. Understanding self: name, age, family
2. Understanding similarities and differences among people
3. Exploring family structures and traditions
4. Learning about school community
5. Identifying community helpers and their roles
6. Understanding rules and why we have them
7. Locating school and neighborhood on simple maps

DEVELOPMENTAL CONSIDERATIONS:
Kindergartners are egocentric - start with themselves and expand outward. They learn best through personal connection, stories, and community visitors. Abstract concepts like "government" should be concrete: rules, helpers, working together.

COMMON CHALLENGES:
- Understanding "community" as abstract concept
- Recognizing different family structures respectfully
- Distinguishing wants from needs
- Understanding why rules exist
- Perspective-taking (others'' experiences differ)

INSTRUCTIONAL STRATEGIES:

Personal Connections:
Start every topic with students'' experiences. "Who helps you at home? At school?" Personal relevance builds engagement.

Community Visitors:
Invite community helpers: firefighters, nurses, mail carriers, police officers. Real people make roles concrete.

Family Projects:
Family heritage projects (food, traditions, stories) celebrate diversity. Ensure sensitivity to family differences.

Classroom Community:
Use classroom as microcosm. Develop class rules together. Assign community jobs. Practice being good community members.

Read-Alouds:
Use picture books about families, communities, and helpers. Discuss and compare to students'' experiences.

Neighborhood Walks:
Walk around school neighborhood. Observe buildings, helpers, and places. Create simple maps.

Dramatic Play:
Set up community helper dramatic play centers. Students explore roles through play.

ASSESSMENT INDICATORS:
- Describes self and family
- Identifies community helpers and their roles
- Explains purpose of rules
- Participates in classroom community
- Locates places on simple maps

VOCABULARY TO DEVELOP:
family, community, neighborhood, helper, rule, responsibility, safe, need, want, map, location',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'My School and Community' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- American Symbols (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'American Symbols' AND grade_level = 0),
  'American Symbols Teaching Guide',
  'Comprehensive pedagogical approach for teaching American symbols and holidays in Kindergarten',
  'AMERICAN SYMBOLS AND HOLIDAYS - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit introduces foundational concepts of American identity through national symbols, monuments, and holidays. Students learn to recognize important symbols like the flag and national monuments, and understand why we celebrate key holidays. This builds early civic identity and historical awareness.

LEARNING PROGRESSION:
1. Identifying the American flag and its meaning
2. Recognizing national symbols (eagle, Liberty Bell, Statue of Liberty)
3. Learning about national monuments
4. Understanding Thanksgiving and its history
5. Celebrating Presidents'' Day
6. Understanding Memorial Day and Veterans Day
7. Learning about Independence Day

DEVELOPMENTAL CONSIDERATIONS:
Kindergartners connect to symbols through stories and images. Historical context should be simple and age-appropriate. Focus on core concepts (freedom, thankfulness, honoring) rather than complex history. Be inclusive of diverse perspectives.

COMMON CHALLENGES:
- Abstract concepts like "freedom" and "democracy"
- Distinguishing historical figures from contemporary people
- Understanding time long ago
- Simplified historical narratives vs. complexity
- Including multiple perspectives

INSTRUCTIONAL STRATEGIES:

Symbol Exploration:
Study symbols through images, songs, and activities. "What do you notice about the flag? Why might we have stars and stripes?"

Story-Based Learning:
Use age-appropriate stories and picture books about symbols and holidays. Stories make history accessible.

Comparison Activities:
Compare symbols to familiar objects. "The eagle is our national bird, like how our school has a mascot."

Calendar Integration:
Discuss holidays as they occur throughout the year. Real-time learning is meaningful.

Art Integration:
Create symbol-based art projects: flags, eagles, monuments. Art reinforces recognition.

Songs and Poems:
Learn patriotic songs appropriate for age. Music builds connection and memory.

Inclusive Perspectives:
Include diverse perspectives on American identity. Many people and cultures contribute to America.

ASSESSMENT INDICATORS:
- Identifies American flag and explains its significance
- Recognizes major national symbols
- Explains meaning of key holidays
- Shows respect for symbols and flag
- Connects symbols to concepts of country and freedom

VOCABULARY TO DEVELOP:
flag, symbol, country, America, United States, freedom, monument, holiday, celebrate, president, respect',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'American Symbols' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 1 HISTORY UNITS
-- ============================================================================

-- Families Then and Now (Grade 1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Families Then and Now' AND grade_level = 1),
  'Families Then and Now Teaching Guide',
  'Comprehensive pedagogical approach for teaching families and traditions in Grade 1',
  'FAMILIES AND TRADITIONS - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
This unit explores family structures, traditions, and cultural heritage. Students learn that families come in many forms, each with unique traditions and stories. They begin to understand how families pass down customs and how these shape identity. Cultural sensitivity and celebration of diversity are central.

LEARNING PROGRESSION:
1. Exploring diverse family structures
2. Understanding family roles and responsibilities
3. Investigating family traditions and customs
4. Exploring cultural heritage and background
5. Learning about family history and stories
6. Comparing families across cultures
7. Creating family timelines

DEVELOPMENTAL CONSIDERATIONS:
First graders can understand that families differ and that different is okay. Be sensitive to varied family situations (single parents, foster families, grandparent-headed households). All families are valued.

COMMON CHALLENGES:
- Navigating sensitive family situations
- Avoiding stereotyping cultures
- Limited knowledge of own family history
- Abstract concept of "heritage"
- Comparing without judging

INSTRUCTIONAL STRATEGIES:

Family Diversity:
Read books showing diverse families. Discuss: "Families are different. How is this family like yours? Different?"

Family Projects:
Flexible projects accommodating all family structures. "Share a tradition" rather than specific family members.

Cultural Celebrations:
Explore various cultural celebrations respectfully. Invite family members to share (optional).

Storytelling:
Encourage family stories. "Ask an adult in your home about a special memory." Oral history is accessible.

Timeline Introduction:
Create simple family timelines. "When were you born? What happened before that?" Introduce chronological thinking.

Comparison Without Judgment:
Compare traditions and celebrations. All are valuable. Avoid "better" or "normal."

Literature Connection:
Use picture books as windows (into other cultures) and mirrors (reflecting own experiences).

ASSESSMENT INDICATORS:
- Describes own family structure and roles
- Explains family traditions
- Compares different family customs respectfully
- Shows understanding that families differ
- Creates simple timeline of family events

VOCABULARY TO DEVELOP:
family, tradition, custom, celebration, heritage, ancestor, culture, diverse, timeline, generation',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Families Then and Now' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- Past and Present (Grade 1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Past and Present' AND grade_level = 1),
  'Past and Present Teaching Guide',
  'Comprehensive pedagogical approach for teaching past and present in Grade 1',
  'PAST AND PRESENT - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
This unit develops historical thinking by exploring how life has changed over time. Students compare life in the past to today, examining how technology, homes, schools, and daily life have evolved. They develop chronological understanding and begin to see themselves as part of history.

LEARNING PROGRESSION:
1. Understanding concepts of past, present, future
2. Using timelines to sequence events
3. Comparing schools long ago and today
4. Exploring how technology has changed
5. Comparing transportation then and now
6. Understanding how homes have changed
7. Exploring daily life in the past

DEVELOPMENTAL CONSIDERATIONS:
First graders have limited sense of historical time. "Long ago" might mean last week to a kindergartner. Use concrete references: grandparents'' childhood, 100 years ago. Objects and photos make the past tangible.

COMMON CHALLENGES:
- Abstract concept of time periods
- Romanticizing or oversimplifying the past
- Understanding that the past was different people''s "present"
- Distinguishing generations
- Connecting personal history to larger history

INSTRUCTIONAL STRATEGIES:

Personal Timeline:
Create personal timelines first. "When were you a baby? A toddler?" Build from known to unknown.

Artifact Exploration:
Bring in or show old objects: typewriters, rotary phones, record players. "What do you think this was used for?"

Photo Comparison:
Compare old photos to modern equivalents. "How is this classroom different from ours?"

Grandparent Interviews:
Interview older relatives about their childhood. What was the same? Different?

Then and Now Sorting:
Sort images into past and present. Discuss clues that help determine when.

Technology Timeline:
Track how specific technologies evolved: communication, transportation, entertainment.

Living Museum:
Create classroom exhibits showing past vs. present. Students teach each other.

ASSESSMENT INDICATORS:
- Uses past, present, future correctly
- Sequences events on a timeline
- Identifies differences between past and present
- Explains how technology has changed life
- Shows interest in historical investigation

VOCABULARY TO DEVELOP:
past, present, future, long ago, history, change, compare, timeline, technology, generation, artifact',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Past and Present' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 2 HISTORY UNITS
-- ============================================================================

-- Our Nation''s History (Grade 2)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Our Nation''s History' AND grade_level = 2),
  'Our Nation''s History Teaching Guide',
  'Comprehensive pedagogical approach for teaching national history in Grade 2',
  'OUR NATION''S HISTORY - GRADE 2 UNIT GUIDE

UNIT OVERVIEW:
This unit introduces key events and people in American history. Students learn about significant historical figures, important national events, and how our country developed. The focus is on stories and key concepts rather than detailed chronology or complex political history.

LEARNING PROGRESSION:
1. Early Americans: Native Americans
2. Explorers and early settlements
3. Colonial life
4. American Revolution basics
5. Founding Fathers and important leaders
6. Westward expansion
7. America today and the future

DEVELOPMENTAL CONSIDERATIONS:
Second graders understand stories better than abstract political concepts. Use biographical and narrative approaches. Acknowledge complexity (especially regarding Native Americans and colonization) at age-appropriate levels.

COMMON CHALLENGES:
- Oversimplifying complex history
- Addressing violence and injustice appropriately
- Avoiding myths and stereotypes
- Managing anachronistic thinking
- Teaching multiple perspectives

INSTRUCTIONAL STRATEGIES:

Story-Based Approach:
Teach through stories of individuals. Personal narratives are accessible and memorable.

Primary Sources:
Use age-appropriate primary sources: portraits, documents, artifacts. "Real" things from history.

Multiple Perspectives:
Include Native American, African American, and other perspectives alongside traditional narratives.

Historical Fiction:
Use historical fiction picture books. Discuss what''s fact vs. fiction.

Comparison:
Compare life in different historical periods to today. Make history relevant.

Timeline Development:
Build class timeline throughout the year. See how events connect.

Dramatic Play:
Role-play historical scenarios. Living history makes it memorable.

ASSESSMENT INDICATORS:
- Identifies key historical figures and their contributions
- Describes major events in American history
- Explains how life was different in the past
- Shows understanding of cause and effect in history
- Demonstrates respect for diverse perspectives

VOCABULARY TO DEVELOP:
history, explorer, colony, revolution, independence, founding fathers, constitution, democracy, liberty, citizen',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Our Nation''s History' AND grade_level = 2)
ON CONFLICT DO NOTHING;

-- Geography Skills (Grade 2)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Geography Skills' AND grade_level = 2),
  'Geography Skills Teaching Guide',
  'Comprehensive pedagogical approach for teaching maps and geography in Grade 2',
  'MAPS AND GEOGRAPHY - GRADE 2 UNIT GUIDE

UNIT OVERVIEW:
This unit develops geographic literacy through map skills and understanding of geographic features. Students learn to read and create maps, understand map symbols and keys, and explore how geography affects how people live. This connects to history by showing where events happened.

LEARNING PROGRESSION:
1. Understanding maps as representations of places
2. Learning map symbols and keys
3. Using cardinal directions (N, S, E, W)
4. Identifying continents and oceans
5. Exploring landforms (mountains, rivers, plains)
6. Understanding how geography affects people
7. Creating and reading various types of maps

DEVELOPMENTAL CONSIDERATIONS:
Second graders can understand that maps represent real places from above. They enjoy map activities when made hands-on and relevant. Start with familiar places before world maps.

COMMON CHALLENGES:
- Understanding bird''s eye view perspective
- Remembering cardinal directions
- Scale - maps are smaller than reality
- Abstract nature of world maps
- Connecting physical geography to human activity

INSTRUCTIONAL STRATEGIES:

Classroom Maps:
Create maps of the classroom, school, and neighborhood. Students map familiar places first.

Physical Models:
Build landform models with clay, sand, or paper. See three-dimensional features.

Map Skills Practice:
Regular practice with map skills: finding locations, using keys, following directions.

Globe and Map Comparison:
Compare globes and flat maps. Why are both useful? What are limitations?

Geography Games:
Games that require map use. Treasure hunts, location finding, travel planning.

Human-Environment Connection:
Discuss how landforms affect life. "Why do cities form near rivers? Why are mountains hard to cross?"

Virtual Exploration:
Use Google Earth and online maps to explore. Modern geographic tools.

ASSESSMENT INDICATORS:
- Reads and interprets map symbols and keys
- Uses cardinal directions correctly
- Identifies continents and oceans
- Describes major landforms
- Explains how geography affects human life

VOCABULARY TO DEVELOP:
map, key, legend, symbol, north, south, east, west, continent, ocean, landform, mountain, river, valley, plain, coast, island',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Geography Skills' AND grade_level = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 6 HISTORY UNITS
-- ============================================================================

-- Ancient Civilizations (Grade 6)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Ancient Civilizations' AND grade_level = 6),
  'Ancient Civilizations Teaching Guide',
  'Comprehensive pedagogical approach for teaching ancient civilizations in Grade 6',
  'ANCIENT CIVILIZATIONS - GRADE 6 UNIT GUIDE

UNIT OVERVIEW:
This unit explores the earliest human societies and major ancient civilizations. Students analyze how geography influenced development, compare social structures, examine achievements, and trace how ancient innovations affect our world today. This foundational world history prepares for more complex historical analysis.

LEARNING PROGRESSION:
1. Early humans and the Neolithic Revolution
2. Mesopotamia: geography, government, contributions
3. Ancient Egypt: Nile River civilization
4. Ancient India: Indus Valley to Gupta Empire
5. Ancient China: dynasties and innovations
6. Ancient Americas: Maya, Aztec, Inca
7. Comparing civilizations: patterns and differences

DEVELOPMENTAL CONSIDERATIONS:
Sixth graders can handle chronological complexity and comparative analysis. Use inquiry-based approaches. Connect ancient history to modern world. Primary sources, even in translation, make history real.

COMMON CHALLENGES:
- Managing vast timespans
- Avoiding ethnocentric perspectives
- Understanding pre-modern worldviews
- Connecting ancient history to present
- Differentiating among many civilizations

INSTRUCTIONAL STRATEGIES:

Geographic Foundation:
Start each civilization with geography. "How did the Nile shape Egyptian civilization?" Geography as cause.

Primary Source Analysis:
Use excerpts from ancient texts, images of artifacts, and archaeological evidence. Develop source analysis skills.

Comparative Analysis:
Compare civilizations using categories: government, religion, technology, social structure. Find patterns.

Project-Based Learning:
Civilization projects where students research and present. Choice increases engagement.

Historical Empathy:
Imagine life in ancient times. How did people think? What did they believe? Avoid presentism.

Legacy Connections:
Connect ancient innovations to modern life. Writing, mathematics, government, architecture.

Timeline Integration:
Maintain timeline showing civilizations in context. Simultaneity is important.

ASSESSMENT INDICATORS:
- Explains how geography influenced civilization development
- Describes key features of major ancient civilizations
- Analyzes primary sources for evidence
- Compares civilizations across categories
- Traces ancient contributions to modern world

VOCABULARY TO DEVELOP:
civilization, Neolithic, agriculture, empire, dynasty, pharaoh, cuneiform, hieroglyphics, caste, philosophy, monotheism, polytheism, archaeology',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Ancient Civilizations' AND grade_level = 6)
ON CONFLICT DO NOTHING;

-- Classical Greece and Rome (Grade 6)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Classical Greece and Rome' AND grade_level = 6),
  'Classical Greece and Rome Teaching Guide',
  'Comprehensive pedagogical approach for teaching classical civilizations in Grade 6',
  'CLASSICAL GREECE AND ROME - GRADE 6 UNIT GUIDE

UNIT OVERVIEW:
This unit explores the classical civilizations of Greece and Rome that form the foundation of Western civilization. Students analyze the development of democracy in Athens, compare Greek city-states, trace the rise and fall of Rome, and evaluate lasting contributions in government, philosophy, art, and architecture.

LEARNING PROGRESSION:
1. Geography of the Mediterranean world
2. Greek city-states: Athens and Sparta
3. Athenian democracy and its limits
4. Greek philosophy, art, and culture
5. Rise of the Roman Republic
6. Roman Empire: expansion and achievements
7. Fall of Rome and legacy

DEVELOPMENTAL CONSIDERATIONS:
Sixth graders can engage with concepts like democracy and republic when made concrete. Compare ancient systems to modern democracy. Address limitations (slavery, exclusion) alongside achievements.

COMMON CHALLENGES:
- Romanticizing democracy (ignoring exclusions)
- Confusion between Republic and Empire
- Complex political concepts
- Managing mythological vs. historical content
- Understanding why Rome "fell"

INSTRUCTIONAL STRATEGIES:

Democracy Investigation:
Compare Athenian democracy to modern democracy. Who could participate? Who was excluded? How did it work?

City-State Comparison:
Detailed Athens vs. Sparta comparison. Different values, different societies. Neither was purely good or bad.

Primary Sources:
Read excerpts from ancient texts: Socrates, Plato, Cicero. Ancient voices speak directly.

Legacy Tracing:
Connect Greek and Roman contributions to modern life: government systems, architecture, language, law.

Simulation Activities:
Simulate Roman Senate, Greek Assembly, or trial of Socrates. Experience history through participation.

Map Skills:
Trace Roman expansion on maps. Understand how geography affected military and trade.

Multiple Perspectives:
Include perspectives of enslaved people, women, conquered peoples. Complete picture.

ASSESSMENT INDICATORS:
- Explains development of Athenian democracy
- Compares Athens and Sparta
- Traces Roman Republic to Empire transition
- Identifies lasting Greek and Roman contributions
- Analyzes primary sources from classical period

VOCABULARY TO DEVELOP:
democracy, republic, empire, city-state, citizen, philosophy, Senate, patrician, plebeian, aqueduct, Colosseum, legacy, classical',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Classical Greece and Rome' AND grade_level = 6)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 8 HISTORY UNITS
-- ============================================================================

-- American Revolution and New Nation (Grade 8)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'American Revolution and New Nation' AND grade_level = 8),
  'American Revolution and New Nation Teaching Guide',
  'Comprehensive pedagogical approach for teaching the American Revolution in Grade 8',
  'AMERICAN REVOLUTION AND NEW NATION - GRADE 8 UNIT GUIDE

UNIT OVERVIEW:
This unit examines the causes, events, and consequences of the American Revolution and the founding of the United States. Students analyze the ideas that sparked revolution, key events of the war, debates at the Constitutional Convention, and the compromises that shaped our government. Primary source analysis is central.

LEARNING PROGRESSION:
1. Causes of the Revolution: taxes, representation, Enlightenment ideas
2. Declaration of Independence: ideas and significance
3. Revolutionary War: key battles and turning points
4. Articles of Confederation and their weaknesses
5. Constitutional Convention: debates and compromises
6. Constitution: structure and principles
7. Bill of Rights and ratification

DEVELOPMENTAL CONSIDERATIONS:
Eighth graders can analyze complex documents and multiple perspectives. They should grapple with contradictions (liberty and slavery). Connect founding principles to ongoing American debates.

COMMON CHALLENGES:
- Oversimplifying causes of revolution
- Mythologizing founding fathers
- Ignoring slavery and women''s exclusion
- Understanding constitutional compromises
- Connecting 18th century to today

INSTRUCTIONAL STRATEGIES:

Primary Source Intensive:
Analyze Declaration of Independence, Constitution, Federalist Papers. Close reading of founding documents.

Multiple Perspectives:
Include Loyalist, Native American, African American, and women''s perspectives. Revolution affected everyone differently.

Debate and Deliberation:
Simulate Constitutional Convention debates. Students argue different positions with evidence.

Document Analysis:
Use structured analysis protocols for primary sources. Sourcing, contextualization, corroboration.

Cause-Effect Analysis:
Map causes of revolution and effects of constitutional decisions. Historical causation is complex.

Contemporary Connections:
Connect constitutional principles to current issues. How do founding ideas apply today?

Biographical Study:
Study founders as complex humans, not demigods. Achievements and contradictions.

ASSESSMENT INDICATORS:
- Analyzes causes of the American Revolution
- Interprets key founding documents
- Explains constitutional compromises and their effects
- Evaluates multiple perspectives on founding events
- Connects founding principles to contemporary issues

VOCABULARY TO DEVELOP:
revolution, independence, Enlightenment, natural rights, constitution, republic, federalism, checks and balances, compromise, amendment, ratification',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'American Revolution and New Nation' AND grade_level = 8)
ON CONFLICT DO NOTHING;

-- Civil War and Reconstruction (Grade 8)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Civil War and Reconstruction' AND grade_level = 8),
  'Civil War and Reconstruction Teaching Guide',
  'Comprehensive pedagogical approach for teaching Civil War and Reconstruction in Grade 8',
  'CIVIL WAR AND RECONSTRUCTION - GRADE 8 UNIT GUIDE

UNIT OVERVIEW:
This unit examines America''s greatest crisis: the Civil War and its aftermath. Students analyze the causes rooted in slavery and sectional conflict, key events and turning points of the war, and the incomplete promises of Reconstruction. This history continues to shape American society.

LEARNING PROGRESSION:
1. Causes: slavery, states'' rights, sectional conflict
2. North vs. South: comparing resources and strategies
3. Key battles and turning points
4. Emancipation Proclamation and its impact
5. African American experience during war
6. Reconstruction plans and policies
7. End of Reconstruction and its legacy

DEVELOPMENTAL CONSIDERATIONS:
This is emotionally challenging content. Students should understand slavery''s reality and the Civil War''s costs without gratuitous violence. Connect to ongoing racial justice issues thoughtfully.

COMMON CHALLENGES:
- "Lost Cause" mythology
- Oversimplifying causes (it was about slavery)
- Ignoring African American agency
- Understanding Reconstruction''s significance
- Connecting to current racial issues

INSTRUCTIONAL STRATEGIES:

Cause Analysis:
Analyze primary sources proving slavery as central cause. Confederate declarations, speeches, letters.

Multiple Perspectives:
Include enslaved people, soldiers (both sides), women, civilians. War affected everyone.

Map Analysis:
Study military campaigns through maps. Geography affected strategy.

Primary Sources:
Slave narratives, soldier letters, contemporary documents. Real voices from history.

Turning Points:
Analyze turning points: Antietam, Emancipation, Gettysburg. Why were these significant?

Reconstruction Depth:
Go beyond "Reconstruction failed." What was attempted? Who resisted? Why? Long-term effects.

Legacy Connections:
Connect to Jim Crow, Civil Rights Movement, present. This history continues.

ASSESSMENT INDICATORS:
- Explains causes of the Civil War with evidence
- Analyzes key turning points and their significance
- Evaluates Reconstruction policies and outcomes
- Examines multiple perspectives on the war era
- Connects Civil War era to modern America

VOCABULARY TO DEVELOP:
secession, Confederacy, Union, abolition, emancipation, Reconstruction, amendment, segregation, Jim Crow, sharecropping, freedmen',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Civil War and Reconstruction' AND grade_level = 8)
ON CONFLICT DO NOTHING;

-- Civics and Government (Grade 8)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Civics and Government' AND grade_level = 8),
  'Civics and Government Teaching Guide',
  'Comprehensive pedagogical approach for teaching civics and government in Grade 8',
  'CIVICS AND GOVERNMENT - GRADE 8 UNIT GUIDE

UNIT OVERVIEW:
This unit develops understanding of American government structure and civic responsibility. Students analyze the Constitution''s framework, explore how branches interact through checks and balances, understand federalism, and examine citizen rights and responsibilities. The goal is informed, engaged citizenship.

LEARNING PROGRESSION:
1. Three branches of government
2. Checks and balances system
3. Federalism: federal vs. state powers
4. Constitutional amendments and change
5. Rights and responsibilities of citizens
6. Elections and voting
7. Civic participation beyond voting

DEVELOPMENTAL CONSIDERATIONS:
Eighth graders can understand government complexity when made concrete. Use current events to illustrate concepts. Encourage informed opinions while teaching to evaluate evidence.

COMMON CHALLENGES:
- Civics seems boring or irrelevant
- Confusion about levels of government
- Abstract constitutional concepts
- Political polarization in classroom
- Encouraging engagement without preaching

INSTRUCTIONAL STRATEGIES:

Current Events Connection:
Connect constitutional concepts to current news. How does this story illustrate checks and balances?

Simulation and Role-Play:
Simulate government processes: passing a bill, Supreme Court case, election campaign.

Document Analysis:
Study Constitution closely. What does it actually say? How is it interpreted?

Case Study Approach:
Use Supreme Court cases to illustrate constitutional principles. Debate different interpretations.

Comparative Government:
Compare US government to other systems. What''s unique? What''s common?

Local Government:
Study local government - most accessible level. Attend council meeting or invite official.

Civic Action Projects:
Students engage in civic action: advocacy, service, awareness. Experience citizenship.

ASSESSMENT INDICATORS:
- Explains structure and functions of three branches
- Analyzes checks and balances with examples
- Distinguishes federal and state powers
- Describes rights and responsibilities of citizens
- Demonstrates understanding of democratic processes

VOCABULARY TO DEVELOP:
legislative, executive, judicial, checks and balances, federalism, amendment, bill, veto, Supreme Court, citizen, vote, democracy, republic',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Civics and Government' AND grade_level = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- HIGH SCHOOL HISTORY UNITS (GRADES 9-12)
-- ============================================================================

-- Physical Geography (Grade 9)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Physical Geography' AND grade_level = 9),
  'Physical Geography Teaching Guide',
  'Comprehensive pedagogical approach for teaching physical geography',
  'PHYSICAL GEOGRAPHY - WORLD GEOGRAPHY UNIT GUIDE

UNIT OVERVIEW:
This unit explores Earth''s physical systems and how they shape human activity. Students analyze plate tectonics, landform creation, climate systems, and natural resources. They use geographic tools and technology to investigate physical processes and their effects on human settlement and activity.

LEARNING PROGRESSION:
1. Geographic tools and technology (GIS, GPS, remote sensing)
2. Plate tectonics and landform creation
3. Climate systems and weather patterns
4. Climate zones and their characteristics
5. Natural resources: types and distribution
6. Environmental issues and sustainability
7. Human-environment interaction

DEVELOPMENTAL CONSIDERATIONS:
Ninth graders can handle systems thinking and appreciate complex interactions. Connect to science (earth science, climate science). Use data and technology for authentic geographic inquiry.

COMMON CHALLENGES:
- Weather vs. climate confusion
- Understanding long-term geological processes
- Climate change discussions
- Connecting physical and human geography
- Geographic scale (local to global)

INSTRUCTIONAL STRATEGIES:

Technology Integration:
Use GIS, Google Earth, and mapping tools. Students do real geographic analysis.

Systems Thinking:
Explore how systems interact: climate affects vegetation affects human settlement. Cause-effect chains.

Case Studies:
Study specific locations in depth. How does physical geography shape life there?

Data Analysis:
Analyze climate data, population data, resource data. Geographic analysis is data-driven.

Current Events:
Connect to natural disasters, climate change, resource conflicts. Geography is in the news daily.

Field Work:
Local geographic investigation. Apply skills in familiar territory.

Comparative Analysis:
Compare regions using geographic frameworks. What''s similar? Different? Why?

ASSESSMENT INDICATORS:
- Uses geographic tools and technology effectively
- Explains physical processes that shape landforms
- Analyzes climate systems and patterns
- Evaluates human-environment interactions
- Applies geographic thinking to real-world issues

VOCABULARY TO DEVELOP:
plate tectonics, landform, climate, weather, biome, ecosystem, natural resource, renewable, nonrenewable, sustainability, GIS, erosion, weathering',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Physical Geography' AND grade_level = 9)
ON CONFLICT DO NOTHING;

-- Human Geography (Grade 9)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Human Geography' AND grade_level = 9),
  'Human Geography Teaching Guide',
  'Comprehensive pedagogical approach for teaching human geography',
  'HUMAN GEOGRAPHY - WORLD GEOGRAPHY UNIT GUIDE

UNIT OVERVIEW:
This unit examines human systems from a geographic perspective. Students analyze population patterns, cultural landscapes, economic systems, political organization, and urbanization. They explore how humans organize space and how spatial patterns reflect and shape human activity.

LEARNING PROGRESSION:
1. Population geography: demographics and migration
2. Cultural geography: language, religion, ethnicity
3. Political geography: borders, states, geopolitics
4. Economic geography: development and systems
5. Urban geography: cities and urbanization
6. Agricultural and land use patterns
7. Globalization and interconnection

DEVELOPMENTAL CONSIDERATIONS:
Ninth graders can analyze complex social patterns when provided with frameworks. Connect to their own experiences of culture, economy, and urban life. Address sensitive topics (religion, politics) with academic objectivity.

COMMON CHALLENGES:
- Cultural stereotyping
- Economic determinism
- Political bias
- Distinguishing correlation from causation
- Overwhelming complexity of human systems

INSTRUCTIONAL STRATEGIES:

Case Study Approach:
Deep study of specific regions, cities, or migration patterns. Detailed analysis develops understanding.

Data Visualization:
Use maps, charts, and graphs to visualize human patterns. Population pyramids, choropleth maps.

Cultural Sensitivity:
Study cultures with respect and nuance. Avoid generalizations while identifying patterns.

Current Events:
Connect to migration crises, political conflicts, economic development. Geography explains current events.

Comparative Analysis:
Compare regions, cities, economic systems. Frameworks for comparison.

Field Observation:
Observe human geography locally. How does this city/neighborhood illustrate geographic concepts?

Interdisciplinary Connections:
Connect to economics, political science, sociology, anthropology. Human geography is interdisciplinary.

ASSESSMENT INDICATORS:
- Analyzes population patterns and trends
- Explains cultural landscape formation
- Evaluates political and economic geographic patterns
- Examines urbanization causes and effects
- Applies human geography concepts to current issues

VOCABULARY TO DEVELOP:
demography, migration, push-pull factors, culture, cultural diffusion, language family, nation-state, border, development, urbanization, globalization',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Human Geography' AND grade_level = 9)
ON CONFLICT DO NOTHING;

-- Global Issues (Grade 9)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM units WHERE name = 'Global Issues' AND grade_level = 9),
  'Global Issues Teaching Guide',
  'Comprehensive pedagogical approach for teaching global issues',
  'GLOBAL ISSUES - WORLD GEOGRAPHY UNIT GUIDE

UNIT OVERVIEW:
This unit examines contemporary global challenges from a geographic perspective. Students analyze globalization, sustainable development, international conflicts, and global cooperation. They develop informed perspectives on complex issues affecting the world today and their role as global citizens.

LEARNING PROGRESSION:
1. Globalization: economic, cultural, political dimensions
2. Sustainable development and environmental challenges
3. Global inequality and development gaps
4. International conflicts: causes and resolution
5. International organizations and cooperation
6. Global citizenship and individual action
7. Future trends and challenges

DEVELOPMENTAL CONSIDERATIONS:
Ninth graders can engage with complex global issues when provided frameworks for analysis. Encourage informed opinions based on evidence. Address controversial topics with multiple perspectives.

COMMON CHALLENGES:
- Overwhelming scope of global problems
- Feeling powerless to make change
- Political polarization on issues
- Distinguishing advocacy from education
- Balancing perspectives fairly

INSTRUCTIONAL STRATEGIES:

Issue Analysis Framework:
Provide structured approach: What is the issue? Causes? Effects? Perspectives? Solutions? Evidence?

Multiple Perspectives:
Present various viewpoints on controversial issues. Teach to evaluate, not to indoctrinate.

Simulation and Model UN:
Simulate international negotiation. Experience complexity of global cooperation.

Local-Global Connections:
Connect global issues to local manifestations. How do global patterns affect our community?

Data-Driven Analysis:
Use data on development, environment, conflict. Evidence-based understanding.

Solution Focus:
Balance problem analysis with solution exploration. What is being done? What could be done?

Civic Engagement:
Encourage informed, thoughtful civic action. Students can make a difference.

ASSESSMENT INDICATORS:
- Analyzes multiple dimensions of globalization
- Evaluates sustainable development challenges
- Examines causes of global conflicts
- Assesses roles of international organizations
- Develops informed perspectives on global issues

VOCABULARY TO DEVELOP:
globalization, sustainability, development, inequality, conflict, cooperation, NGO, UN, treaty, humanitarian, environmental, global citizen',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Global Issues' AND grade_level = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VERIFICATION QUERY
-- ============================================================================
SELECT
  'History unit prompts' as category,
  COUNT(*) as total
FROM prompt_templates
WHERE prompt_type = 'unit_global'
  AND subject_id = (SELECT id FROM subjects WHERE name = 'History');
