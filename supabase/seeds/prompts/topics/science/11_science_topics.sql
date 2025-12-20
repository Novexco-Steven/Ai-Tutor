-- =============================================
-- GRADE 11 SCIENCE TOPIC PROMPTS
-- Subject: Science (Chemistry)
-- Grade: 11 (High School)
-- Units: Atomic Structure and Periodicity, Chemical Bonding, Chemical Reactions and Stoichiometry, Solutions and Thermochemistry
-- =============================================

-- =============================================
-- UNIT: ATOMIC STRUCTURE AND PERIODICITY
-- =============================================

-- Topic: Atomic Structure (Grade 11)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Atomic Structure' AND grade_level_min = 11),
  'Atomic Structure (Grade 11) Topic Guide', 'Subatomic particles, isotopes, ions',
  'ATOMIC STRUCTURE - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students should understand basic atomic structure from physical science including protons, neutrons, and electrons. They should know how to read the periodic table for atomic number and mass. Understanding of charge and the difference between elements is essential.

LEARNING OBJECTIVES:
- Describe the properties and locations of subatomic particles
- Calculate numbers of protons, neutrons, and electrons in atoms, ions, and isotopes
- Explain isotopic notation and its meaning
- Calculate average atomic mass from isotope data
- Describe the historical development of atomic models leading to the quantum model

KEY CONCEPTS:
1) Atoms contain protons (+1 charge, ~1 amu), neutrons (0 charge, ~1 amu), and electrons (-1 charge, negligible mass)
2) Atomic number = protons = electrons in neutral atoms; mass number = protons + neutrons
3) Isotopes have the same atomic number but different mass numbers (different neutrons)
4) Ions form when atoms gain or lose electrons: cations are positive, anions are negative
5) Average atomic mass is the weighted average based on isotope abundances

COMMON MISCONCEPTIONS:
- Believing electrons have significant mass compared to protons/neutrons (they''re ~1/1836 the mass)
- Thinking isotopes are different elements (they''re the same element, different mass)
- Confusing atomic number with mass number
- Assuming all atoms of an element have the same mass (isotopes vary)
- Believing ions have different numbers of protons (they have different electrons)
- Thinking the atomic mass on periodic table is for the most common isotope (it''s a weighted average)

TEACHING SEQUENCE:
Review the structure of atoms with protons, neutrons, and electrons. Practice calculating particle numbers from atomic notation. Introduce isotopes with examples (carbon-12, carbon-14). Calculate average atomic mass from isotope data. Trace the development of atomic models: Dalton → Thomson → Rutherford → Bohr → Quantum. Connect historical experiments to model changes.

DIFFERENTIATION:
Struggling learners: Focus on the basic particle calculations before isotopes and ions. Use consistent notation and calculation methods. Create particle counting charts. Practice with lighter elements first.
Advanced learners: Explore nuclear notation for radioactive decay, investigate mass spectrometry and isotope identification, research radiometric dating, analyze quantum numbers and their meanings.

VOCABULARY:
Atom, proton, neutron, electron, nucleus, atomic number, mass number, isotope, isotopic notation, ion, cation, anion, average atomic mass, atomic mass unit (amu), weighted average

CONNECTION TO FUTURE LEARNING:
Atomic structure is fundamental to all chemistry. Students will apply this to electron configurations, bonding, and nuclear chemistry. This foundation is essential for understanding chemical behavior and reactions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Atomic Structure' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Electron Configuration
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Electron Configuration' AND grade_level_min = 11),
  'Electron Configuration (Grade 11) Topic Guide', 'Aufbau principle, orbitals, notation',
  'ELECTRON CONFIGURATION - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students must understand atomic structure including electron distribution in energy levels. They should know how to determine the number of electrons in atoms and ions. Basic understanding of energy and shells from physical science is essential.

LEARNING OBJECTIVES:
- Apply the Aufbau principle, Pauli exclusion principle, and Hund''s rule to write electron configurations
- Identify and describe the shapes of s, p, d, and f orbitals
- Write full and noble gas shorthand electron configurations
- Determine electron configurations for ions
- Relate electron configuration to periodic table position and chemical properties

KEY CONCEPTS:
1) Electrons fill orbitals in order of increasing energy (Aufbau principle): 1s, 2s, 2p, 3s, 3p, 4s, 3d, etc.
2) Each orbital holds maximum 2 electrons with opposite spins (Pauli exclusion principle)
3) Electrons fill degenerate orbitals singly before pairing (Hund''s rule)
4) Orbital shapes: s (spherical), p (dumbbell), d (cloverleaf), f (complex)
5) Valence electrons in the outermost s and p orbitals determine chemical behavior

COMMON MISCONCEPTIONS:
- Thinking orbitals are paths electrons follow (they''re probability distributions)
- Assuming all orbitals fill completely before the next starts (3d fills after 4s)
- Believing electrons jump directly to outer shells (they fill in energy order)
- Confusing orbital with energy level (an energy level contains multiple orbitals)
- Thinking noble gas notation changes electron count (it''s just shorthand)
- Forgetting to remove 4s electrons before 3d when writing ion configurations for transition metals

TEACHING SEQUENCE:
Introduce the quantum model and probability clouds. Learn orbital shapes and energy ordering. Apply the three rules to build configurations systematically. Practice with elements across the periodic table. Write noble gas shorthand configurations. Determine configurations for common ions. Connect configurations to periodic table blocks.

DIFFERENTIATION:
Struggling learners: Focus on main group elements before transition metals. Use orbital filling diagrams as visual aids. Practice the energy order sequence. Provide configuration templates.
Advanced learners: Explore quantum numbers in detail, investigate exceptions (Cr, Cu), research paramagnetic vs diamagnetic properties, analyze electron shielding and penetration.

VOCABULARY:
Electron configuration, orbital, Aufbau principle, Pauli exclusion principle, Hund''s rule, energy level, sublevel, s orbital, p orbital, d orbital, f orbital, valence electron, noble gas notation, ground state, excited state

