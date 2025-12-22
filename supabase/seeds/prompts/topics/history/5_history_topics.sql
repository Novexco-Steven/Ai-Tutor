-- Grade 5 History Topic Prompts
-- 17 comprehensive topic prompts for Grade 5 History
-- Topics organized by unit: Colonization to Revolution, Building a New Nation, Westward Expansion, Civil War and Reconstruction

-- =====================================================
-- UNIT: COLONIZATION TO REVOLUTION
-- =====================================================

-- Topic: European Exploration
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'European Exploration' AND grade_level_min = 5),
  'European Exploration (Grade 5) Topic Guide',
  'Teaching why Europeans explored and colonized the Americas',
  'EUROPEAN EXPLORATION - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand basic world geography and be able to locate Europe and the Americas on a map. They should have some knowledge of life in the 1400s-1500s and understand the concept of trade.

LEARNING OBJECTIVES:
- Identify key European explorers and their sponsoring nations
- Explain motivations for exploration (God, gold, glory)
- Analyze the impact of exploration on Native Americans and Europeans
- Trace routes of major explorations on a map
- Evaluate exploration from multiple perspectives

KEY CONCEPTS:
1) Several European nations (Spain, Portugal, France, England, Netherlands) explored the Americas
2) Motivations included trade routes, wealth, spreading Christianity, and national glory
3) Columbus''s 1492 voyage opened sustained European contact with the Americas
4) The Columbian Exchange transferred plants, animals, diseases, and ideas between hemispheres
5) Exploration had devastating consequences for Native Americans (disease, conquest, enslavement)

COMMON MISCONCEPTIONS:
- Viewing exploration as purely heroic discovery
- Thinking Columbus "discovered" an empty land
- Ignoring the devastating impact of European diseases
- Believing exploration was peaceful and welcomed

TEACHING SEQUENCE:
Establish context: Europe in the 1400s, desire for Asian trade routes. Study key explorers: Columbus, Vasco da Gama, Magellan, Hudson, de Soto. Map exploration routes. Analyze motivations: "God, gold, and glory." Study the Columbian Exchange: what moved between hemispheres. Examine the impact on Native Americans: population collapse from disease, conquest, forced labor. Consider multiple perspectives: European explorers, Native Americans, enslaved Africans. Discuss: was exploration "discovery" or invasion?

DIFFERENTIATION:
For struggling learners: Focus on 3-4 key explorers with clear routes. Use visual maps. Create exploration fact cards.
For advanced learners: Research the Columbian Exchange in depth. Study primary source accounts from explorers and Native Americans. Analyze the economic motivations behind exploration.

VOCABULARY:
Exploration, explorer, Columbus, Columbian Exchange, navigation, route, sponsor, colony, conquest, indigenous, Native American, disease, encounter, perspective

CONNECTION TO FUTURE LEARNING:
Understanding European exploration prepares students for studying colonization, the development of the slave trade, and the origins of cultural diversity in the Americas.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'European Exploration' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Topic: The Thirteen Colonies
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Thirteen Colonies' AND grade_level_min = 5),
  'The Thirteen Colonies (Grade 5) Topic Guide',
  'Comparing New England, Middle, and Southern colonies',
  'THE THIRTEEN COLONIES - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand European exploration and colonization. They should have basic knowledge of U.S. geography and understand concepts of economy, religion, and government.

LEARNING OBJECTIVES:
- Locate and name all thirteen British colonies
- Compare the three colonial regions: New England, Middle, and Southern
- Analyze how geography affected colonial development
- Describe colonial government, economy, and society
- Understand the role of slavery in the colonies

KEY CONCEPTS:
1) The thirteen colonies were grouped into three regions with distinct characteristics
2) New England: rocky soil, fishing, shipping, Puritan religion, town meetings
3) Middle Colonies: diverse farming, tolerance, trade, variety of nationalities
4) Southern Colonies: plantation agriculture, cash crops, slavery, rural society
5) Colonial government had some self-rule but was under British control

COMMON MISCONCEPTIONS:
- Thinking all colonists were English and Protestant
- Ignoring the role of slavery in all regions
- Viewing colonial society as similar to modern democracy
- Overlooking the diversity within regions

TEACHING SEQUENCE:
Map all thirteen colonies in three regional groupings. Study each region: geography, climate, economy, religion, government, society. Compare regions using charts or Venn diagrams. Examine daily life in each region: farmers, merchants, enslaved people, servants. Study colonial government: town meetings, colonial assemblies, royal governors. Address slavery: present in all regions, expanding in the South. Discuss social hierarchy: who had power? Whose voices were silenced? Connect regional differences to later conflicts.

DIFFERENTIATION:
For struggling learners: Focus on clear regional comparisons with pictures. Use graphic organizers. Study one colony from each region in depth.
For advanced learners: Research a specific colony''s founding and development. Study primary sources from colonial life. Analyze how colonial differences affected the Revolution.

VOCABULARY:
Colony, colonial, region, New England, Middle Colonies, Southern Colonies, Puritan, Quaker, plantation, cash crop, indentured servant, enslaved, assembly, governor

