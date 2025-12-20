-- =============================================
-- GRADE 10 SCIENCE TOPIC PROMPTS
-- Subject: Science (Biology)
-- Grade: 10 (High School)
-- Units: Cell Biology, Metabolism, Genetics, Evolution, Ecology
-- =============================================

-- =============================================
-- UNIT: CELL BIOLOGY
-- =============================================

-- Topic: Cell Theory and Discovery
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cell Theory and Discovery' AND grade_level_min = 10),
  'Cell Theory and Discovery (Grade 10) Topic Guide', 'History and principles of cell biology',
  'CELL THEORY AND DISCOVERY - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand that living things have characteristics that distinguish them from non-living matter. They should have basic microscopy experience. Understanding of scientific method and historical scientific discovery is helpful.

LEARNING OBJECTIVES:
- Describe the three main principles of cell theory
- Trace the historical development of cell biology from Hooke to modern microscopy
- Explain how technological advances enabled cell discovery
- Evaluate cell theory as a unifying concept in biology
- Understand exceptions and extensions to classical cell theory

KEY CONCEPTS:
1) Cell theory states: all living things are made of cells; cells are the basic unit of life; all cells come from pre-existing cells
2) Historical discoveries: Hooke (named cells), Leeuwenhoek (observed microorganisms), Schleiden and Schwann (plants and animals), Virchow (cell division)
3) Microscopy advances enabled increasingly detailed cell study: light microscopy to electron microscopy
4) Cell theory unifies all biology by establishing the cell as the fundamental unit
5) Modern extensions include: DNA as hereditary material, cells contain organelles, energy transformations occur in cells

COMMON MISCONCEPTIONS:
- Believing spontaneous generation of life was only recently disproved (it took centuries)
- Thinking cell theory has no exceptions (viruses challenge the definition)
- Assuming earlier scientists had modern equipment (limitations shaped their conclusions)
- Believing cell theory is complete and unchanging (it continues to be refined)
- Thinking only biologists contributed to cell theory (chemistry and physics were essential)
- Assuming all cells were discovered at once (discoveries spanned centuries)

TEACHING SEQUENCE:
Trace the history of cell discovery chronologically with key experiments. Compare historical and modern microscopes. Replicate simple observations that led to discoveries. Discuss how technology enabled new understanding. Analyze the logic that led to each principle of cell theory. Examine modern challenges and extensions to cell theory. Connect to the nature of scientific progress.

DIFFERENTIATION:
Struggling learners: Focus on the three main principles with clear examples. Use timeline activities for historical development. Connect to observable cell types. Provide visual summaries.
Advanced learners: Explore the virus exception to cell theory, investigate modern cell biology techniques (cryoEM, super-resolution), research contributions of diverse scientists, analyze how paradigm shifts occur in science.

VOCABULARY:
Cell theory, microscopy, light microscope, electron microscope, resolution, magnification, Hooke, Leeuwenhoek, Schleiden, Schwann, Virchow, spontaneous generation

CONNECTION TO FUTURE LEARNING:
Cell theory is the foundation for all biology. Students will apply this understanding to cell structure, function, and division. This historical perspective helps students understand how science progresses.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cell Theory and Discovery' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Prokaryotic vs Eukaryotic Cells
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Prokaryotic vs Eukaryotic Cells' AND grade_level_min = 10),
  'Prokaryotic vs Eukaryotic Cells (Grade 10) Topic Guide', 'Comparing cell types',
  'PROKARYOTIC VS EUKARYOTIC CELLS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand cell theory and basic cell structure. They should know that organisms are classified into domains. Understanding that cells have varied structures is helpful.

LEARNING OBJECTIVES:
- Distinguish between prokaryotic and eukaryotic cells based on key structural features
- Identify organisms that are prokaryotes vs eukaryotes
- Explain the evolutionary significance of the prokaryote-eukaryote distinction
- Describe structures unique to each cell type
- Explain the endosymbiotic theory of eukaryotic evolution

KEY CONCEPTS:
1) Prokaryotes lack membrane-bound organelles; eukaryotes have membrane-bound nucleus and organelles
2) Prokaryotes include bacteria and archaea; eukaryotes include protists, fungi, plants, and animals
3) Prokaryotes are generally smaller and simpler; eukaryotes are larger and more complex
4) Both have ribosomes, cell membrane, cytoplasm, and genetic material (DNA)
5) Endosymbiotic theory explains how mitochondria and chloroplasts evolved from free-living prokaryotes

COMMON MISCONCEPTIONS:
- Believing prokaryotes are primitive or less successful (they''re highly adapted and abundant)
- Thinking prokaryotes have no internal organization (they have functional regions)
- Assuming all bacteria are harmful (most are beneficial or neutral)
- Believing eukaryotes evolved directly from prokaryotes (the process was complex)
- Thinking size alone determines cell type (structure is the key difference)
- Confusing prokaryote with single-celled (some eukaryotes are also single-celled)

TEACHING SEQUENCE:
Compare microscope images of prokaryotic and eukaryotic cells. Create comparison charts of structural features. Identify organisms as prokaryotes or eukaryotes. Explore the endosymbiotic theory with evidence. Investigate the domains of life. Analyze why the distinction matters for understanding life''s diversity.

DIFFERENTIATION:
Struggling learners: Focus on the nucleus as the main distinguishing feature. Use Venn diagrams for comparison. Provide labeled cell diagrams. Create flashcards for key differences.
Advanced learners: Explore evidence for endosymbiotic theory in depth, investigate archaea as distinct from bacteria, research horizontal gene transfer between cell types, analyze evolutionary transitions.

VOCABULARY:
Prokaryote, eukaryote, nucleus, membrane-bound organelle, bacteria, archaea, domain, ribosome, cell membrane, cytoplasm, endosymbiotic theory, mitochondria, chloroplast

CONNECTION TO FUTURE LEARNING:
This distinction is fundamental to understanding cell biology and evolution. Students will use this knowledge when studying organelles, metabolism, and classification. The comparison provides context for all cellular processes.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Prokaryotic vs Eukaryotic Cells' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Cell Organelles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cell Organelles' AND grade_level_min = 10),
  'Cell Organelles (Grade 10) Topic Guide', 'Structure and function of organelles',
  'CELL ORGANELLES - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand the difference between prokaryotic and eukaryotic cells. They should know that cells have internal structures. Basic understanding of proteins and chemical reactions is helpful.

LEARNING OBJECTIVES:
- Identify major cell organelles and describe their functions
- Explain how organelle structure relates to function
- Compare organelles in plant and animal cells
- Describe the relationship between organelles in cellular processes
- Explain the role of the endomembrane system

KEY CONCEPTS:
1) Nucleus contains DNA and controls cell activities; nucleolus makes ribosomal RNA
2) Mitochondria are powerhouses producing ATP through cellular respiration
3) Ribosomes synthesize proteins; rough ER processes proteins; smooth ER synthesizes lipids
4) Golgi apparatus modifies, packages, and ships proteins and lipids
5) Plant cells have additional organelles: chloroplasts (photosynthesis), central vacuole, cell wall

COMMON MISCONCEPTIONS:
- Believing organelles function independently (they work together in integrated systems)
- Thinking the nucleus is the cell''s brain controlling everything (DNA codes for proteins; proteins do work)
- Assuming animal cells have no vacuoles (they have small ones)
- Believing mitochondria provide energy directly (they produce ATP, which stores energy)
- Thinking chloroplasts and mitochondria are mutually exclusive (plant cells have both)
- Confusing cell membrane with cell wall (different structures with different functions)

TEACHING SEQUENCE:
Build a cell model identifying all organelles. Use analogies: cell as factory with specialized departments. Trace proteins from synthesis to export through the endomembrane system. Compare plant and animal cells structurally. Investigate organelle functions through simulations or virtual labs. Connect structure to function for each organelle.

DIFFERENTIATION:
Struggling learners: Focus on 6-8 major organelles. Use consistent analogies (factory, city). Provide labeled diagrams and function cards. Create matching activities.
Advanced learners: Explore organelle ultrastructure, investigate protein targeting and trafficking, research organelle diseases (mitochondrial disorders), analyze endosymbiont evolution.

VOCABULARY:
Organelle, nucleus, nucleolus, mitochondria, ribosome, endoplasmic reticulum, Golgi apparatus, lysosome, vacuole, chloroplast, cell wall, cytoskeleton, vesicle

CONNECTION TO FUTURE LEARNING:
Organelle knowledge is essential for understanding metabolism, genetics, and cell division. Students will connect organelle function to photosynthesis, respiration, and protein synthesis. This foundation supports all advanced biology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cell Organelles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Cell Membrane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cell Membrane' AND grade_level_min = 10),
  'Cell Membrane (Grade 10) Topic Guide', 'Fluid mosaic model and transport',
  'CELL MEMBRANE - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand basic cell structure and the distinction between intracellular and extracellular environments. Knowledge of proteins and lipids is essential. Understanding of solutions and concentration is helpful.

LEARNING OBJECTIVES:
- Describe the fluid mosaic model of membrane structure
- Identify and explain the functions of membrane components (phospholipids, proteins, cholesterol, carbohydrates)
- Explain selective permeability and its importance for cells
- Distinguish between different types of membrane proteins and their functions
- Relate membrane structure to its functions in the cell

KEY CONCEPTS:
1) The fluid mosaic model describes the membrane as phospholipid bilayer with embedded proteins
2) Phospholipids are amphipathic: hydrophilic heads face water, hydrophobic tails face interior
3) Membrane proteins serve as channels, carriers, receptors, enzymes, and cell identification markers
4) Cholesterol maintains membrane fluidity across temperature ranges
5) Selective permeability allows cells to control their internal environment