CONNECTION TO FUTURE LEARNING:
Electron configuration explains chemical bonding and reactivity. Students will use this for Lewis structures, molecular geometry, and periodic trends. This is fundamental to all chemical behavior.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Electron Configuration' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Periodic Table Organization
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Periodic Table Organization' AND grade_level_min = 11),
  'Periodic Table Organization (Grade 11) Topic Guide', 'Groups, periods, and blocks',
  'PERIODIC TABLE ORGANIZATION - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students should be able to write electron configurations and identify valence electrons. They should know basic periodic table structure from earlier chemistry. Understanding that similar properties repeat periodically is essential.

LEARNING OBJECTIVES:
- Explain why the periodic table is organized by atomic number
- Identify and describe the s, p, d, and f blocks of the periodic table
- Explain how electron configuration determines an element''s position
- Predict properties based on position in the periodic table
- Distinguish main group elements from transition metals and inner transition metals

KEY CONCEPTS:
1) Elements are arranged by increasing atomic number; rows are periods, columns are groups
2) The periodic table is divided into blocks based on which sublevel is being filled
3) s-block: Groups 1-2 + He; p-block: Groups 13-18; d-block: Groups 3-12; f-block: lanthanides and actinides
4) Elements in the same group have similar valence configurations and chemical properties
5) Period number indicates the highest occupied energy level

COMMON MISCONCEPTIONS:
- Thinking the periodic table is organized by atomic mass (it''s by atomic number)
- Confusing blocks with groups (blocks are larger regions based on orbitals)
- Believing transition metals have predictable charges like main group elements
- Assuming all elements in a group are identical in reactivity (trends exist within groups)
- Thinking the f-block is separate from the table (it fits between groups 2 and 3)
- Forgetting that hydrogen is unique and doesn''t fit neatly in any group

TEACHING SEQUENCE:
Map electron configurations onto the periodic table. Identify which sublevel fills in each block. Compare properties within groups and across periods. Investigate transition metals and their variable oxidation states. Explore the lanthanides and actinides. Connect position to predicted properties.

DIFFERENTIATION:
Struggling learners: Focus on main group blocks (s and p) first. Use color-coded periodic tables. Practice predicting group from configuration. Create block summary charts.
Advanced learners: Explore nuclear stability trends, investigate relativistic effects in heavy elements, research synthetic elements, analyze periodic table extensions and alternatives.

VOCABULARY:
Periodic table, period, group, family, block, s-block, p-block, d-block, f-block, main group element, transition metal, lanthanide, actinide, inner transition metal, alkali metal, alkaline earth metal, halogen, noble gas

CONNECTION TO FUTURE LEARNING:
Understanding periodic table organization helps predict chemical behavior. Students will use this for bonding, reactions, and property predictions. The periodic table is the chemist''s most essential tool.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Periodic Table Organization' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Periodic Trends
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Periodic Trends' AND grade_level_min = 11),
  'Periodic Trends (Grade 11) Topic Guide', 'Atomic radius, ionization energy, electronegativity',
  'PERIODIC TRENDS - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students must understand electron configurations and the organization of the periodic table. They should know about nuclear charge and its effect on electrons. Understanding of energy and electron attraction is essential.

LEARNING OBJECTIVES:
- Describe and explain periodic trends in atomic radius
- Describe and explain periodic trends in ionization energy
- Describe and explain periodic trends in electronegativity
- Use trends to predict and compare element properties
- Explain trends in terms of nuclear charge, electron shielding, and energy level

KEY CONCEPTS:
1) Atomic radius decreases across a period (more protons, same shielding) and increases down a group (more shells)
2) Ionization energy increases across a period (harder to remove electrons) and decreases down a group (farther from nucleus)
3) Electronegativity increases across a period and decreases down a group (same pattern as ionization energy)
4) Effective nuclear charge (Z_eff) increases across periods as shielding remains constant
5) These trends explain bonding behavior, reactivity, and many physical properties

COMMON MISCONCEPTIONS:
- Thinking atomic radius increases across periods (more protons pull electrons closer)
- Believing more electrons always means larger atoms (effective nuclear charge matters)
- Confusing ionization energy with electronegativity (related but distinct)
- Assuming trends have no exceptions (some exist, especially in the d-block)
- Thinking electron shielding increases across a period (it remains roughly constant)
- Believing electronegativity applies to noble gases (they don''t typically bond)

TEACHING SEQUENCE:
Graph each trend across periods and down groups. Explain trends using effective nuclear charge and shielding. Compare specific elements using trend predictions. Analyze exceptions and their causes. Connect trends to chemical reactivity. Apply trends to predict ion sizes and compound properties.

DIFFERENTIATION:
Struggling learners: Focus on one trend at a time. Use visual periodic tables with trend arrows. Practice comparing two elements at a time. Create trend summary rules.
Advanced learners: Calculate effective nuclear charge, explore electron affinity trends, investigate trends in d-block and f-block, analyze relativistic effects on heavy element trends.

VOCABULARY:
Periodic trend, atomic radius, covalent radius, ionization energy, first ionization energy, electronegativity, electron affinity, effective nuclear charge, shielding, screening, nuclear charge, Coulomb''s law

CONNECTION TO FUTURE LEARNING:
Periodic trends predict bonding and reactivity. Students will apply this to understanding ionic vs covalent character, acid-base behavior, and reactivity series. These trends are fundamental to predicting chemistry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Periodic Trends' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: CHEMICAL BONDING
-- =============================================

-- Topic: Ionic Bonding
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Ionic Bonding' AND grade_level_min = 11),
  'Ionic Bonding (Grade 11) Topic Guide', 'Formation of ionic compounds',
  'IONIC BONDING - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students should understand electron configurations and periodic trends, especially electronegativity. They should know about ions (cations and anions) and their formation. Understanding of electrostatic attraction is essential.

