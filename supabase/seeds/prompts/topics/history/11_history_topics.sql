-- ============================================================================
-- GRADE 11 HISTORY TOPIC PROMPTS (U.S. History)
-- Comprehensive teaching guides for all Grade 11 History topics
-- 16 topics across 4 units: Early America to Civil War, Reconstruction to WWI,
-- 1920s to WWII, Cold War to Present
-- ============================================================================

-- ============================================================================
-- UNIT 1: EARLY AMERICA TO CIVIL WAR (4 topics)
-- ============================================================================

-- Topic 11.1.1: Constitutional Era
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Constitutional Era' AND grade_level_min = 11),
  'Constitutional Era (Grade 11) Topic Guide',
  'Teaching creating and ratifying the Constitution',
  'CONSTITUTIONAL ERA - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have foundational knowledge of the American Revolution and Articles of Confederation from middle school. Understanding of Enlightenment political philosophy (Locke, Montesquieu, Rousseau) provides essential context. Familiarity with concepts of federalism and separation of powers is helpful.

LEARNING OBJECTIVES:
- Analyze the weaknesses of the Articles of Confederation that led to the Constitutional Convention
- Evaluate the major debates and compromises at the Constitutional Convention
- Compare Federalist and Anti-Federalist arguments about the Constitution
- Understand the ratification process and the addition of the Bill of Rights
- Analyze the Constitution''s major principles: federalism, separation of powers, checks and balances
- Connect constitutional debates to ongoing issues in American governance

KEY CONCEPTS:
1) Articles'' Failures: Inability to tax, regulate commerce, or enforce laws; Shays'' Rebellion as catalyst for reform
2) Convention Debates: Large versus small states (Virginia vs. New Jersey Plans); slavery (Three-Fifths Compromise, slave trade); representation
3) Constitutional Principles: Federalism, separation of powers, checks and balances, enumerated and implied powers
4) Ratification: Federalist Papers defending the Constitution; Anti-Federalist concerns about federal power and rights
5) Bill of Rights: First ten amendments protecting individual liberties; compromise enabling ratification

COMMON MISCONCEPTIONS:
- Believing the founders agreed on most issues when debates were contentious
- Thinking the Constitution was inevitable rather than a contingent achievement
- Assuming the founders were entirely selfless when they had interests to protect
- Believing "original intent" is always clear when founders disagreed
- Thinking the Constitution was fully democratic when it included significant exclusions

TEACHING SEQUENCE:
Begin with the crisis of the 1780s: economic problems, interstate conflicts, Shays'' Rebellion. Analyze the call for the Constitutional Convention and its initial goals. Study the Virginia and New Jersey Plans and the Great Compromise. Examine debates over slavery: three-fifths clause, slave trade, fugitive slaves. Analyze the structure of government: Congress, Presidency, Judiciary. Study separation of powers and checks and balances. Examine the ratification debate: Federalist and Anti-Federalist arguments. Analyze key Federalist Papers (10, 51). Study the addition of the Bill of Rights. Connect constitutional principles to current issues.

DIFFERENTIATION:
For struggling learners: Use graphic organizers for comparisons, provide excerpts from key documents with guided questions, focus on major principles with concrete examples, and connect to current events.
For advanced learners: Analyze Federalist and Anti-Federalist writings in depth, research specific delegates'' positions, examine historiographical debates about the Constitution, and investigate how constitutional interpretation has changed.

VOCABULARY:
Articles of Confederation, Constitutional Convention, Virginia Plan, New Jersey Plan, Great Compromise, Three-Fifths Compromise, federalism, separation of powers, checks and balances, ratification, Federalist, Anti-Federalist, Bill of Rights, amendment

CONNECTION TO FUTURE LEARNING:
Constitutional principles shape all subsequent U.S. history. Debates about federal power, states'' rights, and individual liberty continue. Understanding original structure helps analyze constitutional evolution through amendments and court decisions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Constitutional Era' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic 11.1.2: Manifest Destiny
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Manifest Destiny' AND grade_level_min = 11),
  'Manifest Destiny (Grade 11) Topic Guide',
  'Teaching expansion and the Mexican-American War',
  'MANIFEST DESTINY - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should understand the early republic''s territorial boundaries and the Louisiana Purchase. Knowledge of Native American nations and their presence in western territories is essential. Understanding of slavery''s expansion and sectional tensions provides important context.

LEARNING OBJECTIVES:
- Define Manifest Destiny and analyze its ideological foundations and appeal
- Trace the major territorial acquisitions expanding U.S. boundaries
- Evaluate the Mexican-American War: causes, conduct, and consequences
- Analyze the impact of expansion on Native Americans, Mexicans, and other groups
- Connect territorial expansion to the intensification of the slavery debate
- Assess multiple perspectives on westward expansion

KEY CONCEPTS:
1) Manifest Destiny Ideology: Belief in divinely ordained expansion; American exceptionalism; racial hierarchies justifying displacement
2) Territorial Acquisitions: Louisiana Purchase, Florida, Texas annexation, Oregon, Mexican Cession, Gadsden Purchase
3) Mexican-American War: Texas annexation and border disputes; Polk''s war; Treaty of Guadalupe Hidalgo; territorial gains
4) Impact on Peoples: Native American removal and displacement; Mexican-Americans under new sovereignty; immigrant experiences
5) Slavery and Expansion: Each territorial gain intensified debate; Missouri Compromise, Wilmot Proviso, Compromise of 1850

COMMON MISCONCEPTIONS:
- Believing the West was empty wilderness rather than home to numerous peoples
- Thinking expansion was inevitable rather than the result of political choices
- Assuming all Americans supported expansion when significant opposition existed
- Believing the Mexican-American War was entirely about border disputes
- Thinking expansion was purely positive progress without significant costs

TEACHING SEQUENCE:
Begin by defining Manifest Destiny and analyzing its appeal and assumptions. Study the origins and components of the ideology. Trace territorial acquisitions chronologically: Louisiana Purchase, Florida, Texas, Oregon. Analyze Texas annexation: independence, statehood, and slavery implications. Study the Mexican-American War: causes, key events, opposition, and outcome. Analyze the Treaty of Guadalupe Hidalgo and its effects on Mexican residents. Examine Native American displacement: policies, resistance, and consequences. Connect each acquisition to slavery debates: Missouri Compromise, Wilmot Proviso. Analyze multiple perspectives: expansionists, opponents, Native Americans, Mexicans.

