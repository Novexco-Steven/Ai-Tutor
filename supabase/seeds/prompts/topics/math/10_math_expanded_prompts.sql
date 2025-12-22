-- Grade 10 Math Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 10 Math topics
-- ============================================================================

-- ============================================================================
-- SECTION 1
-- ============================================================================

-- Points Lines Planes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Points Lines Planes' AND grade_level_min = 10),
  'Points Lines Planes Topic Guide', 'Identify and name basic geometric terms',
  'POINTS LINES PLANES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 introductory mathematics
- Foundational understanding of related concepts
- Readiness for foundational mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to points lines planes
2. Apply foundational techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect points lines planes to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of points lines planes
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning points lines planes
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about points lines planes

2. DIRECT INSTRUCTION (7 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (6 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (4 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving points lines planes
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates foundational understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Points Lines Planes' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Segments and Rays
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Segments and Rays' AND grade_level_min = 10),
  'Segments and Rays Topic Guide', 'Identify segments, rays, and their properties',
  'SEGMENTS AND RAYS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to segments and rays
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect segments and rays to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of segments and rays
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning segments and rays
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about segments and rays

2. DIRECT INSTRUCTION (7 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (6 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (4 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving segments and rays
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Segments and Rays' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Segment Addition Postulate
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Segment Addition Postulate' AND grade_level_min = 10),
  'Segment Addition Postulate Topic Guide', 'Apply segment addition',
  'SEGMENT ADDITION POSTULATE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to segment addition postulate
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect segment addition postulate to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of segment addition postulate
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning segment addition postulate
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about segment addition postulate

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving segment addition postulate
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Segment Addition Postulate' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Measuring Segments
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Measuring Segments' AND grade_level_min = 10),
  'Measuring Segments Topic Guide', 'Calculate segment lengths',
  'MEASURING SEGMENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to measuring segments
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect measuring segments to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of measuring segments
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning measuring segments
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about measuring segments

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving measuring segments
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measuring Segments' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Midpoint and Distance
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Midpoint and Distance' AND grade_level_min = 10),
  'Midpoint and Distance Topic Guide', 'Find midpoints and distances',
  'MIDPOINT AND DISTANCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to midpoint and distance
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect midpoint and distance to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of midpoint and distance
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning midpoint and distance
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about midpoint and distance

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving midpoint and distance
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Midpoint and Distance' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Angle Basics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angle Basics' AND grade_level_min = 10),
  'Angle Basics Topic Guide', 'Classify and name angles',
  'ANGLE BASICS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to angle basics
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect angle basics to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of angle basics
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning angle basics
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about angle basics

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving angle basics
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angle Basics' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Angle Addition Postulate
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angle Addition Postulate' AND grade_level_min = 10),
  'Angle Addition Postulate Topic Guide', 'Apply angle addition',
  'ANGLE ADDITION POSTULATE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to angle addition postulate
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect angle addition postulate to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of angle addition postulate
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning angle addition postulate
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about angle addition postulate

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving angle addition postulate
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angle Addition Postulate' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Angle Bisectors
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angle Bisectors' AND grade_level_min = 10),
  'Angle Bisectors Topic Guide', 'Construct and use angle bisectors',
  'ANGLE BISECTORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to angle bisectors
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect angle bisectors to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of angle bisectors
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning angle bisectors
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about angle bisectors

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving angle bisectors
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angle Bisectors' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Inductive Reasoning
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inductive Reasoning' AND grade_level_min = 10),
  'Inductive Reasoning Topic Guide', 'Make conjectures using patterns',
  'INDUCTIVE REASONING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to inductive reasoning
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect inductive reasoning to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of inductive reasoning
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning inductive reasoning
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about inductive reasoning

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving inductive reasoning
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inductive Reasoning' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Conditional Statements
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Conditional Statements' AND grade_level_min = 10),
  'Conditional Statements Topic Guide', 'Write and analyze conditionals',
  'CONDITIONAL STATEMENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to conditional statements
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect conditional statements to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of conditional statements
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning conditional statements
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about conditional statements

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving conditional statements
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Conditional Statements' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Deductive Reasoning
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Deductive Reasoning' AND grade_level_min = 10),
  'Deductive Reasoning Topic Guide', 'Apply logical reasoning',
  'DEDUCTIVE REASONING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to deductive reasoning
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect deductive reasoning to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of deductive reasoning
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning deductive reasoning
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about deductive reasoning

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving deductive reasoning
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Deductive Reasoning' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Two-Column Proofs Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Two-Column Proofs Introduction' AND grade_level_min = 10),
  'Two-Column Proofs Introduction Topic Guide', 'Write basic geometric proofs',
  'TWO-COLUMN PROOFS INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to two-column proofs introduction
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect two-column proofs introduction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of two-column proofs introduction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning two-column proofs introduction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about two-column proofs introduction

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving two-column proofs introduction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Two-Column Proofs Introduction' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 2
-- ============================================================================

-- Parallel Lines and Transversals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parallel Lines and Transversals' AND grade_level_min = 10),
  'Parallel Lines and Transversals Topic Guide', 'Identify angle relationships',
  'PARALLEL LINES AND TRANSVERSALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to parallel lines and transversals
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect parallel lines and transversals to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of parallel lines and transversals
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning parallel lines and transversals
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about parallel lines and transversals

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving parallel lines and transversals
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parallel Lines and Transversals' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Corresponding Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Corresponding Angles' AND grade_level_min = 10),
  'Corresponding Angles Topic Guide', 'Find and use corresponding angles',
  'CORRESPONDING ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to corresponding angles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect corresponding angles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of corresponding angles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning corresponding angles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about corresponding angles

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving corresponding angles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Corresponding Angles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Alternate Interior Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Alternate Interior Angles' AND grade_level_min = 10),
  'Alternate Interior Angles Topic Guide', 'Apply alternate interior angles theorem',
  'ALTERNATE INTERIOR ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to alternate interior angles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect alternate interior angles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of alternate interior angles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning alternate interior angles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about alternate interior angles

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving alternate interior angles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Alternate Interior Angles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Alternate Exterior Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Alternate Exterior Angles' AND grade_level_min = 10),
  'Alternate Exterior Angles Topic Guide', 'Apply alternate exterior angles theorem',
  'ALTERNATE EXTERIOR ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to alternate exterior angles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect alternate exterior angles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of alternate exterior angles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning alternate exterior angles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about alternate exterior angles

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving alternate exterior angles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Alternate Exterior Angles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Same-Side Interior Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Same-Side Interior Angles' AND grade_level_min = 10),
  'Same-Side Interior Angles Topic Guide', 'Use consecutive interior angles',
  'SAME-SIDE INTERIOR ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to same-side interior angles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect same-side interior angles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of same-side interior angles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning same-side interior angles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about same-side interior angles

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving same-side interior angles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Same-Side Interior Angles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Proving Lines Parallel
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Proving Lines Parallel' AND grade_level_min = 10),
  'Proving Lines Parallel Topic Guide', 'Use converses to prove parallelism',
  'PROVING LINES PARALLEL - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to proving lines parallel
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect proving lines parallel to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of proving lines parallel
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning proving lines parallel
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about proving lines parallel

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving proving lines parallel
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Proving Lines Parallel' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Perpendicular Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Perpendicular Lines' AND grade_level_min = 10),
  'Perpendicular Lines Topic Guide', 'Identify and construct perpendicular lines',
  'PERPENDICULAR LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to perpendicular lines
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect perpendicular lines to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of perpendicular lines
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning perpendicular lines
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about perpendicular lines

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving perpendicular lines
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Perpendicular Lines' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Slope and Parallel Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Slope and Parallel Lines' AND grade_level_min = 10),
  'Slope and Parallel Lines Topic Guide', 'Use slope to identify parallel lines',
  'SLOPE AND PARALLEL LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to slope and parallel lines
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect slope and parallel lines to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of slope and parallel lines
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning slope and parallel lines
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about slope and parallel lines

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving slope and parallel lines
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Slope and Parallel Lines' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Slope and Perpendicular Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Slope and Perpendicular Lines' AND grade_level_min = 10),
  'Slope and Perpendicular Lines Topic Guide', 'Use slope for perpendicular lines',
  'SLOPE AND PERPENDICULAR LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to slope and perpendicular lines
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect slope and perpendicular lines to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of slope and perpendicular lines
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning slope and perpendicular lines
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about slope and perpendicular lines

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving slope and perpendicular lines
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Slope and Perpendicular Lines' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Writing Parallel and Perpendicular Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Parallel and Perpendicular Equations' AND grade_level_min = 10),
  'Writing Parallel and Perpendicular Equations Topic Guide', 'Write equations of lines',
  'WRITING PARALLEL AND PERPENDICULAR EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to writing parallel and perpendicular equations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect writing parallel and perpendicular equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of writing parallel and perpendicular equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning writing parallel and perpendicular equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about writing parallel and perpendicular equations

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving writing parallel and perpendicular equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Parallel and Perpendicular Equations' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Distance from Point to Line
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Distance from Point to Line' AND grade_level_min = 10),
  'Distance from Point to Line Topic Guide', 'Calculate perpendicular distance',
  'DISTANCE FROM POINT TO LINE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to distance from point to line
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect distance from point to line to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of distance from point to line
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning distance from point to line
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about distance from point to line

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving distance from point to line
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Distance from Point to Line' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Classifying Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Classifying Triangles' AND grade_level_min = 10),
  'Classifying Triangles Topic Guide', 'Classify by sides and angles',
  'CLASSIFYING TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to classifying triangles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect classifying triangles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of classifying triangles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning classifying triangles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about classifying triangles

