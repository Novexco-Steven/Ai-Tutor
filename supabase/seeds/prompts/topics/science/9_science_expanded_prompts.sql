-- Grade 9 Science Expanded Topic Prompts
-- Comprehensive teaching prompts for all Grade 9 Science topics
-- ============================================================================

-- ============================================================================
-- ATOMIC STRUCTURE UNIT (10 topics)
-- ============================================================================

-- History of Atomic Theory
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'History of Atomic Theory' AND grade_level_min = 9),
  'History of Atomic Theory Topic Guide', 'From Dalton to modern quantum model',
  'HISTORY OF ATOMIC THEORY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to history of atomic theory
2. Apply history of atomic theory concepts to solve problems
3. Analyze real-world examples of history of atomic theory
4. Evaluate and communicate understanding of history of atomic theory

KEY CONCEPTS:
- Fundamental principles of history of atomic theory
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about history of atomic theory
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to history of atomic theory
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of history of atomic theory systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying history of atomic theory concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply history of atomic theory to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of history of atomic theory
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies history of atomic theory correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'History of Atomic Theory' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Subatomic Particles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Subatomic Particles' AND grade_level_min = 9),
  'Subatomic Particles Topic Guide', 'Protons, neutrons, electrons in detail',
  'SUBATOMIC PARTICLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to subatomic particles
2. Apply subatomic particles concepts to solve problems
3. Analyze real-world examples of subatomic particles
4. Evaluate and communicate understanding of subatomic particles

KEY CONCEPTS:
- Fundamental principles of subatomic particles
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about subatomic particles
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to subatomic particles
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of subatomic particles systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying subatomic particles concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply subatomic particles to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of subatomic particles
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies subatomic particles correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subatomic Particles' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Atomic Number and Mass
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Atomic Number and Mass' AND grade_level_min = 9),
  'Atomic Number and Mass Topic Guide', 'Identifying and characterizing elements',
  'ATOMIC NUMBER AND MASS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Atomic Number and Mass' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Isotopes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Isotopes' AND grade_level_min = 9),
  'Isotopes Topic Guide', 'Atoms with different neutron counts',
  'ISOTOPES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to isotopes
2. Apply isotopes concepts to solve problems
3. Analyze real-world examples of isotopes
4. Evaluate and communicate understanding of isotopes

KEY CONCEPTS:
- Fundamental principles of isotopes
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about isotopes
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to isotopes
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of isotopes systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying isotopes concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply isotopes to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of isotopes
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies isotopes correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Isotopes' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Electron Configuration
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Electron Configuration' AND grade_level_min = 9),
  'Electron Configuration Topic Guide', 'Organizing electrons in orbitals',
  'ELECTRON CONFIGURATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to electron configuration
2. Apply electron configuration concepts to solve problems
3. Analyze real-world examples of electron configuration
4. Evaluate and communicate understanding of electron configuration

KEY CONCEPTS:
- Fundamental principles of electron configuration
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about electron configuration
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to electron configuration
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of electron configuration systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying electron configuration concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply electron configuration to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of electron configuration
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies electron configuration correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Electron Configuration' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Quantum Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Quantum Numbers' AND grade_level_min = 9),
  'Quantum Numbers Topic Guide', 'Describing electron locations mathematically',
  'QUANTUM NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to quantum numbers
2. Apply quantum numbers concepts to solve problems
3. Analyze real-world examples of quantum numbers
4. Evaluate and communicate understanding of quantum numbers

KEY CONCEPTS:
- Fundamental principles of quantum numbers
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about quantum numbers
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to quantum numbers
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of quantum numbers systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying quantum numbers concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply quantum numbers to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of quantum numbers
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies quantum numbers correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quantum Numbers' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Periodic Table Organization
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Periodic Table Organization' AND grade_level_min = 9),
  'Periodic Table Organization Topic Guide', 'Groups, periods, and blocks',
  'PERIODIC TABLE ORGANIZATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to periodic table organization