COMMON MISCONCEPTIONS:
- Believing the membrane is a rigid wall (it''s fluid and flexible)
- Thinking all substances can pass freely (selective permeability restricts passage)
- Assuming proteins are fixed in place (many move within the membrane)
- Believing cholesterol is only harmful (it''s essential for membrane function)
- Thinking the membrane is the same in all cells (composition varies by cell type)
- Confusing the cell membrane with the cell wall

TEACHING SEQUENCE:
Build membrane models showing all components. Demonstrate fluid nature with simulations. Analyze selective permeability with examples. Identify different protein types and their functions. Investigate how membrane composition varies (nerve cells vs muscle cells). Connect membrane structure to transport mechanisms.

DIFFERENTIATION:
Struggling learners: Focus on the phospholipid bilayer and its arrangement. Use visual models with clear labels. Practice identifying membrane components. Simplify protein functions to main categories.
Advanced learners: Explore membrane asymmetry, investigate lipid rafts and membrane domains, research membrane-related diseases, analyze techniques for studying membranes.

VOCABULARY:
Cell membrane, plasma membrane, phospholipid bilayer, fluid mosaic model, hydrophilic, hydrophobic, amphipathic, integral protein, peripheral protein, cholesterol, glycoprotein, glycolipid, selective permeability

CONNECTION TO FUTURE LEARNING:
Membrane structure is essential for understanding transport, cell signaling, and cell communication. Students will apply this to studying nerve impulses, immune function, and drug delivery. Membrane biology is fundamental to pharmacology and medicine.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cell Membrane' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Cellular Transport
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cellular Transport' AND grade_level_min = 10),
  'Cellular Transport (Grade 10) Topic Guide', 'Passive and active transport mechanisms',
  'CELLULAR TRANSPORT - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students must understand cell membrane structure and selective permeability. They should know about concentration gradients and the concept of equilibrium. Understanding that energy is required for some processes is essential.

LEARNING OBJECTIVES:
- Distinguish between passive and active transport based on energy requirements
- Describe the mechanisms of diffusion, osmosis, and facilitated diffusion
- Explain how active transport works against concentration gradients
- Predict the effects of different solution types on cells (hypertonic, hypotonic, isotonic)
- Describe endocytosis and exocytosis as bulk transport mechanisms

KEY CONCEPTS:
1) Passive transport requires no energy; active transport requires ATP
2) Diffusion moves particles from high to low concentration; osmosis is diffusion of water
3) Facilitated diffusion uses proteins but follows concentration gradients (no energy needed)
4) Active transport uses ATP to move substances against their concentration gradient
5) Endocytosis brings materials into cells; exocytosis releases materials from cells

COMMON MISCONCEPTIONS:
- Believing passive transport is slow and active is fast (speed depends on many factors)
- Thinking diffusion stops at equilibrium (molecules still move, but net movement is zero)
- Confusing the direction of water movement in osmosis (water moves toward higher solute concentration)
- Assuming facilitated diffusion is active transport (it''s passive, just protein-assisted)
- Believing cells always try to equalize concentrations (cells maintain controlled gradients)
- Thinking endocytosis and exocytosis are passive (they require energy)

TEACHING SEQUENCE:
Demonstrate diffusion with dye and osmosis with dialysis tubing. Predict cell behavior in hypertonic, hypotonic, and isotonic solutions. Model facilitated diffusion with protein channels. Investigate active transport (sodium-potassium pump). Explore endocytosis and exocytosis with animations. Connect transport to cell function and homeostasis.

DIFFERENTIATION:
Struggling learners: Focus on the passive vs active distinction first. Use visual concentration gradient diagrams. Practice predicting osmotic effects with simple scenarios. Provide process flowcharts.
Advanced learners: Analyze electrochemical gradients, investigate specific transport proteins (GLUT, Na+/K+ ATPase), research transport-related diseases (cystic fibrosis), explore membrane potential.

VOCABULARY:
Passive transport, active transport, diffusion, osmosis, concentration gradient, facilitated diffusion, channel protein, carrier protein, ATP, hypertonic, hypotonic, isotonic, endocytosis, exocytosis, phagocytosis, pinocytosis

CONNECTION TO FUTURE LEARNING:
Transport mechanisms are essential for understanding cell physiology. Students will apply these concepts to nerve function, kidney filtration, and nutrient absorption. Transport biology is fundamental to pharmacology and medicine.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cellular Transport' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Cell Communication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cell Communication' AND grade_level_min = 10),
  'Cell Communication (Grade 10) Topic Guide', 'How cells signal each other',
  'CELL COMMUNICATION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand cell membrane structure including receptor proteins. They should know that proteins have specific shapes and functions. Understanding of cause-and-effect relationships in biological processes is helpful.

LEARNING OBJECTIVES:
- Describe the three stages of cell signaling: reception, transduction, and response
- Distinguish between different types of signaling (autocrine, paracrine, endocrine)
- Explain how signal transduction amplifies signals
- Describe the role of receptors in cell communication
- Explain why cell communication is essential for multicellular organisms

KEY CONCEPTS:
1) Cell signaling involves three stages: reception, transduction, and response
2) Ligands (signaling molecules) bind to specific receptors on or in target cells
3) Signal transduction cascades amplify the signal through second messengers
4) Different signaling types: autocrine (self), paracrine (nearby), endocrine (distant via blood)
5) Cell communication coordinates activities in multicellular organisms

COMMON MISCONCEPTIONS:
- Believing signals affect all cells equally (only cells with appropriate receptors respond)
- Thinking signaling is only chemical (electrical signals also occur)
- Assuming one signal causes one response (same signal can cause different responses in different cells)
- Believing cell communication only happens in animals (plants also communicate)
- Thinking signaling is always slow (some signals act in milliseconds)
- Confusing the signal with the response (the signal triggers the response)

TEACHING SEQUENCE:
Introduce signaling with familiar examples (adrenaline, hormones). Model the three stages with analogies. Investigate receptor-ligand specificity. Explore signal amplification through cascades. Compare different signaling distances and speeds. Analyze what happens when signaling goes wrong (disease).

DIFFERENTIATION:
Struggling learners: Focus on the lock-and-key model of receptors. Use step-by-step signaling diagrams. Practice identifying the three stages in examples. Emphasize everyday hormone examples.
Advanced learners: Explore G-protein coupled receptors in detail, investigate second messenger systems (cAMP, calcium), research signaling in cancer, analyze feedback mechanisms in signaling.

VOCABULARY:
Cell signaling, signal transduction, receptor, ligand, autocrine, paracrine, endocrine, second messenger, cascade, amplification, target cell, hormone, neurotransmitter

CONNECTION TO FUTURE LEARNING:
Cell communication is essential for understanding physiology and development. Students will apply this to nervous system function, hormone regulation, and immune responses. This knowledge is fundamental to understanding diseases and drug mechanisms.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cell Communication' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: METABOLISM
-- =============================================

-- Topic: Enzymes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Enzymes' AND grade_level_min = 10),
  'Enzymes (Grade 10) Topic Guide', 'Biological catalysts and how they work',
  'ENZYMES - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand that proteins have specific shapes that determine function. They should know about chemical reactions and activation energy. Understanding that cells carry out many chemical reactions is essential.

LEARNING OBJECTIVES:
- Describe enzymes as biological catalysts that lower activation energy
- Explain the induced fit model of enzyme-substrate interaction
- Identify factors that affect enzyme activity (temperature, pH, concentration)
- Distinguish between competitive and noncompetitive inhibition
- Explain enzyme specificity and how it relates to enzyme naming

KEY CONCEPTS:
1) Enzymes are proteins that catalyze specific reactions by lowering activation energy
2) The active site binds substrates; induced fit describes shape adjustment during binding
3) Enzyme activity depends on temperature, pH, and substrate/enzyme concentrations
4) Enzymes can be inhibited competitively (blocking active site) or noncompetitively (changing shape)
5) Enzymes are named for their substrate or reaction type (-ase suffix)

COMMON MISCONCEPTIONS:
- Believing enzymes are consumed in reactions (they''re reused)
- Thinking enzymes provide energy for reactions (they lower the barrier, not provide energy)
- Assuming higher temperature always increases activity (denaturation occurs at extremes)
- Believing enzymes only work in the body (industrial enzymes exist too)
- Thinking lock-and-key is the current model (induced fit is more accurate)
- Confusing inhibition with denaturation (inhibition is often reversible)

TEACHING SEQUENCE:
Demonstrate enzyme action with catalase and hydrogen peroxide. Investigate factors affecting enzyme activity experimentally. Model active site-substrate interactions. Explore enzyme kinetics graphs (saturation). Compare competitive and noncompetitive inhibition. Connect to real-world applications: digestion, laundry detergents, medicine.

DIFFERENTIATION:
Struggling learners: Focus on the basic function of lowering activation energy. Use the lock-and-key analogy before induced fit. Provide enzyme activity graph interpretation guides.
Advanced learners: Explore Michaelis-Menten kinetics, investigate allosteric regulation, research enzyme engineering, analyze feedback inhibition in metabolic pathways.

VOCABULARY:
Enzyme, catalyst, activation energy, active site, substrate, product, induced fit, specificity, denaturation, competitive inhibition, noncompetitive inhibition, allosteric site, cofactor, coenzyme

CONNECTION TO FUTURE LEARNING:
Enzymes are central to all metabolic pathways. Students will apply enzyme knowledge to photosynthesis, respiration, and DNA replication. Understanding enzymes is essential for biochemistry and pharmacology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Enzymes' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: ATP and Energy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'ATP and Energy' AND grade_level_min = 10),
  'ATP and Energy (Grade 10) Topic Guide', 'The energy currency of cells',
  'ATP AND ENERGY - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand that cells require energy for various functions. They should know basic chemistry including bonds and energy. Understanding that energy is conserved during transformations is essential.

LEARNING OBJECTIVES:
- Describe the structure of ATP (adenine, ribose, three phosphate groups)
- Explain how ATP stores and releases energy through phosphate bonds
- Describe the ATP-ADP cycle and its role in energy coupling
- Explain how cells use ATP for various cellular processes
- Connect ATP production to cellular respiration and photosynthesis