DIFFERENTIATION:
For struggling learners: Use maps showing territorial expansion, provide timelines of acquisitions, focus on specific case studies, and connect to current Southwest demographics.
For advanced learners: Analyze primary sources from multiple perspectives, research specific aspects in depth, examine historiographical debates about Manifest Destiny, and investigate the war''s impact on specific communities.

VOCABULARY:
Manifest Destiny, annexation, territorial expansion, Louisiana Purchase, Texas, Oregon, Mexican-American War, Treaty of Guadalupe Hidalgo, Mexican Cession, Wilmot Proviso, Indian Removal, frontier

CONNECTION TO FUTURE LEARNING:
Expansion intensifies slavery debates leading to Civil War. Treatment of Native Americans continues through the 19th century. Acquired territories shape American demographics and culture.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Manifest Destiny' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic 11.1.3: Road to Civil War
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Road to Civil War' AND grade_level_min = 11),
  'Road to Civil War (Grade 11) Topic Guide',
  'Teaching slavery, sectionalism, and secession',
  'ROAD TO CIVIL WAR - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should understand westward expansion and the slavery debates it intensified. Knowledge of the Constitution''s compromises on slavery provides foundational context. Understanding of abolitionism and reform movements helps analyze antislavery politics.

LEARNING OBJECTIVES:
- Analyze the role of slavery as the fundamental cause of the Civil War
- Trace the political crises of the 1850s: compromises, conflicts, and court decisions
- Evaluate the rise of the Republican Party and its sectional nature
- Understand Southern arguments for secession and Northern responses
- Analyze the election of 1860 and its role in triggering secession
- Assess historiographical debates about Civil War causation

KEY CONCEPTS:
1) Slavery as Central Issue: Despite states'' rights rhetoric, slavery''s expansion and protection was the fundamental divide
2) 1850s Crises: Compromise of 1850, Kansas-Nebraska Act and "Bleeding Kansas," Dred Scott decision, John Brown
3) Political Realignment: Collapse of Whig Party, rise of Republican Party opposing slavery''s expansion
4) Secession: Southern states'' decisions to leave; Confederate Constitution explicitly protecting slavery
5) Immediate Trigger: Lincoln''s election on platform of containing slavery despite promises not to interfere with existing slavery

COMMON MISCONCEPTIONS:
- Believing states'' rights was the cause rather than a means to protect slavery
- Thinking the war was avoidable when fundamental differences made compromise increasingly difficult
- Assuming all Southerners supported secession when significant Unionist minorities existed
- Believing Lincoln intended immediate abolition when he focused on preservation of Union
- Thinking the North fought primarily to end slavery when Union preservation was the initial goal

TEACHING SEQUENCE:
Begin with the situation in 1850: territorial gains, Fugitive Slave Act, sectional tensions. Analyze the Compromise of 1850 and its unstable peace. Study the Kansas-Nebraska Act and violence in Kansas. Analyze the Dred Scott decision and its political impact. Study the rise of the Republican Party and its platform. Examine John Brown''s raid and reactions. Analyze the election of 1860: four candidates, sectional voting, Lincoln''s victory. Study secession decisions and their explicit justifications. Examine the crisis at Fort Sumter and the beginning of war. Address the "Lost Cause" mythology and the importance of historical accuracy.

DIFFERENTIATION:
For struggling learners: Use cause-effect chains showing escalation, provide timelines of key events, focus on key documents and their significance, and clarify historiographical debates.
For advanced learners: Analyze secession declarations and other primary sources, compare contemporary and historical interpretations, research specific events or figures in depth, and examine the historiography of Civil War causation.

VOCABULARY:
Sectionalism, Compromise of 1850, Kansas-Nebraska Act, popular sovereignty, Dred Scott, Republican Party, secession, Confederate States of America, states'' rights, abolition, free soil, border states

CONNECTION TO FUTURE LEARNING:
Understanding causes prepares for studying the war and Reconstruction. Debates about slavery''s centrality continue in public discourse. Constitutional issues raised persist in American politics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Road to Civil War' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic 11.1.4: Civil War
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Civil War' AND grade_level_min = 11),
  'Civil War (Grade 11) Topic Guide',
  'Teaching battles, leaders, and turning points',
  'CIVIL WAR - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should understand the causes of the Civil War including slavery, sectionalism, and secession. Knowledge of the opposing sides'' resources and strategies provides important context. Understanding of emancipation helps connect military and political developments.

LEARNING OBJECTIVES:
- Compare the strengths, weaknesses, and strategies of the Union and Confederacy
- Analyze key battles and campaigns and their significance
- Evaluate military leadership on both sides
- Understand how the war evolved from limited conflict to total war
- Analyze the Emancipation Proclamation and its transformation of war aims
- Assess the war''s human cost and its effects on soldiers and civilians

KEY CONCEPTS:
1) Resources and Strategy: Northern advantages (population, industry, navy) versus Southern advantages (defensive war, interior lines, military tradition)
2) Military Leadership: Grant, Sherman, Lee, Jackson; their strategies and significance
3) Turning Points: Antietam enabling emancipation; Gettysburg and Vicksburg in 1863; Grant''s strategy in 1864-65
4) Total War: Evolution from limited war to deliberate destruction of Southern capacity (Sherman''s March)
5) Emancipation: Lincoln''s political and military calculations; African American military service; transformation of war aims

COMMON MISCONCEPTIONS:
- Believing the North''s advantages made victory inevitable
- Thinking one battle decided the war when multiple factors determined the outcome
- Assuming soldiers were motivated solely by ideology
- Believing the war was fought the same way throughout rather than evolving
- Thinking emancipation was purely a moral decision without strategic calculations

