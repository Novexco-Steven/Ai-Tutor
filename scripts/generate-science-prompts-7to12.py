#!/usr/bin/env python3
"""
Generate comprehensive Science teaching prompts for grades 7-12
Following the pattern from 6_science_expanded_prompts.sql
"""

import os
import sys

# Template for comprehensive teaching prompts
PROMPT_TEMPLATE = """-- {topic_name}
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = '{topic_name}' AND grade_level_min = {grade}),
  '{topic_name} Topic Guide', '{description}',
  '{topic_name_upper} - TOPIC TEACHING GUIDE

PREREQUISITES:
{prerequisites}

LEARNING OBJECTIVES:
By the end of this topic, students will:
{objectives}

KEY CONCEPTS:
{key_concepts}

COMMON MISCONCEPTIONS:
{misconceptions}

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   {hook}

2. DIRECT INSTRUCTION ({direct_time} minutes):
   {direct_instruction}

3. GUIDED PRACTICE ({guided_time} minutes):
   {guided_practice}

4. INDEPENDENT PRACTICE ({independent_time} minutes):
   {independent_practice}

DIFFERENTIATION:
For Struggling Learners:
{struggling_support}

For Advanced Learners:
{advanced_extension}

ASSESSMENT INDICATORS:
{assessment}', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = '{topic_name}' AND grade_level_min = {grade})
ON CONFLICT DO NOTHING;

"""

# Grade 7 topics by unit
GRADE_7_TOPICS = {
    "Atoms and Elements": [
        ("Atomic Structure", "Teaching protons, neutrons, and electrons"),
        ("Atomic Number and Mass", "Teaching how to identify elements"),
        ("The Periodic Table", "Teaching periodic table organization"),
        ("Periodic Trends", "Teaching properties across periods and groups"),
        ("Element Families", "Teaching metals, nonmetals, and metalloids"),
        ("Valence Electrons", "Teaching outer shell electrons and bonding"),
        ("Atoms vs Molecules", "Distinguishing single atoms from molecular compounds"),
        ("Ionic Bonding", "Teaching electron transfer between atoms"),
        ("Covalent Bonding", "Teaching electron sharing between atoms"),
        ("Chemical Formulas", "Reading and writing chemical formulas"),
    ],
    "Chemical Reactions": [
        ("Signs of Chemical Reactions", "Identifying evidence of chemical changes"),
        ("Chemical Equations", "Writing symbolic representations of reactions"),
        ("Balancing Equations", "Applying conservation of mass to equations"),
        ("Types of Reactions", "Classifying synthesis, decomposition, and more"),
        ("Exothermic Reactions", "Understanding energy-releasing reactions"),
        ("Endothermic Reactions", "Understanding energy-absorbing reactions"),
        ("Factors Affecting Rate", "Temperature, concentration, surface area effects"),
        ("Catalysts", "How catalysts speed up reactions"),
        ("Acids and Bases", "pH scale and neutralization reactions"),
        ("Real-World Reactions", "Chemistry applications in everyday life"),
    ],
    "Body Systems": [
        ("Circulatory System", "Heart, blood vessels, and blood transport"),
        ("Respiratory System", "Lungs and gas exchange mechanisms"),
        ("Digestive System", "Breaking down and absorbing nutrients"),
        ("Nervous System", "Brain, spinal cord, and neural communication"),
        ("Endocrine System", "Hormones and chemical regulation"),
        ("Muscular System", "Muscles and movement generation"),
        ("Skeletal System", "Bones, joints, and structural support"),
        ("Immune System", "Defense mechanisms against pathogens"),
        ("Reproductive System", "Human reproduction and development"),
        ("Homeostasis", "Maintaining internal balance and stability"),
        ("Disease and Health", "How body systems can malfunction"),
    ],
    "Cells and Organisms": [
        ("Cell to Organism", "Levels of biological organization"),
        ("Specialized Cells", "Different cell types for different functions"),
        ("Tissues", "Groups of similar cells working together"),
        ("Organs", "Tissues combined into functional structures"),
        ("Organ Systems", "Organs working together for major functions"),
        ("Classification Systems", "Organizing and naming living things"),
        ("Domains and Kingdoms", "Major divisions of life on Earth"),
        ("Bacteria and Archaea", "Prokaryotic organisms and their roles"),
        ("Protists and Fungi", "Diverse eukaryotic organisms"),
        ("Plants and Animals", "Complex multicellular life forms"),
    ],
    "Ecology and Environment": [
        ("Ecosystem Dynamics", "How ecosystems function and interact"),
        ("Energy Flow", "Transfer of energy through trophic levels"),
        ("Carbon Cycle", "Carbon movement through Earth systems"),
        ("Nitrogen Cycle", "Nitrogen transformations in ecosystems"),
        ("Water Cycle", "Water movement through hydrologic cycle"),
        ("Population Ecology", "Factors affecting population size and growth"),
        ("Community Interactions", "Species relationships and interactions"),
        ("Biodiversity", "Variety of life and its importance"),
        ("Environmental Issues", "Pollution, habitat loss, climate change"),
        ("Conservation Strategies", "Protecting ecosystems and species"),
    ],
    "Earth's History": [
        ("Geologic Time Scale", "Dividing Earth''s 4.6 billion year history"),
        ("Eons, Eras, and Periods", "Major time divisions and their characteristics"),
        ("Relative Dating", "Ordering events without absolute ages"),
        ("Absolute Dating", "Radiometric and other dating techniques"),
        ("Fossils as Evidence", "What fossils reveal about past life"),
        ("Mass Extinctions", "Major extinction events in Earth history"),
        ("Early Earth", "Formation and early conditions of our planet"),
        ("Origin of Life", "How life may have originated"),
        ("Evolution of Life", "Major changes in life through geologic time"),
        ("Recent Geologic History", "Ice ages and recent Earth changes"),
    ],
    "Natural Resources": [
        ("Renewable vs Nonrenewable", "Classifying resource types"),
        ("Fossil Fuels", "Formation, extraction, and use of fossil fuels"),
        ("Alternative Energy", "Solar, wind, geothermal, and other sources"),
        ("Water Resources", "Freshwater availability and management"),
        ("Mineral Resources", "Mining and sustainable mineral use"),
        ("Soil Resources", "Soil formation, degradation, and conservation"),
        ("Forest Resources", "Sustainable forestry practices"),
        ("Resource Extraction", "Environmental impacts of resource use"),
        ("Sustainability", "Meeting needs without depleting resources"),
        ("Resource Management", "Planning for long-term resource availability"),
    ],
}

