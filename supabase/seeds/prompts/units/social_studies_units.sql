-- ============================================================================
-- SOCIAL STUDIES UNIT PROMPTS (ALL GRADES K-10)
-- ============================================================================
-- Comprehensive pedagogical prompts for each Social Studies unit
-- Each prompt provides teaching methodology, inquiry approaches,
-- civic/geographic/economic thinking skills, and instructional strategies
-- ============================================================================

-- ============================================================================
-- KINDERGARTEN SOCIAL STUDIES
-- ============================================================================

-- My Community (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Social Studies'),
  (SELECT id FROM units WHERE name = 'My Community' AND grade_level = 0),
  'My Community Teaching Guide',
  'Comprehensive pedagogical approach for teaching community in Kindergarten',
  'MY COMMUNITY - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit introduces social studies through the lens of self, family, and immediate community. Students explore their identities, family roles, and neighborhood helpers. They learn that people depend on each other and that communities have rules to keep everyone safe and happy.

LEARNING PROGRESSION:
1. Understanding self: identity, family members, and roles
2. Exploring different family structures and traditions
3. Identifying community helpers and their jobs
4. Learning about rules and why we need them
5. Understanding basic responsibilities

DEVELOPMENTAL CONSIDERATIONS:
Kindergartners think concretely and egocentrically. Start with what they know—their own family and school. Use stories, visitors, and hands-on activities. Abstract concepts like "community" need concrete examples.

COMMON CHALLENGES:
- Understanding "community" as an abstract concept
- Recognizing diverse family structures sensitively
- Understanding why rules exist and are helpful
- Taking others'' perspectives

INSTRUCTIONAL STRATEGIES:

Personal Connections:
Begin every lesson with students'' experiences. "Who lives in your home? What jobs do they do?" builds relevance.

Community Visitors:
Invite firefighters, nurses, mail carriers. Real people make roles concrete and memorable.

Family Celebrations:
Projects about family traditions celebrate diversity. Ensure sensitivity to different family structures.

Classroom as Community:
Develop class rules together. Assign classroom jobs. Model and practice being good community members.

Read-Alouds:
Use picture books about families, helpers, and communities. Discuss and compare experiences.

Dramatic Play:
Set up community helper centers. Students explore roles through imaginative play.

ASSESSMENT INDICATORS:
- Describes self and family members
- Identifies community helpers and their roles
- Explains why rules are important
- Participates as classroom community member

VOCABULARY TO DEVELOP:
family, community, helper, rule, responsibility, safe, neighbor, job, share, cooperate',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'My Community' AND grade_level = 0 AND subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies'))
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 1 SOCIAL STUDIES
-- ============================================================================