CONNECTION TO FUTURE LEARNING:
Understanding the thirteen colonies prepares students for studying the American Revolution, the Constitution, and how colonial regional differences continued to affect American history.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Thirteen Colonies' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Topic: Road to Revolution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Road to Revolution' AND grade_level_min = 5),
  'Road to Revolution (Grade 5) Topic Guide',
  'Analyzing events leading to the American Revolution',
  'ROAD TO REVOLUTION - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand colonial life and the relationship between colonies and Britain. They should have learned about the causes of the Revolution at a basic level in Grade 4.

LEARNING OBJECTIVES:
- Analyze key events that led to the American Revolution
- Explain how British policies angered colonists
- Describe colonial responses including protests and boycotts
- Evaluate different perspectives: Patriots, Loyalists, neutrals
- Create a detailed timeline of events leading to war

KEY CONCEPTS:
1) After the French and Indian War, Britain increased taxes and control over colonies
2) Key acts: Stamp Act (1765), Townshend Acts (1767), Tea Act (1773), Intolerable Acts (1774)
3) Colonial responses: boycotts, protests, Sons of Liberty, Committees of Correspondence
4) Key events: Boston Massacre, Boston Tea Party, First Continental Congress
5) Not all colonists supported revolution; Loyalists supported Britain

COMMON MISCONCEPTIONS:
- Thinking the Revolution happened suddenly
- Believing all colonists were Patriots
- Overlooking moderate positions and those who wanted compromise
- Seeing British actions as purely oppressive (they had economic reasons)

TEACHING SEQUENCE:
Build from Grade 4: review basic causes. Study the French and Indian War and its aftermath. Examine British perspective: they needed money, colonists should help pay. Study each major act and colonial response chronologically. Analyze protest methods: boycotts, pamphlets, demonstrations. Study key events in depth: Massacre, Tea Party, Intolerable Acts. Examine different viewpoints: Patriots wanted independence, Loyalists were loyal to Britain, many were unsure. Create a detailed timeline. Discuss: at what point was war inevitable?

DIFFERENTIATION:
For struggling learners: Use a visual timeline with pictures. Focus on cause-and-effect chains. Create protest vs. event matching activities.
For advanced learners: Read primary sources: speeches, pamphlets, letters. Debate from different perspectives. Research lesser-known figures in the resistance.

VOCABULARY:
Revolution, Stamp Act, Townshend Acts, Tea Act, Intolerable Acts, boycott, protest, Patriot, Loyalist, Sons of Liberty, Continental Congress, Boston Massacre, taxation, representation

CONNECTION TO FUTURE LEARNING:
Understanding the road to revolution prepares students for studying the Declaration of Independence, the Revolutionary War, and how resistance movements develop.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Road to Revolution' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Topic: The Declaration of Independence (Grade 5)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Declaration of Independence' AND grade_level_min = 5),
  'The Declaration of Independence (Grade 5) Topic Guide',
  'Studying the meaning and importance of the Declaration',
  'THE DECLARATION OF INDEPENDENCE (GRADE 5) - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand events leading to the Revolution and have basic knowledge of the Declaration from Grade 4. Understanding of Enlightenment ideas (briefly) is helpful.

LEARNING OBJECTIVES:
- Analyze the structure and key ideas of the Declaration
- Explain the philosophical principles underlying the Declaration
- Understand the process of declaring independence
- Evaluate the Declaration''s promises vs. the reality of the time
- Connect Declaration principles to ongoing American ideals

KEY CONCEPTS:
1) The Declaration has three parts: principles, grievances against the King, declaration of independence
2) Key principles from Enlightenment: natural rights, consent of the governed, social contract
3) "All men are created equal" with "unalienable rights" expressed radical ideas for the time
4) The Declaration listed specific grievances to justify breaking from Britain
5) The Declaration''s promises were not applied to all people initially (slavery, women''s rights)

COMMON MISCONCEPTIONS:
- Thinking the Declaration created a government (Constitution did that)
- Believing "all men" meant everyone at the time
- Not understanding the risk and courage required to sign
- Viewing the Declaration as immediately achieving its goals

TEACHING SEQUENCE:
Review context: war has begun, colonies need to explain why they''re fighting. Study the Continental Congress''s decision to declare independence. Analyze the Declaration''s structure: introduction, principles, grievances, conclusion. Read and discuss key passages: equality, natural rights, consent of governed. Discuss where these ideas came from (Locke, Enlightenment). Examine specific grievances against King George. Address contradictions: slavery, women, Native Americans. Discuss: who was included and excluded from these promises? Trace how the Declaration has inspired later movements.

DIFFERENTIATION:
For struggling learners: Focus on key phrases and their meanings. Use graphic organizers for the Declaration''s structure. Discuss principles in concrete, modern terms.
For advanced learners: Compare the Declaration to similar documents from other revolutions. Analyze the editing process (Jefferson''s draft vs. final). Research how the Declaration has been interpreted over time.

VOCABULARY:
Declaration, independence, self-evident, unalienable rights, liberty, pursuit of happiness, consent, governed, grievance, tyrant, Enlightenment, natural rights, social contract