LEARNING OBJECTIVES:
- Explain how ionic bonds form through electron transfer between metals and nonmetals
- Predict ionic compound formulas based on ion charges
- Describe the crystalline structure of ionic compounds
- Explain properties of ionic compounds based on bonding
- Calculate lattice energy and understand its significance

KEY CONCEPTS:
1) Ionic bonds form when electrons transfer from metals to nonmetals, creating oppositely charged ions
2) Electrostatic attraction holds the ions together in a crystal lattice
3) Ionic compound formulas reflect the ratio needed for electrical neutrality
4) Properties of ionic compounds: high melting points, brittleness, conductivity when molten or dissolved
5) Lattice energy is the energy released when ions form a crystal; higher lattice energy means more stable compound

COMMON MISCONCEPTIONS:
- Thinking ionic bonds involve sharing electrons (that''s covalent bonding)
- Believing ions exist as pairs in ionic compounds (they form extended lattices)
- Assuming all salts are NaCl (many ionic compounds exist)
- Thinking ionic compounds conduct electricity as solids (only when molten or dissolved)
- Believing larger ions always form stronger ionic bonds (charge matters more than size)
- Confusing formula unit with molecule (ionic compounds don''t form discrete molecules)

TEACHING SEQUENCE:
Model electron transfer from metals to nonmetals. Determine ion charges from electron configurations. Practice writing ionic formulas for electrical neutrality. Model crystal lattice structures. Investigate properties experimentally (melting point, conductivity). Calculate and compare lattice energies.

DIFFERENTIATION:
Struggling learners: Focus on predicting charges from the periodic table. Use charge-crossing method for formulas. Practice with binary ionic compounds first. Create ion charge reference sheets.
Advanced learners: Calculate lattice energies using Born-Haber cycles, explore Born-Landé equation, investigate transition metal oxidation states, analyze crystal packing and coordination numbers.

VOCABULARY:
Ionic bond, ionic compound, electrostatic attraction, cation, anion, electron transfer, crystal lattice, lattice energy, formula unit, electrical neutrality, conductivity, melting point

CONNECTION TO FUTURE LEARNING:
Ionic bonding is essential for understanding salts, solubility, and electrochemistry. Students will apply this to precipitation reactions, electrolysis, and acid-base chemistry. This foundation supports inorganic chemistry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ionic Bonding' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Covalent Bonding
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Covalent Bonding' AND grade_level_min = 11),
  'Covalent Bonding (Grade 11) Topic Guide', 'Sharing electrons in molecules',
  'COVALENT BONDING - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students should understand electron configurations and the octet rule. They should know the difference between metals and nonmetals. Understanding of electronegativity and electron attraction is essential.

LEARNING OBJECTIVES:
- Explain how covalent bonds form through electron sharing between nonmetals
- Distinguish between single, double, and triple bonds
- Identify polar and nonpolar covalent bonds based on electronegativity differences
- Describe properties of molecular compounds compared to ionic compounds
- Explain bond energy and bond length relationships

KEY CONCEPTS:
1) Covalent bonds form when nonmetal atoms share electrons to achieve stable configurations
2) Single bonds share one pair; double bonds share two pairs; triple bonds share three pairs
3) Polar covalent bonds have unequal electron sharing due to electronegativity differences
4) Molecular compounds have lower melting points and don''t conduct electricity
5) Bond order relates to bond strength and length: triple > double > single in strength; triple < double < single in length

COMMON MISCONCEPTIONS:
- Thinking covalent bonds involve complete electron transfer (that''s ionic)
- Believing all covalent bonds are nonpolar (many are polar)
- Assuming polar bonds means polar molecules (molecular geometry matters)
- Thinking shared electrons belong to one atom (they''re shared)
- Believing more bonds means weaker bonds (more bonds are stronger)
- Confusing intramolecular bonds with intermolecular forces

TEACHING SEQUENCE:
Model electron sharing with diagrams and physical models. Determine bond types based on electronegativity differences. Practice identifying single, double, and triple bonds. Compare properties of molecular and ionic compounds. Analyze bond energy and bond length data. Connect polarity to electronegativity differences.

DIFFERENTIATION:
Struggling learners: Focus on single bonds between simple molecules first. Use electronegativity difference guidelines (0-0.4 nonpolar, 0.4-1.7 polar covalent). Practice drawing shared electron pairs.
Advanced learners: Explore molecular orbital theory, investigate bond order and magnetic properties, analyze hybrid orbital formation, research coordinate covalent bonds.

VOCABULARY:
Covalent bond, electron sharing, single bond, double bond, triple bond, polar covalent, nonpolar covalent, electronegativity difference, bond energy, bond length, bond order, molecular compound

CONNECTION TO FUTURE LEARNING:
Covalent bonding is essential for understanding molecular structure and organic chemistry. Students will apply this to Lewis structures, VSEPR theory, and intermolecular forces. This foundation supports all molecular chemistry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Covalent Bonding' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Lewis Structures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Lewis Structures' AND grade_level_min = 11),
  'Lewis Structures (Grade 11) Topic Guide', 'Drawing electron dot diagrams',
  'LEWIS STRUCTURES - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students should understand covalent bonding and the octet rule. They should know how to count valence electrons from electron configurations. Understanding of single, double, and triple bonds is essential.

LEARNING OBJECTIVES:
- Count total valence electrons for molecules and ions
- Apply the systematic method for drawing Lewis structures
- Recognize when atoms may have expanded octets or incomplete octets
- Draw resonance structures when applicable
- Assign formal charges to atoms in Lewis structures

KEY CONCEPTS:
1) Lewis structures show valence electrons as dots or lines representing bonding and lone pairs
2) Systematic approach: count valence electrons, draw skeleton, distribute electrons, form multiple bonds if needed
3) Octet rule guides most structures, but some elements can have expanded octets (d orbitals) or incomplete octets
4) Resonance structures show electron delocalization; the actual structure is a hybrid
5) Formal charge = valence electrons - (lone pair electrons + ½ bonding electrons)