2. DIRECT INSTRUCTION (7 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (6 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (4 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving classifying triangles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Classifying Triangles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 3
-- ============================================================================

-- Triangle Sum Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Triangle Sum Theorem' AND grade_level_min = 10),
  'Triangle Sum Theorem Topic Guide', 'Apply 180° angle sum',
  'TRIANGLE SUM THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to triangle sum theorem
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect triangle sum theorem to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of triangle sum theorem
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning triangle sum theorem
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about triangle sum theorem

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving triangle sum theorem
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Triangle Sum Theorem' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Exterior Angle Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exterior Angle Theorem' AND grade_level_min = 10),
  'Exterior Angle Theorem Topic Guide', 'Find exterior angle measures',
  'EXTERIOR ANGLE THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to exterior angle theorem
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect exterior angle theorem to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of exterior angle theorem
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning exterior angle theorem
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about exterior angle theorem

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving exterior angle theorem
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exterior Angle Theorem' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Isosceles Triangle Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Isosceles Triangle Theorem' AND grade_level_min = 10),
  'Isosceles Triangle Theorem Topic Guide', 'Apply isosceles properties',
  'ISOSCELES TRIANGLE THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to isosceles triangle theorem
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect isosceles triangle theorem to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of isosceles triangle theorem
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning isosceles triangle theorem
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about isosceles triangle theorem

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving isosceles triangle theorem
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Isosceles Triangle Theorem' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Equilateral Triangle Properties
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equilateral Triangle Properties' AND grade_level_min = 10),
  'Equilateral Triangle Properties Topic Guide', 'Use equilateral triangle properties',
  'EQUILATERAL TRIANGLE PROPERTIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to equilateral triangle properties
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect equilateral triangle properties to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of equilateral triangle properties
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning equilateral triangle properties
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about equilateral triangle properties

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving equilateral triangle properties
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equilateral Triangle Properties' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Triangle Inequality Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Triangle Inequality Theorem' AND grade_level_min = 10),
  'Triangle Inequality Theorem Topic Guide', 'Determine if sides form triangle',
  'TRIANGLE INEQUALITY THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to triangle inequality theorem
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect triangle inequality theorem to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of triangle inequality theorem
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning triangle inequality theorem
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about triangle inequality theorem

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving triangle inequality theorem
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Triangle Inequality Theorem' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Side-Angle Relationships
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Side-Angle Relationships' AND grade_level_min = 10),
  'Side-Angle Relationships Topic Guide', 'Compare sides and opposite angles',
  'SIDE-ANGLE RELATIONSHIPS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to side-angle relationships
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect side-angle relationships to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of side-angle relationships
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning side-angle relationships
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about side-angle relationships

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving side-angle relationships
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Side-Angle Relationships' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Midsegment Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Midsegment Theorem' AND grade_level_min = 10),
  'Midsegment Theorem Topic Guide', 'Apply triangle midsegment theorem',
  'MIDSEGMENT THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to midsegment theorem
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect midsegment theorem to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of midsegment theorem
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning midsegment theorem
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about midsegment theorem

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving midsegment theorem
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Midsegment Theorem' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Perpendicular Bisectors
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Perpendicular Bisectors' AND grade_level_min = 10),
  'Perpendicular Bisectors Topic Guide', 'Apply perpendicular bisector theorem',
  'PERPENDICULAR BISECTORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to perpendicular bisectors
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect perpendicular bisectors to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of perpendicular bisectors
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning perpendicular bisectors
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about perpendicular bisectors

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving perpendicular bisectors
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Perpendicular Bisectors' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Angle Bisectors in Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angle Bisectors in Triangles' AND grade_level_min = 10),
  'Angle Bisectors in Triangles Topic Guide', 'Use angle bisector theorem',
  'ANGLE BISECTORS IN TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to angle bisectors in triangles
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect angle bisectors in triangles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of angle bisectors in triangles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning angle bisectors in triangles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about angle bisectors in triangles

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving angle bisectors in triangles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angle Bisectors in Triangles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Medians and Centroids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Medians and Centroids' AND grade_level_min = 10),
  'Medians and Centroids Topic Guide', 'Find centroid and use medians',
  'MEDIANS AND CENTROIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to medians and centroids
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect medians and centroids to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of medians and centroids
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning medians and centroids
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about medians and centroids

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving medians and centroids
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Medians and Centroids' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Altitudes and Orthocenters
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Altitudes and Orthocenters' AND grade_level_min = 10),
  'Altitudes and Orthocenters Topic Guide', 'Construct and use altitudes',
  'ALTITUDES AND ORTHOCENTERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to altitudes and orthocenters
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect altitudes and orthocenters to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of altitudes and orthocenters
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning altitudes and orthocenters
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about altitudes and orthocenters

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving altitudes and orthocenters
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Altitudes and Orthocenters' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Congruence and Rigid Motions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Congruence and Rigid Motions' AND grade_level_min = 10),
  'Congruence and Rigid Motions Topic Guide', 'Define congruence using transformations',
  'CONGRUENCE AND RIGID MOTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to congruence and rigid motions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect congruence and rigid motions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of congruence and rigid motions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning congruence and rigid motions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about congruence and rigid motions

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving congruence and rigid motions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Congruence and Rigid Motions' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 4
-- ============================================================================