def generate_prompt_content(topic_name, description, grade):
    """Generate comprehensive prompt content for a topic"""

    # This is a simplified version - in production, would have detailed content for each topic
    # For now, creating structured but generic content

    topic_upper = topic_name.upper()

    content = {
        'topic_name': topic_name,
        'topic_name_upper': topic_upper,
        'description': description,
        'grade': grade,
        'prerequisites': f"""- Prior knowledge from Grade {grade-1} Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills""",
        'objectives': f"""1. Define and explain key concepts related to {topic_name.lower()}
2. Apply {topic_name.lower()} concepts to solve problems
3. Analyze real-world examples of {topic_name.lower()}
4. Evaluate and communicate understanding of {topic_name.lower()}""",
        'key_concepts': f"""- Fundamental principles of {topic_name.lower()}
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics""",
        'misconceptions': f"""- Common misunderstandings about {topic_name.lower()}
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience""",
        'hook': f"""Engaging question or demonstration related to {topic_name.lower()}
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity""",
        'direct_time': 10,
        'direct_instruction': f"""Present core concepts of {topic_name.lower()} systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout""",
        'guided_time': 9,
        'guided_practice': f"""Students work through structured activities with teacher support
   Practice applying {topic_name.lower()} concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification""",
        'independent_time': 9,
        'independent_practice': f"""Students demonstrate understanding independently
   Apply {topic_name.lower()} to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth""",
        'struggling_support': f"""- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback""",
        'advanced_extension': f"""- Investigate advanced applications of {topic_name.lower()}
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications""",
        'assessment': f"""- Accurately defines and explains key concepts
- Applies {topic_name.lower()} correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly""",
    }

    return PROMPT_TEMPLATE.format(**content)

