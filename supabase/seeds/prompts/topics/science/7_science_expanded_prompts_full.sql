-- Grade 7 Science Expanded Topic Prompts
-- Comprehensive teaching prompts for all Grade 7 Science topics
-- ============================================================================

-- ============================================================================
-- ATOMS AND ELEMENTS UNIT (10 topics)
-- ============================================================================

-- Atomic Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Atomic Structure' AND grade_level_min = 7),
  'Atomic Structure Topic Guide', 'Teaching protons, neutrons, and electrons',
  'ATOMIC STRUCTURE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to atomic structure
2. Apply atomic structure concepts to solve problems
3. Analyze real-world examples of atomic structure
4. Evaluate and communicate understanding of atomic structure

KEY CONCEPTS:
- Fundamental principles of atomic structure
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about atomic structure
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to atomic structure
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of atomic structure systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying atomic structure concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply atomic structure to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of atomic structure
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies atomic structure correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Atomic Structure' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Atomic Number and Mass
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Atomic Number and Mass' AND grade_level_min = 7),
  'Atomic Number and Mass Topic Guide', 'Teaching how to identify elements',
  'ATOMIC NUMBER AND MASS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to atomic number and mass
2. Apply atomic number and mass concepts to solve problems
3. Analyze real-world examples of atomic number and mass
4. Evaluate and communicate understanding of atomic number and mass

KEY CONCEPTS:
- Fundamental principles of atomic number and mass
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about atomic number and mass
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to atomic number and mass
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of atomic number and mass systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying atomic number and mass concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply atomic number and mass to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of atomic number and mass
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies atomic number and mass correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Atomic Number and Mass' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- The Periodic Table
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Periodic Table' AND grade_level_min = 7),
  'The Periodic Table Topic Guide', 'Teaching periodic table organization',
  'THE PERIODIC TABLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to the periodic table
2. Apply the periodic table concepts to solve problems
3. Analyze real-world examples of the periodic table
4. Evaluate and communicate understanding of the periodic table

KEY CONCEPTS:
- Fundamental principles of the periodic table
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about the periodic table
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to the periodic table
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of the periodic table systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying the periodic table concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply the periodic table to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of the periodic table
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies the periodic table correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Periodic Table' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Periodic Trends
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Periodic Trends' AND grade_level_min = 7),
  'Periodic Trends Topic Guide', 'Teaching properties across periods and groups',
  'PERIODIC TRENDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to periodic trends
2. Apply periodic trends concepts to solve problems
3. Analyze real-world examples of periodic trends
4. Evaluate and communicate understanding of periodic trends

KEY CONCEPTS:
- Fundamental principles of periodic trends
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about periodic trends
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to periodic trends
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of periodic trends systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying periodic trends concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply periodic trends to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of periodic trends
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies periodic trends correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Periodic Trends' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Element Families
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Element Families' AND grade_level_min = 7),
  'Element Families Topic Guide', 'Teaching metals, nonmetals, and metalloids',
  'ELEMENT FAMILIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to element families
2. Apply element families concepts to solve problems
3. Analyze real-world examples of element families
4. Evaluate and communicate understanding of element families

KEY CONCEPTS:
- Fundamental principles of element families
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about element families
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to element families
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of element families systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying element families concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply element families to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of element families
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies element families correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Element Families' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Valence Electrons
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Valence Electrons' AND grade_level_min = 7),
  'Valence Electrons Topic Guide', 'Teaching outer shell electrons and bonding',
  'VALENCE ELECTRONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to valence electrons
2. Apply valence electrons concepts to solve problems
3. Analyze real-world examples of valence electrons
4. Evaluate and communicate understanding of valence electrons

KEY CONCEPTS:
- Fundamental principles of valence electrons
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about valence electrons
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to valence electrons
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of valence electrons systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying valence electrons concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply valence electrons to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of valence electrons
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies valence electrons correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Valence Electrons' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Atoms vs Molecules
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Atoms vs Molecules' AND grade_level_min = 7),
  'Atoms vs Molecules Topic Guide', 'Distinguishing single atoms from molecular compounds',
  'ATOMS VS MOLECULES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to atoms vs molecules
2. Apply atoms vs molecules concepts to solve problems
3. Analyze real-world examples of atoms vs molecules
4. Evaluate and communicate understanding of atoms vs molecules

KEY CONCEPTS:
- Fundamental principles of atoms vs molecules
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about atoms vs molecules
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to atoms vs molecules
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of atoms vs molecules systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying atoms vs molecules concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply atoms vs molecules to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of atoms vs molecules
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies atoms vs molecules correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Atoms vs Molecules' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Ionic Bonding
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Ionic Bonding' AND grade_level_min = 7),
  'Ionic Bonding Topic Guide', 'Teaching electron transfer between atoms',
  'IONIC BONDING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to ionic bonding
2. Apply ionic bonding concepts to solve problems
3. Analyze real-world examples of ionic bonding
4. Evaluate and communicate understanding of ionic bonding

KEY CONCEPTS:
- Fundamental principles of ionic bonding
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about ionic bonding
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to ionic bonding
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of ionic bonding systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying ionic bonding concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply ionic bonding to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of ionic bonding
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies ionic bonding correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ionic Bonding' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Covalent Bonding
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Covalent Bonding' AND grade_level_min = 7),
  'Covalent Bonding Topic Guide', 'Teaching electron sharing between atoms',
  'COVALENT BONDING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to covalent bonding
