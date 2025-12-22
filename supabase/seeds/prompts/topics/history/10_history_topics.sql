-- ============================================================================
-- GRADE 10 HISTORY TOPIC PROMPTS (World History)
-- Comprehensive teaching guides for all Grade 10 History topics
-- 24 topics across 4 units: Foundations of Civilization, Medieval Period,
-- Early Modern Period, Modern Period
-- ============================================================================

-- ============================================================================
-- UNIT 1: FOUNDATIONS OF CIVILIZATION (5 topics)
-- ============================================================================

-- Topic 10.1.1: Prehistoric Humans
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Prehistoric Humans' AND grade_level_min = 10),
  'Prehistoric Humans (Grade 10) Topic Guide',
  'Teaching human origins and early societies',
  'PREHISTORIC HUMANS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand scientific concepts of evidence and interpretation. Basic knowledge of geology and dating methods helps contextualize the timeline. Understanding of adaptation and environmental interaction provides framework for analyzing early human development.

LEARNING OBJECTIVES:
- Trace human evolution from early hominids through Homo sapiens
- Analyze evidence used by archaeologists and anthropologists to understand prehistoric life
- Evaluate the cognitive revolution and its significance for human development
- Understand the Neolithic Revolution and transition to agriculture
- Analyze the effects of agriculture on society, culture, and environment
- Connect prehistoric developments to the emergence of civilizations

KEY CONCEPTS:
1) Human Evolution: Development from early hominids through Homo erectus to Homo sapiens over millions of years; key adaptations including bipedalism and brain development
2) Out of Africa: Migration of Homo sapiens from Africa to populate the world; genetic and archaeological evidence
3) Cognitive Revolution: Development of language, symbolic thought, and complex social organization approximately 70,000 years ago
4) Neolithic Revolution: Transition from hunting-gathering to agriculture approximately 10,000 BCE; independent development in multiple regions
5) Consequences of Agriculture: Sedentary settlement, population growth, social stratification, and the emergence of complex societies

COMMON MISCONCEPTIONS:
- Believing human evolution was linear rather than branching
- Thinking the Neolithic Revolution was sudden rather than gradual
- Assuming agriculture was unambiguously positive when it had costs
- Believing prehistoric peoples were primitive in thought and culture
- Confusing evolution with progress toward a predetermined goal

TEACHING SEQUENCE:
Begin with the question of human origins and how we know what we know. Introduce archaeological and anthropological methods and evidence types. Trace hominid evolution with key species and adaptations. Study the Out of Africa migration with genetic and archaeological evidence. Analyze the cognitive revolution: language, art, and complex thought. Compare hunter-gatherer societies and their characteristics. Study the Neolithic Revolution: where, when, why, and how. Analyze the consequences of agriculture: settlement, population, stratification. Examine the transition from villages to cities. Connect to the emergence of first civilizations.

DIFFERENTIATION:
For struggling learners: Use visual timelines and evolutionary diagrams, focus on key transitions, provide comparison charts for hunter-gatherer versus agricultural life, and use archaeological images.
For advanced learners: Analyze primary sources (archaeological evidence), research specific sites or theories, examine debates about Neolithic Revolution causes, and investigate recent discoveries.

VOCABULARY:
Hominid, Homo sapiens, evolution, bipedalism, cognitive revolution, Neolithic Revolution, hunter-gatherer, nomadic, sedentary, domestication, agriculture, Paleolithic, Mesolithic, Neolithic, archaeological evidence

CONNECTION TO FUTURE LEARNING:
Understanding prehistoric development prepares for studying first civilizations. Neolithic Revolution connects to river valley civilizations. Concepts of adaptation and change apply throughout history.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Prehistoric Humans' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.1.2: River Valley Civilizations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'River Valley Civilizations' AND grade_level_min = 10),
  'River Valley Civilizations (Grade 10) Topic Guide',
  'Teaching Mesopotamia, Egypt, India, and China',
  'RIVER VALLEY CIVILIZATIONS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand the Neolithic Revolution and transition to agriculture. Knowledge of geography including river systems helps explain civilization locations. Understanding of social hierarchy and government concepts provides framework for analysis.

LEARNING OBJECTIVES:
- Analyze why early civilizations developed in river valleys
- Compare the characteristics of Mesopotamia, Egypt, Indus Valley, and Yellow River civilizations
- Evaluate key achievements in writing, mathematics, government, and religion
- Understand the concept of civilization and its defining characteristics
- Analyze environmental factors shaping different civilizations
- Trace patterns of trade and cultural exchange among early civilizations

KEY CONCEPTS:
1) Characteristics of Civilization: Complex societies with cities, specialized labor, government, religion, writing, and social stratification
2) Geographic Advantages: River valleys provided water, fertile soil, and transportation enabling agricultural surplus and urban development
3) Writing Systems: Cuneiform (Mesopotamia), hieroglyphics (Egypt), Indus script, oracle bones (China) for record-keeping and communication
4) Government and Religion: Theocratic and monarchical systems with divine kingship; religion integrated into all aspects of society
5) Legacy and Influence: Foundations in law, mathematics, astronomy, literature, and governance that influenced later civilizations

COMMON MISCONCEPTIONS:
- Believing civilizations developed independently without any contact or trade
- Thinking all early civilizations were similar when they had significant differences
- Assuming early governments were simple when they were often sophisticated
- Believing civilization equals moral advancement rather than social complexity
- Thinking we know everything about these civilizations when much remains unknown

TEACHING SEQUENCE:
Begin by defining civilization and its characteristics. Map the four major river valley civilizations and their geographic contexts. Analyze why river valleys supported civilization development. Study Mesopotamia: Sumer, Babylon, Assyria; achievements and legacy. Examine ancient Egypt: Nile geography, pharaohs, achievements. Explore the Indus Valley: Harappa, Mohenjo-Daro, mysteries and achievements. Study ancient China: Yellow River, Shang and Zhou dynasties, achievements. Compare civilizations systematically: government, religion, writing, achievements. Analyze trade connections between civilizations. Connect to the rise of classical civilizations.

DIFFERENTIATION:
For struggling learners: Use maps and visual comparisons, focus on one civilization at a time, provide comparison charts, and use images of artifacts and architecture.
For advanced learners: Analyze primary sources from each civilization, research specific aspects in depth, compare historiographical interpretations, and examine archaeological evidence debates.

VOCABULARY:
Civilization, river valley, Mesopotamia, Egypt, Indus Valley, Yellow River, city-state, empire, theocracy, pharaoh, dynasty, cuneiform, hieroglyphics, ziggurat, pyramid, irrigation

CONNECTION TO FUTURE LEARNING:
River valley civilizations provide foundation for classical civilizations. Writing and government concepts carry through all history. Religious traditions influence later developments.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'River Valley Civilizations' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.1.3: Classical Greece
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Classical Greece' AND grade_level_min = 10),
  'Classical Greece (Grade 10) Topic Guide',
  'Teaching democracy, philosophy, and culture',
  'CLASSICAL GREECE - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand ancient river valley civilizations and their characteristics. Knowledge of Mediterranean geography helps explain Greek development. Basic understanding of government types provides context for analyzing Greek political systems.

LEARNING OBJECTIVES:
- Analyze how geography shaped Greek civilization and the polis system
- Compare Athenian democracy and Spartan oligarchy
- Evaluate Greek philosophical contributions and their lasting influence
- Understand Greek achievements in art, architecture, literature, and science
- Analyze the Persian Wars and Peloponnesian War and their effects
- Trace the spread of Greek culture through Alexander''s conquests

KEY CONCEPTS:
1) Polis System: Independent city-states with varying governments; geography encouraged fragmentation rather than unification
2) Athenian Democracy: Direct democracy for male citizens; assembly, courts, and magistrates; radical experiment in self-governance
3) Greek Philosophy: Socrates, Plato, Aristotle developed systematic inquiry into ethics, politics, and nature; foundation of Western philosophy
4) Cultural Achievements: Drama (tragedy and comedy), sculpture, architecture (columns and proportion), literature (epics and history), science
5) Hellenistic World: Alexander''s conquests spread Greek culture through the Eastern Mediterranean and into Asia; cultural fusion

COMMON MISCONCEPTIONS:
- Believing Greek democracy was like modern democracy when it excluded most people
- Thinking all Greeks valued democracy when many city-states had other systems
- Assuming Greek culture developed in isolation when it borrowed from other civilizations
- Believing ancient Greeks were entirely rational when religion was central to life
- Thinking Alexander''s empire was stable and lasting

TEACHING SEQUENCE:
Begin with Greek geography and its influence on development. Analyze the polis as the foundation of Greek life. Compare Athens and Sparta systematically: government, society, values, education. Study Athenian democracy in depth: how it worked and its limitations. Examine Greek religion and mythology''s role in society. Study Greek philosophy: Socrates, Plato, Aristotle and their methods. Analyze cultural achievements: drama, art, architecture, literature, science. Study the Persian Wars: causes, key battles, significance. Analyze the Peloponnesian War and its effects on Greek civilization. Trace Alexander''s conquests and the Hellenistic world.

DIFFERENTIATION:
For struggling learners: Use maps and visual timelines, focus on major figures and concepts, provide comparison charts for Athens and Sparta, and use images of art and architecture.
For advanced learners: Analyze primary sources from Greek historians and philosophers, research specific aspects in depth, compare Greek with other ancient cultures, and examine historiographical debates.