CONNECTION TO FUTURE LEARNING:
Understanding the Declaration prepares students for studying the Constitution, Bill of Rights, and how American ideals have been extended over time through civil rights movements.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Declaration of Independence' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Topic: Revolutionary War
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Revolutionary War' AND grade_level_min = 5),
  'Revolutionary War (Grade 5) Topic Guide',
  'Teaching about key battles and people of the Revolution',
  'REVOLUTIONARY WAR - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand causes of the Revolution and the Declaration of Independence. Basic knowledge of key battles from Grade 4 provides helpful foundation.

LEARNING OBJECTIVES:
- Describe the course of the Revolutionary War
- Identify key battles and their significance
- Analyze the roles of diverse participants: soldiers, women, African Americans, Native Americans
- Explain how foreign aid helped the American cause
- Evaluate challenges and hardships of the war

KEY CONCEPTS:
1) The war lasted from 1775 to 1783, with shifting fortunes for both sides
2) Key turning point: Saratoga (1777) led to French alliance
3) Valley Forge symbolized American perseverance through hardship
4) Final victory at Yorktown (1781) with French help led to British surrender
5) Many groups participated: regular soldiers, militia, women, free and enslaved African Americans

COMMON MISCONCEPTIONS:
- Thinking America easily defeated Britain
- Overlooking French, Spanish, and other foreign support
- Ignoring contributions of women and African Americans
- Viewing the war as only military battles (it was also political and economic)

TEACHING SEQUENCE:
Review the Declaration and war''s beginning. Study the war chronologically with maps showing territory and key battles. Analyze challenges: small army, shortages, inexperience vs. British advantages. Study the turning point at Saratoga and French alliance. Examine Valley Forge: hardship and perseverance. Learn about diverse participants: women''s roles, African American soldiers, Native American involvement. Study the final Yorktown campaign. Discuss the Treaty of Paris (1783). Reflect: what made American victory possible?

DIFFERENTIATION:
For struggling learners: Focus on key events with clear significance. Use maps and visual timelines. Create battle cards with key facts.
For advanced learners: Research a lesser-known aspect of the war (naval battles, Southern campaign, spies). Study primary sources from soldiers. Analyze military strategy.

VOCABULARY:
Revolution, Continental Army, British, militia, Saratoga, Valley Forge, Yorktown, alliance, France, Treaty of Paris, surrender, strategy, perseverance

CONNECTION TO FUTURE LEARNING:
Understanding the Revolutionary War prepares students for studying the creation of the Constitution and understanding how the new nation faced challenges of governing after achieving independence.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Revolutionary War' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: BUILDING A NEW NATION
-- =====================================================

-- Topic: The Constitution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Constitution' AND grade_level_min = 5),
  'The Constitution (Grade 5) Topic Guide',
  'Teaching about the creation and structure of the Constitution',
  'THE CONSTITUTION - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand the American Revolution and why the colonists wanted self-government. They should have learned about the three branches of government and basic civic concepts.

LEARNING OBJECTIVES:
- Explain why the Constitution was needed after the Revolution
- Describe the Constitutional Convention and key debates
- Analyze the structure of the Constitution
- Understand key principles: federalism, separation of powers, popular sovereignty
- Recognize the Constitution as a living document through amendments

KEY CONCEPTS:
1) The Articles of Confederation were too weak; a stronger government was needed
2) The Constitutional Convention (1787) in Philadelphia created a new framework
3) Key debates: representation (Great Compromise), slavery (Three-Fifths Compromise)
4) The Constitution establishes federal government structure, powers, and limits
5) The amendment process allows the Constitution to change over time

COMMON MISCONCEPTIONS:
- Thinking the Constitution was everyone''s first attempt (Articles came first)
- Believing the Founders all agreed easily
- Not understanding that the Constitution allowed slavery to continue
- Viewing the Constitution as unchangeable

TEACHING SEQUENCE:
Study the problems with the Articles of Confederation (weak central government). Introduce the Constitutional Convention: delegates, setting, goals. Examine key debates: large vs. small states, North vs. South on slavery. Study the compromises reached (Great Compromise, Three-Fifths Compromise). Analyze the Constitution''s structure: Preamble, articles, amendments. Discuss key principles: federalism, separation of powers, checks and balances. Address the Constitution''s treatment of slavery. Study the ratification debate (Federalists vs. Anti-Federalists). Introduce the amendment process.

DIFFERENTIATION:
For struggling learners: Focus on basic structure and key principles. Use visual diagrams of government organization. Create Constitution fact sheets.
For advanced learners: Read portions of the Constitution and analyze language. Study the Federalist Papers arguments. Research specific Founders'' positions.

VOCABULARY:
Constitution, Constitutional Convention, Articles of Confederation, delegate, compromise, Great Compromise, federalism, republic, ratification, amendment, Preamble, article

CONNECTION TO FUTURE LEARNING:
Understanding the Constitution prepares students for studying the Bill of Rights, federalism, and ongoing constitutional debates throughout American history.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Constitution' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Topic: The Bill of Rights
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Bill of Rights' AND grade_level_min = 5),
  'The Bill of Rights (Grade 5) Topic Guide',
  'Teaching about the first ten amendments',
  'THE BILL OF RIGHTS - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand the Constitution and why it was created. They should know about the ratification debate and the concerns of Anti-Federalists.