2. Apply covalent bonding concepts to solve problems
3. Analyze real-world examples of covalent bonding
4. Evaluate and communicate understanding of covalent bonding

KEY CONCEPTS:
- Fundamental principles of covalent bonding
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about covalent bonding
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to covalent bonding
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of covalent bonding systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying covalent bonding concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply covalent bonding to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of covalent bonding
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies covalent bonding correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Covalent Bonding' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Chemical Formulas
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Chemical Formulas' AND grade_level_min = 7),
  'Chemical Formulas Topic Guide', 'Reading and writing chemical formulas',
  'CHEMICAL FORMULAS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to chemical formulas
2. Apply chemical formulas concepts to solve problems
3. Analyze real-world examples of chemical formulas
4. Evaluate and communicate understanding of chemical formulas

KEY CONCEPTS:
- Fundamental principles of chemical formulas
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about chemical formulas
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to chemical formulas
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of chemical formulas systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying chemical formulas concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply chemical formulas to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of chemical formulas
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies chemical formulas correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Chemical Formulas' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CHEMICAL REACTIONS UNIT (10 topics)
-- ============================================================================

-- Signs of Chemical Reactions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Signs of Chemical Reactions' AND grade_level_min = 7),
  'Signs of Chemical Reactions Topic Guide', 'Identifying evidence of chemical changes',
  'SIGNS OF CHEMICAL REACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to signs of chemical reactions
2. Apply signs of chemical reactions concepts to solve problems
3. Analyze real-world examples of signs of chemical reactions
4. Evaluate and communicate understanding of signs of chemical reactions

KEY CONCEPTS:
- Fundamental principles of signs of chemical reactions
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about signs of chemical reactions
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to signs of chemical reactions
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of signs of chemical reactions systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying signs of chemical reactions concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply signs of chemical reactions to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of signs of chemical reactions
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies signs of chemical reactions correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Signs of Chemical Reactions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Chemical Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Chemical Equations' AND grade_level_min = 7),
  'Chemical Equations Topic Guide', 'Writing symbolic representations of reactions',
  'CHEMICAL EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to chemical equations
2. Apply chemical equations concepts to solve problems
3. Analyze real-world examples of chemical equations
4. Evaluate and communicate understanding of chemical equations

KEY CONCEPTS:
- Fundamental principles of chemical equations
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about chemical equations
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to chemical equations
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of chemical equations systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying chemical equations concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply chemical equations to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of chemical equations
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies chemical equations correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Chemical Equations' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Balancing Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Balancing Equations' AND grade_level_min = 7),
  'Balancing Equations Topic Guide', 'Applying conservation of mass to equations',
  'BALANCING EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to balancing equations
2. Apply balancing equations concepts to solve problems
3. Analyze real-world examples of balancing equations
4. Evaluate and communicate understanding of balancing equations

KEY CONCEPTS:
- Fundamental principles of balancing equations
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about balancing equations
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to balancing equations
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of balancing equations systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying balancing equations concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply balancing equations to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of balancing equations
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies balancing equations correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Balancing Equations' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Types of Reactions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Types of Reactions' AND grade_level_min = 7),
  'Types of Reactions Topic Guide', 'Classifying synthesis, decomposition, and more',
  'TYPES OF REACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to types of reactions
2. Apply types of reactions concepts to solve problems
3. Analyze real-world examples of types of reactions
4. Evaluate and communicate understanding of types of reactions

KEY CONCEPTS:
- Fundamental principles of types of reactions
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about types of reactions
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to types of reactions
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of types of reactions systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying types of reactions concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply types of reactions to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of types of reactions
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies types of reactions correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Types of Reactions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Exothermic Reactions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Exothermic Reactions' AND grade_level_min = 7),
  'Exothermic Reactions Topic Guide', 'Understanding energy-releasing reactions',
  'EXOTHERMIC REACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to exothermic reactions
2. Apply exothermic reactions concepts to solve problems
3. Analyze real-world examples of exothermic reactions
4. Evaluate and communicate understanding of exothermic reactions

KEY CONCEPTS:
- Fundamental principles of exothermic reactions
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about exothermic reactions
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to exothermic reactions
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of exothermic reactions systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying exothermic reactions concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply exothermic reactions to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of exothermic reactions
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies exothermic reactions correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exothermic Reactions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Endothermic Reactions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Endothermic Reactions' AND grade_level_min = 7),
  'Endothermic Reactions Topic Guide', 'Understanding energy-absorbing reactions',
  'ENDOTHERMIC REACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to endothermic reactions
2. Apply endothermic reactions concepts to solve problems
3. Analyze real-world examples of endothermic reactions
4. Evaluate and communicate understanding of endothermic reactions

KEY CONCEPTS:
- Fundamental principles of endothermic reactions
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about endothermic reactions
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to endothermic reactions
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of endothermic reactions systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying endothermic reactions concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply endothermic reactions to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of endothermic reactions
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies endothermic reactions correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Endothermic Reactions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Factors Affecting Rate
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Factors Affecting Rate' AND grade_level_min = 7),
  'Factors Affecting Rate Topic Guide', 'Temperature, concentration, surface area effects',
  'FACTORS AFFECTING RATE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to factors affecting rate
2. Apply factors affecting rate concepts to solve problems
3. Analyze real-world examples of factors affecting rate
4. Evaluate and communicate understanding of factors affecting rate