VOCABULARY:
Polis, city-state, democracy, oligarchy, Athens, Sparta, agora, acropolis, philosophy, Socrates, Plato, Aristotle, tragedy, comedy, Parthenon, Persian Wars, Peloponnesian War, Hellenistic, Alexander

CONNECTION TO FUTURE LEARNING:
Greek ideas influence Roman civilization and are revived in Renaissance. Democracy concepts apply to modern political thought. Philosophy foundations continue through Western intellectual history.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Classical Greece' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.1.4: Roman Republic and Empire
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Roman Republic and Empire' AND grade_level_min = 10),
  'Roman Republic and Empire (Grade 10) Topic Guide',
  'Teaching rise, achievements, and fall of Rome',
  'ROMAN REPUBLIC AND EMPIRE - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand Greek civilization and its achievements. Knowledge of Mediterranean geography helps contextualize Roman expansion. Understanding of government types and social hierarchy provides framework for analyzing Roman political and social systems.

LEARNING OBJECTIVES:
- Trace Rome''s development from monarchy through republic to empire
- Analyze the structure of Roman republican government and its legacy
- Evaluate Roman achievements in law, engineering, architecture, and culture
- Understand the factors contributing to both Rome''s success and decline
- Analyze the spread of Christianity within the Roman Empire
- Connect Roman institutions and ideas to their lasting influence

KEY CONCEPTS:
1) Republican Government: Complex system with consuls, Senate, and assemblies featuring separation of powers and checks and balances
2) Roman Expansion: Military conquest and administration of vast empire from Britain to Mesopotamia; treatment of conquered peoples
3) Pax Romana: Two centuries of relative peace and prosperity enabling trade, urbanization, and cultural development
4) Roman Contributions: Law (innocent until proven guilty, right to trial), engineering (roads, aqueducts), architecture (arches, domes), Latin language
5) Decline and Transformation: Political instability, economic problems, invasions, and division leading to fall of Western Rome

COMMON MISCONCEPTIONS:
- Thinking Rome was always an empire rather than evolving through different phases
- Believing gladiatorial combat always resulted in death
- Assuming Rome fell suddenly rather than declining over centuries
- Thinking all Romans were citizens when many were enslaved or non-citizens
- Believing Rome simply "fell" rather than transformed

TEACHING SEQUENCE:
Begin with Rome''s legendary founding and early development. Analyze the republican government: structure, evolution, and strengths. Trace Roman expansion: military tactics, treatment of conquered peoples, administration. Study the late republic''s crises and the transition to empire. Analyze the Pax Romana: peace, prosperity, and cultural achievements. Study Roman contributions: law, engineering, architecture, language. Examine Roman society: classes, family, religion, daily life. Trace Christianity''s spread within the empire. Analyze factors in Rome''s decline: political, economic, military, social. Study the fall of Western Rome and survival of Eastern (Byzantine) Rome.

DIFFERENTIATION:
For struggling learners: Use maps of Roman expansion, provide timelines distinguishing republic and empire, focus on key figures, and use images of Roman achievements.
For advanced learners: Analyze primary sources from Roman historians, research specific aspects in depth, compare interpretations of Rome''s fall, and examine Roman influence on later civilizations.

VOCABULARY:
Republic, empire, consul, Senate, tribune, patrician, plebeian, legion, Pax Romana, aqueduct, forum, Colosseum, gladiator, Latin, Punic Wars, Julius Caesar, Augustus, Byzantine

CONNECTION TO FUTURE LEARNING:
Roman fall leads to medieval Europe. Roman law influences modern legal systems. Latin shapes European languages. Republican concepts influence American government.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Roman Republic and Empire' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.1.5: Classical India and China
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Classical India and China' AND grade_level_min = 10),
  'Classical India and China (Grade 10) Topic Guide',
  'Teaching Maurya, Gupta, Han, and Tang dynasties',
  'CLASSICAL INDIA AND CHINA - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand river valley civilizations including early India and China. Knowledge of Asian geography helps contextualize development. Understanding of religious and philosophical concepts provides framework for analyzing cultural achievements.

LEARNING OBJECTIVES:
- Analyze the development and achievements of classical Indian empires (Maurya and Gupta)
- Understand Hindu and Buddhist religious traditions and their influence
- Trace Chinese dynasties and their characteristic achievements
- Evaluate Chinese philosophies including Confucianism, Daoism, and Legalism
- Compare classical Indian and Chinese civilizations
- Assess contributions in science, mathematics, art, and governance

KEY CONCEPTS:
1) Indian Empires: Maurya Empire united much of India (Ashoka''s conversion to Buddhism); Gupta Empire as "Golden Age" of art, science, mathematics
2) Hindu and Buddhist Traditions: Hinduism''s development and caste system; Buddha''s life and teachings; spread of Buddhism across Asia
3) Chinese Dynasties: Qin unification (legalism, standardization); Han dynasty (Confucianism, Silk Road); later Tang as cultural high point
4) Chinese Philosophies: Confucianism (social harmony, hierarchy, education), Daoism (harmony with nature), Legalism (strict control)
5) Scientific and Cultural Achievements: Indian numerals, zero, medicine; Chinese paper, compass, silk, porcelain, printing

COMMON MISCONCEPTIONS:
- Viewing Asian civilizations as less important than Western ones
- Confusing Hinduism and Buddhism or thinking Buddhism is simply an offshoot
- Believing the caste system was always rigid and unchanging
- Thinking Chinese dynasties were all similar rather than distinctive
- Assuming ancient technologies were simple

TEACHING SEQUENCE:
Begin by mapping classical India and China in their geographic contexts. Study the Maurya Empire: Chandragupta, Ashoka, and Buddhist influence. Analyze Hinduism: beliefs, practices, caste system. Study Buddhism: Buddha''s life, teachings, spread across Asia. Examine the Gupta Empire: achievements in art, science, mathematics. Study Chinese dynastic system and the Mandate of Heaven. Analyze the Qin dynasty: unification, legalism, standardization. Study the Han dynasty: Confucianism, government, Silk Road. Examine Chinese philosophies: Confucianism, Daoism, Legalism. Compare Indian and Chinese achievements and influences.

DIFFERENTIATION:
For struggling learners: Use maps and timelines, focus on key dynasties and concepts, provide comparison charts, and use images of art and achievements.
For advanced learners: Analyze primary sources from Asian traditions, research specific dynasties or achievements, compare Asian and Western development, and examine cultural exchange along trade routes.

VOCABULARY:
Maurya, Gupta, Hinduism, Buddhism, caste, dharma, karma, nirvana, Qin, Han, Tang, Confucianism, Daoism, Legalism, Mandate of Heaven, Silk Road, dynasty, emperor

CONNECTION TO FUTURE LEARNING:
Asian civilizations continue through medieval and modern periods. Religious traditions remain globally significant. Asian achievements influence world history. Trade connections shape global exchanges.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Classical India and China' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 2: MEDIEVAL PERIOD (6 topics)
-- ============================================================================

-- Topic 10.2.1: Feudal Europe
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Feudal Europe' AND grade_level_min = 10),
  'Feudal Europe (Grade 10) Topic Guide',
  'Teaching feudalism, manorialism, and medieval society',
  'FEUDAL EUROPE - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand the fall of the Roman Empire and its consequences. Knowledge of agricultural societies provides context for understanding manorialism. Understanding of social hierarchy concepts helps analyze feudal relationships.

LEARNING OBJECTIVES:
- Explain the development of feudalism as a response to instability after Rome''s fall
- Analyze the structure of feudal society and relationships between lords and vassals
- Understand the manorial system as the economic foundation of medieval life
- Evaluate the lives of different social classes including peasants, knights, and nobility
- Examine the development of medieval kingdoms and their governance
- Assess feudalism''s strengths, weaknesses, and eventual decline

KEY CONCEPTS:
1) Feudal Hierarchy: Pyramid of power from kings through nobles to knights and peasants based on land grants for loyalty and service
2) Lord-Vassal Relationship: Mutual obligations where lords provided land (fiefs) and protection while vassals provided military service and loyalty
3) Manorialism: Self-sufficient agricultural estates where serfs worked the land in exchange for protection and housing
4) Social Stratification: Rigid class divisions between nobility, clergy, and peasantry with limited mobility
5) Medieval Warfare: Knights, castles, and siege warfare; chivalric code and its ideals

COMMON MISCONCEPTIONS:
- Believing feudalism was a unified system rather than varying by region and time
- Thinking serfs were slaves when they had some rights
- Assuming everyone fit neatly into categories when exceptions existed
- Believing knights spent all time fighting rather than managing estates
- Thinking the "Dark Ages" meant no progress or development

TEACHING SEQUENCE:
Begin with the post-Roman context: fragmentation, invasions, and the need for protection. Analyze why feudalism developed as a practical response. Diagram feudal hierarchy and lord-vassal relationships. Study the manor as an economic unit: layout, agriculture, and self-sufficiency. Examine the lives of different classes: nobles, knights, peasants, serfs. Study castle architecture and its defensive functions. Analyze medieval warfare: knights, sieges, and the chivalric ideal. Trace the development of medieval kingdoms: England, France, Holy Roman Empire. Examine factors that eventually weakened feudalism.

