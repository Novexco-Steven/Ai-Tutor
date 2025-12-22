-- Grade 10 Science Expanded Topic Prompts
-- Comprehensive teaching prompts for all Grade 10 Science topics
-- ============================================================================

-- ============================================================================
-- CELL STRUCTURE AND FUNCTION UNIT (10 topics)
-- ============================================================================

-- Cell Theory Revisited
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cell Theory Revisited' AND grade_level_min = 10),
  'Cell Theory Revisited Topic Guide', 'Fundamental principles of cell biology',
  'CELL THEORY REVISITED - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to cell theory revisited
2. Apply cell theory revisited concepts to solve problems
3. Analyze real-world examples of cell theory revisited
4. Evaluate and communicate understanding of cell theory revisited

KEY CONCEPTS:
- Fundamental principles of cell theory revisited
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about cell theory revisited
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to cell theory revisited
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of cell theory revisited systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying cell theory revisited concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply cell theory revisited to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of cell theory revisited
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies cell theory revisited correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cell Theory Revisited' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Prokaryotes vs Eukaryotes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Prokaryotes vs Eukaryotes' AND grade_level_min = 10),
  'Prokaryotes vs Eukaryotes Topic Guide', 'Comparing cellular organization',
  'PROKARYOTES VS EUKARYOTES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to prokaryotes vs eukaryotes
2. Apply prokaryotes vs eukaryotes concepts to solve problems
3. Analyze real-world examples of prokaryotes vs eukaryotes
4. Evaluate and communicate understanding of prokaryotes vs eukaryotes

KEY CONCEPTS:
- Fundamental principles of prokaryotes vs eukaryotes
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about prokaryotes vs eukaryotes
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to prokaryotes vs eukaryotes
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of prokaryotes vs eukaryotes systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying prokaryotes vs eukaryotes concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply prokaryotes vs eukaryotes to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of prokaryotes vs eukaryotes
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies prokaryotes vs eukaryotes correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Prokaryotes vs Eukaryotes' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- The Nucleus
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Nucleus' AND grade_level_min = 10),
  'The Nucleus Topic Guide', 'Genetic control center of eukaryotic cells',
  'THE NUCLEUS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to the nucleus
2. Apply the nucleus concepts to solve problems
3. Analyze real-world examples of the nucleus
4. Evaluate and communicate understanding of the nucleus

KEY CONCEPTS:
- Fundamental principles of the nucleus
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about the nucleus
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to the nucleus
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of the nucleus systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying the nucleus concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply the nucleus to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of the nucleus
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies the nucleus correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Nucleus' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Ribosomes and Protein Synthesis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Ribosomes and Protein Synthesis' AND grade_level_min = 10),
  'Ribosomes and Protein Synthesis Topic Guide', 'Making proteins from genetic code',
  'RIBOSOMES AND PROTEIN SYNTHESIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to ribosomes and protein synthesis
2. Apply ribosomes and protein synthesis concepts to solve problems
3. Analyze real-world examples of ribosomes and protein synthesis
4. Evaluate and communicate understanding of ribosomes and protein synthesis

KEY CONCEPTS:
- Fundamental principles of ribosomes and protein synthesis
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about ribosomes and protein synthesis
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to ribosomes and protein synthesis
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of ribosomes and protein synthesis systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying ribosomes and protein synthesis concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply ribosomes and protein synthesis to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of ribosomes and protein synthesis
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies ribosomes and protein synthesis correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ribosomes and Protein Synthesis' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Endomembrane System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Endomembrane System' AND grade_level_min = 10),
  'Endomembrane System Topic Guide', 'ER, Golgi, and vesicular transport',
  'ENDOMEMBRANE SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to endomembrane system
2. Apply endomembrane system concepts to solve problems
3. Analyze real-world examples of endomembrane system
4. Evaluate and communicate understanding of endomembrane system

KEY CONCEPTS:
- Fundamental principles of endomembrane system
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about endomembrane system
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to endomembrane system
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of endomembrane system systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying endomembrane system concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply endomembrane system to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of endomembrane system
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies endomembrane system correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Endomembrane System' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Mitochondria
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Mitochondria' AND grade_level_min = 10),
  'Mitochondria Topic Guide', 'ATP production through cellular respiration',
  'MITOCHONDRIA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to mitochondria
2. Apply mitochondria concepts to solve problems
3. Analyze real-world examples of mitochondria
4. Evaluate and communicate understanding of mitochondria

