-- Grade 6 History Topic Prompts
-- 24 comprehensive topic prompts for Grade 6 History
-- Topics organized by unit: Ancient Civilizations, Classical Greece and Rome, World Religions, Geography Skills

-- =====================================================
-- UNIT: ANCIENT CIVILIZATIONS
-- =====================================================

-- Topic: Early Humans and Agriculture
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Early Humans and Agriculture' AND grade_level_min = 6),
  'Early Humans and Agriculture (Grade 6) Topic Guide',
  'Teaching the transition from hunters to farmers - the Neolithic Revolution',
  'EARLY HUMANS AND AGRICULTURE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should have basic understanding of prehistoric timelines and human evolution concepts. They should understand cause and effect relationships and be able to analyze how changes in one area affect others.

LEARNING OBJECTIVES:
- Trace human development from early hominids through Homo sapiens
- Explain how early humans survived as hunter-gatherers
- Analyze the causes and effects of the Neolithic Revolution
- Evaluate how agriculture changed human society
- Connect the development of agriculture to the rise of civilizations

KEY CONCEPTS:
1) Early humans lived as hunter-gatherers, moving constantly to find food
2) The Neolithic Revolution (around 10,000 BCE) saw humans begin farming and domesticating animals
3) Agriculture allowed permanent settlements, surplus food, and population growth
4) Division of labor emerged: not everyone needed to farm, allowing specialization
5) These changes led to social hierarchies, governments, and eventually civilizations

COMMON MISCONCEPTIONS:
- Thinking the transition to agriculture was quick rather than gradual over millennia
- Believing hunter-gatherer life was entirely difficult (they often had more leisure time)
- Assuming agriculture was obviously better (it brought new diseases and inequality)
- Not understanding that this revolution happened independently in multiple places

TEACHING SEQUENCE:
Begin with early human migration and survival strategies. Study hunter-gatherer life: daily activities, tools, social organization. Explore why agriculture developed: climate change, population pressure, observation of plant growth. Examine where agriculture developed independently (Fertile Crescent, China, Mesoamerica). Analyze effects: permanent settlements, surplus, specialization, social hierarchy. Compare hunter-gatherer and agricultural societies. Discuss both benefits and costs of the agricultural revolution.

DIFFERENTIATION:
For struggling learners: Focus on before/after comparisons with visuals. Create cause-and-effect chains. Use simulation activities.
For advanced learners: Research the "Agricultural Revolution" as a gradual process. Compare agricultural development in different regions. Analyze evidence archaeologists use to understand this period.

VOCABULARY:
Neolithic, revolution, hunter-gatherer, nomadic, agriculture, domestication, surplus, settlement, specialization, division of labor, Fertile Crescent, hominid

CONNECTION TO FUTURE LEARNING:
Understanding the Neolithic Revolution prepares students for studying the rise of civilizations, the development of social hierarchies, and the patterns that shaped all subsequent human history.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Early Humans and Agriculture' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Mesopotamia
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Mesopotamia' AND grade_level_min = 6),
  'Mesopotamia (Grade 6) Topic Guide',
  'Teaching the cradle of civilization between two rivers',
  'MESOPOTAMIA - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand the Neolithic Revolution and how agriculture led to permanent settlements. Basic geography skills and map reading are essential.

LEARNING OBJECTIVES:
- Locate Mesopotamia and understand its geographic features
- Explain why the region is called the "cradle of civilization"
- Analyze major achievements: writing, law codes, architecture
- Compare different Mesopotamian empires (Sumer, Babylon, Assyria)
- Evaluate the lasting influence of Mesopotamian innovations

KEY CONCEPTS:
1) Mesopotamia means "between the rivers" (Tigris and Euphrates)
2) The region developed the first cities, writing (cuneiform), and organized governments
3) Sumerians invented the wheel, writing, and the 60-minute hour
4) Hammurabi''s Code was one of the first written law codes
5) Multiple empires rose and fell: Sumer, Akkad, Babylon, Assyria

COMMON MISCONCEPTIONS:
- Thinking Mesopotamia was one unified civilization (it was many cultures over time)
- Believing cuneiform was like our alphabet (it used symbols for words and syllables)
- Assuming ancient people were primitive (they had sophisticated mathematics and astronomy)
- Not understanding that rivers could be both beneficial and destructive

TEACHING SEQUENCE:
Map the region: Tigris and Euphrates rivers, Fertile Crescent location. Explain why rivers made civilization possible (water, farming, transportation). Study Sumerian innovations: cuneiform, wheel, mathematics, ziggurats. Analyze Hammurabi''s Code: what was fair? What seems harsh? Compare to modern laws. Trace succession of empires and their achievements. Discuss legacy: what do we still use from Mesopotamia? (60-minute hour, 7-day week)

DIFFERENTIATION:
For struggling learners: Focus on major innovations with visual examples. Create invention cards. Use maps extensively.
For advanced learners: Study cuneiform writing system. Analyze primary source excerpts from Hammurabi''s Code. Research one empire in depth.

VOCABULARY:
Mesopotamia, Tigris, Euphrates, cuneiform, ziggurat, Sumerian, Babylon, Hammurabi, city-state, irrigation, empire, scribe, Fertile Crescent

CONNECTION TO FUTURE LEARNING:
Understanding Mesopotamia prepares students for studying other ancient civilizations and recognizing patterns of civilization development including writing, law, and government.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mesopotamia' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Ancient Egypt
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Ancient Egypt' AND grade_level_min = 6),
  'Ancient Egypt (Grade 6) Topic Guide',
  'Teaching about pharaohs, pyramids, and the Nile River',
  'ANCIENT EGYPT - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand basic civilization concepts from studying Mesopotamia. Geographic skills and understanding of river valley civilizations are helpful.

LEARNING OBJECTIVES:
- Explain how the Nile River shaped Egyptian civilization
- Analyze the structure of Egyptian society and government
- Describe Egyptian religious beliefs and practices
- Evaluate Egyptian achievements in architecture, writing, and medicine
- Compare Egyptian civilization to Mesopotamia

KEY CONCEPTS:
1) The Nile''s annual flooding created fertile soil, making civilization possible in a desert
2) Pharaohs were god-kings who ruled with absolute power
3) Egyptian society was hierarchical: pharaoh, priests, nobles, scribes, artisans, farmers
4) Egyptians believed in afterlife and preserved bodies through mummification
5) Major achievements: pyramids, hieroglyphics, calendar, medical knowledge

COMMON MISCONCEPTIONS:
- Thinking slaves built the pyramids (evidence suggests paid workers)
- Believing all Egyptians were mummified (mostly royalty and wealthy)
- Assuming Egypt was always united (had periods of division and foreign rule)
- Viewing ancient Egyptians as only focused on death (they celebrated life too)