DIFFERENTIATION:
For struggling learners: Use visual hierarchy diagrams, focus on daily life with concrete details, provide comparison charts between social classes, and use images of medieval life.
For advanced learners: Analyze primary sources from medieval period, research specific regions or aspects, compare European feudalism with other systems, and examine economic and social dynamics.

VOCABULARY:
Feudalism, fief, vassal, lord, serf, manor, peasant, knight, page, squire, chivalry, nobility, hierarchy, homage, demesne, three-field system, castle, keep

CONNECTION TO FUTURE LEARNING:
Feudalism provides context for understanding the Crusades, Church power, and eventual Renaissance. Economic changes weakening feudalism lead to rise of towns and trade.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Feudal Europe' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.2.2: The Church in Medieval Europe
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Church in Medieval Europe' AND grade_level_min = 10),
  'The Church in Medieval Europe (Grade 10) Topic Guide',
  'Teaching power and influence of the Church',
  'THE CHURCH IN MEDIEVAL EUROPE - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand feudal society and its structure. Knowledge of Christianity''s origins and spread provides religious context. Understanding of Rome''s fall and the fragmented political landscape helps explain the Church''s unique role.

LEARNING OBJECTIVES:
- Analyze the Catholic Church''s central role in medieval European life
- Understand the Church''s organizational structure and its parallel to feudal hierarchy
- Evaluate the Church''s political, economic, and social power
- Examine monastic life and monasteries'' contributions to learning and culture
- Analyze Church-state conflicts and their resolution
- Assess the Church''s positive contributions and areas of controversy

KEY CONCEPTS:
1) Universal Authority: The Church was the only institution spanning all of Western Europe, providing unity, education, and social services
2) Papal Power: Popes claimed supreme authority over spiritual matters and sometimes challenged secular rulers
3) Church Organization: Hierarchy from pope through cardinals, bishops, and priests to local parishes
4) Monastic Tradition: Monasteries preserved learning, advanced agriculture, provided hospitality, and modeled communal living
5) Church and State: Conflicts over appointment of clergy (Investiture Controversy) and ultimate authority

COMMON MISCONCEPTIONS:
- Viewing the medieval Church as entirely corrupt or entirely virtuous when it was complex
- Believing all clergy were ignorant when monasteries were centers of learning
- Thinking everyone followed Church teachings uniformly when variations existed
- Assuming the Church opposed all progress when it supported education and learning
- Believing Church-state conflicts were purely about power rather than genuine beliefs

TEACHING SEQUENCE:
Begin with the Church''s unique position after Rome''s fall. Diagram Church hierarchy from pope through local parishes. Analyze the Church''s economic power: land ownership, tithes, and wealth. Study the Church''s social roles: education, hospitals, charity, record-keeping. Examine monastic life: the Rule of St. Benedict, daily routine, contributions. Analyze Cathedral construction as expressions of faith and community. Study sacraments and their significance in medieval life. Examine Church-state conflicts: Investiture Controversy, Henry II and Becket. Analyze corruption and reform movements within the Church. Connect to the Crusades and later Reformation.

DIFFERENTIATION:
For struggling learners: Use visual diagrams of Church organization, focus on concrete aspects of daily life, provide comparison charts with secular power, and use images of cathedrals and monasteries.
For advanced learners: Analyze primary sources from Church documents, research specific controversies, compare Eastern Orthodox and Roman Catholic churches, and examine intellectual life in monasteries.

VOCABULARY:
Pope, bishop, priest, monk, monastery, abbey, cathedral, Mass, sacrament, tithe, excommunication, interdict, Investiture Controversy, canon law, parish, clergy, laity, heresy

CONNECTION TO FUTURE LEARNING:
Church power provides context for the Crusades and Reformation. Monastic preservation of texts enables Renaissance. Church art and architecture influence Western culture.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Church in Medieval Europe' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.2.3: Byzantine Empire
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Byzantine Empire' AND grade_level_min = 10),
  'Byzantine Empire (Grade 10) Topic Guide',
  'Teaching Eastern Rome and its legacy',
  'BYZANTINE EMPIRE - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand the Roman Empire''s division and Western Rome''s fall. Knowledge of Christianity''s development provides religious context. Understanding of Mediterranean geography helps contextualize Byzantine trade and defense.

LEARNING OBJECTIVES:
- Trace the continuation and transformation of Roman traditions in the Byzantine Empire
- Analyze Byzantine political, religious, and cultural achievements
- Understand the Eastern Orthodox Church and its separation from Roman Catholicism
- Evaluate Byzantine contributions to art, architecture, law, and learning
- Examine Byzantine interactions with neighbors including Islam and Western Europe
- Assess the empire''s long survival and eventual fall to the Ottomans

KEY CONCEPTS:
1) Roman Continuation: Eastern Roman Empire survived and transformed, preserving Greek and Roman traditions while developing distinct Byzantine culture
2) Constantinople: Strategic capital controlling trade between Europe and Asia; heavily fortified and culturally sophisticated
3) Justinian''s Achievements: Hagia Sophia, Justinian Code preserving Roman law, attempted reconquest of Western territories
4) Orthodox Christianity: Eastern Christianity developed distinct traditions; Great Schism (1054) formally split from Roman Catholicism
5) Cultural Preservation: Byzantines preserved Greek learning, Roman law, and classical traditions later transmitted to Western Europe and Islam

COMMON MISCONCEPTIONS:
- Viewing Byzantium as merely "Eastern Rome" without its own innovations
- Believing the Great Schism was sudden rather than developing over centuries
- Thinking Byzantium was weak when it survived for a millennium
- Assuming Byzantine culture was static rather than evolving
- Believing Byzantium had little influence when it shaped Eastern Europe and preserved classical learning

TEACHING SEQUENCE:
Begin by tracing the division of Rome and survival of the Eastern Empire. Analyze Constantinople''s location and strategic advantages. Study Justinian''s reign: reconquests, Hagia Sophia, legal codification. Examine Byzantine government: emperor''s power, bureaucracy, and military. Study Orthodox Christianity: beliefs, practices, art, and architecture. Analyze the Great Schism: causes, events, and consequences. Examine Byzantine art: icons, mosaics, and their religious significance. Study Byzantine interactions with Islam, the Crusaders, and Western Europe. Trace the empire''s gradual decline and fall to the Ottomans (1453). Analyze Byzantine legacy in Eastern Europe, Orthodox Christianity, and preserved learning.

DIFFERENTIATION:
For struggling learners: Use maps showing Byzantine territory over time, focus on key figures and achievements, provide comparison charts with Western Europe, and use images of Byzantine art and architecture.
For advanced learners: Analyze primary sources from Byzantine historians, research specific aspects in depth, examine theological controversies, and investigate Byzantine influence on Russia.

VOCABULARY:
Byzantine, Constantinople, Justinian, Hagia Sophia, Justinian Code, Orthodox Christianity, Great Schism, patriarch, icon, iconoclasm, mosaic, Greek fire, Cyrillic alphabet, Ottoman

CONNECTION TO FUTURE LEARNING:
Byzantine preservation of learning contributes to Renaissance. Orthodox Christianity shapes Eastern European culture. Fall of Constantinople drives Age of Exploration.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Byzantine Empire' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.2.4: Rise of Islam
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Rise of Islam' AND grade_level_min = 10),
  'Rise of Islam (Grade 10) Topic Guide',
  'Teaching Muhammad, Islamic civilization, and expansion',
  'RISE OF ISLAM - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand the context of 7th-century Arabia and the wider Mediterranean world. Knowledge of Judaism and Christianity provides context for understanding Islam''s relationship to earlier traditions. Understanding of empire and cultural diffusion helps analyze Islamic expansion.

LEARNING OBJECTIVES:
- Understand the origins of Islam including Muhammad''s life and teachings
- Analyze the core beliefs and practices of Islam (Five Pillars)
- Trace the rapid expansion of Islamic civilization
- Evaluate achievements of Islamic civilization in science, mathematics, and culture
- Understand the split between Sunni and Shia Islam
- Assess Islam''s interactions with other civilizations and its lasting influence

KEY CONCEPTS:
1) Muhammad and Revelation: Life of Muhammad, revelation of the Quran, and establishment of the first Muslim community
2) Five Pillars: Core Islamic practices: declaration of faith, prayer, charity, fasting during Ramadan, and pilgrimage to Mecca
3) Rapid Expansion: Conquest and conversion spread Islam from Arabia through North Africa, Spain, Persia, and into Central Asia
4) Islamic Golden Age: Achievements in mathematics, astronomy, medicine, philosophy, and art during the Abbasid Caliphate
5) Sunni-Shia Split: Division over succession after Muhammad leading to different traditions within Islam

COMMON MISCONCEPTIONS:
- Equating Islam with violence when it has complex teachings about peace and war
- Believing conversion was entirely forced when voluntary conversion was common
- Thinking Islamic achievements were merely preserved rather than original
- Confusing Arab and Muslim as identical when Islam includes diverse peoples
- Assuming medieval Islam was uniform when regional variations existed

