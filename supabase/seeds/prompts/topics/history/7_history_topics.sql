-- ============================================================================
-- GRADE 7 HISTORY TOPIC PROMPTS
-- Comprehensive teaching guides for all Grade 7 History topics
-- 18 topics across 4 units: Ancient Civilizations, Medieval World,
-- Geography and Culture, Civics and Government
-- ============================================================================

-- ============================================================================
-- UNIT 1: ANCIENT CIVILIZATIONS (5 topics)
-- ============================================================================

-- Topic 7.1.1: Early Humans
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Early Humans' AND grade_level_min = 7),
  'Early Humans (Grade 7) Topic Guide',
  'Teaching human migration and development of early societies',
  'EARLY HUMANS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have basic timeline reading skills, understand concepts of survival and adaptation, and have foundational knowledge of prehistoric time periods. Familiarity with geographic concepts including continents and climate zones will support learning about human migration patterns.

LEARNING OBJECTIVES:
- Trace the evolution of early hominids leading to Homo sapiens
- Map human migration patterns out of Africa across continents
- Analyze how early humans adapted to diverse environments
- Compare and contrast hunter-gatherer societies with early agricultural settlements
- Evaluate the significance of tool development in human progress
- Understand the Neolithic Revolution and its lasting impact

KEY CONCEPTS:
1) Hominid Evolution: The progression from early hominids (Australopithecus, Homo habilis, Homo erectus) to modern Homo sapiens over millions of years, emphasizing key adaptations like bipedalism and brain development
2) Out of Africa Theory: Scientific evidence supporting human origin in Africa and subsequent migration to populate all continents, driven by climate changes and resource availability
3) Hunter-Gatherer Lifestyle: Nomadic societies following animal migrations and seasonal plant availability, developing tools and social structures for survival
4) Neolithic Revolution: The transformative shift from hunting-gathering to agriculture, enabling permanent settlements, surplus food, and complex societies
5) Cultural Development: The emergence of language, art, religious beliefs, and social hierarchies in early human communities

COMMON MISCONCEPTIONS:
- Believing evolution was linear rather than branching with many hominid species existing simultaneously
- Thinking early humans lived with dinosaurs (separated by 65 million years)
- Assuming the transition to agriculture happened quickly rather than over thousands of years
- Believing hunter-gatherers had poor quality of life when evidence suggests otherwise
- Confusing human adaptation with improvement suggesting modern humans are "better"

TEACHING SEQUENCE:
Begin with engaging questions about what makes us human and what evidence we have of our origins. Use visual timelines showing the vast expanse of human prehistory compared to recorded history. Introduce key hominid species with skull comparisons and tool artifacts. Map migration routes using climate and geography data to explain why humans moved. Examine hunter-gatherer life through archaeological evidence including cave paintings, tools, and burial sites. Explore the Neolithic Revolution by comparing before-and-after scenarios for human communities. Have students analyze primary sources like cave art and archaeological findings. Create connections between prehistoric innovations (fire, tools, agriculture) and modern life. Conclude by discussing ongoing archaeological discoveries that continue to reshape our understanding.

DIFFERENTIATION:
For struggling learners: Use visual timelines with clear milestones, provide artifact images for concrete learning, focus on key concepts with graphic organizers, and use comparison charts for hunter-gatherer versus agricultural life.
For advanced learners: Analyze competing theories about human origins, research specific archaeological sites like Olduvai Gorge or Lascaux, investigate DNA evidence in human migration studies, and explore debates about the costs and benefits of agricultural transition.

VOCABULARY:
Hominid, Homo sapiens, bipedal, artifact, archaeology, nomadic, hunter-gatherer, Neolithic Revolution, domestication, migration, adaptation, Paleolithic, evolution, extinct, prehistoric, settlement, agriculture, civilization

CONNECTION TO FUTURE LEARNING:
Understanding early human development provides essential context for studying ancient civilizations. The shift to agriculture directly connects to the rise of Mesopotamia and Egypt. Social structures developed in early settlements foreshadow complex civilizations. Migration patterns help explain cultural diffusion throughout history.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Early Humans' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.1.2: Ancient Mesopotamia
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Ancient Mesopotamia' AND grade_level_min = 7),
  'Ancient Mesopotamia (Grade 7) Topic Guide',
  'Teaching the cradle of civilization and early innovations',
  'ANCIENT MESOPOTAMIA - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand the Neolithic Revolution and agricultural development, have basic map reading skills to locate the Middle East region, and comprehend how geography influences settlement. Prior knowledge of river systems and their importance to early civilizations is helpful.

LEARNING OBJECTIVES:
- Locate Mesopotamia and explain why the Tigris-Euphrates region supported civilization
- Identify major Mesopotamian civilizations including Sumer, Babylon, and Assyria
- Analyze key innovations including writing, the wheel, and mathematical systems
- Evaluate the Code of Hammurabi as early written law
- Explain the development of city-states and their political structures
- Understand religious beliefs and their role in Mesopotamian society

KEY CONCEPTS:
1) River Valley Civilization: The Tigris and Euphrates Rivers created fertile land through flooding, enabling agriculture that supported dense populations and urban development
2) City-States: Independent political units centered on cities like Ur, Uruk, and Babylon, each with its own government, army, and religious practices
3) Cuneiform Writing: The world''s first writing system, using wedge-shaped marks on clay tablets, enabling record-keeping, literature, and historical documentation
4) Code of Hammurabi: Early codified laws establishing principles of justice, social hierarchy, and punishment that influenced later legal systems
5) Innovations: Mesopotamians invented the wheel, developed the base-60 number system (still used in time-keeping), created the first schools, and advanced astronomy and mathematics

COMMON MISCONCEPTIONS:
- Assuming one unified empire rather than succession of different civilizations and city-states
- Believing cuneiform was like an alphabet rather than a syllabic system
- Thinking Hammurabi''s Code was entirely original rather than codifying existing practices
- Confusing Mesopotamia with ancient Egypt due to similar river valley characteristics
- Assuming all Mesopotamians were the same culture rather than diverse peoples

TEACHING SEQUENCE:
Open with the phrase "Cradle of Civilization" and investigate what it means. Use maps to locate Mesopotamia in modern Iraq, showing the Tigris-Euphrates Rivers. Explore how unpredictable flooding created both challenges and opportunities, requiring irrigation systems and cooperation. Examine the rise of city-states by analyzing urban features: ziggurats, walls, specialized districts. Introduce cuneiform through hands-on clay tablet activities where students write their names. Analyze primary sources from the Epic of Gilgamesh to understand Mesopotamian values. Study the Code of Hammurabi, comparing punishments to modern justice concepts. Explore Mesopotamian religion, astronomy, and mathematics. Trace the succession of Sumerian, Babylonian, and Assyrian dominance. Connect Mesopotamian innovations to modern life.

DIFFERENTIATION:
For struggling learners: Focus on key innovations with visual representations, use comparison charts between city-states, provide simplified maps with clear labels, and emphasize concrete artifacts over abstract concepts.
For advanced learners: Analyze specific laws from Hammurabi''s Code and their social implications, research the Epic of Gilgamesh themes and literary techniques, investigate archaeological discoveries at Ur, and compare Mesopotamian and Egyptian civilizations.

VOCABULARY:
Mesopotamia, Tigris, Euphrates, civilization, city-state, cuneiform, ziggurat, Hammurabi, Sumer, Babylon, Assyria, irrigation, scribe, empire, polytheism, Epic of Gilgamesh, fertile crescent, dynasty, surplus, tribute

CONNECTION TO FUTURE LEARNING:
Mesopotamian innovations in writing, law, and government influenced all subsequent civilizations. Understanding city-states prepares students for Greek politics. Legal codes connect to Roman law and modern justice systems. Religious concepts and mythology influence later cultures and literature.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ancient Mesopotamia' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.1.3: Ancient Egypt
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Ancient Egypt' AND grade_level_min = 7),
  'Ancient Egypt (Grade 7) Topic Guide',
  'Teaching the Nile civilization, pharaohs, and pyramids',
  'ANCIENT EGYPT - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand how river valleys support civilization development, have knowledge of agricultural societies and surplus production, and be familiar with basic concepts of government and social hierarchy. Understanding of timelines spanning thousands of years is important.