KEY CONCEPTS:
- Fundamental principles of factors affecting rate
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about factors affecting rate
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to factors affecting rate
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of factors affecting rate systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying factors affecting rate concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply factors affecting rate to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of factors affecting rate
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies factors affecting rate correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factors Affecting Rate' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Catalysts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Catalysts' AND grade_level_min = 7),
  'Catalysts Topic Guide', 'How catalysts speed up reactions',
  'CATALYSTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to catalysts
2. Apply catalysts concepts to solve problems
3. Analyze real-world examples of catalysts
4. Evaluate and communicate understanding of catalysts

KEY CONCEPTS:
- Fundamental principles of catalysts
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about catalysts
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to catalysts
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of catalysts systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying catalysts concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply catalysts to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of catalysts
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies catalysts correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Catalysts' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Acids and Bases
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Acids and Bases' AND grade_level_min = 7),
  'Acids and Bases Topic Guide', 'pH scale and neutralization reactions',
  'ACIDS AND BASES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to acids and bases
2. Apply acids and bases concepts to solve problems
3. Analyze real-world examples of acids and bases
4. Evaluate and communicate understanding of acids and bases

KEY CONCEPTS:
- Fundamental principles of acids and bases
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about acids and bases
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to acids and bases
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of acids and bases systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying acids and bases concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply acids and bases to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of acids and bases
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies acids and bases correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Acids and Bases' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Real-World Reactions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Real-World Reactions' AND grade_level_min = 7),
  'Real-World Reactions Topic Guide', 'Chemistry applications in everyday life',
  'REAL-WORLD REACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to real-world reactions
2. Apply real-world reactions concepts to solve problems
3. Analyze real-world examples of real-world reactions
4. Evaluate and communicate understanding of real-world reactions

KEY CONCEPTS:
- Fundamental principles of real-world reactions
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about real-world reactions
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to real-world reactions
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of real-world reactions systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying real-world reactions concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply real-world reactions to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of real-world reactions
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies real-world reactions correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Real-World Reactions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- BODY SYSTEMS UNIT (11 topics)
-- ============================================================================

-- Circulatory System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Circulatory System' AND grade_level_min = 7),
  'Circulatory System Topic Guide', 'Heart, blood vessels, and blood transport',
  'CIRCULATORY SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to circulatory system
2. Apply circulatory system concepts to solve problems
3. Analyze real-world examples of circulatory system
4. Evaluate and communicate understanding of circulatory system

KEY CONCEPTS:
- Fundamental principles of circulatory system
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about circulatory system
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to circulatory system
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of circulatory system systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying circulatory system concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply circulatory system to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of circulatory system
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies circulatory system correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Circulatory System' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Respiratory System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Respiratory System' AND grade_level_min = 7),
  'Respiratory System Topic Guide', 'Lungs and gas exchange mechanisms',
  'RESPIRATORY SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to respiratory system
2. Apply respiratory system concepts to solve problems
3. Analyze real-world examples of respiratory system
4. Evaluate and communicate understanding of respiratory system

KEY CONCEPTS:
- Fundamental principles of respiratory system
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about respiratory system
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to respiratory system
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of respiratory system systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying respiratory system concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply respiratory system to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of respiratory system
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies respiratory system correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Respiratory System' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Digestive System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Digestive System' AND grade_level_min = 7),
  'Digestive System Topic Guide', 'Breaking down and absorbing nutrients',
  'DIGESTIVE SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to digestive system
2. Apply digestive system concepts to solve problems
3. Analyze real-world examples of digestive system
4. Evaluate and communicate understanding of digestive system

KEY CONCEPTS:
- Fundamental principles of digestive system
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about digestive system
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to digestive system
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of digestive system systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying digestive system concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply digestive system to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of digestive system
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies digestive system correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Digestive System' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Nervous System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Nervous System' AND grade_level_min = 7),
  'Nervous System Topic Guide', 'Brain, spinal cord, and neural communication',
  'NERVOUS SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to nervous system
2. Apply nervous system concepts to solve problems
3. Analyze real-world examples of nervous system
4. Evaluate and communicate understanding of nervous system

KEY CONCEPTS:
- Fundamental principles of nervous system
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about nervous system
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to nervous system
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of nervous system systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying nervous system concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply nervous system to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of nervous system
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies nervous system correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Nervous System' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Endocrine System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Endocrine System' AND grade_level_min = 7),
  'Endocrine System Topic Guide', 'Hormones and chemical regulation',
  'ENDOCRINE SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to endocrine system
2. Apply endocrine system concepts to solve problems
3. Analyze real-world examples of endocrine system
4. Evaluate and communicate understanding of endocrine system

KEY CONCEPTS:
- Fundamental principles of endocrine system
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about endocrine system
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to endocrine system
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of endocrine system systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying endocrine system concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply endocrine system to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of endocrine system
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies endocrine system correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Endocrine System' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Muscular System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Muscular System' AND grade_level_min = 7),
  'Muscular System Topic Guide', 'Muscles and movement generation',
  'MUSCULAR SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to muscular system
2. Apply muscular system concepts to solve problems
3. Analyze real-world examples of muscular system
4. Evaluate and communicate understanding of muscular system

KEY CONCEPTS:
- Fundamental principles of muscular system
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about muscular system
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to muscular system
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of muscular system systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying muscular system concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply muscular system to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of muscular system
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies muscular system correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Muscular System' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Skeletal System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Skeletal System' AND grade_level_min = 7),
  'Skeletal System Topic Guide', 'Bones, joints, and structural support',
  'SKELETAL SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to skeletal system