TEACHING SEQUENCE:
Begin with Arabia before Islam: geography, society, and religion. Study Muhammad''s life: early years, revelation, Hijra, and community building. Analyze the Five Pillars and core Islamic beliefs. Trace the rapid expansion after Muhammad: caliphates, conquests, and administration. Study the Sunni-Shia split: causes and consequences. Examine the Abbasid Caliphate and Islamic Golden Age. Analyze scientific and mathematical achievements: algebra, astronomy, medicine. Study Islamic art and architecture: mosques, calligraphy, geometric patterns. Examine Islamic Spain (Al-Andalus) as a center of cultural exchange. Analyze Islamic influence on Europe and the preservation of classical learning.

DIFFERENTIATION:
For struggling learners: Use maps of Islamic expansion, focus on core beliefs and achievements, provide comparison charts with other religions, and use images of Islamic art and architecture.
For advanced learners: Analyze primary sources from Islamic scholars, research specific achievements in depth, examine theological debates, and investigate cultural exchange with other civilizations.

VOCABULARY:
Islam, Muslim, Muhammad, Quran, Allah, Five Pillars, Mecca, Medina, Hijra, caliph, caliphate, Sunni, Shia, mosque, minaret, Abbasid, algebra, Arabic numerals

CONNECTION TO FUTURE LEARNING:
Islamic civilization provides context for the Crusades. Scientific achievements influence European Renaissance. Islam remains a major world religion and cultural force.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rise of Islam' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.2.5: African Kingdoms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'African Kingdoms' AND grade_level_min = 10),
  'African Kingdoms (Grade 10) Topic Guide',
  'Teaching Mali, Songhai, Zimbabwe, and others',
  'AFRICAN KINGDOMS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand trade networks and their role in civilization development. Knowledge of geography including the Sahara and major African rivers helps contextualize kingdom locations. Understanding of state-building and cultural development provides framework for analysis.

LEARNING OBJECTIVES:
- Analyze the development and achievements of major African kingdoms
- Understand trans-Saharan trade and its role in West African development
- Evaluate the achievements of Ghana, Mali, and Songhai empires
- Examine East African city-states and their Indian Ocean trade connections
- Analyze Great Zimbabwe and Southern African developments
- Assess African contributions to world history often overlooked in traditional narratives

KEY CONCEPTS:
1) Trans-Saharan Trade: Gold-salt trade across the Sahara connected West Africa to the Mediterranean world; source of wealth and cultural exchange
2) West African Empires: Ghana, Mali, and Songhai controlled gold trade and developed sophisticated governments; Mansa Musa''s famous pilgrimage
3) East African Trade: Swahili city-states (Kilwa, Mogadishu) connected African goods to Indian Ocean trade network; blend of African and Arab cultures
4) Great Zimbabwe: Stone structures demonstrating sophisticated architecture and government in Southern Africa
5) Cultural Achievements: Oral traditions, art, music, religious practices, and social organization often undervalued in Western narratives

COMMON MISCONCEPTIONS:
- Believing Africa had no significant civilizations before European contact
- Thinking African history is only about slavery and colonialism
- Assuming African societies were primitive when they were sophisticated
- Believing Europeans "discovered" African kingdoms rather than encountering existing states
- Thinking African history is uniform when the continent contains great diversity

TEACHING SEQUENCE:
Begin by examining African geography and its influence on development. Study trans-Saharan trade: routes, goods, and its transformative impact. Analyze the Ghana Empire: origins, government, and trade control. Study Mali Empire: Sundiata''s founding, Mansa Musa''s pilgrimage, Timbuktu as center of learning. Examine Songhai Empire: expansion, administration, and eventual decline. Study East African Swahili city-states: trade, culture, and architecture. Analyze Great Zimbabwe: construction, significance, and what it reveals. Examine Ethiopian Christianity as a unique African tradition. Connect African history to later European contact and the slave trade.

DIFFERENTIATION:
For struggling learners: Use maps showing trade routes and kingdoms, focus on key rulers and achievements, provide comparison with better-known civilizations, and use images of African art and architecture.
For advanced learners: Analyze primary sources including Ibn Battuta''s accounts, research specific kingdoms in depth, examine oral history traditions, and investigate how African history has been studied and sometimes marginalized.

VOCABULARY:
Ghana Empire, Mali Empire, Songhai, Mansa Musa, Timbuktu, trans-Saharan trade, gold, salt, Swahili, Kilwa, Great Zimbabwe, oral tradition, griots, Sahel, savanna, caravan

CONNECTION TO FUTURE LEARNING:
African history provides context for understanding colonialism and its effects. Trade connections link to global exchange networks. African cultural achievements continue to influence world culture.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'African Kingdoms' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.2.6: Asian Civilizations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Asian Civilizations' AND grade_level_min = 10),
  'Asian Civilizations (Grade 10) Topic Guide',
  'Teaching Mongols, Japanese feudalism, Southeast Asia',
  'ASIAN CIVILIZATIONS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand classical Asian civilizations including China and India. Knowledge of trade networks and cultural diffusion provides context. Understanding of political systems including feudalism helps analyze different governance models.

LEARNING OBJECTIVES:
- Analyze the Mongol Empire''s creation, extent, and legacy
- Compare Japanese feudalism with European feudalism
- Understand Southeast Asian kingdoms and their cultural development
- Evaluate trade networks connecting Asian civilizations
- Examine the spread of religions including Buddhism and Islam across Asia
- Assess Asian contributions to global history during the medieval period

KEY CONCEPTS:
1) Mongol Empire: Genghis Khan unified nomadic tribes; largest contiguous land empire in history; facilitated trade and cultural exchange
2) Japanese Feudalism: Emperor, shogun, daimyo, samurai hierarchy; bushido code; cultural achievements during isolation
3) Southeast Asian Kingdoms: Khmer Empire (Angkor Wat), Majapahit, Dai Viet; Hindu-Buddhist influences adapted to local traditions
4) Trade Networks: Silk Road and maritime routes connected Asian civilizations; spread of goods, technologies, and ideas
5) Religious Spread: Buddhism spread through East and Southeast Asia; Islam spread through trade to Southeast Asia and Indonesia

COMMON MISCONCEPTIONS:
- Viewing the Mongols only as destroyers rather than also facilitators of exchange
- Assuming Japanese and European feudalism were identical when significant differences existed
- Believing Southeast Asia simply received influences rather than adapting and innovating
- Thinking Asian history was disconnected from world history
- Assuming all Asian societies were static rather than dynamic

TEACHING SEQUENCE:
Begin by mapping medieval Asia and its major civilizations. Study the Mongol Empire: Genghis Khan, conquests, administration, and legacy. Analyze the Pax Mongolica and its effects on trade and exchange. Study Japanese development: political structure, samurai culture, and cultural achievements. Compare Japanese and European feudalism: similarities and differences. Examine Southeast Asian kingdoms: Khmer, Majapahit, Vietnamese dynasties. Study Angkor Wat and its significance. Analyze trade routes connecting Asian civilizations. Examine the spread of Buddhism and Islam across Asia. Connect Asian developments to global patterns.

DIFFERENTIATION:
For struggling learners: Use maps extensively, focus on major empires and achievements, provide comparison charts, and use images of art and architecture.
For advanced learners: Analyze primary sources from Asian traditions, research specific civilizations in depth, examine cross-cultural influences, and investigate how Asian history has been presented in world history narratives.

VOCABULARY:
Mongol Empire, Genghis Khan, Pax Mongolica, Khan, Japan, shogun, samurai, bushido, daimyo, Khmer, Angkor Wat, Majapahit, Buddhism, Silk Road, maritime trade

CONNECTION TO FUTURE LEARNING:
Asian medieval developments provide context for early modern period. Trade networks facilitate European exploration. Cultural achievements influence world heritage.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Asian Civilizations' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 3: EARLY MODERN PERIOD (6 topics)
-- ============================================================================

-- Topic 10.3.1: The Renaissance
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Renaissance' AND grade_level_min = 10),
  'The Renaissance (Grade 10) Topic Guide',
  'Teaching rebirth of learning and culture',
  'THE RENAISSANCE - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand medieval European society including feudalism and the Church. Knowledge of classical Greek and Roman civilization provides context for revival. Understanding of art and cultural concepts helps appreciate Renaissance achievements.

LEARNING OBJECTIVES:
- Explain why the Renaissance began in Italian city-states
- Define humanism and analyze its intellectual foundations and impact
- Evaluate Renaissance achievements in art, architecture, and literature
- Understand the spread of Renaissance ideas across Europe
- Analyze the social and economic conditions enabling the Renaissance
- Connect Renaissance ideas to later developments including the Reformation and Scientific Revolution

KEY CONCEPTS:
1) Italian Origins: Wealthy trading cities, classical ruins, urban culture, and merchant patronage created conditions for cultural flowering
2) Humanism: Intellectual movement emphasizing human potential, classical learning, secular subjects, and individual achievement
3) Artistic Revolution: Development of perspective, realistic anatomy, classical themes; Leonardo, Michelangelo, Raphael
4) Printing Revolution: Gutenberg''s printing press enabled rapid spread of ideas, literacy expansion, and standardized knowledge
5) Northern Renaissance: Distinct characteristics in Northern Europe including Christian humanism and different artistic traditions

