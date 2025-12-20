-- =============================================
-- GRADE 9 SCIENCE TOPIC PROMPTS
-- Subject: Science (Physical Science)
-- Grade: 9 (High School)
-- Units: Matter and Its Properties, Chemical Reactions, Forces and Motion, Energy
-- =============================================

-- =============================================
-- UNIT: MATTER AND ITS PROPERTIES
-- =============================================

-- Topic: Classification of Matter
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Classification of Matter' AND grade_level_min = 9),
  'Classification of Matter (Grade 9) Topic Guide', 'Elements, compounds, mixtures, and solutions',
  'CLASSIFICATION OF MATTER - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand that matter has mass and takes up space. They should be familiar with atoms as the building blocks of matter and have basic knowledge of physical and chemical properties. Understanding that different substances have different properties is essential.

LEARNING OBJECTIVES:
- Classify matter as pure substances (elements or compounds) or mixtures (homogeneous or heterogeneous)
- Distinguish between elements, compounds, and mixtures based on composition and properties
- Explain the differences between solutions, colloids, and suspensions
- Describe methods for separating mixtures based on physical properties
- Use particle diagrams to represent different types of matter

KEY CONCEPTS:
1) Matter is classified into pure substances (fixed composition) and mixtures (variable composition)
2) Pure substances include elements (single type of atom) and compounds (atoms chemically bonded)
3) Mixtures can be homogeneous (uniform, like solutions) or heterogeneous (non-uniform, like salads)
4) Solutions have dissolved particles too small to scatter light; colloids scatter light; suspensions settle over time
5) Physical properties like boiling point, solubility, and density can be used to separate mixtures

COMMON MISCONCEPTIONS:
- Believing all mixtures are heterogeneous (solutions are homogeneous mixtures)
- Confusing compounds with mixtures (compounds have fixed ratios; mixtures do not)
- Thinking dissolving creates a new substance (it''s a physical change)
- Assuming "pure" means "clean" rather than single substance
- Believing solutions must be liquids (gases and solids can also form solutions)
- Confusing molecules with mixtures (H₂O is a compound, not a mixture of H and O)

TEACHING SEQUENCE:
Begin with sorting everyday materials into categories. Use particle diagrams to visualize the difference between elements, compounds, and mixtures. Demonstrate separation techniques: filtration, distillation, chromatography, evaporation. Have students analyze various substances and classify them. Use the Tyndall effect to distinguish solutions from colloids. Connect to real-world examples: air as a mixture, bronze as a solution (alloy), blood as a colloid.

DIFFERENTIATION:
Struggling learners: Focus on the pure substance vs mixture distinction first. Use visual sorting activities with familiar materials. Provide flowcharts for classification decisions. Emphasize key examples for each category.
Advanced learners: Explore the difference between physical and chemical separation methods, investigate alloys and amalgams, research fractional distillation of petroleum, analyze phase diagrams.

VOCABULARY:
Matter, pure substance, element, compound, mixture, homogeneous, heterogeneous, solution, solute, solvent, colloid, suspension, alloy, filtration, distillation, chromatography, evaporation

CONNECTION TO FUTURE LEARNING:
Classification of matter is foundational for chemistry. Students will apply these concepts to understanding chemical reactions, atomic structure, and bonding. This knowledge is essential for all subsequent chemistry topics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Classification of Matter' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Atomic Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Atomic Structure' AND grade_level_min = 9),
  'Atomic Structure (Grade 9) Topic Guide', 'Protons, neutrons, electrons, and atomic models',
  'ATOMIC STRUCTURE - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand that matter is made of atoms and that elements are pure substances with one type of atom. They should know that atoms are incredibly small and make up all matter. Basic understanding of positive and negative charges is helpful.

LEARNING OBJECTIVES:
- Describe the structure of an atom including protons, neutrons, and electrons
- Calculate atomic number, mass number, and number of subatomic particles
- Explain how isotopes differ and why they exist
- Describe the historical development of atomic models
- Relate atomic structure to an element''s position on the periodic table

KEY CONCEPTS:
1) Atoms consist of a nucleus (protons and neutrons) surrounded by electrons in energy levels
2) Atomic number equals protons; mass number equals protons plus neutrons; neutral atoms have equal protons and electrons
3) Isotopes are atoms of the same element with different numbers of neutrons
4) Atomic models have evolved: Dalton''s solid sphere → Thomson''s plum pudding → Rutherford''s nuclear → Bohr''s orbital → quantum mechanical
5) Electrons occupy energy levels (shells); the outermost electrons determine chemical behavior

COMMON MISCONCEPTIONS:
- Believing electrons orbit like planets in fixed paths (they exist in probability clouds)
- Thinking the nucleus takes up most of the atom''s volume (it''s mostly empty space)
- Confusing atomic number with mass number
- Believing all atoms of an element are identical (isotopes exist)
- Thinking neutrons are unimportant (they affect stability and mass)
- Imagining atoms as colored balls (they have no color at atomic scale)

TEACHING SEQUENCE:
Trace the historical development of atomic theory with key experiments (Rutherford''s gold foil). Use scale models to show relative sizes of nucleus and atom. Practice calculating subatomic particles from atomic and mass numbers. Investigate isotopes and their uses (carbon dating, medical imaging). Create Bohr models for the first 20 elements. Connect electron arrangement to position on the periodic table.

DIFFERENTIATION:
Struggling learners: Focus on the three subatomic particles and their locations. Use consistent formulas for calculations. Create visual summary charts. Practice with lighter elements first.
Advanced learners: Explore electron configurations and quantum numbers, investigate radioactive isotopes, research historical experiments in detail, analyze spectral evidence for electron levels.

VOCABULARY:
Atom, proton, neutron, electron, nucleus, atomic number, mass number, isotope, ion, energy level, electron shell, valence electron, atomic model, orbital, charge

CONNECTION TO FUTURE LEARNING:
Atomic structure is essential for understanding the periodic table, chemical bonding, and reactions. Students will use these concepts throughout chemistry and physics. This knowledge applies to nuclear science, electronics, and materials science.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Atomic Structure' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: The Periodic Table
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Periodic Table' AND grade_level_min = 9),
  'The Periodic Table (Grade 9) Topic Guide', 'Organization and trends in the periodic table',
  'THE PERIODIC TABLE - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students must understand atomic structure including protons, neutrons, electrons, and atomic number. They should know that elements are identified by their atomic number. Understanding that electrons are arranged in energy levels is essential.

LEARNING OBJECTIVES:
- Describe the organization of the periodic table by atomic number, groups, and periods
- Identify major groups and their characteristic properties (alkali metals, halogens, noble gases, etc.)
- Predict properties of elements based on their position in the periodic table
- Explain periodic trends including atomic radius, ionization energy, and electronegativity
- Use the periodic table to determine electron configuration

KEY CONCEPTS:
1) Elements are arranged by increasing atomic number; rows are periods, columns are groups/families
2) Elements in the same group have similar properties because they have the same number of valence electrons
3) Metals (left/center) conduct and lose electrons; nonmetals (right) gain electrons; metalloids are between
4) Periodic trends result from changes in atomic structure: atomic radius decreases across periods, ionization energy increases
5) The periodic table can predict reactivity, bonding behavior, and physical properties

COMMON MISCONCEPTIONS:
- Believing the periodic table is organized by atomic mass (it''s by atomic number)
- Thinking group 18 elements never react (they can under extreme conditions)
- Assuming all metals are solid at room temperature (mercury is liquid)
- Believing the periodic table is complete and unchanging (new elements are still being synthesized)
- Confusing groups and periods (groups are vertical; periods are horizontal)
- Thinking elements in the same period are similar (they''re in the same GROUP that are similar)