TEACHING SEQUENCE:
Begin with comparing resources and strategies of both sides. Study early battles and the establishment of key patterns. Analyze the Peninsula Campaign and emergence of Lee. Study Antietam and its connection to emancipation. Examine the Emancipation Proclamation: timing, scope, and significance. Analyze 1863 turning points: Gettysburg, Vicksburg, Chattanooga. Study African American military service and its importance. Examine Grant''s appointment and total war strategy. Study Sherman''s March and the Confederacy''s collapse. Analyze the war''s end and Lincoln''s assassination.

DIFFERENTIATION:
For struggling learners: Use maps to track campaigns, focus on key battles and turning points, provide character studies of major leaders, and use primary sources from soldiers.
For advanced learners: Analyze primary sources extensively, research specific battles or aspects in depth, examine military tactics and their evolution, and investigate the war''s social and economic impacts.

VOCABULARY:
Union, Confederacy, Anaconda Plan, blockade, total war, Antietam, Gettysburg, Vicksburg, Sherman''s March, Emancipation Proclamation, United States Colored Troops, Grant, Lee, Lincoln

CONNECTION TO FUTURE LEARNING:
Civil War outcomes shape Reconstruction challenges. Military experiences influence postwar society. Emancipation begins constitutional transformation.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Civil War' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 2: RECONSTRUCTION TO WWI (4 topics)
-- ============================================================================

-- Topic 11.2.1: Reconstruction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Reconstruction' AND grade_level_min = 11),
  'Reconstruction (Grade 11) Topic Guide',
  'Teaching rebuilding the South and its failures',
  'RECONSTRUCTION - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should understand the Civil War''s conclusion and emancipation. Knowledge of the Reconstruction Amendments provides constitutional context. Understanding of freedpeople''s aspirations and white Southern resistance helps frame the period''s conflicts.

LEARNING OBJECTIVES:
- Compare Presidential and Congressional Reconstruction approaches
- Analyze the achievements of Reconstruction governments in the South
- Evaluate the Reconstruction Amendments and their intended protections
- Understand the role of freedpeople in shaping Reconstruction
- Analyze the opposition to Reconstruction and the "Redemption" movement
- Assess Reconstruction''s achievements, limitations, and eventual overthrow

KEY CONCEPTS:
1) Competing Visions: Lincoln and Johnson''s lenient approaches versus Radical Republican demands for protection of freedpeople''s rights
2) Constitutional Revolution: 13th (abolition), 14th (citizenship, equal protection), and 15th (voting rights) Amendments fundamentally changing the Constitution
3) Black Political Participation: Voting, office-holding, conventions, and institution-building by formerly enslaved people
4) Opposition and Terror: Black Codes, Ku Klux Klan violence, "Redeemer" political campaigns to restore white supremacy
5) Failure and Retreat: Northern fatigue, Compromise of 1877, and withdrawal of federal protection

COMMON MISCONCEPTIONS:
- Believing Reconstruction governments were entirely corrupt and incompetent
- Thinking African Americans were passive recipients rather than active agents
- Assuming "carpetbaggers" and "scalawags" were entirely negative
- Believing Reconstruction failed due to African American inability rather than violent opposition
- Thinking Reconstruction was simply ended rather than actively destroyed

TEACHING SEQUENCE:
Begin with the questions facing the nation after war. Compare Lincoln, Johnson, and Congressional Reconstruction plans. Analyze the Reconstruction Amendments: provisions and intended protections. Study Black Codes and Congressional response. Examine Reconstruction governments: composition, reforms, and achievements. Study freedpeople''s priorities: land, education, family, and political participation. Analyze opposition: Klan terrorism, economic coercion, and political organizing. Trace the retreat from Reconstruction: northern fatigue, political compromise. Study the Compromise of 1877 and its consequences. Assess Reconstruction''s achievements and the tragedy of its failure.

DIFFERENTIATION:
For struggling learners: Use comparison charts for different plans, focus on key amendments and their provisions, provide primary sources with guided questions, and connect to later civil rights movement.
For advanced learners: Analyze primary sources from freedpeople and white Southerners, research specific states or aspects, examine historiographical debates, and investigate ongoing effects of Reconstruction''s failure.

VOCABULARY:
Reconstruction, freedpeople, Freedmen''s Bureau, 13th Amendment, 14th Amendment, 15th Amendment, Black Codes, Radical Republicans, impeachment, Ku Klux Klan, Redeemer, Compromise of 1877

CONNECTION TO FUTURE LEARNING:
Reconstruction''s failure creates Jim Crow system lasting until civil rights movement. Constitutional amendments remain central to civil rights law. Understanding Reconstruction is essential for comprehending race in American history.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reconstruction' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic 11.2.2: Gilded Age
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Gilded Age' AND grade_level_min = 11),
  'Gilded Age (Grade 11) Topic Guide',
  'Teaching industry, immigration, and inequality',
  'GILDED AGE - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should understand the Industrial Revolution''s foundations. Knowledge of post-Civil War developments including Reconstruction provides context. Understanding of capitalism and social class concepts helps analyze economic changes.

LEARNING OBJECTIVES:
- Analyze the rapid industrialization and its effects on American economy and society
- Evaluate the rise of big business and debates about monopoly and competition
- Understand immigration patterns and the immigrant experience
- Examine urbanization and its challenges and opportunities
- Analyze labor organizing and conflicts between workers and owners
- Assess the era''s politics and the limits of government response

KEY CONCEPTS:
1) Industrial Growth: Railroads, steel, oil, and other industries transforming the economy; technological innovation
2) Big Business: Rockefeller, Carnegie, Morgan; trusts and monopolies; debates about business practices
3) Immigration: Southern and Eastern European immigration; Asian exclusion; immigrant communities and challenges
4) Urbanization: Rapid city growth; tenements and slums; political machines; settlement houses
5) Labor Conflict: Working conditions, union organizing, major strikes (Haymarket, Homestead, Pullman)

COMMON MISCONCEPTIONS:
- Believing "robber barons" were entirely villainous or "captains of industry" entirely heroic
- Thinking all immigrants had the same experience when it varied greatly
- Assuming labor unions were un-American rather than responses to conditions
- Believing government was entirely hands-off when it actively supported business
- Thinking economic growth benefited everyone equally