COMMON MISCONCEPTIONS:
- Believing the Renaissance was anti-religious when most figures were devout Christians
- Thinking the Renaissance was entirely separate from medieval traditions when it evolved gradually
- Assuming only Italy participated when the Renaissance spread throughout Europe
- Believing the Renaissance benefited everyone when it mainly affected elites initially
- Thinking Renaissance ideas emerged without any medieval precedents

TEACHING SEQUENCE:
Begin by exploring why the Renaissance started in Italy: wealth, classical heritage, urban culture. Define humanism: focus on human potential, classical texts, secular subjects. Study Florence as a case study: Medici patronage, artistic community. Analyze Renaissance art through key works and techniques. Study key artists: Leonardo, Michelangelo, Raphael and their contributions. Examine Renaissance literature and political thought (Machiavelli). Analyze the printing press and its revolutionary impact. Trace the Renaissance spread to Northern Europe. Compare Italian and Northern Renaissance characteristics. Connect to the Reformation and Scientific Revolution.

DIFFERENTIATION:
For struggling learners: Use visual comparisons of medieval and Renaissance art, focus on key figures and works, provide before-and-after frameworks, and emphasize concrete achievements.
For advanced learners: Analyze primary sources from Renaissance writers, research specific artists or works in depth, examine patronage systems, and compare Renaissance humanism with medieval thought.

VOCABULARY:
Renaissance, humanism, secular, patron, Medici, perspective, realism, fresco, classical, vernacular, Leonardo da Vinci, Michelangelo, Raphael, printing press, Gutenberg, Machiavelli

CONNECTION TO FUTURE LEARNING:
Renaissance ideas contribute to the Reformation and Scientific Revolution. Artistic techniques influence all subsequent Western art. Humanism shapes modern education and values.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Renaissance' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.3.2: The Reformation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Reformation' AND grade_level_min = 10),
  'The Reformation (Grade 10) Topic Guide',
  'Teaching religious reform movements',
  'THE REFORMATION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand the medieval Church''s role and power in European society. Knowledge of Renaissance humanism provides intellectual context. Understanding of political structures helps analyze the political dimensions of religious change.

LEARNING OBJECTIVES:
- Analyze the conditions leading to challenges to Catholic Church authority
- Understand Martin Luther''s criticisms and the origins of the Protestant Reformation
- Compare the beliefs and practices of major Protestant denominations
- Evaluate the Catholic Counter-Reformation''s reforms and responses
- Analyze the political dimensions of the Reformation including the Wars of Religion
- Assess the Reformation''s lasting impact on religion, politics, and society

KEY CONCEPTS:
1) Reformation Causes: Church corruption (sale of indulgences), Renaissance humanism''s critical spirit, nationalism, and printing press
2) Luther''s Challenge: 95 Theses, salvation by faith alone, scripture as authority, priesthood of all believers
3) Protestant Denominations: Lutheranism, Calvinism (predestination), Anglicanism (royal supremacy), and radical reformers
4) Counter-Reformation: Catholic response through Council of Trent, Jesuits, and renewed spirituality
5) Religious Wars: Conflicts including the Thirty Years'' War devastating Central Europe; eventually leading to religious tolerance

COMMON MISCONCEPTIONS:
- Believing the Reformation was purely religious when political and economic factors were important
- Thinking Luther intended to split from the Church when he initially sought reform
- Assuming all Protestants believed the same things when significant differences existed
- Believing the Catholic Church simply opposed reform when it also reformed itself
- Thinking religious tolerance was quickly accepted when persecution continued for centuries

TEACHING SEQUENCE:
Begin with conditions in the early 16th-century Church: indulgences, corruption, calls for reform. Study Martin Luther: background, 95 Theses, key doctrines, and break with Rome. Analyze the printing press''s role in spreading Reformation ideas. Study other reformers: Calvin, Zwingli, Anabaptists. Examine the English Reformation: Henry VIII and religious politics. Analyze the Catholic Counter-Reformation: Council of Trent, Jesuits, reform measures. Study the Wars of Religion: French Wars, Thirty Years'' War. Examine the Peace of Westphalia and its principles. Assess the Reformation''s lasting effects on religion, politics, and culture.

DIFFERENTIATION:
For struggling learners: Use maps showing religious divisions, focus on key figures and their main ideas, provide comparison charts for denominations, and use visual timelines.
For advanced learners: Analyze primary sources from Luther and other reformers, research specific aspects in depth, examine theological debates, and investigate the Reformation''s political dimensions.

VOCABULARY:
Reformation, Protestant, Martin Luther, 95 Theses, indulgence, salvation, faith, scripture, predestination, John Calvin, Anglican, Counter-Reformation, Council of Trent, Jesuits, Thirty Years'' War

CONNECTION TO FUTURE LEARNING:
Reformation shapes European religious map to present. Religious divisions influence colonization. Reformation ideas contribute to political development and individual rights.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Reformation' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.3.3: Age of Exploration
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Age of Exploration' AND grade_level_min = 10),
  'Age of Exploration (Grade 10) Topic Guide',
  'Teaching European exploration and its consequences',
  'AGE OF EXPLORATION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand European medieval society and its limitations. Knowledge of trade routes and Asian goods motivating exploration provides context. Understanding of geography and navigation concepts helps explain challenges explorers faced.

LEARNING OBJECTIVES:
- Analyze the motivations driving European exploration: God, glory, and gold
- Trace the major voyages and discoveries of the Age of Exploration
- Evaluate the Columbian Exchange and its global effects
- Understand the impact of European contact on indigenous peoples
- Analyze the development of colonial empires and mercantilism
- Assess exploration''s role in creating an interconnected world

KEY CONCEPTS:
1) Motivations: Economic (Asian trade routes, gold), religious (spreading Christianity), and political (national glory, competition)
2) Key Voyages: Portuguese route to India, Columbus and the Americas, Magellan''s circumnavigation, and subsequent exploration
3) Columbian Exchange: Transfer of plants, animals, diseases, and ideas between Eastern and Western Hemispheres
4) Impact on Indigenous Peoples: Disease epidemics, conquest, enslavement, cultural destruction, and population collapse
5) Colonial Systems: Spanish, Portuguese, Dutch, French, and English colonial empires; mercantilism and exploitation

COMMON MISCONCEPTIONS:
- Believing Columbus "discovered" America when indigenous peoples had lived there for millennia
- Thinking exploration was purely positive progress when it caused enormous suffering
- Assuming Europeans were technologically superior in all ways
- Believing only Europeans explored when other civilizations had long-distance trade
- Thinking the Columbian Exchange was symmetrical when effects differed dramatically

TEACHING SEQUENCE:
Begin with the question: why did Europeans begin exploring in the 15th century? Analyze motivations: trade, religion, technology, and competition. Study Portuguese exploration: Prince Henry, route to India, trading posts. Examine Spanish exploration: Columbus, conquistadors, colonial empire. Trace the Columbian Exchange: what moved between hemispheres and with what effects. Analyze the impact on indigenous peoples: disease, conquest, cultural destruction. Study other European powers: Portuguese, Dutch, French, English empires. Examine mercantilism and colonial economic systems. Analyze the slave trade as a consequence of exploration. Assess exploration''s lasting effects on the interconnected world.

DIFFERENTIATION:
For struggling learners: Use maps to trace voyages and colonial territories, focus on key explorers and their journeys, provide cause-effect organizers for the Columbian Exchange, and use images and first-person accounts.
For advanced learners: Analyze primary sources from explorers and indigenous perspectives, research specific voyages or regions in depth, examine historiographical debates about exploration, and investigate lesser-known exploration.

VOCABULARY:
Exploration, Age of Discovery, circumnavigation, Columbus, Magellan, da Gama, conquistador, Columbian Exchange, epidemic, colonization, mercantilism, colony, empire, indigenous, slave trade

CONNECTION TO FUTURE LEARNING:
Exploration creates colonial empires lasting into the 20th century. Columbian Exchange transforms global ecology and diet. Colonial encounters shape modern racial and economic systems.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Age of Exploration' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.3.4: Scientific Revolution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Scientific Revolution' AND grade_level_min = 10),
  'Scientific Revolution (Grade 10) Topic Guide',
  'Teaching new ways of thinking about the natural world',
  'SCIENTIFIC REVOLUTION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand Renaissance humanism and its emphasis on questioning. Knowledge of classical and medieval views of nature provides context for revolutionary changes. Basic understanding of scientific concepts helps appreciate discoveries.

LEARNING OBJECTIVES:
- Analyze the transition from medieval to modern scientific thinking
- Understand key discoveries that transformed understanding of the universe
- Evaluate the development of the scientific method
- Examine the relationship between science and religion during this period
- Connect scientific developments to broader social and political changes
- Assess the Scientific Revolution''s lasting impact on modern thought

KEY CONCEPTS:
1) New Worldview: Shift from geocentric to heliocentric universe; from Aristotelian to mechanistic understanding of nature
2) Key Figures: Copernicus, Galileo, Kepler, Newton and their revolutionary discoveries
3) Scientific Method: Emphasis on observation, experimentation, and mathematical analysis rather than authority and tradition
4) Science and Religion: Tensions and accommodations between new scientific ideas and religious teachings
5) Institutions: Development of scientific societies, universities, and communication networks supporting research

COMMON MISCONCEPTIONS:
- Believing science and religion were entirely opposed when the relationship was complex
- Thinking scientific revolution happened suddenly rather than over two centuries
- Assuming scientists were pure rationalists without religious beliefs
- Believing the scientific method appeared fully formed
- Thinking discoveries were solely individual achievements without broader context