TEACHING SEQUENCE:
Explore the periodic table as an organized reference tool. Identify regions: metals, nonmetals, metalloids, and major groups. Investigate group properties through demonstrations (alkali metals with water, halogen reactivity). Graph periodic trends and explain patterns using atomic structure. Use the table to predict electron configurations. Connect to real-world element uses and discovery stories.

DIFFERENTIATION:
Struggling learners: Focus on the major groups and metal/nonmetal distinction. Use colored periodic tables highlighting regions. Practice reading information from the table. Memorize key groups with mnemonics.
Advanced learners: Explore the f-block elements, investigate synthesis of new elements, analyze exceptions to periodic trends, research applications of specific element groups.

VOCABULARY:
Periodic table, group, family, period, metal, nonmetal, metalloid, alkali metal, alkaline earth metal, transition metal, halogen, noble gas, atomic radius, ionization energy, electronegativity, valence electron

CONNECTION TO FUTURE LEARNING:
The periodic table is the chemist''s most important tool. Students will use it constantly for predicting bonding, reactivity, and properties. Understanding trends prepares them for advanced chemistry and materials science.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Periodic Table' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Chemical Bonding
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Chemical Bonding' AND grade_level_min = 9),
  'Chemical Bonding (Grade 9) Topic Guide', 'Ionic, covalent, and metallic bonds',
  'CHEMICAL BONDING - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students must understand atomic structure, particularly valence electrons. They should know how to read the periodic table to determine electron configurations. Understanding that atoms interact to achieve stability is essential.

LEARNING OBJECTIVES:
- Explain how and why atoms bond to achieve stable electron configurations
- Distinguish between ionic, covalent, and metallic bonding
- Predict bond type based on the elements involved (metals vs nonmetals)
- Draw simple Lewis dot structures for atoms and molecules
- Relate bonding type to physical properties of substances

KEY CONCEPTS:
1) Atoms bond to achieve stable electron configurations, often resembling noble gases (octet rule)
2) Ionic bonds form when electrons transfer from metals to nonmetals, creating oppositely charged ions that attract
3) Covalent bonds form when nonmetals share electrons to complete their octets
4) Metallic bonds involve metal atoms sharing a "sea" of delocalized electrons
5) Bond type determines properties: ionic compounds have high melting points, covalent compounds have low; metals conduct electricity

COMMON MISCONCEPTIONS:
- Believing ionic bonds involve sharing (they involve transfer)
- Thinking covalent means equal sharing (polar covalent bonds share unequally)
- Assuming all bonds are purely one type (many have mixed character)
- Believing double bonds are twice as strong as single bonds (they''re stronger but not double)
- Thinking bonding is reversible easily (breaking bonds requires energy)
- Confusing intramolecular bonds with intermolecular forces

TEACHING SEQUENCE:
Introduce the octet rule and the drive for stability. Model ionic bonding with electron transfer between metals and nonmetals. Model covalent bonding with electron sharing between nonmetals. Compare properties of ionic and covalent compounds through demonstrations. Draw Lewis structures for simple molecules. Investigate metallic bonding and its unique properties (conductivity, malleability).

DIFFERENTIATION:
Struggling learners: Focus on the metal + nonmetal = ionic, nonmetal + nonmetal = covalent pattern. Use visual models of electron transfer and sharing. Practice with simple binary compounds. Create comparison charts for bond types.
Advanced learners: Explore polar covalent bonds and electronegativity, investigate multiple bonds and resonance, analyze molecular geometry, research bond energies and lengths.

VOCABULARY:
Chemical bond, ionic bond, covalent bond, metallic bond, ion, cation, anion, electron transfer, electron sharing, octet rule, valence electron, Lewis structure, electrolyte, conductivity

CONNECTION TO FUTURE LEARNING:
Chemical bonding is fundamental to understanding molecular structure, reactions, and properties. Students will build on this to learn molecular geometry, polarity, and intermolecular forces. This knowledge is essential for organic chemistry and materials science.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Chemical Bonding' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Physical Properties
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Physical Properties' AND grade_level_min = 9),
  'Physical Properties (Grade 9) Topic Guide', 'Density, melting point, boiling point',
  'PHYSICAL PROPERTIES - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand the states of matter and phase changes. They should be comfortable with mass and volume measurements. Basic understanding of particle motion and energy is helpful. Ability to perform calculations with formulas is necessary.

LEARNING OBJECTIVES:
- Define and measure physical properties including density, melting point, boiling point, and solubility
- Calculate density and use it to identify substances
- Explain how physical properties relate to particle structure and motion
- Use physical properties to distinguish between substances
- Apply physical properties to separate mixtures

KEY CONCEPTS:
1) Physical properties can be observed or measured without changing the substance''s chemical identity
2) Density (mass/volume) is an intensive property that helps identify substances regardless of sample size
3) Melting and boiling points are temperatures at which phase changes occur; they depend on intermolecular forces
4) Physical properties result from the arrangement and behavior of particles
5) Differences in physical properties allow separation of mixtures (distillation, filtration, etc.)

COMMON MISCONCEPTIONS:
- Believing density depends on the amount of substance (it''s intensive, not extensive)
- Thinking heavy objects always sink (it''s about density, not weight)
- Confusing boiling point with evaporation temperature (evaporation occurs at any temperature)
- Assuming all substances melt and boil (some decompose first)
- Believing physical properties can only be measured in a lab (many can be observed directly)
- Thinking phase changes require different temperatures for different amounts (they don''t)

TEACHING SEQUENCE:
Measure and calculate densities of various solids and liquids. Create density columns to visualize density differences. Investigate melting and boiling points through demonstrations and data tables. Connect properties to particle models (why does ice float?). Use property data to identify unknown substances. Design separation procedures based on property differences.

DIFFERENTIATION:
Struggling learners: Focus on density calculations with clear step-by-step procedures. Use visualization techniques for properties. Provide property reference tables. Practice identifying "mystery" substances using properties.
Advanced learners: Explore the relationship between intermolecular forces and properties, investigate anomalous properties of water, analyze phase diagrams, research property-based industrial separations.

VOCABULARY:
Physical property, density, mass, volume, melting point, boiling point, solubility, intensive property, extensive property, phase change, particle motion, intermolecular force

CONNECTION TO FUTURE LEARNING:
Physical properties are used throughout chemistry to identify and characterize substances. Students will connect properties to molecular structure and bonding. This foundation is essential for analytical chemistry and materials science.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Physical Properties' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Chemical Properties
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Chemical Properties' AND grade_level_min = 9),
  'Chemical Properties (Grade 9) Topic Guide', 'Reactivity and chemical changes',
  'CHEMICAL PROPERTIES - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand the difference between physical and chemical changes. They should be familiar with atoms, molecules, and chemical bonding. Understanding that new substances form during chemical reactions is essential.

LEARNING OBJECTIVES:
- Define chemical properties and distinguish them from physical properties
- Identify common chemical properties including reactivity, flammability, and oxidation potential
- Recognize evidence that a chemical change has occurred
- Explain chemical properties in terms of atomic structure and bonding
- Predict chemical behavior based on an element''s position on the periodic table

KEY CONCEPTS:
1) Chemical properties describe how a substance reacts with other substances; measuring them changes the substance
2) Common chemical properties include reactivity, flammability, toxicity, oxidation potential, and stability
3) Evidence of chemical changes: color change, gas production, precipitate formation, energy release or absorption
4) Chemical properties depend on electron arrangement and bonding characteristics
5) The periodic table can predict chemical properties (reactivity trends in groups)

COMMON MISCONCEPTIONS:
- Confusing physical and chemical properties (rusting is chemical; melting is physical)
- Thinking all color changes indicate chemical reactions (some are physical)
- Believing that "natural" means non-toxic or safe (many natural substances are toxic)
- Assuming stable means unreactive (stable compounds can react under right conditions)
- Thinking all chemical reactions are visible (many are not)
- Believing chemical properties are fixed regardless of conditions (temperature, pressure affect reactivity)