LEARNING OBJECTIVES:
- Explain how the Nile River shaped Egyptian civilization and daily life
- Describe the social hierarchy and role of pharaohs in Egyptian government
- Analyze Egyptian religious beliefs including afterlife concepts and polytheism
- Evaluate achievements in architecture, art, medicine, and writing
- Compare and contrast Old, Middle, and New Kingdom periods
- Understand the preservation and archaeological discovery of Egyptian artifacts

KEY CONCEPTS:
1) Gift of the Nile: Predictable annual flooding deposited fertile soil, enabling reliable agriculture without complex irrigation, supporting stable civilization for 3,000+ years
2) Divine Kingship: Pharaohs were considered living gods, combining political, religious, and military authority in unified government over Upper and Lower Egypt
3) Afterlife Beliefs: Egyptians believed in eternal life requiring preserved bodies and grave goods, driving mummification practices and pyramid construction
4) Hieroglyphics: Pictographic writing system used for religious texts, monuments, and administration, decoded through the Rosetta Stone
5) Monumental Architecture: Pyramids, temples, and tombs demonstrated Egyptian engineering, mathematical precision, and ability to organize massive labor forces

COMMON MISCONCEPTIONS:
- Believing slaves built the pyramids rather than paid workers and farmers during flood season
- Thinking all pharaohs were buried in pyramids when most used hidden tombs
- Assuming Egypt was isolated when it traded extensively with Nubia, Mesopotamia, and the Mediterranean
- Confusing pharaohs from different periods as contemporaries across 3,000 years
- Believing mummification was available to all when it was mainly for elites

TEACHING SEQUENCE:
Begin by locating Egypt on maps, emphasizing the narrow fertile strip along the Nile surrounded by desert. Explore the flooding cycle and its impact on agriculture, calendar development, and religious beliefs. Examine the unification of Upper and Lower Egypt and the concept of divine pharaohs. Study the social pyramid from pharaohs to slaves, analyzing roles and daily life at each level. Investigate religious beliefs through artifacts, temple imagery, and the Book of the Dead. Explore mummification and burial practices, connecting to afterlife beliefs. Analyze pyramid construction through evidence of labor organization, tools, and engineering. Study hieroglyphics and the Rosetta Stone discovery. Compare key periods and pharaohs including Khufu, Hatshepsut, Akhenaten, Tutankhamun, and Ramesses II. Discuss archaeological discoveries and preservation challenges.

DIFFERENTIATION:
For struggling learners: Use visual diagrams of social hierarchy, focus on concrete artifacts and images, provide simplified timelines of major periods, and use comparison charts with Mesopotamia.
For advanced learners: Research specific pharaohs in depth, analyze primary source translations from the Book of the Dead, investigate Akhenaten''s religious revolution, and explore ongoing debates about pyramid construction methods.

VOCABULARY:
Pharaoh, Nile, hieroglyphics, papyrus, mummification, sarcophagus, pyramid, sphinx, dynasty, Upper Egypt, Lower Egypt, Book of the Dead, Rosetta Stone, afterlife, polytheism, vizier, scribe, canopic jars, tomb, archaeological

CONNECTION TO FUTURE LEARNING:
Egyptian civilization influenced Greek culture, especially in architecture, medicine, and mathematics. Hellenistic Egypt under the Ptolemies bridges to Roman history. Archaeological methods used in Egypt apply to all historical study. Religious concepts connect to comparative religion studies.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ancient Egypt' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.1.4: Ancient Greece
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Ancient Greece' AND grade_level_min = 7),
  'Ancient Greece (Grade 7) Topic Guide',
  'Teaching Greek democracy, philosophy, and achievements',
  'ANCIENT GREECE - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have foundational knowledge of ancient civilizations, understand basic government concepts, and be able to locate the Mediterranean region on maps. Familiarity with mythology and storytelling traditions enhances engagement with Greek cultural achievements.

LEARNING OBJECTIVES:
- Explain how Greek geography influenced the development of independent city-states
- Compare and contrast Athenian democracy and Spartan oligarchy
- Analyze the development and limitations of Athenian democracy
- Evaluate Greek contributions to philosophy, science, art, and architecture
- Understand the Persian Wars and their significance for Greek identity
- Trace Alexander the Great''s conquests and the spread of Hellenistic culture

KEY CONCEPTS:
1) Polis and City-States: Mountainous terrain created isolated communities developing independent governments, cultures, and rivalries rather than unified empire
2) Athenian Democracy: Direct democracy where male citizens voted on laws, served on juries, and held offices, establishing precedents for democratic government
3) Greek Philosophy: Socrates, Plato, and Aristotle developed systematic approaches to ethics, politics, and knowledge that shaped Western thought
4) Classical Culture: Greek achievements in drama, sculpture, architecture (columns and temples), literature, and the Olympic Games influenced all subsequent Western culture
5) Hellenistic World: Alexander''s conquests spread Greek culture from Egypt to India, creating a fusion of Greek and Eastern influences

COMMON MISCONCEPTIONS:
- Believing Greek democracy was like modern democracy when only male citizens (10-15% of population) could participate
- Assuming all city-states were democratic when most had various government forms
- Thinking Greece was unified when city-states often warred against each other
- Confusing Greek mythology as literal beliefs rather than cultural narratives
- Assuming the Parthenon was always white rather than brightly painted

TEACHING SEQUENCE:
Open with maps showing Greek geography and how mountains, islands, and sea shaped settlement patterns. Compare Athens and Sparta as contrasting city-state models, examining government, education, and values. Analyze Athenian democracy in detail, identifying who could participate and limitations by today''s standards. Examine the Persian Wars (Marathon, Thermopylae, Salamis) and their impact on Greek identity and unity. Study Greek philosophy through key ideas from Socrates, Plato, and Aristotle. Explore cultural achievements including theater (tragedy and comedy), architecture (Parthenon), sculpture, and the Olympics. Analyze Greek mythology''s role in explaining the world and teaching values. Trace Alexander''s conquests and the spread of Hellenistic culture. Connect Greek ideas to modern democracy, philosophy, art, and architecture.

DIFFERENTIATION:
For struggling learners: Focus on Athens versus Sparta comparisons using graphic organizers, use visual timelines of major events, provide simplified philosophy concepts, and emphasize concrete cultural artifacts.
For advanced learners: Read primary source excerpts from Plato or Herodotus, analyze the trial of Socrates in depth, compare Athenian and modern democracy critically, and research Alexander''s military tactics.

VOCABULARY:
Polis, city-state, democracy, oligarchy, Athens, Sparta, agora, acropolis, philosophy, Socrates, Plato, Aristotle, Parthenon, Olympics, tragedy, comedy, Persian Wars, Marathon, Thermopylae, Hellenistic, Alexander the Great, citizen, assembly

CONNECTION TO FUTURE LEARNING:
Greek democracy directly influenced Roman republican government and modern democratic systems. Philosophy foundations continue through the Middle Ages and Enlightenment. Greek and Roman culture together form classical foundations for Western civilization. Alexander''s empire sets the stage for the Roman rise to power.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ancient Greece' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.1.5: Ancient Rome
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Ancient Rome' AND grade_level_min = 7),
  'Ancient Rome (Grade 7) Topic Guide',
  'Teaching the Roman Republic, Empire, and legacy',
  'ANCIENT ROME - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand Greek civilization and its contributions, have knowledge of republican and imperial government concepts, and be able to read maps of the Mediterranean and Europe. Understanding of social hierarchy and military conquest provides important context.

LEARNING OBJECTIVES:
- Trace Rome''s development from monarchy through republic to empire
- Analyze the structure of Roman republican government including separation of powers
- Evaluate Julius Caesar''s role in the transition from republic to empire
- Describe the Pax Romana and its impact on trade, culture, and development
- Explain Roman contributions to law, engineering, and architecture
- Understand the factors contributing to Rome''s decline and fall