TEACHING SEQUENCE:
Study the Nile: its geography, flooding cycle, and importance ("Gift of the Nile"). Examine social hierarchy with pharaoh as god-king at the top. Explore religious beliefs: gods, afterlife, mummification, Book of the Dead. Study achievements: pyramids (engineering), hieroglyphics (writing), medicine, calendar. Compare to Mesopotamia: similarities and differences. Discuss Egyptian legacy in art, architecture, and culture.

DIFFERENTIATION:
For struggling learners: Use visual pyramids to show social hierarchy. Focus on most famous achievements. Create comparison charts.
For advanced learners: Decode hieroglyphics activities. Research specific pharaohs (Hatshepsut, Ramses, Cleopatra). Study the mummification process in detail.

VOCABULARY:
Pharaoh, Nile, hieroglyphics, pyramid, mummy, mummification, afterlife, dynasty, scribe, papyrus, delta, Upper Egypt, Lower Egypt, sphinx

CONNECTION TO FUTURE LEARNING:
Understanding ancient Egypt prepares students for studying other ancient civilizations and understanding how geography shapes culture and how religious beliefs influence society.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ancient Egypt' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Ancient India
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Ancient India' AND grade_level_min = 6),
  'Ancient India (Grade 6) Topic Guide',
  'Teaching Indus Valley civilization and early Indian culture',
  'ANCIENT INDIA - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand river valley civilizations from studying Mesopotamia and Egypt. Basic geography skills for locating South Asia are needed.

LEARNING OBJECTIVES:
- Describe the Indus Valley civilization and its achievements
- Analyze the development of Hinduism and Buddhism
- Explain the caste system and its effects on society
- Evaluate Indian contributions to math, science, and culture
- Compare Indian civilization to other ancient cultures

KEY CONCEPTS:
1) The Indus Valley civilization (Harappa, Mohenjo-Daro) had advanced urban planning
2) Hinduism developed over thousands of years with concepts of karma, dharma, and reincarnation
3) Buddhism was founded by Siddhartha Gautama (the Buddha) around 500 BCE
4) The caste system organized society into hereditary groups
5) Indian contributions include the concept of zero, decimal system, and significant literature

COMMON MISCONCEPTIONS:
- Thinking the caste system was always rigid (it became more rigid over time)
- Confusing Hinduism and Buddhism (Buddhism rejected caste and some Hindu practices)
- Believing we fully understand Indus Valley civilization (their writing remains undeciphered)
- Viewing ancient India as one unified culture (it was diverse with many kingdoms)

TEACHING SEQUENCE:
Map the subcontinent and the Indus River Valley. Study Harappa and Mohenjo-Daro: urban planning, sanitation, trade. Explore the mystery of their undeciphered writing. Study the development of Hinduism: Vedas, gods, karma, reincarnation. Examine Buddhism: the Buddha''s life, Four Noble Truths, spread across Asia. Analyze the caste system: origins, structure, effects. Celebrate achievements: mathematics (zero!), astronomy, Vedic literature.

DIFFERENTIATION:
For struggling learners: Focus on key achievements and religious concepts. Use visual comparisons with other civilizations. Create religion comparison charts.
For advanced learners: Research specific texts like the Vedas or Buddhist sutras. Study the Maurya Empire and Ashoka. Analyze the spread of Buddhism across Asia.

VOCABULARY:
Indus, Harappa, Mohenjo-Daro, Hinduism, Buddhism, karma, dharma, reincarnation, caste, Vedas, Sanskrit, Brahman, Buddha, enlightenment, subcontinent

CONNECTION TO FUTURE LEARNING:
Understanding ancient India prepares students for studying world religions, the spread of Buddhism, and the cultural foundations of modern South Asia.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ancient India' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Ancient China
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Ancient China' AND grade_level_min = 6),
  'Ancient China (Grade 6) Topic Guide',
  'Teaching dynasties, philosophies, and inventions',
  'ANCIENT CHINA - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand river valley civilizations and the pattern of civilization development. Basic geography skills for locating East Asia are needed.

LEARNING OBJECTIVES:
- Explain how geography shaped Chinese civilization
- Trace the development of dynasties and the Mandate of Heaven
- Compare Chinese philosophies: Confucianism, Daoism, Legalism
- Evaluate Chinese inventions and their impact
- Analyze how China interacted with other cultures

KEY CONCEPTS:
1) Chinese civilization developed along the Yellow (Huang He) and Yangtze rivers
2) Dynasties rose and fell according to the Mandate of Heaven concept
3) Three major philosophies emerged: Confucianism (social order), Daoism (harmony with nature), Legalism (strict laws)
4) Major inventions: paper, silk, compass, gunpowder, printing
5) The Silk Road connected China to the West through trade

COMMON MISCONCEPTIONS:
- Thinking China was always unified (periods of division occurred)
- Confusing dynasties (a common name doesn''t mean the same family)
- Believing the Great Wall was built at once (built over centuries)
- Viewing Chinese philosophies as religions in the Western sense

TEACHING SEQUENCE:
Map China''s geography: rivers, mountains, isolation. Explain the dynasty cycle and Mandate of Heaven. Study major dynasties: Shang, Zhou, Qin, Han. Compare the three philosophies: what did each value? How did each affect government? Explore inventions: paper, silk, compass, gunpowder. Study the Silk Road and cultural exchange. Discuss Chinese writing and the importance of scholars.

DIFFERENTIATION:
For struggling learners: Focus on major inventions and basic philosophy comparisons. Use timeline activities. Create invention cards.
For advanced learners: Study Confucian texts. Research the First Emperor Qin Shi Huang. Analyze the Silk Road trade network in depth.

VOCABULARY:
Dynasty, Mandate of Heaven, Confucianism, Daoism, Legalism, Silk Road, Yellow River, Yangtze, emperor, philosophy, calligraphy, jade, scholar, civil service

CONNECTION TO FUTURE LEARNING:
Understanding ancient China prepares students for studying Chinese influence on East Asia, trade networks, and the philosophical foundations that continue to shape Asian cultures.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ancient China' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Ancient Americas
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Ancient Americas' AND grade_level_min = 6),
  'Ancient Americas (Grade 6) Topic Guide',
  'Teaching Maya, Aztec, and Inca civilizations',
  'ANCIENT AMERICAS - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand civilization patterns from other ancient cultures. Basic geography of the Western Hemisphere and timeline skills are needed.

LEARNING OBJECTIVES:
- Locate and describe the geography of major American civilizations
- Compare the achievements of Maya, Aztec, and Inca civilizations
- Analyze how each civilization adapted to its environment
- Evaluate cultural achievements in agriculture, architecture, and knowledge
- Understand the impact of European contact

KEY CONCEPTS:
1) Advanced civilizations developed independently in the Americas
2) The Maya (Mesoamerica): writing, astronomy, mathematics, pyramids
3) The Aztecs (Central Mexico): Tenochtitlan, tribute empire, calendar
4) The Inca (Andes Mountains): road system, terracing, no written language but quipu
5) All were devastated by European conquest and diseases