-- SSS Congruence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'SSS Congruence' AND grade_level_min = 10),
  'SSS Congruence Topic Guide', 'Apply Side-Side-Side criterion',
  'SSS CONGRUENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sss congruence
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sss congruence to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sss congruence
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sss congruence
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sss congruence

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving sss congruence
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'SSS Congruence' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- SAS Congruence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'SAS Congruence' AND grade_level_min = 10),
  'SAS Congruence Topic Guide', 'Apply Side-Angle-Side criterion',
  'SAS CONGRUENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sas congruence
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sas congruence to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sas congruence
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sas congruence
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sas congruence

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving sas congruence
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'SAS Congruence' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ASA Congruence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'ASA Congruence' AND grade_level_min = 10),
  'ASA Congruence Topic Guide', 'Apply Angle-Side-Angle criterion',
  'ASA CONGRUENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to asa congruence
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect asa congruence to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of asa congruence
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning asa congruence
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about asa congruence

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving asa congruence
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'ASA Congruence' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- AAS Congruence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'AAS Congruence' AND grade_level_min = 10),
  'AAS Congruence Topic Guide', 'Apply Angle-Angle-Side criterion',
  'AAS CONGRUENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to aas congruence
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect aas congruence to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of aas congruence
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning aas congruence
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about aas congruence

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving aas congruence
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'AAS Congruence' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- HL Congruence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'HL Congruence' AND grade_level_min = 10),
  'HL Congruence Topic Guide', 'Apply Hypotenuse-Leg criterion',
  'HL CONGRUENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to hl congruence
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect hl congruence to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of hl congruence
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning hl congruence
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about hl congruence

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving hl congruence
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'HL Congruence' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- CPCTC
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'CPCTC' AND grade_level_min = 10),
  'CPCTC Topic Guide', 'Use corresponding parts of congruent triangles',
  'CPCTC - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to cpctc
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect cpctc to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of cpctc
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning cpctc
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about cpctc

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving cpctc
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'CPCTC' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Two-Column Proofs with Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Two-Column Proofs with Triangles' AND grade_level_min = 10),
  'Two-Column Proofs with Triangles Topic Guide', 'Write congruence proofs',
  'TWO-COLUMN PROOFS WITH TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to two-column proofs with triangles
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect two-column proofs with triangles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of two-column proofs with triangles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning two-column proofs with triangles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about two-column proofs with triangles

2. DIRECT INSTRUCTION (14 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (8 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving two-column proofs with triangles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Two-Column Proofs with Triangles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Paragraph Proofs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Paragraph Proofs' AND grade_level_min = 10),
  'Paragraph Proofs Topic Guide', 'Write informal proofs',
  'PARAGRAPH PROOFS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to paragraph proofs
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect paragraph proofs to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of paragraph proofs
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning paragraph proofs
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about paragraph proofs

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving paragraph proofs
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Paragraph Proofs' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Coordinate Proofs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Coordinate Proofs' AND grade_level_min = 10),
  'Coordinate Proofs Topic Guide', 'Prove congruence using coordinates',
  'COORDINATE PROOFS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to coordinate proofs
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect coordinate proofs to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of coordinate proofs
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning coordinate proofs
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about coordinate proofs

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving coordinate proofs
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Coordinate Proofs' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Congruence Problem Solving
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Congruence Problem Solving' AND grade_level_min = 10),
  'Congruence Problem Solving Topic Guide', 'Apply congruence to problems',
  'CONGRUENCE PROBLEM SOLVING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to congruence problem solving
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect congruence problem solving to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of congruence problem solving
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning congruence problem solving
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about congruence problem solving

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving congruence problem solving
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Congruence Problem Solving' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Quadrilateral Classification
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quadrilateral Classification' AND grade_level_min = 10),
  'Quadrilateral Classification Topic Guide', 'Classify quadrilaterals',
  'QUADRILATERAL CLASSIFICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to quadrilateral classification
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect quadrilateral classification to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of quadrilateral classification
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning quadrilateral classification
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about quadrilateral classification

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving quadrilateral classification
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quadrilateral Classification' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Properties of Parallelograms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Properties of Parallelograms' AND grade_level_min = 10),
  'Properties of Parallelograms Topic Guide', 'Apply parallelogram properties',
  'PROPERTIES OF PARALLELOGRAMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to properties of parallelograms
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect properties of parallelograms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of properties of parallelograms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning properties of parallelograms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about properties of parallelograms

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving properties of parallelograms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties of Parallelograms' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 5
-- ============================================================================