KEY CONCEPTS:
1) ATP (adenosine triphosphate) is the primary energy currency of all cells
2) Energy is released when ATP is hydrolyzed to ADP and inorganic phosphate
3) ATP is regenerated from ADP through cellular respiration (and photosynthesis in plants)
4) The ATP-ADP cycle couples energy-releasing reactions to energy-requiring reactions
5) Cells use ATP for active transport, protein synthesis, muscle contraction, and many other processes

COMMON MISCONCEPTIONS:
- Believing ATP is stored for long periods (it turns over rapidly)
- Thinking ATP IS energy (it carries and transfers energy)
- Assuming ATP is only in animal cells (all cells use ATP)
- Believing the high-energy bonds are special (it''s about the products, not the bond itself)
- Thinking ATP is the only energy carrier (NADH, FADH2 also carry energy)
- Confusing ATP synthesis with using ATP (they''re coupled but opposite)

TEACHING SEQUENCE:
Examine ATP structure and identify the phosphate groups. Model energy release through phosphate hydrolysis. Connect ATP to various cellular activities. Trace the ATP-ADP cycle through metabolism. Compare ATP production in respiration vs photosynthesis. Quantify ATP usage in the human body daily.

DIFFERENTIATION:
Struggling learners: Use the rechargeable battery analogy for the ATP-ADP cycle. Focus on the concept of energy currency. Create visual summaries of ATP structure and function.
Advanced learners: Explore chemiosmosis and ATP synthase mechanism, investigate other nucleotide triphosphates (GTP, UTP), research ATP in disease and aging, analyze thermodynamics of ATP hydrolysis.

VOCABULARY:
ATP, adenosine triphosphate, ADP, adenosine diphosphate, phosphate group, hydrolysis, phosphorylation, energy coupling, high-energy bond, cellular respiration, photosynthesis, ATP synthase

CONNECTION TO FUTURE LEARNING:
ATP is central to understanding metabolism. Students will trace ATP production and use through photosynthesis and cellular respiration. This understanding is essential for exercise physiology, nutrition, and medicine.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'ATP and Energy' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Photosynthesis Overview
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Photosynthesis Overview' AND grade_level_min = 10),
  'Photosynthesis Overview (Grade 10) Topic Guide', 'Light and Calvin cycle',
  'PHOTOSYNTHESIS OVERVIEW - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand that plants are autotrophs that make their own food. They should know about ATP as energy currency and basic chemistry of carbon compounds. Understanding of chloroplast structure is essential.

LEARNING OBJECTIVES:
- Write and explain the overall equation for photosynthesis
- Describe the two stages: light-dependent reactions and the Calvin cycle
- Explain where each stage occurs within the chloroplast
- Trace the flow of energy from light to chemical bonds
- Connect photosynthesis to the carbon cycle and cellular respiration

KEY CONCEPTS:
1) Overall equation: 6CO₂ + 6H₂O + light energy → C₆H₁₂O₆ + 6O₂
2) Light reactions occur in thylakoids: light energy is captured and converted to ATP and NADPH; O₂ is released
3) Calvin cycle occurs in stroma: CO₂ is fixed into glucose using ATP and NADPH
4) Chlorophyll and other pigments absorb light energy
5) Photosynthesis is the source of nearly all organic molecules and O₂ on Earth

COMMON MISCONCEPTIONS:
- Believing plants don''t do respiration (they do both photosynthesis and respiration)
- Thinking glucose is the direct product (3-carbon sugars form first, then glucose)
- Assuming the Calvin cycle happens in the dark (it happens continuously, just doesn''t require light directly)
- Believing all of the plant comes from soil (most mass comes from CO₂ in air)
- Thinking chlorophyll is the only pigment (accessory pigments also contribute)
- Confusing the light reactions with the Calvin cycle

TEACHING SEQUENCE:
Investigate pigments with chromatography. Model light absorption and electron excitation. Trace the path of electrons through the light reactions. Follow carbon through the Calvin cycle. Connect products of each stage. Analyze factors affecting photosynthesis rates. Measure photosynthesis experimentally.

DIFFERENTIATION:
Struggling learners: Focus on the overall equation and main inputs/outputs. Use simplified diagrams showing the two stages. Practice identifying where each stage occurs. Emphasize the energy transformation.
Advanced learners: Explore the electron transport chain in detail, investigate C3, C4, and CAM photosynthesis, research artificial photosynthesis, analyze photosystem structure and function.

VOCABULARY:
Photosynthesis, chloroplast, thylakoid, granum, stroma, chlorophyll, light reactions, Calvin cycle, carbon fixation, NADPH, ATP, glucose, oxygen, rubisco, electron transport chain

CONNECTION TO FUTURE LEARNING:
Photosynthesis is foundational for understanding energy flow in ecosystems. Students will connect this to cellular respiration and the carbon cycle. This knowledge is essential for ecology and environmental science.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Photosynthesis Overview' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Cellular Respiration Overview
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cellular Respiration Overview' AND grade_level_min = 10),
  'Cellular Respiration Overview (Grade 10) Topic Guide', 'Glycolysis, Krebs cycle, ETC',
  'CELLULAR RESPIRATION OVERVIEW - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand that cells need energy (ATP) for various functions. They should know that glucose is an energy source and have basic understanding of chemical reactions. Knowledge of mitochondria structure is essential.

LEARNING OBJECTIVES:
- Write and explain the overall equation for cellular respiration
- Describe the three main stages: glycolysis, Krebs cycle, and electron transport chain
- Explain where each stage occurs in the cell
- Trace the flow of electrons from glucose to oxygen
- Calculate the approximate ATP yield from one glucose molecule

KEY CONCEPTS:
1) Overall equation: C₆H₁₂O₆ + 6O₂ → 6CO₂ + 6H₂O + ATP (about 36-38 ATP)
2) Glycolysis occurs in cytoplasm: glucose is split into 2 pyruvate, yielding 2 ATP net
3) Krebs cycle occurs in mitochondrial matrix: pyruvate is oxidized, producing CO₂ and electron carriers
4) Electron transport chain in inner mitochondrial membrane: produces most ATP through oxidative phosphorylation
5) Cellular respiration is the reverse of photosynthesis in terms of overall reaction

COMMON MISCONCEPTIONS:
- Thinking respiration only means breathing (cellular respiration is different from breathing)
- Believing most ATP comes from glycolysis (the ETC produces most ATP)
- Assuming anaerobic organisms don''t do cellular respiration (they do alternative pathways)
- Thinking oxygen is needed for glycolysis (glycolysis is anaerobic)
- Believing respiration consumes all glucose (some is used for building materials)
- Confusing substrate-level phosphorylation with oxidative phosphorylation

TEACHING SEQUENCE:
Connect breathing to cellular respiration at the cellular level. Trace glucose through each stage. Quantify ATP production at each stage. Model the electron transport chain and chemiosmosis. Compare aerobic and anaerobic conditions. Investigate respiration experimentally (yeast, germinating seeds).

DIFFERENTIATION:
Struggling learners: Focus on the overall equation and main inputs/outputs. Use simplified diagrams of the three stages. Practice identifying where each stage occurs. Count ATP in simplified terms.
Advanced learners: Explore the electron transport chain in molecular detail, investigate regulation of respiration, research metabolic disorders (mitochondrial diseases), analyze integration with other metabolic pathways.

VOCABULARY:
Cellular respiration, glycolysis, Krebs cycle (citric acid cycle), electron transport chain, mitochondria, matrix, cristae, pyruvate, NADH, FADH2, oxidative phosphorylation, chemiosmosis, ATP synthase

CONNECTION TO FUTURE LEARNING:
Cellular respiration connects to nutrition, exercise physiology, and metabolism. Students will apply this to understanding fermentation, metabolism disorders, and energy balance. This knowledge is fundamental to biochemistry and medicine.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cellular Respiration Overview' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Fermentation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Fermentation' AND grade_level_min = 10),
  'Fermentation (Grade 10) Topic Guide', 'Anaerobic energy production',
  'FERMENTATION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand glycolysis and its products. They should know that cellular respiration requires oxygen. Understanding that NAD+ is needed for glycolysis to continue is essential.

LEARNING OBJECTIVES:
- Explain why fermentation occurs when oxygen is unavailable
- Compare lactic acid and alcoholic fermentation
- Describe the role of fermentation in regenerating NAD+
- Calculate and compare ATP yields with and without oxygen
- Identify organisms that use each type of fermentation

KEY CONCEPTS:
1) Fermentation allows glycolysis to continue when oxygen is absent by regenerating NAD+
2) Lactic acid fermentation: pyruvate → lactic acid (occurs in muscles, some bacteria)
3) Alcoholic fermentation: pyruvate → ethanol + CO₂ (occurs in yeast, some plants)
4) Fermentation produces only 2 ATP per glucose (just from glycolysis)
5) Human applications include bread, wine, beer, yogurt, and cheese production

COMMON MISCONCEPTIONS:
- Believing fermentation produces lots of ATP (it produces only 2 net ATP)
- Thinking lactic acid causes muscle soreness (actually it''s muscle damage, not lactic acid)
- Assuming fermentation only happens in microbes (human muscles ferment too)
- Believing fermented products are harmful (many are beneficial foods)
- Thinking fermentation is the opposite of respiration (it''s an alternative ending to glycolysis)
- Confusing fermentation with anaerobic respiration (some organisms use other electron acceptors)

TEACHING SEQUENCE:
Connect fermentation to the need for NAD+ in glycolysis. Compare the two main fermentation pathways. Investigate fermentation with yeast experimentally. Explore lactic acid buildup in exercise. Analyze human uses of fermentation (food production). Calculate energy yields compared to aerobic respiration.