COMMON MISCONCEPTIONS:
- Thinking these civilizations were primitive or uncivilized
- Confusing the different civilizations or their locations
- Believing the Aztec "disappeared" mysteriously like the Maya
- Not understanding the devastating impact of disease from European contact

TEACHING SEQUENCE:
Map the Americas showing where each civilization developed. Study the Maya: city-states, writing system, astronomy, calendar, pyramids. Examine the Aztecs: Tenochtitlan, religion, tribute system, warfare. Explore the Inca: empire stretching along the Andes, roads, terracing, quipu. Compare achievements in agriculture, architecture, government, and knowledge. Discuss European contact and its devastating effects. Recognize continued presence of indigenous peoples today.

DIFFERENTIATION:
For struggling learners: Focus on one civilization at a time with clear visuals. Create comparison charts. Use maps extensively.
For advanced learners: Research the Maya writing system decipherment. Study specific archaeological sites. Analyze how each civilization adapted to its unique environment.

VOCABULARY:
Maya, Aztec, Inca, Mesoamerica, Tenochtitlan, tribute, quipu, terrace, pyramid, glyph, sacrifice, maize, Andes, codex, conquistador

CONNECTION TO FUTURE LEARNING:
Understanding ancient American civilizations prepares students for studying European exploration, colonization, and the Columbian Exchange from multiple perspectives.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ancient Americas' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: CLASSICAL GREECE AND ROME
-- =====================================================

-- Topic: Geography of Ancient Greece
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Geography of Ancient Greece' AND grade_level_min = 6),
  'Geography of Ancient Greece (Grade 6) Topic Guide',
  'Teaching how mountains and seas shaped Greek civilization',
  'GEOGRAPHY OF ANCIENT GREECE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand how geography affects civilization development from earlier units. Basic map reading skills and understanding of Mediterranean geography are helpful.

LEARNING OBJECTIVES:
- Describe the geographic features of Greece and the Mediterranean
- Explain how geography led to the development of city-states
- Analyze how the sea influenced Greek culture, trade, and expansion
- Compare geographic factors in Greece to other civilizations studied
- Connect geography to political, economic, and cultural developments

KEY CONCEPTS:
1) Greece is mountainous with little flat farmland, dividing communities
2) Mountains led to the development of independent city-states (poleis)
3) Greece is a peninsula with many islands, making the sea central to life
4) Greeks became skilled sailors, traders, and colonizers
5) Mediterranean climate suited certain crops: grapes, olives, grain

COMMON MISCONCEPTIONS:
- Thinking Greece was one united country (city-states were independent)
- Ignoring Greek colonies around the Mediterranean
- Underestimating the difficulty of travel by land
- Not understanding how geography shaped Greek identity

TEACHING SEQUENCE:
Map Greece: peninsula, islands, mountains, seas. Compare to river valley civilizations: why is Greece different? Explain how mountains divided Greeks into city-states. Study the importance of the sea: trade, colonization, fishing. Connect geography to politics: why democracy developed differently from eastern empires. Examine Greek expansion: colonies around the Mediterranean and Black Sea. Discuss the Mediterranean climate and agriculture.

DIFFERENTIATION:
For struggling learners: Use physical maps and 3D models. Focus on basic connections between geography and city-states. Create simple cause-effect charts.
For advanced learners: Compare Greek geography to Rome or Mesopotamia. Research specific Greek colonies. Analyze how geography affected warfare.

VOCABULARY:
Peninsula, city-state, polis, Mediterranean, Aegean Sea, mountainous, colony, colonization, archipelago, strait, isthmus, harbor, climate

CONNECTION TO FUTURE LEARNING:
Understanding Greek geography prepares students for studying how Athens and Sparta developed differently, why Greeks expanded, and how geography shaped Greek culture and achievements.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Geography of Ancient Greece' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Athens and Democracy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Athens and Democracy' AND grade_level_min = 6),
  'Athens and Democracy (Grade 6) Topic Guide',
  'Teaching the birth of democratic government',
  'ATHENS AND DEMOCRACY - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand Greek geography and the city-state system. Basic knowledge of government concepts and comparison skills are needed.

LEARNING OBJECTIVES:
- Trace the development of democracy in Athens
- Explain how Athenian direct democracy worked
- Analyze who was and was not included in Athenian democracy
- Compare Athenian democracy to modern democracy
- Evaluate the strengths and limitations of Athenian democracy

KEY CONCEPTS:
1) Athens developed direct democracy where citizens voted on laws themselves
2) Key reformers: Draco, Solon, Cleisthenes, Pericles shaped Athenian democracy
3) Only adult male citizens could participate (no women, slaves, or foreigners)
4) The Assembly, Council, and Courts formed the government
5) Direct democracy differs from representative democracy

COMMON MISCONCEPTIONS:
- Thinking all Greeks or all Athenians could participate (only male citizens)
- Equating Athenian democracy with modern democracy
- Believing democracy appeared suddenly rather than evolving over centuries
- Ignoring that Athens also had slaves and excluded most residents from power

TEACHING SEQUENCE:
Define democracy (rule by the people). Trace Athenian political evolution: monarchy to oligarchy to democracy. Study key reformers and their contributions. Explain how the Assembly, Council, and Courts worked. Discuss who was included and excluded (citizens vs. women, slaves, foreigners). Compare direct democracy to representative democracy. Analyze limitations: was Athens truly democratic? Discuss Pericles and the Golden Age.

DIFFERENTIATION:
For struggling learners: Focus on basic concepts of citizen participation. Use visuals showing government structure. Compare to classroom voting.
For advanced learners: Study Pericles'' funeral oration. Analyze criticisms of democracy from ancient philosophers. Compare to Roman Republic.

VOCABULARY:
Democracy, direct democracy, citizen, Assembly, Council, oligarchy, tyranny, Pericles, Cleisthenes, Solon, participate, vote, law, polis

CONNECTION TO FUTURE LEARNING:
Understanding Athenian democracy prepares students for studying the Roman Republic, Enlightenment ideas, and the development of modern democratic governments.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Athens and Democracy' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Sparta
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Sparta' AND grade_level_min = 6),
  'Sparta (Grade 6) Topic Guide',
  'Teaching about the warrior city-state',
  'SPARTA - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand Athens and its democratic system for comparison. Knowledge of Greek geography and city-state concept is essential.

LEARNING OBJECTIVES:
- Describe Spartan society and its unique characteristics
- Analyze the Spartan military training system (agoge)
- Compare Spartan government to Athenian democracy
- Evaluate the role of women in Sparta compared to Athens
- Assess Sparta''s strengths and weaknesses as a civilization

KEY CONCEPTS:
1) Sparta was a military-focused city-state that valued strength and discipline above all
2) The agoge trained boys from age 7 to be warriors
3) Spartan government had two kings, a council, and an assembly
4) Spartan women had more freedom than Athenian women
5) Helots (enslaved people) did farming, freeing Spartans for war

