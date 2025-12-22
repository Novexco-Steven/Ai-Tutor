-- Grade 8 Science Expanded Topic Prompts
-- Comprehensive teaching prompts for all Grade 8 Science topics
-- ============================================================================

-- ============================================================================
-- MOTION AND FORCES UNIT (11 topics)
-- ============================================================================

-- Position and Motion
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Position and Motion' AND grade_level_min = 8),
  'Position and Motion Topic Guide', 'Describing where objects are and how they move',
  'POSITION AND MOTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to position and motion
2. Apply position and motion concepts to solve problems
3. Analyze real-world examples of position and motion
4. Evaluate and communicate understanding of position and motion

KEY CONCEPTS:
- Fundamental principles of position and motion
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about position and motion
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to position and motion
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of position and motion systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying position and motion concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply position and motion to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of position and motion
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies position and motion correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Position and Motion' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Speed and Velocity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Speed and Velocity' AND grade_level_min = 8),
  'Speed and Velocity Topic Guide', 'Rate and direction of motion',
  'SPEED AND VELOCITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to speed and velocity
2. Apply speed and velocity concepts to solve problems
3. Analyze real-world examples of speed and velocity
4. Evaluate and communicate understanding of speed and velocity

KEY CONCEPTS:
- Fundamental principles of speed and velocity
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about speed and velocity
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to speed and velocity
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of speed and velocity systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying speed and velocity concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply speed and velocity to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of speed and velocity
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies speed and velocity correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Speed and Velocity' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Acceleration
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Acceleration' AND grade_level_min = 8),
  'Acceleration Topic Guide', 'Change in velocity over time',
  'ACCELERATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to acceleration
2. Apply acceleration concepts to solve problems
3. Analyze real-world examples of acceleration
4. Evaluate and communicate understanding of acceleration

KEY CONCEPTS:
- Fundamental principles of acceleration
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about acceleration
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to acceleration
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of acceleration systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying acceleration concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply acceleration to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of acceleration
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies acceleration correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Acceleration' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Motion Graphs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Motion Graphs' AND grade_level_min = 8),
  'Motion Graphs Topic Guide', 'Interpreting distance-time and velocity-time graphs',
  'MOTION GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to motion graphs
2. Apply motion graphs concepts to solve problems
3. Analyze real-world examples of motion graphs
4. Evaluate and communicate understanding of motion graphs

KEY CONCEPTS:
- Fundamental principles of motion graphs
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about motion graphs
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to motion graphs
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of motion graphs systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying motion graphs concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply motion graphs to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of motion graphs
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies motion graphs correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Motion Graphs' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Newton''s First Law
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Newton''s First Law' AND grade_level_min = 8),
  'Newton''s First Law Topic Guide', 'Inertia and balanced forces',
  'NEWTON''S FIRST LAW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to newton''s first law
2. Apply newton''s first law concepts to solve problems
3. Analyze real-world examples of newton''s first law
4. Evaluate and communicate understanding of newton''s first law

KEY CONCEPTS:
- Fundamental principles of newton''s first law
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about newton''s first law
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to newton''s first law
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of newton''s first law systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying newton''s first law concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply newton''s first law to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of newton''s first law
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies newton''s first law correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Newton''s First Law' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Newton''s Second Law
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Newton''s Second Law' AND grade_level_min = 8),
  'Newton''s Second Law Topic Guide', 'Force equals mass times acceleration',
  'NEWTON''S SECOND LAW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to newton''s second law
2. Apply newton''s second law concepts to solve problems
3. Analyze real-world examples of newton''s second law
4. Evaluate and communicate understanding of newton''s second law

KEY CONCEPTS:
- Fundamental principles of newton''s second law
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about newton''s second law
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to newton''s second law
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of newton''s second law systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying newton''s second law concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply newton''s second law to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of newton''s second law
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies newton''s second law correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Newton''s Second Law' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Newton''s Third Law
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Newton''s Third Law' AND grade_level_min = 8),
  'Newton''s Third Law Topic Guide', 'Action and reaction force pairs',
  'NEWTON''S THIRD LAW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to newton''s third law
2. Apply newton''s third law concepts to solve problems
3. Analyze real-world examples of newton''s third law
4. Evaluate and communicate understanding of newton''s third law

KEY CONCEPTS:
- Fundamental principles of newton''s third law
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about newton''s third law
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to newton''s third law
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of newton''s third law systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying newton''s third law concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply newton''s third law to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of newton''s third law
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies newton''s third law correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Newton''s Third Law' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Friction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Friction' AND grade_level_min = 8),
  'Friction Topic Guide', 'Forces that oppose motion',
  'FRICTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to friction
2. Apply friction concepts to solve problems
3. Analyze real-world examples of friction
4. Evaluate and communicate understanding of friction

KEY CONCEPTS:
- Fundamental principles of friction
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about friction
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to friction
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of friction systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying friction concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply friction to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of friction
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies friction correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Friction' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Gravity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Gravity' AND grade_level_min = 8),
  'Gravity Topic Guide', 'Universal gravitational force',
  'GRAVITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to gravity
2. Apply gravity concepts to solve problems
3. Analyze real-world examples of gravity
4. Evaluate and communicate understanding of gravity

KEY CONCEPTS:
- Fundamental principles of gravity
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about gravity
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to gravity
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of gravity systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying gravity concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply gravity to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of gravity
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies gravity correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Gravity' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Free Body Diagrams
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Free Body Diagrams' AND grade_level_min = 8),
  'Free Body Diagrams Topic Guide', 'Representing forces on objects',
  'FREE BODY DIAGRAMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to free body diagrams
2. Apply free body diagrams concepts to solve problems
3. Analyze real-world examples of free body diagrams
4. Evaluate and communicate understanding of free body diagrams