TEACHING SEQUENCE:
Begin with economic statistics showing transformation. Study key industries and technological innovations. Analyze the rise of big business: strategies, organization, and impact. Examine debates about monopoly: critics and defenders. Study immigration: push and pull factors, origins, reception, and experience. Analyze urbanization: growth, living conditions, and challenges. Study labor conditions and organizing efforts. Analyze major strikes and their outcomes. Examine political responses: laissez-faire ideology versus regulation attempts. Assess the era''s legacy and connections to Progressive Era.

DIFFERENTIATION:
For struggling learners: Use images and primary sources from the era, focus on specific examples and case studies, provide graphic organizers for major developments, and connect to students'' family histories if applicable.
For advanced learners: Analyze primary sources from multiple perspectives, research specific industries or strikes, examine economic data, and investigate how the era has been interpreted.

VOCABULARY:
Gilded Age, industrialization, monopoly, trust, robber baron, captain of industry, Carnegie, Rockefeller, immigration, tenement, urbanization, labor union, strike, Knights of Labor, AFL

CONNECTION TO FUTURE LEARNING:
Gilded Age problems lead to Progressive Era reforms. Labor conflicts continue throughout 20th century. Immigration patterns shape American demographics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Gilded Age' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic 11.2.3: Progressive Era
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Progressive Era' AND grade_level_min = 11),
  'Progressive Era (Grade 11) Topic Guide',
  'Teaching reform movements and their leaders',
  'PROGRESSIVE ERA - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should understand Gilded Age problems including inequality, corruption, and poor conditions. Knowledge of democratic ideals and reform traditions provides context. Understanding of government structure helps analyze reform efforts at different levels.

LEARNING OBJECTIVES:
- Analyze the diverse roots and goals of Progressive reform movements
- Evaluate Progressive reforms at local, state, and federal levels
- Understand the role of journalists, activists, and politicians in promoting reform
- Examine the limits and contradictions of Progressivism
- Connect Progressivism to earlier and later reform movements
- Assess the lasting impact of Progressive Era changes

KEY CONCEPTS:
1) Progressive Impulse: Response to industrialization''s problems; belief in scientific expertise and efficient government
2) Muckraking: Investigative journalism exposing corruption and injustice (Ida Tarbell, Upton Sinclair, Lincoln Steffens)
3) Reform Areas: Political reform (direct democracy), social reform (settlement houses), economic regulation, conservation
4) Progressive Presidents: Roosevelt (regulation, conservation), Taft, Wilson (banking, tariff, antitrust)
5) Limits of Progressivism: Often excluded African Americans; paternalistic approaches; class biases; support for segregation

COMMON MISCONCEPTIONS:
- Believing Progressives were entirely consistent when they held diverse and sometimes contradictory views
- Thinking Progressivism was solely a bottom-up movement when elites played key roles
- Assuming all reforms were democratic when some emphasized expert control
- Believing Progressives championed racial equality when many supported segregation
- Thinking reforms solved all problems when many persisted

TEACHING SEQUENCE:
Begin with the problems Progressives sought to address. Study the muckrakers and their impact on public opinion. Analyze local and state reforms: direct democracy, regulation, and social programs. Study settlement houses and social reformers: Jane Addams, Florence Kelley. Examine Theodore Roosevelt: trust-busting, conservation, and the "Square Deal." Study Woodrow Wilson: Federal Reserve, Clayton Act, and wartime measures. Analyze women''s suffrage movement and its Progressive connections. Examine the limits and contradictions of Progressivism, especially regarding race. Assess the lasting impact of Progressive reforms.

DIFFERENTIATION:
For struggling learners: Focus on specific reformers and their causes, provide primary sources with clear context, use before-and-after comparisons, and connect to current reform efforts.
For advanced learners: Analyze primary sources from multiple perspectives, research specific reform movements in depth, examine historiographical debates about Progressivism, and investigate Progressive contradictions.

VOCABULARY:
Progressive, reform, muckraker, trust-busting, conservation, settlement house, direct democracy, initiative, referendum, recall, 16th Amendment, 17th Amendment, 18th Amendment, 19th Amendment

CONNECTION TO FUTURE LEARNING:
Progressive reforms provide precedent for New Deal. Regulatory agencies established during this era continue. Women''s suffrage connects to ongoing equality movements.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Progressive Era' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic 11.2.4: World War I
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'World War I' AND grade_level_min = 11),
  'World War I (Grade 11) Topic Guide',
  'Teaching America in the Great War',
  'WORLD WAR I - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have studied World War I''s global causes and early phases. Knowledge of American foreign policy traditions (neutrality, isolationism) provides context. Understanding of Progressive Era reforms helps analyze wartime government.

LEARNING OBJECTIVES:
- Analyze American neutrality policy and the factors leading to intervention
- Understand the American military contribution to Allied victory
- Evaluate the home front: mobilization, propaganda, and civil liberties restrictions
- Examine the war''s effects on different groups: African Americans, women, immigrants
- Analyze Wilson''s Fourteen Points and the Paris Peace Conference
- Assess the war''s aftermath including the Red Scare and return to "normalcy"

KEY CONCEPTS:
1) Neutrality to War: Economic ties to Allies, submarine warfare, Zimmermann Telegram, Wilson''s war message
2) Military Contribution: American Expeditionary Force, key battles, contribution to Allied victory
3) Home Front Mobilization: War Industries Board, propaganda, liberty bonds, food conservation
4) Civil Liberties: Espionage and Sedition Acts, suppression of dissent, attacks on German-Americans
5) Peace and Aftermath: Fourteen Points, League of Nations, Treaty rejection, Red Scare, "return to normalcy"

COMMON MISCONCEPTIONS:
- Believing German submarine warfare alone caused U.S. entry when multiple factors were involved
- Thinking American forces immediately turned the tide when their impact built gradually
- Assuming all Americans supported the war when significant opposition existed
- Believing the Treaty of Versailles was entirely unjust or entirely just
- Thinking wartime restrictions ended immediately with the armistice

TEACHING SEQUENCE:
Begin with American neutrality policy and challenges to it. Analyze factors pushing toward war: economic ties, submarine warfare, propaganda. Study Wilson''s decision for war and his war message. Examine military mobilization and the American Expeditionary Force. Analyze key American military contributions. Study home front mobilization: government agencies, propaganda, and restrictions. Examine civil liberties violations and the suppression of dissent. Analyze the war''s effects on African Americans, women, and immigrants. Study Wilson''s Fourteen Points and peace conference role. Examine Senate rejection of the League and its consequences.