COMMON MISCONCEPTIONS:
- Romanticizing Sparta as entirely admirable (it was brutal)
- Thinking Sparta had no culture (they had music, poetry, and art)
- Believing all Spartans were warriors (helots and perioikoi existed)
- Ignoring Spartan cruelty, especially toward helots and weak infants

TEACHING SEQUENCE:
Locate Sparta on the Peloponnesus. Compare Spartan values to Athenian values. Study the agoge: training from age 7, physical hardship, military focus. Examine social structure: Spartiates, perioikoi, helots. Analyze government: two kings, Council of Elders, Assembly. Compare women''s roles: Spartan women had more property rights and education. Discuss military achievements (Thermopylae) and limitations. Evaluate: what made Sparta successful? What were its weaknesses?

DIFFERENTIATION:
For struggling learners: Create Athens vs. Sparta comparison charts with visuals. Focus on key differences in values and lifestyle.
For advanced learners: Study Thermopylae in depth. Analyze Spartan decline. Research helot revolts and Spartan fear of their enslaved population.

VOCABULARY:
Sparta, Spartan, agoge, helot, perioikoi, military, discipline, barracks, phalanx, Thermopylae, oligarchy, council, warrior, Peloponnesus

CONNECTION TO FUTURE LEARNING:
Understanding Sparta provides crucial contrast to Athens, helping students understand the diversity of Greek civilization and different approaches to government, society, and values.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sparta' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Greek Philosophy and Culture
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Greek Philosophy and Culture' AND grade_level_min = 6),
  'Greek Philosophy and Culture (Grade 6) Topic Guide',
  'Teaching Socrates, Plato, Aristotle, and Greek arts',
  'GREEK PHILOSOPHY AND CULTURE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand Athenian democracy and Greek society. Basic critical thinking skills and willingness to discuss abstract ideas are helpful.

LEARNING OBJECTIVES:
- Identify major Greek philosophers and their key ideas
- Explain the meaning of philosophy and the Socratic method
- Describe Greek achievements in art, architecture, and drama
- Analyze how Greek culture influenced later civilizations
- Apply philosophical thinking to modern questions

KEY CONCEPTS:
1) Philosophy means "love of wisdom" - Greeks pioneered systematic inquiry
2) Socrates used questioning to seek truth (Socratic method)
3) Plato explored ideal forms and ideal government (The Republic)
4) Aristotle studied everything from biology to ethics, using observation and logic
5) Greek arts (sculpture, architecture, drama) set lasting standards

COMMON MISCONCEPTIONS:
- Thinking philosophy is irrelevant to daily life
- Confusing the philosophers and their specific ideas
- Not understanding that these ideas were revolutionary at the time
- Ignoring the connection between philosophy and science

TEACHING SEQUENCE:
Define philosophy and explain why Greeks valued it. Study Socrates: his method of questioning, his trial and death. Examine Plato: student of Socrates, Academy, Theory of Forms. Explore Aristotle: student of Plato, tutor of Alexander, observation-based study. Connect philosophy to Greek culture: drama (tragedy and comedy), architecture (columns, Parthenon), sculpture (idealized human form). Discuss lasting influence: scientific method, democratic ideals, artistic standards.

DIFFERENTIATION:
For struggling learners: Focus on key ideas from each philosopher in simple terms. Use visual examples of art and architecture. Practice the Socratic method with simple questions.
For advanced learners: Read excerpts from Plato''s dialogues. Compare Greek and modern philosophical questions. Research specific artworks or plays.

VOCABULARY:
Philosophy, philosopher, Socrates, Plato, Aristotle, Socratic method, logic, ethics, tragedy, comedy, column, Parthenon, ideal, reason, inquiry

CONNECTION TO FUTURE LEARNING:
Understanding Greek philosophy prepares students for studying Roman adoption of Greek culture, Renaissance revival of classical learning, and the foundations of Western thought.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Greek Philosophy and Culture' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Roman Republic
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Roman Republic' AND grade_level_min = 6),
  'Roman Republic (Grade 6) Topic Guide',
  'Teaching the transition from monarchy to republic',
  'ROMAN REPUBLIC - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand Greek city-states and Athenian democracy. Basic government concepts and timeline skills are needed.

LEARNING OBJECTIVES:
- Describe how Rome transitioned from monarchy to republic
- Explain the structure of the Roman Republic government
- Analyze the conflict between patricians and plebeians
- Compare the Roman Republic to Greek democracy
- Trace Roman expansion during the Republic

KEY CONCEPTS:
1) Rome expelled its kings and established a republic around 509 BCE
2) The Republic had elected officials: consuls, Senate, assemblies
3) Society was divided: patricians (nobles) and plebeians (commoners)
4) Plebeians fought for rights, eventually gaining tribunes and written laws (Twelve Tables)
5) Rome expanded through Italy and eventually the Mediterranean

COMMON MISCONCEPTIONS:
- Thinking the Republic was democratic like Athens (it was oligarchic)
- Ignoring the class conflict between patricians and plebeians
- Assuming the Senate was elected (senators were appointed for life)
- Not understanding that the Republic lasted 500 years

TEACHING SEQUENCE:
Trace Rome''s legendary founding and early monarchy. Explain why Romans expelled the kings and feared one-man rule. Study the Republic''s structure: two consuls, Senate, assemblies. Examine patrician-plebeian conflict and plebeian victories. Analyze the Twelve Tables as early written law. Compare to Greek democracy: similarities and differences. Map Roman expansion and its effects on government.

DIFFERENTIATION:
For struggling learners: Use diagrams showing government structure. Create comparison charts with Athens. Focus on key concepts: no kings, shared power.
For advanced learners: Study the Conflict of the Orders in depth. Analyze how expansion challenged the Republic. Research specific Roman leaders.

VOCABULARY:
Republic, consul, Senate, patrician, plebeian, tribune, veto, Twelve Tables, dictator, assembly, citizen, expansion, magistrate, Roman law

CONNECTION TO FUTURE LEARNING:
Understanding the Roman Republic prepares students for studying its fall and the rise of the Empire, as well as the Republic''s influence on American government.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Roman Republic' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Roman Empire
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Roman Empire' AND grade_level_min = 6),
  'Roman Empire (Grade 6) Topic Guide',
  'Teaching expansion, achievements, and eventual decline',
  'ROMAN EMPIRE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand the Roman Republic and why it faced challenges. Knowledge of Mediterranean geography and basic civilization concepts is needed.

LEARNING OBJECTIVES:
- Explain how the Republic became an Empire
- Describe the Roman Empire at its height
- Analyze Roman achievements in law, engineering, and culture
- Trace the causes of Roman decline and fall
- Evaluate Rome''s lasting legacy

KEY CONCEPTS:
1) Civil wars and strong leaders (Julius Caesar, Augustus) ended the Republic
2) The Empire brought the Pax Romana: 200 years of relative peace and prosperity
3) Roman achievements: roads, aqueducts, architecture, law, Latin language
4) Multiple factors caused decline: invasions, economic problems, political instability
5) The Western Empire fell in 476 CE; Eastern Empire (Byzantine) continued

