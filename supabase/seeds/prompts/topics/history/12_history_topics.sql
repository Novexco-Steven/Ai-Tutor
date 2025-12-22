-- ============================================================================
-- GRADE 12 HISTORY TOPIC PROMPTS (Government and Economics)
-- Comprehensive teaching guides for all Grade 12 History topics
-- 17 topics across 4 units: Foundations of Government, Political Processes,
-- Economic Principles, Money Banking and Finance
-- ============================================================================

-- ============================================================================
-- UNIT 1: FOUNDATIONS OF GOVERNMENT (4 topics)
-- ============================================================================

-- Topic 12.1.1: Political Philosophy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Political Philosophy' AND grade_level_min = 12),
  'Political Philosophy (Grade 12) Topic Guide',
  'Teaching Locke, Montesquieu, and Rousseau',
  'POLITICAL PHILOSOPHY - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should have studied Enlightenment thought and its influence on the American Revolution. Knowledge of ancient Greek and Roman political thought provides historical context. Understanding of the Declaration of Independence and Constitution as philosophical documents is essential.

LEARNING OBJECTIVES:
- Analyze the major political philosophers whose ideas influenced American government
- Understand key concepts: natural rights, social contract, separation of powers, and general will
- Evaluate how Enlightenment philosophy shaped the American founding
- Compare and contrast different philosophical perspectives on government
- Apply philosophical concepts to analyze contemporary political issues
- Develop skill in philosophical argument and analysis

KEY CONCEPTS:
1) Natural Rights (Locke): Inherent rights to life, liberty, and property; government exists to protect these rights; right to revolution
2) Social Contract: Agreement between people and government; legitimacy based on consent; varying formulations by different philosophers
3) Separation of Powers (Montesquieu): Division of government functions to prevent tyranny; checks and balances
4) General Will (Rousseau): Collective interest of society; popular sovereignty; tension between individual and community
5) Classical Foundations: Aristotle on government types, Cicero on natural law, and their influence on modern thought

COMMON MISCONCEPTIONS:
- Believing the founders simply copied philosophers when they adapted ideas to American conditions
- Thinking all Enlightenment thinkers agreed when they had significant differences
- Assuming natural rights philosophy is universally accepted when alternatives exist
- Believing the social contract is an actual historical event rather than a thought experiment
- Thinking philosophical debates are purely historical rather than ongoing

TEACHING SEQUENCE:
Begin with the question: what justifies government authority? Study classical foundations: Aristotle on government forms, Cicero on natural law. Analyze Thomas Hobbes: state of nature, social contract, and absolute sovereignty. Study John Locke: natural rights, consent, and right of revolution. Examine Montesquieu: separation of powers and checks and balances. Study Rousseau: general will, popular sovereignty, and democratic participation. Analyze how these ideas appear in the Declaration and Constitution. Compare different philosophical approaches: liberal, republican, communitarian. Apply philosophical concepts to contemporary debates. Develop philosophical argumentation skills.

DIFFERENTIATION:
For struggling learners: Focus on key concepts with clear explanations, use excerpts with guided questions, provide comparison charts for philosophers, and connect to familiar political concepts.
For advanced learners: Analyze full primary source readings, research additional philosophers, examine contemporary applications, and engage in philosophical writing and debate.

VOCABULARY:
Natural rights, social contract, state of nature, consent, sovereignty, separation of powers, checks and balances, general will, natural law, tyranny, liberty, republican, democracy

CONNECTION TO FUTURE LEARNING:
Political philosophy provides framework for analyzing all government topics. Philosophical concepts inform debates about rights and government. Understanding foundations helps evaluate contemporary political arguments.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Political Philosophy' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic 12.1.2: Types of Government
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Types of Government' AND grade_level_min = 12),
  'Types of Government (Grade 12) Topic Guide',
  'Teaching democracy, authoritarianism, and more',
  'TYPES OF GOVERNMENT - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand political philosophy foundations including concepts of power and legitimacy. Knowledge of historical examples of different government types provides concrete context. Understanding of American democracy helps ground comparative analysis.

LEARNING OBJECTIVES:
- Classify governments by who rules and how power is exercised
- Compare and contrast democratic and authoritarian systems
- Analyze different forms of democracy: direct, representative, constitutional, and parliamentary
- Understand the spectrum from limited to unlimited government
- Evaluate factors affecting political systems including culture, history, and economics
- Apply comparative analysis to understand American government in global context

KEY CONCEPTS:
1) Classification Systems: Rule by one (autocracy), few (oligarchy), or many (democracy); how power is acquired and exercised
2) Democratic Variations: Direct versus representative, presidential versus parliamentary, federal versus unitary
3) Authoritarian Systems: Dictatorships, totalitarianism, military rule, and one-party states
4) Limited Government: Constitutional restraints, separation of powers, federalism, and protection of rights
5) Democratic Transitions: Factors supporting or hindering democratization; challenges facing new democracies

COMMON MISCONCEPTIONS:
- Believing democracy has a single form when significant variations exist
- Thinking autocracy always means brutal dictatorship when degrees exist
- Assuming democratic labels mean actual democracy in all cases
- Believing democratization is inevitable or irreversible
- Thinking American government is the model all democracies follow

TEACHING SEQUENCE:
Begin with basic classification: who rules and how? Study the spectrum from limited to unlimited government. Analyze democratic variations: direct versus representative, presidential versus parliamentary. Compare American presidential system with parliamentary systems. Examine federal versus unitary systems. Study authoritarian systems: types, characteristics, and examples. Analyze totalitarianism as an extreme form of authoritarianism. Examine factors affecting government type: culture, history, economics, and geography. Study democratic transitions: waves of democratization and reversals. Analyze current global trends in governance. Apply comparative analysis to understand American government.

DIFFERENTIATION:
For struggling learners: Use classification charts and visual frameworks, focus on clear examples, provide comparison guides, and connect to familiar American examples.
For advanced learners: Research specific countries in depth, analyze democratization literature, examine hybrid regimes, and investigate factors affecting regime stability.