KEY CONCEPTS:
1) Roman Republic: Government with elected officials, Senate, and citizen assemblies, featuring checks and balances that influenced the American Constitution
2) Roman Expansion: Military conquest spread Roman control throughout the Mediterranean, creating infrastructure including roads, aqueducts, and unified law
3) Julius Caesar and Augustus: The transition from republic to empire through civil war, assassination, and the establishment of imperial rule
4) Pax Romana: Two centuries of relative peace and prosperity enabling trade, cultural exchange, and development throughout the empire
5) Roman Legacy: Contributions to law (innocent until proven guilty, right to trial), architecture (arches, domes, concrete), language (Latin roots), and governance influenced Western civilization

COMMON MISCONCEPTIONS:
- Thinking Rome was always an empire rather than evolving through monarchy, republic, and imperial phases
- Assuming gladiator fights always ended in death when many gladiators survived multiple matches
- Believing Rome fell suddenly rather than declining over centuries
- Confusing Roman and Greek mythology as identical rather than adapted
- Thinking all residents of Rome were citizens when many were slaves or non-citizen residents

TEACHING SEQUENCE:
Begin with Rome''s legendary founding and early monarchy period. Analyze the Roman Republic''s structure, comparing consuls, Senate, tribunes, and assemblies to modern separation of powers. Trace Roman expansion through military conquests and treatment of conquered peoples. Examine the Punic Wars with Carthage and Hannibal''s famous Alpine crossing. Study the late republic''s crises: growing inequality, civil wars, and Julius Caesar''s rise and assassination. Analyze Augustus''s establishment of the empire and the Pax Romana. Explore Roman achievements in engineering, architecture, law, and daily life. Examine the Roman army''s organization and role in maintaining empire. Trace the factors contributing to decline: overexpansion, economic problems, invasions, and political instability. Connect Roman influences to modern government, language, and culture.

DIFFERENTIATION:
For struggling learners: Use timelines to clarify republic versus empire periods, focus on key figures (Caesar, Augustus) with visual biographies, provide graphic organizers comparing Roman and American government, and emphasize concrete achievements.
For advanced learners: Analyze primary sources from Roman historians, compare republican decline to modern political concerns, research specific Roman innovations in depth, and examine different historical interpretations of Rome''s fall.

VOCABULARY:
Republic, empire, Senate, consul, tribune, patrician, plebeian, legion, Pax Romana, Julius Caesar, Augustus, Colosseum, aqueduct, Latin, gladiator, Punic Wars, Hannibal, emperor, civic, veto, forum, infrastructure

CONNECTION TO FUTURE LEARNING:
Rome''s fall leads directly to the Medieval period and feudalism. Roman law foundations persist in modern legal systems. The split between Western and Eastern Rome (Byzantine) shapes medieval and modern Europe. Latin roots appear throughout European languages and scientific terminology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ancient Rome' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 2: MEDIEVAL WORLD (5 topics)
-- ============================================================================

-- Topic 7.2.1: The Fall of Rome
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Fall of Rome' AND grade_level_min = 7),
  'The Fall of Rome (Grade 7) Topic Guide',
  'Teaching the causes and effects of Rome''s decline',
  'THE FALL OF ROME - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have comprehensive understanding of the Roman Empire''s structure, achievements, and geographical extent. Knowledge of the Pax Romana, Roman military organization, and the Empire''s political system is essential for understanding the factors contributing to decline.

LEARNING OBJECTIVES:
- Identify and analyze multiple causes of Rome''s decline including political, economic, social, and military factors
- Explain the role of Germanic invasions in Rome''s fall
- Differentiate between the fall of Western Rome and the continuation of the Byzantine Empire
- Evaluate the consequences of Rome''s fall for Western Europe
- Analyze the transition from Roman to medieval society
- Understand historiographical debates about when and why Rome fell

KEY CONCEPTS:
1) Political Instability: Frequent assassinations, civil wars, and rapid succession of emperors weakened central authority and military loyalty
2) Economic Decline: Heavy taxation, inflation, decreased trade, and reliance on slave labor undermined economic vitality
3) Military Challenges: Overextension of borders, reliance on Germanic mercenaries, and constant pressure from invasions strained resources
4) Social Changes: Declining civic participation, population decrease, and movement from cities to rural estates weakened urban society
5) Division of Empire: Constantine''s decision to split the empire and move the capital to Constantinople created two distinct paths for East and West

COMMON MISCONCEPTIONS:
- Believing Rome fell on a specific date rather than declining over centuries
- Thinking barbarian invasions were the sole cause rather than one factor among many
- Assuming the entire Roman Empire fell when the Eastern (Byzantine) Empire continued for nearly 1,000 more years
- Viewing the fall as entirely negative when it also enabled new developments
- Believing Germanic peoples destroyed Roman culture rather than often adopting and adapting it

TEACHING SEQUENCE:
Begin by contrasting Rome at its height with descriptions of 5th-century Rome. Introduce the concept of historical causation with multiple interconnected factors. Analyze political instability through specific examples of emperors and civil conflicts. Examine economic problems including taxation, inflation, and trade decline. Study the military challenges of defending vast borders and the increasing reliance on Germanic troops. Explore the migration period and key Germanic groups (Visigoths, Vandals, Ostrogoths, Huns). Trace the final decades leading to 476 CE and Romulus Augustulus. Compare the Western fall with Byzantine continuation. Analyze immediate consequences: urban decline, loss of centralized government, and fragmentation. Discuss historiographical perspectives on Rome''s fall and why historians continue to debate it.

DIFFERENTIATION:
For struggling learners: Use cause-effect graphic organizers, focus on key dates and events with visual timelines, provide comparison charts of Rome at its height versus decline, and simplify multiple causes into categories.
For advanced learners: Read primary sources describing Rome''s decline, compare historical interpretations (Gibbon, modern historians), analyze whether Rome "fell" or "transformed," and research the continuation of Roman influence in medieval society.

VOCABULARY:
Decline, barbarian, Germanic, Visigoths, Vandals, Huns, Byzantine, Constantinople, inflation, mercenary, sack of Rome, Romulus Augustulus, migration, transformation, Late Antiquity, fragmentation, continuity, disruption

CONNECTION TO FUTURE LEARNING:
Understanding Rome''s fall is essential for comprehending the medieval period. The power vacuum created by Roman decline enables feudalism''s rise. The Byzantine Empire continues classical traditions that later influence the Renaissance. Germanic kingdoms establish foundations for modern European nations.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Fall of Rome' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.2.2: Feudalism
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Feudalism' AND grade_level_min = 7),
  'Feudalism (Grade 7) Topic Guide',
  'Teaching the social hierarchy of medieval Europe',
  'FEUDALISM - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand the fall of Rome and the resulting power vacuum in Western Europe. Knowledge of agricultural societies and the need for protection and order provides context for why feudalism developed. Basic understanding of social hierarchy concepts is helpful.

LEARNING OBJECTIVES:
- Explain how feudalism emerged as a response to the collapse of central authority
- Diagram the feudal hierarchy from king through lords, knights, and peasants
- Describe the mutual obligations between lords and vassals
- Analyze the manorial system and peasant life including serfdom
- Compare the roles and lives of different social classes
- Evaluate the strengths and weaknesses of the feudal system

KEY CONCEPTS:
1) Feudal Hierarchy: A pyramidal social structure where land was granted in exchange for loyalty and military service, from kings to lords to knights to peasants
2) Lord-Vassal Relationship: A mutual contract where lords provided land (fiefs) and protection while vassals provided military service and loyalty
3) Manor System: Self-sufficient agricultural estates where peasants worked the land in exchange for protection and housing
4) Serfdom: A condition between slavery and freedom where peasants were bound to the land, owing labor to their lord but retaining some rights
5) Knighthood: A military and social class trained from youth in combat and chivalry, providing cavalry forces for lords