LEARNING OBJECTIVES:
- Explain why the Bill of Rights was added to the Constitution
- Identify key rights protected by each of the first ten amendments
- Analyze how the Bill of Rights protects individual liberties
- Apply Bill of Rights concepts to real-life scenarios
- Understand that rights have limits and responsibilities

KEY CONCEPTS:
1) The Bill of Rights is the first ten amendments to the Constitution
2) Anti-Federalists demanded a bill of rights before ratifying the Constitution
3) These amendments protect individual liberties from government power
4) Key rights include: speech, religion, press, assembly, fair trial, against unreasonable search
5) Rights have limits; your rights cannot harm others'' rights

COMMON MISCONCEPTIONS:
- Thinking the Bill of Rights was part of the original Constitution
- Believing rights are unlimited with no restrictions
- Not understanding that the Bill of Rights originally only limited federal government
- Confusing different amendments'' protections

TEACHING SEQUENCE:
Review the ratification debate: why did Anti-Federalists demand a bill of rights? Study each amendment: First (speech, religion, press, assembly, petition), Second (arms), Fourth (search and seizure), Fifth through Eighth (criminal justice), and Ninth and Tenth (reserved rights and powers). Use scenarios to apply each right. Discuss limits: can you say anything? Do anywhere? Own anything? Study how courts interpret the Bill of Rights. Create a Bill of Rights illustrated guide. Discuss: why do we need protected rights?

DIFFERENTIATION:
For struggling learners: Focus on the First Amendment and key protections. Use scenarios with clear applications. Create rights cards with pictures.
For advanced learners: Study specific Supreme Court cases interpreting the Bill of Rights. Analyze debates about rights in current events. Compare to rights documents from other countries.

VOCABULARY:
Bill of Rights, amendment, freedom, liberty, speech, religion, press, assembly, petition, search, seizure, due process, trial, jury, rights, protected

CONNECTION TO FUTURE LEARNING:
Understanding the Bill of Rights prepares students for studying civil liberties, civil rights movements, and ongoing debates about constitutional rights.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Bill of Rights' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Topic: Three Branches (Grade 5)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Three Branches' AND grade_level_min = 5),
  'Three Branches (Grade 5) Topic Guide',
  'Understanding legislative, executive, and judicial branches',
  'THREE BRANCHES (GRADE 5) - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have learned about the three branches in earlier grades and understand why the Constitution was created. They should know about separation of powers as a concept.

LEARNING OBJECTIVES:
- Describe the structure and powers of each branch in detail
- Explain how the Founders designed each branch''s role
- Identify key positions and institutions in each branch
- Analyze how the branches work together on legislation
- Apply branch knowledge to current government actions

KEY CONCEPTS:
1) Legislative Branch (Congress): makes laws; Senate (100) and House of Representatives (435)
2) Executive Branch: enforces laws; President, Vice President, Cabinet, executive agencies
3) Judicial Branch: interprets laws; Supreme Court (9 justices), federal courts
4) Each branch has specific powers granted by the Constitution
5) The Founders designed separate branches to prevent tyranny

COMMON MISCONCEPTIONS:
- Thinking the President makes laws
- Not understanding the relationship between branches
- Confusing state and federal government structures
- Believing one branch is most powerful

TEACHING SEQUENCE:
Review the concept of separation of powers from the Constitution. Study the Legislative Branch in detail: how Congress works, how a bill becomes law, powers of Congress. Study the Executive Branch: President''s roles, Cabinet, executive agencies. Study the Judicial Branch: Supreme Court, federal court system, judicial review. Trace the path of a law from idea through all three branches. Discuss current government actions through the lens of branches. Create branch diagrams with key positions and powers.

DIFFERENTIATION:
For struggling learners: Focus on key positions and main function of each branch. Use visual diagrams. Create branch matching activities.
For advanced learners: Study how a specific current law involves all three branches. Research the structure of one branch in depth. Analyze founding debates about branch powers.

VOCABULARY:
Legislative, executive, judicial, Congress, Senate, House of Representatives, President, Cabinet, Supreme Court, federal, law, enforce, interpret, separation of powers

CONNECTION TO FUTURE LEARNING:
Understanding the three branches prepares students for studying checks and balances, federalism, and how the American government functions in practice.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Three Branches' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Topic: Checks and Balances
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Checks and Balances' AND grade_level_min = 5),
  'Checks and Balances (Grade 5) Topic Guide',
  'Analyzing how branches limit each other''s power',
  'CHECKS AND BALANCES - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand the three branches of government in detail. They should know why the Founders feared concentrated power and understand the Constitution''s structure.

LEARNING OBJECTIVES:
- Explain what checks and balances means and why it exists
- Identify specific ways each branch checks the others
- Analyze how checks and balances prevent tyranny
- Apply checks and balances to real-world examples
- Evaluate the system''s strengths and challenges

KEY CONCEPTS:
1) Checks and balances means each branch can limit the power of the others
2) Executive checks: President can veto laws, appoints judges
3) Legislative checks: Congress can override veto, impeach, confirm appointments, control funding
4) Judicial checks: Supreme Court can declare laws unconstitutional (judicial review)
5) The system creates balance but also can cause gridlock

COMMON MISCONCEPTIONS:
- Thinking branches operate completely independently
- Not understanding that checks can cause conflict and delay
- Believing the Supreme Court has always had judicial review power (Marbury v. Madison)
- Seeing checks and balances as only limiting, not balancing