VOCABULARY:
Democracy, autocracy, oligarchy, constitutional, representative, direct democracy, parliamentary, presidential, federal, unitary, authoritarian, totalitarian, dictatorship, limited government

CONNECTION TO FUTURE LEARNING:
Government types framework applies to all political analysis. Comparative perspective illuminates American government. Understanding variations helps evaluate political systems.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Types of Government' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic 12.1.3: The U.S. Constitution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The U.S. Constitution' AND grade_level_min = 12),
  'The U.S. Constitution (Grade 12) Topic Guide',
  'Teaching structure and principles',
  'THE U.S. CONSTITUTION - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should have studied the Constitution in U.S. History. Knowledge of political philosophy especially Locke and Montesquieu provides conceptual foundation. Understanding of federalism and separation of powers from earlier studies is essential.

LEARNING OBJECTIVES:
- Analyze the Constitution''s structure and major provisions
- Understand the principles embedded in the Constitution: popular sovereignty, limited government, separation of powers, checks and balances, federalism
- Evaluate the amendment process and significant amendments
- Analyze constitutional interpretation approaches: originalism versus living constitution
- Understand how constitutional meaning has evolved through interpretation
- Apply constitutional analysis to contemporary issues

KEY CONCEPTS:
1) Constitutional Structure: Preamble, seven articles establishing government structure and powers, amendment process
2) Key Principles: Popular sovereignty, limited government, separation of powers, checks and balances, federalism, individual rights
3) Amendment Process: Article V provisions, historical pattern of amendments, proposed but unratified amendments
4) Constitutional Interpretation: Originalism, textualism, living constitution, and judicial review''s role
5) Constitutional Evolution: How meaning has changed through amendments, court decisions, and practice

COMMON MISCONCEPTIONS:
- Believing the Constitution provides clear answers to all questions when interpretation is often contested
- Thinking constitutional meaning is fixed when it has evolved substantially
- Assuming the Framers agreed on everything when significant debates existed
- Believing amendments are the only way constitutional meaning changes
- Thinking constitutional law equals what the Supreme Court says when other factors matter

TEACHING SEQUENCE:
Begin with the Constitution''s structure and major provisions. Analyze the Preamble''s purposes. Study each article systematically: Congress, Executive, Judiciary, federal-state relations, amendment process, supremacy, ratification. Analyze key principles: popular sovereignty, limited government, separation of powers, federalism. Examine the Bill of Rights and its protections. Study the amendment process and significant amendments (13th-15th, 19th, etc.). Analyze interpretation approaches: originalism versus living constitution. Study landmark Supreme Court cases showing constitutional evolution. Apply constitutional analysis to contemporary issues and debates.

DIFFERENTIATION:
For struggling learners: Use structural diagrams, focus on key provisions with clear explanations, provide amendment summaries, and connect to current events.
For advanced learners: Analyze full Constitution text, research specific provisions or cases, examine interpretation debates, and engage in constitutional argument.

VOCABULARY:
Constitution, article, amendment, Preamble, Bill of Rights, separation of powers, checks and balances, federalism, enumerated powers, implied powers, elastic clause, judicial review, originalism, living constitution

CONNECTION TO FUTURE LEARNING:
Constitutional understanding applies to all government topics. Interpretation debates continue in contemporary issues. Constitutional literacy essential for citizenship.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The U.S. Constitution' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic 12.1.4: Constitutional Rights
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Constitutional Rights' AND grade_level_min = 12),
  'Constitutional Rights (Grade 12) Topic Guide',
  'Teaching Bill of Rights and civil liberties',
  'CONSTITUTIONAL RIGHTS - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand the Constitution''s structure and the Bill of Rights'' addition. Knowledge of the 14th Amendment and incorporation doctrine provides essential context. Understanding of judicial review and Supreme Court''s role is important.

LEARNING OBJECTIVES:
- Analyze the protections provided by the Bill of Rights and subsequent amendments
- Understand how rights have been interpreted and applied through Supreme Court decisions
- Evaluate tensions between individual rights and government interests
- Examine the incorporation of Bill of Rights protections against state governments
- Analyze current civil liberties issues and debates
- Apply constitutional analysis to evaluate rights claims

KEY CONCEPTS:
1) First Amendment: Religion (establishment and free exercise), speech, press, assembly, and petition; varying levels of protection
2) Criminal Justice Rights: Fourth (search and seizure), Fifth (self-incrimination, due process), Sixth (fair trial), Eighth (cruel and unusual punishment)
3) 14th Amendment: Due process and equal protection; incorporation of Bill of Rights; basis for civil rights
4) Rights in Tension: Balancing individual liberty against public safety, order, and other interests
5) Evolving Interpretation: How rights understanding has changed through court decisions and social movements

COMMON MISCONCEPTIONS:
- Believing rights are absolute when courts have recognized limits
- Thinking the Bill of Rights originally applied to states when incorporation came later
- Assuming current interpretations were always accepted
- Believing all constitutional questions have clear answers
- Thinking rights exist independent of their enforcement and interpretation

TEACHING SEQUENCE:
Begin with the Bill of Rights'' purposes and addition. Analyze First Amendment freedoms: religion, speech, press, assembly, petition. Study landmark cases for each First Amendment freedom. Examine criminal justice rights: Fourth, Fifth, Sixth, and Eighth Amendments. Study landmark criminal procedure cases: Miranda, Mapp, Gideon. Analyze the 14th Amendment and incorporation doctrine. Examine equal protection and its applications. Study the expansion of rights to new areas and groups. Analyze current civil liberties issues and debates. Practice applying constitutional analysis to hypothetical and real cases.

DIFFERENTIATION:
For struggling learners: Focus on major rights categories with clear examples, use case summaries rather than full opinions, provide graphic organizers for amendment protections, and connect to student-relevant scenarios.
For advanced learners: Analyze full Supreme Court opinions, research specific rights areas in depth, examine dissenting arguments, and engage in constitutional argumentation.

VOCABULARY:
Bill of Rights, First Amendment, freedom of speech, freedom of religion, establishment clause, free exercise clause, due process, equal protection, search and seizure, Miranda rights, incorporation, civil liberties