KEY CONCEPTS:
- Fundamental principles of free body diagrams
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about free body diagrams
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to free body diagrams
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of free body diagrams systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying free body diagrams concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply free body diagrams to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of free body diagrams
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies free body diagrams correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Free Body Diagrams' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Applying Newton''s Laws
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Applying Newton''s Laws' AND grade_level_min = 8),
  'Applying Newton''s Laws Topic Guide', 'Problem solving with forces and motion',
  'APPLYING NEWTON''S LAWS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to applying newton''s laws
2. Apply applying newton''s laws concepts to solve problems
3. Analyze real-world examples of applying newton''s laws
4. Evaluate and communicate understanding of applying newton''s laws

KEY CONCEPTS:
- Fundamental principles of applying newton''s laws
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about applying newton''s laws
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to applying newton''s laws
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of applying newton''s laws systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying applying newton''s laws concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply applying newton''s laws to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of applying newton''s laws
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies applying newton''s laws correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Applying Newton''s Laws' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WAVES AND ENERGY UNIT (11 topics)
-- ============================================================================

-- Wave Properties
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Wave Properties' AND grade_level_min = 8),
  'Wave Properties Topic Guide', 'Amplitude, wavelength, frequency concepts',
  'WAVE PROPERTIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to wave properties
2. Apply wave properties concepts to solve problems
3. Analyze real-world examples of wave properties
4. Evaluate and communicate understanding of wave properties

KEY CONCEPTS:
- Fundamental principles of wave properties
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about wave properties
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to wave properties
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of wave properties systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying wave properties concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply wave properties to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of wave properties
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies wave properties correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Wave Properties' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Wave Speed
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Wave Speed' AND grade_level_min = 8),
  'Wave Speed Topic Guide', 'Calculating wave velocity',
  'WAVE SPEED - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to wave speed
2. Apply wave speed concepts to solve problems
3. Analyze real-world examples of wave speed
4. Evaluate and communicate understanding of wave speed

KEY CONCEPTS:
- Fundamental principles of wave speed
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about wave speed
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to wave speed
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of wave speed systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying wave speed concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply wave speed to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of wave speed
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies wave speed correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Wave Speed' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Transverse Waves
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Transverse Waves' AND grade_level_min = 8),
  'Transverse Waves Topic Guide', 'Waves with perpendicular particle motion',
  'TRANSVERSE WAVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to transverse waves
2. Apply transverse waves concepts to solve problems
3. Analyze real-world examples of transverse waves
4. Evaluate and communicate understanding of transverse waves

KEY CONCEPTS:
- Fundamental principles of transverse waves
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about transverse waves
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to transverse waves
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of transverse waves systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying transverse waves concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply transverse waves to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of transverse waves
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies transverse waves correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Transverse Waves' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Longitudinal Waves
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Longitudinal Waves' AND grade_level_min = 8),
  'Longitudinal Waves Topic Guide', 'Waves with parallel particle motion',
  'LONGITUDINAL WAVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to longitudinal waves
2. Apply longitudinal waves concepts to solve problems
3. Analyze real-world examples of longitudinal waves
4. Evaluate and communicate understanding of longitudinal waves

KEY CONCEPTS:
- Fundamental principles of longitudinal waves
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about longitudinal waves
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to longitudinal waves
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of longitudinal waves systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying longitudinal waves concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply longitudinal waves to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of longitudinal waves
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies longitudinal waves correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Longitudinal Waves' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Sound Waves
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Sound Waves' AND grade_level_min = 8),
  'Sound Waves Topic Guide', 'Mechanical waves traveling through matter',
  'SOUND WAVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to sound waves
2. Apply sound waves concepts to solve problems
3. Analyze real-world examples of sound waves
4. Evaluate and communicate understanding of sound waves

KEY CONCEPTS:
- Fundamental principles of sound waves
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about sound waves
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to sound waves
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of sound waves systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying sound waves concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply sound waves to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of sound waves
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies sound waves correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sound Waves' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Light as a Wave
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Light as a Wave' AND grade_level_min = 8),
  'Light as a Wave Topic Guide', 'Electromagnetic wave behavior of light',
  'LIGHT AS A WAVE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to light as a wave
2. Apply light as a wave concepts to solve problems
3. Analyze real-world examples of light as a wave
4. Evaluate and communicate understanding of light as a wave

KEY CONCEPTS:
- Fundamental principles of light as a wave
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about light as a wave
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to light as a wave
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of light as a wave systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying light as a wave concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply light as a wave to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of light as a wave
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies light as a wave correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Light as a Wave' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- The EM Spectrum
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The EM Spectrum' AND grade_level_min = 8),
  'The EM Spectrum Topic Guide', 'Radio waves to gamma rays',
  'THE EM SPECTRUM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to the em spectrum
2. Apply the em spectrum concepts to solve problems
3. Analyze real-world examples of the em spectrum
4. Evaluate and communicate understanding of the em spectrum

KEY CONCEPTS:
- Fundamental principles of the em spectrum
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about the em spectrum
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to the em spectrum
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of the em spectrum systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying the em spectrum concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply the em spectrum to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of the em spectrum
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies the em spectrum correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The EM Spectrum' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Wave Reflection
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Wave Reflection' AND grade_level_min = 8),
  'Wave Reflection Topic Guide', 'Bouncing of waves',
  'WAVE REFLECTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to wave reflection
2. Apply wave reflection concepts to solve problems
3. Analyze real-world examples of wave reflection
4. Evaluate and communicate understanding of wave reflection