-- Proving Parallelograms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Proving Parallelograms' AND grade_level_min = 10),
  'Proving Parallelograms Topic Guide', 'Prove a quadrilateral is a parallelogram',
  'PROVING PARALLELOGRAMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to proving parallelograms
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect proving parallelograms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of proving parallelograms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning proving parallelograms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about proving parallelograms

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving proving parallelograms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Proving Parallelograms' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Rectangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rectangles' AND grade_level_min = 10),
  'Rectangles Topic Guide', 'Apply rectangle properties',
  'RECTANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to rectangles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect rectangles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of rectangles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning rectangles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about rectangles

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving rectangles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rectangles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Rhombi
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rhombi' AND grade_level_min = 10),
  'Rhombi Topic Guide', 'Apply rhombus properties',
  'RHOMBI - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to rhombi
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect rhombi to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of rhombi
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning rhombi
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about rhombi

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving rhombi
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rhombi' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Squares
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Squares' AND grade_level_min = 10),
  'Squares Topic Guide', 'Apply square properties',
  'SQUARES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to squares
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect squares to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of squares
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning squares
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about squares

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving squares
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Squares' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Trapezoids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Trapezoids' AND grade_level_min = 10),
  'Trapezoids Topic Guide', 'Apply trapezoid properties',
  'TRAPEZOIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to trapezoids
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect trapezoids to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of trapezoids
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning trapezoids
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about trapezoids

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving trapezoids
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Trapezoids' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Isosceles Trapezoids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Isosceles Trapezoids' AND grade_level_min = 10),
  'Isosceles Trapezoids Topic Guide', 'Use isosceles trapezoid properties',
  'ISOSCELES TRAPEZOIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to isosceles trapezoids
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect isosceles trapezoids to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of isosceles trapezoids
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning isosceles trapezoids
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about isosceles trapezoids

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving isosceles trapezoids
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Isosceles Trapezoids' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Kites
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Kites' AND grade_level_min = 10),
  'Kites Topic Guide', 'Apply kite properties',
  'KITES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to kites
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect kites to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of kites
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning kites
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about kites

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving kites
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Kites' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Quadrilateral Proofs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quadrilateral Proofs' AND grade_level_min = 10),
  'Quadrilateral Proofs Topic Guide', 'Prove quadrilateral properties',
  'QUADRILATERAL PROOFS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to quadrilateral proofs
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect quadrilateral proofs to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of quadrilateral proofs
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning quadrilateral proofs
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about quadrilateral proofs

2. DIRECT INSTRUCTION (14 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (8 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving quadrilateral proofs
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quadrilateral Proofs' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Coordinate Proofs Quadrilaterals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Coordinate Proofs Quadrilaterals' AND grade_level_min = 10),
  'Coordinate Proofs Quadrilaterals Topic Guide', 'Prove using coordinates',
  'COORDINATE PROOFS QUADRILATERALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to coordinate proofs quadrilaterals
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect coordinate proofs quadrilaterals to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of coordinate proofs quadrilaterals
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning coordinate proofs quadrilaterals
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about coordinate proofs quadrilaterals

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving coordinate proofs quadrilaterals
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Coordinate Proofs Quadrilaterals' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Ratios and Proportions Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ratios and Proportions Review' AND grade_level_min = 10),
  'Ratios and Proportions Review Topic Guide', 'Solve proportions',
  'RATIOS AND PROPORTIONS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to ratios and proportions review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect ratios and proportions review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of ratios and proportions review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning ratios and proportions review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about ratios and proportions review

2. DIRECT INSTRUCTION (7 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (6 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (4 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving ratios and proportions review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ratios and Proportions Review' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Similar Polygons
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Similar Polygons' AND grade_level_min = 10),
  'Similar Polygons Topic Guide', 'Identify similar polygons',
  'SIMILAR POLYGONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to similar polygons
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect similar polygons to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of similar polygons
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning similar polygons
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about similar polygons

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving similar polygons
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Similar Polygons' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- AA Similarity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'AA Similarity' AND grade_level_min = 10),
  'AA Similarity Topic Guide', 'Apply Angle-Angle similarity',
  'AA SIMILARITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to aa similarity
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect aa similarity to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of aa similarity
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning aa similarity
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about aa similarity

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving aa similarity
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'AA Similarity' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 6
-- ============================================================================

-- SSS Similarity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'SSS Similarity' AND grade_level_min = 10),
  'SSS Similarity Topic Guide', 'Apply Side-Side-Side similarity',
  'SSS SIMILARITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sss similarity
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sss similarity to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sss similarity
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sss similarity
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sss similarity

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving sss similarity
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'SSS Similarity' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- SAS Similarity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'SAS Similarity' AND grade_level_min = 10),
  'SAS Similarity Topic Guide', 'Apply Side-Angle-Side similarity',
  'SAS SIMILARITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sas similarity
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sas similarity to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sas similarity
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sas similarity
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sas similarity

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving sas similarity
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'SAS Similarity' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Triangle Proportionality Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Triangle Proportionality Theorem' AND grade_level_min = 10),
  'Triangle Proportionality Theorem Topic Guide', 'Apply to parallel lines in triangles',
  'TRIANGLE PROPORTIONALITY THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to triangle proportionality theorem
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect triangle proportionality theorem to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of triangle proportionality theorem
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning triangle proportionality theorem
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about triangle proportionality theorem

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving triangle proportionality theorem
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Triangle Proportionality Theorem' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Using Similar Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Using Similar Triangles' AND grade_level_min = 10),
  'Using Similar Triangles Topic Guide', 'Find missing measures',
  'USING SIMILAR TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to using similar triangles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect using similar triangles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of using similar triangles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning using similar triangles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about using similar triangles

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving using similar triangles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Using Similar Triangles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Similarity Proofs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Similarity Proofs' AND grade_level_min = 10),
  'Similarity Proofs Topic Guide', 'Write similarity proofs',
  'SIMILARITY PROOFS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to similarity proofs
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect similarity proofs to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of similarity proofs
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning similarity proofs
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about similarity proofs