COMMON MISCONCEPTIONS:
- Believing feudalism was a unified system when it varied greatly by region and time
- Thinking serfs were slaves when they had specific rights including marriage and property ownership
- Assuming everyone fit neatly into categories when many exceptions existed
- Believing knights spent all their time in combat rather than mostly managing estates
- Thinking feudalism disappeared suddenly rather than declining gradually

TEACHING SEQUENCE:
Begin by establishing the post-Roman context: lack of central government, constant threats, and breakdown of trade networks. Explain how feudalism emerged as a practical response to these challenges. Diagram the feudal hierarchy clearly, showing relationships between levels. Analyze the lord-vassal contract, emphasizing mutual obligations rather than one-way power. Explore the manor as an economic unit: village layout, three-field system, and self-sufficiency. Examine peasant and serf life in detail: daily routines, housing, food, work obligations, and limited freedoms. Study the training and role of knights, from page to squire to knighthood. Examine life in a medieval castle and a peasant village through primary sources and illustrations. Analyze the strengths (stability, protection, clear structure) and weaknesses (limited mobility, inequality, local conflicts) of feudalism. Trace factors that eventually weakened feudalism including trade revival and central monarchy growth.

DIFFERENTIATION:
For struggling learners: Use visual hierarchy diagrams, focus on daily life with concrete details, provide comparison charts between social classes, and use role-play activities to understand different perspectives.
For advanced learners: Analyze primary sources like the Domesday Book, compare European feudalism with Japanese or other systems, research specific aspects of daily life in depth, and examine how feudalism adapted in different regions.

VOCABULARY:
Feudalism, fief, vassal, lord, serf, manor, peasant, knight, page, squire, chivalry, nobility, hierarchy, obligation, homage, three-field system, demesne, tithe, guild, castle, moat, keep

CONNECTION TO FUTURE LEARNING:
Understanding feudalism is essential for comprehending medieval politics, the Crusades, and the role of the Church. The decline of feudalism connects to the rise of towns, trade, and eventually the Renaissance and centralized nation-states.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Feudalism' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.2.3: The Medieval Church
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Medieval Church' AND grade_level_min = 7),
  'The Medieval Church (Grade 7) Topic Guide',
  'Teaching the role of religion in medieval society',
  'THE MEDIEVAL CHURCH - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand the basic structure of feudal society and the fall of the Roman Empire. Knowledge of Christianity''s origins and spread is helpful. Students should be prepared to analyze institutions objectively, examining both positive and negative aspects.

LEARNING OBJECTIVES:
- Explain the central role of the Catholic Church in medieval European life
- Describe the Church''s organizational structure from pope to parish priest
- Analyze the Church''s political, economic, and social power
- Evaluate the role of monasteries in preserving knowledge and providing services
- Understand medieval religious practices and their significance
- Examine conflicts between Church and secular authorities

KEY CONCEPTS:
1) Universal Institution: The Church was the only institution spanning all of Western Europe, providing unity, education, and social services in the absence of strong central governments
2) Papal Authority: Popes claimed supreme spiritual authority and often challenged secular rulers, culminating in conflicts like the Investiture Controversy
3) Monastic Life: Monasteries preserved classical learning, developed agricultural techniques, provided hospitals and education, and modeled communal living
4) Sacraments and Salvation: The Church controlled access to salvation through sacraments, giving it enormous power over medieval people''s lives and deaths
5) Church and State Tensions: Conflicts over who had ultimate authority—spiritual or secular leaders—shaped medieval politics

COMMON MISCONCEPTIONS:
- Viewing the medieval Church as entirely corrupt or entirely virtuous when it was complex
- Believing all clergy were ignorant when monasteries were centers of learning
- Thinking everyone followed Church teachings uniformly when folk practices varied
- Assuming the Pope always controlled all aspects of Church when local variations existed
- Believing medieval people were passive followers rather than active participants in their faith

TEACHING SEQUENCE:
Begin by establishing the Church''s unique position as the one institution surviving Rome''s fall intact. Diagram the Church hierarchy from pope through bishops, priests, and monks. Explain how the Church provided essential services: education, hospitals, record-keeping, and social welfare. Analyze the Church''s economic power through land ownership, tithes, and fees. Explore monastic life through daily routines based on the Rule of St. Benedict. Examine how monasteries preserved classical texts and developed new knowledge. Study religious practices including Mass, pilgrimages, relics, and festivals. Analyze Church-state conflicts, particularly the Investiture Controversy and Becket''s murder. Examine corruption and reform movements within the Church. Connect Church architecture (Romanesque and Gothic cathedrals) to its message of divine power. Discuss the Church''s role in launching the Crusades.

DIFFERENTIATION:
For struggling learners: Use visual diagrams of Church organization, focus on daily life in monasteries, provide comparison with modern religious institutions, and use cathedrals as concrete examples of Church power.
For advanced learners: Analyze primary sources from Church documents, research specific controversies like the Investiture Controversy, compare Eastern Orthodox and Roman Catholic churches, and examine heresy and the Church''s response.

VOCABULARY:
Pope, bishop, priest, monk, nun, monastery, convent, abbey, cathedral, Mass, sacrament, tithe, excommunication, interdict, Investiture Controversy, canon law, parish, pilgrim, relic, heresy, clergy, laity

CONNECTION TO FUTURE LEARNING:
Understanding the medieval Church is essential for the Crusades, Renaissance humanism, and the Reformation. Church patronage drove medieval and Renaissance art. Conflicts between church and state continue to shape modern politics. Monastic preservation of texts enabled classical revival.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Medieval Church' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.2.4: The Crusades
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Crusades' AND grade_level_min = 7),
  'The Crusades (Grade 7) Topic Guide',
  'Teaching causes, events, and effects of the Crusades',
  'THE CRUSADES - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand feudal society, the power of the medieval Church, and basic geography of Europe and the Middle East. Knowledge of the split between Eastern and Western Christianity and Islamic civilization provides important context. Students should be prepared to examine multiple perspectives objectively.

LEARNING OBJECTIVES:
- Identify the multiple causes that led to the launching of the Crusades
- Trace the major events of the principal Crusades (First through Fourth)
- Analyze the Crusades from both European and Middle Eastern perspectives
- Evaluate the short-term and long-term effects on Europe, the Middle East, and beyond
- Understand the cultural exchange that resulted from East-West contact
- Examine how the Crusades have been interpreted differently throughout history

KEY CONCEPTS:
1) Causes: Pope Urban II''s call combined religious fervor, desire for land and wealth, population pressure, and Byzantine requests for help against Seljuk Turks
2) Major Crusades: The First Crusade captured Jerusalem (1099), the Third Crusade featured Saladin versus Richard I, and the Fourth Crusade notoriously sacked Constantinople
3) Crusader States: European kingdoms established in the Holy Land existed for nearly 200 years before Muslim reconquest
4) Cultural Exchange: Despite conflict, the Crusades facilitated trade and transfer of knowledge, technology, and ideas between civilizations
5) Multiple Perspectives: Europeans, Byzantine Greeks, and Muslims experienced and interpreted the Crusades very differently

COMMON MISCONCEPTIONS:
- Viewing the Crusades as purely religious rather than having complex political and economic motivations
- Believing the Crusades were a straightforward conflict between Christianity and Islam when many alliances crossed religious lines
- Thinking the Crusades had clear winners when results were complex and long-term
- Assuming all participants were motivated by piety when many sought land and wealth
- Viewing the Crusades through only one cultural perspective

TEACHING SEQUENCE:
Begin by establishing context: the situation in the Middle East, Byzantine appeals for help, and European conditions. Analyze Pope Urban II''s speech at Clermont, examining the various motivations he appealed to. Trace the First Crusade''s success and the establishment of Crusader States. Examine life in the Crusader kingdoms, including interactions between Europeans and local populations. Study the Muslim response, culminating in Saladin''s reconquest of Jerusalem. Analyze the Third Crusade''s famous figures: Richard I, Saladin, and Philip II. Examine the Fourth Crusade''s deviation to Constantinople and its consequences for East-West relations. Discuss later Crusades and their diminishing returns. Analyze short-term effects: trade expansion, new knowledge, Church prestige changes. Examine long-term effects: Christian-Muslim relations, European development, cultural exchange. Present multiple perspectives using primary sources from European and Muslim writers.