TEACHING SEQUENCE:
Review the three branches and their powers. Discuss the Founders'' fear of tyranny (remember King George). Introduce checks and balances as intentional design. Create a diagram showing checks each branch has on others. Study specific examples: Presidential veto, Congressional override, Supreme Court ruling. Discuss real cases where checks were used. Analyze: what happens when branches disagree? Role-play a checks and balances scenario. Discuss benefits (prevents tyranny) and challenges (gridlock, slow action).

DIFFERENTIATION:
For struggling learners: Focus on 3-4 key checks with clear examples. Use visual diagrams with arrows. Create scenarios for role-play.
For advanced learners: Study Marbury v. Madison and the establishment of judicial review. Research a recent example of checks in action. Analyze debates about whether the system works well.

VOCABULARY:
Checks and balances, veto, override, impeach, appoint, confirm, judicial review, unconstitutional, tyranny, balance, limit, power, branch

CONNECTION TO FUTURE LEARNING:
Understanding checks and balances prepares students for studying Constitutional conflicts, political debates, and how the American system handles disagreements between branches.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Checks and Balances' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: WESTWARD EXPANSION
-- =====================================================

-- Topic: Manifest Destiny
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Manifest Destiny' AND grade_level_min = 5),
  'Manifest Destiny (Grade 5) Topic Guide',
  'Understanding the belief in expanding across the continent',
  'MANIFEST DESTINY - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand the new nation after the Revolution and have basic knowledge of U.S. geography. Understanding of Native American presence west of the original colonies is important.

LEARNING OBJECTIVES:
- Define Manifest Destiny and explain its origins
- Analyze arguments for and against westward expansion
- Understand how Manifest Destiny was used to justify expansion
- Evaluate the impact of this belief on different groups
- Recognize Manifest Destiny as a controversial ideology

KEY CONCEPTS:
1) Manifest Destiny was the belief that the U.S. was destined to expand across the continent
2) The term was coined in 1845, but the idea existed earlier
3) Supporters believed expansion was God''s will and would spread democracy
4) Manifest Destiny was used to justify taking lands from Native Americans and Mexico
5) This ideology had devastating consequences for Native Americans and affected other nations

COMMON MISCONCEPTIONS:
- Viewing Manifest Destiny as an inevitable or natural process
- Not recognizing it as an ideology used to justify conquest
- Ignoring the people already living in these "empty" lands
- Failing to see the connection between this belief and conflict

TEACHING SEQUENCE:
Define Manifest Destiny and its meaning. Study the famous painting "American Progress" as a visual representation. Analyze arguments supporters made: religious mission, spreading democracy, national greatness. Discuss who benefited from expansion and who was harmed. Study how Manifest Destiny was used in political debates. Examine its role in policies toward Native Americans and the Mexican-American War. Evaluate: was westward expansion inevitable? Was Manifest Destiny a justification for conquest? Compare to similar ideas in other countries'' histories.

DIFFERENTIATION:
For struggling learners: Use the "American Progress" painting for visual analysis. Focus on basic definition and multiple perspectives. Create simple pro/con charts.
For advanced learners: Analyze primary source arguments for Manifest Destiny. Study opposition voices. Compare to other nations'' expansionist ideologies.

VOCABULARY:
Manifest Destiny, expansion, destined, continent, belief, ideology, justify, progress, civilization, frontier, conquest, territory

CONNECTION TO FUTURE LEARNING:
Understanding Manifest Destiny prepares students for studying the Louisiana Purchase, Oregon Trail, Mexican-American War, and the impact of expansion on Native Americans.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Manifest Destiny' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Topic: Louisiana Purchase
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Louisiana Purchase' AND grade_level_min = 5),
  'Louisiana Purchase (Grade 5) Topic Guide',
  'Teaching how the US doubled in size',
  'LOUISIANA PURCHASE - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand the early U.S. after the Constitution and have basic map skills. Knowledge of France and Napoleon helps provide context.

LEARNING OBJECTIVES:
- Describe the Louisiana Purchase and its significance
- Explain why France sold the territory and why the U.S. bought it
- Analyze the Constitutional debate about the purchase
- Trace the Lewis and Clark expedition and its purposes
- Evaluate the impact of the purchase on the nation and Native Americans

KEY CONCEPTS:
1) In 1803, the U.S. bought Louisiana Territory from France for $15 million
2) The purchase doubled the size of the United States
3) Jefferson had Constitutional concerns but proceeded for national interest
4) Lewis and Clark explored the new territory (1804-1806)
5) The purchase affected Native Americans whose lands were now claimed by the U.S.

COMMON MISCONCEPTIONS:
- Thinking the purchase included only present-day Louisiana
- Not understanding the Constitutional controversy
- Ignoring Native Americans who already lived there
- Viewing the purchase as just a simple land deal

TEACHING SEQUENCE:
Set the context: the young nation, Napoleon in France, importance of New Orleans. Explain why the U.S. wanted New Orleans and why France wanted to sell. Study the terms of the purchase and the territory gained. Map the Louisiana Territory over current states. Discuss Jefferson''s Constitutional dilemma: did he have the power to buy land? Study the Lewis and Clark expedition: purposes, route, findings, Sacagawea. Examine the impact on Native Americans in the territory. Evaluate: was the Louisiana Purchase good for the nation? For everyone?