2. Apply skeletal system concepts to solve problems
3. Analyze real-world examples of skeletal system
4. Evaluate and communicate understanding of skeletal system

KEY CONCEPTS:
- Fundamental principles of skeletal system
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about skeletal system
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to skeletal system
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of skeletal system systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying skeletal system concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply skeletal system to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of skeletal system
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies skeletal system correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Skeletal System' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Immune System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Immune System' AND grade_level_min = 7),
  'Immune System Topic Guide', 'Defense mechanisms against pathogens',
  'IMMUNE SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to immune system
2. Apply immune system concepts to solve problems
3. Analyze real-world examples of immune system
4. Evaluate and communicate understanding of immune system

KEY CONCEPTS:
- Fundamental principles of immune system
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about immune system
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to immune system
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of immune system systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying immune system concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply immune system to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of immune system
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies immune system correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Immune System' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Reproductive System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Reproductive System' AND grade_level_min = 7),
  'Reproductive System Topic Guide', 'Human reproduction and development',
  'REPRODUCTIVE SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to reproductive system
2. Apply reproductive system concepts to solve problems
3. Analyze real-world examples of reproductive system
4. Evaluate and communicate understanding of reproductive system

KEY CONCEPTS:
- Fundamental principles of reproductive system
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about reproductive system
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to reproductive system
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of reproductive system systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying reproductive system concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply reproductive system to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of reproductive system
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies reproductive system correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reproductive System' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Homeostasis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Homeostasis' AND grade_level_min = 7),
  'Homeostasis Topic Guide', 'Maintaining internal balance and stability',
  'HOMEOSTASIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to homeostasis
2. Apply homeostasis concepts to solve problems
3. Analyze real-world examples of homeostasis
4. Evaluate and communicate understanding of homeostasis

KEY CONCEPTS:
- Fundamental principles of homeostasis
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about homeostasis
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to homeostasis
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of homeostasis systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying homeostasis concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply homeostasis to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of homeostasis
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies homeostasis correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Homeostasis' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Disease and Health
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Disease and Health' AND grade_level_min = 7),
  'Disease and Health Topic Guide', 'How body systems can malfunction',
  'DISEASE AND HEALTH - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to disease and health
2. Apply disease and health concepts to solve problems
3. Analyze real-world examples of disease and health
4. Evaluate and communicate understanding of disease and health

KEY CONCEPTS:
- Fundamental principles of disease and health
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about disease and health
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to disease and health
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of disease and health systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying disease and health concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply disease and health to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of disease and health
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies disease and health correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Disease and Health' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CELLS AND ORGANISMS UNIT (10 topics)
-- ============================================================================

-- Cell to Organism
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cell to Organism' AND grade_level_min = 7),
  'Cell to Organism Topic Guide', 'Levels of biological organization',
  'CELL TO ORGANISM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to cell to organism
2. Apply cell to organism concepts to solve problems
3. Analyze real-world examples of cell to organism
4. Evaluate and communicate understanding of cell to organism

KEY CONCEPTS:
- Fundamental principles of cell to organism
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about cell to organism
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to cell to organism
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of cell to organism systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying cell to organism concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply cell to organism to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of cell to organism
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies cell to organism correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cell to Organism' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Specialized Cells
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Specialized Cells' AND grade_level_min = 7),
  'Specialized Cells Topic Guide', 'Different cell types for different functions',
  'SPECIALIZED CELLS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to specialized cells
2. Apply specialized cells concepts to solve problems
3. Analyze real-world examples of specialized cells
4. Evaluate and communicate understanding of specialized cells

KEY CONCEPTS:
- Fundamental principles of specialized cells
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about specialized cells
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to specialized cells
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of specialized cells systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying specialized cells concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply specialized cells to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of specialized cells
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies specialized cells correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Specialized Cells' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Tissues
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Tissues' AND grade_level_min = 7),
  'Tissues Topic Guide', 'Groups of similar cells working together',
  'TISSUES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to tissues
2. Apply tissues concepts to solve problems
3. Analyze real-world examples of tissues
4. Evaluate and communicate understanding of tissues

KEY CONCEPTS:
- Fundamental principles of tissues
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about tissues
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to tissues
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of tissues systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying tissues concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply tissues to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of tissues
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies tissues correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Tissues' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Organs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Organs' AND grade_level_min = 7),
  'Organs Topic Guide', 'Tissues combined into functional structures',
  'ORGANS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to organs
2. Apply organs concepts to solve problems
3. Analyze real-world examples of organs
4. Evaluate and communicate understanding of organs

KEY CONCEPTS:
- Fundamental principles of organs
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about organs
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to organs
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of organs systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying organs concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply organs to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of organs
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies organs correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Organs' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Organ Systems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Organ Systems' AND grade_level_min = 7),
  'Organ Systems Topic Guide', 'Organs working together for major functions',
  'ORGAN SYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to organ systems
2. Apply organ systems concepts to solve problems
3. Analyze real-world examples of organ systems
4. Evaluate and communicate understanding of organ systems