COMMON MISCONCEPTIONS:
- Thinking Rome fell suddenly rather than declining over centuries
- Believing barbarians were purely destructive (they also settled and assimilated)
- Ignoring the Eastern Empire''s continuation
- Simplifying decline to one cause

TEACHING SEQUENCE:
Explain the transition from Republic to Empire: Caesar, civil war, Augustus. Map the Empire at its greatest extent. Study the Pax Romana: what made it possible? What did it provide? Examine achievements: roads, aqueducts, Colosseum, Roman law. Analyze multiple causes of decline: invasions, economic troubles, divided empire. Study the fall of the Western Empire in 476. Discuss lasting legacy: language, law, architecture, Christianity.

DIFFERENTIATION:
For struggling learners: Focus on major achievements with visuals. Create timeline of key events. Use before/after maps.
For advanced learners: Analyze primary sources about decline. Compare different historians'' interpretations. Study the Byzantine Empire''s continuation.

VOCABULARY:
Empire, emperor, Augustus, Pax Romana, aqueduct, Colosseum, gladiator, barbarian, decline, fall, Western Empire, Eastern Empire, Byzantine, legacy

CONNECTION TO FUTURE LEARNING:
Understanding the Roman Empire prepares students for studying the Middle Ages, the Byzantine Empire, and Rome''s lasting influence on Western civilization.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Roman Empire' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: WORLD RELIGIONS
-- =====================================================

-- Topic: Judaism
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Judaism' AND grade_level_min = 6),
  'Judaism (Grade 6) Topic Guide',
  'Teaching origins, beliefs, and historical importance',
  'JUDAISM - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand ancient Middle Eastern civilizations. Respect for religious diversity and ability to discuss beliefs objectively are essential.

LEARNING OBJECTIVES:
- Describe the origins of Judaism and key historical events
- Explain core beliefs: monotheism, covenant, Torah
- Identify important figures: Abraham, Moses, David
- Analyze Judaism''s influence on later religions
- Understand Judaism''s survival through diaspora

KEY CONCEPTS:
1) Judaism is one of the oldest monotheistic religions, believing in one God
2) The covenant is a special relationship between God and the Jewish people
3) Key texts: Torah (first five books), Hebrew Bible (Tanakh)
4) Historical events: Exodus from Egypt, kingdoms of Israel and Judah, diaspora
5) Judaism influenced Christianity and Islam

COMMON MISCONCEPTIONS:
- Confusing ancient Israelites with modern Jewish people
- Thinking all Jewish people practice the same way (there is diversity)
- Not understanding Judaism as a living religion today
- Viewing ancient texts as simple history rather than sacred literature

TEACHING SEQUENCE:
Introduce monotheism as a revolutionary concept. Study Abraham as father of the faith and the covenant. Examine Moses, the Exodus, and receiving the Torah at Sinai. Trace history: united kingdom, divided kingdom, Babylonian exile, diaspora. Explain key beliefs: one God, covenant, Torah study, ethical living. Discuss Jewish practices: Sabbath, holidays, dietary laws. Analyze Judaism''s influence on Christianity and Islam. Emphasize Jewish survival and adaptation through history.

DIFFERENTIATION:
For struggling learners: Focus on key stories and concepts. Use timeline of major events. Create vocabulary cards for religious terms.
For advanced learners: Study excerpts from the Torah. Research Jewish diaspora history. Compare Jewish beliefs to other ancient religions.

VOCABULARY:
Judaism, monotheism, covenant, Torah, Abraham, Moses, Exodus, diaspora, synagogue, rabbi, Sabbath, Hebrew, Israel, Tanakh

CONNECTION TO FUTURE LEARNING:
Understanding Judaism prepares students for studying Christianity, Islam, and the interconnected history of the three Abrahamic religions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Judaism' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Christianity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Christianity' AND grade_level_min = 6),
  'Christianity (Grade 6) Topic Guide',
  'Teaching from Jesus to a world religion',
  'CHRISTIANITY - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand Judaism and the Roman Empire context. Objective approach to studying religions is essential.

LEARNING OBJECTIVES:
- Describe the life and teachings of Jesus
- Explain core Christian beliefs and how Christianity developed
- Trace the spread of Christianity through the Roman Empire
- Analyze why Christianity appealed to many people
- Understand Christianity''s influence on Western civilization

KEY CONCEPTS:
1) Christianity began with Jesus of Nazareth in Roman-controlled Judea
2) Christians believe Jesus is the Son of God who died and rose for humanity''s salvation
3) Key text is the Bible, including Old Testament (Hebrew Bible) and New Testament
4) Despite persecution, Christianity spread throughout the Roman Empire
5) Constantine legalized Christianity (313 CE); it later became Rome''s official religion

COMMON MISCONCEPTIONS:
- Thinking Christianity immediately dominated the ancient world
- Ignoring the Jewish roots of Christianity
- Not understanding the diversity within Christianity from the beginning
- Viewing the spread of Christianity as purely peaceful

TEACHING SEQUENCE:
Set the context: Roman-ruled Judea, Jewish expectations. Study Jesus'' life, teachings (parables, Sermon on the Mount), death, and resurrection belief. Examine early Christian communities and Paul''s missionary journeys. Analyze why Christianity appealed: hope, equality, community. Study Roman persecution and eventual acceptance. Trace Constantine''s role and Christianity becoming official. Discuss early church development and divisions.

DIFFERENTIATION:
For struggling learners: Focus on key stories and timeline of spread. Use maps showing Christianity''s expansion. Create comparison charts with Judaism.
For advanced learners: Study the New Testament formation. Research early church councils. Analyze the debate over Christianity''s relationship to Roman culture.

VOCABULARY:
Christianity, Jesus, Messiah, Christ, gospel, Bible, New Testament, resurrection, salvation, disciple, apostle, Paul, Constantine, persecution

CONNECTION TO FUTURE LEARNING:
Understanding Christianity prepares students for studying the Middle Ages, the Byzantine Empire, the Reformation, and Christianity''s ongoing influence on world history.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Christianity' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Islam
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Islam' AND grade_level_min = 6),
  'Islam (Grade 6) Topic Guide',
  'Teaching the life of Muhammad and Islamic civilization',
  'ISLAM - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand Judaism and Christianity for context. Objective, respectful approach to studying religions is essential.

LEARNING OBJECTIVES:
- Describe the life of Muhammad and the origins of Islam
- Explain the Five Pillars and core beliefs
- Trace the rapid spread of Islam
- Analyze achievements of Islamic civilization
- Understand Islam''s connections to Judaism and Christianity

KEY CONCEPTS:
1) Islam began with Muhammad in Arabia around 610 CE
2) Muslims believe in one God (Allah) and Muhammad as the final prophet
3) The Five Pillars: faith declaration, prayer, charity, fasting, pilgrimage
4) The Quran is the holy book, believed to be God''s word revealed to Muhammad
5) Islam spread rapidly through conquest and trade, creating a vast civilization