DIFFERENTIATION:
For struggling learners: Use maps to track crusade routes visually, focus on key figures with biographical approaches, provide cause-effect graphic organizers, and use comparison charts for different Crusades.
For advanced learners: Analyze primary sources from both European and Muslim perspectives, research the Children''s Crusade and its historiography, examine the Crusades'' impact on specific regions, and investigate how modern politics has used Crusade imagery.

VOCABULARY:
Crusade, Holy Land, Pope Urban II, infidel, Jerusalem, Saladin, Richard I, Crusader States, siege, Kingdom of Jerusalem, Outremer, pilgrimage, indulgence, Seljuk Turks, Reconquista, jihad, Byzantine, Constantinople, chivalry

CONNECTION TO FUTURE LEARNING:
The Crusades'' trade expansion and cultural exchange helped spark the Renaissance. Christian-Muslim tensions continue to influence modern geopolitics. The fall of Constantinople to Ottoman Turks connects to Age of Exploration. Medieval military techniques and castle design evolved through crusading experience.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Crusades' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.2.5: The Renaissance
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Renaissance' AND grade_level_min = 7),
  'The Renaissance (Grade 7) Topic Guide',
  'Teaching the rebirth of art, learning, and humanism',
  'THE RENAISSANCE - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand medieval European society including feudalism, the role of the Church, and the Crusades'' impact on trade. Knowledge of ancient Greek and Roman civilization provides context for the classical revival. Understanding of artistic and literary concepts is helpful.

LEARNING OBJECTIVES:
- Explain why the Renaissance began in Italian city-states
- Define humanism and analyze its impact on education, art, and thought
- Identify key Renaissance figures and their contributions to art, science, and literature
- Compare medieval and Renaissance approaches to art, learning, and society
- Trace the spread of Renaissance ideas from Italy throughout Europe
- Evaluate the Renaissance''s lasting impact on Western civilization

KEY CONCEPTS:
1) Italian City-States: Wealthy trading cities like Florence, Venice, and Milan had resources to patronize arts and interest in classical heritage
2) Humanism: An intellectual movement emphasizing human potential, classical learning, secular subjects, and individual achievement alongside religious faith
3) Artistic Revolution: Renaissance artists developed perspective, realistic anatomy, and classical themes, transforming painting, sculpture, and architecture
4) Scientific Method: Renaissance thinkers began emphasizing observation and experimentation, laying groundwork for the Scientific Revolution
5) Printing Press: Gutenberg''s invention enabled rapid spread of ideas, literacy expansion, and standardization of knowledge

COMMON MISCONCEPTIONS:
- Believing the Renaissance was anti-religious when most Renaissance figures were devout Christians
- Thinking the Renaissance was entirely separate from the Middle Ages when it evolved gradually
- Assuming only Italian city-states participated when the Renaissance spread throughout Europe
- Believing the Renaissance benefited everyone when it mainly affected elites initially
- Thinking medieval people were entirely focused on religion without secular interests

TEACHING SEQUENCE:
Begin by exploring why the Renaissance started in Italy: trade wealth, classical ruins, urban culture, and merchant patronage. Define humanism through key ideas: human dignity, classical learning, and secular alongside religious interests. Study Florence as a case study: the Medici family''s patronage and the city''s artistic achievements. Analyze Renaissance art by comparing medieval and Renaissance works, examining perspective, realism, and classical themes. Study key artists: Leonardo da Vinci, Michelangelo, and Raphael and their masterworks. Examine Leonardo as the "Renaissance man" exemplifying curiosity across disciplines. Explore literary achievements including Machiavelli, Petrarch, and vernacular writing. Analyze the printing press''s revolutionary impact on knowledge dissemination. Trace the Renaissance''s spread to Northern Europe, examining artists like Dürer and Bruegel. Connect Renaissance ideas to modern concepts of individualism, education, and scientific inquiry.

DIFFERENTIATION:
For struggling learners: Focus on visual comparisons of medieval and Renaissance art, use biographies of key figures, provide graphic organizers comparing time periods, and emphasize concrete examples over abstract concepts.
For advanced learners: Analyze primary sources from Machiavelli or Renaissance humanists, research specific artists or inventions in depth, compare Italian and Northern Renaissance characteristics, and examine patronage systems and their influence on art.

VOCABULARY:
Renaissance, humanism, patron, Medici, perspective, fresco, classical, secular, vernacular, Leonardo da Vinci, Michelangelo, Raphael, printing press, Gutenberg, Florence, Venice, city-state, individualism, Machiavelli, anatomy

CONNECTION TO FUTURE LEARNING:
The Renaissance prepares for the Reformation through questioning authority and spreading ideas via printing. Scientific thinking leads to the Scientific Revolution. Artistic techniques continue influencing art today. Renaissance political thought shapes modern government theory.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Renaissance' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 3: GEOGRAPHY AND CULTURE (4 topics)
-- ============================================================================

-- Topic 7.3.1: Map Skills
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Map Skills' AND grade_level_min = 7),
  'Map Skills (Grade 7) Topic Guide',
  'Teaching interpretation of political, physical, and thematic maps',
  'MAP SKILLS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have basic familiarity with maps from earlier grades, understand cardinal and intermediate directions, and have foundational knowledge of continents and major geographic features. Experience with interpreting charts and graphs supports map skill development.

LEARNING OBJECTIVES:
- Interpret various types of maps including political, physical, and thematic maps
- Use map elements including scale, compass rose, legend, and grid systems
- Calculate distances and understand scale relationships
- Read latitude and longitude coordinates to locate places precisely
- Analyze how different map projections represent Earth differently
- Evaluate the purpose and bias in cartographic choices

KEY CONCEPTS:
1) Map Types: Political maps show boundaries and cities, physical maps show terrain and features, thematic maps display specific data (climate, population, resources)
2) Map Elements: Essential components including title, legend/key, scale, compass rose, and grid systems that enable accurate interpretation
3) Latitude and Longitude: The coordinate system using degrees north/south of the equator and east/west of the Prime Meridian to locate any point on Earth
4) Scale and Distance: Understanding the ratio between map distance and actual distance to calculate real-world measurements
5) Map Projections: Methods of representing Earth''s curved surface on flat maps, each with trade-offs in accuracy for shape, size, or direction

COMMON MISCONCEPTIONS:
- Believing maps are completely accurate representations of reality rather than selective choices
- Thinking all maps use the same scale or projection
- Confusing latitude (parallel lines) and longitude (converging at poles)
- Assuming north is always "up" rather than a cartographic convention
- Believing map colors have universal meanings rather than being defined in legends

TEACHING SEQUENCE:
Begin by exploring why maps matter and how they''ve shaped history (exploration, warfare, borders). Compare different map types using the same region to show how purpose shapes representation. Systematically cover map elements: practice reading legends, calculating with scale bars, and orienting with compass roses. Introduce the latitude and longitude system with hands-on coordinate plotting activities. Practice locating places using coordinates and giving coordinates for known locations. Explore map projections by comparing Mercator, Peters, and Robinson projections, discussing trade-offs. Analyze thematic maps: population density, climate, resources, and historical events. Examine how maps can be biased through choice of projection, colors, boundaries, or what to include. Practice synthesizing information from multiple maps to draw conclusions. Connect map skills to real-world applications: navigation, planning, and understanding current events.

DIFFERENTIATION:
For struggling learners: Start with simple local maps before complex world maps, use physical manipulatives for coordinates, provide step-by-step guides for map interpretation, and focus on one element at a time.
For advanced learners: Create their own thematic maps using data, analyze historical maps and their context, explore GIS technology basics, and research cartography careers and techniques.

VOCABULARY:
Cartography, latitude, longitude, equator, Prime Meridian, hemisphere, projection, Mercator, scale, legend, key, compass rose, political map, physical map, thematic map, contour, coordinates, parallel, meridian, distortion, grid