TEACHING SEQUENCE:
Begin with medieval and Renaissance views of the natural world. Introduce Copernicus and the heliocentric challenge to tradition. Study Galileo: telescope observations, conflict with the Church, and his approach. Analyze Kepler''s laws of planetary motion. Study Newton: laws of motion, gravity, and mathematical physics. Examine the development of the scientific method: observation, hypothesis, experimentation. Analyze the relationship between science and religion: conflicts and accommodations. Study the institutional development of science: societies, publications, universities. Connect the Scientific Revolution to the Enlightenment. Assess lasting impact on modern thinking and society.

DIFFERENTIATION:
For struggling learners: Use visual representations of key concepts (heliocentric vs geocentric), focus on key figures and their main discoveries, provide timelines, and connect to modern science.
For advanced learners: Analyze primary sources from scientific works, research specific discoveries in depth, examine the philosophy of science, and investigate non-European scientific traditions.

VOCABULARY:
Scientific Revolution, heliocentric, geocentric, Copernicus, Galileo, Kepler, Newton, gravity, scientific method, hypothesis, observation, experimentation, rationalism, empiricism

CONNECTION TO FUTURE LEARNING:
Scientific Revolution provides intellectual foundation for the Enlightenment. Scientific thinking transforms medicine, technology, and industry. Modern science continues the revolution''s methods.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scientific Revolution' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.3.5: Absolute Monarchies
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Absolute Monarchies' AND grade_level_min = 10),
  'Absolute Monarchies (Grade 10) Topic Guide',
  'Teaching centralized power in Europe',
  'ABSOLUTE MONARCHIES - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand feudalism and its decentralized power. Knowledge of the Reformation and religious wars provides context for political consolidation. Understanding of political philosophy concepts helps analyze justifications for absolute rule.

LEARNING OBJECTIVES:
- Define absolute monarchy and its characteristics
- Analyze the rise of centralized states in Europe after religious wars
- Evaluate the reign of Louis XIV as the model of absolutism
- Compare absolute monarchies with limited monarchies (England)
- Understand mercantilist economic policies and their goals
- Assess the consequences of absolutism for subjects and for later political development

KEY CONCEPTS:
1) Divine Right: Theory that monarchs derive authority directly from God and are accountable only to God
2) State Building: Consolidation of power including standing armies, bureaucracies, and taxation systems
3) Louis XIV: French "Sun King" as model of absolutism; Versailles, wars, and cultural patronage
4) English Exception: Development of parliamentary power and constitutional limits on monarchy
5) Mercantilism: Economic policy emphasizing state wealth through favorable trade balances, colonies, and regulation

COMMON MISCONCEPTIONS:
- Believing absolute monarchs had unlimited power when practical constraints existed
- Thinking absolutism appeared suddenly rather than developing over centuries
- Assuming all European states followed the same path to centralization
- Believing subjects had no rights or protections under absolutism
- Thinking absolutism was stable when it contained tensions leading to revolution

TEACHING SEQUENCE:
Begin with the aftermath of religious wars and the desire for stability. Analyze the theory of divine right and its justifications. Study state-building: armies, bureaucracies, taxation, and centralized law. Examine Louis XIV as the model: Versailles, "L''état, c''est moi," wars, and cultural politics. Compare absolutism in other states: Spain, Prussia, Russia, Austria. Contrast with English development: Civil War, Glorious Revolution, constitutional limits. Analyze mercantilism: goals, policies, and colonial expansion. Study the effects of absolutism on subjects: taxation, religion, rights. Connect to Enlightenment critiques and eventual revolutions.

DIFFERENTIATION:
For struggling learners: Use visual representations of power structures, focus on Louis XIV as central example, provide comparison charts with limited monarchy, and use images of Versailles and absolutist art.
For advanced learners: Analyze primary sources from political theorists, research specific monarchies in depth, examine resistance to absolutism, and investigate how absolutism prepared for revolutions.

VOCABULARY:
Absolute monarchy, divine right, Louis XIV, Sun King, Versailles, standing army, bureaucracy, mercantilism, balance of trade, Glorious Revolution, constitutional monarchy, parliament, taxation

CONNECTION TO FUTURE LEARNING:
Absolutism provides context for Enlightenment critiques and revolutions. State-building creates modern nation-states. English constitutionalism influences American government.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Monarchies' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.3.6: The Enlightenment
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Enlightenment' AND grade_level_min = 10),
  'The Enlightenment (Grade 10) Topic Guide',
  'Teaching age of reason and new ideas about government',
  'THE ENLIGHTENMENT - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand the Scientific Revolution and its methods. Knowledge of absolute monarchy provides context for Enlightenment political critiques. Understanding of religious and social structures helps analyze Enlightenment challenges to tradition.

LEARNING OBJECTIVES:
- Define the Enlightenment and its core principles
- Analyze major Enlightenment thinkers and their ideas
- Understand Enlightenment ideas about government, rights, and society
- Evaluate the Enlightenment''s influence on political revolutions
- Examine Enlightenment views on religion, education, and progress
- Assess the Enlightenment''s lasting impact and limitations

KEY CONCEPTS:
1) Reason and Progress: Belief that human reason could understand the world and improve society through rational reform
2) Political Philosophy: Social contract (Locke, Rousseau), separation of powers (Montesquieu), individual rights, and critiques of absolute power
3) Religious Critique: Deism and challenges to traditional religion; religious tolerance advocacy
4) Economic Ideas: Free trade and early capitalism (Adam Smith); critiques of mercantilism
5) Limitations: Enlightenment blind spots including gender, race, and class; benefits mainly for elites

COMMON MISCONCEPTIONS:
- Believing Enlightenment thinkers were atheists when most were deists or religious
- Thinking Enlightenment ideas were entirely new rather than building on earlier traditions
- Assuming Enlightenment ideas were immediately implemented
- Believing the Enlightenment applied its principles universally including to women, non-Europeans, and the poor
- Thinking the Enlightenment was purely positive without contradictions

TEACHING SEQUENCE:
Begin with the question: what is enlightenment? (Kant''s famous answer). Analyze the Scientific Revolution''s influence on Enlightenment thinking. Study key political thinkers: Locke (natural rights), Montesquieu (separation of powers), Rousseau (social contract). Examine critiques of absolute monarchy and traditional authority. Study religious views: deism, tolerance, and critiques of Church power. Analyze economic ideas: Adam Smith and free markets. Examine the philosophes and the Republic of Letters. Study Enlightenment influence on education and reform. Analyze the spread of Enlightenment ideas and "enlightened despots." Connect to American and French Revolutions.

DIFFERENTIATION:
For struggling learners: Focus on key thinkers and their main ideas, use graphic organizers connecting ideas, provide excerpts with clear explanations, and connect to modern concepts of rights.
For advanced learners: Analyze primary sources from Enlightenment thinkers, research specific philosophers in depth, examine Enlightenment contradictions and limitations, and investigate the Enlightenment''s global impact.

VOCABULARY:
Enlightenment, reason, progress, philosophe, natural rights, social contract, John Locke, Montesquieu, Rousseau, Voltaire, separation of powers, deism, religious tolerance, Adam Smith, laissez-faire

CONNECTION TO FUTURE LEARNING:
Enlightenment ideas directly influence American and French Revolutions. Political philosophy shapes modern democracy. Economic ideas influence capitalism and critiques of it.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Enlightenment' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT 4: MODERN PERIOD (7 topics)
-- ============================================================================

-- Topic 10.4.1: French Revolution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'French Revolution' AND grade_level_min = 10),
  'French Revolution (Grade 10) Topic Guide',
  'Teaching causes, events, and effects',
  'FRENCH REVOLUTION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand the Enlightenment and its political ideas. Knowledge of absolute monarchy in France provides context. Understanding of social hierarchy (estates) helps analyze revolutionary demands.

LEARNING OBJECTIVES:
- Analyze the causes of the French Revolution including political, economic, and social factors
- Trace the major phases of the Revolution from reform to radicalism
- Evaluate key events and their significance in the revolutionary process
- Understand the rise of Napoleon and his transformation of France and Europe
- Assess the Revolution''s impact on France and the world
- Connect revolutionary ideals to subsequent political developments

KEY CONCEPTS:
1) Causes: Financial crisis, social inequality (three estates), Enlightenment ideas, and weak leadership
2) Revolutionary Phases: Constitutional monarchy, radical republic, Terror, Directory, Napoleon
3) Key Events: Storming of Bastille, Declaration of Rights of Man, execution of Louis XVI, Reign of Terror
4) Napoleon: Rise to power, reforms (Code Napoleon), conquests, and eventual defeat
5) Legacy: Ideals of liberty, equality, fraternity; nationalism; conservative reaction; template for future revolutions

COMMON MISCONCEPTIONS:
- Believing the Revolution was entirely positive or entirely negative
- Thinking revolutionaries agreed on goals when factions constantly competed
- Assuming the Terror was inevitable rather than a specific phase with causes
- Believing Napoleon simply betrayed revolutionary ideals when his legacy is complex
- Thinking the Revolution ended quickly when its effects unfolded over decades