KEY CONCEPTS:
- Fundamental principles of wave reflection
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about wave reflection
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to wave reflection
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of wave reflection systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying wave reflection concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply wave reflection to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of wave reflection
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies wave reflection correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Wave Reflection' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Wave Refraction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Wave Refraction' AND grade_level_min = 8),
  'Wave Refraction Topic Guide', 'Bending of waves',
  'WAVE REFRACTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to wave refraction
2. Apply wave refraction concepts to solve problems
3. Analyze real-world examples of wave refraction
4. Evaluate and communicate understanding of wave refraction

KEY CONCEPTS:
- Fundamental principles of wave refraction
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about wave refraction
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to wave refraction
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of wave refraction systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying wave refraction concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply wave refraction to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of wave refraction
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies wave refraction correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Wave Refraction' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Wave Interference
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Wave Interference' AND grade_level_min = 8),
  'Wave Interference Topic Guide', 'Waves meeting and interacting',
  'WAVE INTERFERENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to wave interference
2. Apply wave interference concepts to solve problems
3. Analyze real-world examples of wave interference
4. Evaluate and communicate understanding of wave interference

KEY CONCEPTS:
- Fundamental principles of wave interference
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about wave interference
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to wave interference
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of wave interference systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying wave interference concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply wave interference to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of wave interference
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies wave interference correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Wave Interference' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Waves in Technology
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Waves in Technology' AND grade_level_min = 8),
  'Waves in Technology Topic Guide', 'Applications in communication and medicine',
  'WAVES IN TECHNOLOGY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to waves in technology
2. Apply waves in technology concepts to solve problems
3. Analyze real-world examples of waves in technology
4. Evaluate and communicate understanding of waves in technology

KEY CONCEPTS:
- Fundamental principles of waves in technology
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about waves in technology
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to waves in technology
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of waves in technology systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying waves in technology concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply waves in technology to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of waves in technology
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies waves in technology correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Waves in Technology' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GENETICS AND HEREDITY UNIT (11 topics)
-- ============================================================================

-- DNA Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'DNA Structure' AND grade_level_min = 8),
  'DNA Structure Topic Guide', 'Double helix and base pairing',
  'DNA STRUCTURE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to dna structure
2. Apply dna structure concepts to solve problems
3. Analyze real-world examples of dna structure
4. Evaluate and communicate understanding of dna structure

KEY CONCEPTS:
- Fundamental principles of dna structure
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about dna structure
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to dna structure
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of dna structure systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying dna structure concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply dna structure to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of dna structure
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies dna structure correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'DNA Structure' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- DNA Replication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'DNA Replication' AND grade_level_min = 8),
  'DNA Replication Topic Guide', 'Copying genetic information',
  'DNA REPLICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to dna replication
2. Apply dna replication concepts to solve problems
3. Analyze real-world examples of dna replication
4. Evaluate and communicate understanding of dna replication

KEY CONCEPTS:
- Fundamental principles of dna replication
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about dna replication
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to dna replication
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of dna replication systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying dna replication concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply dna replication to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of dna replication
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies dna replication correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'DNA Replication' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Genes and Chromosomes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Genes and Chromosomes' AND grade_level_min = 8),
  'Genes and Chromosomes Topic Guide', 'Organization of genetic information',
  'GENES AND CHROMOSOMES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to genes and chromosomes
2. Apply genes and chromosomes concepts to solve problems
3. Analyze real-world examples of genes and chromosomes
4. Evaluate and communicate understanding of genes and chromosomes

KEY CONCEPTS:
- Fundamental principles of genes and chromosomes
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about genes and chromosomes
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to genes and chromosomes
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of genes and chromosomes systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying genes and chromosomes concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply genes and chromosomes to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of genes and chromosomes
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies genes and chromosomes correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Genes and Chromosomes' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Protein Synthesis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Protein Synthesis' AND grade_level_min = 8),
  'Protein Synthesis Topic Guide', 'From DNA to proteins via RNA',
  'PROTEIN SYNTHESIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to protein synthesis
2. Apply protein synthesis concepts to solve problems
3. Analyze real-world examples of protein synthesis
4. Evaluate and communicate understanding of protein synthesis

KEY CONCEPTS:
- Fundamental principles of protein synthesis
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about protein synthesis
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to protein synthesis
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of protein synthesis systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying protein synthesis concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply protein synthesis to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of protein synthesis
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies protein synthesis correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Protein Synthesis' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Mendelian Genetics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Mendelian Genetics' AND grade_level_min = 8),
  'Mendelian Genetics Topic Guide', 'Dominant and recessive traits',
  'MENDELIAN GENETICS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to mendelian genetics
2. Apply mendelian genetics concepts to solve problems
3. Analyze real-world examples of mendelian genetics
4. Evaluate and communicate understanding of mendelian genetics

KEY CONCEPTS:
- Fundamental principles of mendelian genetics
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about mendelian genetics
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to mendelian genetics
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of mendelian genetics systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying mendelian genetics concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply mendelian genetics to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of mendelian genetics
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies mendelian genetics correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mendelian Genetics' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Punnett Squares
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Punnett Squares' AND grade_level_min = 8),
  'Punnett Squares Topic Guide', 'Predicting offspring genotypes and phenotypes',
  'PUNNETT SQUARES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to punnett squares
2. Apply punnett squares concepts to solve problems
3. Analyze real-world examples of punnett squares
4. Evaluate and communicate understanding of punnett squares

KEY CONCEPTS:
- Fundamental principles of punnett squares
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about punnett squares
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to punnett squares
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of punnett squares systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying punnett squares concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply punnett squares to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of punnett squares
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies punnett squares correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Punnett Squares' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Genotype and Phenotype
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Genotype and Phenotype' AND grade_level_min = 8),
  'Genotype and Phenotype Topic Guide', 'Genetic code vs. expressed traits',
  'GENOTYPE AND PHENOTYPE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to genotype and phenotype