KEY CONCEPTS:
- Fundamental principles of organ systems
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about organ systems
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to organ systems
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of organ systems systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying organ systems concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply organ systems to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of organ systems
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies organ systems correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Organ Systems' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Classification Systems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Classification Systems' AND grade_level_min = 7),
  'Classification Systems Topic Guide', 'Organizing and naming living things',
  'CLASSIFICATION SYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to classification systems
2. Apply classification systems concepts to solve problems
3. Analyze real-world examples of classification systems
4. Evaluate and communicate understanding of classification systems

KEY CONCEPTS:
- Fundamental principles of classification systems
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about classification systems
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to classification systems
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of classification systems systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying classification systems concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply classification systems to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of classification systems
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies classification systems correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Classification Systems' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Domains and Kingdoms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Domains and Kingdoms' AND grade_level_min = 7),
  'Domains and Kingdoms Topic Guide', 'Major divisions of life on Earth',
  'DOMAINS AND KINGDOMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to domains and kingdoms
2. Apply domains and kingdoms concepts to solve problems
3. Analyze real-world examples of domains and kingdoms
4. Evaluate and communicate understanding of domains and kingdoms

KEY CONCEPTS:
- Fundamental principles of domains and kingdoms
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about domains and kingdoms
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to domains and kingdoms
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of domains and kingdoms systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying domains and kingdoms concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply domains and kingdoms to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of domains and kingdoms
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies domains and kingdoms correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Domains and Kingdoms' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Bacteria and Archaea
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Bacteria and Archaea' AND grade_level_min = 7),
  'Bacteria and Archaea Topic Guide', 'Prokaryotic organisms and their roles',
  'BACTERIA AND ARCHAEA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to bacteria and archaea
2. Apply bacteria and archaea concepts to solve problems
3. Analyze real-world examples of bacteria and archaea
4. Evaluate and communicate understanding of bacteria and archaea

KEY CONCEPTS:
- Fundamental principles of bacteria and archaea
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about bacteria and archaea
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to bacteria and archaea
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of bacteria and archaea systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying bacteria and archaea concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply bacteria and archaea to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of bacteria and archaea
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies bacteria and archaea correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Bacteria and Archaea' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Protists and Fungi
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Protists and Fungi' AND grade_level_min = 7),
  'Protists and Fungi Topic Guide', 'Diverse eukaryotic organisms',
  'PROTISTS AND FUNGI - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to protists and fungi
2. Apply protists and fungi concepts to solve problems
3. Analyze real-world examples of protists and fungi
4. Evaluate and communicate understanding of protists and fungi

KEY CONCEPTS:
- Fundamental principles of protists and fungi
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about protists and fungi
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to protists and fungi
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of protists and fungi systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying protists and fungi concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply protists and fungi to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of protists and fungi
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies protists and fungi correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Protists and Fungi' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Plants and Animals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Plants and Animals' AND grade_level_min = 7),
  'Plants and Animals Topic Guide', 'Complex multicellular life forms',
  'PLANTS AND ANIMALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to plants and animals
2. Apply plants and animals concepts to solve problems
3. Analyze real-world examples of plants and animals
4. Evaluate and communicate understanding of plants and animals

KEY CONCEPTS:
- Fundamental principles of plants and animals
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about plants and animals
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to plants and animals
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of plants and animals systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying plants and animals concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply plants and animals to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of plants and animals
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies plants and animals correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Plants and Animals' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ECOLOGY AND ENVIRONMENT UNIT (10 topics)
-- ============================================================================

-- Ecosystem Dynamics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Ecosystem Dynamics' AND grade_level_min = 7),
  'Ecosystem Dynamics Topic Guide', 'How ecosystems function and interact',
  'ECOSYSTEM DYNAMICS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to ecosystem dynamics
2. Apply ecosystem dynamics concepts to solve problems
3. Analyze real-world examples of ecosystem dynamics
4. Evaluate and communicate understanding of ecosystem dynamics

KEY CONCEPTS:
- Fundamental principles of ecosystem dynamics
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about ecosystem dynamics
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to ecosystem dynamics
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of ecosystem dynamics systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying ecosystem dynamics concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply ecosystem dynamics to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of ecosystem dynamics
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies ecosystem dynamics correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ecosystem Dynamics' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Energy Flow
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Energy Flow' AND grade_level_min = 7),
  'Energy Flow Topic Guide', 'Transfer of energy through trophic levels',
  'ENERGY FLOW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to energy flow
2. Apply energy flow concepts to solve problems
3. Analyze real-world examples of energy flow
4. Evaluate and communicate understanding of energy flow

KEY CONCEPTS:
- Fundamental principles of energy flow
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about energy flow
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to energy flow
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of energy flow systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying energy flow concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply energy flow to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of energy flow
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies energy flow correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Energy Flow' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Carbon Cycle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Carbon Cycle' AND grade_level_min = 7),
  'Carbon Cycle Topic Guide', 'Carbon movement through Earth systems',
  'CARBON CYCLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to carbon cycle
2. Apply carbon cycle concepts to solve problems
3. Analyze real-world examples of carbon cycle
4. Evaluate and communicate understanding of carbon cycle

KEY CONCEPTS:
- Fundamental principles of carbon cycle
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about carbon cycle
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to carbon cycle
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of carbon cycle systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying carbon cycle concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply carbon cycle to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of carbon cycle
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies carbon cycle correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Carbon Cycle' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Nitrogen Cycle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Nitrogen Cycle' AND grade_level_min = 7),
  'Nitrogen Cycle Topic Guide', 'Nitrogen transformations in ecosystems',
  'NITROGEN CYCLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to nitrogen cycle