DIFFERENTIATION:
For struggling learners: Focus on the territory gained using map overlays. Use key facts about Lewis and Clark. Create a Louisiana Purchase fact sheet.
For advanced learners: Study Jefferson''s correspondence about Constitutional concerns. Research the Lewis and Clark journals. Analyze the Native American perspective on the purchase.

VOCABULARY:
Louisiana Purchase, territory, Napoleon, France, Jefferson, double, Constitution, Lewis and Clark, expedition, explore, Sacagawea, Mississippi River

CONNECTION TO FUTURE LEARNING:
Understanding the Louisiana Purchase prepares students for studying further westward expansion, the development of the frontier, and conflicts over western territories.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Louisiana Purchase' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Topic: Pioneer Life
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Pioneer Life' AND grade_level_min = 5),
  'Pioneer Life (Grade 5) Topic Guide',
  'Teaching about pioneers and westward trails',
  'PIONEER LIFE - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand Manifest Destiny and the Louisiana Purchase. They should have learned about pioneers at a basic level in earlier grades and understand migration concepts.

LEARNING OBJECTIVES:
- Describe the experience of pioneers traveling west
- Identify major trails and routes westward
- Analyze challenges pioneers faced on the journey and in settling
- Understand the diverse motivations for migration
- Evaluate pioneer experiences from multiple perspectives

KEY CONCEPTS:
1) Pioneers traveled on trails like the Oregon Trail, California Trail, and Mormon Trail
2) The journey west was extremely difficult: disease, weather, terrain, months of travel
3) People migrated for various reasons: land, gold, religious freedom, opportunity
4) Pioneer life after arrival involved building communities from scratch
5) Westward migration displaced Native Americans and changed the landscape

COMMON MISCONCEPTIONS:
- Romanticizing pioneer life (it was extremely hard and dangerous)
- Thinking pioneers were all the same (diverse backgrounds and motivations)
- Ignoring the impact on Native Americans
- Believing pioneer stories without considering whose perspectives are told

TEACHING SEQUENCE:
Map major westward trails. Discuss why people left their homes for the dangerous journey. Study the preparations: what pioneers packed in covered wagons. Examine the journey: daily life, dangers (disease, weather, rivers, mountains), timeline. Explore different groups: families, gold seekers, Mormons, immigrants. Study pioneer life after arrival: building homes, farming, creating communities. Address the impact on Native Americans. Use primary sources: diaries, letters, accounts. Consider: whose stories are told? Whose are missing?

DIFFERENTIATION:
For struggling learners: Focus on the Oregon Trail with visual maps. Study pioneer daily life with pictures. Create a "packing list" activity.
For advanced learners: Research primary source pioneer diaries. Compare different groups'' experiences. Analyze the environmental impact of westward migration.

VOCABULARY:
Pioneer, wagon train, Oregon Trail, California Trail, frontier, homestead, migrate, settlement, prairie, hardship, journey, trail

CONNECTION TO FUTURE LEARNING:
Understanding pioneer life prepares students for studying the development of the West, the Gold Rush, and conflicts over western lands including the impact on Native Americans.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pioneer Life' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Topic: Impact on Native Americans
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Impact on Native Americans' AND grade_level_min = 5),
  'Impact on Native Americans (Grade 5) Topic Guide',
  'Analyzing the effects of expansion on indigenous peoples',
  'IMPACT ON NATIVE AMERICANS - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand westward expansion, Manifest Destiny, and pioneer migration. They should have learned about Native Americans in earlier grades and understand that Native peoples lived throughout North America.

LEARNING OBJECTIVES:
- Analyze how westward expansion affected Native American nations
- Describe specific policies like Indian Removal and reservations
- Examine Native American resistance to expansion
- Evaluate multiple perspectives on westward expansion
- Recognize the lasting impacts of these events

KEY CONCEPTS:
1) Westward expansion displaced Native Americans from their ancestral lands
2) The Indian Removal Act (1830) forced southeastern nations on the Trail of Tears
3) Treaties were frequently broken as Americans wanted more land
4) The reservation system confined Native Americans to limited territories
5) Native Americans resisted through diplomacy, war, and cultural preservation

COMMON MISCONCEPTIONS:
- Viewing Native Americans as passive victims rather than people who resisted
- Thinking Native Americans simply disappeared
- Not understanding that different nations had different experiences
- Believing that expansion was unavoidable and justified

TEACHING SEQUENCE:
Review Native American presence across the continent before expansion. Study the Indian Removal Act and the Trail of Tears. Map the displacement of nations from their homelands. Examine broken treaties and the pattern of land loss. Study the reservation system and its impacts. Learn about Native American resistance: diplomacy, battles, cultural preservation. Include Native American perspectives and voices. Discuss the lasting impacts that continue today. Reflect: how should we understand this history?

DIFFERENTIATION:
For struggling learners: Focus on the Trail of Tears as a specific example. Use maps showing land loss over time. Create timeline of key events.
For advanced learners: Research a specific nation''s experience of displacement. Study primary sources from Native American leaders. Analyze how this history affects Native Americans today.