COMMON MISCONCEPTIONS:
- Thinking Lewis structures show all electrons (only valence electrons)
- Believing resonance structures interconvert (the molecule is a hybrid)
- Assuming all atoms must have octets (H has 2, some elements expand beyond 8)
- Forgetting to account for ionic charges in the electron count
- Thinking the skeleton structure is always obvious (consider symmetry and electronegativity)
- Believing formal charge is actual charge (it''s a bookkeeping tool)

TEACHING SEQUENCE:
Practice counting valence electrons systematically. Follow the step-by-step drawing procedure. Handle exceptions: expanded octets, incomplete octets. Introduce resonance with examples (ozone, nitrate). Calculate and minimize formal charges. Apply to progressively complex molecules and ions.

DIFFERENTIATION:
Struggling learners: Focus on simple molecules following the octet rule. Provide step-by-step templates. Practice counting valence electrons. Use simple formulas before complex ones.
Advanced learners: Explore molecules with unusual electron counts, investigate hypervalent compounds, analyze resonance and delocalization quantitatively, research molecular orbital descriptions.

VOCABULARY:
Lewis structure, electron dot diagram, valence electron, octet rule, lone pair, bonding pair, resonance, resonance hybrid, formal charge, expanded octet, skeletal structure

CONNECTION TO FUTURE LEARNING:
Lewis structures are prerequisites for molecular geometry (VSEPR). Students will use these for predicting polarity and intermolecular forces. This skill is essential for understanding molecular structure throughout chemistry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Lewis Structures' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: VSEPR Theory
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'VSEPR Theory' AND grade_level_min = 11),
  'VSEPR Theory (Grade 11) Topic Guide', 'Predicting molecular geometry',
  'VSEPR THEORY - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students must be able to draw accurate Lewis structures. They should understand lone pairs and bonding pairs. Knowledge of three-dimensional geometry and angles is helpful.

LEARNING OBJECTIVES:
- Apply VSEPR theory to predict electron geometry and molecular geometry
- Distinguish between electron geometry and molecular geometry
- Predict bond angles for common molecular geometries
- Determine molecular polarity from geometry and bond polarity
- Name and describe common molecular geometries

KEY CONCEPTS:
1) VSEPR: Valence Shell Electron Pair Repulsion; electron groups arrange to minimize repulsion
2) Electron geometry considers all electron groups; molecular geometry considers only atoms
3) Common geometries: linear, trigonal planar, tetrahedral, trigonal bipyramidal, octahedral
4) Lone pairs affect molecular geometry without being counted as positions
5) Molecular polarity depends on bond polarity AND molecular geometry (symmetry cancels dipoles)

COMMON MISCONCEPTIONS:
- Confusing electron geometry with molecular geometry (lone pairs make them different)
- Thinking all 4-group molecules are tetrahedral (only if all groups are bonding)
- Assuming bond angles are always ideal (lone pairs compress angles)
- Believing polar bonds always mean polar molecules (symmetric arrangements can cancel)
- Thinking molecular geometry is flat when drawn on paper (molecules are 3D)
- Forgetting double bonds count as one electron group

TEACHING SEQUENCE:
Draw Lewis structures and count electron groups. Determine electron geometry from group count. Identify molecular geometry based on bonding groups only. Build or visualize 3D models. Predict bond angles considering lone pair repulsion. Determine molecular polarity from geometry and bond polarity.

DIFFERENTIATION:
Struggling learners: Focus on the most common geometries (linear, bent, trigonal planar, tetrahedral). Use physical models or 3D visualization software. Create geometry reference cards. Practice step-by-step.
Advanced learners: Explore geometries with 5+ electron groups, investigate deviations from ideal angles, analyze molecular orbital shapes vs VSEPR predictions, research stereochemistry applications.

VOCABULARY:
VSEPR theory, electron geometry, molecular geometry, electron group, bonding pair, lone pair, linear, bent, trigonal planar, tetrahedral, trigonal pyramidal, trigonal bipyramidal, octahedral, bond angle, molecular polarity, dipole moment

CONNECTION TO FUTURE LEARNING:
Molecular geometry is essential for understanding intermolecular forces and reactivity. Students will apply VSEPR to organic chemistry and biochemistry. This foundation supports understanding of molecular properties and behavior.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'VSEPR Theory' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Intermolecular Forces
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Intermolecular Forces' AND grade_level_min = 11),
  'Intermolecular Forces (Grade 11) Topic Guide', 'Van der Waals, dipole-dipole, hydrogen bonding',
  'INTERMOLECULAR FORCES - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students must understand molecular polarity from VSEPR theory. They should know about electronegativity and polar bonds. Understanding that molecules interact with each other is essential.

LEARNING OBJECTIVES:
- Distinguish between intramolecular and intermolecular forces
- Identify and describe the three types of intermolecular forces
- Rank intermolecular forces by strength
- Predict which forces exist between given molecules
- Relate intermolecular forces to physical properties

KEY CONCEPTS:
1) Intermolecular forces are attractions between molecules; they are weaker than intramolecular bonds
2) London dispersion forces exist in all molecules; they result from temporary dipoles in electron clouds
3) Dipole-dipole forces exist between polar molecules; permanent partial charges attract
4) Hydrogen bonding is a strong dipole-dipole force when H is bonded to N, O, or F
5) Stronger intermolecular forces lead to higher boiling/melting points, lower vapor pressure, and greater viscosity

COMMON MISCONCEPTIONS:
- Confusing intermolecular forces with chemical bonds (bonds are intramolecular)
- Thinking only polar molecules have intermolecular forces (all molecules have London forces)
- Believing hydrogen bonding is a covalent bond (it''s an intermolecular force)
- Assuming larger molecules always have higher boiling points (polarity matters too)
- Thinking "dispersion" means the forces disperse (they''re named after Fritz London)
- Forgetting that all three force types can exist simultaneously

TEACHING SEQUENCE:
Distinguish between bonds within molecules and forces between molecules. Introduce London dispersion forces as universal. Explain dipole-dipole interactions in polar molecules. Emphasize hydrogen bonding as especially strong. Practice identifying which forces exist for given molecules. Connect force strength to physical properties.