CONNECTION TO FUTURE LEARNING:
Rights understanding applies to all political and legal analysis. Civil liberties issues are ongoing. Constitutional literacy essential for citizenship and advocacy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Constitutional Rights' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 2: POLITICAL PROCESSES (4 topics)
-- ============================================================================

-- Topic 12.2.1: Elections and Voting
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Elections and Voting' AND grade_level_min = 12),
  'Elections and Voting (Grade 12) Topic Guide',
  'Teaching electoral systems and participation',
  'ELECTIONS AND VOTING - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand the Constitution''s provisions for elections. Knowledge of the expansion of voting rights through amendments and legislation provides historical context. Understanding of political parties and campaigns is helpful.

LEARNING OBJECTIVES:
- Analyze the American electoral system at federal, state, and local levels
- Understand the Electoral College: its design, operation, and debates
- Evaluate factors affecting voter turnout and participation
- Examine campaign strategies, finance, and media''s role
- Analyze voting rights issues: access, restrictions, and ongoing debates
- Prepare for informed electoral participation

KEY CONCEPTS:
1) Electoral System: Primary elections, general elections, Electoral College, state-level variations
2) Electoral College: Constitutional design, winner-take-all allocation, potential for popular-electoral split, reform proposals
3) Voter Behavior: Demographics, party identification, issues, candidates, and turnout factors
4) Campaigns: Strategy, messaging, advertising, social media, debates, and ground operations
5) Voting Access: Registration requirements, ID laws, early voting, mail voting, and ongoing debates

COMMON MISCONCEPTIONS:
- Believing popular vote directly elects the president
- Thinking the two-party system is constitutionally required
- Assuming low turnout means citizens don''t care when barriers matter
- Believing campaign spending determines election outcomes
- Thinking voting is the only form of political participation

TEACHING SEQUENCE:
Begin with the constitutional framework for elections. Analyze the Electoral College: design, operation, and historical controversies. Study primary election processes and their evolution. Examine campaign strategies and their components. Analyze campaign finance: regulations, sources, and debates. Study media''s role in campaigns: coverage, advertising, and social media. Examine voter behavior: what factors influence voting decisions? Analyze voter turnout: patterns, barriers, and mobilization efforts. Study current voting access debates: registration, ID requirements, and voting methods. Prepare students for informed electoral participation.

DIFFERENTIATION:
For struggling learners: Use visual representations of electoral processes, focus on practical participation aspects, provide clear comparisons of voting options, and connect to local elections.
For advanced learners: Analyze electoral data, research specific campaigns or issues, examine comparative electoral systems, and investigate campaign strategy.

VOCABULARY:
Election, primary election, general election, Electoral College, elector, popular vote, campaign, caucus, convention, platform, swing state, battleground, turnout, registration, absentee ballot, early voting

CONNECTION TO FUTURE LEARNING:
Electoral understanding directly applies to citizenship. Voting access issues are ongoing. Campaign knowledge helps evaluate political communication.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Elections and Voting' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic 12.2.2: Political Parties
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Political Parties' AND grade_level_min = 12),
  'Political Parties (Grade 12) Topic Guide',
  'Teaching party systems and functions',
  'POLITICAL PARTIES - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand American political history including party development. Knowledge of the Constitution''s silence on parties provides context. Understanding of elections and the political process is essential.

LEARNING OBJECTIVES:
- Analyze the functions of political parties in American democracy
- Trace the development of the two-party system and its durability
- Understand party organization at national, state, and local levels
- Evaluate the role of party platforms and ideological positions
- Examine third parties and their impact on American politics
- Assess current trends in partisanship and polarization

KEY CONCEPTS:
1) Party Functions: Nominating candidates, mobilizing voters, organizing government, and aggregating interests
2) Two-Party System: Historical development, structural factors supporting it, and third-party challenges
3) Party Organization: National committees, state and local organizations, and party activists
4) Ideological Coalitions: Democratic and Republican coalitions, issue positions, and internal diversity
5) Polarization: Increasing partisan division, causes, and consequences for governance

COMMON MISCONCEPTIONS:
- Believing the Constitution established the two-party system when it developed politically
- Thinking parties are monolithic when significant internal diversity exists
- Assuming third parties never succeed when they occasionally win elections and influence policy
- Believing party polarization is entirely new rather than having historical precedents
- Thinking party identification is static when it can change over time

TEACHING SEQUENCE:
Begin with the functions of political parties in democracy. Trace the historical development of the American party system. Analyze why the two-party system persists: structural and legal factors. Study party organization: national, state, and local levels. Examine party platforms and their evolution. Analyze the ideological positions and coalitions of major parties. Study third parties: types, impacts, and challenges they face. Examine party identification and how it forms and changes. Analyze partisan polarization: trends, causes, and consequences. Evaluate parties'' role in contemporary American politics.

DIFFERENTIATION:
For struggling learners: Use visual representations of party structure, focus on major party differences, provide clear examples of party functions, and connect to current political figures.
For advanced learners: Analyze party platforms in detail, research party history or realignments, examine polarization data, and compare with party systems in other democracies.

VOCABULARY:
Political party, two-party system, Democratic Party, Republican Party, platform, coalition, third party, party identification, partisan, polarization, primary, caucus, convention, national committee

CONNECTION TO FUTURE LEARNING:
Party understanding applies to all political analysis. Polarization affects current governance. Party dynamics shape contemporary debates.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Political Parties' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic 12.2.3: Interest Groups
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Interest Groups' AND grade_level_min = 12),
  'Interest Groups (Grade 12) Topic Guide',
  'Teaching lobbying and influence',
  'INTEREST GROUPS - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand the Constitution''s protection of assembly and petition. Knowledge of the policy-making process helps contextualize lobbying. Understanding of democratic representation provides framework for evaluating interest group roles.

LEARNING OBJECTIVES:
- Analyze the role of interest groups in American democracy
- Understand lobbying strategies and tactics
- Evaluate the influence of money in politics through interest group activities
- Examine different types of interest groups and their resources
- Assess debates about interest group influence: pluralism versus elite theory
- Develop critical evaluation skills for interest group claims