KEY CONCEPTS:
- Fundamental principles of mitochondria
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about mitochondria
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to mitochondria
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of mitochondria systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying mitochondria concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply mitochondria to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of mitochondria
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies mitochondria correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mitochondria' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Chloroplasts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Chloroplasts' AND grade_level_min = 10),
  'Chloroplasts Topic Guide', 'Photosynthesis and energy capture',
  'CHLOROPLASTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to chloroplasts
2. Apply chloroplasts concepts to solve problems
3. Analyze real-world examples of chloroplasts
4. Evaluate and communicate understanding of chloroplasts

KEY CONCEPTS:
- Fundamental principles of chloroplasts
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about chloroplasts
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to chloroplasts
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of chloroplasts systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying chloroplasts concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply chloroplasts to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of chloroplasts
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies chloroplasts correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Chloroplasts' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Cell Membrane Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cell Membrane Structure' AND grade_level_min = 10),
  'Cell Membrane Structure Topic Guide', 'Fluid mosaic model in detail',
  'CELL MEMBRANE STRUCTURE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to cell membrane structure
2. Apply cell membrane structure concepts to solve problems
3. Analyze real-world examples of cell membrane structure
4. Evaluate and communicate understanding of cell membrane structure

KEY CONCEPTS:
- Fundamental principles of cell membrane structure
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about cell membrane structure
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to cell membrane structure
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of cell membrane structure systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying cell membrane structure concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply cell membrane structure to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of cell membrane structure
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies cell membrane structure correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cell Membrane Structure' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Membrane Transport
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Membrane Transport' AND grade_level_min = 10),
  'Membrane Transport Topic Guide', 'Passive and active transport mechanisms',
  'MEMBRANE TRANSPORT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to membrane transport
2. Apply membrane transport concepts to solve problems
3. Analyze real-world examples of membrane transport
4. Evaluate and communicate understanding of membrane transport

KEY CONCEPTS:
- Fundamental principles of membrane transport
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about membrane transport
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to membrane transport
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of membrane transport systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying membrane transport concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply membrane transport to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of membrane transport
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies membrane transport correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Membrane Transport' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Cell Communication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cell Communication' AND grade_level_min = 10),
  'Cell Communication Topic Guide', 'Signal transduction pathways',
  'CELL COMMUNICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to cell communication
2. Apply cell communication concepts to solve problems
3. Analyze real-world examples of cell communication
4. Evaluate and communicate understanding of cell communication

KEY CONCEPTS:
- Fundamental principles of cell communication
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about cell communication
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to cell communication
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of cell communication systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying cell communication concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply cell communication to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of cell communication
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies cell communication correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cell Communication' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CELLULAR ENERGY UNIT (10 topics)
-- ============================================================================

-- ATP and Energy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'ATP and Energy' AND grade_level_min = 10),
  'ATP and Energy Topic Guide', 'Universal energy currency of cells',
  'ATP AND ENERGY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to atp and energy
2. Apply atp and energy concepts to solve problems
3. Analyze real-world examples of atp and energy
4. Evaluate and communicate understanding of atp and energy

KEY CONCEPTS:
- Fundamental principles of atp and energy
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about atp and energy
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to atp and energy
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of atp and energy systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying atp and energy concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply atp and energy to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of atp and energy
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies atp and energy correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'ATP and Energy' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Enzymes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Enzymes' AND grade_level_min = 10),
  'Enzymes Topic Guide', 'Biological catalysts and reaction kinetics',
  'ENZYMES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to enzymes
2. Apply enzymes concepts to solve problems
3. Analyze real-world examples of enzymes
4. Evaluate and communicate understanding of enzymes

KEY CONCEPTS:
- Fundamental principles of enzymes
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about enzymes
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to enzymes
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of enzymes systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying enzymes concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply enzymes to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of enzymes
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies enzymes correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Enzymes' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Photosynthesis Overview
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Photosynthesis Overview' AND grade_level_min = 10),
  'Photosynthesis Overview Topic Guide', 'Converting light to chemical energy',
  'PHOTOSYNTHESIS OVERVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to photosynthesis overview
2. Apply photosynthesis overview concepts to solve problems
3. Analyze real-world examples of photosynthesis overview
4. Evaluate and communicate understanding of photosynthesis overview

KEY CONCEPTS:
- Fundamental principles of photosynthesis overview
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about photosynthesis overview
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to photosynthesis overview
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of photosynthesis overview systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying photosynthesis overview concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply photosynthesis overview to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of photosynthesis overview
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies photosynthesis overview correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Photosynthesis Overview' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Light Reactions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Light Reactions' AND grade_level_min = 10),
  'Light Reactions Topic Guide', 'Capturing light energy in thylakoids',
  'LIGHT REACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to light reactions
