-- Grade 11 Science Expanded Topic Prompts
-- Comprehensive teaching prompts for all Grade 11 Science topics
-- ============================================================================

-- ============================================================================
-- STOICHIOMETRY UNIT (10 topics)
-- ============================================================================

-- The Mole Concept
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Mole Concept' AND grade_level_min = 11),
  'The Mole Concept Topic Guide', 'Avogadro''s number and counting atoms',
  'THE MOLE CONCEPT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 10 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to the mole concept
2. Apply the mole concept concepts to solve problems
3. Analyze real-world examples of the mole concept
4. Evaluate and communicate understanding of the mole concept

KEY CONCEPTS:
- Fundamental principles of the mole concept
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about the mole concept
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to the mole concept
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of the mole concept systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying the mole concept concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply the mole concept to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of the mole concept
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies the mole concept correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Mole Concept' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Molar Mass
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Molar Mass' AND grade_level_min = 11),
  'Molar Mass Topic Guide', 'Calculating formula mass from periodic table',
  'MOLAR MASS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 10 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to molar mass
2. Apply molar mass concepts to solve problems
3. Analyze real-world examples of molar mass
4. Evaluate and communicate understanding of molar mass

KEY CONCEPTS:
- Fundamental principles of molar mass
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about molar mass
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to molar mass
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of molar mass systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying molar mass concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply molar mass to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of molar mass
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies molar mass correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Molar Mass' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Mole Conversions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Mole Conversions' AND grade_level_min = 11),
  'Mole Conversions Topic Guide', 'Converting between grams, moles, and particles',
  'MOLE CONVERSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 10 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to mole conversions
2. Apply mole conversions concepts to solve problems
3. Analyze real-world examples of mole conversions
4. Evaluate and communicate understanding of mole conversions

KEY CONCEPTS:
- Fundamental principles of mole conversions
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about mole conversions
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to mole conversions
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of mole conversions systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying mole conversions concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply mole conversions to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of mole conversions
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies mole conversions correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mole Conversions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Chemical Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Chemical Equations' AND grade_level_min = 11),
  'Chemical Equations Topic Guide', 'Balancing and interpreting equations',
  'CHEMICAL EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 10 Science
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Chemical Equations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Mole Ratios
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Mole Ratios' AND grade_level_min = 11),
  'Mole Ratios Topic Guide', 'Using coefficients for stoichiometric calculations',
  'MOLE RATIOS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 10 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to mole ratios
2. Apply mole ratios concepts to solve problems
3. Analyze real-world examples of mole ratios
4. Evaluate and communicate understanding of mole ratios

KEY CONCEPTS:
- Fundamental principles of mole ratios
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about mole ratios
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to mole ratios
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of mole ratios systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying mole ratios concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply mole ratios to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of mole ratios
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies mole ratios correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mole Ratios' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Mass-to-Mass Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Mass-to-Mass Problems' AND grade_level_min = 11),
  'Mass-to-Mass Problems Topic Guide', 'Converting reactant mass to product mass',
  'MASS-TO-MASS PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 10 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to mass-to-mass problems
2. Apply mass-to-mass problems concepts to solve problems
3. Analyze real-world examples of mass-to-mass problems
4. Evaluate and communicate understanding of mass-to-mass problems

KEY CONCEPTS:
- Fundamental principles of mass-to-mass problems
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about mass-to-mass problems
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to mass-to-mass problems
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of mass-to-mass problems systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying mass-to-mass problems concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply mass-to-mass problems to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of mass-to-mass problems
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies mass-to-mass problems correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mass-to-Mass Problems' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Limiting Reagents
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Limiting Reagents' AND grade_level_min = 11),
  'Limiting Reagents Topic Guide', 'Identifying the limiting reactant',
  'LIMITING REAGENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 10 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to limiting reagents
2. Apply limiting reagents concepts to solve problems
3. Analyze real-world examples of limiting reagents
4. Evaluate and communicate understanding of limiting reagents

KEY CONCEPTS:
- Fundamental principles of limiting reagents
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about limiting reagents
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to limiting reagents
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of limiting reagents systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying limiting reagents concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply limiting reagents to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of limiting reagents
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies limiting reagents correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Limiting Reagents' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Percent Yield
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Percent Yield' AND grade_level_min = 11),
  'Percent Yield Topic Guide', 'Actual yield vs theoretical yield',
  'PERCENT YIELD - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 10 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to percent yield
2. Apply percent yield concepts to solve problems
3. Analyze real-world examples of percent yield
4. Evaluate and communicate understanding of percent yield

KEY CONCEPTS:
- Fundamental principles of percent yield
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about percent yield
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to percent yield
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of percent yield systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying percent yield concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply percent yield to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of percent yield
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies percent yield correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Percent Yield' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Solution Stoichiometry
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Solution Stoichiometry' AND grade_level_min = 11),
  'Solution Stoichiometry Topic Guide', 'Molarity and reactions in solution',
  'SOLUTION STOICHIOMETRY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 10 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to solution stoichiometry
2. Apply solution stoichiometry concepts to solve problems
3. Analyze real-world examples of solution stoichiometry
4. Evaluate and communicate understanding of solution stoichiometry

KEY CONCEPTS:
- Fundamental principles of solution stoichiometry
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about solution stoichiometry
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to solution stoichiometry
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of solution stoichiometry systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying solution stoichiometry concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply solution stoichiometry to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of solution stoichiometry
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies solution stoichiometry correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solution Stoichiometry' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Gas Stoichiometry
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Gas Stoichiometry' AND grade_level_min = 11),
  'Gas Stoichiometry Topic Guide', 'Using ideal gas law in stoichiometry',
  'GAS STOICHIOMETRY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 10 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to gas stoichiometry
2. Apply gas stoichiometry concepts to solve problems
3. Analyze real-world examples of gas stoichiometry
4. Evaluate and communicate understanding of gas stoichiometry

KEY CONCEPTS:
- Fundamental principles of gas stoichiometry
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about gas stoichiometry
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to gas stoichiometry
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of gas stoichiometry systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying gas stoichiometry concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply gas stoichiometry to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of gas stoichiometry
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies gas stoichiometry correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Gas Stoichiometry' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- END OF GRADE 11 SCIENCE PROMPTS
-- Total topics: 10
-- ============================================================================