KEY CONCEPTS:
1) Interest Group Functions: Representation, education, agenda setting, program monitoring, and grassroots mobilization
2) Lobbying: Direct (personal contact) and indirect (grassroots, media) strategies to influence policy
3) Types of Groups: Economic (business, labor), public interest, single-issue, and governmental interest groups
4) PACs and Super PACs: Campaign finance mechanisms, regulations, and debates about influence
5) Pluralism vs. Elite Theory: Debates about whether interest group politics is democratic or dominated by powerful interests

COMMON MISCONCEPTIONS:
- Believing all interest group activity is corrupt or inappropriate
- Thinking lobbying is limited to direct contact with legislators
- Assuming money directly buys votes when influence is more complex
- Believing all interests are equally represented when resources vary greatly
- Thinking interest groups are always opposed to the public interest

TEACHING SEQUENCE:
Begin with the First Amendment foundations: assembly and petition rights. Analyze the functions of interest groups in democracy. Study types of interest groups: economic, public interest, single-issue. Examine lobbying strategies: direct and indirect approaches. Analyze the role of money: PACs, Super PACs, and campaign contributions. Study the revolving door between government and lobbying. Examine the iron triangle and issue networks. Analyze pluralist and elite perspectives on interest group influence. Evaluate specific interest group campaigns. Develop critical evaluation skills for interest group claims.

DIFFERENTIATION:
For struggling learners: Focus on specific examples of interest groups, use visual representations of lobbying processes, provide frameworks for evaluating interest group claims, and connect to issues students care about.
For advanced learners: Research specific interest groups or campaigns, analyze lobbying disclosure data, examine regulatory proposals, and evaluate theoretical perspectives.

VOCABULARY:
Interest group, lobbying, lobbyist, PAC (Political Action Committee), Super PAC, grassroots, astroturf, iron triangle, issue network, pluralism, elitism, 501(c)(4), campaign finance, disclosure

CONNECTION TO FUTURE LEARNING:
Interest group analysis applies to all policy areas. Lobbying understanding helps evaluate political information. Critical evaluation skills essential for citizenship.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Interest Groups' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic 12.2.4: Public Policy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Public Policy' AND grade_level_min = 12),
  'Public Policy (Grade 12) Topic Guide',
  'Teaching how policies are made and implemented',
  'PUBLIC POLICY - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand the structure of American government at federal, state, and local levels. Knowledge of the legislative process is essential. Understanding of interest groups and political parties provides context for policy debates.

LEARNING OBJECTIVES:
- Analyze the policy-making process from problem identification to implementation
- Understand the roles of different actors: Congress, President, bureaucracy, courts, and interest groups
- Evaluate different types of policies: regulatory, distributive, redistributive
- Examine factors affecting policy outcomes: political, economic, and social
- Analyze case studies of specific policy areas
- Develop skills for evaluating policy proposals

KEY CONCEPTS:
1) Policy Process: Agenda setting, formulation, adoption, implementation, and evaluation stages
2) Policy Actors: Congress, President, bureaucracy, courts, interest groups, media, and public opinion
3) Policy Types: Regulatory (controlling behavior), distributive (providing benefits), redistributive (shifting resources)
4) Policy Analysis: Cost-benefit analysis, trade-offs, unintended consequences, and effectiveness evaluation
5) Federalism in Policy: Federal-state roles, mandates, grants, and intergovernmental relations

COMMON MISCONCEPTIONS:
- Believing policy-making follows a neat linear process when it is often messy and circular
- Thinking Congress makes policy alone when many actors are involved
- Assuming policy intentions equal outcomes when implementation matters greatly
- Believing technical expertise alone determines policy when politics is essential
- Thinking policies once made remain static when they evolve over time

TEACHING SEQUENCE:
Begin with the concept of public policy and its importance. Analyze the stages of the policy process: agenda setting through evaluation. Study policy actors and their roles in the process. Examine different types of policies with examples. Analyze the legislative process in detail. Study executive branch role: proposals, implementation, and regulation. Examine the bureaucracy''s implementation role and challenges. Analyze judicial influence on policy through interpretation and rulings. Study policy analysis: how to evaluate policy proposals and outcomes. Examine specific policy case studies in depth.

DIFFERENTIATION:
For struggling learners: Focus on the policy process with concrete examples, provide flowcharts of decision-making, use specific policy cases students care about, and simplify analytical frameworks.
For advanced learners: Conduct detailed policy analysis, research specific policy areas, examine implementation challenges, and develop policy proposals.

VOCABULARY:
Public policy, policy process, agenda setting, formulation, implementation, evaluation, regulatory policy, distributive policy, redistributive policy, mandate, discretion, incremental, bureaucracy

CONNECTION TO FUTURE LEARNING:
Policy understanding applies to all substantive government and economics topics. Analytical skills apply to evaluating any policy proposal. Process knowledge enables effective advocacy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Public Policy' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 3: ECONOMIC PRINCIPLES (4 topics)
-- ============================================================================

-- Topic 12.3.1: Scarcity and Choice
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Scarcity and Choice' AND grade_level_min = 12),
  'Scarcity and Choice (Grade 12) Topic Guide',
  'Teaching fundamental economic problem',
  'SCARCITY AND CHOICE - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should have basic understanding of economic concepts from prior courses. Knowledge of resources and their uses provides foundation. Understanding of decision-making helps apply economic reasoning.

LEARNING OBJECTIVES:
- Understand scarcity as the fundamental economic problem
- Analyze how individuals, businesses, and governments make choices under scarcity
- Apply opportunity cost reasoning to various decisions
- Understand economic systems'' different approaches to answering basic questions
- Evaluate trade-offs inherent in economic decisions
- Apply economic reasoning to personal, business, and policy decisions

KEY CONCEPTS:
1) Scarcity: Limited resources and unlimited wants creating the need for choice; universal across societies
2) Opportunity Cost: Value of the next best alternative foregone; true cost of any decision
3) Trade-offs: What must be given up to obtain something; guns vs. butter example
4) Factors of Production: Land, labor, capital, and entrepreneurship as basic economic resources
5) Economic Systems: Market, command, and mixed economies answering what, how, and for whom to produce