DIFFERENTIATION:
Struggling learners: Focus on identifying molecule polarity first. Create force identification flowcharts. Practice with simple molecules. Connect to familiar property differences (water vs oils).
Advanced learners: Explore ion-dipole interactions, investigate Van der Waals equation for gases, research molecular recognition in biology, analyze surface tension and capillary action.

VOCABULARY:
Intermolecular force, intramolecular force, London dispersion force, dipole-dipole force, hydrogen bond, temporary dipole, permanent dipole, polarizability, boiling point, melting point, vapor pressure, viscosity, surface tension

CONNECTION TO FUTURE LEARNING:
Intermolecular forces explain physical properties of substances. Students will apply this to understanding solutions, phase changes, and biological molecules. This knowledge is essential for organic chemistry and biochemistry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Intermolecular Forces' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: CHEMICAL REACTIONS AND STOICHIOMETRY
-- =============================================

-- Topic: Writing and Balancing Equations (Grade 11)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Writing and Balancing Equations' AND grade_level_min = 11),
  'Writing and Balancing Equations (Grade 11) Topic Guide', 'Representing reactions symbolically',
  'WRITING AND BALANCING EQUATIONS - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students should know chemical formulas and nomenclature. They should understand the law of conservation of mass. Ability to count atoms in formulas is essential.

LEARNING OBJECTIVES:
- Write complete chemical equations from word descriptions
- Balance chemical equations systematically
- Include state symbols and reaction conditions
- Predict products for common reaction types
- Verify balanced equations by atom counting

KEY CONCEPTS:
1) Chemical equations show reactants → products with correct formulas and balanced atoms
2) Conservation of mass requires equal atoms of each element on both sides
3) Coefficients (not subscripts) are adjusted to balance equations
4) State symbols indicate phases: (s) solid, (l) liquid, (g) gas, (aq) aqueous
5) Reaction conditions (temperature, catalyst, pressure) may be shown above the arrow

COMMON MISCONCEPTIONS:
- Changing subscripts to balance (this changes the substance)
- Thinking the arrow means equals (it shows transformation)
- Assuming coefficients must be whole numbers only (they usually are, but fractions work)
- Forgetting that polyatomic ions can be balanced as units
- Believing balancing is arbitrary (it reflects conservation of mass)
- Thinking one method works for all equations (different strategies help different equations)

TEACHING SEQUENCE:
Review formula writing and nomenclature. Practice converting word equations to formulas. Develop systematic balancing strategies. Practice with various reaction types. Add state symbols based on reaction conditions. Verify all equations by atom counting.

DIFFERENTIATION:
Struggling learners: Start with simple binary reactions. Use atom inventory tables. Practice balancing by inspection for simple equations. Provide step-by-step balancing guides.
Advanced learners: Balance complex redox equations by half-reaction method, explore ionic equations and spectator ions, write net ionic equations, analyze combustion analysis data.

VOCABULARY:
Chemical equation, reactant, product, coefficient, subscript, balanced equation, conservation of mass, state symbol, reaction conditions, yield, word equation, formula equation

CONNECTION TO FUTURE LEARNING:
Balanced equations are essential for stoichiometry. Students will use equations to calculate quantities in reactions. This skill is fundamental to all quantitative chemistry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing and Balancing Equations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Types of Reactions (Grade 11)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Types of Reactions' AND grade_level_min = 11),
  'Types of Reactions (Grade 11) Topic Guide', 'Synthesis, decomposition, combustion',
  'TYPES OF REACTIONS - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students should be able to write and balance chemical equations. They should know common ions and their charges. Understanding of activity series and solubility rules is helpful.

LEARNING OBJECTIVES:
- Classify reactions into main types: synthesis, decomposition, single replacement, double replacement, combustion
- Predict products for each reaction type
- Use activity series to predict single replacement reactions
- Apply solubility rules to predict precipitates in double replacement
- Identify oxidation-reduction reactions

KEY CONCEPTS:
1) Synthesis: A + B → AB (elements or compounds combine)
2) Decomposition: AB → A + B (one compound breaks into simpler substances)
3) Single replacement: A + BC → AC + B (one element replaces another)
4) Double replacement: AB + CD → AD + CB (ions exchange partners)
5) Combustion: hydrocarbon + O₂ → CO₂ + H₂O (exothermic oxidation)

COMMON MISCONCEPTIONS:
- Thinking all reactions fit neatly into one category (some are mixed)
- Assuming any single replacement will occur (activity series determines this)
- Believing all double replacements form precipitates (driving forces include gases and water too)
- Thinking combustion only involves fire (slow oxidation is also combustion)
- Confusing decomposition with a reaction that breaks a bond (products are new substances)
- Assuming reaction type predicts whether reaction will occur (thermodynamics determines this)

TEACHING SEQUENCE:
Review reaction types with examples of each. Practice predicting synthesis and decomposition products. Use activity series to predict single replacement. Apply solubility rules to double replacement. Practice combustion with various hydrocarbons. Classify reactions and predict products in mixed problems.

DIFFERENTIATION:
Struggling learners: Focus on recognizing reaction patterns. Use prediction templates for each type. Practice with binary compounds. Create decision trees for classification.
Advanced learners: Analyze redox reactions systematically, explore driving forces for reactions, investigate reaction mechanisms, research industrial reaction applications.

VOCABULARY:
Synthesis reaction, decomposition reaction, single replacement, double replacement, combustion, activity series, solubility rules, precipitate, oxidation, reduction, driving force

CONNECTION TO FUTURE LEARNING:
Reaction type recognition helps predict products in stoichiometry. Students will use these patterns in organic chemistry and biochemistry. Understanding reaction types is essential for laboratory work.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Types of Reactions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: The Mole Concept
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Mole Concept' AND grade_level_min = 11),
  'The Mole Concept (Grade 11) Topic Guide', 'Avogadro''s number and molar mass',
  'THE MOLE CONCEPT - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students should understand atomic mass units and average atomic mass. They should know how to calculate formula mass. Understanding of significant figures and unit conversions is essential.