TEACHING SEQUENCE:
Begin with pre-revolutionary France: estates, inequality, financial crisis. Analyze the Enlightenment''s influence on revolutionary ideas. Study the calling of the Estates-General and the National Assembly. Examine the storming of the Bastille and early revolutionary events. Analyze the Declaration of the Rights of Man. Study the constitutional monarchy period and its failures. Examine the radical republic, the Terror, and Robespierre. Trace Napoleon''s rise: military success, coup, and reforms. Study Napoleon''s conquests and their effects on Europe. Analyze Napoleon''s defeat and the Restoration. Assess the Revolution''s lasting impact.

DIFFERENTIATION:
For struggling learners: Use visual timelines of phases, focus on key events, provide clear cause-effect chains, and use images and primary source excerpts.
For advanced learners: Analyze primary sources extensively, research specific aspects in depth, examine historiographical debates, and compare with other revolutions.

VOCABULARY:
French Revolution, estates, bourgeoisie, National Assembly, Bastille, Declaration of Rights of Man, Reign of Terror, Robespierre, guillotine, Napoleon, coup d''état, Napoleonic Code, nationalism

CONNECTION TO FUTURE LEARNING:
French Revolution establishes template for modern revolutions. Nationalism spreads across Europe. Revolutionary ideals influence democracy globally.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'French Revolution' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.4.2: Industrial Revolution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Industrial Revolution' AND grade_level_min = 10),
  'Industrial Revolution (Grade 10) Topic Guide',
  'Teaching economic and social transformation',
  'INDUSTRIAL REVOLUTION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand pre-industrial economic and social structures. Knowledge of scientific developments provides context for technological innovation. Understanding of global trade and colonialism helps explain resource availability and markets.

LEARNING OBJECTIVES:
- Analyze the causes of industrialization beginning in Britain
- Evaluate major technological innovations and their impact
- Understand the social effects of industrialization including urbanization and class formation
- Examine working conditions and reform movements
- Trace the spread of industrialization beyond Britain
- Assess industrialization''s global and environmental impact

KEY CONCEPTS:
1) British Origins: Agricultural revolution, coal and iron resources, colonial markets, stable government, and capital availability
2) Key Technologies: Steam engine, textile machinery, iron and steel production, transportation (railways)
3) Social Transformation: Urbanization, factory system, new social classes (bourgeoisie and proletariat), family changes
4) Working Conditions: Long hours, low wages, child labor, dangerous conditions; reform movements and labor organizing
5) Global Spread: Industrialization in Europe, North America, Japan; uneven development; colonial exploitation

COMMON MISCONCEPTIONS:
- Believing industrialization was entirely positive when it had significant costs
- Thinking it happened suddenly rather than developing over decades
- Assuming technology alone caused change when social and economic factors were essential
- Believing Britain industrialized entirely on its own without global connections
- Thinking all workers opposed industrialization when responses varied

TEACHING SEQUENCE:
Begin with pre-industrial economy and society as baseline. Analyze why Britain industrialized first: resources, institutions, colonies. Study key technologies: textiles, steam power, iron, railways. Examine the factory system and its organization. Analyze urbanization: growth of industrial cities and their conditions. Study social class formation: bourgeoisie and working class. Examine working conditions and daily life for workers. Study reform movements: labor unions, legislation, socialism. Trace industrialization''s spread to other countries. Analyze environmental and global impacts of industrialization.

DIFFERENTIATION:
For struggling learners: Use visual representations of technologies and social changes, focus on concrete examples, provide comparison charts of pre-industrial and industrial life, and use images and primary sources.
For advanced learners: Analyze primary sources extensively, research specific industries or regions, examine debates about industrialization''s effects, and investigate non-European industrialization.

VOCABULARY:
Industrial Revolution, factory, steam engine, textile, mechanization, urbanization, bourgeoisie, proletariat, labor union, strike, capitalism, socialism, laissez-faire, reform

CONNECTION TO FUTURE LEARNING:
Industrial Revolution transforms global economy and society. Class conflicts shape 19th and 20th century politics. Environmental impacts continue to present.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Industrial Revolution' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.4.3: Imperialism
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Imperialism' AND grade_level_min = 10),
  'Imperialism (Grade 10) Topic Guide',
  'Teaching European expansion and colonialism',
  'IMPERIALISM - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand the Industrial Revolution and its resource needs. Knowledge of nationalism and international competition provides context. Understanding of earlier colonialism helps distinguish new imperialism.

LEARNING OBJECTIVES:
- Analyze the motivations for 19th-century imperialism: economic, political, and ideological
- Trace the patterns of European colonization in Africa, Asia, and the Pacific
- Evaluate the effects of imperialism on colonized peoples and cultures
- Understand resistance movements and their varying success
- Analyze the connections between imperialism and racism
- Assess imperialism''s lasting legacies in the modern world

KEY CONCEPTS:
1) New Imperialism: Intensive colonization from 1870s driven by industrial needs, nationalism, and racist ideology
2) Scramble for Africa: European partition of Africa at Berlin Conference (1884-85); arbitrary borders and exploitation
3) Asian Colonization: British India, French Indochina, Dutch East Indies; varied colonial systems and impacts
4) Justifications: "White Man''s Burden," social Darwinism, and civilizing mission as ideological cover for exploitation
5) Resistance: From armed rebellion to cultural preservation; varied responses to colonial rule

COMMON MISCONCEPTIONS:
- Believing imperialism was primarily about spreading civilization rather than economic exploitation
- Thinking colonized peoples accepted rule passively rather than resisting
- Assuming imperialism is entirely in the past when its effects continue
- Believing all imperial powers operated identically when systems varied
- Thinking imperialism only affected colonized regions when it also shaped metropolitan powers

TEACHING SEQUENCE:
Begin with motivations for imperialism: economic, political, ideological. Analyze technological advantages enabling conquest: weapons, medicine, communications. Study the Scramble for Africa: Berlin Conference, partition, Belgian Congo. Examine British India: conquest, administration, economic exploitation. Study other Asian colonies: French Indochina, Dutch East Indies, European concessions in China. Analyze ideological justifications: racism, social Darwinism, civilizing mission. Study resistance movements: Sepoy Rebellion, Boxer Rebellion, African resistance. Examine effects on colonized societies: economic disruption, cultural destruction, education. Connect imperialism to World War I. Assess lasting legacies and decolonization.

DIFFERENTIATION:
For struggling learners: Use maps extensively, focus on specific case studies, provide clear frameworks for causes and effects, and use primary sources from multiple perspectives.
For advanced learners: Analyze primary sources from colonizers and colonized, research specific colonies in depth, examine postcolonial perspectives, and investigate connections to current inequalities.

VOCABULARY:
Imperialism, colonialism, colony, protectorate, sphere of influence, Scramble for Africa, Berlin Conference, White Man''s Burden, social Darwinism, civilizing mission, resistance, nationalism

CONNECTION TO FUTURE LEARNING:
Imperialism creates conditions for World War I. Colonial experiences shape independence movements. Imperial legacies continue to affect international relations.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Imperialism' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.4.4: World War I
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'World War I' AND grade_level_min = 10),
  'World War I (Grade 10) Topic Guide',
  'Teaching causes, events, and aftermath',
  'WORLD WAR I - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand imperialism, nationalism, and alliance systems of pre-war Europe. Knowledge of industrial and military technology helps understand the war''s character. Understanding of political systems provides context for analyzing wartime governments and post-war changes.

LEARNING OBJECTIVES:
- Analyze the long-term and immediate causes of World War I
- Understand the nature of trench warfare and the war''s unprecedented destruction
- Trace major battles and turning points of the conflict
- Evaluate the war''s global dimensions and impact on colonial peoples
- Analyze the Russian Revolution as a consequence of war
- Assess the Treaty of Versailles and its role in shaping the interwar period

KEY CONCEPTS:
1) MAIN Causes: Militarism, Alliances, Imperialism, Nationalism as interconnected causes
2) Trench Warfare: Static front lines, trenches, new weapons (machine guns, poison gas, tanks); unprecedented casualties
3) Total War: Mobilization of entire societies; home front; propaganda; economic warfare
4) Global War: Fighting in Africa, Middle East, and Asian colonies; colonial troops; global impact
5) Peace Settlement: Treaty of Versailles; war guilt; reparations; League of Nations; unstable peace

COMMON MISCONCEPTIONS:
- Believing assassination of Franz Ferdinand "caused" the war when it triggered existing tensions
- Thinking the war was purely European when it had global dimensions
- Assuming soldiers were initially enthusiastic about a long war
- Believing the Allies won decisively when the outcome was close
- Thinking Treaty of Versailles was entirely unjust or entirely just

TEACHING SEQUENCE:
Begin with pre-war Europe: alliances, arms race, imperial rivalries. Analyze the assassination of Franz Ferdinand and the July Crisis. Study the failure of the Schlieffen Plan and the establishment of trench warfare. Examine trench warfare conditions through primary sources. Study major battles: Verdun, Somme, Passchendaele. Analyze new technologies and their impact. Examine the war''s global dimensions. Study the Russian Revolution and its causes. Analyze U.S. entry and the war''s final phase. Study the Paris Peace Conference and Treaty of Versailles. Assess the war''s lasting impact.