TEACHING SEQUENCE:
Compare physical and chemical properties through demonstrations. Test substances for various chemical properties: reactivity with acids, combustibility, oxidation. Identify evidence of chemical changes in everyday situations. Connect reactivity to periodic table position (alkali metals vs noble gases). Investigate factors that affect reaction rates. Analyze material safety data sheets (MSDS) for chemical properties.

DIFFERENTIATION:
Struggling learners: Focus on the key distinction: chemical properties require reaction to observe. Use clear examples of chemical vs physical properties. Create sorting activities. Emphasize observable evidence of chemical change.
Advanced learners: Explore oxidation-reduction reactions in detail, investigate reaction mechanisms, research industrial applications of chemical properties, analyze combustion chemistry.

VOCABULARY:
Chemical property, reactivity, flammability, oxidation, stability, toxicity, corrosion, combustion, precipitate, chemical change, evidence, reaction, reactant, product

CONNECTION TO FUTURE LEARNING:
Chemical properties are essential for understanding chemical reactions and their applications. Students will use this knowledge to predict reaction products and analyze chemical behavior. This foundation is important for organic chemistry, biochemistry, and materials science.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Chemical Properties' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: CHEMICAL REACTIONS
-- =============================================

-- Topic: Evidence of Chemical Reactions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Evidence of Chemical Reactions' AND grade_level_min = 9),
  'Evidence of Chemical Reactions (Grade 9) Topic Guide', 'Signs that a reaction has occurred',
  'EVIDENCE OF CHEMICAL REACTIONS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand the difference between physical and chemical changes. They should know that matter is made of atoms that can rearrange during reactions. Understanding of energy in various forms is helpful.

LEARNING OBJECTIVES:
- Identify the five main types of evidence for chemical reactions
- Distinguish between chemical reactions and physical changes using evidence
- Explain why each type of evidence indicates a chemical reaction
- Analyze everyday situations for evidence of chemical reactions
- Understand that not all evidence is conclusive—multiple indicators strengthen conclusions

KEY CONCEPTS:
1) Five main types of evidence: color change, gas production, precipitate formation, temperature change, light emission
2) These changes indicate that new substances with different properties have formed
3) Some evidence can also indicate physical changes, so multiple indicators are more conclusive
4) Temperature change indicates energy transfer as bonds break and form
5) Chemical reactions involve rearrangement of atoms to form new substances

COMMON MISCONCEPTIONS:
- Believing any color change means a chemical reaction (physical color changes exist)
- Thinking bubbles always indicate chemical reaction (boiling produces bubbles but is physical)
- Assuming all chemical reactions are dramatic (many are subtle)
- Believing temperature decrease means no reaction (endothermic reactions absorb heat)
- Thinking that if something looks the same, no reaction occurred (reactions can produce clear products)
- Assuming physical and chemical changes cannot occur together

TEACHING SEQUENCE:
Demonstrate classic reactions showing each type of evidence. Create a lab investigation where students identify evidence in various reactions. Compare chemical reactions with physical changes that show similar appearances. Use mystery reaction activities where students determine if reactions occurred. Analyze everyday examples: cooking, rusting, burning, digestion. Discuss why multiple evidence types are more convincing.

DIFFERENTIATION:
Struggling learners: Focus on the five main types with memorable examples. Create evidence checklists for identifying reactions. Use before-and-after comparisons. Practice distinguishing chemical from physical changes.
Advanced learners: Investigate enthalpy changes and bond energies, explore chemiluminescence, research analytical techniques for detecting reactions, design controlled experiments to test for reactions.

VOCABULARY:
Chemical reaction, evidence, color change, precipitate, gas evolution, temperature change, exothermic, endothermic, light emission, chemiluminescence, chemical change, physical change

CONNECTION TO FUTURE LEARNING:
Recognizing evidence of reactions is essential for all chemistry. Students will use this skill when balancing equations, predicting products, and conducting experiments. This observational skill is critical for laboratory work and scientific inquiry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evidence of Chemical Reactions' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Writing Chemical Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Writing Chemical Equations' AND grade_level_min = 9),
  'Writing Chemical Equations (Grade 9) Topic Guide', 'Representing reactions symbolically',
  'WRITING CHEMICAL EQUATIONS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students must know chemical symbols and formulas for common elements and compounds. They should understand that chemical reactions involve rearrangement of atoms. Familiarity with the periodic table and chemical nomenclature is essential.

LEARNING OBJECTIVES:
- Write word equations for chemical reactions
- Convert word equations to chemical equations using correct formulas
- Identify reactants and products in chemical equations
- Use state symbols (s), (l), (g), (aq) correctly
- Interpret chemical equations to describe what happens during reactions

KEY CONCEPTS:
1) Chemical equations use symbols and formulas to represent reactions concisely
2) Reactants appear on the left of the arrow; products appear on the right
3) The arrow means "produces" or "yields"—it is not an equals sign
4) State symbols indicate the physical state of each substance: (s) solid, (l) liquid, (g) gas, (aq) aqueous
5) Chemical equations represent the qualitative aspects of reactions; balancing addresses the quantitative

COMMON MISCONCEPTIONS:
- Thinking the arrow means equals (it shows transformation, not equality)
- Writing formulas incorrectly for ionic compounds (using molecule subscripts instead of ion charges)
- Confusing coefficients with subscripts before learning to balance
- Believing you can write any formula you want (formulas are fixed for each compound)
- Assuming all reactions can be written simply (some require multiple steps)
- Thinking chemical equations show timing or rate (they don''t)

TEACHING SEQUENCE:
Start with word equations describing familiar reactions. Practice writing correct formulas for compounds. Convert word equations to formula equations step by step. Add state symbols based on reaction conditions. Read equations aloud to reinforce meaning. Analyze equations to predict what would be observed. Connect equations to evidence of chemical reactions.

DIFFERENTIATION:
Struggling learners: Provide formula reference sheets. Practice word equations extensively before symbols. Use equation templates with blanks. Focus on common reactions with familiar substances.
Advanced learners: Write equations for multi-step reactions, include reaction conditions (temperature, catalysts), explore net ionic equations, research industrial chemical equations.

VOCABULARY:
Chemical equation, word equation, formula, reactant, product, arrow, yield, state symbol, solid, liquid, gas, aqueous, coefficient, subscript, reaction

CONNECTION TO FUTURE LEARNING:
Writing equations is prerequisite to balancing equations and stoichiometry. Students will use equations to predict products and calculate reaction quantities. This skill is fundamental to all chemistry courses.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Chemical Equations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Balancing Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Balancing Equations' AND grade_level_min = 9),
  'Balancing Equations (Grade 9) Topic Guide', 'Applying conservation of mass',
  'BALANCING EQUATIONS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students must be able to write chemical equations with correct formulas. They should understand that atoms are conserved in chemical reactions. Knowledge of the law of conservation of mass is essential. Ability to count atoms in formulas is required.

LEARNING OBJECTIVES:
- Apply the law of conservation of mass to balance chemical equations
- Count atoms in chemical formulas and equations
- Use coefficients to balance equations while preserving formulas
- Verify that equations are balanced by counting atoms on both sides
- Balance various types of equations including combustion and synthesis

KEY CONCEPTS:
1) The law of conservation of mass states that atoms are neither created nor destroyed in chemical reactions
2) Balanced equations have equal numbers of each type of atom on both sides
3) Coefficients (numbers in front of formulas) are used to balance; subscripts cannot be changed
4) Balance by adjusting coefficients systematically, often starting with the most complex molecule
5) A balanced equation provides the mole ratios needed for stoichiometry