LEARNING OBJECTIVES:
- Define the mole as 6.022 × 10²³ particles (Avogadro''s number)
- Calculate molar mass from atomic masses on the periodic table
- Convert between moles, mass, and number of particles
- Calculate molar mass for compounds
- Apply mole calculations to real chemical quantities

KEY CONCEPTS:
1) One mole = 6.022 × 10²³ particles (atoms, molecules, ions, or formula units)
2) Molar mass is the mass of one mole in grams, numerically equal to formula mass in amu
3) Conversions: mass ↔ moles (use molar mass); moles ↔ particles (use Avogadro''s number)
4) The mole connects macroscopic measurements to atomic-scale counting
5) Molar volume of ideal gases at STP is 22.4 L/mol

COMMON MISCONCEPTIONS:
- Thinking a mole is a specific amount of mass (it''s a number of particles)
- Confusing molar mass with molecular mass (same number, different units)
- Assuming moles can only be molecules (atoms, ions, electrons are also counted)
- Thinking Avogadro''s number was chosen arbitrarily (it relates atomic mass to grams)
- Forgetting that molar mass varies by substance (each has its own)
- Confusing number of atoms in a molecule with number of moles

TEACHING SEQUENCE:
Introduce the mole as a counting unit like dozen. Connect molar mass to periodic table values. Practice conversions: mass to moles, moles to particles. Calculate molar mass of compounds. Solve multi-step conversion problems. Apply to finding formula of compounds.

DIFFERENTIATION:
Struggling learners: Use dimensional analysis templates. Practice one-step conversions before multi-step. Create conversion maps showing relationships. Use analogies (dozen, pair) for the mole concept.
Advanced learners: Explore the historical definition of the mole, investigate Avogadro''s work, analyze molar volume variations from ideality, apply to empirical formula calculations.

VOCABULARY:
Mole, Avogadro''s number, molar mass, formula mass, molecular mass, gram, conversion, particles, atoms, molecules, ions, formula unit, STP, molar volume, dimensional analysis

CONNECTION TO FUTURE LEARNING:
The mole is the bridge to quantitative chemistry. Students will use mole calculations in all stoichiometry. This concept is essential for understanding chemical quantities and reactions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Mole Concept' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Stoichiometry
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Stoichiometry' AND grade_level_min = 11),
  'Stoichiometry (Grade 11) Topic Guide', 'Mole-to-mole and mass-to-mass calculations',
  'STOICHIOMETRY - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students must be able to balance equations and convert between moles and mass. They should understand the mole concept and molar mass. Dimensional analysis skills are essential.

LEARNING OBJECTIVES:
- Interpret mole ratios from balanced chemical equations
- Perform mole-to-mole stoichiometric calculations
- Perform mass-to-mass stoichiometric calculations
- Convert between mass, moles, particles, and volume (for gases)
- Apply stoichiometry to real-world problems

KEY CONCEPTS:
1) Coefficients in balanced equations represent mole ratios
2) Mole ratios are the conversion factors between reactants and products
3) Mass-to-mass conversions: mass → moles → mole ratio → moles → mass
4) All stoichiometry problems flow through moles as the central unit
5) Stoichiometry predicts theoretical amounts based on equation ratios

COMMON MISCONCEPTIONS:
- Thinking mass ratios equal coefficient ratios (molar mass differs)
- Forgetting to balance equations before stoichiometry
- Converting directly from mass to mass without going through moles
- Assuming stoichiometry tells you how much you''ll actually get (that''s yield)
- Confusing coefficients with subscripts in ratio calculations
- Believing calculations give exact answers (significant figures matter)

TEACHING SEQUENCE:
Identify mole ratios from balanced equations. Practice mole-to-mole conversions. Extend to mass-to-mole and mole-to-mass. Complete mass-to-mass problems systematically. Include gas volumes using molar volume. Apply to real laboratory scenarios.

DIFFERENTIATION:
Struggling learners: Use stoichiometry maps showing all conversion steps. Practice each step separately before combining. Write out all units in dimensional analysis. Use simple whole-number coefficients.
Advanced learners: Solve multi-step problems with multiple reactions, explore gas stoichiometry at non-STP conditions, analyze industrial processes quantitatively, investigate percent composition from stoichiometry.

VOCABULARY:
Stoichiometry, mole ratio, coefficient, balanced equation, molar mass, dimensional analysis, conversion factor, reactant, product, theoretical

CONNECTION TO FUTURE LEARNING:
Stoichiometry is central to quantitative chemistry. Students will extend this to limiting reactant and percent yield. This skill is essential for laboratory work and industrial chemistry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Stoichiometry' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Limiting Reactant
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Limiting Reactant' AND grade_level_min = 11),
  'Limiting Reactant (Grade 11) Topic Guide', 'Identifying and calculating with limiting reagent',
  'LIMITING REACTANT - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students must be proficient in stoichiometry calculations. They should understand mole ratios from balanced equations. Experience with conversion factors and dimensional analysis is essential.

LEARNING OBJECTIVES:
- Explain why limiting reactants determine product amounts
- Identify the limiting reactant in a reaction given amounts of multiple reactants
- Calculate theoretical yield based on limiting reactant
- Calculate excess reactant remaining after reaction
- Analyze reaction completion based on initial amounts

KEY CONCEPTS:
1) The limiting reactant is completely consumed and determines maximum product formed
2) The excess reactant is left over after the reaction
3) To find limiting reactant: convert each reactant to product; smaller amount indicates limiting
4) Theoretical yield is the maximum product possible from the limiting reactant
5) Real reactions often don''t use stoichiometric proportions; one reactant limits