COMMON MISCONCEPTIONS:
- Believing scarcity means shortage when it refers to limited resources vs. unlimited wants
- Thinking opportunity cost equals monetary cost when it includes all foregone alternatives
- Assuming wealthy individuals or nations don''t face scarcity when everyone does
- Believing market economies are unplanned when planning occurs at individual and firm level
- Thinking economic decisions are purely rational when psychology affects choices

TEACHING SEQUENCE:
Begin with the concept of scarcity: limited resources, unlimited wants. Analyze the basic economic questions: what, how, and for whom to produce. Study opportunity cost with personal decision examples. Introduce production possibilities frontier to visualize trade-offs. Analyze factors of production and their roles. Compare economic systems: market, command, and mixed. Study how different systems answer basic economic questions. Examine marginal analysis: comparing additional costs and benefits. Apply economic reasoning to personal decisions. Connect individual choices to broader economic patterns.

DIFFERENTIATION:
For struggling learners: Use concrete personal examples, focus on opportunity cost with familiar decisions, provide visual representations of concepts, and build gradually to more abstract ideas.
For advanced learners: Analyze more complex trade-off scenarios, examine marginalism in depth, compare economic systems critically, and investigate behavioral economics challenges to rationality assumptions.

VOCABULARY:
Scarcity, choice, opportunity cost, trade-off, factors of production, land, labor, capital, entrepreneurship, production possibilities frontier, marginal analysis, economic system, market economy, command economy

CONNECTION TO FUTURE LEARNING:
Scarcity and choice provide foundation for all economic analysis. Opportunity cost reasoning applies throughout economics and personal finance. Economic systems framework helps compare economies.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scarcity and Choice' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic 12.3.2: Supply and Demand
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Supply and Demand' AND grade_level_min = 12),
  'Supply and Demand (Grade 12) Topic Guide',
  'Teaching market equilibrium',
  'SUPPLY AND DEMAND - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand scarcity and choice as foundations of economics. Knowledge of graphs and their interpretation is essential. Understanding of markets and prices provides practical context.

LEARNING OBJECTIVES:
- Analyze the law of demand and factors affecting quantity demanded
- Understand the law of supply and factors affecting quantity supplied
- Explain how equilibrium price and quantity are determined
- Evaluate effects of shifts in supply and demand
- Understand price controls and their economic effects
- Apply supply and demand analysis to real-world markets

KEY CONCEPTS:
1) Law of Demand: Inverse relationship between price and quantity demanded; demand curve slopes downward
2) Law of Supply: Direct relationship between price and quantity supplied; supply curve slopes upward
3) Market Equilibrium: Price where quantity supplied equals quantity demanded; tendency toward equilibrium
4) Shifting Curves: Factors that shift demand (income, preferences, related goods) and supply (costs, technology, expectations)
5) Price Controls: Price ceilings (maximum prices) and price floors (minimum prices); surpluses and shortages

COMMON MISCONCEPTIONS:
- Confusing movement along a curve with shift of the curve
- Believing equilibrium means prices never change when they constantly adjust
- Thinking supply and demand determine exact prices when they show tendencies
- Assuming price controls help intended beneficiaries when effects are often mixed
- Believing markets always work perfectly when market failures exist

TEACHING SEQUENCE:
Begin with the law of demand: price-quantity relationship. Graph the demand curve and interpret its meaning. Analyze factors that shift demand: income, preferences, prices of related goods, expectations, number of buyers. Study the law of supply: price-quantity relationship. Graph the supply curve and interpret its meaning. Analyze factors that shift supply: input costs, technology, expectations, number of sellers. Combine supply and demand to find equilibrium. Analyze effects of shifts in supply and demand. Study price ceilings and their effects: shortages, black markets. Study price floors and their effects: surpluses. Apply analysis to real-world examples: housing, labor, agricultural markets.

DIFFERENTIATION:
For struggling learners: Build graphs step by step, use concrete examples before abstractions, focus on one shift at a time, and provide practice with feedback.
For advanced learners: Analyze simultaneous shifts, examine elasticity concepts, investigate market failure situations, and apply to complex real-world cases.

VOCABULARY:
Demand, supply, law of demand, law of supply, quantity demanded, quantity supplied, demand curve, supply curve, equilibrium, equilibrium price, shortage, surplus, price ceiling, price floor, determinant

CONNECTION TO FUTURE LEARNING:
Supply and demand analysis applies throughout economics. Understanding equilibrium helps analyze market structures and policies. Price control analysis informs policy evaluation.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Supply and Demand' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic 12.3.3: Market Structures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Market Structures' AND grade_level_min = 12),
  'Market Structures (Grade 12) Topic Guide',
  'Teaching competition and monopoly',
  'MARKET STRUCTURES - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand supply and demand analysis and equilibrium. Knowledge of business and firm behavior provides context. Understanding of competition as a concept helps frame market structure analysis.

LEARNING OBJECTIVES:
- Compare and contrast different market structures: perfect competition, monopolistic competition, oligopoly, and monopoly
- Analyze how market structure affects pricing, output, and efficiency
- Evaluate barriers to entry and their effects on competition
- Understand antitrust policy and its goals
- Assess the role of government in promoting competition
- Apply market structure analysis to real-world industries

KEY CONCEPTS:
1) Perfect Competition: Many firms, identical products, easy entry/exit, price takers; theoretical benchmark
2) Monopolistic Competition: Many firms, differentiated products, some market power; common in retail
3) Oligopoly: Few firms, strategic interaction, significant barriers; automobiles, airlines
4) Monopoly: Single seller, no close substitutes, high barriers; natural monopolies and regulated utilities
5) Antitrust: Government policies to prevent monopoly power and promote competition; Sherman and Clayton Acts