2. Apply genotype and phenotype concepts to solve problems
3. Analyze real-world examples of genotype and phenotype
4. Evaluate and communicate understanding of genotype and phenotype

KEY CONCEPTS:
- Fundamental principles of genotype and phenotype
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about genotype and phenotype
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to genotype and phenotype
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of genotype and phenotype systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying genotype and phenotype concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply genotype and phenotype to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of genotype and phenotype
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies genotype and phenotype correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Genotype and Phenotype' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Complex Inheritance
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Complex Inheritance' AND grade_level_min = 8),
  'Complex Inheritance Topic Guide', 'Beyond simple dominance patterns',
  'COMPLEX INHERITANCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to complex inheritance
2. Apply complex inheritance concepts to solve problems
3. Analyze real-world examples of complex inheritance
4. Evaluate and communicate understanding of complex inheritance

KEY CONCEPTS:
- Fundamental principles of complex inheritance
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about complex inheritance
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to complex inheritance
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of complex inheritance systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying complex inheritance concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply complex inheritance to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of complex inheritance
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies complex inheritance correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complex Inheritance' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Mutations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Mutations' AND grade_level_min = 8),
  'Mutations Topic Guide', 'Changes in genetic code',
  'MUTATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to mutations
2. Apply mutations concepts to solve problems
3. Analyze real-world examples of mutations
4. Evaluate and communicate understanding of mutations

KEY CONCEPTS:
- Fundamental principles of mutations
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about mutations
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to mutations
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of mutations systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying mutations concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply mutations to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of mutations
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies mutations correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mutations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Genetic Technology
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Genetic Technology' AND grade_level_min = 8),
  'Genetic Technology Topic Guide', 'DNA testing and genetic engineering',
  'GENETIC TECHNOLOGY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to genetic technology
2. Apply genetic technology concepts to solve problems
3. Analyze real-world examples of genetic technology
4. Evaluate and communicate understanding of genetic technology

KEY CONCEPTS:
- Fundamental principles of genetic technology
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about genetic technology
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to genetic technology
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of genetic technology systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying genetic technology concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply genetic technology to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of genetic technology
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies genetic technology correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Genetic Technology' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Ethical Issues in Genetics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Ethical Issues in Genetics' AND grade_level_min = 8),
  'Ethical Issues in Genetics Topic Guide', 'Responsible use of genetic knowledge',
  'ETHICAL ISSUES IN GENETICS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to ethical issues in genetics
2. Apply ethical issues in genetics concepts to solve problems
3. Analyze real-world examples of ethical issues in genetics
4. Evaluate and communicate understanding of ethical issues in genetics

KEY CONCEPTS:
- Fundamental principles of ethical issues in genetics
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about ethical issues in genetics
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to ethical issues in genetics
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of ethical issues in genetics systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying ethical issues in genetics concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply ethical issues in genetics to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of ethical issues in genetics
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies ethical issues in genetics correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ethical Issues in Genetics' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EVOLUTION AND NATURAL SELECTION UNIT (10 topics)
-- ============================================================================

-- Darwin''s Theory
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Darwin''s Theory' AND grade_level_min = 8),
  'Darwin''s Theory Topic Guide', 'Natural selection mechanism',
  'DARWIN''S THEORY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to darwin''s theory
2. Apply darwin''s theory concepts to solve problems
3. Analyze real-world examples of darwin''s theory
4. Evaluate and communicate understanding of darwin''s theory

KEY CONCEPTS:
- Fundamental principles of darwin''s theory
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about darwin''s theory
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to darwin''s theory
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of darwin''s theory systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying darwin''s theory concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply darwin''s theory to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of darwin''s theory
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies darwin''s theory correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Darwin''s Theory' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Evidence from Fossils
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Evidence from Fossils' AND grade_level_min = 8),
  'Evidence from Fossils Topic Guide', 'Fossil record supporting evolution',
  'EVIDENCE FROM FOSSILS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to evidence from fossils
2. Apply evidence from fossils concepts to solve problems
3. Analyze real-world examples of evidence from fossils
4. Evaluate and communicate understanding of evidence from fossils

KEY CONCEPTS:
- Fundamental principles of evidence from fossils
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about evidence from fossils
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to evidence from fossils
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of evidence from fossils systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying evidence from fossils concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply evidence from fossils to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of evidence from fossils
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies evidence from fossils correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evidence from Fossils' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Evidence from Anatomy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Evidence from Anatomy' AND grade_level_min = 8),
  'Evidence from Anatomy Topic Guide', 'Homologous and analogous structures',
  'EVIDENCE FROM ANATOMY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to evidence from anatomy
2. Apply evidence from anatomy concepts to solve problems
3. Analyze real-world examples of evidence from anatomy
4. Evaluate and communicate understanding of evidence from anatomy

KEY CONCEPTS:
- Fundamental principles of evidence from anatomy
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about evidence from anatomy
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to evidence from anatomy
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of evidence from anatomy systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying evidence from anatomy concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply evidence from anatomy to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of evidence from anatomy
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies evidence from anatomy correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evidence from Anatomy' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Evidence from DNA
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Evidence from DNA' AND grade_level_min = 8),
  'Evidence from DNA Topic Guide', 'Molecular evidence for common ancestry',
  'EVIDENCE FROM DNA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to evidence from dna
2. Apply evidence from dna concepts to solve problems
3. Analyze real-world examples of evidence from dna
4. Evaluate and communicate understanding of evidence from dna

KEY CONCEPTS:
- Fundamental principles of evidence from dna
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about evidence from dna
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to evidence from dna
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of evidence from dna systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying evidence from dna concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply evidence from dna to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of evidence from dna
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies evidence from dna correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evidence from DNA' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Adaptation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Adaptation' AND grade_level_min = 8),
  'Adaptation Topic Guide', 'How organisms become suited to environments',
  'ADAPTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to adaptation