CONNECTION TO FUTURE LEARNING:
Map skills are essential for all historical study, understanding current events, and geographic analysis. These skills apply to every unit studying civilizations and their geographic contexts. Map interpretation supports research and data analysis across disciplines.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Map Skills' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.3.2: Geography and Civilization
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Geography and Civilization' AND grade_level_min = 7),
  'Geography and Civilization (Grade 7) Topic Guide',
  'Teaching how geography shaped ancient societies',
  'GEOGRAPHY AND CIVILIZATION - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have foundational map reading skills, knowledge of major ancient civilizations, and understanding of basic geographic concepts including climate, terrain, and natural resources. Experience analyzing cause-and-effect relationships supports this topic.

LEARNING OBJECTIVES:
- Explain how geographic features (rivers, mountains, seas) influenced where civilizations developed
- Analyze how climate and terrain shaped economic activities and cultural practices
- Compare how different civilizations adapted to and modified their environments
- Evaluate geographic factors in the rise and fall of ancient societies
- Understand human-environment interaction as a core geographic theme
- Apply geographic analysis to understand historical events and patterns

KEY CONCEPTS:
1) River Valley Civilizations: Tigris-Euphrates, Nile, Indus, and Yellow Rivers provided water, fertile soil, and transportation that enabled early civilization
2) Geographic Determinism vs. Possibilism: Debate over whether geography determines or merely influences human development and choices
3) Natural Barriers: Mountains, deserts, and seas protected some civilizations while isolating others, affecting defense and cultural exchange
4) Climate and Agriculture: Climate zones determined what crops could grow, shaping diet, economy, and settlement patterns
5) Resources and Trade: Availability or scarcity of resources (metals, timber, spices) drove trade networks and sometimes conflict

COMMON MISCONCEPTIONS:
- Believing geography absolutely determines cultural development rather than influencing it
- Thinking civilizations passively accepted geographic conditions rather than modifying them
- Assuming all river valleys developed civilizations at the same time and in the same way
- Believing climate has always been the same rather than changing over time
- Thinking geographic analysis is separate from historical analysis

TEACHING SEQUENCE:
Begin with the five themes of geography, focusing on human-environment interaction. Analyze river valley civilizations, comparing how each adapted to and modified their environment. Use case studies: why did Mesopotamia need complex irrigation while Egypt had simpler needs? Explore how mountains shaped Greek city-states versus unified Egypt or China. Analyze the Mediterranean Sea''s role in connecting or separating civilizations. Examine how climate zones affected agricultural practices, diet, and settlement patterns. Study how resource distribution created trade networks (Silk Road, Mediterranean trade). Analyze environmental challenges: flooding, drought, deforestation, and how societies responded. Compare civilizations that thrived through adaptation with those that declined due to environmental change. Connect geographic analysis to modern issues of climate change and sustainability. Practice applying geographic analysis to historical questions.

DIFFERENTIATION:
For struggling learners: Use visual maps with overlaid civilization information, focus on clear cause-effect relationships with graphic organizers, compare two civilizations at a time, and use concrete examples from daily life.
For advanced learners: Research environmental history of specific regions, analyze Jared Diamond''s geographic theories, investigate how civilizations modified environments with lasting effects, and compare ancient and modern geographic challenges.

VOCABULARY:
Human-environment interaction, climate, terrain, natural resources, agriculture, irrigation, fertile, arable, trade routes, natural barriers, adaptation, modification, geographic determinism, possibilism, sustainability, region, location

CONNECTION TO FUTURE LEARNING:
Geographic analysis applies to all historical periods and current events. Understanding human-environment interaction prepares for studying environmental history and sustainability. Trade route analysis continues through Age of Exploration and modern globalization studies.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Geography and Civilization' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.3.3: Trade Routes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Trade Routes' AND grade_level_min = 7),
  'Trade Routes (Grade 7) Topic Guide',
  'Teaching the Silk Road and major trade networks',
  'TRADE ROUTES - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand basic geographic concepts including continents, major landforms, and climate zones. Knowledge of ancient civilizations in East Asia, India, the Middle East, and Mediterranean regions provides context. Familiarity with economic concepts of trade, supply, and demand is helpful.

LEARNING OBJECTIVES:
- Trace the major overland and maritime trade routes connecting civilizations
- Identify goods exchanged along trade routes and their sources
- Analyze how trade spread ideas, technologies, religions, and diseases alongside goods
- Evaluate the role of trade in the rise and fall of civilizations
- Understand the challenges and dangers of ancient long-distance trade
- Connect ancient trade patterns to modern global trade

KEY CONCEPTS:
1) Silk Road: Network of overland routes connecting China to the Mediterranean, named for Chinese silk but carrying diverse goods and ideas
2) Maritime Routes: Sea lanes connecting the Mediterranean, Indian Ocean, and East Asia, often faster and carrying heavier goods than overland routes
3) Cultural Diffusion: Trade enabled spread of religions (Buddhism, Islam), technologies (paper, compass), and artistic styles across civilizations
4) Trade Cities: Strategic locations like Constantinople, Samarkand, and Alexandria grew wealthy as trade hubs
5) Trade and Power: Control of trade routes brought wealth and power, making them frequent causes of conflict

COMMON MISCONCEPTIONS:
- Thinking the Silk Road was a single road rather than a network of shifting routes
- Believing only luxury goods were traded when everyday items also moved along routes
- Assuming traders traveled the entire route when most traded in segments
- Thinking trade was purely economic when cultural and religious exchange was equally significant
- Believing ancient trade was simple when it involved complex financial and diplomatic systems

TEACHING SEQUENCE:
Begin with a mystery: how did Chinese silk reach Rome? Use maps to trace possible routes and obstacles. Introduce the Silk Road network, emphasizing it as multiple routes changing over time. Catalog goods traded: silk, spices, porcelain, gold, slaves, and many more. Examine the mechanics of trade: caravans, oases, caravanserais, and merchant practices. Explore maritime routes connecting the Mediterranean, Indian Ocean, and beyond. Study key trade cities and their strategic locations. Analyze how ideas traveled with goods: Buddhism spreading east to west, paper and compass west to east. Examine the role of religion in trade: Islamic merchants, Buddhist monasteries along routes. Discuss the dangers: bandits, harsh terrain, disease, and political instability. Trace how diseases like the Black Death spread along trade routes. Connect to modern globalization and trace goods students use daily.

DIFFERENTIATION:
For struggling learners: Use visual route maps with clear labels, focus on specific goods with images, trace single trade journeys as narratives, and compare ancient and modern trade.
For advanced learners: Research specific trade cities in depth, analyze primary sources from travelers like Marco Polo or Ibn Battuta, examine financial innovations enabling long-distance trade, and investigate the spread of specific technologies or religions.

VOCABULARY:
Silk Road, caravan, oasis, caravanserai, maritime, merchant, commodity, luxury goods, cultural diffusion, exchange, monsoon, tariff, middleman, Constantinople, Samarkand, spices, porcelain, trade network, route

CONNECTION TO FUTURE LEARNING:
Trade route studies prepare for Age of Exploration driven by desire for direct Eastern trade access. Understanding cultural diffusion applies to all cross-cultural studies. Economic concepts of trade continue through industrial and modern periods.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Trade Routes' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.3.4: Cultural Exchange
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Cultural Exchange' AND grade_level_min = 7),
  'Cultural Exchange (Grade 7) Topic Guide',
  'Teaching how ideas and innovations spread between cultures',
  'CULTURAL EXCHANGE - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand major ancient civilizations and trade routes connecting them. Knowledge of basic cultural concepts including religion, art, technology, and language supports this topic. Experience analyzing multiple perspectives and cross-cultural influences is helpful.

LEARNING OBJECTIVES:
- Define cultural diffusion and identify its mechanisms (trade, conquest, migration)
- Trace specific examples of ideas, technologies, and practices spreading between civilizations
- Analyze how receiving cultures adapted borrowed elements to their own contexts
- Evaluate the impacts of cultural exchange—both positive and negative
- Understand cultural synthesis and the creation of hybrid cultures
- Apply cultural exchange concepts to modern globalization