DIFFERENTIATION:
Struggling learners: Focus on why fermentation happens (to regenerate NAD+). Use simple before/after diagrams. Practice identifying fermentation products. Emphasize familiar fermented foods.
Advanced learners: Explore industrial fermentation processes, investigate alternative electron acceptors in anaerobic respiration, research metabolic engineering, analyze evolutionary significance of fermentation.

VOCABULARY:
Fermentation, anaerobic, lactic acid, alcoholic fermentation, pyruvate, NAD+, NADH, ethanol, carbon dioxide, glycolysis, ATP, yeast, bacteria

CONNECTION TO FUTURE LEARNING:
Fermentation connects to biotechnology and industrial applications. Students will apply this to understanding microbiology, food science, and biofuels. This knowledge is important for understanding muscle physiology and metabolism.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fermentation' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Energy Flow in Ecosystems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Energy Flow in Ecosystems' AND grade_level_min = 10),
  'Energy Flow in Ecosystems (Grade 10) Topic Guide', 'How energy moves through life',
  'ENERGY FLOW IN ECOSYSTEMS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand photosynthesis and cellular respiration. They should know about food chains and trophic levels. Understanding that energy transformations are never 100% efficient is essential.

LEARNING OBJECTIVES:
- Explain how energy enters ecosystems through photosynthesis
- Trace energy flow through trophic levels
- Apply the 10% rule to energy transfer between levels
- Distinguish between food chains and food webs
- Analyze energy pyramids and their implications for ecosystems

KEY CONCEPTS:
1) Energy enters ecosystems through photosynthesis by producers (autotrophs)
2) Energy flows through consumers (heterotrophs) at successive trophic levels
3) About 10% of energy transfers between trophic levels; the rest is lost as heat
4) Food webs show the complex feeding relationships in ecosystems
5) Energy pyramids show decreasing energy at higher trophic levels

COMMON MISCONCEPTIONS:
- Believing energy is recycled like matter (energy flows one way and is lost)
- Thinking the 10% rule is exact (it''s an approximation that varies)
- Assuming all energy comes from eating (most energy is lost, not transferred)
- Believing top predators have the most energy (they have the least)
- Thinking decomposers are at the top of the pyramid (they operate at all levels)
- Confusing energy pyramids with biomass pyramids (they can differ)

TEACHING SEQUENCE:
Trace energy from the sun through producers to various consumers. Calculate energy at each trophic level using the 10% rule. Build and analyze food webs for various ecosystems. Create energy pyramids and explain their shapes. Investigate why apex predators are rare and vulnerable. Connect to ecosystem stability and conservation.

DIFFERENTIATION:
Struggling learners: Focus on the concept that energy decreases at each level. Use simple food chains before webs. Practice 10% calculations with whole numbers. Use visual energy pyramids.
Advanced learners: Analyze inverted pyramids and their causes, investigate net primary productivity, explore energy flow models mathematically, research trophic cascades and ecosystem effects.

VOCABULARY:
Energy flow, trophic level, producer, consumer, autotroph, heterotroph, primary producer, primary consumer, secondary consumer, food chain, food web, energy pyramid, 10% rule, decomposer

CONNECTION TO FUTURE LEARNING:
Energy flow connects to ecosystem ecology and environmental science. Students will apply this to understanding biogeochemical cycles and human impacts. This knowledge is essential for conservation biology and sustainability.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Energy Flow in Ecosystems' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: GENETICS
-- =============================================

-- Topic: DNA Structure and Replication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'DNA Structure and Replication' AND grade_level_min = 10),
  'DNA Structure and Replication (Grade 10) Topic Guide', 'Double helix and copying DNA',
  'DNA STRUCTURE AND REPLICATION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand that DNA is the hereditary material in cells. They should know the basic structure of nucleotides. Understanding of hydrogen bonding and complementary base pairing is essential.

LEARNING OBJECTIVES:
- Describe the structure of DNA including the double helix, sugar-phosphate backbone, and base pairs
- Explain Chargaff''s rules and complementary base pairing (A-T, G-C)
- Describe the process of semiconservative DNA replication
- Identify the key enzymes involved in replication (helicase, DNA polymerase, ligase)
- Explain why accurate DNA replication is essential for life

KEY CONCEPTS:
1) DNA is a double helix with antiparallel strands connected by hydrogen bonds between complementary bases
2) Adenine pairs with thymine (A-T); guanine pairs with cytosine (G-C)
3) Replication is semiconservative: each new DNA has one original and one new strand
4) Key enzymes: helicase unwinds, DNA polymerase synthesizes, ligase joins fragments
5) DNA replication occurs during S phase of the cell cycle with remarkable accuracy

COMMON MISCONCEPTIONS:
- Thinking DNA replication is like unzipping and copying at once (it''s more complex)
- Believing one enzyme does everything (multiple enzymes work together)
- Assuming replication is error-free (proofreading and repair mechanisms exist)
- Thinking both strands are synthesized the same way (leading vs lagging strand)
- Confusing replication with transcription (different processes with different products)
- Believing replication happens only during cell division (it happens during S phase)

TEACHING SEQUENCE:
Build DNA models emphasizing structure. Practice complementary base pairing. Model the replication process step by step. Investigate the roles of different enzymes. Analyze the semiconservative nature (Meselson-Stahl experiment). Discuss proofreading and repair mechanisms.

DIFFERENTIATION:
Struggling learners: Focus on the double helix and base pairing. Use simplified replication diagrams. Practice complementary strand problems. Create enzyme function cards.
Advanced learners: Explore the leading and lagging strand differences, investigate telomeres and telomerase, research DNA repair mechanisms, analyze origins of replication and replicons.

VOCABULARY:
DNA, double helix, nucleotide, adenine, thymine, guanine, cytosine, complementary base pairing, sugar-phosphate backbone, replication, semiconservative, helicase, DNA polymerase, ligase, leading strand, lagging strand, Okazaki fragments

CONNECTION TO FUTURE LEARNING:
DNA replication is foundational for understanding genetics and molecular biology. Students will connect this to transcription, translation, and genetic engineering. This knowledge is essential for biotechnology and medicine.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'DNA Structure and Replication' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: RNA and Transcription
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'RNA and Transcription' AND grade_level_min = 10),
  'RNA and Transcription (Grade 10) Topic Guide', 'Making RNA from DNA',
  'RNA AND TRANSCRIPTION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand DNA structure and base pairing. They should know that genes contain information for making proteins. Understanding of enzyme function is helpful.

LEARNING OBJECTIVES:
- Compare the structure of RNA and DNA
- Describe the three types of RNA and their functions (mRNA, tRNA, rRNA)
- Explain the process of transcription from initiation to termination
- Describe RNA processing in eukaryotes (capping, splicing, poly-A tail)
- Explain why transcription is essential for gene expression

KEY CONCEPTS:
1) RNA differs from DNA: single-stranded, ribose sugar, uracil instead of thymine
2) Three main types: mRNA carries code, tRNA brings amino acids, rRNA is in ribosomes
3) Transcription: RNA polymerase reads DNA template and synthesizes complementary RNA
4) In eukaryotes, pre-mRNA is processed: 5'' cap, 3'' poly-A tail, splicing removes introns
5) Transcription is the first step in gene expression (DNA → RNA → Protein)

COMMON MISCONCEPTIONS:
- Thinking RNA and DNA are essentially the same (key structural differences exist)
- Believing the whole chromosome is transcribed (only specific genes are transcribed)
- Assuming all RNA codes for protein (rRNA and tRNA don''t code for protein)
- Thinking transcription and translation happen simultaneously in eukaryotes (transcription in nucleus, translation in cytoplasm)
- Confusing the template and coding strands
- Believing introns are useless junk (they may have regulatory functions)

TEACHING SEQUENCE:
Compare DNA and RNA structures. Identify the three RNA types and their roles. Model transcription step by step. Practice writing complementary RNA sequences. Investigate RNA processing in eukaryotes. Connect transcription to gene regulation.

DIFFERENTIATION:
Struggling learners: Focus on the DNA to mRNA concept. Use color-coding for DNA vs RNA. Practice base pairing with uracil. Create RNA type function cards.
Advanced learners: Explore alternative splicing and its implications, investigate ribozymes and catalytic RNA, research RNA interference, analyze promoters and transcription factors.

VOCABULARY:
RNA, messenger RNA (mRNA), transfer RNA (tRNA), ribosomal RNA (rRNA), transcription, RNA polymerase, promoter, template strand, coding strand, uracil, pre-mRNA, intron, exon, splicing, 5'' cap, poly-A tail

CONNECTION TO FUTURE LEARNING:
Transcription is central to gene expression. Students will connect this to translation and protein synthesis. This knowledge is essential for understanding biotechnology, gene therapy, and RNA-based treatments.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'RNA and Transcription' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Translation and Proteins
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Translation and Proteins' AND grade_level_min = 10),
  'Translation and Proteins (Grade 10) Topic Guide', 'Making proteins from RNA',
  'TRANSLATION AND PROTEINS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand transcription and the types of RNA. They should know that proteins are made of amino acids. Understanding of codons and the genetic code is essential.

LEARNING OBJECTIVES:
- Describe the genetic code and use a codon chart to determine amino acid sequences
- Explain the process of translation from initiation to termination
- Describe the roles of mRNA, tRNA, and ribosomes in translation
- Explain how amino acids are joined to form polypeptides
- Connect translation to the central dogma of molecular biology

KEY CONCEPTS:
1) The genetic code: 64 codons code for 20 amino acids; it''s redundant, universal, and unambiguous
2) Translation occurs on ribosomes; mRNA is read 5'' to 3'' in three-nucleotide codons
3) tRNA has anticodon matching mRNA codon; carries corresponding amino acid
4) Translation stages: initiation (start codon AUG), elongation (add amino acids), termination (stop codon)
5) Central dogma: DNA → RNA → Protein (with exceptions like reverse transcriptase)