2. DIRECT INSTRUCTION (14 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (8 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving similarity proofs
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Similarity Proofs' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Indirect Measurement
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Indirect Measurement' AND grade_level_min = 10),
  'Indirect Measurement Topic Guide', 'Apply similarity to real situations',
  'INDIRECT MEASUREMENT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to indirect measurement
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect indirect measurement to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of indirect measurement
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning indirect measurement
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about indirect measurement

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving indirect measurement
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Indirect Measurement' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Perimeter and Area of Similar Figures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Perimeter and Area of Similar Figures' AND grade_level_min = 10),
  'Perimeter and Area of Similar Figures Topic Guide', 'Calculate perimeter and area ratios',
  'PERIMETER AND AREA OF SIMILAR FIGURES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to perimeter and area of similar figures
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect perimeter and area of similar figures to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of perimeter and area of similar figures
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning perimeter and area of similar figures
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about perimeter and area of similar figures

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving perimeter and area of similar figures
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Perimeter and Area of Similar Figures' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Pythagorean Theorem Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Pythagorean Theorem Review' AND grade_level_min = 10),
  'Pythagorean Theorem Review Topic Guide', 'Apply Pythagorean theorem',
  'PYTHAGOREAN THEOREM REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to pythagorean theorem review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect pythagorean theorem review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of pythagorean theorem review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning pythagorean theorem review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about pythagorean theorem review

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving pythagorean theorem review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pythagorean Theorem Review' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Pythagorean Theorem Converse
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Pythagorean Theorem Converse' AND grade_level_min = 10),
  'Pythagorean Theorem Converse Topic Guide', 'Determine if triangle is right',
  'PYTHAGOREAN THEOREM CONVERSE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to pythagorean theorem converse
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect pythagorean theorem converse to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of pythagorean theorem converse
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning pythagorean theorem converse
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about pythagorean theorem converse

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving pythagorean theorem converse
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pythagorean Theorem Converse' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Special Right Triangles 45-45-90
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Special Right Triangles 45-45-90' AND grade_level_min = 10),
  'Special Right Triangles 45-45-90 Topic Guide', 'Apply 45-45-90 relationships',
  'SPECIAL RIGHT TRIANGLES 45-45-90 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to special right triangles 45-45-90
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect special right triangles 45-45-90 to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of special right triangles 45-45-90
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning special right triangles 45-45-90
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about special right triangles 45-45-90

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving special right triangles 45-45-90
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Special Right Triangles 45-45-90' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Special Right Triangles 30-60-90
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Special Right Triangles 30-60-90' AND grade_level_min = 10),
  'Special Right Triangles 30-60-90 Topic Guide', 'Apply 30-60-90 relationships',
  'SPECIAL RIGHT TRIANGLES 30-60-90 - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to special right triangles 30-60-90
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect special right triangles 30-60-90 to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of special right triangles 30-60-90
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning special right triangles 30-60-90
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about special right triangles 30-60-90

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving special right triangles 30-60-90
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Special Right Triangles 30-60-90' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Trigonometric Ratios
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Trigonometric Ratios' AND grade_level_min = 10),
  'Trigonometric Ratios Topic Guide', 'Define sine, cosine, tangent',
  'TRIGONOMETRIC RATIOS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to trigonometric ratios
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect trigonometric ratios to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of trigonometric ratios
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning trigonometric ratios
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about trigonometric ratios

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving trigonometric ratios
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Trigonometric Ratios' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 7
-- ============================================================================

-- Finding Trig Ratios
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding Trig Ratios' AND grade_level_min = 10),
  'Finding Trig Ratios Topic Guide', 'Calculate trig ratios in right triangles',
  'FINDING TRIG RATIOS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to finding trig ratios
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect finding trig ratios to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of finding trig ratios
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning finding trig ratios
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about finding trig ratios

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving finding trig ratios
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding Trig Ratios' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Using Trig to Find Sides
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Using Trig to Find Sides' AND grade_level_min = 10),
  'Using Trig to Find Sides Topic Guide', 'Solve for missing sides',
  'USING TRIG TO FIND SIDES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to using trig to find sides
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect using trig to find sides to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of using trig to find sides
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning using trig to find sides
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about using trig to find sides

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving using trig to find sides
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Using Trig to Find Sides' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Using Trig to Find Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Using Trig to Find Angles' AND grade_level_min = 10),
  'Using Trig to Find Angles Topic Guide', 'Solve for missing angles',
  'USING TRIG TO FIND ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to using trig to find angles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect using trig to find angles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of using trig to find angles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning using trig to find angles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about using trig to find angles

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving using trig to find angles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Using Trig to Find Angles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Inverse Trigonometric Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inverse Trigonometric Functions' AND grade_level_min = 10),
  'Inverse Trigonometric Functions Topic Guide', 'Use inverse trig functions',
  'INVERSE TRIGONOMETRIC FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to inverse trigonometric functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect inverse trigonometric functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of inverse trigonometric functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning inverse trigonometric functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about inverse trigonometric functions

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving inverse trigonometric functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inverse Trigonometric Functions' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Angles of Elevation and Depression
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angles of Elevation and Depression' AND grade_level_min = 10),
  'Angles of Elevation and Depression Topic Guide', 'Apply to real situations',
  'ANGLES OF ELEVATION AND DEPRESSION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to angles of elevation and depression
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect angles of elevation and depression to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of angles of elevation and depression
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning angles of elevation and depression
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about angles of elevation and depression

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving angles of elevation and depression
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angles of Elevation and Depression' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Solving Right Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Right Triangles' AND grade_level_min = 10),
  'Solving Right Triangles Topic Guide', 'Find all sides and angles',
  'SOLVING RIGHT TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving right triangles
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving right triangles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving right triangles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving right triangles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving right triangles

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving solving right triangles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Right Triangles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Area Using Trigonometry
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area Using Trigonometry' AND grade_level_min = 10),
  'Area Using Trigonometry Topic Guide', 'Calculate area with trig',
  'AREA USING TRIGONOMETRY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to area using trigonometry
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect area using trigonometry to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of area using trigonometry
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning area using trigonometry
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about area using trigonometry

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving area using trigonometry
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area Using Trigonometry' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Circle Vocabulary
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Circle Vocabulary' AND grade_level_min = 10),
  'Circle Vocabulary Topic Guide', 'Identify parts of circles',
  'CIRCLE VOCABULARY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 introductory mathematics