COMMON MISCONCEPTIONS:
- Changing subscripts to balance (this changes the substance)
- Thinking 1 is not a coefficient (it''s just not written)
- Believing there''s only one way to balance (there may be multiple strategies)
- Assuming coefficients must be integers (fractional coefficients work but are usually avoided)
- Forgetting to count atoms in polyatomic ions correctly
- Thinking balancing is just math (it represents conservation of atoms)

TEACHING SEQUENCE:
Review counting atoms in formulas. Practice identifying unbalanced equations. Demonstrate systematic balancing strategies. Start with simple equations (synthesis, decomposition) before combustion. Use visual models with atomic tokens to reinforce conservation. Practice extensively with varied equation types. Verify balanced equations by counting.

DIFFERENTIATION:
Struggling learners: Use atom-counting charts for each element. Balance simple two-element compounds first. Provide step-by-step balancing guides. Use color-coding for different elements.
Advanced learners: Balance redox equations using half-reactions, explore balancing by inspection vs algebraic methods, balance equations with polyatomic ions, investigate matrix methods for complex equations.

VOCABULARY:
Balanced equation, coefficient, subscript, conservation of mass, atom count, reactant, product, mole ratio, synthesis, decomposition, combustion, verify

CONNECTION TO FUTURE LEARNING:
Balanced equations are essential for stoichiometry and quantitative chemistry. Students will use balanced equations to calculate amounts of reactants and products. This skill is fundamental to all chemistry problem-solving.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Balancing Equations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Types of Reactions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Types of Reactions' AND grade_level_min = 9),
  'Types of Reactions (Grade 9) Topic Guide', 'Synthesis, decomposition, single/double replacement',
  'TYPES OF REACTIONS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students must be able to write and balance chemical equations. They should understand that atoms rearrange during reactions. Familiarity with ionic and covalent compounds is essential. Understanding of activity series is helpful.

LEARNING OBJECTIVES:
- Classify reactions into five main types: synthesis, decomposition, single replacement, double replacement, and combustion
- Predict products of reactions based on reaction type
- Use activity series to predict if single replacement reactions will occur
- Recognize patterns in reactants and products for each reaction type
- Write and balance equations for each reaction type

KEY CONCEPTS:
1) Synthesis (combination): Two or more substances combine to form one product (A + B → AB)
2) Decomposition: One compound breaks down into simpler substances (AB → A + B)
3) Single replacement: One element replaces another in a compound (A + BC → AC + B)
4) Double replacement: Two compounds exchange parts (AB + CD → AD + CB)
5) Combustion: A substance reacts with oxygen, usually producing heat and light

COMMON MISCONCEPTIONS:
- Thinking all reactions fit neatly into one category (some are complex)
- Believing any two substances will react (activity series matters for replacement)
- Confusing single and double replacement
- Assuming all combustion involves fire (slow oxidation is also combustion)
- Thinking decomposition only happens with heat (light and electricity can also decompose)
- Believing reaction types predict if reactions will occur (they help predict products if reaction does occur)

TEACHING SEQUENCE:
Introduce each reaction type with demonstrations. Practice identifying reaction types from equations. Learn patterns: synthesis has one product, decomposition has one reactant. Use activity series to predict single replacement. Practice predicting products for each type. Balance equations for predicted products. Connect to real-world examples of each type.

DIFFERENTIATION:
Struggling learners: Focus on recognition before prediction. Use pattern templates for each type. Create flashcards with reaction type examples. Practice with binary compounds before polyatomic ions.
Advanced learners: Explore redox reactions and electron transfer, investigate reaction mechanisms, research industrial applications of each type, analyze complex reactions with multiple types.

VOCABULARY:
Synthesis, combination, decomposition, single replacement, double replacement, combustion, activity series, precipitate, oxidation, product, reactant, predict

CONNECTION TO FUTURE LEARNING:
Reaction classification helps predict products in chemistry. Students will use reaction types for stoichiometry and laboratory work. Understanding reaction patterns is essential for organic chemistry and biochemistry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Types of Reactions' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Acids and Bases
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Acids and Bases' AND grade_level_min = 9),
  'Acids and Bases (Grade 9) Topic Guide', 'pH, neutralization, and applications',
  'ACIDS AND BASES - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand chemical formulas and equations. They should know about ionic compounds and their behavior in water. Understanding of solutions and concentration is helpful. Basic knowledge of hydrogen and hydroxide ions is beneficial.

LEARNING OBJECTIVES:
- Define acids and bases using Arrhenius definitions (H⁺ and OH⁻)
- Measure and interpret pH values using indicators and pH meters
- Explain the pH scale including neutral, acidic, and basic ranges
- Describe neutralization reactions and their products
- Identify common acids and bases and their everyday applications

KEY CONCEPTS:
1) Acids produce hydrogen ions (H⁺) in water; bases produce hydroxide ions (OH⁻)
2) The pH scale ranges from 0-14: below 7 is acidic, 7 is neutral, above 7 is basic
3) Each pH unit represents a tenfold difference in H⁺ concentration
4) Neutralization: Acid + Base → Salt + Water (H⁺ + OH⁻ → H₂O)
5) pH affects many processes: biological systems, environmental quality, industrial processes

COMMON MISCONCEPTIONS:
- Believing all acids are dangerous (many foods are acidic)
- Thinking pH 0 or 14 are the limits (they can go beyond in concentrated solutions)
- Assuming "strong" means concentrated (strong refers to complete ionization)
- Believing neutralization always produces pH 7 (salt effects can shift pH)
- Thinking acids and bases are opposites that cancel out (they react to form new substances)
- Confusing pH with concentration

TEACHING SEQUENCE:
Explore properties of acids and bases through safe demonstrations. Use indicators to test household substances. Measure pH using indicators and meters. Investigate the pH scale as logarithmic. Demonstrate neutralization reactions quantitatively. Calculate water and salt products. Connect to real-world applications: antacids, cleaning products, soil chemistry, biological systems.

DIFFERENTIATION:
Struggling learners: Focus on the pH scale and acid/base identification. Use color-changing demonstrations. Practice with common household substances. Create pH reference charts.
Advanced learners: Explore Brønsted-Lowry and Lewis definitions, calculate pH from concentration, investigate buffer systems, research acid-base reactions in biological systems.

VOCABULARY:
Acid, base, pH, neutral, acidic, basic (alkaline), hydrogen ion, hydroxide ion, indicator, neutralization, salt, strong acid, weak acid, buffer, concentration

CONNECTION TO FUTURE LEARNING:
Acid-base chemistry is fundamental to many areas of chemistry and biology. Students will apply these concepts to buffer systems, titrations, and biochemistry. Understanding pH is essential for environmental science and medicine.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Acids and Bases' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Reaction Rates
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Reaction Rates' AND grade_level_min = 9),
  'Reaction Rates (Grade 9) Topic Guide', 'Factors affecting how fast reactions occur',
  'REACTION RATES - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand chemical reactions and collision theory basics. They should know that reactions require particles to collide with sufficient energy. Understanding of temperature and its effects on particle motion is essential.

LEARNING OBJECTIVES:
- Define reaction rate as the change in concentration over time
- Identify and explain factors that affect reaction rates
- Apply collision theory to explain why factors affect rates
- Design experiments to test factors affecting reaction rates
- Analyze graphs showing reaction rates

KEY CONCEPTS:
1) Reaction rate measures how fast reactants are converted to products
2) Factors affecting rate: temperature, concentration, surface area, catalysts, nature of reactants
3) Collision theory: reactions require collisions with sufficient energy and proper orientation
4) Increasing temperature increases particle speed and collision frequency
5) Catalysts lower activation energy without being consumed in the reaction

COMMON MISCONCEPTIONS:
- Believing catalysts make reactions happen that wouldn''t occur otherwise (they speed up possible reactions)
- Thinking surface area affects total product (it affects how fast, not how much)
- Assuming temperature always doubles the rate for each 10°C increase (it''s an approximation)
- Believing catalysts are used up (they are recovered unchanged)
- Confusing rate with extent of reaction
- Thinking only temperature matters for rate