COMMON MISCONCEPTIONS:
- Thinking each codon codes for a unique amino acid (redundancy exists)
- Believing tRNA and mRNA are the same (very different structures and functions)
- Assuming the ribosome contains the genetic code (the code is in mRNA)
- Thinking translation occurs in the nucleus (cytoplasm in eukaryotes)
- Confusing codons with anticodons (complementary but different orientation)
- Believing the central dogma has no exceptions (retroviruses are exceptions)

TEACHING SEQUENCE:
Introduce the genetic code and practice using codon charts. Model translation with physical models or simulations. Trace amino acid delivery by tRNA. Practice translating mRNA sequences. Analyze mutations and their protein-level effects. Connect to the complete flow of genetic information.

DIFFERENTIATION:
Struggling learners: Focus on using the codon chart effectively. Use step-by-step translation guides. Practice with short mRNA sequences. Create physical models of ribosomes and tRNA.
Advanced learners: Explore post-translational modifications, investigate the wobble hypothesis, research protein folding and chaperones, analyze exceptions to the central dogma.

VOCABULARY:
Translation, genetic code, codon, anticodon, amino acid, polypeptide, ribosome, mRNA, tRNA, rRNA, initiation, elongation, termination, start codon, stop codon, peptide bond, central dogma

CONNECTION TO FUTURE LEARNING:
Translation completes the flow of genetic information. Students will connect this to mutations, biotechnology, and protein engineering. This knowledge is essential for understanding genetics and molecular medicine.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Translation and Proteins' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Mutations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Mutations' AND grade_level_min = 10),
  'Mutations (Grade 10) Topic Guide', 'Types and effects of genetic changes',
  'MUTATIONS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand DNA replication and the genetic code. They should know how proteins are synthesized. Understanding that DNA sequence determines protein sequence is essential.

LEARNING OBJECTIVES:
- Define mutations as changes in DNA sequence
- Classify mutations by type: substitution, insertion, deletion
- Explain the effects of different mutations on proteins (silent, missense, nonsense, frameshift)
- Distinguish between germline and somatic mutations
- Analyze causes of mutations (spontaneous errors, mutagens)

KEY CONCEPTS:
1) Mutations are permanent changes in DNA sequence that can be inherited
2) Point mutations include substitutions (one base changed); insertions and deletions can cause frameshifts
3) Effects vary: silent (no change), missense (different amino acid), nonsense (premature stop), frameshift (all downstream changed)
4) Germline mutations are inherited; somatic mutations affect only the individual
5) Mutations can be spontaneous or induced by mutagens (chemicals, radiation, etc.)

COMMON MISCONCEPTIONS:
- Believing all mutations are harmful (many are neutral; some are beneficial)
- Thinking mutations only affect offspring (somatic mutations occur in individuals)
- Assuming mutations create new DNA (they change existing sequences)
- Believing larger mutations are always worse (small frameshifts can be devastating)
- Thinking evolution requires mutation (mutation creates variation; selection acts on it)
- Assuming mutations are always visible (most are not phenotypically obvious)

TEACHING SEQUENCE:
Model different mutation types with sequence examples. Analyze effects on protein using the genetic code. Investigate frameshift mutations as particularly disruptive. Classify mutations as silent, missense, nonsense, or frameshift. Explore mutagen types and their mechanisms. Connect to genetic diseases and evolution.

DIFFERENTIATION:
Struggling learners: Focus on the three main types (substitution, insertion, deletion). Use side-by-side sequence comparisons. Practice identifying mutation effects. Create mutation effect flowcharts.
Advanced learners: Explore chromosomal mutations, investigate repair mechanisms and their failures, research cancer genetics and oncogenes, analyze evolutionary implications of mutation rates.

VOCABULARY:
Mutation, point mutation, substitution, insertion, deletion, frameshift, silent mutation, missense mutation, nonsense mutation, germline, somatic, mutagen, carcinogen, spontaneous mutation

CONNECTION TO FUTURE LEARNING:
Mutations are central to genetics, evolution, and medicine. Students will apply this to understanding genetic disorders, cancer, and evolution. This knowledge is essential for biotechnology and genetic counseling.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mutations' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Mendelian Genetics (Grade 10)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Mendelian Genetics' AND grade_level_min = 10),
  'Mendelian Genetics (Grade 10) Topic Guide', 'Laws of inheritance and Punnett squares',
  'MENDELIAN GENETICS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand chromosomes, genes, and alleles. They should know about meiosis and how chromosomes segregate. Basic probability understanding is essential.

LEARNING OBJECTIVES:
- Apply Mendel''s laws of segregation and independent assortment
- Construct and interpret Punnett squares for monohybrid and dihybrid crosses
- Calculate genotypic and phenotypic ratios
- Distinguish between dominant and recessive alleles
- Solve genetics problems and predict offspring outcomes

KEY CONCEPTS:
1) Law of Segregation: allele pairs separate during gamete formation
2) Law of Independent Assortment: genes for different traits sort independently (if on different chromosomes)
3) Dominant alleles mask recessive alleles in heterozygotes
4) Monohybrid crosses typically produce 3:1 phenotypic ratios
5) Dihybrid crosses produce 9:3:3:1 phenotypic ratios

COMMON MISCONCEPTIONS:
- Thinking dominant means common or superior (it''s just expressed in heterozygotes)
- Expecting exact ratios in real data (ratios are probabilities)
- Assuming all traits follow simple Mendelian patterns (many don''t)
- Confusing genotype with phenotype
- Thinking carriers show symptoms (recessive alleles are masked)
- Believing crosses with the same parents always give the same offspring

TEACHING SEQUENCE:
Introduce Mendel''s experiments and reasoning. Practice monohybrid crosses step by step. Calculate and verify expected ratios. Extend to dihybrid crosses. Analyze test crosses to determine genotypes. Apply to human genetics examples (carefully, with sensitivity).

DIFFERENTIATION:
Struggling learners: Master monohybrid crosses before dihybrid. Use Punnett square templates. Practice one skill at a time. Use genetics calculators to check work.
Advanced learners: Analyze trihybrid crosses, explore chi-square analysis, investigate linked genes and recombination frequencies, research exceptions to Mendelian ratios.

VOCABULARY:
Mendelian genetics, gene, allele, dominant, recessive, genotype, phenotype, homozygous, heterozygous, Punnett square, monohybrid cross, dihybrid cross, law of segregation, law of independent assortment, test cross

CONNECTION TO FUTURE LEARNING:
Mendelian genetics provides the foundation for understanding inheritance. Students will apply this to complex inheritance patterns and population genetics. This knowledge is essential for genetic counseling and biotechnology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mendelian Genetics' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Complex Inheritance
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Complex Inheritance' AND grade_level_min = 10),
  'Complex Inheritance (Grade 10) Topic Guide', 'Codominance, incomplete dominance, polygenic',
  'COMPLEX INHERITANCE - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand Mendelian genetics and Punnett squares. They should know about genotypes and phenotypes. Understanding that genes interact in complex ways is essential.

LEARNING OBJECTIVES:
- Explain incomplete dominance and predict phenotypes
- Explain codominance and predict phenotypes (e.g., blood types)
- Describe polygenic inheritance and continuous variation
- Analyze sex-linked traits and their inheritance patterns
- Distinguish between various inheritance patterns based on phenotypic ratios

KEY CONCEPTS:
1) Incomplete dominance: heterozygotes show intermediate phenotype (e.g., pink flowers from red × white)
2) Codominance: both alleles are fully expressed (e.g., AB blood type)
3) Multiple alleles: more than two alleles exist in the population (e.g., blood type has A, B, O)
4) Polygenic inheritance: multiple genes affect one trait, creating continuous variation (e.g., height, skin color)
5) Sex-linked traits are on X or Y chromosomes and show different inheritance in males vs females

COMMON MISCONCEPTIONS:
- Confusing incomplete dominance with codominance (blending vs both expressed)
- Thinking all traits are simple dominant/recessive (many aren''t)
- Assuming sex-linked means related to reproduction (it''s about chromosome location)
- Believing polygenic traits can''t be analyzed (they can, just differently)
- Thinking blood type is straightforward (it involves codominance AND multiple alleles)
- Assuming complex inheritance is rare (most traits involve some complexity)

TEACHING SEQUENCE:
Introduce deviations from Mendelian ratios. Analyze incomplete dominance with flower colors. Explore codominance with blood types. Investigate sex-linked traits with color blindness and hemophilia. Model polygenic inheritance with simulation. Compare phenotypic ratios across inheritance patterns.

DIFFERENTIATION:
Struggling learners: Focus on one complex pattern at a time. Use clear examples for each type. Create comparison charts. Practice distinguishing between patterns.
Advanced learners: Explore epistasis and gene interactions, investigate epigenetics, research multifactorial disorders, analyze quantitative trait loci (QTL).

VOCABULARY:
Incomplete dominance, codominance, multiple alleles, polygenic inheritance, sex-linked, X-linked, carrier, continuous variation, intermediate phenotype, pleiotropic, epistasis

CONNECTION TO FUTURE LEARNING:
Complex inheritance explains the diversity of phenotypes. Students will apply this to human genetics and evolution. This knowledge is essential for understanding genetic disorders and medical genetics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complex Inheritance' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Genetic Engineering
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Genetic Engineering' AND grade_level_min = 10),
  'Genetic Engineering (Grade 10) Topic Guide', 'DNA technology and applications',
  'GENETIC ENGINEERING - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand DNA structure and replication. They should know about transcription, translation, and gene expression. Understanding of restriction enzymes and plasmids is helpful.

LEARNING OBJECTIVES:
- Describe key genetic engineering tools (restriction enzymes, plasmids, CRISPR)
- Explain the process of creating recombinant DNA
- Describe applications of genetic engineering (GMOs, medicine, research)
- Analyze ethical considerations of genetic engineering
- Evaluate benefits and risks of various genetic technologies