COMMON MISCONCEPTIONS:
- Conflating Islam with terrorism or violence
- Not recognizing Islam''s connections to Judaism and Christianity
- Ignoring the achievements of Islamic civilization
- Treating all Muslims as identical (great diversity exists)

TEACHING SEQUENCE:
Set context: Arabia before Islam, trade routes, diverse religions. Study Muhammad''s life: merchant, prophet, leader. Explain core beliefs: monotheism, prophets including Jesus and Moses, Quran. Detail the Five Pillars and their meanings. Trace the spread of Islam after Muhammad. Celebrate achievements: science, mathematics, medicine, art, architecture. Study cultural centers: Baghdad, Cordoba. Discuss Islam''s connections to other Abrahamic faiths.

DIFFERENTIATION:
For struggling learners: Focus on the Five Pillars as a framework. Use maps showing spread. Create comparison charts with other religions.
For advanced learners: Study the Golden Age of Islam in depth. Research specific scholars (Al-Khwarizmi, Ibn Sina). Analyze the preservation of Greek learning.

VOCABULARY:
Islam, Muslim, Muhammad, Allah, Quran, mosque, Five Pillars, Mecca, Medina, hijra, caliph, prophet, pilgrimage, jihad, Ramadan

CONNECTION TO FUTURE LEARNING:
Understanding Islam prepares students for studying the Crusades, medieval interactions between civilizations, and Islam''s ongoing significance in world history.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Islam' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Hinduism
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Hinduism' AND grade_level_min = 6),
  'Hinduism (Grade 6) Topic Guide',
  'Teaching the ancient traditions of India',
  'HINDUISM - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should have studied ancient India. Understanding that religions can be complex and diverse, rather than monolithic, is important.

LEARNING OBJECTIVES:
- Explain the origins and development of Hinduism
- Describe core beliefs: Brahman, karma, dharma, reincarnation
- Identify important texts and deities
- Analyze the caste system and its religious dimensions
- Understand Hinduism''s influence on Indian culture

KEY CONCEPTS:
1) Hinduism developed over thousands of years without a single founder
2) Key beliefs: Brahman (ultimate reality), karma (actions have consequences), reincarnation
3) Many gods represent aspects of Brahman: Brahma, Vishnu, Shiva
4) Sacred texts include the Vedas, Upanishads, and epics (Ramayana, Mahabharata)
5) Dharma (duty) varies by caste and stage of life

COMMON MISCONCEPTIONS:
- Thinking Hinduism is polytheistic in a simple sense (complex theology)
- Viewing the caste system as purely religious (also social/economic)
- Assuming all Hindus practice the same way (great diversity)
- Ignoring Hindu philosophy''s sophistication

TEACHING SEQUENCE:
Explain Hinduism''s ancient origins and gradual development. Introduce key concepts: Brahman as ultimate reality, atman (soul), karma, reincarnation. Study the goal of moksha (liberation from rebirth). Examine major deities and their roles. Discuss sacred texts: Vedas, Upanishads, Bhagavad Gita. Analyze the caste system and dharma. Explore Hindu practices: puja, festivals, temples. Connect to Indian culture and daily life.

DIFFERENTIATION:
For struggling learners: Focus on key concepts with visual diagrams. Use stories from Hindu epics. Create concept cards for vocabulary.
For advanced learners: Study excerpts from Hindu texts. Research the bhakti (devotional) movement. Analyze the relationship between Hinduism and the caste system.

VOCABULARY:
Hinduism, Brahman, atman, karma, dharma, reincarnation, moksha, Vedas, Brahma, Vishnu, Shiva, caste, mantra, puja, yoga, Sanskrit

CONNECTION TO FUTURE LEARNING:
Understanding Hinduism prepares students for studying Buddhism (which arose from Hindu context), Indian history, and the diversity of world religious traditions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Hinduism' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Buddhism
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Buddhism' AND grade_level_min = 6),
  'Buddhism (Grade 6) Topic Guide',
  'Teaching the Buddha and the spread of Buddhism',
  'BUDDHISM - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand Hinduism and ancient Indian context. Willingness to explore different ways of understanding life and suffering is helpful.

LEARNING OBJECTIVES:
- Describe the life of Siddhartha Gautama (the Buddha)
- Explain the Four Noble Truths and Eightfold Path
- Compare Buddhism to Hinduism
- Trace the spread of Buddhism across Asia
- Understand different forms of Buddhism

KEY CONCEPTS:
1) Siddhartha Gautama became the Buddha (Awakened One) through enlightenment
2) The Four Noble Truths explain suffering and how to end it
3) The Eightfold Path provides a way of living to reach nirvana
4) Buddhism rejected the caste system and Vedic rituals
5) Buddhism spread from India to China, Japan, Southeast Asia, and beyond

COMMON MISCONCEPTIONS:
- Thinking the Buddha is a god (he is a teacher)
- Assuming Buddhism has no diversity (Theravada, Mahayana, Vajrayana)
- Believing Buddhism is pessimistic (the goal is ending suffering)
- Not understanding that Buddhism adapted in different cultures

TEACHING SEQUENCE:
Tell the story of Siddhartha: prince who saw suffering, seeker, Buddha. Explain the Four Noble Truths: suffering exists, has a cause, can end, the path to end it. Detail the Eightfold Path: right view, intention, speech, action, livelihood, effort, mindfulness, concentration. Compare to Hinduism: what Buddhism kept, what it rejected. Trace the spread of Buddhism: Ashoka in India, Silk Road, China, Japan, Southeast Asia. Discuss different schools and adaptations.

DIFFERENTIATION:
For struggling learners: Focus on the Buddha''s story and basic teachings. Use visual representations of the Eightfold Path. Create comparison charts with Hinduism.
For advanced learners: Study Buddhist texts (Dhammapada excerpts). Research one school of Buddhism in depth. Analyze how Buddhism changed as it spread.

VOCABULARY:
Buddhism, Buddha, Siddhartha, enlightenment, Four Noble Truths, Eightfold Path, nirvana, suffering, meditation, Theravada, Mahayana, sangha, dharma

CONNECTION TO FUTURE LEARNING:
Understanding Buddhism prepares students for studying Asian history, cultural exchange along the Silk Road, and the diversity of world religions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Buddhism' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Religious Interactions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Religious Interactions' AND grade_level_min = 6),
  'Religious Interactions (Grade 6) Topic Guide',
  'Teaching about trade, conflict, and cultural exchange',
  'RELIGIOUS INTERACTIONS - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should have studied the major world religions. Understanding of trade routes and cultural exchange concepts is helpful.

LEARNING OBJECTIVES:
- Analyze how religions spread through trade and conquest
- Examine examples of religious coexistence and conflict
- Evaluate how religions influenced each other
- Understand the role of religion in cultural exchange
- Develop respect for religious diversity