2. Apply adaptation concepts to solve problems
3. Analyze real-world examples of adaptation
4. Evaluate and communicate understanding of adaptation

KEY CONCEPTS:
- Fundamental principles of adaptation
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about adaptation
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to adaptation
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of adaptation systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying adaptation concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply adaptation to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of adaptation
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies adaptation correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adaptation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Natural Selection in Action
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Natural Selection in Action' AND grade_level_min = 8),
  'Natural Selection in Action Topic Guide', 'Observable evolution today',
  'NATURAL SELECTION IN ACTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to natural selection in action
2. Apply natural selection in action concepts to solve problems
3. Analyze real-world examples of natural selection in action
4. Evaluate and communicate understanding of natural selection in action

KEY CONCEPTS:
- Fundamental principles of natural selection in action
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about natural selection in action
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to natural selection in action
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of natural selection in action systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying natural selection in action concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply natural selection in action to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of natural selection in action
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies natural selection in action correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Natural Selection in Action' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Artificial Selection
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Artificial Selection' AND grade_level_min = 8),
  'Artificial Selection Topic Guide', 'Human-directed selective breeding',
  'ARTIFICIAL SELECTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to artificial selection
2. Apply artificial selection concepts to solve problems
3. Analyze real-world examples of artificial selection
4. Evaluate and communicate understanding of artificial selection

KEY CONCEPTS:
- Fundamental principles of artificial selection
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about artificial selection
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to artificial selection
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of artificial selection systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying artificial selection concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply artificial selection to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of artificial selection
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies artificial selection correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Artificial Selection' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Speciation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Speciation' AND grade_level_min = 8),
  'Speciation Topic Guide', 'Formation of new species',
  'SPECIATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to speciation
2. Apply speciation concepts to solve problems
3. Analyze real-world examples of speciation
4. Evaluate and communicate understanding of speciation

KEY CONCEPTS:
- Fundamental principles of speciation
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about speciation
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to speciation
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of speciation systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying speciation concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply speciation to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of speciation
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies speciation correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Speciation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Coevolution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Coevolution' AND grade_level_min = 8),
  'Coevolution Topic Guide', 'Species evolving in response to each other',
  'COEVOLUTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to coevolution
2. Apply coevolution concepts to solve problems
3. Analyze real-world examples of coevolution
4. Evaluate and communicate understanding of coevolution

KEY CONCEPTS:
- Fundamental principles of coevolution
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about coevolution
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to coevolution
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of coevolution systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying coevolution concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply coevolution to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of coevolution
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies coevolution correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Coevolution' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Common Ancestry
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Common Ancestry' AND grade_level_min = 8),
  'Common Ancestry Topic Guide', 'Tracing evolutionary relationships',
  'COMMON ANCESTRY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to common ancestry
2. Apply common ancestry concepts to solve problems
3. Analyze real-world examples of common ancestry
4. Evaluate and communicate understanding of common ancestry

KEY CONCEPTS:
- Fundamental principles of common ancestry
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about common ancestry
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to common ancestry
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of common ancestry systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying common ancestry concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply common ancestry to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of common ancestry
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies common ancestry correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Common Ancestry' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EARTH AND SPACE SCIENCE UNIT (10 topics)
-- ============================================================================

-- Solar System Formation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Solar System Formation' AND grade_level_min = 8),
  'Solar System Formation Topic Guide', 'How our solar system formed',
  'SOLAR SYSTEM FORMATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to solar system formation
2. Apply solar system formation concepts to solve problems
3. Analyze real-world examples of solar system formation
4. Evaluate and communicate understanding of solar system formation

KEY CONCEPTS:
- Fundamental principles of solar system formation
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about solar system formation
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to solar system formation
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of solar system formation systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying solar system formation concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply solar system formation to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of solar system formation
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies solar system formation correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solar System Formation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Sun''s Properties
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Sun''s Properties' AND grade_level_min = 8),
  'Sun''s Properties Topic Guide', 'Structure and energy production',
  'SUN''S PROPERTIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to sun''s properties
2. Apply sun''s properties concepts to solve problems
3. Analyze real-world examples of sun''s properties
4. Evaluate and communicate understanding of sun''s properties

KEY CONCEPTS:
- Fundamental principles of sun''s properties
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about sun''s properties
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to sun''s properties
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of sun''s properties systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying sun''s properties concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply sun''s properties to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of sun''s properties
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies sun''s properties correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sun''s Properties' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Planets Compared
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Planets Compared' AND grade_level_min = 8),
  'Planets Compared Topic Guide', 'Inner and outer planet characteristics',
  'PLANETS COMPARED - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to planets compared
2. Apply planets compared concepts to solve problems
3. Analyze real-world examples of planets compared
4. Evaluate and communicate understanding of planets compared

KEY CONCEPTS:
- Fundamental principles of planets compared
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about planets compared
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to planets compared
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of planets compared systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying planets compared concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply planets compared to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of planets compared
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies planets compared correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Planets Compared' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Moons and Other Objects
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Moons and Other Objects' AND grade_level_min = 8),
  'Moons and Other Objects Topic Guide', 'Small solar system bodies',
  'MOONS AND OTHER OBJECTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to moons and other objects
2. Apply moons and other objects concepts to solve problems
3. Analyze real-world examples of moons and other objects
4. Evaluate and communicate understanding of moons and other objects