DIFFERENTIATION:
For struggling learners: Use maps to track the war''s progression, focus on key events and turning points, provide visual representations of trench warfare, and use primary sources from soldiers.
For advanced learners: Analyze primary sources extensively, research specific battles or aspects in depth, examine historiographical debates about causes, and investigate the war''s impact on specific countries.

VOCABULARY:
World War I, Great War, alliance, Triple Entente, Triple Alliance, assassination, mobilization, trench warfare, no man''s land, propaganda, total war, armistice, Treaty of Versailles, reparations, League of Nations

CONNECTION TO FUTURE LEARNING:
World War I reshapes the global order and creates conditions for World War II. Russian Revolution establishes communism. Treaty of Versailles creates interwar tensions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'World War I' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.4.5: World War II and Holocaust
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'World War II and Holocaust' AND grade_level_min = 10),
  'World War II and Holocaust (Grade 10) Topic Guide',
  'Teaching global conflict and genocide',
  'WORLD WAR II AND HOLOCAUST - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand World War I and the Treaty of Versailles. Knowledge of the interwar period including the Great Depression provides context. Understanding of fascism and totalitarianism helps analyze aggressor nations.

LEARNING OBJECTIVES:
- Analyze the causes of World War II including the failures of peace and rise of fascism
- Trace major military campaigns in Europe and the Pacific
- Understand the Holocaust as systematic genocide and its historical significance
- Evaluate the war''s global dimensions and impact on civilian populations
- Analyze the war''s end and the creation of the postwar order
- Assess World War II''s lasting impact on international relations and human rights

KEY CONCEPTS:
1) Rise of Fascism: Nazi Germany, Fascist Italy, Imperial Japan; aggressive nationalism and expansionism
2) Global Conflict: Fighting on multiple continents; unprecedented scale and destruction
3) The Holocaust: Systematic genocide of six million Jews and millions of others; concentration camps; historical significance
4) Total War: Massive civilian casualties; strategic bombing; atomic weapons; home front mobilization
5) Postwar Order: United Nations; Cold War division; decolonization; Nuremberg trials; human rights

COMMON MISCONCEPTIONS:
- Believing the Holocaust was a wartime accident rather than deliberate genocide
- Thinking only Jews were targeted when Roma, disabled, LGBTQ, and others were also killed
- Assuming everyone in occupied Europe either resisted or collaborated when responses varied
- Believing the atomic bombs ended the war when their role is debated
- Thinking World War II neatly ended when consequences continued

TEACHING SEQUENCE:
Begin with interwar period: Treaty of Versailles failures, Great Depression, rise of fascism. Study Nazi ideology including antisemitism and racial hierarchy. Analyze appeasement and its failures. Study the war''s phases: German conquests, turning points, Allied victory. Examine the Holocaust: from discrimination to ghettos to death camps. Study resistance and rescue efforts during the Holocaust. Analyze the Pacific War including Pearl Harbor and atomic bombs. Examine the home fronts and total war mobilization. Study the war''s end and creation of postwar order. Assess lasting impact on international relations and human rights.

DIFFERENTIATION:
For struggling learners: Use maps and timelines, focus on key events and turning points, approach Holocaust with sensitivity and appropriate support, and use visual resources carefully.
For advanced learners: Analyze primary sources including testimony, research specific aspects in depth, examine historiographical debates, and investigate the war''s impact on specific countries.

VOCABULARY:
World War II, fascism, Nazi, Hitler, Holocaust, genocide, concentration camp, death camp, Axis, Allies, D-Day, atomic bomb, Hiroshima, Nagasaki, Nuremberg trials, United Nations

CONNECTION TO FUTURE LEARNING:
World War II creates Cold War order. Holocaust shapes human rights discourse. Decolonization reshapes the global map.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'World War II and Holocaust' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.4.6: Cold War and Decolonization
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Cold War and Decolonization' AND grade_level_min = 10),
  'Cold War and Decolonization (Grade 10) Topic Guide',
  'Teaching post-war world order',
  'COLD WAR AND DECOLONIZATION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand World War II''s outcome and the creation of postwar institutions. Knowledge of communism and capitalism provides ideological context. Understanding of imperialism helps explain decolonization movements.

LEARNING OBJECTIVES:
- Analyze the origins and key features of the Cold War
- Understand the global dimensions of superpower competition
- Trace the decolonization process across Africa and Asia
- Evaluate the impact of Cold War ideology on newly independent nations
- Analyze major Cold War crises and their resolution
- Assess the Cold War''s end and its global consequences

KEY CONCEPTS:
1) Cold War Origins: Ideological conflict between capitalism and communism; division of Europe; containment policy
2) Superpower Competition: Arms race, space race, proxy wars, and spheres of influence
3) Decolonization: Independence movements in Africa and Asia; varied paths to independence; neocolonialism
4) Third World: Non-aligned movement; development challenges; Cold War interventions
5) Cold War End: Soviet decline; revolutions of 1989; collapse of Soviet Union; post-Cold War order

COMMON MISCONCEPTIONS:
- Believing the Cold War was entirely about ideology rather than power politics
- Thinking decolonization was simply given rather than often fought for
- Assuming newly independent nations were simply pawns of superpowers
- Believing the Cold War never became "hot" when proxy wars killed millions
- Thinking the Cold War''s end solved all problems it created

TEACHING SEQUENCE:
Begin with the postwar division: Iron Curtain, containment, Truman Doctrine. Analyze Cold War features: nuclear arms race, alliances, propaganda. Study major crises: Berlin, Cuba, Korea, Vietnam. Examine decolonization: India, Africa, Southeast Asia. Analyze the Non-Aligned Movement and its significance. Study Cold War in the Third World: proxy conflicts and interventions. Examine détente and renewed tensions in the 1980s. Analyze the Cold War''s end: Gorbachev, 1989 revolutions, Soviet collapse. Assess the Cold War''s legacy and post-Cold War world.

DIFFERENTIATION:
For struggling learners: Use maps showing Cold War divisions and decolonization, focus on key events and concepts, provide timelines, and use primary sources from different perspectives.
For advanced learners: Analyze primary sources extensively, research specific countries or events in depth, examine historiographical debates about Cold War origins and causes of its end, and investigate Cold War legacies.

VOCABULARY:
Cold War, Iron Curtain, containment, superpower, nuclear, proxy war, decolonization, independence, nationalism, Non-Aligned Movement, Third World, détente, Gorbachev, perestroika, glasnost

CONNECTION TO FUTURE LEARNING:
Cold War shapes contemporary international relations. Decolonization creates modern global map. Post-Cold War challenges continue to evolve.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cold War and Decolonization' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic 10.4.7: Contemporary Issues
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Contemporary Issues' AND grade_level_min = 10),
  'Contemporary Issues (Grade 10) Topic Guide',
  'Teaching globalization, terrorism, and technology',
  'CONTEMPORARY ISSUES - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand Cold War history and its end. Knowledge of decolonization and post-colonial challenges provides context. Understanding of globalization concepts from geography supports contemporary analysis.

LEARNING OBJECTIVES:
- Analyze major global issues facing the contemporary world
- Understand globalization''s economic, cultural, and political dimensions
- Evaluate terrorism as a contemporary security challenge
- Examine technological changes and their social impact
- Analyze global inequality and development challenges
- Connect historical developments to current events

KEY CONCEPTS:
1) Post-Cold War Order: U.S. as sole superpower; new conflicts including ethnic wars and terrorism; rise of new powers
2) Globalization: Economic integration, cultural exchange, and political challenges; benefits and costs
3) Terrorism: Non-state violence for political goals; 9/11 and its consequences; responses to terrorism
4) Technology Revolution: Digital technology, internet, social media; economic and social transformation
5) Global Challenges: Climate change, inequality, migration, pandemic disease; need for international cooperation

COMMON MISCONCEPTIONS:
- Believing history ended with the Cold War when new conflicts emerged
- Thinking globalization is entirely new rather than having historical precedents
- Assuming terrorism is a new phenomenon or related to one religion
- Believing technology is neutral rather than having social and political impacts
- Thinking global problems can be solved by individual nations alone

TEACHING SEQUENCE:
Begin with the post-Cold War period: optimism and new challenges. Analyze globalization: economic, cultural, and political dimensions. Study the debates about globalization''s benefits and costs. Examine terrorism: definition, causes, major events including 9/11. Analyze responses to terrorism: security measures, military action, debates. Study the technology revolution: internet, social media, economic transformation. Examine global inequality and development challenges. Analyze climate change as a global challenge. Study the rise of new powers: China, India, and shifting global order. Connect to current events and students'' experiences.

DIFFERENTIATION:
For struggling learners: Use current events as entry points, focus on concrete examples, provide frameworks for analyzing issues, and connect to student experiences.
For advanced learners: Research specific issues in depth, analyze diverse perspectives, examine primary sources, and develop informed positions on current debates.

VOCABULARY:
Globalization, terrorism, 9/11, War on Terror, digital revolution, internet, social media, climate change, inequality, development, pandemic, international cooperation, multilateralism

CONNECTION TO FUTURE LEARNING:
Contemporary issues connect history to present. Understanding global challenges prepares for citizenship. Historical perspective informs current events analysis.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Contemporary Issues' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF GRADE 10 HISTORY TOPIC PROMPTS
-- Total: 24 topics across 4 units
-- ============================================================================