KEY CONCEPTS:
1) Religions spread through trade routes (Silk Road, maritime routes), missionaries, and conquest
2) Religious interactions included both peaceful exchange and violent conflict
3) Religions often influenced each other in art, philosophy, and practice
4) Religious tolerance varied by time and place
5) Understanding religious interactions helps explain historical events and patterns

COMMON MISCONCEPTIONS:
- Thinking religious conflict was constant throughout history
- Ignoring periods of peaceful coexistence and cooperation
- Viewing religions as unchanging despite interactions
- Assuming conflict was only about religion (often intertwined with politics and economics)

TEACHING SEQUENCE:
Map how each religion spread: trade routes, conquest, missionaries. Study examples of coexistence: Islamic Spain, early Mughal India. Examine conflicts: Crusades, religious wars, persecution. Analyze mutual influence: architecture, philosophy, practices. Discuss how religions adapted in new cultures. Evaluate different approaches to diversity: tolerance, conversion, exclusion. Connect to present: religious diversity in today''s world.

DIFFERENTIATION:
For struggling learners: Focus on specific examples with maps and visuals. Create timelines showing spread of religions. Use case studies of coexistence and conflict.
For advanced learners: Research one period of interaction in depth. Analyze primary sources from different perspectives. Debate historical questions about religious coexistence.

VOCABULARY:
Interaction, spread, missionary, conversion, tolerance, coexistence, conflict, persecution, influence, adapt, Crusades, Silk Road, cultural exchange

CONNECTION TO FUTURE LEARNING:
Understanding religious interactions prepares students for studying the Crusades, colonization, and ongoing questions about religious diversity and tolerance.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Religious Interactions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: GEOGRAPHY SKILLS
-- =====================================================

-- Topic: Map Skills (Grade 6)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Map Skills' AND grade_level_min = 6),
  'Map Skills (Grade 6) Topic Guide',
  'Teaching reading and interpreting different types of maps',
  'MAP SKILLS (GRADE 6) - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have basic map reading skills from elementary school. Understanding of scale, symbols, and cardinal directions is expected.

LEARNING OBJECTIVES:
- Read and interpret political, physical, and thematic maps
- Analyze maps as historical sources
- Create maps to display information
- Use maps to support historical and geographic arguments
- Evaluate maps for accuracy and bias

KEY CONCEPTS:
1) Different types of maps serve different purposes: political, physical, thematic
2) Maps are interpretations that involve choices about what to include and emphasize
3) Map projections all distort reality in some way (Mercator, Peters, etc.)
4) Maps are primary sources that reveal how people understood their world
5) GIS and digital mapping have transformed geography

COMMON MISCONCEPTIONS:
- Thinking maps are objective truth rather than interpretations
- Not recognizing that all map projections distort
- Ignoring the dates of maps (boundaries change)
- Viewing maps as separate from historical context

TEACHING SEQUENCE:
Review map basics: symbols, scale, cardinal directions. Compare map types: political (boundaries), physical (landforms), thematic (specific data). Analyze map projections: why does Greenland look so big on Mercator maps? Study historical maps as primary sources. Practice reading and interpreting different maps. Create maps to display collected data. Evaluate maps for purpose, accuracy, and potential bias. Introduce GIS and digital mapping concepts.

DIFFERENTIATION:
For struggling learners: Review basics before advancing. Use step-by-step map analysis guides. Focus on one map type at a time.
For advanced learners: Study map projection mathematics. Analyze propaganda maps from history. Create complex thematic maps using data.

VOCABULARY:
Political map, physical map, thematic map, projection, scale, legend, key, compass rose, latitude, longitude, GIS, distortion, cartography

CONNECTION TO FUTURE LEARNING:
Map skills are fundamental for all geography and history study. Understanding maps as interpretations prepares students for critical analysis of all sources.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Map Skills' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Latitude and Longitude
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Latitude and Longitude' AND grade_level_min = 6),
  'Latitude and Longitude (Grade 6) Topic Guide',
  'Teaching using coordinates to locate places',
  'LATITUDE AND LONGITUDE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand basic map reading and have studied the globe. Basic number line concepts from math are helpful.

LEARNING OBJECTIVES:
- Explain what latitude and longitude are
- Use coordinates to locate places on maps and globes
- Understand the relationship between latitude and climate
- Calculate distance using coordinates
- Apply coordinate systems to navigation and GPS

KEY CONCEPTS:
1) Latitude lines run east-west and measure distance north or south of the equator
2) Longitude lines run north-south and measure distance east or west of the Prime Meridian
3) Any location can be described using latitude and longitude coordinates
4) Latitude affects climate: closer to equator = warmer
5) GPS uses coordinates to locate positions precisely

COMMON MISCONCEPTIONS:
- Confusing latitude (horizontal lines) with longitude (vertical lines)
- Thinking the lines are real rather than human constructions
- Not understanding that coordinates can be very precise
- Forgetting that longitude relates to time zones

TEACHING SEQUENCE:
Review the globe and key lines: equator, Prime Meridian, tropics, polar circles. Explain latitude: measuring north and south of equator in degrees. Explain longitude: measuring east and west of Prime Meridian. Practice finding locations using coordinates. Connect latitude to climate patterns. Explore time zones and their relationship to longitude. Use GPS technology to demonstrate real-world applications. Create activities where students plot coordinates.

DIFFERENTIATION:
For struggling learners: Use hand motions (latitude = ladder rungs go side to side). Practice with simple coordinate games. Use larger increments before precision.
For advanced learners: Calculate actual distances between coordinates. Study navigation history and the longitude problem. Create geocaching activities.

VOCABULARY:
Latitude, longitude, coordinates, degree, equator, Prime Meridian, tropics, polar circles, hemisphere, GPS, navigation, time zone, meridian

CONNECTION TO FUTURE LEARNING:
Understanding coordinates is essential for precise geographic analysis, navigation, and understanding global patterns in climate and time.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Latitude and Longitude' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: World Regions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'World Regions' AND grade_level_min = 6),
  'World Regions (Grade 6) Topic Guide',
  'Teaching physical and cultural regions of the world',
  'WORLD REGIONS - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand basic map skills and have familiarity with continents. Knowledge of factors that define regions is helpful.

LEARNING OBJECTIVES:
- Define different types of regions: physical, political, cultural
- Identify major world regions and their characteristics
- Analyze what defines region boundaries
- Compare and contrast different world regions
- Understand how regions change over time

KEY CONCEPTS:
1) A region is an area with shared characteristics that distinguish it from surrounding areas
2) Physical regions are defined by natural features (climate, landforms)
3) Political regions are defined by human-made boundaries (countries, states)
4) Cultural regions are defined by shared beliefs, languages, and practices
5) Region definitions depend on purpose and can overlap

COMMON MISCONCEPTIONS:
- Thinking regions have clear, fixed boundaries
- Assuming everyone in a region is the same
- Ignoring that the same place can belong to different regions by different definitions
- Viewing regions as permanent rather than changing