KEY CONCEPTS:
1) Genetic engineering modifies organisms by inserting, deleting, or altering genes
2) Restriction enzymes cut DNA at specific sequences; DNA ligase joins DNA fragments
3) Plasmids are vectors that carry foreign DNA into host cells
4) CRISPR-Cas9 is a precise gene editing tool that enables targeted modifications
5) Applications include transgenic organisms, gene therapy, pharmaceutical production, and forensic DNA analysis

COMMON MISCONCEPTIONS:
- Believing GMOs are inherently dangerous (safety depends on specific modifications)
- Thinking gene therapy is simple and always works (it''s still developing)
- Assuming genetic engineering is entirely new (humans have bred organisms for millennia)
- Believing we can modify any trait easily (many are complex)
- Thinking CRISPR has no limitations (off-target effects and delivery challenges exist)
- Assuming all genetic engineering is controversial (many applications are widely accepted)

TEACHING SEQUENCE:
Explore the history and development of genetic engineering. Model the creation of recombinant DNA. Investigate CRISPR mechanism and applications. Analyze case studies of GMOs, gene therapy, and other applications. Facilitate structured discussions on ethical considerations. Evaluate scientific claims about genetic technologies.

DIFFERENTIATION:
Struggling learners: Focus on the basic concept of moving genes between organisms. Use visual step-by-step diagrams. Analyze familiar examples (insulin, Bt corn). Create pro/con lists for applications.
Advanced learners: Explore CRISPR mechanism in molecular detail, investigate gene drives, research personalized medicine applications, analyze patent and ownership issues.

VOCABULARY:
Genetic engineering, recombinant DNA, restriction enzyme, plasmid, vector, transgenic, GMO, CRISPR-Cas9, gene therapy, cloning, PCR, gel electrophoresis, transformation, biotechnology

CONNECTION TO FUTURE LEARNING:
Genetic engineering is transforming biology and medicine. Students will apply this to understanding modern biotechnology and bioethics. This knowledge is essential for informed citizenship and STEM careers.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Genetic Engineering' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: EVOLUTION
-- =============================================

-- Topic: Darwin and Natural Selection
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Darwin and Natural Selection' AND grade_level_min = 10),
  'Darwin and Natural Selection (Grade 10) Topic Guide', 'Theory of evolution by natural selection',
  'DARWIN AND NATURAL SELECTION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand that species have variations within populations. They should know about heredity and how traits are passed to offspring. Understanding of adaptation as a general concept is helpful.

LEARNING OBJECTIVES:
- Describe Darwin''s theory of evolution by natural selection
- Explain the four postulates of natural selection
- Distinguish between artificial and natural selection
- Describe how natural selection leads to adaptation
- Analyze examples of natural selection in action

KEY CONCEPTS:
1) Evolution is change in the inherited characteristics of populations over generations
2) Four postulates: variation exists; variation is heritable; more offspring produced than survive; survival and reproduction are not random
3) Natural selection acts on phenotypes, affecting allele frequencies over time
4) Adaptations are inherited traits that increase fitness (survival and reproduction)
5) Fitness is measured by reproductive success, not strength or speed

COMMON MISCONCEPTIONS:
- Believing organisms evolve intentionally to meet their needs (selection acts on existing variation)
- Thinking evolution means progress or improvement (it''s adaptation to current conditions)
- Assuming individuals evolve (populations evolve)
- Confusing evolution with origin of life (different questions)
- Thinking evolution is just a guess (it''s supported by overwhelming evidence)
- Believing fitness means physical strength (it''s reproductive success)

TEACHING SEQUENCE:
Trace Darwin''s voyage and observations. Identify variation, heritability, overproduction, and differential survival in examples. Compare artificial and natural selection. Analyze modern examples of natural selection (antibiotic resistance, peppered moths, beak sizes). Simulate natural selection with activities. Connect to modern understanding of genetics.

DIFFERENTIATION:
Struggling learners: Focus on the basic logic of natural selection. Use concrete examples extensively. Practice identifying the four postulates in scenarios. Create visual summaries.
Advanced learners: Explore the modern synthesis and its integration with genetics, investigate sexual selection, research kin selection and altruism, analyze the neutral theory of molecular evolution.

VOCABULARY:
Evolution, natural selection, adaptation, fitness, variation, heredity, survival, reproduction, population, species, Darwin, artificial selection, selective pressure, descent with modification

CONNECTION TO FUTURE LEARNING:
Natural selection is the central mechanism of evolution. Students will apply this to understanding biodiversity, speciation, and human evolution. This knowledge is fundamental to all of biology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Darwin and Natural Selection' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Continue with remaining Evolution and Ecology topics...
-- Topic: Evidence for Evolution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Evidence for Evolution' AND grade_level_min = 10),
  'Evidence for Evolution (Grade 10) Topic Guide', 'Fossils, anatomy, molecules, biogeography',
  'EVIDENCE FOR EVOLUTION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand natural selection and the concept of common ancestry. They should have basic knowledge of DNA and proteins. Understanding of geological time is helpful.

LEARNING OBJECTIVES:
- Describe multiple lines of evidence for evolution: fossils, comparative anatomy, molecular biology, biogeography
- Distinguish between homologous and analogous structures
- Explain how molecular evidence supports evolutionary relationships
- Analyze the fossil record for evidence of evolutionary change
- Evaluate how different evidence types converge on consistent evolutionary relationships

KEY CONCEPTS:
1) Fossil record shows changes in life forms over time with transitional forms
2) Homologous structures have common evolutionary origin (same bones, different functions)
3) Analogous structures have similar function but different origins (convergent evolution)
4) Molecular evidence: DNA and protein similarities reflect evolutionary relationships
5) Biogeography: species distribution reflects evolutionary history and continental drift

COMMON MISCONCEPTIONS:
- Expecting complete fossil records (fossilization is rare)
- Thinking similar structures always indicate close relationship (convergent evolution exists)
- Assuming DNA differences mean species aren''t related (all life shares DNA)
- Believing fossils are the only evidence (molecular and anatomical evidence are equally important)
- Thinking evolution can''t be tested (predictions are made and tested regularly)
- Confusing homology with analogy

TEACHING SEQUENCE:
Analyze fossil sequences showing transitions. Compare homologous structures across vertebrates. Identify analogous structures from convergent evolution. Compare DNA and protein sequences across species. Map species distributions and explain patterns. Show how multiple evidence types support the same conclusions.

DIFFERENTIATION:
Struggling learners: Focus on one type of evidence at a time. Use visual comparisons of structures. Practice distinguishing homology from analogy. Create evidence type summary cards.
Advanced learners: Explore molecular clock dating, investigate endogenous retroviruses as evidence, research current transitional form discoveries, analyze phylogenetic tree construction methods.

VOCABULARY:
Evidence, fossil, transitional form, homologous structure, analogous structure, convergent evolution, molecular evidence, DNA sequence, biogeography, phylogenetic tree, common ancestor, vestigial structure

CONNECTION TO FUTURE LEARNING:
Evidence evaluation is central to understanding evolution scientifically. Students will apply this to analyzing evolutionary claims and new discoveries. This knowledge develops scientific reasoning skills applicable beyond biology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evidence for Evolution' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Population Genetics (Grade 10)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Population Genetics' AND grade_level_min = 10),
  'Population Genetics (Grade 10) Topic Guide', 'Gene pools and Hardy-Weinberg',
  'POPULATION GENETICS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand alleles and inheritance patterns. They should know about variation within populations. Basic probability and algebra skills are essential for Hardy-Weinberg calculations.

LEARNING OBJECTIVES:
- Define gene pool and allele frequency
- Explain the Hardy-Weinberg equilibrium and its conditions
- Use Hardy-Weinberg equations to calculate allele and genotype frequencies
- Identify factors that disrupt Hardy-Weinberg equilibrium
- Explain how evolution is measured as change in allele frequencies

KEY CONCEPTS:
1) A gene pool is all alleles for all genes in a population; allele frequency is the proportion of a specific allele
2) Hardy-Weinberg equilibrium: allele frequencies remain constant without evolutionary forces
3) Hardy-Weinberg requires: no selection, no mutation, no migration, random mating, large population
4) Hardy-Weinberg equations: p + q = 1 (allele frequencies); p² + 2pq + q² = 1 (genotype frequencies)
5) Evolution is change in allele frequencies over time; any force disrupting equilibrium causes evolution

COMMON MISCONCEPTIONS:
- Thinking Hardy-Weinberg describes real populations (it''s a null model)
- Assuming equilibrium means no evolution (it defines conditions where evolution doesn''t occur)
- Believing dominant alleles increase in frequency (they don''t without selection)
- Confusing allele frequency with phenotype frequency
- Thinking equilibrium is about genotype balance (it''s about allele frequencies)
- Assuming all deviations from H-W indicate natural selection (other forces exist)

TEACHING SEQUENCE:
Introduce the gene pool concept with examples. Explain Hardy-Weinberg as a null model. Practice calculating allele and genotype frequencies. Identify which conditions are violated in real populations. Connect violations to evolutionary mechanisms. Analyze real population data for deviations from equilibrium.

DIFFERENTIATION:
Struggling learners: Focus on the concept of allele frequency before equations. Use simple two-allele examples. Practice with the equations using known genotype frequencies. Provide calculation templates.
Advanced learners: Explore mathematical derivations of Hardy-Weinberg, investigate extensions for multiple alleles, research how population geneticists test for selection, analyze real population genetics data.

VOCABULARY:
Population genetics, gene pool, allele frequency, genotype frequency, Hardy-Weinberg equilibrium, genetic equilibrium, evolution, selection, mutation, migration (gene flow), random mating, genetic drift