2. Apply periodic table organization concepts to solve problems
3. Analyze real-world examples of periodic table organization
4. Evaluate and communicate understanding of periodic table organization

KEY CONCEPTS:
- Fundamental principles of periodic table organization
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about periodic table organization
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to periodic table organization
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of periodic table organization systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying periodic table organization concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply periodic table organization to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of periodic table organization
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies periodic table organization correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Periodic Table Organization' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Periodic Trends
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Periodic Trends' AND grade_level_min = 9),
  'Periodic Trends Topic Guide', 'Atomic radius, ionization energy, electronegativity',
  'PERIODIC TRENDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Periodic Trends' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Valence Electrons
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Valence Electrons' AND grade_level_min = 9),
  'Valence Electrons Topic Guide', 'Outer shell electrons and reactivity',
  'VALENCE ELECTRONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Valence Electrons' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Electron Dot Diagrams
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Electron Dot Diagrams' AND grade_level_min = 9),
  'Electron Dot Diagrams Topic Guide', 'Lewis structures for atoms',
  'ELECTRON DOT DIAGRAMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to electron dot diagrams
2. Apply electron dot diagrams concepts to solve problems
3. Analyze real-world examples of electron dot diagrams
4. Evaluate and communicate understanding of electron dot diagrams

KEY CONCEPTS:
- Fundamental principles of electron dot diagrams
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about electron dot diagrams
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to electron dot diagrams
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of electron dot diagrams systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying electron dot diagrams concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply electron dot diagrams to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of electron dot diagrams
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies electron dot diagrams correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Electron Dot Diagrams' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CHEMICAL BONDING UNIT (10 topics)
-- ============================================================================

-- Why Atoms Bond
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Why Atoms Bond' AND grade_level_min = 9),
  'Why Atoms Bond Topic Guide', 'Achieving stability through bonding',
  'WHY ATOMS BOND - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to why atoms bond
2. Apply why atoms bond concepts to solve problems
3. Analyze real-world examples of why atoms bond
4. Evaluate and communicate understanding of why atoms bond

KEY CONCEPTS:
- Fundamental principles of why atoms bond
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about why atoms bond
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to why atoms bond
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of why atoms bond systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying why atoms bond concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply why atoms bond to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of why atoms bond
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies why atoms bond correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Why Atoms Bond' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Ionic Bonds
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Ionic Bonds' AND grade_level_min = 9),
  'Ionic Bonds Topic Guide', 'Electron transfer and electrostatic attraction',
  'IONIC BONDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to ionic bonds
2. Apply ionic bonds concepts to solve problems
3. Analyze real-world examples of ionic bonds
4. Evaluate and communicate understanding of ionic bonds

KEY CONCEPTS:
- Fundamental principles of ionic bonds
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about ionic bonds
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to ionic bonds
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of ionic bonds systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying ionic bonds concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply ionic bonds to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of ionic bonds
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies ionic bonds correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ionic Bonds' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Covalent Bonds
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Covalent Bonds' AND grade_level_min = 9),
  'Covalent Bonds Topic Guide', 'Electron sharing between nonmetals',
  'COVALENT BONDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to covalent bonds
2. Apply covalent bonds concepts to solve problems
3. Analyze real-world examples of covalent bonds
4. Evaluate and communicate understanding of covalent bonds

KEY CONCEPTS:
- Fundamental principles of covalent bonds
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about covalent bonds
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to covalent bonds
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of covalent bonds systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying covalent bonds concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply covalent bonds to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of covalent bonds
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies covalent bonds correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Covalent Bonds' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Metallic Bonds
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Metallic Bonds' AND grade_level_min = 9),
  'Metallic Bonds Topic Guide', 'Electron sea model in metals',
  'METALLIC BONDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to metallic bonds
2. Apply metallic bonds concepts to solve problems
3. Analyze real-world examples of metallic bonds
4. Evaluate and communicate understanding of metallic bonds