TEACHING SEQUENCE:
Define regions and explain different types. Study major world regions: Europe, Asia, Africa, Americas, Oceania, and their subdivisions. Analyze what characteristics define each region. Compare physical vs. cultural region boundaries. Examine case studies where regions overlap or conflict. Discuss how regions change: political changes, cultural shifts. Apply regional thinking to current events.

DIFFERENTIATION:
For struggling learners: Focus on one type of region at a time. Use color-coded maps. Create region fact sheets.
For advanced learners: Analyze contested regions (Kurdistan, Kashmir). Research how region definitions affect policy. Compare different systems for dividing the world.

VOCABULARY:
Region, physical region, cultural region, political region, boundary, characteristic, climate zone, biome, subregion, overlap, transition zone

CONNECTION TO FUTURE LEARNING:
Understanding regions prepares students for analyzing how geography shapes history and culture, and for understanding global patterns and relationships.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'World Regions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Physical Geography
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Physical Geography' AND grade_level_min = 6),
  'Physical Geography (Grade 6) Topic Guide',
  'Teaching landforms, climate, and natural resources',
  'PHYSICAL GEOGRAPHY - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand basic Earth science concepts and map reading. Knowledge of how geography affects civilizations from history units is helpful.

LEARNING OBJECTIVES:
- Identify major landforms and their characteristics
- Explain climate patterns and factors that affect climate
- Analyze the distribution of natural resources
- Connect physical geography to human settlement patterns
- Evaluate human interaction with physical environments

KEY CONCEPTS:
1) Landforms include mountains, plains, plateaus, valleys, and bodies of water
2) Climate is determined by latitude, altitude, proximity to water, and other factors
3) Natural resources are unevenly distributed around the world
4) Physical geography has shaped where and how humans live throughout history
5) Humans both adapt to and modify physical environments

COMMON MISCONCEPTIONS:
- Thinking climate and weather are the same thing
- Assuming physical geography determines human development (geographic determinism)
- Ignoring how human actions change physical geography
- Not understanding the interconnections of Earth systems

TEACHING SEQUENCE:
Review major landforms with examples from around the world. Study climate patterns: what factors create different climates? Map the distribution of natural resources globally. Analyze how physical geography shaped civilizations studied earlier. Examine case studies of human-environment interaction. Discuss how physical geography creates opportunities and challenges. Connect to current issues: climate change, resource conflicts.

DIFFERENTIATION:
For struggling learners: Use visual diagrams of landforms. Create climate zone maps with color coding. Focus on clear cause-effect relationships.
For advanced learners: Analyze climate data and make predictions. Research how specific physical features shaped historical events. Study current environmental issues in depth.

VOCABULARY:
Landform, mountain, plain, plateau, valley, climate, weather, latitude, altitude, natural resources, renewable, nonrenewable, ecosystem, biome

CONNECTION TO FUTURE LEARNING:
Understanding physical geography prepares students for analyzing how environment shapes history and current events, and for understanding environmental issues.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Physical Geography' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Human Geography
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Human Geography' AND grade_level_min = 6),
  'Human Geography (Grade 6) Topic Guide',
  'Teaching population, culture, and economic activities',
  'HUMAN GEOGRAPHY - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand physical geography and basic cultural concepts. Knowledge of civilizations from earlier units provides helpful context.

LEARNING OBJECTIVES:
- Analyze population distribution and movement
- Describe how cultures develop and spread
- Explain economic activities and their geographic patterns
- Examine urbanization and its effects
- Evaluate human modification of environments

KEY CONCEPTS:
1) Human geography studies where people live and why
2) Population is unevenly distributed based on many factors
3) Cultures develop in place and spread through migration, trade, and communication
4) Economic activities depend on resources, location, and human decisions
5) Humans constantly modify their environments

COMMON MISCONCEPTIONS:
- Thinking population distribution is random
- Ignoring how culture is always changing
- Assuming economic development follows one path
- Viewing urban and rural as completely separate

TEACHING SEQUENCE:
Map world population distribution: where do people live? Why? Study factors affecting population: climate, resources, history, economics. Examine culture: what is it? How does it spread? (cultural diffusion) Analyze economic activities: primary, secondary, tertiary. Study urbanization: growth of cities, push and pull factors. Discuss human modification of environments: positive and negative impacts.

DIFFERENTIATION:
For struggling learners: Use population density maps with visual keys. Create culture element lists. Focus on clear patterns with examples.
For advanced learners: Analyze demographic data. Study cultural diffusion through specific case studies. Research urbanization trends in different regions.

VOCABULARY:
Human geography, population, density, migration, culture, cultural diffusion, urbanization, rural, urban, economy, primary, secondary, tertiary, push factor, pull factor

CONNECTION TO FUTURE LEARNING:
Understanding human geography prepares students for analyzing migration, cultural exchange, economic development, and contemporary global issues.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Human Geography' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Environmental Issues
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Environmental Issues' AND grade_level_min = 6),
  'Environmental Issues (Grade 6) Topic Guide',
  'Teaching conservation and sustainability',
  'ENVIRONMENTAL ISSUES - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand physical and human geography. Knowledge of natural resources and human-environment interaction is essential.

LEARNING OBJECTIVES:
- Identify major environmental challenges facing the world
- Analyze causes and effects of environmental problems
- Evaluate different approaches to environmental protection
- Understand the concept of sustainability
- Connect local and global environmental issues

KEY CONCEPTS:
1) Major issues: climate change, deforestation, pollution, loss of biodiversity, resource depletion
2) Environmental problems often have multiple interconnected causes
3) Solutions require balancing human needs with environmental protection
4) Sustainability means meeting present needs without compromising future generations
5) Individual and collective action can make a difference

COMMON MISCONCEPTIONS:
- Thinking environmental problems are hopeless
- Believing technology will solve everything
- Ignoring the connection between local and global issues
- Viewing environment and economy as always opposed

TEACHING SEQUENCE:
Introduce major environmental challenges with evidence. Analyze causes: population growth, consumption, industrialization. Examine effects: on ecosystems, on human communities, on resources. Study different approaches: conservation, regulation, technology, behavior change. Explore the concept of sustainability. Examine case studies: successes and ongoing challenges. Connect to personal and community action. Discuss different perspectives on environmental policy.

DIFFERENTIATION:
For struggling learners: Focus on one issue with clear cause-effect chains. Use visuals showing environmental change. Emphasize positive actions.
For advanced learners: Research specific environmental policies and debates. Analyze data on environmental trends. Design solutions for local issues.

VOCABULARY:
Conservation, sustainability, climate change, deforestation, pollution, biodiversity, ecosystem, renewable, nonrenewable, carbon footprint, greenhouse gas, endangered

CONNECTION TO FUTURE LEARNING:
Understanding environmental issues prepares students for analyzing how environmental factors affect history and contemporary events, and for becoming informed citizens.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Environmental Issues' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;