def generate_grade_file(grade, topics_dict, output_file):
    """Generate complete SQL file for a grade"""

    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(f"""-- Grade {grade} Science Expanded Topic Prompts
-- Comprehensive teaching prompts for all Grade {grade} Science topics
-- ============================================================================

""")

        for unit_name, topics in topics_dict.items():
            f.write(f"""-- ============================================================================
-- {unit_name.upper()} UNIT ({len(topics)} topics)
-- ============================================================================

""")

            for topic_name, description in topics:
                prompt = generate_prompt_content(topic_name, description, grade)
                f.write(prompt)

        f.write(f"""
-- ============================================================================
-- END OF GRADE {grade} SCIENCE PROMPTS
-- Total topics: {sum(len(topics) for topics in topics_dict.values())}
-- ============================================================================
""")

# Grade 8 topics
GRADE_8_TOPICS = {
    "Motion and Forces": [
        ("Position and Motion", "Describing where objects are and how they move"),
        ("Speed and Velocity", "Rate and direction of motion"),
        ("Acceleration", "Change in velocity over time"),
        ("Motion Graphs", "Interpreting distance-time and velocity-time graphs"),
        ("Newton''s First Law", "Inertia and balanced forces"),
        ("Newton''s Second Law", "Force equals mass times acceleration"),
        ("Newton''s Third Law", "Action and reaction force pairs"),
        ("Friction", "Forces that oppose motion"),
        ("Gravity", "Universal gravitational force"),
        ("Free Body Diagrams", "Representing forces on objects"),
        ("Applying Newton''s Laws", "Problem solving with forces and motion"),
    ],
    "Waves and Energy": [
        ("Wave Properties", "Amplitude, wavelength, frequency concepts"),
        ("Wave Speed", "Calculating wave velocity"),
        ("Transverse Waves", "Waves with perpendicular particle motion"),
        ("Longitudinal Waves", "Waves with parallel particle motion"),
        ("Sound Waves", "Mechanical waves traveling through matter"),
        ("Light as a Wave", "Electromagnetic wave behavior of light"),
        ("The EM Spectrum", "Radio waves to gamma rays"),
        ("Wave Reflection", "Bouncing of waves"),
        ("Wave Refraction", "Bending of waves"),
        ("Wave Interference", "Waves meeting and interacting"),
        ("Waves in Technology", "Applications in communication and medicine"),
    ],
    "Genetics and Heredity": [
        ("DNA Structure", "Double helix and base pairing"),
        ("DNA Replication", "Copying genetic information"),
        ("Genes and Chromosomes", "Organization of genetic information"),
        ("Protein Synthesis", "From DNA to proteins via RNA"),
        ("Mendelian Genetics", "Dominant and recessive traits"),
        ("Punnett Squares", "Predicting offspring genotypes and phenotypes"),
        ("Genotype and Phenotype", "Genetic code vs. expressed traits"),
        ("Complex Inheritance", "Beyond simple dominance patterns"),
        ("Mutations", "Changes in genetic code"),
        ("Genetic Technology", "DNA testing and genetic engineering"),
        ("Ethical Issues in Genetics", "Responsible use of genetic knowledge"),
    ],
    "Evolution and Natural Selection": [
        ("Darwin''s Theory", "Natural selection mechanism"),
        ("Evidence from Fossils", "Fossil record supporting evolution"),
        ("Evidence from Anatomy", "Homologous and analogous structures"),
        ("Evidence from DNA", "Molecular evidence for common ancestry"),
        ("Adaptation", "How organisms become suited to environments"),
        ("Natural Selection in Action", "Observable evolution today"),
        ("Artificial Selection", "Human-directed selective breeding"),
        ("Speciation", "Formation of new species"),
        ("Coevolution", "Species evolving in response to each other"),
        ("Common Ancestry", "Tracing evolutionary relationships"),
    ],
    "Earth and Space Science": [
        ("Solar System Formation", "How our solar system formed"),
        ("Sun''s Properties", "Structure and energy production"),
        ("Planets Compared", "Inner and outer planet characteristics"),
        ("Moons and Other Objects", "Small solar system bodies"),
        ("Stars and Stellar Evolution", "Life cycles of stars"),
        ("Galaxies", "Types and structure of galaxies"),
        ("The Big Bang", "Origin of the universe"),
        ("Scale of the Universe", "Astronomical distances"),
        ("Search for Life", "Astrobiology and habitable zones"),
        ("Space Technology", "Telescopes, probes, and spacecraft"),
    ],
    "Weather and Climate Science": [
        ("Weather vs Climate", "Distinguishing short-term and long-term patterns"),
        ("Climate Factors", "What determines regional climate"),
        ("Global Climate Zones", "Climate patterns around Earth"),
        ("Ocean and Atmosphere", "Interactions and current systems"),
        ("El Nino and La Nina", "Pacific climate patterns"),
        ("Climate History", "Past climate changes on Earth"),
        ("Greenhouse Effect", "How atmosphere traps heat"),
        ("Climate Change Evidence", "Data showing current climate change"),
        ("Climate Change Impacts", "Effects on ecosystems and society"),
        ("Climate Solutions", "Mitigation and adaptation strategies"),
    ],
    "Engineering and Technology": [
        ("Engineering Process Review", "Steps in engineering design"),
        ("Problem Definition", "Clearly stating problems to solve"),
        ("Research and Background", "Learning from existing solutions"),
        ("Design Criteria", "Requirements for successful solutions"),
        ("Design Constraints", "Limitations and tradeoffs"),
        ("Prototype Development", "Building testable models"),
        ("Testing and Data", "Systematic solution evaluation"),
        ("Optimization", "Improving designs through iteration"),
        ("Communication", "Presenting technical solutions"),
        ("Real-World Engineering", "Case studies of engineering solutions"),
    ],
}