KEY CONCEPTS:
- Fundamental principles of moons and other objects
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about moons and other objects
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to moons and other objects
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of moons and other objects systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying moons and other objects concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply moons and other objects to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of moons and other objects
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies moons and other objects correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Moons and Other Objects' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Stars and Stellar Evolution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Stars and Stellar Evolution' AND grade_level_min = 8),
  'Stars and Stellar Evolution Topic Guide', 'Life cycles of stars',
  'STARS AND STELLAR EVOLUTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to stars and stellar evolution
2. Apply stars and stellar evolution concepts to solve problems
3. Analyze real-world examples of stars and stellar evolution
4. Evaluate and communicate understanding of stars and stellar evolution

KEY CONCEPTS:
- Fundamental principles of stars and stellar evolution
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about stars and stellar evolution
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to stars and stellar evolution
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of stars and stellar evolution systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying stars and stellar evolution concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply stars and stellar evolution to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of stars and stellar evolution
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies stars and stellar evolution correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Stars and Stellar Evolution' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Galaxies
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Galaxies' AND grade_level_min = 8),
  'Galaxies Topic Guide', 'Types and structure of galaxies',
  'GALAXIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to galaxies
2. Apply galaxies concepts to solve problems
3. Analyze real-world examples of galaxies
4. Evaluate and communicate understanding of galaxies

KEY CONCEPTS:
- Fundamental principles of galaxies
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about galaxies
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to galaxies
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of galaxies systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying galaxies concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply galaxies to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of galaxies
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies galaxies correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Galaxies' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- The Big Bang
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Big Bang' AND grade_level_min = 8),
  'The Big Bang Topic Guide', 'Origin of the universe',
  'THE BIG BANG - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to the big bang
2. Apply the big bang concepts to solve problems
3. Analyze real-world examples of the big bang
4. Evaluate and communicate understanding of the big bang

KEY CONCEPTS:
- Fundamental principles of the big bang
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about the big bang
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to the big bang
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of the big bang systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying the big bang concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply the big bang to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of the big bang
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies the big bang correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Big Bang' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Scale of the Universe
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Scale of the Universe' AND grade_level_min = 8),
  'Scale of the Universe Topic Guide', 'Astronomical distances',
  'SCALE OF THE UNIVERSE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to scale of the universe
2. Apply scale of the universe concepts to solve problems
3. Analyze real-world examples of scale of the universe
4. Evaluate and communicate understanding of scale of the universe

KEY CONCEPTS:
- Fundamental principles of scale of the universe
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about scale of the universe
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to scale of the universe
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of scale of the universe systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying scale of the universe concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply scale of the universe to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of scale of the universe
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies scale of the universe correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scale of the Universe' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Search for Life
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Search for Life' AND grade_level_min = 8),
  'Search for Life Topic Guide', 'Astrobiology and habitable zones',
  'SEARCH FOR LIFE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to search for life
2. Apply search for life concepts to solve problems
3. Analyze real-world examples of search for life
4. Evaluate and communicate understanding of search for life

KEY CONCEPTS:
- Fundamental principles of search for life
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about search for life
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to search for life
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of search for life systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying search for life concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply search for life to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of search for life
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies search for life correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Search for Life' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Space Technology
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Space Technology' AND grade_level_min = 8),
  'Space Technology Topic Guide', 'Telescopes, probes, and spacecraft',
  'SPACE TECHNOLOGY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to space technology
2. Apply space technology concepts to solve problems
3. Analyze real-world examples of space technology
4. Evaluate and communicate understanding of space technology

KEY CONCEPTS:
- Fundamental principles of space technology
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about space technology
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to space technology
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of space technology systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying space technology concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply space technology to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of space technology
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies space technology correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Space Technology' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WEATHER AND CLIMATE SCIENCE UNIT (10 topics)
-- ============================================================================

-- Weather vs Climate
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Weather vs Climate' AND grade_level_min = 8),
  'Weather vs Climate Topic Guide', 'Distinguishing short-term and long-term patterns',
  'WEATHER VS CLIMATE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to weather vs climate
2. Apply weather vs climate concepts to solve problems
3. Analyze real-world examples of weather vs climate
4. Evaluate and communicate understanding of weather vs climate

KEY CONCEPTS:
- Fundamental principles of weather vs climate
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about weather vs climate
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to weather vs climate
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of weather vs climate systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying weather vs climate concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply weather vs climate to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of weather vs climate
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies weather vs climate correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Weather vs Climate' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Climate Factors
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Climate Factors' AND grade_level_min = 8),
  'Climate Factors Topic Guide', 'What determines regional climate',
  'CLIMATE FACTORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to climate factors
2. Apply climate factors concepts to solve problems
3. Analyze real-world examples of climate factors
4. Evaluate and communicate understanding of climate factors

KEY CONCEPTS:
- Fundamental principles of climate factors
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about climate factors
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to climate factors
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of climate factors systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying climate factors concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply climate factors to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of climate factors
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies climate factors correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Climate Factors' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Global Climate Zones
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Global Climate Zones' AND grade_level_min = 8),
  'Global Climate Zones Topic Guide', 'Climate patterns around Earth',
  'GLOBAL CLIMATE ZONES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to global climate zones
2. Apply global climate zones concepts to solve problems
3. Analyze real-world examples of global climate zones
4. Evaluate and communicate understanding of global climate zones

KEY CONCEPTS:
- Fundamental principles of global climate zones
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about global climate zones
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to global climate zones
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of global climate zones systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying global climate zones concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply global climate zones to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of global climate zones
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies global climate zones correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Global Climate Zones' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Ocean and Atmosphere
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Ocean and Atmosphere' AND grade_level_min = 8),
  'Ocean and Atmosphere Topic Guide', 'Interactions and current systems',
  'OCEAN AND ATMOSPHERE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to ocean and atmosphere