- Foundational understanding of related concepts
- Readiness for foundational mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to circle vocabulary
2. Apply foundational techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect circle vocabulary to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of circle vocabulary
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning circle vocabulary
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about circle vocabulary

2. DIRECT INSTRUCTION (7 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (6 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (4 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving circle vocabulary
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates foundational understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Circle Vocabulary' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Central Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Central Angles' AND grade_level_min = 10),
  'Central Angles Topic Guide', 'Find central angle measures',
  'CENTRAL ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to central angles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect central angles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of central angles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning central angles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about central angles

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving central angles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Central Angles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Arc Measures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Arc Measures' AND grade_level_min = 10),
  'Arc Measures Topic Guide', 'Calculate arc measures',
  'ARC MEASURES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to arc measures
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect arc measures to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of arc measures
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning arc measures
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about arc measures

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving arc measures
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Arc Measures' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Arc Length
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Arc Length' AND grade_level_min = 10),
  'Arc Length Topic Guide', 'Calculate arc length',
  'ARC LENGTH - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to arc length
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect arc length to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of arc length
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning arc length
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about arc length

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving arc length
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Arc Length' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Inscribed Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inscribed Angles' AND grade_level_min = 10),
  'Inscribed Angles Topic Guide', 'Apply inscribed angle theorem',
  'INSCRIBED ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to inscribed angles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect inscribed angles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of inscribed angles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning inscribed angles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about inscribed angles

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving inscribed angles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inscribed Angles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 8
-- ============================================================================

-- Inscribed Angle Corollaries
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inscribed Angle Corollaries' AND grade_level_min = 10),
  'Inscribed Angle Corollaries Topic Guide', 'Use inscribed angle corollaries',
  'INSCRIBED ANGLE COROLLARIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to inscribed angle corollaries
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect inscribed angle corollaries to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of inscribed angle corollaries
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning inscribed angle corollaries
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about inscribed angle corollaries

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving inscribed angle corollaries
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inscribed Angle Corollaries' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Tangent Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Tangent Lines' AND grade_level_min = 10),
  'Tangent Lines Topic Guide', 'Apply tangent properties',
  'TANGENT LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to tangent lines
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect tangent lines to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of tangent lines
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning tangent lines
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about tangent lines

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving tangent lines
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Tangent Lines' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Secant Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Secant Lines' AND grade_level_min = 10),
  'Secant Lines Topic Guide', 'Apply secant properties',
  'SECANT LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to secant lines
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect secant lines to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of secant lines
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning secant lines
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about secant lines

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving secant lines
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Secant Lines' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Chord Properties
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Chord Properties' AND grade_level_min = 10),
  'Chord Properties Topic Guide', 'Use chord relationships',
  'CHORD PROPERTIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to chord properties
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect chord properties to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of chord properties
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning chord properties
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about chord properties

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving chord properties
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Chord Properties' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Segments in Circles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Segments in Circles' AND grade_level_min = 10),
  'Segments in Circles Topic Guide', 'Apply segment relationships',
  'SEGMENTS IN CIRCLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to segments in circles
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect segments in circles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of segments in circles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning segments in circles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about segments in circles

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving segments in circles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Segments in Circles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Equation of a Circle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equation of a Circle' AND grade_level_min = 10),
  'Equation of a Circle Topic Guide', 'Write circle equations',
  'EQUATION OF A CIRCLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to equation of a circle
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect equation of a circle to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of equation of a circle
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning equation of a circle
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about equation of a circle

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving equation of a circle
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equation of a Circle' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Graphing Circles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Circles' AND grade_level_min = 10),
  'Graphing Circles Topic Guide', 'Graph circles from equations',
  'GRAPHING CIRCLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing circles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing circles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing circles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing circles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing circles

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving graphing circles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Circles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Sector Area
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sector Area' AND grade_level_min = 10),
  'Sector Area Topic Guide', 'Calculate sector area',
  'SECTOR AREA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sector area
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sector area to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sector area
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sector area
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sector area

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving sector area
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sector Area' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Perimeter of Polygons
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Perimeter of Polygons' AND grade_level_min = 10),
  'Perimeter of Polygons Topic Guide', 'Calculate perimeter',
  'PERIMETER OF POLYGONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to perimeter of polygons
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect perimeter of polygons to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of perimeter of polygons
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning perimeter of polygons
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about perimeter of polygons

2. DIRECT INSTRUCTION (7 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (6 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (4 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving perimeter of polygons
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Perimeter of Polygons' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Area of Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Triangles' AND grade_level_min = 10),
  'Area of Triangles Topic Guide', 'Calculate triangle area',
  'AREA OF TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to area of triangles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect area of triangles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of area of triangles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning area of triangles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about area of triangles

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving area of triangles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Triangles' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Area of Parallelograms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Parallelograms' AND grade_level_min = 10),
  'Area of Parallelograms Topic Guide', 'Calculate parallelogram area',
  'AREA OF PARALLELOGRAMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to area of parallelograms
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect area of parallelograms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of area of parallelograms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning area of parallelograms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about area of parallelograms

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving area of parallelograms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Parallelograms' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Area of Trapezoids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Trapezoids' AND grade_level_min = 10),
  'Area of Trapezoids Topic Guide', 'Calculate trapezoid area',
  'AREA OF TRAPEZOIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to area of trapezoids
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect area of trapezoids to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of area of trapezoids
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning area of trapezoids
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about area of trapezoids

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving area of trapezoids
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Trapezoids' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 9
-- ============================================================================