TEACHING SEQUENCE:
Demonstrate reaction rate differences with classic experiments (dissolving tablets, elephant toothpaste). Investigate each factor systematically through controlled experiments. Use collision theory to explain observations. Graph concentration vs time data. Identify catalysts in real-world applications (enzymes, catalytic converters). Design student investigations to test rate factors.

DIFFERENTIATION:
Struggling learners: Focus on qualitative understanding of factors. Use demonstrations with clear rate differences. Create factor-effect summary charts. Practice explaining observations using collision theory.
Advanced learners: Explore rate laws and reaction orders, investigate enzyme kinetics, analyze activation energy and transition states, research industrial catalyst applications.

VOCABULARY:
Reaction rate, collision theory, activation energy, catalyst, concentration, surface area, temperature, frequency, orientation, enzyme, rate law, inhibitor

CONNECTION TO FUTURE LEARNING:
Reaction rates are fundamental to kinetics and industrial chemistry. Students will apply these concepts to enzyme biology, environmental chemistry, and chemical engineering. Understanding rates is essential for predicting and controlling reactions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reaction Rates' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: FORCES AND MOTION
-- =============================================

-- Topic: Describing Motion
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Describing Motion' AND grade_level_min = 9),
  'Describing Motion (Grade 9) Topic Guide', 'Position, distance, displacement, and speed',
  'DESCRIBING MOTION - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand the concepts of distance and direction. They should be comfortable with basic calculations involving division. Understanding of reference points and coordinate systems is helpful.

LEARNING OBJECTIVES:
- Describe motion using position, distance, and displacement
- Distinguish between distance (scalar) and displacement (vector)
- Calculate speed and average speed from distance and time data
- Create and interpret position-time graphs
- Describe motion relative to different reference frames

KEY CONCEPTS:
1) Position describes location relative to a reference point (origin)
2) Distance is total path length (scalar); displacement is straight-line change in position (vector)
3) Speed = distance/time (scalar); average speed accounts for entire trip
4) Position-time graphs show motion: slope represents speed, flat sections indicate rest
5) Motion is relative—descriptions depend on the chosen reference frame

COMMON MISCONCEPTIONS:
- Confusing distance with displacement (round trips have distance but zero displacement)
- Thinking speed and velocity are identical (velocity includes direction)
- Believing position-time graphs show the path of motion
- Assuming faster means farther (time matters too)
- Thinking there''s an absolute reference frame for motion
- Confusing instantaneous speed with average speed

TEACHING SEQUENCE:
Practice describing motion using precise physics language. Calculate distance vs displacement for various paths. Use stopwatches and measured courses to calculate speed. Create position-time graphs from motion data. Interpret graphs to describe motion patterns. Discuss relative motion with everyday examples (walking on a train). Use motion sensors for real-time graphing.

DIFFERENTIATION:
Struggling learners: Focus on the distance vs displacement distinction with clear examples. Use graph interpretation guides. Practice speed calculations with simple numbers. Use motion demonstrations extensively.
Advanced learners: Explore instantaneous speed from calculus concepts, investigate relative velocity, analyze complex multi-segment motion, research GPS and motion tracking technologies.

VOCABULARY:
Motion, position, distance, displacement, speed, average speed, instantaneous speed, reference point, origin, scalar, vector, path, reference frame

CONNECTION TO FUTURE LEARNING:
Describing motion is foundational for all kinematics. Students will build on this to understand velocity, acceleration, and forces. These concepts are essential for physics and engineering.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Describing Motion' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Velocity and Acceleration
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Velocity and Acceleration' AND grade_level_min = 9),
  'Velocity and Acceleration (Grade 9) Topic Guide', 'Vector quantities and rate of change',
  'VELOCITY AND ACCELERATION - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students must understand speed, distance, and displacement. They should know the difference between scalar and vector quantities. Ability to interpret position-time graphs is essential. Understanding of rates and ratios provides foundation.

LEARNING OBJECTIVES:
- Define velocity as speed with direction (vector quantity)
- Calculate velocity and distinguish it from speed
- Define acceleration as the rate of change of velocity
- Calculate acceleration using a = Δv/Δt
- Interpret and create velocity-time graphs

KEY CONCEPTS:
1) Velocity is a vector: it has both magnitude (speed) and direction
2) Velocity can change by changing speed, direction, or both
3) Acceleration is the rate of change of velocity (Δv/Δt), measured in m/s²
4) Acceleration can be positive (speeding up), negative (slowing down), or involve direction change
5) On velocity-time graphs: slope = acceleration; area = displacement

COMMON MISCONCEPTIONS:
- Thinking velocity and speed are the same (velocity includes direction)
- Believing acceleration means speeding up (it can mean slowing or turning)
- Assuming objects moving at constant speed have no acceleration (circular motion does)
- Confusing velocity-time graphs with position-time graphs
- Thinking acceleration must be in the direction of motion
- Believing deceleration is not acceleration

TEACHING SEQUENCE:
Distinguish velocity from speed with direction-sensitive examples. Calculate velocity including direction. Introduce acceleration as velocity change over time. Practice calculations with varied scenarios (speeding up, slowing, turning). Create and interpret velocity-time graphs. Use motion sensors to generate real acceleration data. Analyze free-fall as constant acceleration.

DIFFERENTIATION:
Struggling learners: Focus on the concept that acceleration is change in velocity. Use simple one-dimensional examples first. Provide calculation templates. Practice graph interpretation with clear examples.
Advanced learners: Analyze acceleration in two dimensions, explore instantaneous acceleration, derive kinematic equations, investigate real-world acceleration data (rockets, vehicles, falls).

VOCABULARY:
Velocity, acceleration, vector, magnitude, direction, rate of change, positive acceleration, negative acceleration, deceleration, velocity-time graph, slope, free fall

CONNECTION TO FUTURE LEARNING:
Velocity and acceleration are essential for understanding forces and Newton''s laws. Students will use these concepts for projectile motion and dynamics. This foundation is critical for physics and engineering.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Velocity and Acceleration' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Newton's Laws
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Newton''s Laws' AND grade_level_min = 9),
  'Newton''s Laws (Grade 9) Topic Guide', 'Inertia, F=ma, action-reaction',
  'NEWTON''S LAWS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students must understand velocity, acceleration, and the concept of force. They should know that forces can change motion. Understanding mass as a measure of matter is essential. Experience with balanced and unbalanced forces provides foundation.

LEARNING OBJECTIVES:
- State and apply Newton''s three laws of motion
- Solve problems using F = ma (Second Law)
- Identify action-reaction pairs in various situations
- Analyze forces and predict resulting motion
- Apply Newton''s laws to real-world situations

KEY CONCEPTS:
1) First Law (Inertia): Objects maintain their state of motion unless acted upon by an unbalanced force
2) Second Law: F = ma; acceleration is directly proportional to net force and inversely proportional to mass
3) Third Law: For every action force, there is an equal and opposite reaction force
4) These laws explain all classical mechanical phenomena
5) Forces are interactions between objects; isolated forces don''t exist

COMMON MISCONCEPTIONS:
- Believing motion requires force (it requires force only to change motion)
- Thinking action-reaction pairs cancel out (they act on different objects)
- Confusing mass and weight in F = ma problems
- Believing heavier objects fall faster (they don''t in a vacuum)
- Thinking "equal and opposite" means no motion occurs
- Assuming the First Law only applies to objects at rest

TEACHING SEQUENCE:
Demonstrate the First Law with inertia activities (tablecloth pull, coin drop). Practice Second Law calculations: find force, mass, or acceleration. Analyze force diagrams to find net force. Identify Third Law pairs in demonstrations (walking, jumping, rockets). Apply laws to complex scenarios with multiple forces. Connect to safety applications (seatbelts, airbags).