CONNECTION TO FUTURE LEARNING:
Population genetics quantifies evolution. Students will apply this to understanding speciation and conservation genetics. This mathematical approach is fundamental to modern evolutionary biology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Population Genetics' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Mechanisms of Evolution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Mechanisms of Evolution' AND grade_level_min = 10),
  'Mechanisms of Evolution (Grade 10) Topic Guide', 'Genetic drift, gene flow, mutations',
  'MECHANISMS OF EVOLUTION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand natural selection and population genetics. They should know about allele frequencies and Hardy-Weinberg equilibrium. Understanding of mutations as genetic changes is essential.

LEARNING OBJECTIVES:
- Describe the mechanisms of evolution beyond natural selection
- Explain genetic drift and its effects on small populations
- Describe gene flow and its effects on allele frequencies
- Explain how mutation introduces new alleles
- Compare the relative importance of different evolutionary mechanisms

KEY CONCEPTS:
1) Natural selection: differential survival and reproduction based on heritable traits
2) Genetic drift: random changes in allele frequencies, stronger in small populations
3) Gene flow (migration): movement of alleles between populations, tends to homogenize
4) Mutation: source of all new genetic variation; random with respect to fitness
5) Non-random mating (sexual selection, assortative mating) affects genotype frequencies

COMMON MISCONCEPTIONS:
- Thinking natural selection is the only mechanism (drift, flow, mutation also matter)
- Believing genetic drift is unimportant (it''s significant in small populations)
- Assuming mutations are directed by needs (they''re random)
- Thinking gene flow always reduces differences (it can spread adaptations)
- Confusing bottleneck effect with founder effect (both are drift, different causes)
- Believing evolution requires natural selection (neutral evolution is common)

TEACHING SEQUENCE:
Review natural selection as one mechanism. Simulate genetic drift with random sampling. Model bottleneck and founder effects. Investigate gene flow between populations. Analyze mutation as the source of variation. Compare the strength of different mechanisms under various conditions.

DIFFERENTIATION:
Struggling learners: Focus on one mechanism at a time with clear examples. Use simulations for drift. Create comparison charts for mechanisms. Practice identifying which mechanism operates in scenarios.
Advanced learners: Explore neutral theory and molecular evolution, investigate adaptive introgression, research effective population size, analyze the relative roles of selection vs drift.

VOCABULARY:
Evolutionary mechanism, natural selection, genetic drift, bottleneck effect, founder effect, gene flow, migration, mutation, sexual selection, allele frequency, population size, random, directional

CONNECTION TO FUTURE LEARNING:
Understanding all evolutionary mechanisms is essential for complete evolutionary thinking. Students will apply this to speciation and conservation. This knowledge is fundamental to evolutionary biology and medicine.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mechanisms of Evolution' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Speciation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Speciation' AND grade_level_min = 10),
  'Speciation (Grade 10) Topic Guide', 'How new species form',
  'SPECIATION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand evolutionary mechanisms and population genetics. They should know the biological species concept. Understanding of reproductive isolation is essential.

LEARNING OBJECTIVES:
- Define species using the biological species concept
- Distinguish between allopatric and sympatric speciation
- Describe mechanisms of reproductive isolation
- Explain how speciation leads to biodiversity
- Analyze examples of speciation in progress

KEY CONCEPTS:
1) Biological species concept: groups of actually or potentially interbreeding populations reproductively isolated from others
2) Allopatric speciation: geographic isolation leads to divergence
3) Sympatric speciation: speciation without geographic isolation (polyploidy, habitat differentiation)
4) Reproductive isolation can be prezygotic (prevent mating/fertilization) or postzygotic (prevent hybrid success)
5) Speciation is gradual; "ring species" and hybrid zones show it in progress

COMMON MISCONCEPTIONS:
- Thinking speciation requires sudden transformation (it''s usually gradual)
- Believing one species turns into another existing species (new species arise)
- Assuming allopatric speciation requires permanent barriers (temporary isolation can suffice)
- Thinking all members of a species are identical (variation exists)
- Believing the biological species concept applies to all organisms (asexual organisms are problematic)
- Assuming sympatric speciation is impossible (it''s documented in many cases)

TEACHING SEQUENCE:
Define species and discuss limitations of definitions. Model allopatric speciation with geographic scenarios. Explore sympatric speciation mechanisms. Categorize reproductive isolation mechanisms. Analyze ring species and hybrid zones as speciation in progress. Connect to the origin of biodiversity.

DIFFERENTIATION:
Struggling learners: Focus on allopatric speciation as the main model. Use visual geographic scenarios. Create lists of isolation mechanisms. Practice identifying speciation types in examples.
Advanced learners: Explore adaptive radiation, investigate phylogenetic species concepts, research hybrid speciation, analyze speciation rates across lineages.

VOCABULARY:
Species, speciation, biological species concept, reproductive isolation, allopatric speciation, sympatric speciation, geographic isolation, prezygotic barrier, postzygotic barrier, hybrid, ring species, adaptive radiation

CONNECTION TO FUTURE LEARNING:
Speciation explains the origin of biodiversity. Students will apply this to understanding classification and conservation. This knowledge is fundamental to evolutionary biology and ecology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Speciation' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Human Evolution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Human Evolution' AND grade_level_min = 10),
  'Human Evolution (Grade 10) Topic Guide', 'Our evolutionary history',
  'HUMAN EVOLUTION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand natural selection and speciation. They should know how to interpret fossil and molecular evidence. Understanding that humans are primates is essential.

LEARNING OBJECTIVES:
- Describe the place of humans in the tree of life (primates, hominins)
- Identify key hominin fossils and their characteristics
- Explain major trends in human evolution (bipedalism, brain size, tool use)
- Describe the evidence for human evolution (fossils, DNA, comparative anatomy)
- Explain the relationship between modern humans and other hominins

KEY CONCEPTS:
1) Humans are primates; our closest relatives are chimpanzees and bonobos
2) Hominins include all species more closely related to humans than to chimps
3) Key trends: bipedalism evolved first (~4-6 mya), then increased brain size and tool use
4) Multiple hominin species existed simultaneously at various points
5) Modern humans (Homo sapiens) originated in Africa ~300,000 years ago and spread globally

COMMON MISCONCEPTIONS:
- Thinking humans evolved from modern apes (we share ancestors)
- Believing human evolution was linear (it was branching, with many extinct species)
- Assuming evolution stopped for humans (it continues today)
- Thinking there''s a "missing link" (many transitional fossils exist)
- Believing race is biological (genetic variation doesn''t support discrete races)
- Assuming humans are evolution''s goal (evolution has no goal)

TEACHING SEQUENCE:
Establish humans as primates through comparative anatomy. Examine hominin fossils chronologically. Trace the evolution of bipedalism, brain size, and tool use. Analyze molecular evidence for relationships. Discuss the "Out of Africa" model. Address misconceptions about human evolution sensitively.

DIFFERENTIATION:
Struggling learners: Focus on major trends rather than individual species. Use visual timelines. Practice comparing hominin characteristics. Create evolutionary tree summaries.
Advanced learners: Explore ancient DNA and what it reveals, investigate Neanderthal and Denisovan interbreeding, research ongoing human evolution, analyze debates about hominin classification.

VOCABULARY:
Primate, hominin, hominid, bipedalism, Australopithecus, Homo, Homo sapiens, fossil, cranial capacity, Neanderthal, Denisovan, Out of Africa, molecular clock, common ancestor

CONNECTION TO FUTURE LEARNING:
Human evolution connects to anthropology, medicine, and understanding ourselves. Students will apply this to discussions of human diversity and health. This knowledge is foundational for understanding human biology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Human Evolution' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: ECOLOGY
-- =============================================

-- Topic: Levels of Organization (Grade 10)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Levels of Organization' AND grade_level_min = 10),
  'Levels of Organization (Grade 10) Topic Guide', 'From individuals to the biosphere',
  'LEVELS OF ORGANIZATION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand that organisms interact with each other and their environment. They should know basic organism classification. Understanding that life exists at multiple scales is helpful.

LEARNING OBJECTIVES:
- Define and distinguish ecological levels: organism, population, community, ecosystem, biome, biosphere
- Explain emergent properties at each level
- Describe what ecologists study at different levels
- Analyze interactions within and between levels
- Apply appropriate level of analysis to ecological questions

KEY CONCEPTS:
1) Organism: individual living thing; population: same species in same area
2) Community: all populations in an area; ecosystem: community plus abiotic factors
3) Biome: large regions with similar climate and organisms; biosphere: all life on Earth
4) Emergent properties arise at each level that don''t exist at lower levels
5) Ecological questions can be addressed at different levels with different methods

COMMON MISCONCEPTIONS:
- Confusing population with community (population is one species; community is multiple)
- Thinking ecosystem is just the living things (abiotic factors are included)
- Assuming biomes have clear boundaries (they often grade into each other)
- Believing higher levels are more important (all levels are studied)
- Confusing habitat with ecosystem (habitat is where an organism lives)
- Thinking the biosphere is just air (it includes all life and their environments)

TEACHING SEQUENCE:
Build the hierarchy from organisms to biosphere with examples. Identify emergent properties at each level. Practice categorizing ecological questions by level. Investigate a local area at multiple levels. Analyze how changes at one level affect others. Connect to real ecological research at different levels.

DIFFERENTIATION:
Struggling learners: Focus on mastering the hierarchy in order. Use nested diagrams or Russian dolls analogy. Practice identifying levels with examples. Create definition cards with examples.
Advanced learners: Explore systems ecology approaches, investigate cross-level interactions, research how climate change affects different levels, analyze landscape ecology concepts.

VOCABULARY:
Organism, population, community, ecosystem, biome, biosphere, ecology, abiotic, biotic, habitat, niche, emergent property, scale, ecological level

CONNECTION TO FUTURE LEARNING:
Levels of organization provide framework for all ecology. Students will apply this to studying energy flow, cycles, and conservation. This organizational scheme is fundamental to environmental science.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Levels of Organization' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Biogeochemical Cycles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Biogeochemical Cycles' AND grade_level_min = 10),
  'Biogeochemical Cycles (Grade 10) Topic Guide', 'Carbon, nitrogen, water cycles',
  'BIOGEOCHEMICAL CYCLES - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand that matter is conserved and cycles through ecosystems. They should know basic chemistry of carbon, nitrogen, and water. Understanding of photosynthesis and respiration is essential.