2. Apply ocean and atmosphere concepts to solve problems
3. Analyze real-world examples of ocean and atmosphere
4. Evaluate and communicate understanding of ocean and atmosphere

KEY CONCEPTS:
- Fundamental principles of ocean and atmosphere
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about ocean and atmosphere
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to ocean and atmosphere
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of ocean and atmosphere systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying ocean and atmosphere concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply ocean and atmosphere to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of ocean and atmosphere
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies ocean and atmosphere correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ocean and Atmosphere' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- El Nino and La Nina
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'El Nino and La Nina' AND grade_level_min = 8),
  'El Nino and La Nina Topic Guide', 'Pacific climate patterns',
  'EL NINO AND LA NINA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to el nino and la nina
2. Apply el nino and la nina concepts to solve problems
3. Analyze real-world examples of el nino and la nina
4. Evaluate and communicate understanding of el nino and la nina

KEY CONCEPTS:
- Fundamental principles of el nino and la nina
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about el nino and la nina
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to el nino and la nina
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of el nino and la nina systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying el nino and la nina concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply el nino and la nina to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of el nino and la nina
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies el nino and la nina correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'El Nino and La Nina' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Climate History
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Climate History' AND grade_level_min = 8),
  'Climate History Topic Guide', 'Past climate changes on Earth',
  'CLIMATE HISTORY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to climate history
2. Apply climate history concepts to solve problems
3. Analyze real-world examples of climate history
4. Evaluate and communicate understanding of climate history

KEY CONCEPTS:
- Fundamental principles of climate history
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about climate history
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to climate history
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of climate history systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying climate history concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply climate history to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of climate history
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies climate history correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Climate History' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Greenhouse Effect
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Greenhouse Effect' AND grade_level_min = 8),
  'Greenhouse Effect Topic Guide', 'How atmosphere traps heat',
  'GREENHOUSE EFFECT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to greenhouse effect
2. Apply greenhouse effect concepts to solve problems
3. Analyze real-world examples of greenhouse effect
4. Evaluate and communicate understanding of greenhouse effect

KEY CONCEPTS:
- Fundamental principles of greenhouse effect
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about greenhouse effect
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to greenhouse effect
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of greenhouse effect systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying greenhouse effect concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply greenhouse effect to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of greenhouse effect
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies greenhouse effect correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Greenhouse Effect' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Climate Change Evidence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Climate Change Evidence' AND grade_level_min = 8),
  'Climate Change Evidence Topic Guide', 'Data showing current climate change',
  'CLIMATE CHANGE EVIDENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to climate change evidence
2. Apply climate change evidence concepts to solve problems
3. Analyze real-world examples of climate change evidence
4. Evaluate and communicate understanding of climate change evidence

KEY CONCEPTS:
- Fundamental principles of climate change evidence
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about climate change evidence
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to climate change evidence
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of climate change evidence systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying climate change evidence concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply climate change evidence to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of climate change evidence
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies climate change evidence correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Climate Change Evidence' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Climate Change Impacts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Climate Change Impacts' AND grade_level_min = 8),
  'Climate Change Impacts Topic Guide', 'Effects on ecosystems and society',
  'CLIMATE CHANGE IMPACTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to climate change impacts
2. Apply climate change impacts concepts to solve problems
3. Analyze real-world examples of climate change impacts
4. Evaluate and communicate understanding of climate change impacts

KEY CONCEPTS:
- Fundamental principles of climate change impacts
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about climate change impacts
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to climate change impacts
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of climate change impacts systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying climate change impacts concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply climate change impacts to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of climate change impacts
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies climate change impacts correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Climate Change Impacts' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Climate Solutions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Climate Solutions' AND grade_level_min = 8),
  'Climate Solutions Topic Guide', 'Mitigation and adaptation strategies',
  'CLIMATE SOLUTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to climate solutions
2. Apply climate solutions concepts to solve problems
3. Analyze real-world examples of climate solutions
4. Evaluate and communicate understanding of climate solutions

KEY CONCEPTS:
- Fundamental principles of climate solutions
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about climate solutions
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to climate solutions
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of climate solutions systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying climate solutions concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply climate solutions to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of climate solutions
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies climate solutions correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Climate Solutions' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ENGINEERING AND TECHNOLOGY UNIT (10 topics)
-- ============================================================================

-- Engineering Process Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Engineering Process Review' AND grade_level_min = 8),
  'Engineering Process Review Topic Guide', 'Steps in engineering design',
  'ENGINEERING PROCESS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to engineering process review
2. Apply engineering process review concepts to solve problems
3. Analyze real-world examples of engineering process review
4. Evaluate and communicate understanding of engineering process review

KEY CONCEPTS:
- Fundamental principles of engineering process review
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about engineering process review
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to engineering process review
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of engineering process review systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying engineering process review concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply engineering process review to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of engineering process review
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies engineering process review correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Engineering Process Review' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Problem Definition
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Problem Definition' AND grade_level_min = 8),
  'Problem Definition Topic Guide', 'Clearly stating problems to solve',
  'PROBLEM DEFINITION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to problem definition
2. Apply problem definition concepts to solve problems
3. Analyze real-world examples of problem definition
4. Evaluate and communicate understanding of problem definition

KEY CONCEPTS:
- Fundamental principles of problem definition
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about problem definition
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to problem definition
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of problem definition systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying problem definition concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply problem definition to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of problem definition
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies problem definition correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Problem Definition' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Research and Background
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Research and Background' AND grade_level_min = 8),
  'Research and Background Topic Guide', 'Learning from existing solutions',
  'RESEARCH AND BACKGROUND - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to research and background
2. Apply research and background concepts to solve problems
3. Analyze real-world examples of research and background
4. Evaluate and communicate understanding of research and background