KEY CONCEPTS:
1) Cultural Diffusion: The spread of cultural elements (ideas, technologies, practices) from one society to another through various mechanisms
2) Mechanisms of Exchange: Trade, conquest, migration, intermarriage, and diplomatic contact all enable cultural transfer
3) Selective Adoption: Receiving cultures typically adapt borrowed elements rather than copying exactly, creating unique variations
4) Syncretism: The blending of different cultural elements to create new hybrid forms, especially in religion and art
5) Impact Assessment: Cultural exchange can bring benefits (innovation, diversity) and challenges (conflict, loss of tradition)

COMMON MISCONCEPTIONS:
- Believing cultural exchange is always peaceful rather than often accompanying conquest
- Thinking cultures adopt foreign elements unchanged rather than adapting them
- Assuming more "advanced" cultures only gave rather than also received
- Believing cultural exchange is a modern phenomenon rather than ancient
- Thinking all cultural contact results in exchange when isolation was also possible

TEACHING SEQUENCE:
Begin by identifying elements of students'' own culture borrowed from elsewhere. Define cultural diffusion and its major mechanisms. Study religious diffusion: Buddhism''s spread from India through China, Korea, and Japan; Islam''s expansion through conquest and trade. Trace technological transfers: paper from China through the Islamic world to Europe; numerals from India through Arabia to Europe. Examine artistic influences: Greek sculpture in Buddhist Gandhara art, Chinese influence on Japanese culture. Analyze the Hellenistic world as a case study of cultural synthesis. Study the Islamic Golden Age as a crossroads preserving and transmitting classical knowledge. Examine conquest and cultural exchange: Roman adoption of Greek culture, Mongol facilitation of exchange. Analyze resistance to cultural change and efforts to maintain tradition. Connect to modern globalization, examining how cultural exchange continues today. Evaluate benefits and concerns about cultural exchange in the past and present.

DIFFERENTIATION:
For struggling learners: Focus on concrete examples with visual tracking of specific items or ideas, use comparison charts for before and after cultural contact, provide specific case studies rather than abstract concepts.
For advanced learners: Research specific examples of cultural synthesis in depth, analyze debates about cultural appropriation, examine how the internet has changed cultural exchange, and investigate efforts to preserve endangered cultures.

VOCABULARY:
Cultural diffusion, syncretism, adaptation, transmission, influence, heritage, tradition, innovation, assimilation, cultural borrowing, exchange, hybrid, spread, adoption, interpretation, synthesis, globalization, diversity

CONNECTION TO FUTURE LEARNING:
Cultural exchange concepts apply to all historical periods and cross-cultural studies. Understanding diffusion mechanisms prepares for studying colonialism, imperialism, and modern globalization. Synthesis concepts apply to art, religion, and social history throughout the curriculum.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cultural Exchange' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 4: CIVICS AND GOVERNMENT (4 topics)
-- ============================================================================

-- Topic 7.4.1: Forms of Government
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Forms of Government' AND grade_level_min = 7),
  'Forms of Government (Grade 7) Topic Guide',
  'Teaching comparison of democracy, monarchy, oligarchy, and tyranny',
  'FORMS OF GOVERNMENT - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have foundational knowledge of ancient civilizations including Greek city-states and Rome. Understanding of social hierarchy and power structures from feudalism study provides context. Basic civics concepts from earlier grades support deeper analysis.

LEARNING OBJECTIVES:
- Define and compare major forms of government: democracy, monarchy, oligarchy, tyranny, and republic
- Identify historical examples of each government form
- Analyze how different forms affect citizens'' rights and participation
- Evaluate strengths and weaknesses of various government systems
- Trace how governments can change from one form to another
- Connect ancient government forms to modern political systems

KEY CONCEPTS:
1) Democracy: Government by the people, either directly (Athens) or through representatives, emphasizing citizen participation and equality
2) Monarchy: Rule by a single hereditary leader (king/queen), ranging from absolute to constitutional forms
3) Oligarchy: Rule by a small group of powerful people, often based on wealth, military power, or family status
4) Tyranny: Rule by a single leader who seized power, often beginning with popular support but becoming oppressive
5) Republic: Government where power is held by elected representatives and laws, distinguished from direct democracy

COMMON MISCONCEPTIONS:
- Believing democracy has always meant the same thing when its definition has evolved
- Thinking all monarchies are absolute when many have been limited or constitutional
- Confusing tyranny (illegitimate seizure) with monarchy (legitimate succession)
- Assuming ancient democracies were like modern ones when they excluded most people
- Believing oligarchy only existed in ancient times when forms persist today

TEACHING SEQUENCE:
Begin with questions about power: who should rule, and why? Introduce the Greek classification of governments attributed to Aristotle. Define each form with clear criteria: who holds power, how they got it, and whose interests they serve. Study Athenian democracy in detail: who could participate, how decisions were made, and limitations. Compare Athenian democracy with Spartan oligarchy, examining different values and outcomes. Analyze Roman transition from monarchy to republic to empire, showing how governments change. Examine how tyranny can emerge from other forms, using historical examples. Study medieval monarchy and its relationship to feudalism and the Church. Analyze advantages and disadvantages of each form through structured debate. Connect ancient forms to modern governments: constitutional monarchies, representative democracies, authoritarian regimes. Discuss how governments can be classified on multiple dimensions beyond the classical categories.

DIFFERENTIATION:
For struggling learners: Use clear visual charts comparing government forms, focus on specific historical examples as case studies, provide graphic organizers for strengths and weaknesses, and connect to familiar modern examples.
For advanced learners: Analyze Aristotle''s Politics classifications, research less common government forms (theocracy, federalism), examine how governments transition between forms, and debate ideal government structures.

VOCABULARY:
Democracy, monarchy, oligarchy, tyranny, republic, citizen, constitution, representative, direct democracy, aristocracy, autocracy, sovereignty, power, authority, legitimacy, hereditary, elected, dictator, parliament, assembly

CONNECTION TO FUTURE LEARNING:
Understanding government forms prepares for studying the Enlightenment''s political philosophy, American and French Revolutions, and development of modern democracies. These concepts apply to analyzing current events and global politics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Forms of Government' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.4.2: Rights and Responsibilities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Rights and Responsibilities' AND grade_level_min = 7),
  'Rights and Responsibilities (Grade 7) Topic Guide',
  'Teaching the duties and privileges of citizenship',
  'RIGHTS AND RESPONSIBILITIES - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand different forms of government and the concept of citizenship. Knowledge of ancient Greek and Roman civic life provides historical context. Foundational understanding of rules and fairness supports deeper analysis of rights and duties.

LEARNING OBJECTIVES:
- Define citizenship and explain how it has been determined throughout history
- Distinguish between rights (privileges) and responsibilities (duties) of citizens
- Trace the historical development of rights from ancient to modern times
- Analyze how different societies have defined who has rights
- Evaluate the relationship between rights and responsibilities
- Connect historical concepts of citizenship to modern civic participation

KEY CONCEPTS:
1) Citizenship: Membership in a political community with associated rights and obligations, defined differently across time and cultures
2) Rights: Protections and privileges accorded to citizens, including political (voting), civil (speech), and social (education) rights
3) Responsibilities: Duties citizens owe their community including obeying laws, paying taxes, military service, and civic participation
4) Evolution of Rights: The historical expansion of who has rights from small elite groups to broader populations
5) Social Contract: The philosophical concept that citizens agree to certain obligations in exchange for governmental protection of rights

COMMON MISCONCEPTIONS:
- Believing everyone has always had the same rights when they varied by status, gender, and race
- Thinking rights exist naturally without being created and protected by societies
- Assuming ancient citizenship was like modern citizenship
- Believing responsibilities are less important than rights
- Thinking rights never change when they evolve through struggle and law