VOCABULARY:
Indian Removal Act, Trail of Tears, reservation, treaty, displacement, resistance, sovereign, nation, territory, forced, ancestral, policy

CONNECTION TO FUTURE LEARNING:
Understanding the impact on Native Americans prepares students for studying ongoing Native American history, treaty rights, and contemporary Native American issues.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Impact on Native Americans' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: CIVIL WAR AND RECONSTRUCTION
-- =====================================================

-- Topic: Causes of the Civil War
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Causes of the Civil War' AND grade_level_min = 5),
  'Causes of the Civil War (Grade 5) Topic Guide',
  'Understanding slavery, states'' rights, and sectional differences',
  'CAUSES OF THE CIVIL WAR - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand the colonial and early national periods, including the compromises over slavery in the Constitution. Knowledge of U.S. geography and the differences between North and South is essential.

LEARNING OBJECTIVES:
- Identify slavery as the central cause of the Civil War
- Analyze how economic and cultural differences divided the nation
- Explain key events that increased tensions: Missouri Compromise, Compromise of 1850, Kansas-Nebraska Act
- Understand the debate over slavery in new territories
- Evaluate different perspectives on the coming war

KEY CONCEPTS:
1) Slavery was the fundamental cause of the Civil War, though other factors contributed
2) The North and South developed different economies: industrial vs. agricultural (slave-based)
3) Disputes over extending slavery to new territories created political crises
4) Key events escalated tensions: Missouri Compromise, Fugitive Slave Act, Kansas-Nebraska Act, Dred Scott
5) States'' rights arguments were used primarily to defend slavery

COMMON MISCONCEPTIONS:
- Thinking the war was only about states'' rights (not slavery)
- Believing both sides were equally right
- Not understanding slavery''s central role in all causes
- Viewing the war as inevitable from the nation''s founding

TEACHING SEQUENCE:
Establish the differences between North and South by 1850. Study slavery: its growth, economics, and the human experience. Examine the compromises: Missouri Compromise, Compromise of 1850. Study how expansion raised the slavery question repeatedly. Analyze key events: Fugitive Slave Act, Uncle Tom''s Cabin, Kansas-Nebraska Act, Dred Scott, John Brown. Discuss the 1860 election and Southern secession. Address "states'' rights" arguments honestly: rights to do what? Create a timeline of escalating tensions.

DIFFERENTIATION:
For struggling learners: Focus on key events with clear cause-and-effect. Use maps showing free and slave states. Create a simplified timeline.
For advanced learners: Analyze primary sources from the period. Study different historiographical interpretations. Research a specific event in depth.

VOCABULARY:
Slavery, abolition, abolitionist, secession, states'' rights, Confederacy, Union, compromise, territory, free state, slave state, tension, sectionalism

CONNECTION TO FUTURE LEARNING:
Understanding Civil War causes prepares students for studying the war itself, Lincoln''s leadership, and Reconstruction''s challenges.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Causes of the Civil War' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Topic: Key Battles and Leaders
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Key Battles and Leaders' AND grade_level_min = 5),
  'Key Battles and Leaders (Grade 5) Topic Guide',
  'Studying Gettysburg, Sherman''s March, and military leaders',
  'KEY BATTLES AND LEADERS - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand the causes of the Civil War and why the nation divided. Basic map skills and understanding of war concepts are needed.

LEARNING OBJECTIVES:
- Describe key battles and their significance in the Civil War
- Identify major military leaders on both sides
- Analyze how the war progressed from initial Confederate successes to Union victory
- Understand the human cost of the war
- Evaluate the strategies of both sides

KEY CONCEPTS:
1) Major battles: Fort Sumter (start), Bull Run, Antietam, Gettysburg (turning point), Vicksburg, Sherman''s March, Appomattox (end)
2) Key Union leaders: Lincoln, Grant, Sherman; Confederate leaders: Jefferson Davis, Lee, Jackson
3) The war evolved from limited conflict to total war affecting civilians
4) The Civil War was the deadliest in American history (over 600,000 deaths)
5) Technology (rifles, railroads, telegraphs) changed warfare

COMMON MISCONCEPTIONS:
- Romanticizing war or leaders without acknowledging costs
- Thinking the North easily won
- Not understanding the scale of death and destruction
- Viewing battles in isolation without understanding the larger war

TEACHING SEQUENCE:
Map the course of the war chronologically. Study early battles and initial Confederate advantages. Analyze the turning point at Gettysburg and Vicksburg (July 1863). Examine Sherman''s March and total war strategy. Study key leaders and their strategies. Discuss the human cost: soldiers, civilians, destroyed communities. Use primary sources: letters, photographs, diaries. Examine the final campaigns and Lee''s surrender at Appomattox. Reflect on the war''s meaning and cost.

DIFFERENTIATION:
For struggling learners: Focus on 4-5 key battles with clear significance. Use maps showing battle locations. Create leader profiles with key facts.
For advanced learners: Study primary sources from soldiers and civilians. Research a specific battle in depth. Analyze military strategies.

VOCABULARY:
Battle, Gettysburg, Antietam, Vicksburg, Appomattox, Grant, Lee, Sherman, strategy, tactics, turning point, surrender, casualty, total war