KEY CONCEPTS:
- Fundamental principles of research and background
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about research and background
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to research and background
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of research and background systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying research and background concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply research and background to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of research and background
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies research and background correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Research and Background' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Design Criteria
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Design Criteria' AND grade_level_min = 8),
  'Design Criteria Topic Guide', 'Requirements for successful solutions',
  'DESIGN CRITERIA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to design criteria
2. Apply design criteria concepts to solve problems
3. Analyze real-world examples of design criteria
4. Evaluate and communicate understanding of design criteria

KEY CONCEPTS:
- Fundamental principles of design criteria
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about design criteria
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to design criteria
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of design criteria systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying design criteria concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply design criteria to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of design criteria
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies design criteria correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Design Criteria' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Design Constraints
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Design Constraints' AND grade_level_min = 8),
  'Design Constraints Topic Guide', 'Limitations and tradeoffs',
  'DESIGN CONSTRAINTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to design constraints
2. Apply design constraints concepts to solve problems
3. Analyze real-world examples of design constraints
4. Evaluate and communicate understanding of design constraints

KEY CONCEPTS:
- Fundamental principles of design constraints
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about design constraints
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to design constraints
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of design constraints systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying design constraints concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply design constraints to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of design constraints
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies design constraints correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Design Constraints' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Prototype Development
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Prototype Development' AND grade_level_min = 8),
  'Prototype Development Topic Guide', 'Building testable models',
  'PROTOTYPE DEVELOPMENT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to prototype development
2. Apply prototype development concepts to solve problems
3. Analyze real-world examples of prototype development
4. Evaluate and communicate understanding of prototype development

KEY CONCEPTS:
- Fundamental principles of prototype development
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about prototype development
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to prototype development
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of prototype development systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying prototype development concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply prototype development to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of prototype development
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies prototype development correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Prototype Development' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Testing and Data
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Testing and Data' AND grade_level_min = 8),
  'Testing and Data Topic Guide', 'Systematic solution evaluation',
  'TESTING AND DATA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to testing and data
2. Apply testing and data concepts to solve problems
3. Analyze real-world examples of testing and data
4. Evaluate and communicate understanding of testing and data

KEY CONCEPTS:
- Fundamental principles of testing and data
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about testing and data
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to testing and data
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of testing and data systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying testing and data concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply testing and data to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of testing and data
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies testing and data correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Testing and Data' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Optimization
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Optimization' AND grade_level_min = 8),
  'Optimization Topic Guide', 'Improving designs through iteration',
  'OPTIMIZATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to optimization
2. Apply optimization concepts to solve problems
3. Analyze real-world examples of optimization
4. Evaluate and communicate understanding of optimization

KEY CONCEPTS:
- Fundamental principles of optimization
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about optimization
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to optimization
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of optimization systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying optimization concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply optimization to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of optimization
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies optimization correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Optimization' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Communication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Communication' AND grade_level_min = 8),
  'Communication Topic Guide', 'Presenting technical solutions',
  'COMMUNICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to communication
2. Apply communication concepts to solve problems
3. Analyze real-world examples of communication
4. Evaluate and communicate understanding of communication

KEY CONCEPTS:
- Fundamental principles of communication
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about communication
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to communication
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of communication systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying communication concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply communication to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of communication
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies communication correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Communication' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Real-World Engineering
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Real-World Engineering' AND grade_level_min = 8),
  'Real-World Engineering Topic Guide', 'Case studies of engineering solutions',
  'REAL-WORLD ENGINEERING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from Grade 7 Science
- Understanding of basic scientific concepts
- Familiarity with scientific method and inquiry
- Basic mathematics and measurement skills

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define and explain key concepts related to real-world engineering
2. Apply real-world engineering concepts to solve problems
3. Analyze real-world examples of real-world engineering
4. Evaluate and communicate understanding of real-world engineering

KEY CONCEPTS:
- Fundamental principles of real-world engineering
- Key vocabulary and terminology
- Relationships between concepts
- Applications to real-world situations
- Connections to other science topics

COMMON MISCONCEPTIONS:
- Common misunderstandings about real-world engineering
- Oversimplifications that lead to errors
- Confusion with related but different concepts
- Incorrect assumptions from everyday experience

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or demonstration related to real-world engineering
   Real-world connection to student experience
   Surprising fact or phenomenon to spark curiosity

2. DIRECT INSTRUCTION (10 minutes):
   Present core concepts of real-world engineering systematically
   Use visual aids, models, and demonstrations
   Provide clear examples and non-examples
   Connect to prior knowledge and real-world applications
   Check for understanding throughout

3. GUIDED PRACTICE (9 minutes):
   Students work through structured activities with teacher support
   Practice applying real-world engineering concepts to examples
   Discuss reasoning and problem-solving strategies
   Provide immediate feedback and clarification

4. INDEPENDENT PRACTICE (9 minutes):
   Students demonstrate understanding independently
   Apply real-world engineering to new situations
   Complete exercises, problems, or creative applications
   Self-assess understanding and identify areas for growth

DIFFERENTIATION:
For Struggling Learners:
- Provide graphic organizers and visual aids
- Break complex concepts into smaller steps
- Use concrete examples before abstract ideas
- Offer additional practice with immediate feedback

For Advanced Learners:
- Investigate advanced applications of real-world engineering
- Research current scientific developments
- Design experiments or projects exploring deeper concepts
- Connect to interdisciplinary applications

ASSESSMENT INDICATORS:
- Accurately defines and explains key concepts
- Applies real-world engineering correctly to problems and examples
- Demonstrates understanding through multiple representations
- Communicates scientific reasoning clearly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Real-World Engineering' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- END OF GRADE 8 SCIENCE PROMPTS
-- Total topics: 73
-- ============================================================================