DIFFERENTIATION:
For struggling learners: Use timelines and maps, focus on key events and decisions, provide primary sources with guided questions, and connect to personal or family stories if applicable.
For advanced learners: Analyze primary sources extensively, research specific aspects in depth, examine historiographical debates about intervention, and investigate the war''s impact on specific groups.

VOCABULARY:
Neutrality, submarine warfare, Zimmermann Telegram, American Expeditionary Force, Pershing, home front, propaganda, Espionage Act, Sedition Act, Fourteen Points, League of Nations, Treaty of Versailles

CONNECTION TO FUTURE LEARNING:
World War I shapes interwar period and sets stage for World War II. League rejection affects American internationalism. War experiences influence 1920s society and politics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'World War I' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 3: 1920S TO WWII (4 topics)
-- ============================================================================

-- Topic 11.3.1: The Roaring Twenties
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Roaring Twenties' AND grade_level_min = 11),
  'The Roaring Twenties (Grade 11) Topic Guide',
  'Teaching culture, conflict, and change',
  'THE ROARING TWENTIES - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should understand World War I''s aftermath and the "return to normalcy." Knowledge of industrialization and urbanization provides economic context. Understanding of social tensions including race, immigration, and religion helps frame cultural conflicts.

LEARNING OBJECTIVES:
- Analyze economic changes including mass production, consumption, and speculation
- Understand cultural changes including new media, youth culture, and changing gender roles
- Evaluate the Harlem Renaissance and African American cultural expression
- Examine social tensions: nativism, prohibition, religious fundamentalism, and racial violence
- Analyze the decade''s political conservatism and business orientation
- Assess the 1920s as both a time of change and of reaction

KEY CONCEPTS:
1) Economic Prosperity: Mass production, automobile culture, consumer credit, stock speculation, and uneven prosperity
2) Cultural Change: Jazz age, flappers, new media (radio, movies), changing sexual mores, youth culture
3) Harlem Renaissance: African American cultural flowering in literature, music, and art; racial pride and expression
4) Social Tensions: Immigration restriction, Ku Klux Klan revival, prohibition and organized crime, Scopes trial
5) Political Conservatism: Republican dominance, pro-business policies, limited government intervention

COMMON MISCONCEPTIONS:
- Believing all Americans enjoyed 1920s prosperity when many groups were left out
- Thinking the decade was uniformly progressive when significant backlash occurred
- Assuming jazz and flappers represented all of American culture
- Believing Prohibition was universally opposed or ineffective
- Thinking the 1920s ended suddenly with the stock crash rather than trends continuing

TEACHING SEQUENCE:
Begin with the economic changes of the 1920s: mass production, consumerism, and credit. Study the automobile''s transformative effects on American life. Analyze cultural changes: new media, youth culture, changing gender roles. Study the Harlem Renaissance: key figures, works, and significance. Examine social tensions: nativism, immigration restriction, Klan revival. Analyze prohibition: goals, enforcement, and consequences. Study the Scopes trial and fundamentalist-modernist conflict. Examine racial violence and the Great Migration. Analyze Republican policies and business dominance. Connect 1920s developments to the coming Depression.

DIFFERENTIATION:
For struggling learners: Use cultural artifacts (music, images), focus on specific examples and case studies, provide graphic organizers for multiple developments, and connect to popular culture references.
For advanced learners: Analyze primary sources from the period, research specific cultural movements or figures, examine the decade''s contradictions, and investigate lesser-known aspects.

VOCABULARY:
Roaring Twenties, mass production, consumer culture, flapper, Jazz Age, Harlem Renaissance, nativism, immigration restriction, Prohibition, bootlegging, Scopes trial, fundamentalism, Red Scare

CONNECTION TO FUTURE LEARNING:
1920s speculation leads to Depression. Cultural changes continue through subsequent decades. Racial tensions connect to later civil rights movement.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Roaring Twenties' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic 11.3.2: Great Depression
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Great Depression' AND grade_level_min = 11),
  'Great Depression (Grade 11) Topic Guide',
  'Teaching causes, effects, and experience',
  'GREAT DEPRESSION - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should understand 1920s economic developments including speculation and consumer credit. Knowledge of economic concepts like supply and demand, banking, and investment is helpful. Understanding of government''s limited role in the economy before the Depression provides contrast.

LEARNING OBJECTIVES:
- Analyze the causes of the Great Depression including structural and immediate factors
- Understand the Depression''s effects on different groups and regions
- Evaluate President Hoover''s response and its limitations
- Examine the human experience of the Depression through personal accounts
- Analyze the Depression''s global dimensions and effects
- Assess how the Depression changed Americans'' expectations of government

KEY CONCEPTS:
1) Causes: Stock speculation, unequal wealth distribution, agricultural problems, banking weaknesses, and policy failures
2) Effects: Massive unemployment, bank failures, foreclosures, homelessness, and psychological impacts
3) Hoover''s Response: Belief in voluntarism and limited government; eventual limited interventions; perceived as inadequate
4) Human Experience: Breadlines, Hoovervilles, migration (Dust Bowl), family strain, and survival strategies
5) Global Depression: International dimensions; economic nationalism; political consequences including fascism

COMMON MISCONCEPTIONS:
- Believing the stock crash caused the Depression when it was one factor among many
- Thinking Hoover did nothing when he did more than previous presidents but not enough
- Assuming the Depression affected everyone equally when impacts varied by class, race, and region
- Believing recovery was quick when it lasted over a decade
- Thinking the Depression was inevitable rather than resulting from policy choices

TEACHING SEQUENCE:
Begin with the stock market crash and its immediate effects. Analyze structural causes: wealth inequality, agricultural problems, banking weaknesses. Study the Depression''s effects: unemployment, bank failures, foreclosures. Examine regional variations: Dust Bowl, industrial cities, rural areas. Analyze the human experience through primary sources and personal accounts. Study Hoover''s philosophy and response. Analyze the 1932 election and the mandate for change. Examine the Depression''s global dimensions and political consequences. Connect to the New Deal response.