2. Apply nitrogen cycle concepts to solve problems
3. Analyze real-world examples of nitrogen cycle
4. Evaluate and communicate understanding of nitrogen cycle

KEY CONCEPTS:
- Fundamental principles of nitrogen cycle
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about nitrogen cycle
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to nitrogen cycle
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of nitrogen cycle systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying nitrogen cycle concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply nitrogen cycle to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of nitrogen cycle
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies nitrogen cycle correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Nitrogen Cycle' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Water Cycle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Water Cycle' AND grade_level_min = 7),
  'Water Cycle Topic Guide', 'Water movement through hydrologic cycle',
  'WATER CYCLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to water cycle
2. Apply water cycle concepts to solve problems
3. Analyze real-world examples of water cycle
4. Evaluate and communicate understanding of water cycle

KEY CONCEPTS:
- Fundamental principles of water cycle
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about water cycle
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to water cycle
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of water cycle systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying water cycle concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply water cycle to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of water cycle
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies water cycle correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Water Cycle' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Population Ecology
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Population Ecology' AND grade_level_min = 7),
  'Population Ecology Topic Guide', 'Factors affecting population size and growth',
  'POPULATION ECOLOGY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to population ecology
2. Apply population ecology concepts to solve problems
3. Analyze real-world examples of population ecology
4. Evaluate and communicate understanding of population ecology

KEY CONCEPTS:
- Fundamental principles of population ecology
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about population ecology
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to population ecology
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of population ecology systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying population ecology concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply population ecology to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of population ecology
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies population ecology correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Population Ecology' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Community Interactions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Community Interactions' AND grade_level_min = 7),
  'Community Interactions Topic Guide', 'Species relationships and interactions',
  'COMMUNITY INTERACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to community interactions
2. Apply community interactions concepts to solve problems
3. Analyze real-world examples of community interactions
4. Evaluate and communicate understanding of community interactions

KEY CONCEPTS:
- Fundamental principles of community interactions
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about community interactions
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to community interactions
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of community interactions systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying community interactions concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply community interactions to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of community interactions
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies community interactions correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Community Interactions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Biodiversity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Biodiversity' AND grade_level_min = 7),
  'Biodiversity Topic Guide', 'Variety of life and its importance',
  'BIODIVERSITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to biodiversity
2. Apply biodiversity concepts to solve problems
3. Analyze real-world examples of biodiversity
4. Evaluate and communicate understanding of biodiversity

KEY CONCEPTS:
- Fundamental principles of biodiversity
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about biodiversity
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to biodiversity
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of biodiversity systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying biodiversity concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply biodiversity to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of biodiversity
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies biodiversity correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Biodiversity' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Environmental Issues
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Environmental Issues' AND grade_level_min = 7),
  'Environmental Issues Topic Guide', 'Pollution, habitat loss, climate change',
  'ENVIRONMENTAL ISSUES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to environmental issues
2. Apply environmental issues concepts to solve problems
3. Analyze real-world examples of environmental issues
4. Evaluate and communicate understanding of environmental issues

KEY CONCEPTS:
- Fundamental principles of environmental issues
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about environmental issues
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to environmental issues
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of environmental issues systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying environmental issues concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply environmental issues to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of environmental issues
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies environmental issues correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Environmental Issues' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Conservation Strategies
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Conservation Strategies' AND grade_level_min = 7),
  'Conservation Strategies Topic Guide', 'Protecting ecosystems and species',
  'CONSERVATION STRATEGIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to conservation strategies
2. Apply conservation strategies concepts to solve problems
3. Analyze real-world examples of conservation strategies
4. Evaluate and communicate understanding of conservation strategies

KEY CONCEPTS:
- Fundamental principles of conservation strategies
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about conservation strategies
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to conservation strategies
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of conservation strategies systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying conservation strategies concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply conservation strategies to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of conservation strategies
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies conservation strategies correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Conservation Strategies' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EARTH'S HISTORY UNIT (10 topics)
-- ============================================================================

-- Geologic Time Scale
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Geologic Time Scale' AND grade_level_min = 7),
  'Geologic Time Scale Topic Guide', 'Dividing Earth''s 4.6 billion year history',
  'GEOLOGIC TIME SCALE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to geologic time scale
2. Apply geologic time scale concepts to solve problems
3. Analyze real-world examples of geologic time scale
4. Evaluate and communicate understanding of geologic time scale

KEY CONCEPTS:
- Fundamental principles of geologic time scale
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about geologic time scale
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to geologic time scale
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of geologic time scale systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying geologic time scale concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply geologic time scale to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of geologic time scale
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies geologic time scale correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Geologic Time Scale' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Eons, Eras, and Periods
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Eons, Eras, and Periods' AND grade_level_min = 7),
  'Eons, Eras, and Periods Topic Guide', 'Major time divisions and their characteristics',
  'EONS, ERAS, AND PERIODS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to eons, eras, and periods
2. Apply eons, eras, and periods concepts to solve problems
3. Analyze real-world examples of eons, eras, and periods
4. Evaluate and communicate understanding of eons, eras, and periods

KEY CONCEPTS:
- Fundamental principles of eons, eras, and periods
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about eons, eras, and periods
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to eons, eras, and periods
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of eons, eras, and periods systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying eons, eras, and periods concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply eons, eras, and periods to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of eons, eras, and periods
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies eons, eras, and periods correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Eons, Eras, and Periods' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Relative Dating
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Relative Dating' AND grade_level_min = 7),
  'Relative Dating Topic Guide', 'Ordering events without absolute ages',
  'RELATIVE DATING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to relative dating