TEACHING SEQUENCE:
Begin by exploring what rights students believe they have and where those rights come from. Define citizenship and its components: rights, responsibilities, and identity. Examine ancient Athenian citizenship: who qualified, what rights they had, and what duties they owed. Compare with Roman citizenship, including its expansion and benefits. Analyze who was excluded from citizenship historically: women, slaves, foreigners, and children. Study the Magna Carta as a milestone in limiting governmental power and protecting rights. Trace the development of rights concepts through the Enlightenment. Examine responsibilities: obeying laws, paying taxes, jury duty, and military service. Analyze the relationship between rights and responsibilities as interconnected. Discuss how rights are protected and what happens when they''re violated. Connect historical development to modern citizenship rights and ongoing struggles for rights.

DIFFERENTIATION:
For struggling learners: Use T-charts for rights versus responsibilities, focus on concrete examples from daily life, compare ancient and modern citizenship visually, and use case studies of specific rights.
For advanced learners: Analyze primary sources like the Magna Carta, research expansion of suffrage through history, examine current human rights issues, and debate tensions between different rights.

VOCABULARY:
Citizenship, rights, responsibilities, duties, privileges, civil rights, political rights, social rights, suffrage, obligation, civic duty, due process, equal protection, Magna Carta, social contract, natural rights, human rights, participation

CONNECTION TO FUTURE LEARNING:
Understanding rights and responsibilities prepares for studying the Enlightenment, American Revolution, Bill of Rights, and civil rights movements. These concepts apply to analyzing current events and citizens'' roles in democracy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rights and Responsibilities' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.4.3: Laws and Justice
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Laws and Justice' AND grade_level_min = 7),
  'Laws and Justice (Grade 7) Topic Guide',
  'Teaching how legal systems develop and function',
  'LAWS AND JUSTICE - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand different forms of government and the concept of citizenship rights and responsibilities. Knowledge of ancient civilizations including Mesopotamia and Rome provides historical context for early legal codes. Basic understanding of fairness and rule of law is helpful.

LEARNING OBJECTIVES:
- Explain why societies develop laws and legal systems
- Trace the evolution of legal codes from ancient to modern times
- Analyze key legal principles including rule of law, due process, and equality before the law
- Compare different approaches to justice: retribution, restitution, rehabilitation
- Evaluate how legal systems reflect societal values and power structures
- Connect historical legal developments to modern justice systems

KEY CONCEPTS:
1) Rule of Law: The principle that laws apply equally to all, including rulers, rather than arbitrary personal power
2) Legal Codes: Written collections of laws providing predictability and consistency, from Hammurabi to modern constitutions
3) Due Process: Legal procedures ensuring fair treatment including notice, hearing, and impartial judgment
4) Purposes of Punishment: Retribution (deserved punishment), deterrence (preventing future crime), and rehabilitation (reforming offenders)
5) Evolution of Rights: Development of protections for accused persons including presumption of innocence and right to counsel

COMMON MISCONCEPTIONS:
- Believing ancient laws were primitive rather than sophisticated for their context
- Thinking rule of law has always been applied equally when powerful people often received different treatment
- Assuming legal systems only punish rather than also resolving disputes and regulating behavior
- Believing legal codes were entirely original rather than codifying existing customs
- Thinking modern legal concepts appeared suddenly rather than evolving over centuries

TEACHING SEQUENCE:
Begin by exploring why societies need laws through scenarios of societies without them. Study Hammurabi''s Code as the earliest preserved legal collection, analyzing its principles and punishments. Examine Roman law''s contributions including innocent until proven guilty and right to face accusers. Trace medieval legal developments including Church law and the Magna Carta''s limit on royal power. Analyze the English common law tradition of precedent and trial by jury. Compare different purposes of punishment using historical and modern examples. Study the development of due process protections over time. Analyze how legal systems reflected social inequalities: different treatment by class, gender, and status. Examine how legal reformers have worked to expand justice. Connect historical developments to modern legal systems and ongoing debates about criminal justice.

DIFFERENTIATION:
For struggling learners: Use concrete case examples to illustrate legal concepts, provide comparison charts for different legal codes, focus on key principles with visual representations, and connect to familiar examples from school rules.
For advanced learners: Analyze primary sources from historical legal codes, research specific landmark cases in legal history, compare different legal traditions (common law, civil law, religious law), and examine current criminal justice reform debates.

VOCABULARY:
Rule of law, legal code, due process, justice, law, court, judge, jury, trial, precedent, punishment, retribution, deterrence, rehabilitation, restitution, common law, civil law, constitution, verdict, appeal, rights of the accused

CONNECTION TO FUTURE LEARNING:
Understanding legal development prepares for studying the Constitution, Bill of Rights, and landmark Supreme Court cases. Legal concepts apply to analyzing current events and debates about criminal justice reform. Comparative legal traditions support global studies.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Laws and Justice' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic 7.4.4: Civic Participation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Civic Participation' AND grade_level_min = 7),
  'Civic Participation (Grade 7) Topic Guide',
  'Teaching ways citizens can participate in government',
  'CIVIC PARTICIPATION - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand different forms of government, citizenship rights and responsibilities, and basic legal concepts. Knowledge of both ancient democracies and modern government provides comparative context. Understanding that participation opportunities have changed over time is important.

LEARNING OBJECTIVES:
- Identify various ways citizens can participate in government and civic life
- Compare civic participation in ancient and modern societies
- Analyze the importance of informed and active citizenship for democracy
- Evaluate barriers to participation and efforts to overcome them
- Understand the relationship between participation and government responsiveness
- Apply civic participation concepts to students'' own potential roles

KEY CONCEPTS:
1) Forms of Participation: Voting, running for office, serving on juries, attending meetings, protesting, volunteering, and informing oneself about issues
2) Direct vs. Representative Participation: Ancient Athens used direct citizen voting while modern democracies typically use elected representatives
3) Expanding Participation: Historical movements that extended voting rights to previously excluded groups
4) Barriers and Access: Factors that prevent or discourage participation including legal restrictions, time, resources, and information
5) Civic Virtue: The idea that democracy requires citizens who are informed, engaged, and prioritize the common good

COMMON MISCONCEPTIONS:
- Believing voting is the only form of civic participation
- Thinking ancient democracies were more participatory when they excluded most people
- Assuming civic participation only matters in democracies
- Believing one person''s participation doesn''t matter in large societies
- Thinking civic participation is only for adults when young people can participate in many ways

TEACHING SEQUENCE:
Begin by surveying how students already participate in community decisions (school, clubs, family). Define civic participation broadly, identifying many forms beyond voting. Study Athenian participation: assembly attendance, jury service, and holding office by lot. Compare ancient direct democracy with modern representative systems, analyzing trade-offs. Trace the expansion of voting rights through history: property requirements, race, gender, and age restrictions removed over time. Analyze why participation matters: government responsiveness, legitimacy, and community benefits. Examine barriers to participation: legal restrictions, time constraints, information gaps, and discouragement. Study movements that expanded participation and their strategies. Explore non-voting participation: advocacy, protest, community organizing, and public comment. Connect to youth participation opportunities: volunteering, student government, and community involvement. Discuss informed citizenship and evaluating sources of political information.

DIFFERENTIATION:
For struggling learners: Use concrete examples of local participation opportunities, create visual maps of participation options, focus on youth-specific involvement, and use role-play scenarios.
For advanced learners: Research specific voting rights movements in depth, analyze voter turnout data and causes, compare participation rates across countries, and examine digital age participation and its challenges.

VOCABULARY:
Civic participation, voting, suffrage, representative, direct democracy, advocacy, petition, protest, volunteer, campaign, public comment, engagement, turnout, activism, grassroots, community organizing, informed citizen, civic duty, stakeholder, constituent

CONNECTION TO FUTURE LEARNING:
Understanding civic participation prepares for studying suffrage movements, civil rights activism, and contemporary political engagement. These concepts apply directly to students'' future participation as adult citizens and to analyzing current political debates about voting access.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Civic Participation' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF GRADE 7 HISTORY TOPIC PROMPTS
-- Total: 18 topics across 4 units
-- ============================================================================