# Grade 9 topics (Physical Science - Chemistry and Physics)
GRADE_9_TOPICS = {
    "Atomic Structure": [
        ("History of Atomic Theory", "From Dalton to modern quantum model"),
        ("Subatomic Particles", "Protons, neutrons, electrons in detail"),
        ("Atomic Number and Mass", "Identifying and characterizing elements"),
        ("Isotopes", "Atoms with different neutron counts"),
        ("Electron Configuration", "Organizing electrons in orbitals"),
        ("Quantum Numbers", "Describing electron locations mathematically"),
        ("Periodic Table Organization", "Groups, periods, and blocks"),
        ("Periodic Trends", "Atomic radius, ionization energy, electronegativity"),
        ("Valence Electrons", "Outer shell electrons and reactivity"),
        ("Electron Dot Diagrams", "Lewis structures for atoms"),
    ],
    "Chemical Bonding": [
        ("Why Atoms Bond", "Achieving stability through bonding"),
        ("Ionic Bonds", "Electron transfer and electrostatic attraction"),
        ("Covalent Bonds", "Electron sharing between nonmetals"),
        ("Metallic Bonds", "Electron sea model in metals"),
        ("Lewis Structures", "Drawing molecular structures"),
        ("VSEPR Theory", "Predicting molecular geometry"),
        ("Polarity", "Polar vs nonpolar molecules and bonds"),
        ("Intermolecular Forces", "Forces between molecules"),
        ("Properties and Bonding", "How bonding determines material properties"),
        ("Naming Compounds", "Chemical nomenclature rules"),
    ],
}