-- Area of Rhombi and Kites
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Rhombi and Kites' AND grade_level_min = 10),
  'Area of Rhombi and Kites Topic Guide', 'Calculate using diagonals',
  'AREA OF RHOMBI AND KITES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to area of rhombi and kites
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect area of rhombi and kites to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of area of rhombi and kites
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning area of rhombi and kites
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about area of rhombi and kites

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving area of rhombi and kites
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Rhombi and Kites' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Area of Regular Polygons
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Regular Polygons' AND grade_level_min = 10),
  'Area of Regular Polygons Topic Guide', 'Calculate using apothem',
  'AREA OF REGULAR POLYGONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to area of regular polygons
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect area of regular polygons to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of area of regular polygons
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning area of regular polygons
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about area of regular polygons

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving area of regular polygons
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Regular Polygons' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Area of Composite Figures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Composite Figures' AND grade_level_min = 10),
  'Area of Composite Figures Topic Guide', 'Break into simpler shapes',
  'AREA OF COMPOSITE FIGURES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to area of composite figures
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect area of composite figures to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of area of composite figures
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning area of composite figures
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about area of composite figures

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving area of composite figures
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Composite Figures' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Perimeter and Area on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Perimeter and Area on Coordinate Plane' AND grade_level_min = 10),
  'Perimeter and Area on Coordinate Plane Topic Guide', 'Use coordinates for calculations',
  'PERIMETER AND AREA ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to perimeter and area on coordinate plane
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect perimeter and area on coordinate plane to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of perimeter and area on coordinate plane
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning perimeter and area on coordinate plane
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about perimeter and area on coordinate plane

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving perimeter and area on coordinate plane
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Perimeter and Area on Coordinate Plane' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Effects of Changing Dimensions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Effects of Changing Dimensions' AND grade_level_min = 10),
  'Effects of Changing Dimensions Topic Guide', 'Analyze how changes affect area/perimeter',
  'EFFECTS OF CHANGING DIMENSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to effects of changing dimensions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect effects of changing dimensions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of effects of changing dimensions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning effects of changing dimensions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about effects of changing dimensions

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving effects of changing dimensions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Effects of Changing Dimensions' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Cross-Sections of Solids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Cross-Sections of Solids' AND grade_level_min = 10),
  'Cross-Sections of Solids Topic Guide', 'Identify cross-sections',
  'CROSS-SECTIONS OF SOLIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to cross-sections of solids
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect cross-sections of solids to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of cross-sections of solids
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning cross-sections of solids
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about cross-sections of solids

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving cross-sections of solids
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cross-Sections of Solids' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Surface Area of Prisms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Prisms' AND grade_level_min = 10),
  'Surface Area of Prisms Topic Guide', 'Calculate prism surface area',
  'SURFACE AREA OF PRISMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to surface area of prisms
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect surface area of prisms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of surface area of prisms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning surface area of prisms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about surface area of prisms

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving surface area of prisms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Prisms' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Surface Area of Cylinders
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Cylinders' AND grade_level_min = 10),
  'Surface Area of Cylinders Topic Guide', 'Calculate cylinder surface area',
  'SURFACE AREA OF CYLINDERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to surface area of cylinders
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect surface area of cylinders to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of surface area of cylinders
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning surface area of cylinders
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about surface area of cylinders

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving surface area of cylinders
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Cylinders' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Surface Area of Pyramids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Pyramids' AND grade_level_min = 10),
  'Surface Area of Pyramids Topic Guide', 'Calculate pyramid surface area',
  'SURFACE AREA OF PYRAMIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to surface area of pyramids
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect surface area of pyramids to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of surface area of pyramids
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning surface area of pyramids
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about surface area of pyramids

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving surface area of pyramids
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Pyramids' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Surface Area of Cones
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Cones' AND grade_level_min = 10),
  'Surface Area of Cones Topic Guide', 'Calculate cone surface area',
  'SURFACE AREA OF CONES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to surface area of cones
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect surface area of cones to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of surface area of cones
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning surface area of cones
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about surface area of cones

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving surface area of cones
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Cones' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Surface Area of Spheres
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Spheres' AND grade_level_min = 10),
  'Surface Area of Spheres Topic Guide', 'Calculate sphere surface area',
  'SURFACE AREA OF SPHERES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to surface area of spheres
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect surface area of spheres to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of surface area of spheres
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning surface area of spheres
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about surface area of spheres

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving surface area of spheres
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Spheres' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Volume of Prisms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Prisms' AND grade_level_min = 10),
  'Volume of Prisms Topic Guide', 'Calculate prism volume',
  'VOLUME OF PRISMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to volume of prisms
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect volume of prisms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of volume of prisms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning volume of prisms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about volume of prisms

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving volume of prisms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Prisms' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 10
-- ============================================================================

-- Volume of Cylinders
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Cylinders' AND grade_level_min = 10),
  'Volume of Cylinders Topic Guide', 'Calculate cylinder volume',
  'VOLUME OF CYLINDERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to volume of cylinders
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect volume of cylinders to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of volume of cylinders
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning volume of cylinders
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about volume of cylinders

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving volume of cylinders
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Cylinders' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Volume of Pyramids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Pyramids' AND grade_level_min = 10),
  'Volume of Pyramids Topic Guide', 'Calculate pyramid volume',
  'VOLUME OF PYRAMIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to volume of pyramids
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect volume of pyramids to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of volume of pyramids
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning volume of pyramids
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about volume of pyramids

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving volume of pyramids
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Pyramids' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Volume of Cones
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Cones' AND grade_level_min = 10),
  'Volume of Cones Topic Guide', 'Calculate cone volume',
  'VOLUME OF CONES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to volume of cones
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect volume of cones to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of volume of cones
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning volume of cones
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about volume of cones

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving volume of cones
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Cones' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Volume of Spheres
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Spheres' AND grade_level_min = 10),
  'Volume of Spheres Topic Guide', 'Calculate sphere volume',
  'VOLUME OF SPHERES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to volume of spheres
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect volume of spheres to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of volume of spheres
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning volume of spheres
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about volume of spheres

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving volume of spheres
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Spheres' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Similar Solids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Similar Solids' AND grade_level_min = 10),
  'Similar Solids Topic Guide', 'Apply ratios to similar solids',
  'SIMILAR SOLIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to similar solids
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect similar solids to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of similar solids
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning similar solids
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about similar solids

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving similar solids
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Similar Solids' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Composite Solids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Composite Solids' AND grade_level_min = 10),
  'Composite Solids Topic Guide', 'Calculate for combined shapes',
  'COMPOSITE SOLIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to composite solids
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect composite solids to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of composite solids
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning composite solids
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about composite solids

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving composite solids
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Composite Solids' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Translations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Translations' AND grade_level_min = 10),
  'Translations Topic Guide', 'Perform and describe translations',
  'TRANSLATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to translations
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect translations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of translations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning translations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about translations

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving translations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Translations' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Reflections
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reflections' AND grade_level_min = 10),
  'Reflections Topic Guide', 'Perform and describe reflections',
  'REFLECTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to reflections
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect reflections to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of reflections
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning reflections
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about reflections

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving reflections
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reflections' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Rotations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rotations' AND grade_level_min = 10),
  'Rotations Topic Guide', 'Perform and describe rotations',
  'ROTATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to rotations
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect rotations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of rotations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning rotations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about rotations

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving rotations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rotations' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Compositions of Transformations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Compositions of Transformations' AND grade_level_min = 10),
  'Compositions of Transformations Topic Guide', 'Perform multiple transformations',
  'COMPOSITIONS OF TRANSFORMATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to compositions of transformations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect compositions of transformations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of compositions of transformations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning compositions of transformations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about compositions of transformations

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving compositions of transformations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compositions of Transformations' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Glide Reflections
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Glide Reflections' AND grade_level_min = 10),
  'Glide Reflections Topic Guide', 'Perform and identify glide reflections',
  'GLIDE REFLECTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to glide reflections
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect glide reflections to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of glide reflections
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning glide reflections
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about glide reflections

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving glide reflections
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Glide Reflections' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Symmetry
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Symmetry' AND grade_level_min = 10),
  'Symmetry Topic Guide', 'Identify line and rotational symmetry',
  'SYMMETRY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to symmetry
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect symmetry to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of symmetry
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning symmetry
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about symmetry

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving symmetry
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Symmetry' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 11
-- ============================================================================