2. Apply relative dating concepts to solve problems
3. Analyze real-world examples of relative dating
4. Evaluate and communicate understanding of relative dating

KEY CONCEPTS:
- Fundamental principles of relative dating
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about relative dating
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to relative dating
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of relative dating systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying relative dating concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply relative dating to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of relative dating
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies relative dating correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Relative Dating' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Absolute Dating
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Absolute Dating' AND grade_level_min = 7),
  'Absolute Dating Topic Guide', 'Radiometric and other dating techniques',
  'ABSOLUTE DATING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to absolute dating
2. Apply absolute dating concepts to solve problems
3. Analyze real-world examples of absolute dating
4. Evaluate and communicate understanding of absolute dating

KEY CONCEPTS:
- Fundamental principles of absolute dating
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about absolute dating
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to absolute dating
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of absolute dating systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying absolute dating concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply absolute dating to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of absolute dating
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies absolute dating correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Dating' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Fossils as Evidence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Fossils as Evidence' AND grade_level_min = 7),
  'Fossils as Evidence Topic Guide', 'What fossils reveal about past life',
  'FOSSILS AS EVIDENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to fossils as evidence
2. Apply fossils as evidence concepts to solve problems
3. Analyze real-world examples of fossils as evidence
4. Evaluate and communicate understanding of fossils as evidence

KEY CONCEPTS:
- Fundamental principles of fossils as evidence
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about fossils as evidence
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to fossils as evidence
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of fossils as evidence systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying fossils as evidence concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply fossils as evidence to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of fossils as evidence
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies fossils as evidence correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fossils as Evidence' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Mass Extinctions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Mass Extinctions' AND grade_level_min = 7),
  'Mass Extinctions Topic Guide', 'Major extinction events in Earth history',
  'MASS EXTINCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to mass extinctions
2. Apply mass extinctions concepts to solve problems
3. Analyze real-world examples of mass extinctions
4. Evaluate and communicate understanding of mass extinctions

KEY CONCEPTS:
- Fundamental principles of mass extinctions
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about mass extinctions
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to mass extinctions
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of mass extinctions systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying mass extinctions concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply mass extinctions to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of mass extinctions
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies mass extinctions correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mass Extinctions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Early Earth
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Early Earth' AND grade_level_min = 7),
  'Early Earth Topic Guide', 'Formation and early conditions of our planet',
  'EARLY EARTH - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to early earth
2. Apply early earth concepts to solve problems
3. Analyze real-world examples of early earth
4. Evaluate and communicate understanding of early earth

KEY CONCEPTS:
- Fundamental principles of early earth
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about early earth
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to early earth
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of early earth systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying early earth concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply early earth to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of early earth
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies early earth correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Early Earth' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Origin of Life
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Origin of Life' AND grade_level_min = 7),
  'Origin of Life Topic Guide', 'How life may have originated',
  'ORIGIN OF LIFE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to origin of life
2. Apply origin of life concepts to solve problems
3. Analyze real-world examples of origin of life
4. Evaluate and communicate understanding of origin of life

KEY CONCEPTS:
- Fundamental principles of origin of life
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about origin of life
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to origin of life
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of origin of life systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying origin of life concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply origin of life to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of origin of life
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies origin of life correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Origin of Life' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Evolution of Life
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Evolution of Life' AND grade_level_min = 7),
  'Evolution of Life Topic Guide', 'Major changes in life through geologic time',
  'EVOLUTION OF LIFE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to evolution of life
2. Apply evolution of life concepts to solve problems
3. Analyze real-world examples of evolution of life
4. Evaluate and communicate understanding of evolution of life

KEY CONCEPTS:
- Fundamental principles of evolution of life
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about evolution of life
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to evolution of life
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of evolution of life systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying evolution of life concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply evolution of life to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of evolution of life
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies evolution of life correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evolution of Life' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Recent Geologic History
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Recent Geologic History' AND grade_level_min = 7),
  'Recent Geologic History Topic Guide', 'Ice ages and recent Earth changes',
  'RECENT GEOLOGIC HISTORY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to recent geologic history
2. Apply recent geologic history concepts to solve problems
3. Analyze real-world examples of recent geologic history
4. Evaluate and communicate understanding of recent geologic history

KEY CONCEPTS:
- Fundamental principles of recent geologic history
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about recent geologic history
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to recent geologic history
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of recent geologic history systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying recent geologic history concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply recent geologic history to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of recent geologic history
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies recent geologic history correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Recent Geologic History' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- NATURAL RESOURCES UNIT (10 topics)
-- ============================================================================

-- Renewable vs Nonrenewable
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Renewable vs Nonrenewable' AND grade_level_min = 7),
  'Renewable vs Nonrenewable Topic Guide', 'Classifying resource types',
  'RENEWABLE VS NONRENEWABLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to renewable vs nonrenewable
2. Apply renewable vs nonrenewable concepts to solve problems
3. Analyze real-world examples of renewable vs nonrenewable
4. Evaluate and communicate understanding of renewable vs nonrenewable