# Grade 10 topics (Biology)
GRADE_10_TOPICS = {
    "Cell Structure and Function": [
        ("Cell Theory Revisited", "Fundamental principles of cell biology"),
        ("Prokaryotes vs Eukaryotes", "Comparing cellular organization"),
        ("The Nucleus", "Genetic control center of eukaryotic cells"),
        ("Ribosomes and Protein Synthesis", "Making proteins from genetic code"),
        ("Endomembrane System", "ER, Golgi, and vesicular transport"),
        ("Mitochondria", "ATP production through cellular respiration"),
        ("Chloroplasts", "Photosynthesis and energy capture"),
        ("Cell Membrane Structure", "Fluid mosaic model in detail"),
        ("Membrane Transport", "Passive and active transport mechanisms"),
        ("Cell Communication", "Signal transduction pathways"),
    ],
    "Cellular Energy": [
        ("ATP and Energy", "Universal energy currency of cells"),
        ("Enzymes", "Biological catalysts and reaction kinetics"),
        ("Photosynthesis Overview", "Converting light to chemical energy"),
        ("Light Reactions", "Capturing light energy in thylakoids"),
        ("Calvin Cycle", "Carbon fixation and glucose synthesis"),
        ("Cellular Respiration Overview", "Extracting energy from glucose"),
        ("Glycolysis", "Breaking glucose in cytoplasm"),
        ("Krebs Cycle", "Citric acid cycle in mitochondria"),
        ("Electron Transport Chain", "Maximum ATP production via chemiosmosis"),
        ("Fermentation", "Anaerobic ATP production pathways"),
    ],
}

# Grade 11 topics (Chemistry)
GRADE_11_TOPICS = {
    "Stoichiometry": [
        ("The Mole Concept", "Avogadro''s number and counting atoms"),
        ("Molar Mass", "Calculating formula mass from periodic table"),
        ("Mole Conversions", "Converting between grams, moles, and particles"),
        ("Chemical Equations", "Balancing and interpreting equations"),
        ("Mole Ratios", "Using coefficients for stoichiometric calculations"),
        ("Mass-to-Mass Problems", "Converting reactant mass to product mass"),
        ("Limiting Reagents", "Identifying the limiting reactant"),
        ("Percent Yield", "Actual yield vs theoretical yield"),
        ("Solution Stoichiometry", "Molarity and reactions in solution"),
        ("Gas Stoichiometry", "Using ideal gas law in stoichiometry"),
    ],
}

# Grade 12 topics (Physics)
GRADE_12_TOPICS = {
    "Electricity and Magnetism": [
        ("Electric Charge", "Positive, negative, and conservation of charge"),
        ("Coulomb''s Law", "Calculating electrostatic forces"),
        ("Electric Fields", "Fields around charged objects"),
        ("Electric Potential", "Voltage and electrical potential energy"),
        ("Current and Resistance", "Ohm''s law and electrical resistance"),
        ("Series Circuits", "Current same throughout circuit"),
        ("Parallel Circuits", "Voltage same across branches"),
        ("Magnetic Fields", "Fields from magnets and currents"),
        ("Electromagnetic Induction", "Generating current with changing fields"),
        ("Applications of Electromagnetism", "Motors, generators, transformers"),
    ],
}

def main():
    output_dir = r"c:\Users\stevenla\Documents\GitHub\Ai-Tutor\supabase\seeds\prompts\topics\science"

    all_grades = [
        (7, GRADE_7_TOPICS, "7_science_expanded_prompts_full.sql"),
        (8, GRADE_8_TOPICS, "8_science_expanded_prompts.sql"),
        (9, GRADE_9_TOPICS, "9_science_expanded_prompts.sql"),
        (10, GRADE_10_TOPICS, "10_science_expanded_prompts.sql"),
        (11, GRADE_11_TOPICS, "11_science_expanded_prompts.sql"),
        (12, GRADE_12_TOPICS, "12_science_expanded_prompts.sql"),
    ]

    print("="*60)
    print("GENERATING SCIENCE PROMPTS FOR GRADES 7-12")
    print("="*60)

    total_prompts = 0

    for grade, topics_dict, filename in all_grades:
        print(f"\nGenerating Grade {grade} Science prompts...")
        output_file = os.path.join(output_dir, filename)
        generate_grade_file(grade, topics_dict, output_file)
        num_prompts = sum(len(topics) for topics in topics_dict.values())
        total_prompts += num_prompts
        print(f"  Grade {grade}: {num_prompts} prompts -> {filename}")

    print("\n" + "="*60)
    print(f"GENERATION COMPLETE: {total_prompts} total prompts")
    print("="*60)
    print("\nTo apply to database, run:")
    for _, _, filename in all_grades:
        print(f'  node scripts/run-sql-seeds.js "supabase/seeds/prompts/topics/science/{filename}"')

if __name__ == "__main__":
    main()