-- Neighborhoods and Communities (1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Social Studies'),
  (SELECT id FROM units WHERE name = 'Neighborhoods and Communities' AND grade_level = 1),
  'Neighborhoods and Communities Teaching Guide',
  'Comprehensive pedagogical approach for teaching neighborhoods in Grade 1',
  'NEIGHBORHOODS AND COMMUNITIES - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
Students expand their understanding beyond family to explore different types of communities—urban, suburban, and rural. They learn how communities meet people''s needs through goods, services, and cooperation.

LEARNING PROGRESSION:
1. Understanding what makes a neighborhood
2. Comparing urban, suburban, and rural communities
3. Identifying community needs (food, shelter, safety)
4. Understanding how goods and services meet needs
5. Exploring how people work together in communities

DEVELOPMENTAL CONSIDERATIONS:
First graders can compare and contrast but still think concretely. Use photographs, videos, and stories to explore communities different from their own. Build vocabulary for geographic features.

INSTRUCTIONAL STRATEGIES:

Community Comparisons:
Use photos and virtual tours to compare different community types. Create charts showing similarities and differences.

Needs vs. Wants:
Introduce economic concepts through everyday examples. What do we NEED? What do we WANT?

Goods and Services:
Sort community places by goods (store, farm) and services (doctor, teacher). Connect to students'' experiences.

Neighborhood Mapping:
Create simple maps of school neighborhood. Identify important places and how they help the community.

Community Workers:
Explore various workers and how they contribute. "Who grows our food? Who keeps us safe?"

ASSESSMENT INDICATORS:
- Compares different types of communities
- Distinguishes needs from wants
- Identifies goods and services in community
- Explains how community members help each other

VOCABULARY TO DEVELOP:
neighborhood, urban, suburban, rural, goods, services, needs, wants, community, cooperation',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Neighborhoods and Communities' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 2 SOCIAL STUDIES
-- ============================================================================

-- Maps and Communities (2)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Social Studies'),
  (SELECT id FROM units WHERE name = 'Maps and Communities' AND grade_level = 2),
  'Maps and Communities Teaching Guide',
  'Comprehensive pedagogical approach for teaching maps in Grade 2',
  'MAPS AND COMMUNITIES - GRADE 2 UNIT GUIDE

UNIT OVERVIEW:
Students develop geographic literacy through map skills while exploring Canadian communities. They learn to read and create maps, understand cardinal directions, and compare communities across Canada.

LEARNING PROGRESSION:
1. Understanding what maps represent
2. Using cardinal directions (N, S, E, W)
3. Reading map symbols and legends
4. Creating simple maps
5. Exploring different Canadian communities

DEVELOPMENTAL CONSIDERATIONS:
Second graders are developing spatial reasoning. Use physical movement (face north, walk east) to reinforce directions. Start with familiar spaces before abstract maps.

INSTRUCTIONAL STRATEGIES:

Movement Activities:
Play direction games. Use bodies to learn N-S-E-W. Navigate classroom and school using directions.

Map Creation:
Start with maps of classroom, then school, then neighborhood. Building maps develops understanding.

Map Reading:
Use age-appropriate maps with clear symbols. Teach legend reading explicitly.

Canadian Communities:
Virtual visits to different Canadian communities. Compare urban Calgary to rural Nova Scotia fishing village.

Local Connection:
Map your own community. What makes it unique? How is it similar to or different from others?

ASSESSMENT INDICATORS:
- Uses cardinal directions correctly
- Reads map symbols using legend
- Creates simple maps with key elements
- Compares different communities

VOCABULARY TO DEVELOP:
map, legend, symbol, compass, north, south, east, west, direction, location, community, urban, rural',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Maps and Communities' AND grade_level = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 3 SOCIAL STUDIES
-- ============================================================================

-- Canadian Geography (3)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Social Studies'),
  (SELECT id FROM units WHERE name = 'Canadian Geography' AND grade_level = 3),
  'Canadian Geography Teaching Guide',
  'Comprehensive pedagogical approach for teaching Canadian geography in Grade 3',
  'CANADIAN GEOGRAPHY - GRADE 3 UNIT GUIDE

UNIT OVERVIEW:
Students explore Canada''s diverse geography including provinces, territories, physical features, and regional differences. They develop understanding of how geography influences how people live.

LEARNING PROGRESSION:
1. Identifying provinces and territories
2. Locating major physical features (mountains, lakes, rivers)
3. Understanding climate regions
4. Exploring how geography affects communities
5. Learning Canadian symbols and their significance

DEVELOPMENTAL CONSIDERATIONS:
Third graders can handle more complex mapping. Use memorable features (Great Lakes, Rocky Mountains) as anchors. Connect geography to human stories—why do people live where they do?

INSTRUCTIONAL STRATEGIES:

Interactive Mapping:
Use puzzle maps, interactive digital maps, and blank maps for practice. Repetition builds familiarity.

Virtual Tours:
Explore different regions through videos and virtual tours. The Arctic, prairies, coastal BC—show diversity.

Physical Features Songs:
Memory aids and songs help retention. "Atlantic, Pacific, Arctic, and Hudson Bay..."

Indigenous Connections:
Acknowledge traditional territories and Indigenous place names. Geography connects to First Nations, Métis, and Inuit peoples.

Geography and Life:
How does living in the prairies differ from living on the coast? Connect geography to daily life.

ASSESSMENT INDICATORS:
- Locates provinces and territories on map
- Identifies major physical features
- Explains how geography affects how people live
- Recognizes Canadian symbols

VOCABULARY TO DEVELOP:
province, territory, capital, physical feature, climate, region, mountain, prairie, coast, natural resource',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Canadian Geography' AND grade_level = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 4 SOCIAL STUDIES
-- ============================================================================

-- Government and Citizenship (4)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Social Studies'),
  (SELECT id FROM units WHERE name = 'Government and Citizenship' AND grade_level = 4),
  'Government and Citizenship Teaching Guide',
  'Comprehensive pedagogical approach for teaching government in Grade 4',
  'GOVERNMENT AND CITIZENSHIP - GRADE 4 UNIT GUIDE

UNIT OVERVIEW:
Students learn about democratic government in Canada, including levels of government, how laws are made, and the role of citizens. They develop understanding of rights, responsibilities, and civic participation.

LEARNING PROGRESSION:
1. Understanding what government does
2. Exploring three levels of government (municipal, provincial, federal)
3. Learning how representatives are elected
4. Understanding how laws are made
5. Exploring citizen rights and responsibilities

DEVELOPMENTAL CONSIDERATIONS:
Fourth graders can understand systems and processes. Make abstract government concepts concrete through examples, simulations, and connections to their lives.

INSTRUCTIONAL STRATEGIES:

Government in Daily Life:
Start with what government does for students—schools, roads, parks, safety. Make it relevant.

Three Levels Chart:
Create clear visual showing municipal, provincial, and federal responsibilities. Students can sort examples.

Mock Elections:
Hold class elections to understand voting process. Discuss why voting matters.

Classroom Democracy:
Practice democratic decision-making in classroom. Debate, vote, follow majority rule.

Current Events:
Age-appropriate news about government decisions. "The city council decided to build a new park."

ASSESSMENT INDICATORS:
- Identifies three levels of government
- Explains how representatives are elected
- Describes citizen rights and responsibilities
- Participates in democratic classroom activities

VOCABULARY TO DEVELOP:
government, democracy, elect, vote, representative, law, citizen, right, responsibility, municipal, provincial, federal',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Government and Citizenship' AND grade_level = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 5 SOCIAL STUDIES
-- ============================================================================

-- Canadian Citizenship (5)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Social Studies'),
  (SELECT id FROM units WHERE name = 'Canadian Citizenship' AND grade_level = 5),
  'Canadian Citizenship Teaching Guide',
  'Comprehensive pedagogical approach for teaching citizenship in Grade 5',
  'CANADIAN CITIZENSHIP - GRADE 5 UNIT GUIDE

UNIT OVERVIEW:
Students deepen understanding of Canadian citizenship, exploring identity, multiculturalism, rights under the Charter, and what it means to be Canadian. They examine multiple perspectives on Canadian identity.

LEARNING PROGRESSION:
1. Exploring Canadian identity and symbols
2. Understanding multiculturalism and diversity
3. Learning about the Charter of Rights and Freedoms
4. Examining citizenship rights and responsibilities
5. Exploring how to be an active citizen

DEVELOPMENTAL CONSIDERATIONS:
Fifth graders can handle abstract concepts like identity and rights. Encourage discussion of different perspectives. Connect to students'' diverse backgrounds and experiences.

INSTRUCTIONAL STRATEGIES:

Identity Exploration:
"What does it mean to be Canadian?" Explore multiple answers. There is no single definition.

Charter Analysis:
Study age-appropriate sections of the Charter. Apply rights to real scenarios.

Multicultural Celebration:
Explore diverse cultures that contribute to Canada. Celebrate without stereotyping.

Immigration Stories:
Share (respectfully) immigration and newcomer stories. What does citizenship mean to different people?

Active Citizenship:
Explore ways young people can participate. Community service, environmental action, speaking up.

ASSESSMENT INDICATORS:
- Explains aspects of Canadian identity
- Describes rights in Charter of Rights and Freedoms
- Gives examples of citizenship responsibilities
- Proposes ways to be an active citizen

VOCABULARY TO DEVELOP:
citizenship, identity, multiculturalism, diversity, charter, rights, freedoms, responsibilities, democracy, active citizen',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Canadian Citizenship' AND grade_level = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 6 SOCIAL STUDIES
-- ============================================================================

-- World Geography and Economics (6)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Social Studies'),
  (SELECT id FROM units WHERE name = 'World Geography and Economics' AND grade_level = 6),
  'World Geography and Economics Teaching Guide',
  'Comprehensive pedagogical approach for teaching world geography and economics in Grade 6',
  'WORLD GEOGRAPHY AND ECONOMICS - GRADE 6 UNIT GUIDE

UNIT OVERVIEW:
Students expand beyond Canada to explore world geography, global connections, and basic economic concepts. They learn about continents, major countries, and how the global economy connects us all.

LEARNING PROGRESSION:
1. Reviewing world geography (continents, oceans)
2. Exploring major world regions
3. Understanding global connections (trade, communication)
4. Learning basic economic concepts (scarcity, supply/demand)
5. Examining global economic relationships

DEVELOPMENTAL CONSIDERATIONS:
Sixth graders are ready for global perspectives and abstract economic concepts. Use real-world examples and data. Connect global issues to their daily lives (where do products come from?).

INSTRUCTIONAL STRATEGIES:

Global Product Investigation:
Trace where products come from. "Made in China, Vietnam, Mexico..." Understand global supply chains.

Economic Simulations:
Simulate markets with classroom resources. Experience scarcity, trade, supply and demand.

World Region Studies:
Explore different world regions. Compare geography, economy, and culture.

Current Events Global:
Connect news to geography and economics. Trade agreements, natural disasters, global connections.

Data Analysis:
Use appropriate data to compare countries. Population, GDP, resources. Develop data literacy.

ASSESSMENT INDICATORS:
- Locates major countries and regions
- Explains basic economic concepts
- Describes global connections
- Analyzes how geography affects economy

VOCABULARY TO DEVELOP:
continent, region, economy, scarcity, supply, demand, trade, import, export, global, resource, developed, developing',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'World Geography and Economics' AND grade_level = 6)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 7 SOCIAL STUDIES
-- ============================================================================

-- Financial Literacy (7)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Social Studies'),
  (SELECT id FROM units WHERE name = 'Financial Literacy' AND grade_level = 7),
  'Financial Literacy Teaching Guide',
  'Comprehensive pedagogical approach for teaching financial literacy in Grade 7',
  'FINANCIAL LITERACY - GRADE 7 UNIT GUIDE

UNIT OVERVIEW:
Students develop essential personal finance skills including budgeting, saving, and financial decision-making. They learn to be informed consumers and prepare for financial responsibility.

LEARNING PROGRESSION:
1. Understanding income and types of earnings
2. Creating and managing budgets
3. Learning about saving and interest
4. Understanding credit and debt basics
5. Making informed consumer decisions

DEVELOPMENTAL CONSIDERATIONS:
Seventh graders face increasing financial decisions (allowance, part-time jobs, purchases). Make learning practical and relevant. Avoid assumptions about family financial situations.

INSTRUCTIONAL STRATEGIES:

Real Budgets:
Practice with realistic budgets for teens. Allocate limited resources among wants and needs.

Saving Simulations:
Calculate compound interest over time. Visualize how saving early makes a difference.

Consumer Decisions:
Compare products, evaluate advertising, and make informed choices. Cost per unit, quality vs price.

Financial Goals:
Set short and long-term financial goals. Create plans to achieve them.

Avoiding Financial Traps:
Discuss predatory practices, scams, and marketing manipulation. Critical consumer skills.

ASSESSMENT INDICATORS:
- Creates and follows a budget
- Explains benefits of saving
- Makes informed consumer decisions
- Identifies financial risks and protections

VOCABULARY TO DEVELOP:
budget, income, expense, save, interest, credit, debt, consumer, advertise, need, want, goal, invest',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Financial Literacy' AND grade_level = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 8 SOCIAL STUDIES
-- ============================================================================

-- Global Citizenship (8)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Social Studies'),
  (SELECT id FROM units WHERE name = 'Global Citizenship' AND grade_level = 8),
  'Global Citizenship Teaching Guide',
  'Comprehensive pedagogical approach for teaching global citizenship in Grade 8',
  'GLOBAL CITIZENSHIP - GRADE 8 UNIT GUIDE

UNIT OVERVIEW:
Students explore global issues, human rights, and sustainable development. They develop understanding of their role as global citizens and how local actions connect to global impact.

LEARNING PROGRESSION:
1. Understanding global interconnection
2. Learning about universal human rights
3. Exploring global challenges (poverty, environment, conflict)
4. Studying sustainable development goals
5. Taking action as global citizens

DEVELOPMENTAL CONSIDERATIONS:
Eighth graders can handle complex global issues but may feel overwhelmed. Balance awareness of problems with stories of hope and action. Empower rather than despair.

INSTRUCTIONAL STRATEGIES:

Global Connections Mapping:
Trace how daily life connects globally. Food, technology, clothing—all have global stories.

Human Rights Study:
Study Universal Declaration of Human Rights. Apply to current situations and scenarios.

Issue Investigation:
Deep dive into specific global issues. Research multiple perspectives and proposed solutions.

Solution-Focused:
Emphasize positive change and solutions. What are people doing? What can we do?

Action Projects:
Engage in meaningful action—local or global. Service learning, awareness campaigns, advocacy.

ASSESSMENT INDICATORS:
- Explains global interconnections
- Identifies human rights and their importance
- Analyzes global challenges from multiple perspectives
- Proposes and takes civic action

VOCABULARY TO DEVELOP:
global citizen, human rights, sustainable development, interconnection, poverty, inequality, environment, advocacy, NGO, action',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Global Citizenship' AND grade_level = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 9 SOCIAL STUDIES
-- ============================================================================

-- Contemporary World (9)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Social Studies'),
  (SELECT id FROM units WHERE name = 'Contemporary World' AND grade_level = 9),
  'Contemporary World Teaching Guide',
  'Comprehensive pedagogical approach for teaching contemporary world in Grade 9',
  'CONTEMPORARY WORLD - GRADE 9 UNIT GUIDE

UNIT OVERVIEW:
Students analyze contemporary world issues and events, developing critical thinking about current affairs. They learn to evaluate sources, consider multiple perspectives, and form evidence-based opinions.

LEARNING PROGRESSION:
1. Understanding current geopolitical landscape
2. Analyzing major contemporary issues
3. Evaluating media and information sources
4. Considering multiple perspectives on issues
5. Forming and defending evidence-based positions

DEVELOPMENTAL CONSIDERATIONS:
Ninth graders are developing strong opinions but need skills to evaluate information. Teach media literacy explicitly. Encourage civil discourse on controversial topics.

INSTRUCTIONAL STRATEGIES:

Current Events Analysis:
Regular analysis of news stories. Use structured protocols for evaluation and discussion.

Source Evaluation:
Teach explicit strategies for evaluating sources. Bias detection, fact-checking, lateral reading.

Perspective-Taking:
Examine issues from multiple viewpoints. Understand different stakeholder positions.

Structured Discussion:
Use protocols for discussing controversial issues. Socratic seminars, debates, fishbowl discussions.

Media Literacy:
Understand how media shapes perception. Analyze news, social media, and information flow.

ASSESSMENT INDICATORS:
- Analyzes current events using evidence
- Evaluates sources for reliability
- Considers multiple perspectives
- Forms and defends evidence-based positions

VOCABULARY TO DEVELOP:
contemporary, geopolitical, bias, perspective, media literacy, source, evidence, stakeholder, controversy, civil discourse',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Contemporary World' AND grade_level = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 10 SOCIAL STUDIES
-- ============================================================================

-- Civics and Economics (10)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Social Studies'),
  (SELECT id FROM units WHERE name = 'Civics and Economics' AND grade_level = 10),
  'Civics and Economics Teaching Guide',
  'Comprehensive pedagogical approach for teaching civics and economics in Grade 10',
  'CIVICS AND ECONOMICS - GRADE 10 UNIT GUIDE

UNIT OVERVIEW:
Students develop sophisticated understanding of political and economic systems. They explore different forms of government, economic theories, entrepreneurship, and their roles as engaged citizens in a complex world.

LEARNING PROGRESSION:
1. Comparing political systems and ideologies
2. Analyzing economic systems and theories
3. Understanding entrepreneurship and business
4. Exploring civic engagement and activism
5. Applying knowledge to real-world situations

DEVELOPMENTAL CONSIDERATIONS:
Tenth graders can handle abstract political and economic theories. Connect to real examples and current events. Encourage critical analysis rather than accepting any single perspective.

INSTRUCTIONAL STRATEGIES:

Comparative Analysis:
Compare different political and economic systems. Examine strengths, weaknesses, and real-world examples.

Economic Simulations:
Simulate market economies, command economies. Experience different systems'' trade-offs.

Entrepreneurship Projects:
Develop business plans or social enterprises. Apply economic concepts practically.

Civic Engagement:
Research and engage with real civic issues. Write letters, attend meetings, advocate.

Political Spectrum:
Understand different political viewpoints. Analyze positions on spectrum, understand complexity.

ASSESSMENT INDICATORS:
- Compares political and economic systems
- Analyzes economic decisions and trade-offs
- Develops viable business or social enterprise plans
- Engages meaningfully in civic life

VOCABULARY TO DEVELOP:
political system, democracy, economy, capitalism, socialism, entrepreneurship, market, regulation, civic engagement, ideology, policy',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Civics and Economics' AND grade_level = 10)
ON CONFLICT DO NOTHING;

-- Verification
SELECT 'Social Studies unit prompts seeded' as status, COUNT(*) as count
FROM prompt_templates
WHERE prompt_type = 'unit_global' AND subject_id = (SELECT id FROM subjects WHERE name = 'Social Studies');