COMMON MISCONCEPTIONS:
- Thinking the reactant present in smaller mass is always limiting (molar amounts matter)
- Believing limiting means less in quantity (it''s about stoichiometric proportion)
- Assuming all the excess reactant is wasted (some can be recovered)
- Thinking the limiting reactant must be completely used (it is, by definition)
- Confusing theoretical yield with actual yield (theoretical is calculated; actual is measured)
- Forgetting to use the limiting reactant for all product calculations

TEACHING SEQUENCE:
Use analogies (sandwiches from bread and cheese) to introduce the concept. Calculate product from each reactant separately. Compare to identify limiting reactant. Calculate theoretical yield from limiting reactant. Calculate excess reactant remaining. Apply to laboratory scenarios and industrial processes.

DIFFERENTIATION:
Struggling learners: Use visual representations (sandwich analogy). Practice identifying limiting reactant before calculating yield. Use step-by-step templates. Work with simple 1:1 ratios first.
Advanced learners: Analyze reactions with more than two reactants, explore how varying proportions affect waste, investigate industrial optimization, connect to percent yield problems.

VOCABULARY:
Limiting reactant (reagent), excess reactant, theoretical yield, stoichiometric proportions, consumed, remaining, mole ratio, product amount

CONNECTION TO FUTURE LEARNING:
Limiting reactant concepts apply to all quantitative chemistry. Students will connect this to percent yield and reaction optimization. This understanding is essential for laboratory work and industrial processes.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Limiting Reactant' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: SOLUTIONS AND THERMOCHEMISTRY
-- =============================================

-- Topic: Solutions and Solubility
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Solutions and Solubility' AND grade_level_min = 11),
  'Solutions and Solubility (Grade 11) Topic Guide', 'Factors affecting solubility',
  'SOLUTIONS AND SOLUBILITY - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students should understand polarity and intermolecular forces. They should know about ionic and molecular compounds. Understanding of concentration as a general concept is helpful.

LEARNING OBJECTIVES:
- Describe the dissolution process at the molecular level
- Apply "like dissolves like" to predict solubility
- Explain factors affecting solubility (temperature, pressure, structure)
- Interpret solubility curves
- Distinguish between saturated, unsaturated, and supersaturated solutions

KEY CONCEPTS:
1) Dissolution involves solute particles being surrounded by solvent molecules (solvation)
2) "Like dissolves like": polar solvents dissolve polar/ionic solutes; nonpolar dissolves nonpolar
3) Temperature generally increases solubility of solids in liquids but decreases solubility of gases
4) Pressure affects gas solubility (Henry''s law) but has little effect on solid/liquid solubility
5) Saturation: saturated (maximum dissolved), unsaturated (more could dissolve), supersaturated (more than normal maximum)

COMMON MISCONCEPTIONS:
- Thinking dissolving is a chemical change (it''s usually physical)
- Believing all solutes dissolve better at higher temperature (gases dissolve less)
- Assuming mixing always results in a solution (immiscible liquids separate)
- Thinking "like dissolves like" is absolute (intermediate cases exist)
- Confusing solubility with dissolution rate (different concepts)
- Believing supersaturated solutions are impossible (they''re metastable)

TEACHING SEQUENCE:
Model dissolution at the molecular level. Test "like dissolves like" with polar and nonpolar substances. Investigate temperature effects on solid and gas solubility. Interpret solubility curves for various compounds. Create supersaturated solutions and observe crystallization. Apply concepts to everyday examples (carbonated drinks, ocean dissolved gases).

DIFFERENTIATION:
Struggling learners: Focus on "like dissolves like" as the main principle. Use visual models of dissolution. Practice predicting solubility from structure. Create solubility prediction flowcharts.
Advanced learners: Explore the thermodynamics of dissolution, investigate hydration energy vs lattice energy, research supersaturation applications, analyze solubility product constants.

VOCABULARY:
Solution, solute, solvent, dissolution, solvation, hydration, solubility, saturated, unsaturated, supersaturated, miscible, immiscible, solubility curve, temperature, pressure

CONNECTION TO FUTURE LEARNING:
Solubility concepts connect to concentration calculations and equilibrium. Students will apply this to precipitation reactions and biological systems. This understanding is essential for aqueous chemistry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solutions and Solubility' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Concentration
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Concentration' AND grade_level_min = 11),
  'Concentration (Grade 11) Topic Guide', 'Molarity, molality, and percent composition',
  'CONCENTRATION - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students should understand the mole concept and molar mass. They should know how to calculate moles from mass. Understanding of solution components (solute, solvent) is essential.

LEARNING OBJECTIVES:
- Calculate molarity (M = mol solute / L solution)
- Perform dilution calculations using M₁V₁ = M₂V₂
- Calculate other concentration units: molality, percent composition, ppm
- Convert between concentration units
- Apply concentration calculations to solution preparation

KEY CONCEPTS:
1) Molarity (M): moles of solute per liter of solution; most common concentration unit
2) Molality (m): moles of solute per kilogram of solvent; used for colligative properties
3) Percent composition: mass percent = (mass solute / mass solution) × 100%
4) Dilution: adding solvent decreases concentration; M₁V₁ = M₂V₂
5) Parts per million (ppm) and parts per billion (ppb) for very dilute solutions

COMMON MISCONCEPTIONS:
- Confusing molarity with molality (volume of solution vs mass of solvent)
- Adding volumes incorrectly for dilution (volumes aren''t always additive)
- Thinking dilution changes the amount of solute (it doesn''t)
- Confusing mass of solution with mass of solvent in calculations
- Assuming 1 L solution has 1 kg solvent (only true for very dilute aqueous solutions)
- Forgetting that concentration is an intensive property (independent of amount)

TEACHING SEQUENCE:
Calculate molarity for various solutions. Prepare solutions of specific concentration. Practice dilution calculations. Introduce molality and compare with molarity. Calculate percent composition and ppm. Convert between concentration units.

DIFFERENTIATION:
Struggling learners: Focus on molarity calculations first. Use concentration calculation templates. Practice dilution formula applications. Create unit reference sheets.
Advanced learners: Explore mole fraction and its applications, investigate normality for acid-base, analyze concentration effects on colligative properties, research analytical chemistry applications.