KEY CONCEPTS:
- Fundamental principles of metallic bonds
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about metallic bonds
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to metallic bonds
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of metallic bonds systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying metallic bonds concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply metallic bonds to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of metallic bonds
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies metallic bonds correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Metallic Bonds' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Lewis Structures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Lewis Structures' AND grade_level_min = 9),
  'Lewis Structures Topic Guide', 'Drawing molecular structures',
  'LEWIS STRUCTURES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to lewis structures
2. Apply lewis structures concepts to solve problems
3. Analyze real-world examples of lewis structures
4. Evaluate and communicate understanding of lewis structures

KEY CONCEPTS:
- Fundamental principles of lewis structures
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about lewis structures
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to lewis structures
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of lewis structures systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying lewis structures concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply lewis structures to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of lewis structures
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies lewis structures correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Lewis Structures' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- VSEPR Theory
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'VSEPR Theory' AND grade_level_min = 9),
  'VSEPR Theory Topic Guide', 'Predicting molecular geometry',
  'VSEPR THEORY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to vsepr theory
2. Apply vsepr theory concepts to solve problems
3. Analyze real-world examples of vsepr theory
4. Evaluate and communicate understanding of vsepr theory

KEY CONCEPTS:
- Fundamental principles of vsepr theory
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about vsepr theory
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to vsepr theory
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of vsepr theory systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying vsepr theory concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply vsepr theory to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of vsepr theory
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies vsepr theory correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'VSEPR Theory' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Polarity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Polarity' AND grade_level_min = 9),
  'Polarity Topic Guide', 'Polar vs nonpolar molecules and bonds',
  'POLARITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to polarity
2. Apply polarity concepts to solve problems
3. Analyze real-world examples of polarity
4. Evaluate and communicate understanding of polarity

KEY CONCEPTS:
- Fundamental principles of polarity
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about polarity
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to polarity
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of polarity systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying polarity concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply polarity to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of polarity
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies polarity correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polarity' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Intermolecular Forces
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Intermolecular Forces' AND grade_level_min = 9),
  'Intermolecular Forces Topic Guide', 'Forces between molecules',
  'INTERMOLECULAR FORCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to intermolecular forces
2. Apply intermolecular forces concepts to solve problems
3. Analyze real-world examples of intermolecular forces
4. Evaluate and communicate understanding of intermolecular forces

KEY CONCEPTS:
- Fundamental principles of intermolecular forces
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about intermolecular forces
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to intermolecular forces
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of intermolecular forces systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying intermolecular forces concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply intermolecular forces to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of intermolecular forces
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies intermolecular forces correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Intermolecular Forces' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Properties and Bonding
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Properties and Bonding' AND grade_level_min = 9),
  'Properties and Bonding Topic Guide', 'How bonding determines material properties',
  'PROPERTIES AND BONDING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to properties and bonding
2. Apply properties and bonding concepts to solve problems
3. Analyze real-world examples of properties and bonding
4. Evaluate and communicate understanding of properties and bonding

KEY CONCEPTS:
- Fundamental principles of properties and bonding
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about properties and bonding
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to properties and bonding
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of properties and bonding systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying properties and bonding concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply properties and bonding to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of properties and bonding
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies properties and bonding correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties and Bonding' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Naming Compounds
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Naming Compounds' AND grade_level_min = 9),
  'Naming Compounds Topic Guide', 'Chemical nomenclature rules',
  'NAMING COMPOUNDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 8 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to naming compounds
2. Apply naming compounds concepts to solve problems
3. Analyze real-world examples of naming compounds
4. Evaluate and communicate understanding of naming compounds

KEY CONCEPTS:
- Fundamental principles of naming compounds
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about naming compounds
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to naming compounds
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of naming compounds systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying naming compounds concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply naming compounds to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of naming compounds
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies naming compounds correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Naming Compounds' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- END OF GRADE 9 SCIENCE PROMPTS
-- Total topics: 20
-- ============================================================================