DIFFERENTIATION:
Struggling learners: Focus on one law at a time with clear demonstrations. Use F = ma with simple whole numbers. Create force diagram templates. Practice identifying Third Law pairs.
Advanced learners: Analyze multi-force problems, explore friction and inclined planes, investigate orbital mechanics, research Newton''s original work and historical context.

VOCABULARY:
Newton''s laws, inertia, force, mass, acceleration, net force, action, reaction, equilibrium, unbalanced force, free body diagram, friction, normal force

CONNECTION TO FUTURE LEARNING:
Newton''s laws are the foundation of classical mechanics. Students will apply these to momentum, energy, and complex systems. This knowledge is essential for physics, engineering, and everyday understanding of motion.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Newton''s Laws' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Types of Forces
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Types of Forces' AND grade_level_min = 9),
  'Types of Forces (Grade 9) Topic Guide', 'Gravity, friction, normal, tension',
  'TYPES OF FORCES - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand Newton''s laws and the concept of force as an interaction. They should know that forces are vectors with magnitude and direction. Understanding of mass and weight distinction is helpful.

LEARNING OBJECTIVES:
- Identify and describe common forces: gravity, normal, friction, tension, applied, air resistance
- Distinguish between contact forces and field forces
- Calculate gravitational force using F = mg
- Explain how friction depends on surface and normal force
- Analyze multiple forces acting on objects

KEY CONCEPTS:
1) Gravitational force pulls masses toward each other; near Earth''s surface, F = mg where g ≈ 9.8 m/s²
2) Normal force is perpendicular to surfaces in contact; it adjusts to balance other perpendicular forces
3) Friction opposes relative motion between surfaces; static friction prevents motion, kinetic friction opposes sliding
4) Tension is the pulling force transmitted through ropes, strings, or cables
5) Contact forces require touch (friction, normal, tension); field forces act at a distance (gravity, electromagnetic)

COMMON MISCONCEPTIONS:
- Thinking weight is the same as mass (weight is gravitational force; mass is matter quantity)
- Believing normal force is always equal to weight (not on inclines or with other vertical forces)
- Assuming friction always opposes motion (static friction enables motion like walking)
- Thinking tension changes along a rope (in ideal ropes, tension is constant)
- Believing gravity only exists on Earth (all masses attract)
- Confusing air resistance with friction (different mechanisms)

TEACHING SEQUENCE:
Categorize forces as contact or field. Calculate weight using F = mg. Investigate normal force with varied scenarios. Measure friction and explore factors affecting it. Demonstrate tension in ropes and strings. Analyze scenarios with multiple forces. Create force inventories for complex situations.

DIFFERENTIATION:
Struggling learners: Focus on gravity, normal, and friction as the most common forces. Use consistent symbols and directions. Practice identifying forces in simple situations before complex ones.
Advanced learners: Calculate friction using coefficient of friction, analyze forces on inclined planes, explore electromagnetic and nuclear forces, investigate centripetal force.

VOCABULARY:
Gravity, gravitational force, weight, normal force, friction, static friction, kinetic friction, tension, applied force, air resistance, contact force, field force, perpendicular

CONNECTION TO FUTURE LEARNING:
Understanding force types is essential for analyzing any mechanical system. Students will use these concepts for equilibrium, motion problems, and energy. This knowledge applies to engineering, sports science, and everyday problem-solving.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Types of Forces' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Free Body Diagrams
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Free Body Diagrams' AND grade_level_min = 9),
  'Free Body Diagrams (Grade 9) Topic Guide', 'Representing forces graphically',
  'FREE BODY DIAGRAMS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students must understand types of forces and their directions. They should know that forces are vectors. Understanding Newton''s laws and net force is essential. Ability to add vectors is helpful.

LEARNING OBJECTIVES:
- Draw accurate free body diagrams showing all forces on an object
- Use correct symbols and labels for different force types
- Determine net force from free body diagrams
- Predict motion from force analysis
- Apply free body diagrams to solve force problems

KEY CONCEPTS:
1) A free body diagram isolates one object and shows all forces acting ON that object
2) Forces are drawn as arrows starting from the object''s center; length represents magnitude
3) Standard labels: Fg (gravity), FN (normal), Ff (friction), FT (tension), FA (applied)
4) Net force is the vector sum of all forces; it determines acceleration
5) Free body diagrams are problem-solving tools that organize force information

COMMON MISCONCEPTIONS:
- Including forces the object exerts on others (only forces ON the object)
- Drawing velocity or acceleration as forces (they are not forces)
- Forgetting forces that don''t cause motion (balanced forces still exist)
- Making normal force always equal to gravity (not true on inclines or with other vertical forces)
- Drawing forces at wrong angles or positions
- Confusing object motion with force direction

TEACHING SEQUENCE:
Start with simple scenarios: book on table, falling object. Add complexity: pushed objects, inclined planes. Practice identifying ALL forces systematically. Draw diagrams to scale when possible. Calculate net force from diagrams. Predict resulting motion. Use diagrams to solve F = ma problems. Analyze real-world scenarios with multiple forces.

DIFFERENTIATION:
Struggling learners: Use force checklists to ensure all forces are included. Start with stationary objects. Provide diagram templates. Practice with one force type at a time.
Advanced learners: Analyze inclined plane problems, decompose forces into components, use diagrams for two-dimensional problems, explore equilibrium conditions.

VOCABULARY:
Free body diagram, force arrow, magnitude, direction, net force, vector sum, equilibrium, component, Fg, FN, Ff, FT, FA, isolated system

CONNECTION TO FUTURE LEARNING:
Free body diagrams are essential tools for physics problem-solving. Students will use them throughout mechanics for equilibrium, dynamics, and energy problems. This skill is critical for engineering and applied physics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Free Body Diagrams' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Momentum and Collisions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Momentum and Collisions' AND grade_level_min = 9),
  'Momentum and Collisions (Grade 9) Topic Guide', 'Conservation of momentum',
  'MOMENTUM AND COLLISIONS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students must understand velocity as a vector and be able to apply Newton''s laws. They should know that forces change motion and understand mass. Ability to solve algebraic equations is necessary.

LEARNING OBJECTIVES:
- Define momentum as mass times velocity (p = mv)
- Calculate momentum for objects and systems
- Apply the law of conservation of momentum to collision problems
- Distinguish between elastic and inelastic collisions
- Explain impulse and its relationship to momentum change

KEY CONCEPTS:
1) Momentum is the product of mass and velocity: p = mv (units: kg⋅m/s)
2) Momentum is a vector quantity—direction matters
3) In a closed system, total momentum before a collision equals total momentum after (conservation)
4) Impulse (J = FΔt) equals the change in momentum (J = Δp)
5) Elastic collisions conserve kinetic energy; inelastic collisions do not (some becomes heat, sound, etc.)

COMMON MISCONCEPTIONS:
- Confusing momentum with velocity or kinetic energy (they are different quantities)
- Believing momentum is always conserved (only in closed systems with no external forces)
- Thinking bigger objects always have more momentum (velocity matters too)
- Assuming collisions always involve contact (field forces can cause impulse too)
- Believing all collisions are perfectly elastic or perfectly inelastic (most are in between)
- Forgetting that momentum is a vector (direction matters for adding momenta)

TEACHING SEQUENCE:
Define momentum and practice calculations. Demonstrate momentum in collisions with carts or balls. Apply conservation to two-object collisions. Analyze before-and-after scenarios. Distinguish elastic and inelastic through energy analysis. Explore impulse with force-time relationships. Connect to real-world applications: car safety, sports, rocket propulsion.