COMMON MISCONCEPTIONS:
- Believing perfect competition commonly exists when it is a theoretical ideal
- Thinking monopoly always means evil corporations when some monopolies are efficient
- Assuming more competition is always better when some industries have natural monopoly characteristics
- Believing antitrust always helps consumers when effects can be complex
- Thinking market structure is fixed when it can change with technology and regulation

TEACHING SEQUENCE:
Begin with characteristics that define market structures: number of firms, product differentiation, barriers to entry. Study perfect competition as theoretical benchmark. Analyze monopolistic competition with retail examples. Examine oligopoly: interdependence, game theory basics, and examples. Study monopoly: sources of monopoly power and effects. Compare efficiency across market structures. Analyze barriers to entry: economies of scale, legal barriers, control of resources. Study antitrust policy: history, major legislation, enforcement. Apply market structure analysis to real industries. Evaluate regulatory approaches to market power.

DIFFERENTIATION:
For struggling learners: Use comparison charts for market structures, focus on key characteristics, provide industry examples for each type, and build concepts gradually.
For advanced learners: Analyze specific antitrust cases, examine game theory in oligopoly, investigate current competition policy debates, and research specific industries.

VOCABULARY:
Market structure, perfect competition, monopolistic competition, oligopoly, monopoly, barriers to entry, price taker, market power, product differentiation, economies of scale, antitrust, Sherman Act, Clayton Act

CONNECTION TO FUTURE LEARNING:
Market structure analysis applies to business and policy decisions. Competition policy affects many industries. Understanding market power helps evaluate economic news.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Market Structures' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic 12.3.4: Economic Indicators
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Economic Indicators' AND grade_level_min = 12),
  'Economic Indicators (Grade 12) Topic Guide',
  'Teaching GDP, inflation, and unemployment',
  'ECONOMIC INDICATORS - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand basic economic concepts including production and markets. Knowledge of mathematical concepts including percentages and growth rates is helpful. Understanding of current events provides context for discussing indicators.

LEARNING OBJECTIVES:
- Understand GDP as a measure of economic output and its components
- Analyze inflation: measurement, causes, and effects
- Evaluate unemployment: types, measurement, and significance
- Understand the business cycle and its phases
- Assess the limitations of economic indicators
- Apply indicator analysis to evaluate economic conditions

KEY CONCEPTS:
1) Gross Domestic Product: Total value of final goods and services produced; components (C+I+G+NX); real vs. nominal
2) Inflation: General rise in price level; measured by CPI and GDP deflator; effects on purchasing power and decisions
3) Unemployment: Types (frictional, structural, cyclical); measurement issues; relationship to economic health
4) Business Cycle: Expansion, peak, contraction, trough; recurring pattern of economic fluctuation
5) Indicator Limitations: What GDP doesn''t measure (inequality, unpaid work, environment); measurement challenges

COMMON MISCONCEPTIONS:
- Believing GDP measures well-being when it measures market production only
- Thinking all inflation is bad when moderate inflation is normal
- Assuming low unemployment rate means everyone who wants a job has one
- Believing the business cycle is predictable when timing is uncertain
- Thinking economic indicators tell the complete story when they have significant limitations

TEACHING SEQUENCE:
Begin with GDP: definition, components, and calculation approaches. Distinguish real from nominal GDP. Analyze GDP limitations: what it includes and excludes. Study inflation: definition, measurement (CPI), and effects. Analyze inflation''s effects on different groups. Study unemployment: definition, measurement, and types. Analyze relationships among indicators. Study the business cycle: phases and characteristics. Examine leading, coinciding, and lagging indicators. Analyze current economic conditions using indicators. Discuss limitations and alternative measures (HDI, etc.).

DIFFERENTIATION:
For struggling learners: Focus on major indicators with clear explanations, use current examples, provide visual representations of the business cycle, and connect to personal economic experiences.
For advanced learners: Analyze economic data directly, research indicator construction, examine alternative measures, and investigate relationships among indicators.

VOCABULARY:
GDP (Gross Domestic Product), real GDP, nominal GDP, inflation, CPI (Consumer Price Index), deflation, unemployment rate, frictional unemployment, structural unemployment, cyclical unemployment, business cycle, expansion, recession, depression

CONNECTION TO FUTURE LEARNING:
Indicator analysis applies to evaluating economic news and policy debates. Understanding business cycles helps with personal finance decisions. Macroeconomic concepts connect to monetary and fiscal policy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Economic Indicators' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 4: MONEY, BANKING, AND FINANCE (5 topics)
-- ============================================================================

-- Topic 12.4.1: Money and Banking
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Money and Banking' AND grade_level_min = 12),
  'Money and Banking (Grade 12) Topic Guide',
  'Teaching functions of money and banking system',
  'MONEY AND BANKING - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand basic economic concepts including exchange and markets. Knowledge of American history including banking controversies provides context. Understanding of basic mathematics supports financial calculations.

LEARNING OBJECTIVES:
- Analyze the functions of money: medium of exchange, store of value, and unit of account
- Understand the evolution of money from commodity to fiat money
- Examine the structure of the American banking system
- Understand how banks create money through fractional reserve banking
- Evaluate the role of banks in the economy
- Assess banking regulation and its purposes

KEY CONCEPTS:
1) Functions of Money: Medium of exchange, store of value, unit of account; characteristics of good money
2) Types of Money: Commodity money, representative money, fiat money; evolution of money systems
3) Banking System: Commercial banks, savings institutions, credit unions; Federal Reserve System structure
4) Money Creation: Fractional reserve banking, deposit multiplication, money multiplier
5) Bank Regulation: FDIC insurance, reserve requirements, and other regulations protecting depositors and system stability

COMMON MISCONCEPTIONS:
- Believing banks simply hold deposits when they lend most of deposited funds
- Thinking money must be backed by gold when modern money is fiat
- Assuming bank failures are impossible with deposit insurance
- Believing the Fed directly prints money when money creation is more complex
- Thinking cash is the only form of money when most money is digital