CONNECTION TO FUTURE LEARNING:
Understanding Civil War battles prepares students for studying Lincoln''s leadership, the Emancipation Proclamation, and Reconstruction.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Key Battles and Leaders' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Topic: Abraham Lincoln (Grade 5)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Abraham Lincoln' AND grade_level_min = 5),
  'Abraham Lincoln (Grade 5) Topic Guide',
  'Teaching about Lincoln and the Emancipation Proclamation',
  'ABRAHAM LINCOLN (GRADE 5) - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand the causes of the Civil War and know Lincoln from earlier grades. Understanding of the presidency and war leadership is helpful.

LEARNING OBJECTIVES:
- Describe Lincoln''s background and rise to the presidency
- Analyze Lincoln''s views on slavery and how they evolved
- Explain the Emancipation Proclamation and its significance
- Evaluate Lincoln''s leadership during the war
- Understand Lincoln''s legacy and assassination

KEY CONCEPTS:
1) Lincoln rose from poverty to the presidency through hard work and skill
2) Lincoln opposed slavery''s expansion but initially prioritized preserving the Union
3) The Emancipation Proclamation (1863) declared slaves in Confederate states free
4) Lincoln evolved toward supporting full abolition and Black citizenship
5) Lincoln was assassinated by John Wilkes Booth in April 1865, just after the war ended

COMMON MISCONCEPTIONS:
- Thinking Lincoln was always an abolitionist (his views evolved)
- Believing the Emancipation Proclamation freed all slaves (it didn''t)
- Viewing Lincoln as perfect without understanding his complexities
- Not recognizing the political realities he navigated

TEACHING SEQUENCE:
Review Lincoln''s early life from earlier grades. Study his political career and rise to presidency. Analyze his views on slavery: what did he believe? How did his views change? Examine the Emancipation Proclamation: what it did, what it didn''t do, why it mattered. Study the Gettysburg Address and its meaning. Discuss Lincoln''s wartime leadership and challenges. Learn about the 13th Amendment and Lincoln''s support. Study his assassination and its aftermath. Evaluate Lincoln''s legacy: how is he remembered?

DIFFERENTIATION:
For struggling learners: Focus on key events: election, Emancipation Proclamation, Gettysburg Address, assassination. Use primary sources with support.
For advanced learners: Analyze Lincoln''s speeches and letters. Study the evolution of his views on race. Research debates about Lincoln''s legacy.

VOCABULARY:
Lincoln, Emancipation Proclamation, abolition, Gettysburg Address, 13th Amendment, assassinate, preserve, Union, free, liberty, legacy

CONNECTION TO FUTURE LEARNING:
Understanding Lincoln prepares students for studying Reconstruction, the ongoing struggle for civil rights, and Lincoln''s continuing significance in American memory.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Abraham Lincoln' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Topic: Reconstruction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Reconstruction' AND grade_level_min = 5),
  'Reconstruction (Grade 5) Topic Guide',
  'Analyzing the post-war period and its challenges',
  'RECONSTRUCTION - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand the Civil War, its causes, and its outcome. They should know about the Emancipation Proclamation and Lincoln''s assassination.

LEARNING OBJECTIVES:
- Define Reconstruction and its goals
- Describe the challenges of rebuilding the nation after the war
- Analyze the experiences of formerly enslaved people during Reconstruction
- Understand the 13th, 14th, and 15th Amendments
- Evaluate the successes and failures of Reconstruction

KEY CONCEPTS:
1) Reconstruction (1865-1877) was the period of rebuilding after the Civil War
2) Key questions: how to reunite? What rights for freed people? Who controls the South?
3) Constitutional amendments: 13th (ended slavery), 14th (citizenship), 15th (voting rights)
4) Freed people made gains: voting, education, political office
5) Reconstruction ended with withdrawal of federal troops; Jim Crow laws followed

COMMON MISCONCEPTIONS:
- Thinking Reconstruction was just physical rebuilding
- Not understanding the political and social dimensions
- Believing progress continued smoothly after Reconstruction
- Ignoring the violence used to suppress Black political participation

TEACHING SEQUENCE:
Set the context: war is over, 4 million people are free, South is devastated. Study the key questions Reconstruction had to answer. Examine the Constitutional amendments and their significance. Study the experience of freed people: hope, gains in education and politics, challenges. Learn about Black political leaders during Reconstruction. Analyze opposition: Ku Klux Klan, violence, resistance to change. Study the end of Reconstruction (1877) and its consequences. Connect to Jim Crow and the long struggle for civil rights that followed.

DIFFERENTIATION:
For struggling learners: Focus on the amendments and key questions. Use before/after comparisons. Create simple timelines.
For advanced learners: Study primary sources from Reconstruction. Research specific Black leaders of the era. Analyze why Reconstruction ended and its lasting effects.

VOCABULARY:
Reconstruction, amendment, 13th Amendment, 14th Amendment, 15th Amendment, citizenship, voting rights, freedmen, Jim Crow, segregation, civil rights

CONNECTION TO FUTURE LEARNING:
Understanding Reconstruction prepares students for studying Jim Crow, the Civil Rights Movement, and ongoing struggles for racial equality in America.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reconstruction' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;