DIFFERENTIATION:
Struggling learners: Focus on one-dimensional collisions with objects moving the same direction. Use momentum tables for before/after. Practice the conservation equation with simple numbers.
Advanced learners: Analyze two-dimensional collisions, explore the relationship between impulse and force-time graphs, investigate real collision data, research applications in particle physics.

VOCABULARY:
Momentum, mass, velocity, conservation of momentum, collision, elastic collision, inelastic collision, impulse, force, time, system, closed system, vector

CONNECTION TO FUTURE LEARNING:
Momentum is fundamental to mechanics and extends to relativistic and quantum physics. Students will apply conservation laws to complex systems and collisions. This knowledge is essential for physics and engineering.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Momentum and Collisions' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: ENERGY
-- =============================================

-- Topic: Work and Power
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Work and Power' AND grade_level_min = 9),
  'Work and Power (Grade 9) Topic Guide', 'Calculating work and power',
  'WORK AND POWER - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand force and its measurement. They should know that energy is transferred when forces act over distances. Understanding of distance and direction is essential. Basic trigonometry is helpful for angled forces.

LEARNING OBJECTIVES:
- Define work as force times displacement in the direction of force
- Calculate work using W = Fd (and W = Fd cos θ for angled forces)
- Explain when work is positive, negative, or zero
- Define power as the rate of doing work
- Calculate power using P = W/t and P = Fv

KEY CONCEPTS:
1) Work is energy transfer by a force acting through a displacement: W = Fd (in Joules)
2) Work requires force and displacement in the same (or opposite) direction
3) Positive work increases object''s energy; negative work decreases it; perpendicular force does zero work
4) Power is the rate of doing work: P = W/t (in Watts)
5) Power can also be calculated as P = Fv (force times velocity)

COMMON MISCONCEPTIONS:
- Equating everyday "work" with physics work (holding heavy objects involves force but no work)
- Believing all forces do work (force perpendicular to motion does no work)
- Confusing work and power (work is total energy; power is rate)
- Thinking more power means more work (it means faster work)
- Believing negative work is impossible or "bad"
- Assuming force magnitude alone determines work (displacement matters too)

TEACHING SEQUENCE:
Define work with demonstrations: pushing boxes, lifting weights. Calculate work for simple situations. Explore zero work scenarios (carrying a backpack horizontally). Introduce power as work rate. Compare power of different activities. Calculate power from work and time. Explore P = Fv relationships. Connect to real-world applications: engines, human power output.

DIFFERENTIATION:
Struggling learners: Focus on W = Fd for horizontal motion first. Use clear examples where force and motion are aligned. Provide calculation templates. Compare work and power with analogies.
Advanced learners: Explore work with angled forces using W = Fd cos θ, analyze work-energy theorem, investigate power curves for engines, research human power output for various activities.

VOCABULARY:
Work, force, displacement, Joule, energy transfer, positive work, negative work, power, Watt, rate, efficiency, horsepower

CONNECTION TO FUTURE LEARNING:
Work and power connect force to energy concepts. Students will apply these to energy conservation and thermodynamics. Understanding work is essential for physics, engineering, and practical applications.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Work and Power' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Kinetic Energy (Grade 9)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Kinetic Energy' AND grade_level_min = 9),
  'Kinetic Energy (Grade 9) Topic Guide', 'Energy of motion and its calculations',
  'KINETIC ENERGY - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand that energy exists in different forms. They should know velocity and mass concepts. Understanding work as energy transfer provides foundation. Ability to work with squared quantities is necessary.

LEARNING OBJECTIVES:
- Define kinetic energy as the energy of motion
- Calculate kinetic energy using KE = ½mv²
- Analyze the relationship between work and kinetic energy (work-energy theorem)
- Explain why velocity has a greater effect than mass on kinetic energy
- Apply kinetic energy concepts to real-world situations

KEY CONCEPTS:
1) Kinetic energy is the energy an object has due to its motion: KE = ½mv²
2) The unit of kinetic energy is the Joule (J), same as work
3) Kinetic energy depends on mass linearly but on velocity squared—doubling velocity quadruples KE
4) The work-energy theorem states: net work = change in kinetic energy
5) Kinetic energy is always positive or zero (never negative)

COMMON MISCONCEPTIONS:
- Thinking velocity and mass affect KE equally (velocity has squared effect)
- Confusing kinetic energy with momentum (different formulas, different physics)
- Believing negative kinetic energy is possible (it''s always ≥ 0)
- Assuming kinetic energy has direction (it''s a scalar)
- Thinking KE is conserved in all collisions (only in elastic collisions)
- Confusing kinetic energy with force or acceleration

TEACHING SEQUENCE:
Define kinetic energy conceptually then mathematically. Calculate KE for various objects and speeds. Investigate the effect of doubling mass vs doubling velocity. Connect work done to kinetic energy change. Analyze collision energy (where does KE go in inelastic collisions?). Apply to safety scenarios: why speed matters more than mass for crash severity.

DIFFERENTIATION:
Struggling learners: Focus on the formula and basic calculations. Use comparison tables for different masses and velocities. Emphasize the squared relationship with concrete examples.
Advanced learners: Derive KE from work considerations, explore relativistic kinetic energy, analyze KE in rotational motion, investigate KE at the molecular level (temperature).

VOCABULARY:
Kinetic energy, mass, velocity, speed, Joule, work-energy theorem, scalar, squared, energy of motion

CONNECTION TO FUTURE LEARNING:
Kinetic energy is central to mechanics and energy conservation. Students will apply KE to collision analysis, thermal physics, and quantum mechanics. This concept is fundamental to all areas of physics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Kinetic Energy' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Potential Energy (Grade 9)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Potential Energy' AND grade_level_min = 9),
  'Potential Energy (Grade 9) Topic Guide', 'Gravitational and elastic potential energy',
  'POTENTIAL ENERGY - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand kinetic energy and the concept of stored energy. They should know gravitational force and F = mg. Understanding that energy can be stored and released is essential.

LEARNING OBJECTIVES:
- Define potential energy as stored energy due to position or configuration
- Calculate gravitational potential energy using PE = mgh
- Explain elastic potential energy in springs and stretched materials
- Relate potential energy to the work required to create it
- Apply potential energy concepts to real-world situations

KEY CONCEPTS:
1) Potential energy is stored energy that can be released to do work
2) Gravitational PE = mgh (mass × gravity × height above reference point)
3) Elastic PE = ½kx² (depends on spring constant k and displacement x from equilibrium)
4) PE is relative—it depends on the chosen reference point (usually ground level)
5) Work done against conservative forces (gravity, springs) becomes stored PE

COMMON MISCONCEPTIONS:
- Thinking potential energy is not "real" energy (it is, just stored)
- Believing height must be measured from Earth''s center (reference point is chosen)
- Assuming all forms of PE are the same (gravitational and elastic have different dependencies)
- Thinking potential energy has direction (it''s a scalar)
- Believing an object at ground level has no PE (if reference is below ground, it does)
- Confusing potential energy with potential (voltage in electricity)

TEACHING SEQUENCE:
Explore stored energy qualitatively: raised objects, compressed springs, stretched rubber bands. Calculate gravitational PE at various heights. Investigate elastic PE with springs. Discuss reference point choice and its effects on calculations. Connect PE to work done "storing" the energy. Apply to roller coasters, pendulums, and springs.

DIFFERENTIATION:
Struggling learners: Focus on gravitational PE with the formula PE = mgh. Use consistent reference points. Provide calculation templates. Use visual height comparisons.
Advanced learners: Derive PE formulas from work, explore potential energy curves, investigate chemical and nuclear potential energy, analyze conservative vs non-conservative forces.

VOCABULARY:
Potential energy, gravitational potential energy, elastic potential energy, height, reference point, spring constant, stored energy, work, conservative force