TEACHING SEQUENCE:
Begin with the problems of barter and the need for money. Analyze the three functions of money with examples. Trace the evolution of money from commodity to fiat. Study the structure of the U.S. banking system. Introduce the Federal Reserve System and its components. Analyze how banks operate: deposits, loans, and the spread. Study fractional reserve banking and money creation. Calculate the money multiplier and its effects. Examine bank regulation: reserve requirements, deposit insurance, and supervision. Analyze the 2008 financial crisis and regulatory responses.

DIFFERENTIATION:
For struggling learners: Use concrete examples of money functions, build banking concepts step by step, provide visual representations of money creation, and connect to personal banking experiences.
For advanced learners: Analyze the 2008 financial crisis in depth, research banking regulation debates, examine cryptocurrency challenges to traditional money, and investigate international banking.

VOCABULARY:
Money, medium of exchange, store of value, unit of account, fiat money, commodity money, fractional reserve banking, money supply, M1, M2, FDIC, reserve requirement, money multiplier, commercial bank

CONNECTION TO FUTURE LEARNING:
Banking understanding connects to monetary policy. Money creation explains inflation dynamics. Financial stability concepts inform current debates.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Money and Banking' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic 12.4.2: The Federal Reserve
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Federal Reserve' AND grade_level_min = 12),
  'The Federal Reserve (Grade 12) Topic Guide',
  'Teaching monetary policy and tools',
  'THE FEDERAL RESERVE - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand money and banking fundamentals. Knowledge of economic indicators helps evaluate Fed actions. Understanding of the business cycle provides context for monetary policy goals.

LEARNING OBJECTIVES:
- Analyze the Federal Reserve System''s structure and functions
- Understand the tools of monetary policy: open market operations, discount rate, and reserve requirements
- Evaluate expansionary and contractionary monetary policy
- Examine the Federal Reserve''s dual mandate: stable prices and maximum employment
- Assess debates about Federal Reserve independence and accountability
- Apply monetary policy analysis to current economic conditions

KEY CONCEPTS:
1) Fed Structure: Board of Governors, Federal Open Market Committee, twelve regional banks, and member banks
2) Monetary Policy Tools: Open market operations (buying/selling securities), discount rate, reserve requirements, interest on reserves
3) Expansionary Policy: Increasing money supply to stimulate economy; used during recessions
4) Contractionary Policy: Decreasing money supply to slow inflation; used during inflationary periods
5) Fed Independence: Arguments for independence from political pressure and for democratic accountability

COMMON MISCONCEPTIONS:
- Believing the Fed directly sets interest rates when it influences them through monetary policy
- Thinking the Fed prints money when money creation involves banks
- Assuming the Fed can precisely control the economy when effects are uncertain and lagged
- Believing the Fed is a government agency when it has unique public-private structure
- Thinking low interest rates are always good when they can fuel inflation or asset bubbles

TEACHING SEQUENCE:
Begin with the Fed''s history and why it was created. Analyze the Fed''s structure: Board, FOMC, regional banks. Study the Fed''s functions: monetary policy, bank supervision, financial stability. Analyze open market operations: buying and selling securities. Study the discount rate and its role. Examine reserve requirements and interest on reserves. Compare expansionary and contractionary policies. Analyze how monetary policy affects the economy: interest rates, lending, spending. Study the Fed''s dual mandate and its challenges. Examine Fed independence debates. Apply monetary policy analysis to current conditions.

DIFFERENTIATION:
For struggling learners: Use diagrams of Fed structure and policy tools, focus on basic expansionary/contractionary distinction, provide step-by-step policy analysis, and connect to current news.
For advanced learners: Analyze FOMC statements and minutes, research unconventional monetary policy, examine central bank independence comparatively, and evaluate current Fed debates.

VOCABULARY:
Federal Reserve, Fed, Board of Governors, FOMC, monetary policy, open market operations, discount rate, federal funds rate, reserve requirement, expansionary policy, contractionary policy, dual mandate, quantitative easing

CONNECTION TO FUTURE LEARNING:
Fed policy affects interest rates and inflation. Understanding monetary policy helps evaluate economic news. Central bank decisions affect personal finance.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Federal Reserve' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic 12.4.3: Fiscal Policy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Fiscal Policy' AND grade_level_min = 12),
  'Fiscal Policy (Grade 12) Topic Guide',
  'Teaching government taxing and spending',
  'FISCAL POLICY - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand government structure and the budget process. Knowledge of economic indicators helps evaluate fiscal policy. Understanding of monetary policy enables comparison.

LEARNING OBJECTIVES:
- Analyze fiscal policy tools: government spending and taxation
- Understand expansionary and contractionary fiscal policy
- Evaluate the federal budget process and its political dimensions
- Examine the national debt and its implications
- Compare fiscal and monetary policy as stabilization tools
- Assess debates about fiscal policy effectiveness and constraints

KEY CONCEPTS:
1) Fiscal Policy Tools: Government spending and taxation as means to influence the economy
2) Expansionary Policy: Increased spending or decreased taxes to stimulate economy during recession
3) Contractionary Policy: Decreased spending or increased taxes to slow inflation
4) Budget Process: Presidential proposal, congressional action, appropriations, and political conflicts
5) National Debt: Accumulated deficits; interest costs; debates about sustainability

COMMON MISCONCEPTIONS:
- Believing budget must be balanced annually when deficits can be appropriate in recessions
- Thinking government spending is always wasteful when it provides valuable public goods
- Assuming tax cuts always pay for themselves when evidence is limited
- Believing national debt works like household debt when differences exist
- Thinking fiscal policy effects are immediate when lags exist

TEACHING SEQUENCE:
Begin with the concept of fiscal policy and its goals. Analyze government spending categories: mandatory and discretionary. Study the tax system: types of taxes, progressivity, and economic effects. Compare expansionary and contractionary fiscal policy. Analyze the multiplier effect of government spending. Study the budget process: proposal, debate, and enactment. Examine deficits and surpluses: causes and effects. Analyze the national debt: size, growth, and interest costs. Compare fiscal and monetary policy as stabilization tools. Evaluate current fiscal policy debates.

DIFFERENTIATION:
For struggling learners: Focus on basic expansionary/contractionary distinction, use visual budget representations, provide clear examples of policy effects, and connect to current budget debates.
For advanced learners: Analyze actual budget documents, research fiscal policy debates, examine crowding out and other effects, and evaluate fiscal sustainability projections.