KEY CONCEPTS:
- Fundamental principles of renewable vs nonrenewable
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about renewable vs nonrenewable
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to renewable vs nonrenewable
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of renewable vs nonrenewable systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying renewable vs nonrenewable concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply renewable vs nonrenewable to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of renewable vs nonrenewable
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies renewable vs nonrenewable correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Renewable vs Nonrenewable' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Fossil Fuels
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Fossil Fuels' AND grade_level_min = 7),
  'Fossil Fuels Topic Guide', 'Formation, extraction, and use of fossil fuels',
  'FOSSIL FUELS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to fossil fuels
2. Apply fossil fuels concepts to solve problems
3. Analyze real-world examples of fossil fuels
4. Evaluate and communicate understanding of fossil fuels

KEY CONCEPTS:
- Fundamental principles of fossil fuels
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about fossil fuels
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to fossil fuels
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of fossil fuels systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying fossil fuels concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply fossil fuels to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of fossil fuels
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies fossil fuels correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fossil Fuels' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Alternative Energy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Alternative Energy' AND grade_level_min = 7),
  'Alternative Energy Topic Guide', 'Solar, wind, geothermal, and other sources',
  'ALTERNATIVE ENERGY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to alternative energy
2. Apply alternative energy concepts to solve problems
3. Analyze real-world examples of alternative energy
4. Evaluate and communicate understanding of alternative energy

KEY CONCEPTS:
- Fundamental principles of alternative energy
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about alternative energy
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to alternative energy
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of alternative energy systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying alternative energy concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply alternative energy to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of alternative energy
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies alternative energy correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Alternative Energy' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Water Resources
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Water Resources' AND grade_level_min = 7),
  'Water Resources Topic Guide', 'Freshwater availability and management',
  'WATER RESOURCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to water resources
2. Apply water resources concepts to solve problems
3. Analyze real-world examples of water resources
4. Evaluate and communicate understanding of water resources

KEY CONCEPTS:
- Fundamental principles of water resources
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about water resources
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to water resources
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of water resources systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying water resources concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply water resources to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of water resources
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies water resources correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Water Resources' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Mineral Resources
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Mineral Resources' AND grade_level_min = 7),
  'Mineral Resources Topic Guide', 'Mining and sustainable mineral use',
  'MINERAL RESOURCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to mineral resources
2. Apply mineral resources concepts to solve problems
3. Analyze real-world examples of mineral resources
4. Evaluate and communicate understanding of mineral resources

KEY CONCEPTS:
- Fundamental principles of mineral resources
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about mineral resources
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to mineral resources
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of mineral resources systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying mineral resources concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply mineral resources to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of mineral resources
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies mineral resources correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mineral Resources' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Soil Resources
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Soil Resources' AND grade_level_min = 7),
  'Soil Resources Topic Guide', 'Soil formation, degradation, and conservation',
  'SOIL RESOURCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to soil resources
2. Apply soil resources concepts to solve problems
3. Analyze real-world examples of soil resources
4. Evaluate and communicate understanding of soil resources

KEY CONCEPTS:
- Fundamental principles of soil resources
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about soil resources
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to soil resources
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of soil resources systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying soil resources concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply soil resources to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of soil resources
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies soil resources correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Soil Resources' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Forest Resources
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Forest Resources' AND grade_level_min = 7),
  'Forest Resources Topic Guide', 'Sustainable forestry practices',
  'FOREST RESOURCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to forest resources
2. Apply forest resources concepts to solve problems
3. Analyze real-world examples of forest resources
4. Evaluate and communicate understanding of forest resources

KEY CONCEPTS:
- Fundamental principles of forest resources
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about forest resources
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to forest resources
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of forest resources systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying forest resources concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply forest resources to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of forest resources
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies forest resources correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Forest Resources' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Resource Extraction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Resource Extraction' AND grade_level_min = 7),
  'Resource Extraction Topic Guide', 'Environmental impacts of resource use',
  'RESOURCE EXTRACTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to resource extraction
2. Apply resource extraction concepts to solve problems
3. Analyze real-world examples of resource extraction
4. Evaluate and communicate understanding of resource extraction

KEY CONCEPTS:
- Fundamental principles of resource extraction
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about resource extraction
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to resource extraction
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of resource extraction systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying resource extraction concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply resource extraction to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of resource extraction
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies resource extraction correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Resource Extraction' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Sustainability
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Sustainability' AND grade_level_min = 7),
  'Sustainability Topic Guide', 'Meeting needs without depleting resources',
  'SUSTAINABILITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to sustainability
2. Apply sustainability concepts to solve problems
3. Analyze real-world examples of sustainability
4. Evaluate and communicate understanding of sustainability

KEY CONCEPTS:
- Fundamental principles of sustainability
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about sustainability
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to sustainability
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of sustainability systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying sustainability concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply sustainability to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of sustainability
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies sustainability correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sustainability' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Resource Management
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Resource Management' AND grade_level_min = 7),
  'Resource Management Topic Guide', 'Planning for long-term resource availability',
  'RESOURCE MANAGEMENT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 6 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to resource management
2. Apply resource management concepts to solve problems
3. Analyze real-world examples of resource management
4. Evaluate and communicate understanding of resource management

KEY CONCEPTS:
- Fundamental principles of resource management
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about resource management
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to resource management
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of resource management systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying resource management concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply resource management to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of resource management
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies resource management correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Resource Management' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- END OF GRADE 7 SCIENCE PROMPTS
-- Total topics: 71
-- ============================================================================