VOCABULARY:
Concentration, molarity, molality, molar, moles, liter, kilogram, percent composition, parts per million (ppm), dilution, stock solution, volumetric flask

CONNECTION TO FUTURE LEARNING:
Concentration calculations are essential for all quantitative solution chemistry. Students will apply this to acid-base chemistry, stoichiometry in solution, and colligative properties. This skill is fundamental to laboratory work.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Concentration' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Colligative Properties
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Colligative Properties' AND grade_level_min = 11),
  'Colligative Properties (Grade 11) Topic Guide', 'Boiling point, freezing point, osmotic pressure',
  'COLLIGATIVE PROPERTIES - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students should understand concentration calculations, especially molality. They should know about intermolecular forces and vapor pressure. Understanding of phase changes is essential.

LEARNING OBJECTIVES:
- Define colligative properties as depending on particle number, not identity
- Calculate boiling point elevation using ΔTb = Kb × m × i
- Calculate freezing point depression using ΔTf = Kf × m × i
- Explain osmotic pressure and its applications
- Account for the van''t Hoff factor (i) for electrolytes

KEY CONCEPTS:
1) Colligative properties depend only on the concentration of solute particles, not their identity
2) Boiling point elevation: solutes raise the boiling point; ΔTb = Kb × m × i
3) Freezing point depression: solutes lower the freezing point; ΔTf = Kf × m × i
4) Osmotic pressure: pressure needed to prevent osmosis; π = MRTi
5) The van''t Hoff factor (i) accounts for dissociation of electrolytes

COMMON MISCONCEPTIONS:
- Thinking solute identity affects colligative properties (only particle count matters)
- Forgetting to account for ionic dissociation (NaCl gives 2 particles, not 1)
- Assuming ideal behavior (real solutions deviate, especially concentrated ones)
- Confusing molarity with molality for these calculations (molality is used)
- Thinking antifreeze raises freezing point (it lowers it; boiling point is raised)
- Believing osmotic pressure is the same as hydrostatic pressure (related but different)

TEACHING SEQUENCE:
Introduce colligative properties conceptually. Derive why particle count matters, not identity. Calculate boiling point elevation for molecular and ionic solutes. Calculate freezing point depression and apply to antifreeze. Explore osmotic pressure and biological applications. Compare measured vs predicted values.

DIFFERENTIATION:
Struggling learners: Focus on one property at a time. Practice with molecular solutes before ionic. Use calculation templates with clear steps. Create van''t Hoff factor reference charts.
Advanced learners: Analyze deviations from ideality, explore molar mass determination from freezing point depression, investigate reverse osmosis, research biological osmotic effects.

VOCABULARY:
Colligative property, boiling point elevation, freezing point depression, vapor pressure lowering, osmotic pressure, molality, van''t Hoff factor, dissociation, electrolyte, non-electrolyte, Kb, Kf

CONNECTION TO FUTURE LEARNING:
Colligative properties connect to real-world applications like antifreeze and desalination. Students will apply this to biological systems and solution behavior. This understanding bridges chemistry and biology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Colligative Properties' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Thermochemistry
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Thermochemistry' AND grade_level_min = 11),
  'Thermochemistry (Grade 11) Topic Guide', 'Heat, enthalpy, and calorimetry',
  'THERMOCHEMISTRY - TOPIC TEACHING GUIDE (GRADE 11 CHEMISTRY)

PREREQUISITES:
Students should understand energy conservation and heat transfer. They should know about exothermic and endothermic reactions. Ability to perform calculations with q = mcΔT is helpful.

LEARNING OBJECTIVES:
- Distinguish between heat and temperature
- Calculate heat transfer using q = mcΔT
- Define and calculate enthalpy change (ΔH) for reactions
- Apply Hess''s law to calculate ΔH for reactions
- Interpret thermochemical equations and enthalpy diagrams

KEY CONCEPTS:
1) Heat (q) is energy transfer; temperature is average kinetic energy of particles
2) Specific heat capacity (c) is energy needed to raise 1 g of substance by 1°C
3) Enthalpy change (ΔH) is heat at constant pressure; negative for exothermic, positive for endothermic
4) Hess''s law: ΔH for a reaction equals the sum of ΔH values for any pathway between same reactants and products
5) Standard enthalpy of formation (ΔHf°) is ΔH for forming one mole of compound from elements

COMMON MISCONCEPTIONS:
- Confusing heat with temperature (heat is energy transfer; temperature is a measure)
- Thinking exothermic means the products are hot (they release heat to surroundings)
- Assuming all reactions are either completely exothermic or endothermic (it''s a continuum)
- Believing Hess''s law is an approximation (it''s exact, based on state functions)
- Forgetting to account for stoichiometry when using ΔH values
- Thinking calorimetry measures exact ΔH (heat losses cause errors)

TEACHING SEQUENCE:
Distinguish heat from temperature conceptually. Perform calorimetry calculations using q = mcΔT. Introduce enthalpy and thermochemical equations. Practice Hess''s law calculations. Use standard enthalpies of formation. Interpret enthalpy diagrams for reactions.

DIFFERENTIATION:
Struggling learners: Focus on sign conventions for exothermic/endothermic. Practice calorimetry calculations step by step. Use enthalpy diagrams for visualization. Create problem-solving templates.
Advanced learners: Explore bomb calorimetry, investigate bond enthalpies, analyze entropy and free energy, research industrial thermochemistry applications.

VOCABULARY:
Thermochemistry, heat, temperature, enthalpy, ΔH, exothermic, endothermic, specific heat capacity, calorimetry, Hess''s law, standard enthalpy of formation, thermochemical equation, state function

CONNECTION TO FUTURE LEARNING:
Thermochemistry is essential for understanding chemical equilibrium and kinetics. Students will extend this to Gibbs free energy and spontaneity. This knowledge is fundamental to understanding reaction energetics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Thermochemistry' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;