VOCABULARY:
Fiscal policy, government spending, taxation, expansionary policy, contractionary policy, deficit, surplus, national debt, budget, appropriation, mandatory spending, discretionary spending, multiplier, crowding out

CONNECTION TO FUTURE LEARNING:
Fiscal policy understanding helps evaluate budget debates. Tax and spending decisions affect everyone. Comparing fiscal and monetary policy completes macroeconomic framework.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fiscal Policy' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic 12.4.4: Personal Finance
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Personal Finance' AND grade_level_min = 12),
  'Personal Finance (Grade 12) Topic Guide',
  'Teaching budgeting, saving, and investing',
  'PERSONAL FINANCE - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand basic economic concepts including opportunity cost. Knowledge of interest and percentages supports financial calculations. Understanding of banking provides context for financial products.

LEARNING OBJECTIVES:
- Develop skills in budgeting and financial planning
- Understand saving and investment options and their characteristics
- Evaluate credit and debt management
- Analyze insurance and risk management
- Understand basic tax concepts and planning
- Apply financial planning to life decisions

KEY CONCEPTS:
1) Budgeting: Tracking income and expenses, setting financial goals, living within means
2) Saving and Investing: Emergency funds, compound interest, stocks, bonds, mutual funds, retirement accounts
3) Credit and Debt: Credit scores, interest rates, credit cards, loans, debt management strategies
4) Insurance: Risk management, types of insurance, cost-benefit analysis of coverage
5) Taxes: Income tax basics, withholding, deductions, tax planning

COMMON MISCONCEPTIONS:
- Believing budgeting is restrictive rather than empowering
- Thinking investing is gambling when informed investing differs from speculation
- Assuming credit cards are always bad when responsible use builds credit
- Believing insurance is unnecessary until something goes wrong
- Thinking taxes are too complicated for ordinary people to understand

TEACHING SEQUENCE:
Begin with the importance of financial literacy. Study budgeting: tracking, planning, and adjusting. Analyze saving: purposes, strategies, and compound interest effects. Introduce investing: types of investments, risk-return trade-offs, diversification. Study retirement planning: employer plans, IRAs, and the power of starting early. Analyze credit: how it works, credit scores, and responsible use. Study debt management: good and bad debt, repayment strategies. Examine insurance: types, purposes, and decision-making. Study basic tax concepts: income, deductions, credits. Apply concepts to life scenarios: education, housing, career decisions.

DIFFERENTIATION:
For struggling learners: Focus on practical, immediately applicable skills like budgeting, use interactive tools and simulations, provide real-life scenarios, and break down complex topics.
For advanced learners: Analyze specific investment options in depth, research tax planning strategies, examine financial planning for specific goals, and investigate financial industry careers.

VOCABULARY:
Budget, income, expenses, saving, investing, compound interest, stock, bond, mutual fund, 401(k), IRA, credit score, interest rate, APR, principal, premium, deductible, withholding, deduction

CONNECTION TO FUTURE LEARNING:
Personal finance skills apply throughout life. Financial literacy essential for adult success. Economic concepts become practical through personal finance.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Personal Finance' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic 12.4.5: International Trade
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'International Trade' AND grade_level_min = 12),
  'International Trade (Grade 12) Topic Guide',
  'Teaching global economic connections',
  'INTERNATIONAL TRADE - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand supply and demand and basic economic principles. Knowledge of comparative advantage helps explain trade benefits. Understanding of government policy and economic indicators provides context.

LEARNING OBJECTIVES:
- Understand comparative advantage as the basis for trade
- Analyze the benefits and costs of international trade
- Evaluate trade policy options: free trade, tariffs, and quotas
- Understand exchange rates and their effects
- Examine trade agreements and international economic institutions
- Assess current trade debates and policies

KEY CONCEPTS:
1) Comparative Advantage: Countries benefit by specializing in goods they produce at lowest opportunity cost
2) Trade Benefits: Lower prices, greater variety, competition, and efficiency gains from trade
3) Trade Barriers: Tariffs (taxes on imports), quotas (quantity limits), and other restrictions; their effects
4) Exchange Rates: Currency values affect trade; appreciation/depreciation impacts
5) Trade Policy: Free trade agreements, WTO rules, protectionism debates, and current controversies

COMMON MISCONCEPTIONS:
- Believing trade is zero-sum when both parties can benefit
- Thinking imports are bad and exports good when imports provide benefits
- Assuming free trade helps everyone when adjustment costs exist
- Believing manufacturing loss is solely due to trade when technology matters more
- Thinking trade deficits are always harmful when their significance is debated

TEACHING SEQUENCE:
Begin with why countries trade: comparative advantage. Analyze trade benefits: lower prices, variety, efficiency. Study who gains and loses from trade domestically. Analyze trade barriers: tariffs, quotas, and their effects. Examine arguments for protection: infant industry, national security, jobs. Study exchange rates: determination and effects on trade. Analyze the balance of trade and its significance. Study trade agreements: USMCA, TPP, WTO. Examine current trade policy debates and controversies. Apply trade concepts to evaluate policy proposals.

DIFFERENTIATION:
For struggling learners: Use concrete examples of trade products, focus on comparative advantage with simple examples, provide visual representations of trade effects, and connect to familiar international brands.
For advanced learners: Analyze trade data, research specific trade agreements, examine currency markets, and evaluate competing perspectives on trade policy.

VOCABULARY:
International trade, comparative advantage, absolute advantage, exports, imports, tariff, quota, trade deficit, trade surplus, exchange rate, appreciation, depreciation, free trade, protectionism, WTO, USMCA

CONNECTION TO FUTURE LEARNING:
Trade concepts help evaluate economic news and policy debates. Understanding global connections essential for citizenship. Trade policy affects jobs, prices, and economic opportunity.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'International Trade' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF GRADE 12 HISTORY TOPIC PROMPTS
-- Total: 17 topics across 4 units
-- ============================================================================