2. Apply light reactions concepts to solve problems
3. Analyze real-world examples of light reactions
4. Evaluate and communicate understanding of light reactions

KEY CONCEPTS:
- Fundamental principles of light reactions
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about light reactions
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to light reactions
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of light reactions systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying light reactions concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply light reactions to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of light reactions
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies light reactions correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Light Reactions' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Calvin Cycle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Calvin Cycle' AND grade_level_min = 10),
  'Calvin Cycle Topic Guide', 'Carbon fixation and glucose synthesis',
  'CALVIN CYCLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to calvin cycle
2. Apply calvin cycle concepts to solve problems
3. Analyze real-world examples of calvin cycle
4. Evaluate and communicate understanding of calvin cycle

KEY CONCEPTS:
- Fundamental principles of calvin cycle
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about calvin cycle
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to calvin cycle
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of calvin cycle systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying calvin cycle concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply calvin cycle to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of calvin cycle
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies calvin cycle correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Calvin Cycle' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Cellular Respiration Overview
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Cellular Respiration Overview' AND grade_level_min = 10),
  'Cellular Respiration Overview Topic Guide', 'Extracting energy from glucose',
  'CELLULAR RESPIRATION OVERVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to cellular respiration overview
2. Apply cellular respiration overview concepts to solve problems
3. Analyze real-world examples of cellular respiration overview
4. Evaluate and communicate understanding of cellular respiration overview

KEY CONCEPTS:
- Fundamental principles of cellular respiration overview
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about cellular respiration overview
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to cellular respiration overview
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of cellular respiration overview systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying cellular respiration overview concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply cellular respiration overview to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of cellular respiration overview
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies cellular respiration overview correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cellular Respiration Overview' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Glycolysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Glycolysis' AND grade_level_min = 10),
  'Glycolysis Topic Guide', 'Breaking glucose in cytoplasm',
  'GLYCOLYSIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to glycolysis
2. Apply glycolysis concepts to solve problems
3. Analyze real-world examples of glycolysis
4. Evaluate and communicate understanding of glycolysis

KEY CONCEPTS:
- Fundamental principles of glycolysis
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about glycolysis
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to glycolysis
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of glycolysis systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying glycolysis concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply glycolysis to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of glycolysis
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies glycolysis correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Glycolysis' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Krebs Cycle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Krebs Cycle' AND grade_level_min = 10),
  'Krebs Cycle Topic Guide', 'Citric acid cycle in mitochondria',
  'KREBS CYCLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to krebs cycle
2. Apply krebs cycle concepts to solve problems
3. Analyze real-world examples of krebs cycle
4. Evaluate and communicate understanding of krebs cycle

KEY CONCEPTS:
- Fundamental principles of krebs cycle
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about krebs cycle
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to krebs cycle
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of krebs cycle systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying krebs cycle concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply krebs cycle to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of krebs cycle
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies krebs cycle correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Krebs Cycle' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Electron Transport Chain
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Electron Transport Chain' AND grade_level_min = 10),
  'Electron Transport Chain Topic Guide', 'Maximum ATP production via chemiosmosis',
  'ELECTRON TRANSPORT CHAIN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to electron transport chain
2. Apply electron transport chain concepts to solve problems
3. Analyze real-world examples of electron transport chain
4. Evaluate and communicate understanding of electron transport chain

KEY CONCEPTS:
- Fundamental principles of electron transport chain
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about electron transport chain
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to electron transport chain
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of electron transport chain systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying electron transport chain concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply electron transport chain to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of electron transport chain
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies electron transport chain correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Electron Transport Chain' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Fermentation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Fermentation' AND grade_level_min = 10),
  'Fermentation Topic Guide', 'Anaerobic ATP production pathways',
  'FERMENTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 9 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to fermentation
2. Apply fermentation concepts to solve problems
3. Analyze real-world examples of fermentation
4. Evaluate and communicate understanding of fermentation

KEY CONCEPTS:
- Fundamental principles of fermentation
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about fermentation
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to fermentation
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of fermentation systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying fermentation concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply fermentation to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of fermentation
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies fermentation correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fermentation' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- END OF GRADE 10 SCIENCE PROMPTS
-- Total topics: 20
-- ============================================================================