LEARNING OBJECTIVES:
- Describe the major biogeochemical cycles: carbon, nitrogen, phosphorus, water
- Trace matter through each cycle identifying key processes
- Explain the role of organisms in cycling matter
- Analyze human impacts on biogeochemical cycles
- Connect cycles to climate change and environmental issues

KEY CONCEPTS:
1) Matter cycles between living organisms and the environment; energy flows
2) Carbon cycle: photosynthesis, respiration, decomposition, combustion; carbon stored in fossils
3) Nitrogen cycle: nitrogen fixation, nitrification, denitrification; bacteria are essential
4) Water cycle: evaporation, condensation, precipitation, transpiration, runoff
5) Human activities significantly alter these cycles (fossil fuel burning, fertilizer use)

COMMON MISCONCEPTIONS:
- Thinking cycles have starting and ending points (they''re continuous)
- Believing nitrogen is absorbed directly from air by plants (requires fixation)
- Assuming the carbon cycle was balanced before humans (it was at equilibrium)
- Thinking the water cycle only involves visible water (transpiration is major)
- Believing phosphorus cycles through the atmosphere (it doesn''t significantly)
- Confusing cycling of matter with flow of energy (matter cycles; energy flows)

TEACHING SEQUENCE:
Introduce the concept of matter cycling vs energy flow. Trace each major cycle through key processes. Identify organisms involved in each cycle. Model cycles with diagrams or simulations. Analyze human impacts on each cycle. Connect to current environmental issues (climate change, dead zones).

DIFFERENTIATION:
Struggling learners: Focus on one cycle at a time. Use cycle diagrams with clear process labels. Practice tracing elements through cycles. Create simplified cycle summaries.
Advanced learners: Explore ocean carbon storage, investigate the nitrogen cascade, research phosphorus limitations, analyze feedback loops between cycles.

VOCABULARY:
Biogeochemical cycle, carbon cycle, nitrogen cycle, phosphorus cycle, water cycle, photosynthesis, respiration, decomposition, nitrogen fixation, nitrification, denitrification, transpiration, reservoir, flux

CONNECTION TO FUTURE LEARNING:
Biogeochemical cycles connect to climate science and environmental issues. Students will apply this to understanding pollution and sustainability. This knowledge is essential for environmental science and policy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Biogeochemical Cycles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Population Ecology
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Population Ecology' AND grade_level_min = 10),
  'Population Ecology (Grade 10) Topic Guide', 'Growth, regulation, and dynamics',
  'POPULATION ECOLOGY - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand what a population is and basic ecology concepts. They should be comfortable with exponential and logistic growth mathematically. Understanding of limiting factors is helpful.

LEARNING OBJECTIVES:
- Calculate population density and describe population distribution patterns
- Model exponential and logistic population growth
- Explain density-dependent and density-independent limiting factors
- Describe the demographic transition and its stages
- Analyze human population growth patterns

KEY CONCEPTS:
1) Populations are characterized by density, distribution, age structure, and growth rate
2) Exponential growth (J-curve): occurs with unlimited resources; dN/dt = rN
3) Logistic growth (S-curve): growth slows as population approaches carrying capacity; dN/dt = rN(K-N)/K
4) Carrying capacity (K) is the maximum population an environment can sustain
5) Limiting factors can be density-dependent (disease, competition) or density-independent (weather, disasters)

COMMON MISCONCEPTIONS:
- Thinking populations always grow exponentially (resources limit growth)
- Believing carrying capacity is fixed (it can change with conditions)
- Assuming human populations follow the same patterns as other species (technology changes things)
- Thinking density-dependent factors are always about food (disease, predation, space also matter)
- Confusing birth rate with growth rate (immigration and death also matter)
- Believing populations stabilize exactly at carrying capacity (they fluctuate)

TEACHING SEQUENCE:
Calculate population density and distribution. Model exponential and logistic growth mathematically. Identify limiting factors in various scenarios. Analyze age structure diagrams. Investigate human population growth historically. Predict future population trends.

DIFFERENTIATION:
Struggling learners: Focus on the concepts before mathematical models. Use graphical representations of growth patterns. Practice identifying limiting factors. Analyze simplified population scenarios.
Advanced learners: Explore r/K selection theory, investigate meta-populations, research mark-recapture methods, analyze stochastic population models.

VOCABULARY:
Population ecology, population density, distribution, exponential growth, logistic growth, carrying capacity, limiting factor, density-dependent, density-independent, birth rate, death rate, immigration, emigration, age structure

CONNECTION TO FUTURE LEARNING:
Population ecology applies to conservation and human demography. Students will use these concepts for managing species and understanding human impacts. This knowledge is essential for wildlife management and sustainability.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Population Ecology' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Community Ecology
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Community Ecology' AND grade_level_min = 10),
  'Community Ecology (Grade 10) Topic Guide', 'Species interactions and succession',
  'COMMUNITY ECOLOGY - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand population ecology and ecological levels. They should know about food webs and energy flow. Understanding that species interact in various ways is essential.

LEARNING OBJECTIVES:
- Describe types of species interactions: competition, predation, symbiosis
- Distinguish between mutualism, commensalism, and parasitism
- Explain competitive exclusion and niche partitioning
- Describe ecological succession and its stages
- Analyze community structure and diversity

KEY CONCEPTS:
1) Species interactions shape community structure: competition, predation, herbivory, symbiosis
2) Competitive exclusion: two species can''t occupy the same niche indefinitely
3) Symbiosis types: mutualism (+/+), commensalism (+/0), parasitism (+/-)
4) Ecological succession: community changes over time; primary vs secondary succession
5) Biodiversity includes species richness and evenness; keystone species have disproportionate effects

COMMON MISCONCEPTIONS:
- Thinking competition means fighting (it''s often about resource use)
- Believing symbiosis only means mutualism (it includes all close associations)
- Assuming climax communities are permanent (they''re dynamic equilibria)
- Thinking succession always reaches the same endpoint (it depends on conditions)
- Believing all predation is harmful to prey populations (it can regulate them beneficially)
- Confusing habitat with niche (habitat is where; niche is role)

TEACHING SEQUENCE:
Categorize species interactions with examples. Analyze competitive exclusion and niche partitioning. Investigate symbiotic relationships. Model succession from primary to climax community. Explore keystone species and their effects. Analyze community diversity metrics.

DIFFERENTIATION:
Struggling learners: Focus on the main interaction types with clear examples. Use +/- notation for symbiosis. Create succession diagrams. Practice identifying interactions in scenarios.
Advanced learners: Explore island biogeography, investigate trophic cascades, research intermediate disturbance hypothesis, analyze network analysis of communities.

VOCABULARY:
Community ecology, species interaction, competition, competitive exclusion, niche, niche partitioning, predation, symbiosis, mutualism, commensalism, parasitism, succession, primary succession, secondary succession, climax community, keystone species, biodiversity

CONNECTION TO FUTURE LEARNING:
Community ecology applies to conservation and ecosystem management. Students will use these concepts for understanding invasive species and restoration. This knowledge is essential for ecology and environmental science.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Community Ecology' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Conservation Biology
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Conservation Biology' AND grade_level_min = 10),
  'Conservation Biology (Grade 10) Topic Guide', 'Biodiversity and conservation efforts',
  'CONSERVATION BIOLOGY - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand ecology at multiple levels and population dynamics. They should know about biodiversity and ecosystem services. Understanding of human environmental impacts is essential.

LEARNING OBJECTIVES:
- Describe the value of biodiversity (ecological, economic, ethical, aesthetic)
- Identify major threats to biodiversity (habitat loss, invasive species, pollution, overexploitation, climate change)
- Explain conservation strategies and their effectiveness
- Analyze case studies of conservation success and failure
- Evaluate trade-offs in conservation decision-making

KEY CONCEPTS:
1) Biodiversity has multiple values: ecosystem function, medicines, food, aesthetics, ethical obligations
2) Current extinction rate is 100-1000 times background rate; we are in a mass extinction
3) Main threats: HIPPO (Habitat loss, Invasive species, Pollution, Population growth, Overexploitation)
4) Conservation strategies: protected areas, habitat corridors, captive breeding, legal protections
5) Conservation involves trade-offs between human needs and biodiversity protection

COMMON MISCONCEPTIONS:
- Thinking conservation is just about saving charismatic species (ecosystems and functions matter)
- Believing extinction is natural and therefore acceptable (current rate is not natural)
- Assuming protected areas are sufficient (corridors and management are also needed)
- Thinking conservation always conflicts with development (sustainable options exist)
- Believing individual actions don''t matter (they do, especially collectively)
- Assuming technology will solve all problems (many threats require behavioral change)

TEACHING SEQUENCE:
Quantify current biodiversity and extinction rates. Analyze major threats with case studies. Evaluate different conservation strategies. Investigate local conservation issues. Analyze trade-offs in real conservation decisions. Design conservation action plans.

DIFFERENTIATION:
Struggling learners: Focus on the main threats and basic conservation strategies. Use case studies of familiar species. Create threat-solution matching activities. Analyze local conservation issues.
Advanced learners: Explore population viability analysis, investigate conservation genetics, research rewilding approaches, analyze international conservation policy.

VOCABULARY:
Conservation biology, biodiversity, extinction, endangered species, threatened species, habitat loss, fragmentation, invasive species, overexploitation, protected area, corridor, restoration, ecosystem services, sustainable, trade-off

CONNECTION TO FUTURE LEARNING:
Conservation biology applies science to pressing environmental issues. Students will use this knowledge for environmental decision-making and careers. This field integrates all of biology for applied purposes.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Conservation Biology' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;