DIFFERENTIATION:
For struggling learners: Use visual representations of economic data, focus on personal stories and experiences, provide cause-effect graphic organizers, and connect to family histories if applicable.
For advanced learners: Analyze economic data and primary sources, research specific aspects in depth, examine debates about Depression causes, and compare with other economic crises.

VOCABULARY:
Great Depression, stock market crash, Black Tuesday, unemployment, bank failure, foreclosure, Hooverville, Dust Bowl, breadline, relief, Hoover, voluntarism, RFC, bonus marchers

CONNECTION TO FUTURE LEARNING:
Depression creates context for New Deal. Changed expectations of government persist. Economic lessons inform later policy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Great Depression' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic 11.3.3: The New Deal
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The New Deal' AND grade_level_min = 11),
  'The New Deal (Grade 11) Topic Guide',
  'Teaching FDR''s response to economic crisis',
  'THE NEW DEAL - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should understand the Great Depression''s causes and effects. Knowledge of Hoover''s response and its perceived inadequacy provides contrast. Understanding of government structure helps analyze New Deal programs and constitutional challenges.

LEARNING OBJECTIVES:
- Analyze FDR''s leadership approach and the "New Deal coalition"
- Evaluate the major programs of the First and Second New Deals
- Understand the New Deal''s effects on different groups and its limitations
- Analyze constitutional challenges and the court-packing controversy
- Assess debates about the New Deal''s effectiveness
- Connect the New Deal to lasting changes in American government and politics

KEY CONCEPTS:
1) FDR''s Leadership: Fireside chats, optimism, experimentation; building a new political coalition
2) Relief, Recovery, Reform: Programs addressing immediate needs (relief), economic revival (recovery), and structural change (reform)
3) Major Programs: CCC, WPA, TVA, Social Security, NLRA, SEC, banking reforms
4) Limits: Exclusions (agricultural and domestic workers), limited help for African Americans, persistence of unemployment
5) Constitutional Controversy: Supreme Court opposition, court-packing plan, eventual shift; lasting expansion of federal power

COMMON MISCONCEPTIONS:
- Believing the New Deal ended the Depression when World War II was the decisive factor
- Thinking FDR had a coherent plan when much was experimental
- Assuming the New Deal helped everyone equally when significant groups were excluded
- Believing all New Deal programs were successful when some failed
- Thinking the New Deal was purely progressive when it made compromises with conservative forces

TEACHING SEQUENCE:
Begin with FDR''s election and the "first hundred days." Analyze First New Deal programs: banking reforms, relief programs, NRA, AAA. Study FDR''s communication style and political skills. Examine the Second New Deal: Social Security, WPA, NLRA. Analyze the New Deal''s effects on different groups: workers, farmers, African Americans, women. Study conservative opposition and the Supreme Court challenge. Examine the court-packing controversy and its aftermath. Analyze the New Deal coalition and its political significance. Assess debates about the New Deal''s effectiveness and legacy.

DIFFERENTIATION:
For struggling learners: Categorize programs by relief, recovery, reform; use visual representations of programs; provide specific examples of program impacts; and connect to current programs like Social Security.
For advanced learners: Analyze primary sources from different perspectives, research specific programs in depth, examine historiographical debates, and investigate regional or group-specific impacts.

VOCABULARY:
New Deal, FDR, fireside chats, relief, recovery, reform, first hundred days, CCC, WPA, TVA, Social Security, NLRA, Wagner Act, court-packing, New Deal coalition

CONNECTION TO FUTURE LEARNING:
New Deal establishes expanded federal role. Social Security and labor rights persist. Political coalition shapes Democratic Party for decades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The New Deal' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic 11.3.4: World War II
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'World War II' AND grade_level_min = 11),
  'World War II (Grade 11) Topic Guide',
  'Teaching battles, strategy, and Holocaust',
  'WORLD WAR II - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have studied World War II''s global context in World History. Knowledge of American isolationism and neutrality legislation provides context. Understanding of the New Deal and Depression helps explain wartime mobilization.

LEARNING OBJECTIVES:
- Analyze American neutrality and the path to Pearl Harbor
- Evaluate American strategy and military contributions in both theaters
- Understand the home front: mobilization, opportunities, and restrictions
- Examine the treatment of Japanese Americans and wartime civil liberties
- Analyze American responses to the Holocaust
- Assess the atomic bomb decision and the war''s end

KEY CONCEPTS:
1) From Neutrality to War: Isolationism, lend-lease, Pearl Harbor, and the declaration of war
2) Military Strategy: Europe-first strategy, Pacific island-hopping, key battles and campaigns
3) Home Front: Economic mobilization, women workers, migration, rationing, propaganda
4) Japanese American Incarceration: Executive Order 9066, relocation centers, civil liberties violations
5) War''s End: D-Day, European victory, atomic bombs, Japanese surrender, and postwar planning

COMMON MISCONCEPTIONS:
- Believing Americans were uniformly supportive of entering the war
- Thinking Pearl Harbor was entirely a surprise without any warning signs
- Assuming Japanese American internment was militarily necessary
- Believing all Americans knew about the Holocaust during the war
- Thinking the atomic bomb decision was simple rather than complex and debated

TEACHING SEQUENCE:
Begin with American neutrality policy and challenges in the late 1930s. Analyze the path to Pearl Harbor: lend-lease, Atlantic Charter, economic pressure on Japan. Study American strategy in both European and Pacific theaters. Examine key battles and campaigns in both theaters. Analyze home front mobilization: economic conversion, women workers, rationing. Study Japanese American incarceration: causes, experience, and legacy. Examine the experiences of African Americans and other minority groups during the war. Analyze American knowledge of and response to the Holocaust. Study the atomic bomb decision and debates. Examine the war''s end and postwar planning.

DIFFERENTIATION:
For struggling learners: Use maps and timelines, focus on key battles and events, provide personal accounts and primary sources, and connect to family histories if applicable.
For advanced learners: Analyze primary sources from multiple perspectives, research specific aspects in depth, examine debates about atomic bomb use, and investigate wartime civil liberties issues.