CONNECTION TO FUTURE LEARNING:
Potential energy is essential for understanding energy conservation. Students will apply PE to mechanical systems, thermodynamics, and chemistry. This concept is fundamental to physics and engineering.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Potential Energy' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Conservation of Energy (Grade 9)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Conservation of Energy' AND grade_level_min = 9),
  'Conservation of Energy (Grade 9) Topic Guide', 'Energy transformations and conservation',
  'CONSERVATION OF ENERGY - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students must understand kinetic and potential energy and their calculations. They should know that energy comes in many forms. Understanding work as energy transfer is essential.

LEARNING OBJECTIVES:
- State the law of conservation of energy
- Apply conservation to analyze mechanical systems (KE + PE = constant in ideal systems)
- Identify energy transformations in various situations
- Account for "lost" energy as transformation to thermal energy through friction
- Solve problems using energy conservation

KEY CONCEPTS:
1) Energy cannot be created or destroyed, only transformed from one form to another
2) In ideal mechanical systems: KE₁ + PE₁ = KE₂ + PE₂
3) In real systems, some mechanical energy transforms to thermal energy through friction
4) Total energy is always conserved; "lost" energy becomes heat, sound, or other forms
5) Conservation of energy is one of the fundamental laws of physics

COMMON MISCONCEPTIONS:
- Believing energy can be "used up" (it transforms, never disappears)
- Thinking conservation means energy stays the same form (it can change forms)
- Assuming perpetual motion is possible (energy transforms to unusable forms)
- Believing friction destroys energy (it converts mechanical to thermal)
- Confusing energy conservation with environmental conservation
- Thinking all forms of energy are equally useful

TEACHING SEQUENCE:
Analyze pendulums and roller coasters for KE-PE exchanges. Calculate energy at different points using conservation. Investigate "missing" energy in inelastic processes. Track energy transformations through multi-step processes. Analyze efficiency and energy quality. Apply to real systems: bouncing balls, pole vault, hydroelectric power.

DIFFERENTIATION:
Struggling learners: Focus on ideal mechanical systems first. Use energy bar charts. Practice KE + PE calculations at two points. Identify where energy goes when it seems to "disappear."
Advanced learners: Analyze non-conservative systems quantitatively, explore entropy and energy quality, investigate mass-energy equivalence, research perpetual motion history.

VOCABULARY:
Conservation of energy, transformation, kinetic energy, potential energy, mechanical energy, thermal energy, friction, efficiency, dissipation, perpetual motion

CONNECTION TO FUTURE LEARNING:
Energy conservation is fundamental to all of physics. Students will apply this principle to thermodynamics, chemistry, and modern physics. Understanding conservation is essential for analyzing any physical system.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Conservation of Energy' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Simple Machines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Simple Machines' AND grade_level_min = 9),
  'Simple Machines (Grade 9) Topic Guide', 'Mechanical advantage and efficiency',
  'SIMPLE MACHINES - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand work, force, and distance. They should know the formula W = Fd. Understanding that energy is conserved provides foundation. Experience with levers and pulleys from earlier grades is helpful.

LEARNING OBJECTIVES:
- Identify the six simple machines: lever, pulley, wheel and axle, inclined plane, wedge, screw
- Calculate mechanical advantage (MA = output force / input force)
- Explain how machines multiply force at the expense of distance
- Calculate efficiency as (useful work output / work input) × 100%
- Analyze compound machines as combinations of simple machines

KEY CONCEPTS:
1) Simple machines make work easier by changing the magnitude or direction of force
2) Mechanical advantage (MA) is the factor by which a machine multiplies force
3) Machines cannot multiply energy—they trade force for distance (work in = work out in ideal case)
4) Ideal MA (IMA) assumes no friction; Actual MA (AMA) accounts for real-world losses
5) Efficiency = (AMA/IMA) × 100% or (Work out/Work in) × 100%

COMMON MISCONCEPTIONS:
- Believing machines reduce work required (they reduce force but increase distance)
- Thinking machines can create energy (they only transform it)
- Assuming higher MA means better machine (it depends on the task)
- Believing efficiency can exceed 100% (impossible due to energy conservation)
- Confusing mechanical advantage with efficiency
- Thinking simple machines are outdated (they''re in all complex machines)

TEACHING SEQUENCE:
Investigate each simple machine type with hands-on activities. Calculate MA for levers, pulleys, and inclined planes. Measure actual vs ideal MA and calculate efficiency. Explore force-distance tradeoffs experimentally. Identify simple machines in everyday objects and compound machines. Design and test simple machines for specific tasks.

DIFFERENTIATION:
Struggling learners: Focus on lever and inclined plane MA calculations. Use visual force-distance diagrams. Provide formula sheets and calculation templates. Identify machines in familiar contexts.
Advanced learners: Analyze multi-pulley systems, explore gear ratios, investigate hydraulic systems, design and optimize compound machines, research ancient machines.

VOCABULARY:
Simple machine, lever, pulley, wheel and axle, inclined plane, wedge, screw, mechanical advantage, ideal MA, actual MA, efficiency, fulcrum, input force, output force

CONNECTION TO FUTURE LEARNING:
Simple machines introduce engineering principles applied in all machines. Students will use these concepts in mechanical engineering and design. Understanding trade-offs between force and distance is fundamental to problem-solving.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simple Machines' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Thermal Energy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Thermal Energy' AND grade_level_min = 9),
  'Thermal Energy (Grade 9) Topic Guide', 'Heat transfer and temperature',
  'THERMAL ENERGY - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand the particle model of matter and that particles are always in motion. They should know that temperature is related to particle motion. Understanding energy conservation provides context.

LEARNING OBJECTIVES:
- Define thermal energy as the total kinetic energy of particles in a substance
- Distinguish between temperature (average KE) and thermal energy (total KE)
- Describe the three methods of heat transfer: conduction, convection, radiation
- Explain specific heat capacity and its significance
- Apply thermal energy concepts to everyday situations

KEY CONCEPTS:
1) Thermal energy is the total kinetic energy of all particles in a substance
2) Temperature measures average kinetic energy; thermal energy depends on mass and temperature
3) Heat is the transfer of thermal energy from hot to cold; three methods: conduction, convection, radiation
4) Specific heat capacity (c) is the energy needed to raise 1 kg by 1°C; Q = mcΔT
5) Thermal equilibrium is reached when objects at different temperatures reach the same final temperature

COMMON MISCONCEPTIONS:
- Confusing temperature with thermal energy (a spark vs. an iceberg)
- Believing cold is transferred (only heat transfers; cold is absence of heat)
- Thinking metals feel cold because they ARE colder (they conduct heat away quickly)
- Assuming all substances heat up at the same rate (specific heat varies)
- Believing heat rises (hot air rises due to buoyancy; heat can go any direction)
- Thinking insulation creates heat (it only slows transfer)

TEACHING SEQUENCE:
Explore temperature vs thermal energy with examples. Demonstrate all three heat transfer methods. Investigate factors affecting heating and cooling rates. Calculate heat transfer using Q = mcΔT. Explore specific heat of water and its importance. Analyze everyday thermal energy applications: cooking, insulation, climate.

DIFFERENTIATION:
Struggling learners: Focus on the three transfer methods with clear examples. Use temperature vs thermal energy comparisons with concrete examples. Practice Q = mcΔT with simple numbers.
Advanced learners: Explore latent heat and phase changes, investigate thermal equilibrium calculations, analyze heat engines and thermodynamics, research thermal properties of materials.

VOCABULARY:
Thermal energy, temperature, heat, conduction, convection, radiation, specific heat capacity, thermal equilibrium, kinetic energy, particles, insulator, conductor

CONNECTION TO FUTURE LEARNING:
Thermal energy connects to thermodynamics and chemistry. Students will apply these concepts to understanding weather, climate, and energy systems. This knowledge is fundamental to physics, chemistry, and engineering.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Thermal Energy' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;