-- Dilations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dilations' AND grade_level_min = 10),
  'Dilations Topic Guide', 'Perform and describe dilations',
  'DILATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to dilations
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect dilations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of dilations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning dilations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about dilations

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving dilations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dilations' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Similarity Transformations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Similarity Transformations' AND grade_level_min = 10),
  'Similarity Transformations Topic Guide', 'Use dilations for similarity',
  'SIMILARITY TRANSFORMATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to similarity transformations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect similarity transformations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of similarity transformations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning similarity transformations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about similarity transformations

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving similarity transformations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Similarity Transformations' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Transformations and Congruence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Transformations and Congruence' AND grade_level_min = 10),
  'Transformations and Congruence Topic Guide', 'Prove congruence with transformations',
  'TRANSFORMATIONS AND CONGRUENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to transformations and congruence
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect transformations and congruence to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of transformations and congruence
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning transformations and congruence
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about transformations and congruence

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving transformations and congruence
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Transformations and Congruence' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Transformations in Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Transformations in Coordinate Plane' AND grade_level_min = 10),
  'Transformations in Coordinate Plane Topic Guide', 'Apply coordinate rules',
  'TRANSFORMATIONS IN COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to transformations in coordinate plane
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect transformations in coordinate plane to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of transformations in coordinate plane
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning transformations in coordinate plane
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about transformations in coordinate plane

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving transformations in coordinate plane
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Transformations in Coordinate Plane' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Basic Probability
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Basic Probability' AND grade_level_min = 10),
  'Basic Probability Topic Guide', 'Calculate probability of events',
  'BASIC PROBABILITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to basic probability
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect basic probability to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of basic probability
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning basic probability
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about basic probability

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving basic probability
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Basic Probability' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Compound Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Compound Events' AND grade_level_min = 10),
  'Compound Events Topic Guide', 'Find probability of compound events',
  'COMPOUND EVENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to compound events
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect compound events to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of compound events
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning compound events
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about compound events

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving compound events
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compound Events' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Geometric Probability
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Geometric Probability' AND grade_level_min = 10),
  'Geometric Probability Topic Guide', 'Calculate probability using area/length',
  'GEOMETRIC PROBABILITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to geometric probability
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect geometric probability to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of geometric probability
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning geometric probability
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about geometric probability

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving geometric probability
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Geometric Probability' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Permutations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Permutations' AND grade_level_min = 10),
  'Permutations Topic Guide', 'Calculate and apply permutations',
  'PERMUTATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to permutations
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect permutations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of permutations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning permutations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about permutations

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving permutations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Permutations' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Combinations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Combinations' AND grade_level_min = 10),
  'Combinations Topic Guide', 'Calculate and apply combinations',
  'COMBINATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to combinations
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect combinations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of combinations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning combinations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about combinations

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving combinations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Combinations' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Independent and Dependent Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Independent and Dependent Events' AND grade_level_min = 10),
  'Independent and Dependent Events Topic Guide', 'Distinguish and calculate',
  'INDEPENDENT AND DEPENDENT EVENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to independent and dependent events
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect independent and dependent events to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of independent and dependent events
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning independent and dependent events
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about independent and dependent events

2. DIRECT INSTRUCTION (11 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (9 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (6 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving independent and dependent events
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Independent and Dependent Events' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Conditional Probability
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Conditional Probability' AND grade_level_min = 10),
  'Conditional Probability Topic Guide', 'Calculate conditional probability',
  'CONDITIONAL PROBABILITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to conditional probability
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect conditional probability to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of conditional probability
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning conditional probability
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about conditional probability

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving conditional probability
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Conditional Probability' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Two-Way Tables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Two-Way Tables' AND grade_level_min = 10),
  'Two-Way Tables Topic Guide', 'Analyze data in two-way tables',
  'TWO-WAY TABLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to two-way tables
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect two-way tables to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of two-way tables
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning two-way tables
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about two-way tables

2. DIRECT INSTRUCTION (9 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (8 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (5 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving two-way tables
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Two-Way Tables' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 12
-- ============================================================================

-- Probability Distributions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Probability Distributions' AND grade_level_min = 10),
  'Probability Distributions Topic Guide', 'Create and interpret distributions',
  'PROBABILITY DISTRIBUTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 10 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to probability distributions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect probability distributions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of probability distributions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning probability distributions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about probability distributions

2. DIRECT INSTRUCTION (13 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (11 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (7 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving probability distributions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Probability Distributions' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