VOCABULARY:
Pearl Harbor, lend-lease, Atlantic Charter, D-Day, island-hopping, home front, Rosie the Riveter, rationing, Japanese American internment, Executive Order 9066, Holocaust, atomic bomb, Hiroshima, Nagasaki

CONNECTION TO FUTURE LEARNING:
World War II creates Cold War order. Wartime experiences shape civil rights movement. Atomic age begins. American global leadership established.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'World War II' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 4: COLD WAR TO PRESENT (4 topics)
-- ============================================================================

-- Topic 11.4.1: Cold War Beginnings
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Cold War Beginnings' AND grade_level_min = 11),
  'Cold War Beginnings (Grade 11) Topic Guide',
  'Teaching origins, containment, and McCarthyism',
  'COLD WAR BEGINNINGS - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should understand World War II''s conclusion and the postwar order. Knowledge of communism versus capitalism provides ideological context. Understanding of American foreign policy traditions helps analyze containment.

LEARNING OBJECTIVES:
- Analyze the origins of the Cold War and debates about responsibility
- Understand containment policy and its applications
- Evaluate the domestic impact of the Cold War including McCarthyism
- Examine early Cold War crises: Berlin, Korea, and nuclear arms race
- Analyze the Cold War''s effects on American society and culture
- Assess the balance between national security and civil liberties

KEY CONCEPTS:
1) Origins: Wartime tensions, ideological conflict, Soviet actions in Eastern Europe, and American responses
2) Containment: Truman Doctrine, Marshall Plan, and NATO as policy framework to prevent communist expansion
3) McCarthyism: Anti-communist hysteria, loyalty investigations, blacklists, and their effects on civil liberties
4) Early Crises: Berlin Blockade, Korean War, and nuclear arms race
5) Domestic Effects: Fear, conformity, defense spending, and cultural impacts

COMMON MISCONCEPTIONS:
- Believing the Cold War was entirely one side''s fault when responsibility was shared
- Thinking McCarthyism was limited to Senator McCarthy when anti-communism was broader
- Assuming all accused of communist ties were innocent when some were genuine spies
- Believing the Cold War was inevitable rather than resulting from choices
- Thinking Americans were uniformly anti-communist when dissent existed

TEACHING SEQUENCE:
Begin with the postwar situation: wartime allies becoming adversaries. Analyze the origins of Cold War tensions: Soviet actions, American responses. Study the Truman Doctrine and Marshall Plan as containment applications. Examine the Berlin Blockade and airlift. Study the Korean War: causes, course, and consequences. Analyze the nuclear arms race and its effects. Study McCarthyism: HUAC, blacklists, and their impact on civil liberties. Examine Cold War effects on American society and culture. Analyze debates about Cold War responsibility. Connect to later Cold War developments.

DIFFERENTIATION:
For struggling learners: Use maps and timelines, focus on key events and policies, provide primary sources with guided questions, and use cultural artifacts from the era.
For advanced learners: Analyze primary sources extensively, research specific aspects in depth, examine historiographical debates about Cold War origins, and investigate McCarthyism''s effects on specific groups.

VOCABULARY:
Cold War, containment, Truman Doctrine, Marshall Plan, NATO, Warsaw Pact, Iron Curtain, Berlin Blockade, Korean War, nuclear arms race, McCarthyism, HUAC, blacklist, loyalty oath

CONNECTION TO FUTURE LEARNING:
Cold War policies continue through subsequent decades. Anti-communism shapes American politics. Arms race leads to later détente and eventual end of Cold War.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cold War Beginnings' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic 11.4.2: Civil Rights Movement
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Civil Rights Movement' AND grade_level_min = 11),
  'Civil Rights Movement (Grade 11) Topic Guide',
  'Teaching struggle for equality',
  'CIVIL RIGHTS MOVEMENT - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should understand Jim Crow segregation and its origins in the failure of Reconstruction. Knowledge of African American history through the early 20th century provides context. Understanding of constitutional amendments and civil rights concepts is essential.

LEARNING OBJECTIVES:
- Analyze the origins and development of the modern civil rights movement
- Evaluate the strategies and tactics of the movement: legal, nonviolent direct action, and Black Power
- Understand key events, leaders, and organizations of the movement
- Examine the role of ordinary people in the movement
- Analyze the achievements of the movement: legislation and social change
- Assess the movement''s unfinished work and continuing relevance

KEY CONCEPTS:
1) Roots: Earlier struggles, World War II impact, Cold War context, and legal challenges to segregation
2) Brown v. Board: Supreme Court decision declaring separate but equal unconstitutional; massive resistance
3) Nonviolent Direct Action: Montgomery bus boycott, sit-ins, Freedom Rides, Birmingham, March on Washington
4) Legislation: Civil Rights Act of 1964, Voting Rights Act of 1965, Fair Housing Act
5) Black Power: Shift toward more militant approaches, self-defense, and Black pride; SNCC and Black Panthers

COMMON MISCONCEPTIONS:
- Believing the movement was solely about Dr. King when many leaders and ordinary people contributed
- Thinking it was entirely nonviolent when debates about self-defense were significant
- Assuming progress was inevitable when victories were hard-won against violent resistance
- Believing the movement ended with legislation when work continued
- Thinking the movement was universally supported when significant opposition existed

TEACHING SEQUENCE:
Begin with the conditions of Jim Crow segregation. Study early 20th-century activism: NAACP, legal challenges, wartime gains. Analyze the Brown decision and its aftermath. Study the Montgomery Bus Boycott and the emergence of Dr. King. Examine sit-ins, Freedom Rides, and the role of youth. Study Birmingham and the March on Washington. Analyze the Civil Rights Act of 1964 and Voting Rights Act of 1965. Examine Black Power and evolving strategies. Study the role of women and ordinary people in the movement. Analyze King''s later work and assassination. Assess the movement''s achievements and continuing work.

DIFFERENTIATION:
For struggling learners: Use timelines and visual resources, focus on key events and figures, provide primary sources with guided questions, and connect to current civil rights issues.
For advanced learners: Analyze primary sources extensively, research specific events or figures in depth, examine debates within the movement, and investigate local civil rights history.

VOCABULARY:
Civil rights movement, Jim Crow, segregation, integration, Brown v. Board of Education, Rosa Parks, Martin Luther King Jr., nonviolent direct action, sit-in, Freedom Riders, Civil Rights Act, Voting Rights Act, Black Power, SNCC, NAACP

CONNECTION TO FUTURE LEARNING:
Civil rights movement inspires other movements. Voting Rights Act remains contested. Racial justice issues continue to present.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Civil Rights Movement' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic 11.4.3: Vietnam War
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Vietnam War' AND grade_level_min = 11),
  'Vietnam War (Grade 11) Topic Guide',
  'Teaching involvement, protest, and legacy',
  'VIETNAM WAR - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should understand Cold War containment policy and earlier interventions. Knowledge of Vietnamese history and the colonial experience provides context. Understanding of the 1960s social and political environment helps explain antiwar movement.

LEARNING OBJECTIVES:
- Analyze the origins of American involvement in Vietnam
- Evaluate American military strategy and its effectiveness
- Understand the war''s effects on soldiers, Vietnamese, and American society
- Examine the antiwar movement and its impact on policy
- Analyze the war''s end and its immediate aftermath
- Assess the Vietnam War''s lasting impact on American politics and society

KEY CONCEPTS:
1) Origins: French colonialism, Ho Chi Minh, Geneva Accords, and escalating American commitment
2) Escalation: Gulf of Tonkin, troop buildup, draft, and search-and-destroy strategy
3) Antiwar Movement: Student protests, draft resistance, teach-ins, and mass demonstrations
4) Turning Points: Tet Offensive, My Lai, Cambodia, and Kent State
5) End and Legacy: Vietnamization, Paris Peace Accords, fall of Saigon, and lasting effects

COMMON MISCONCEPTIONS:
- Believing the domino theory was proven correct or entirely wrong
- Thinking antiwar protesters were unpatriotic rather than expressing dissent
- Assuming all soldiers supported the war when many became critics
- Believing the war was winnable with different tactics
- Thinking the war''s effects ended with the fall of Saigon

TEACHING SEQUENCE:
Begin with Vietnamese history and the Cold War context. Analyze the origins of American involvement under Eisenhower and Kennedy. Study Johnson''s escalation and the Gulf of Tonkin Resolution. Examine American military strategy and its challenges. Study the experience of American soldiers in Vietnam. Analyze the Tet Offensive and its impact on public opinion. Study the antiwar movement: participants, tactics, and effects. Examine Nixon''s policies: Vietnamization, Cambodia, and diplomacy. Analyze the war''s end: Paris Peace Accords and fall of Saigon. Assess the war''s lasting impact on American foreign policy and society.

DIFFERENTIATION:
For struggling learners: Use maps and timelines, focus on key events and turning points, provide personal accounts and primary sources, and connect to current debates about military intervention.
For advanced learners: Analyze primary sources extensively, research specific aspects in depth, examine Vietnamese perspectives, and investigate the war''s cultural representations.

VOCABULARY:
Vietnam War, Ho Chi Minh, domino theory, Gulf of Tonkin Resolution, escalation, draft, search and destroy, Tet Offensive, antiwar movement, My Lai, Vietnamization, Paris Peace Accords, POW, MIA

CONNECTION TO FUTURE LEARNING:
Vietnam shapes subsequent foreign policy debates. War''s effects on veterans continue. Lessons remain contested in current policy discussions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vietnam War' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic 11.4.4: Contemporary America
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Contemporary America' AND grade_level_min = 11),
  'Contemporary America (Grade 11) Topic Guide',
  'Teaching 9/11 and modern challenges',
  'CONTEMPORARY AMERICA - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should understand Cold War history and its end. Knowledge of American political and social developments since the 1970s provides context. Understanding of globalization and technology changes helps analyze contemporary issues.

LEARNING OBJECTIVES:
- Analyze major political developments from Reagan to the present
- Understand the end of the Cold War and post-Cold War foreign policy
- Evaluate the September 11 attacks and their impact on American society and policy
- Examine contemporary social movements and debates
- Analyze economic changes including globalization and technological transformation
- Connect historical developments to current events and issues

KEY CONCEPTS:
1) Conservative Resurgence: Reagan revolution, end of Cold War, and political realignment
2) Post-Cold War: American global leadership, interventions, and debates about role in the world
3) September 11: Attacks, responses, Afghanistan, Iraq, and ongoing war on terror
4) Social Change: Immigration debates, LGBTQ+ rights, demographic shifts, and cultural conflicts
5) Economic Transformation: Globalization, technology revolution, inequality, and debates about economic policy

COMMON MISCONCEPTIONS:
- Believing history ended with the Cold War when new challenges emerged
- Thinking 9/11 was entirely unprecedented rather than having historical context
- Assuming current divisions are worse than ever when conflict has existed throughout history
- Believing technology is neutral rather than having social and political impacts
- Thinking current events can be understood without historical context

TEACHING SEQUENCE:
Begin with the Reagan era and conservative political shift. Analyze the end of the Cold War and American global position. Study the 1990s: economic prosperity, technological change, and political conflict. Examine September 11: attacks, immediate responses, and long-term effects. Study the wars in Afghanistan and Iraq. Analyze the Great Recession and its political effects. Examine social movements and demographic changes. Study political polarization and its causes. Analyze the Obama era, Trump era, and recent developments. Connect historical developments to current events and students'' experiences.

DIFFERENTIATION:
For struggling learners: Use timelines and current events connections, focus on key developments, provide multiple perspectives on controversial issues, and connect to student experiences.
For advanced learners: Analyze primary sources and data, research specific issues in depth, examine historiographical perspectives on recent history, and investigate connections between past and present.

VOCABULARY:
Reagan revolution, conservatism, end of Cold War, globalization, September 11, War on Terror, Afghanistan, Iraq, Great Recession, polarization, social media, demographic change

CONNECTION TO FUTURE LEARNING:
Contemporary history provides context for understanding current events and future citizenship. Historical perspective helps analyze ongoing debates.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Contemporary America' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF GRADE 11 HISTORY TOPIC PROMPTS
-- Total: 16 topics across 4 units
-- ============================================================================
