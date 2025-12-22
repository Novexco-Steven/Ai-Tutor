-- Grade 9 Math Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 9 Math topics
-- ============================================================================

-- ============================================================================
-- SECTION 1
-- ============================================================================

-- Real Number System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Real Number System' AND grade_level_min = 9),
  'Real Number System Topic Guide', 'Classify numbers in the real number system',
  'REAL NUMBER SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to real number system
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect real number system to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of real number system
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning real number system
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about real number system

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
- Accurately solves problems involving real number system
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Real Number System' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Properties of Real Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Properties of Real Numbers' AND grade_level_min = 9),
  'Properties of Real Numbers Topic Guide', 'Apply commutative, associative, distributive properties',
  'PROPERTIES OF REAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to properties of real numbers
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect properties of real numbers to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of properties of real numbers
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning properties of real numbers
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about properties of real numbers

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
- Accurately solves problems involving properties of real numbers
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties of Real Numbers' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Absolute Value
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value' AND grade_level_min = 9),
  'Absolute Value Topic Guide', 'Evaluate and interpret absolute value',
  'ABSOLUTE VALUE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to absolute value
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect absolute value to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of absolute value
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning absolute value
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about absolute value

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
- Accurately solves problems involving absolute value
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Square Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Square Roots' AND grade_level_min = 9),
  'Square Roots Topic Guide', 'Simplify square roots',
  'SQUARE ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to square roots
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect square roots to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of square roots
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning square roots
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about square roots

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
- Accurately solves problems involving square roots
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Square Roots' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Cube Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Cube Roots' AND grade_level_min = 9),
  'Cube Roots Topic Guide', 'Simplify cube roots',
  'CUBE ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to cube roots
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect cube roots to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of cube roots
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning cube roots
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about cube roots

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
- Accurately solves problems involving cube roots
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cube Roots' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- nth Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'nth Roots' AND grade_level_min = 9),
  'nth Roots Topic Guide', 'Work with higher roots',
  'NTH ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to nth roots
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect nth roots to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of nth roots
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning nth roots
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about nth roots

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
- Accurately solves problems involving nth roots
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'nth Roots' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Rational Exponents
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rational Exponents' AND grade_level_min = 9),
  'Rational Exponents Topic Guide', 'Convert between radicals and exponents',
  'RATIONAL EXPONENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to rational exponents
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect rational exponents to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of rational exponents
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning rational exponents
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about rational exponents

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
- Accurately solves problems involving rational exponents
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rational Exponents' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Simplifying Radicals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simplifying Radicals' AND grade_level_min = 9),
  'Simplifying Radicals Topic Guide', 'Simplify radical expressions',
  'SIMPLIFYING RADICALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to simplifying radicals
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect simplifying radicals to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of simplifying radicals
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning simplifying radicals
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about simplifying radicals

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
- Accurately solves problems involving simplifying radicals
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simplifying Radicals' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Operations with Radicals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Operations with Radicals' AND grade_level_min = 9),
  'Operations with Radicals Topic Guide', 'Add, subtract, multiply, divide radicals',
  'OPERATIONS WITH RADICALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to operations with radicals
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect operations with radicals to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of operations with radicals
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning operations with radicals
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about operations with radicals

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
- Accurately solves problems involving operations with radicals
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Operations with Radicals' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Rationalizing Denominators
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rationalizing Denominators' AND grade_level_min = 9),
  'Rationalizing Denominators Topic Guide', 'Rationalize denominators',
  'RATIONALIZING DENOMINATORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to rationalizing denominators
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect rationalizing denominators to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of rationalizing denominators
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning rationalizing denominators
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about rationalizing denominators

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
- Accurately solves problems involving rationalizing denominators
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rationalizing Denominators' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Algebraic Expressions Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Algebraic Expressions Review' AND grade_level_min = 9),
  'Algebraic Expressions Review Topic Guide', 'Simplify and evaluate expressions',
  'ALGEBRAIC EXPRESSIONS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 introductory mathematics
- Foundational understanding of related concepts
- Readiness for foundational mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to algebraic expressions review
2. Apply foundational techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect algebraic expressions review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of algebraic expressions review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning algebraic expressions review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about algebraic expressions review

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
- Accurately solves problems involving algebraic expressions review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates foundational understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Algebraic Expressions Review' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Distributive Property
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Distributive Property' AND grade_level_min = 9),
  'Distributive Property Topic Guide', 'Apply distributive property',
  'DISTRIBUTIVE PROPERTY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to distributive property
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect distributive property to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of distributive property
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning distributive property
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about distributive property

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
- Accurately solves problems involving distributive property
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Distributive Property' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 2
-- ============================================================================

-- Combining Like Terms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Combining Like Terms' AND grade_level_min = 9),
  'Combining Like Terms Topic Guide', 'Simplify by combining like terms',
  'COMBINING LIKE TERMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to combining like terms
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect combining like terms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of combining like terms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning combining like terms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about combining like terms

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
- Accurately solves problems involving combining like terms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Combining Like Terms' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Multi-Step Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multi-Step Equations' AND grade_level_min = 9),
  'Multi-Step Equations Topic Guide', 'Solve equations with multiple steps',
  'MULTI-STEP EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to multi-step equations
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect multi-step equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of multi-step equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning multi-step equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about multi-step equations

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
- Accurately solves problems involving multi-step equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multi-Step Equations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Equations with Variables on Both Sides
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equations with Variables on Both Sides' AND grade_level_min = 9),
  'Equations with Variables on Both Sides Topic Guide', 'Solve complex linear equations',
  'EQUATIONS WITH VARIABLES ON BOTH SIDES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to equations with variables on both sides
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect equations with variables on both sides to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of equations with variables on both sides
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning equations with variables on both sides
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about equations with variables on both sides

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
- Accurately solves problems involving equations with variables on both sides
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equations with Variables on Both Sides' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Equations with Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equations with Fractions' AND grade_level_min = 9),
  'Equations with Fractions Topic Guide', 'Solve equations with rational coefficients',
  'EQUATIONS WITH FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to equations with fractions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect equations with fractions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of equations with fractions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning equations with fractions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about equations with fractions

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
- Accurately solves problems involving equations with fractions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equations with Fractions' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Literal Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Literal Equations' AND grade_level_min = 9),
  'Literal Equations Topic Guide', 'Solve for a specified variable',
  'LITERAL EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to literal equations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect literal equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of literal equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning literal equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about literal equations

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
- Accurately solves problems involving literal equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Literal Equations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Absolute Value Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value Equations' AND grade_level_min = 9),
  'Absolute Value Equations Topic Guide', 'Solve equations with absolute value',
  'ABSOLUTE VALUE EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to absolute value equations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect absolute value equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of absolute value equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning absolute value equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about absolute value equations

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
- Accurately solves problems involving absolute value equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value Equations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Writing Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Equations' AND grade_level_min = 9),
  'Writing Equations Topic Guide', 'Model situations with equations',
  'WRITING EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to writing equations
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect writing equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of writing equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning writing equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about writing equations

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
- Accurately solves problems involving writing equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Equations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Proportions and Cross Multiplication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Proportions and Cross Multiplication' AND grade_level_min = 9),
  'Proportions and Cross Multiplication Topic Guide', 'Solve proportions',
  'PROPORTIONS AND CROSS MULTIPLICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to proportions and cross multiplication
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect proportions and cross multiplication to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of proportions and cross multiplication
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning proportions and cross multiplication
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about proportions and cross multiplication

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
- Accurately solves problems involving proportions and cross multiplication
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Proportions and Cross Multiplication' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Direct Variation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Direct Variation' AND grade_level_min = 9),
  'Direct Variation Topic Guide', 'Understand and apply direct variation',
  'DIRECT VARIATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to direct variation
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect direct variation to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of direct variation
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning direct variation
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about direct variation

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
- Accurately solves problems involving direct variation
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Direct Variation' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Inverse Variation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inverse Variation' AND grade_level_min = 9),
  'Inverse Variation Topic Guide', 'Understand and apply inverse variation',
  'INVERSE VARIATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to inverse variation
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect inverse variation to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of inverse variation
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning inverse variation
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about inverse variation

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
- Accurately solves problems involving inverse variation
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inverse Variation' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Functions and Relations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Functions and Relations' AND grade_level_min = 9),
  'Functions and Relations Topic Guide', 'Distinguish functions from relations',
  'FUNCTIONS AND RELATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to functions and relations
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect functions and relations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of functions and relations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning functions and relations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about functions and relations

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
- Accurately solves problems involving functions and relations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Functions and Relations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Function Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Notation' AND grade_level_min = 9),
  'Function Notation Topic Guide', 'Use and interpret f(x) notation',
  'FUNCTION NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to function notation
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect function notation to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of function notation
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning function notation
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about function notation

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
- Accurately solves problems involving function notation
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Notation' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 3
-- ============================================================================

-- Domain and Range
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Domain and Range' AND grade_level_min = 9),
  'Domain and Range Topic Guide', 'Find domain and range of functions',
  'DOMAIN AND RANGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to domain and range
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect domain and range to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of domain and range
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning domain and range
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about domain and range

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
- Accurately solves problems involving domain and range
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Domain and Range' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Slope Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Slope Review' AND grade_level_min = 9),
  'Slope Review Topic Guide', 'Calculate and interpret slope',
  'SLOPE REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to slope review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect slope review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of slope review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning slope review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about slope review

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
- Accurately solves problems involving slope review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Slope Review' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Slope-Intercept Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Slope-Intercept Form' AND grade_level_min = 9),
  'Slope-Intercept Form Topic Guide', 'Write and graph y = mx + b',
  'SLOPE-INTERCEPT FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to slope-intercept form
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect slope-intercept form to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of slope-intercept form
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning slope-intercept form
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about slope-intercept form

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
- Accurately solves problems involving slope-intercept form
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Slope-Intercept Form' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Point-Slope Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Point-Slope Form' AND grade_level_min = 9),
  'Point-Slope Form Topic Guide', 'Write equations in point-slope form',
  'POINT-SLOPE FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to point-slope form
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect point-slope form to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of point-slope form
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning point-slope form
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about point-slope form

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
- Accurately solves problems involving point-slope form
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Point-Slope Form' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Standard Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Standard Form' AND grade_level_min = 9),
  'Standard Form Topic Guide', 'Convert between forms of linear equations',
  'STANDARD FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to standard form
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect standard form to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of standard form
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning standard form
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about standard form

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
- Accurately solves problems involving standard form
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Standard Form' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Parallel and Perpendicular Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parallel and Perpendicular Lines' AND grade_level_min = 9),
  'Parallel and Perpendicular Lines Topic Guide', 'Write equations of parallel/perpendicular lines',
  'PARALLEL AND PERPENDICULAR LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to parallel and perpendicular lines
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect parallel and perpendicular lines to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of parallel and perpendicular lines
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning parallel and perpendicular lines
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about parallel and perpendicular lines

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
- Accurately solves problems involving parallel and perpendicular lines
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parallel and Perpendicular Lines' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Linear Regression
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear Regression' AND grade_level_min = 9),
  'Linear Regression Topic Guide', 'Find line of best fit',
  'LINEAR REGRESSION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to linear regression
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect linear regression to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of linear regression
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning linear regression
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about linear regression

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
- Accurately solves problems involving linear regression
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear Regression' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Arithmetic Sequences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Arithmetic Sequences' AND grade_level_min = 9),
  'Arithmetic Sequences Topic Guide', 'Connect sequences to linear functions',
  'ARITHMETIC SEQUENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to arithmetic sequences
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect arithmetic sequences to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of arithmetic sequences
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning arithmetic sequences
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about arithmetic sequences

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
- Accurately solves problems involving arithmetic sequences
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Arithmetic Sequences' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Piecewise Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Piecewise Functions' AND grade_level_min = 9),
  'Piecewise Functions Topic Guide', 'Graph and interpret piecewise functions',
  'PIECEWISE FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to piecewise functions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect piecewise functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of piecewise functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning piecewise functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about piecewise functions

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
- Accurately solves problems involving piecewise functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Piecewise Functions' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Step Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Step Functions' AND grade_level_min = 9),
  'Step Functions Topic Guide', 'Understand and graph step functions',
  'STEP FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to step functions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect step functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of step functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning step functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about step functions

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
- Accurately solves problems involving step functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Step Functions' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Linear Function Applications
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear Function Applications' AND grade_level_min = 9),
  'Linear Function Applications Topic Guide', 'Model real situations with linear functions',
  'LINEAR FUNCTION APPLICATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to linear function applications
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect linear function applications to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of linear function applications
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning linear function applications
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about linear function applications

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
- Accurately solves problems involving linear function applications
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear Function Applications' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Solving by Graphing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving by Graphing' AND grade_level_min = 9),
  'Solving by Graphing Topic Guide', 'Solve systems by graphing',
  'SOLVING BY GRAPHING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving by graphing
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving by graphing to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving by graphing
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving by graphing
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving by graphing

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
- Accurately solves problems involving solving by graphing
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving by Graphing' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 4
-- ============================================================================

-- Solving by Substitution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving by Substitution' AND grade_level_min = 9),
  'Solving by Substitution Topic Guide', 'Use substitution method',
  'SOLVING BY SUBSTITUTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving by substitution
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving by substitution to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving by substitution
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving by substitution
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving by substitution

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
- Accurately solves problems involving solving by substitution
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving by Substitution' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Solving by Elimination
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving by Elimination' AND grade_level_min = 9),
  'Solving by Elimination Topic Guide', 'Use elimination method',
  'SOLVING BY ELIMINATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving by elimination
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving by elimination to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving by elimination
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving by elimination
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving by elimination

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
- Accurately solves problems involving solving by elimination
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving by Elimination' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Special Systems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Special Systems' AND grade_level_min = 9),
  'Special Systems Topic Guide', 'Identify no solution and infinite solutions',
  'SPECIAL SYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to special systems
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect special systems to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of special systems
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning special systems
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about special systems

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
- Accurately solves problems involving special systems
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Special Systems' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Choosing a Method
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Choosing a Method' AND grade_level_min = 9),
  'Choosing a Method Topic Guide', 'Select appropriate solving method',
  'CHOOSING A METHOD - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to choosing a method
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect choosing a method to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of choosing a method
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning choosing a method
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about choosing a method

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
- Accurately solves problems involving choosing a method
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Choosing a Method' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Systems with Three Variables Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Systems with Three Variables Introduction' AND grade_level_min = 9),
  'Systems with Three Variables Introduction Topic Guide', 'Solve simple 3-variable systems',
  'SYSTEMS WITH THREE VARIABLES INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to systems with three variables introduction
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect systems with three variables introduction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of systems with three variables introduction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning systems with three variables introduction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about systems with three variables introduction

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
- Accurately solves problems involving systems with three variables introduction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Systems with Three Variables Introduction' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Systems of Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Systems of Inequalities' AND grade_level_min = 9),
  'Systems of Inequalities Topic Guide', 'Graph systems of linear inequalities',
  'SYSTEMS OF INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to systems of inequalities
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect systems of inequalities to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of systems of inequalities
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning systems of inequalities
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about systems of inequalities

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
- Accurately solves problems involving systems of inequalities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Systems of Inequalities' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Linear Programming Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear Programming Introduction' AND grade_level_min = 9),
  'Linear Programming Introduction Topic Guide', 'Solve optimization problems',
  'LINEAR PROGRAMMING INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to linear programming introduction
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect linear programming introduction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of linear programming introduction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning linear programming introduction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about linear programming introduction

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
- Accurately solves problems involving linear programming introduction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear Programming Introduction' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Systems Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Systems Word Problems' AND grade_level_min = 9),
  'Systems Word Problems Topic Guide', 'Model situations with systems',
  'SYSTEMS WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to systems word problems
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect systems word problems to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of systems word problems
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning systems word problems
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about systems word problems

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
- Accurately solves problems involving systems word problems
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Systems Word Problems' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- One-Step Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'One-Step Inequalities' AND grade_level_min = 9),
  'One-Step Inequalities Topic Guide', 'Solve and graph simple inequalities',
  'ONE-STEP INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to one-step inequalities
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect one-step inequalities to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of one-step inequalities
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning one-step inequalities
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about one-step inequalities

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
- Accurately solves problems involving one-step inequalities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'One-Step Inequalities' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Multi-Step Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multi-Step Inequalities' AND grade_level_min = 9),
  'Multi-Step Inequalities Topic Guide', 'Solve inequalities with multiple steps',
  'MULTI-STEP INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to multi-step inequalities
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect multi-step inequalities to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of multi-step inequalities
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning multi-step inequalities
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about multi-step inequalities

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
- Accurately solves problems involving multi-step inequalities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multi-Step Inequalities' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Compound Inequalities And
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Compound Inequalities And' AND grade_level_min = 9),
  'Compound Inequalities And Topic Guide', 'Solve and graph "and" inequalities',
  'COMPOUND INEQUALITIES AND - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to compound inequalities and
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect compound inequalities and to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of compound inequalities and
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning compound inequalities and
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about compound inequalities and

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
- Accurately solves problems involving compound inequalities and
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compound Inequalities And' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Compound Inequalities Or
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Compound Inequalities Or' AND grade_level_min = 9),
  'Compound Inequalities Or Topic Guide', 'Solve and graph "or" inequalities',
  'COMPOUND INEQUALITIES OR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to compound inequalities or
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect compound inequalities or to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of compound inequalities or
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning compound inequalities or
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about compound inequalities or

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
- Accurately solves problems involving compound inequalities or
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compound Inequalities Or' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 5
-- ============================================================================

-- Absolute Value Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value Inequalities' AND grade_level_min = 9),
  'Absolute Value Inequalities Topic Guide', 'Solve absolute value inequalities',
  'ABSOLUTE VALUE INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to absolute value inequalities
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect absolute value inequalities to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of absolute value inequalities
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning absolute value inequalities
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about absolute value inequalities

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
- Accurately solves problems involving absolute value inequalities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value Inequalities' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Graphing Linear Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Linear Inequalities' AND grade_level_min = 9),
  'Graphing Linear Inequalities Topic Guide', 'Graph inequalities in two variables',
  'GRAPHING LINEAR INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing linear inequalities
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing linear inequalities to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing linear inequalities
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing linear inequalities
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing linear inequalities

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
- Accurately solves problems involving graphing linear inequalities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Linear Inequalities' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Systems of Linear Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Systems of Linear Inequalities' AND grade_level_min = 9),
  'Systems of Linear Inequalities Topic Guide', 'Graph systems of inequalities',
  'SYSTEMS OF LINEAR INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to systems of linear inequalities
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect systems of linear inequalities to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of systems of linear inequalities
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning systems of linear inequalities
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about systems of linear inequalities

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
- Accurately solves problems involving systems of linear inequalities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Systems of Linear Inequalities' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Feasible Regions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Feasible Regions' AND grade_level_min = 9),
  'Feasible Regions Topic Guide', 'Identify and describe feasible regions',
  'FEASIBLE REGIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to feasible regions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect feasible regions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of feasible regions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning feasible regions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about feasible regions

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
- Accurately solves problems involving feasible regions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Feasible Regions' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Inequality Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inequality Word Problems' AND grade_level_min = 9),
  'Inequality Word Problems Topic Guide', 'Model with inequalities',
  'INEQUALITY WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to inequality word problems
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect inequality word problems to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of inequality word problems
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning inequality word problems
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about inequality word problems

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
- Accurately solves problems involving inequality word problems
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inequality Word Problems' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Polynomial Vocabulary
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polynomial Vocabulary' AND grade_level_min = 9),
  'Polynomial Vocabulary Topic Guide', 'Classify and name polynomials',
  'POLYNOMIAL VOCABULARY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 introductory mathematics
- Foundational understanding of related concepts
- Readiness for foundational mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to polynomial vocabulary
2. Apply foundational techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect polynomial vocabulary to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of polynomial vocabulary
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning polynomial vocabulary
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about polynomial vocabulary

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
- Accurately solves problems involving polynomial vocabulary
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates foundational understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polynomial Vocabulary' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Adding Polynomials
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Polynomials' AND grade_level_min = 9),
  'Adding Polynomials Topic Guide', 'Add polynomials',
  'ADDING POLYNOMIALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to adding polynomials
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect adding polynomials to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of adding polynomials
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning adding polynomials
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about adding polynomials

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
- Accurately solves problems involving adding polynomials
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Polynomials' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Subtracting Polynomials
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Polynomials' AND grade_level_min = 9),
  'Subtracting Polynomials Topic Guide', 'Subtract polynomials',
  'SUBTRACTING POLYNOMIALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to subtracting polynomials
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect subtracting polynomials to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of subtracting polynomials
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning subtracting polynomials
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about subtracting polynomials

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
- Accurately solves problems involving subtracting polynomials
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Polynomials' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Multiplying Monomials
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Monomials' AND grade_level_min = 9),
  'Multiplying Monomials Topic Guide', 'Multiply monomials',
  'MULTIPLYING MONOMIALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to multiplying monomials
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect multiplying monomials to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of multiplying monomials
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning multiplying monomials
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about multiplying monomials

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
- Accurately solves problems involving multiplying monomials
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Monomials' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Multiplying by Monomials
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying by Monomials' AND grade_level_min = 9),
  'Multiplying by Monomials Topic Guide', 'Multiply polynomial by monomial',
  'MULTIPLYING BY MONOMIALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to multiplying by monomials
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect multiplying by monomials to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of multiplying by monomials
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning multiplying by monomials
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about multiplying by monomials

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
- Accurately solves problems involving multiplying by monomials
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying by Monomials' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Multiplying Binomials
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Binomials' AND grade_level_min = 9),
  'Multiplying Binomials Topic Guide', 'Use FOIL method',
  'MULTIPLYING BINOMIALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to multiplying binomials
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect multiplying binomials to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of multiplying binomials
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning multiplying binomials
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about multiplying binomials

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
- Accurately solves problems involving multiplying binomials
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Binomials' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Special Products
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Special Products' AND grade_level_min = 9),
  'Special Products Topic Guide', 'Square binomials and difference of squares',
  'SPECIAL PRODUCTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to special products
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect special products to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of special products
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning special products
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about special products

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
- Accurately solves problems involving special products
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Special Products' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 6
-- ============================================================================

-- Multiplying Polynomials
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Polynomials' AND grade_level_min = 9),
  'Multiplying Polynomials Topic Guide', 'Multiply polynomials of any degree',
  'MULTIPLYING POLYNOMIALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to multiplying polynomials
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect multiplying polynomials to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of multiplying polynomials
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning multiplying polynomials
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about multiplying polynomials

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
- Accurately solves problems involving multiplying polynomials
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Polynomials' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Factoring GCF
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Factoring GCF' AND grade_level_min = 9),
  'Factoring GCF Topic Guide', 'Factor out greatest common factor',
  'FACTORING GCF - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to factoring gcf
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect factoring gcf to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of factoring gcf
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning factoring gcf
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about factoring gcf

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
- Accurately solves problems involving factoring gcf
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factoring GCF' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Factoring Trinomials x²+bx+c
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Factoring Trinomials x²+bx+c' AND grade_level_min = 9),
  'Factoring Trinomials x²+bx+c Topic Guide', 'Factor when a = 1',
  'FACTORING TRINOMIALS X²+BX+C - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to factoring trinomials x²+bx+c
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect factoring trinomials x²+bx+c to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of factoring trinomials x²+bx+c
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning factoring trinomials x²+bx+c
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about factoring trinomials x²+bx+c

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
- Accurately solves problems involving factoring trinomials x²+bx+c
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factoring Trinomials x²+bx+c' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Factoring Trinomials ax²+bx+c
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Factoring Trinomials ax²+bx+c' AND grade_level_min = 9),
  'Factoring Trinomials ax²+bx+c Topic Guide', 'Factor when a ≠ 1',
  'FACTORING TRINOMIALS AX²+BX+C - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to factoring trinomials ax²+bx+c
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect factoring trinomials ax²+bx+c to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of factoring trinomials ax²+bx+c
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning factoring trinomials ax²+bx+c
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about factoring trinomials ax²+bx+c

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
- Accurately solves problems involving factoring trinomials ax²+bx+c
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factoring Trinomials ax²+bx+c' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Factoring Special Products
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Factoring Special Products' AND grade_level_min = 9),
  'Factoring Special Products Topic Guide', 'Factor difference of squares, perfect squares',
  'FACTORING SPECIAL PRODUCTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to factoring special products
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect factoring special products to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of factoring special products
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning factoring special products
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about factoring special products

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
- Accurately solves problems involving factoring special products
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factoring Special Products' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Factoring by Grouping
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Factoring by Grouping' AND grade_level_min = 9),
  'Factoring by Grouping Topic Guide', 'Factor four-term polynomials',
  'FACTORING BY GROUPING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to factoring by grouping
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect factoring by grouping to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of factoring by grouping
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning factoring by grouping
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about factoring by grouping

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
- Accurately solves problems involving factoring by grouping
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factoring by Grouping' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Dividing Polynomials
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Polynomials' AND grade_level_min = 9),
  'Dividing Polynomials Topic Guide', 'Divide polynomials by monomials',
  'DIVIDING POLYNOMIALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to dividing polynomials
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect dividing polynomials to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of dividing polynomials
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning dividing polynomials
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about dividing polynomials

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
- Accurately solves problems involving dividing polynomials
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Polynomials' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Long Division of Polynomials
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Long Division of Polynomials' AND grade_level_min = 9),
  'Long Division of Polynomials Topic Guide', 'Perform polynomial long division',
  'LONG DIVISION OF POLYNOMIALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to long division of polynomials
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect long division of polynomials to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of long division of polynomials
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning long division of polynomials
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about long division of polynomials

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
- Accurately solves problems involving long division of polynomials
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Long Division of Polynomials' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Quadratic Functions Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quadratic Functions Introduction' AND grade_level_min = 9),
  'Quadratic Functions Introduction Topic Guide', 'Identify quadratic functions',
  'QUADRATIC FUNCTIONS INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to quadratic functions introduction
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect quadratic functions introduction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of quadratic functions introduction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning quadratic functions introduction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about quadratic functions introduction

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
- Accurately solves problems involving quadratic functions introduction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quadratic Functions Introduction' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Graphing Quadratics in Standard Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Quadratics in Standard Form' AND grade_level_min = 9),
  'Graphing Quadratics in Standard Form Topic Guide', 'Graph f(x) = ax² + bx + c',
  'GRAPHING QUADRATICS IN STANDARD FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing quadratics in standard form
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing quadratics in standard form to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing quadratics in standard form
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing quadratics in standard form
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing quadratics in standard form

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
- Accurately solves problems involving graphing quadratics in standard form
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Quadratics in Standard Form' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Vertex and Axis of Symmetry
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Vertex and Axis of Symmetry' AND grade_level_min = 9),
  'Vertex and Axis of Symmetry Topic Guide', 'Find vertex and axis of symmetry',
  'VERTEX AND AXIS OF SYMMETRY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to vertex and axis of symmetry
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect vertex and axis of symmetry to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of vertex and axis of symmetry
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning vertex and axis of symmetry
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about vertex and axis of symmetry

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
- Accurately solves problems involving vertex and axis of symmetry
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vertex and Axis of Symmetry' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Graphing Quadratics in Vertex Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Quadratics in Vertex Form' AND grade_level_min = 9),
  'Graphing Quadratics in Vertex Form Topic Guide', 'Graph f(x) = a(x - h)² + k',
  'GRAPHING QUADRATICS IN VERTEX FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing quadratics in vertex form
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing quadratics in vertex form to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing quadratics in vertex form
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing quadratics in vertex form
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing quadratics in vertex form

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
- Accurately solves problems involving graphing quadratics in vertex form
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Quadratics in Vertex Form' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 7
-- ============================================================================

-- Converting Between Forms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Converting Between Forms' AND grade_level_min = 9),
  'Converting Between Forms Topic Guide', 'Convert between standard and vertex form',
  'CONVERTING BETWEEN FORMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to converting between forms
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect converting between forms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of converting between forms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning converting between forms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about converting between forms

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
- Accurately solves problems involving converting between forms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Converting Between Forms' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Solving by Graphing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving by Graphing' AND grade_level_min = 9),
  'Solving by Graphing Topic Guide', 'Find zeros from graphs',
  'SOLVING BY GRAPHING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving by graphing
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving by graphing to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving by graphing
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving by graphing
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving by graphing

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
- Accurately solves problems involving solving by graphing
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving by Graphing' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Solving by Factoring
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving by Factoring' AND grade_level_min = 9),
  'Solving by Factoring Topic Guide', 'Solve quadratics by factoring',
  'SOLVING BY FACTORING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving by factoring
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving by factoring to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving by factoring
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving by factoring
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving by factoring

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
- Accurately solves problems involving solving by factoring
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving by Factoring' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Zero Product Property
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Zero Product Property' AND grade_level_min = 9),
  'Zero Product Property Topic Guide', 'Apply zero product property',
  'ZERO PRODUCT PROPERTY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to zero product property
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect zero product property to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of zero product property
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning zero product property
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about zero product property

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
- Accurately solves problems involving zero product property
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Zero Product Property' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Square Root Method
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Square Root Method' AND grade_level_min = 9),
  'Square Root Method Topic Guide', 'Solve by taking square roots',
  'SQUARE ROOT METHOD - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to square root method
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect square root method to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of square root method
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning square root method
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about square root method

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
- Accurately solves problems involving square root method
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Square Root Method' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Completing the Square
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Completing the Square' AND grade_level_min = 9),
  'Completing the Square Topic Guide', 'Solve by completing the square',
  'COMPLETING THE SQUARE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to completing the square
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect completing the square to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of completing the square
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning completing the square
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about completing the square

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
- Accurately solves problems involving completing the square
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Completing the Square' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Quadratic Formula
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quadratic Formula' AND grade_level_min = 9),
  'Quadratic Formula Topic Guide', 'Apply the quadratic formula',
  'QUADRATIC FORMULA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to quadratic formula
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect quadratic formula to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of quadratic formula
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning quadratic formula
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about quadratic formula

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
- Accurately solves problems involving quadratic formula
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quadratic Formula' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Discriminant
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Discriminant' AND grade_level_min = 9),
  'Discriminant Topic Guide', 'Use discriminant to predict solutions',
  'DISCRIMINANT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to discriminant
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect discriminant to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of discriminant
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning discriminant
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about discriminant

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
- Accurately solves problems involving discriminant
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Discriminant' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Choosing a Method
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Choosing a Method' AND grade_level_min = 9),
  'Choosing a Method Topic Guide', 'Select appropriate solving method',
  'CHOOSING A METHOD - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to choosing a method
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect choosing a method to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of choosing a method
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning choosing a method
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about choosing a method

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
- Accurately solves problems involving choosing a method
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Choosing a Method' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Quadratic Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quadratic Word Problems' AND grade_level_min = 9),
  'Quadratic Word Problems Topic Guide', 'Model with quadratic functions',
  'QUADRATIC WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to quadratic word problems
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect quadratic word problems to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of quadratic word problems
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning quadratic word problems
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about quadratic word problems

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
- Accurately solves problems involving quadratic word problems
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quadratic Word Problems' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Exponential Functions Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Functions Introduction' AND grade_level_min = 9),
  'Exponential Functions Introduction Topic Guide', 'Identify exponential functions',
  'EXPONENTIAL FUNCTIONS INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to exponential functions introduction
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect exponential functions introduction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of exponential functions introduction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning exponential functions introduction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about exponential functions introduction

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
- Accurately solves problems involving exponential functions introduction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Functions Introduction' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Graphing Exponential Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Exponential Functions' AND grade_level_min = 9),
  'Graphing Exponential Functions Topic Guide', 'Graph y = abˣ',
  'GRAPHING EXPONENTIAL FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing exponential functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing exponential functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing exponential functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing exponential functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing exponential functions

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
- Accurately solves problems involving graphing exponential functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Exponential Functions' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 8
-- ============================================================================

-- Exponential Growth
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Growth' AND grade_level_min = 9),
  'Exponential Growth Topic Guide', 'Model exponential growth',
  'EXPONENTIAL GROWTH - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to exponential growth
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect exponential growth to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of exponential growth
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning exponential growth
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about exponential growth

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
- Accurately solves problems involving exponential growth
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Growth' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Exponential Decay
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Decay' AND grade_level_min = 9),
  'Exponential Decay Topic Guide', 'Model exponential decay',
  'EXPONENTIAL DECAY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to exponential decay
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect exponential decay to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of exponential decay
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning exponential decay
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about exponential decay

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
- Accurately solves problems involving exponential decay
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Decay' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Growth and Decay Rate
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Growth and Decay Rate' AND grade_level_min = 9),
  'Growth and Decay Rate Topic Guide', 'Find and interpret growth/decay rate',
  'GROWTH AND DECAY RATE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to growth and decay rate
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect growth and decay rate to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of growth and decay rate
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning growth and decay rate
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about growth and decay rate

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
- Accurately solves problems involving growth and decay rate
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Growth and Decay Rate' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Compound Interest
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Compound Interest' AND grade_level_min = 9),
  'Compound Interest Topic Guide', 'Apply compound interest formula',
  'COMPOUND INTEREST - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to compound interest
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect compound interest to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of compound interest
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning compound interest
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about compound interest

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
- Accurately solves problems involving compound interest
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compound Interest' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Comparing Linear and Exponential
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Linear and Exponential' AND grade_level_min = 9),
  'Comparing Linear and Exponential Topic Guide', 'Distinguish linear from exponential',
  'COMPARING LINEAR AND EXPONENTIAL - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to comparing linear and exponential
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect comparing linear and exponential to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of comparing linear and exponential
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning comparing linear and exponential
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about comparing linear and exponential

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
- Accurately solves problems involving comparing linear and exponential
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Linear and Exponential' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Geometric Sequences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Geometric Sequences' AND grade_level_min = 9),
  'Geometric Sequences Topic Guide', 'Connect sequences to exponential functions',
  'GEOMETRIC SEQUENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to geometric sequences
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect geometric sequences to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of geometric sequences
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning geometric sequences
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about geometric sequences

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
- Accurately solves problems involving geometric sequences
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Geometric Sequences' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Exponential Models
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Models' AND grade_level_min = 9),
  'Exponential Models Topic Guide', 'Create and interpret exponential models',
  'EXPONENTIAL MODELS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to exponential models
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect exponential models to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of exponential models
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning exponential models
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about exponential models

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
- Accurately solves problems involving exponential models
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Models' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Simplifying Square Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simplifying Square Roots' AND grade_level_min = 9),
  'Simplifying Square Roots Topic Guide', 'Simplify radical expressions',
  'SIMPLIFYING SQUARE ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to simplifying square roots
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect simplifying square roots to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of simplifying square roots
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning simplifying square roots
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about simplifying square roots

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
- Accurately solves problems involving simplifying square roots
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simplifying Square Roots' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Simplifying Higher Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simplifying Higher Roots' AND grade_level_min = 9),
  'Simplifying Higher Roots Topic Guide', 'Simplify cube roots and beyond',
  'SIMPLIFYING HIGHER ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to simplifying higher roots
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect simplifying higher roots to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of simplifying higher roots
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning simplifying higher roots
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about simplifying higher roots

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
- Accurately solves problems involving simplifying higher roots
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simplifying Higher Roots' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Adding and Subtracting Radicals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding and Subtracting Radicals' AND grade_level_min = 9),
  'Adding and Subtracting Radicals Topic Guide', 'Combine like radicals',
  'ADDING AND SUBTRACTING RADICALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to adding and subtracting radicals
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect adding and subtracting radicals to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of adding and subtracting radicals
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning adding and subtracting radicals
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about adding and subtracting radicals

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
- Accurately solves problems involving adding and subtracting radicals
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding and Subtracting Radicals' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Multiplying Radicals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Radicals' AND grade_level_min = 9),
  'Multiplying Radicals Topic Guide', 'Multiply radical expressions',
  'MULTIPLYING RADICALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to multiplying radicals
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect multiplying radicals to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of multiplying radicals
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning multiplying radicals
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about multiplying radicals

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
- Accurately solves problems involving multiplying radicals
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Radicals' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Dividing Radicals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Radicals' AND grade_level_min = 9),
  'Dividing Radicals Topic Guide', 'Divide radical expressions',
  'DIVIDING RADICALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to dividing radicals
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect dividing radicals to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of dividing radicals
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning dividing radicals
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about dividing radicals

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
- Accurately solves problems involving dividing radicals
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Radicals' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 9
-- ============================================================================

-- Rationalizing Denominators
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rationalizing Denominators' AND grade_level_min = 9),
  'Rationalizing Denominators Topic Guide', 'Rationalize single and binomial denominators',
  'RATIONALIZING DENOMINATORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to rationalizing denominators
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect rationalizing denominators to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of rationalizing denominators
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning rationalizing denominators
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about rationalizing denominators

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
- Accurately solves problems involving rationalizing denominators
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rationalizing Denominators' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Solving Radical Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Radical Equations' AND grade_level_min = 9),
  'Solving Radical Equations Topic Guide', 'Solve equations with radicals',
  'SOLVING RADICAL EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving radical equations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving radical equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving radical equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving radical equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving radical equations

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
- Accurately solves problems involving solving radical equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Radical Equations' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Extraneous Solutions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Extraneous Solutions' AND grade_level_min = 9),
  'Extraneous Solutions Topic Guide', 'Identify extraneous solutions',
  'EXTRANEOUS SOLUTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to extraneous solutions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect extraneous solutions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of extraneous solutions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning extraneous solutions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about extraneous solutions

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
- Accurately solves problems involving extraneous solutions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Extraneous Solutions' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Radical Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Radical Functions' AND grade_level_min = 9),
  'Radical Functions Topic Guide', 'Graph and analyze radical functions',
  'RADICAL FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to radical functions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect radical functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of radical functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning radical functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about radical functions

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
- Accurately solves problems involving radical functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Radical Functions' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Measures of Center
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Measures of Center' AND grade_level_min = 9),
  'Measures of Center Topic Guide', 'Calculate mean, median, mode',
  'MEASURES OF CENTER - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to measures of center
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect measures of center to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of measures of center
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning measures of center
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about measures of center

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
- Accurately solves problems involving measures of center
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measures of Center' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Measures of Spread
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Measures of Spread' AND grade_level_min = 9),
  'Measures of Spread Topic Guide', 'Calculate range, IQR, standard deviation',
  'MEASURES OF SPREAD - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to measures of spread
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect measures of spread to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of measures of spread
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning measures of spread
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about measures of spread

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
- Accurately solves problems involving measures of spread
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measures of Spread' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Box Plots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Box Plots' AND grade_level_min = 9),
  'Box Plots Topic Guide', 'Create and interpret box-and-whisker plots',
  'BOX PLOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to box plots
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect box plots to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of box plots
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning box plots
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about box plots

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
- Accurately solves problems involving box plots
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Box Plots' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Histograms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Histograms' AND grade_level_min = 9),
  'Histograms Topic Guide', 'Create and interpret histograms',
  'HISTOGRAMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to histograms
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect histograms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of histograms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning histograms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about histograms

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
- Accurately solves problems involving histograms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Histograms' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Comparing Data Sets
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Data Sets' AND grade_level_min = 9),
  'Comparing Data Sets Topic Guide', 'Compare distributions',
  'COMPARING DATA SETS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to comparing data sets
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect comparing data sets to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of comparing data sets
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning comparing data sets
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about comparing data sets

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
- Accurately solves problems involving comparing data sets
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Data Sets' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Scatter Plots Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scatter Plots Review' AND grade_level_min = 9),
  'Scatter Plots Review Topic Guide', 'Create and interpret scatter plots',
  'SCATTER PLOTS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to scatter plots review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect scatter plots review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of scatter plots review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning scatter plots review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about scatter plots review

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
- Accurately solves problems involving scatter plots review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scatter Plots Review' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Linear Regression
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear Regression' AND grade_level_min = 9),
  'Linear Regression Topic Guide', 'Find and use line of best fit',
  'LINEAR REGRESSION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to linear regression
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect linear regression to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of linear regression
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning linear regression
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about linear regression

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
- Accurately solves problems involving linear regression
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear Regression' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Correlation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Correlation' AND grade_level_min = 9),
  'Correlation Topic Guide', 'Describe and interpret correlation',
  'CORRELATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to correlation
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect correlation to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of correlation
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning correlation
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about correlation

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
- Accurately solves problems involving correlation
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Correlation' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 10
-- ============================================================================

-- Residuals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Residuals' AND grade_level_min = 9),
  'Residuals Topic Guide', 'Calculate and interpret residuals',
  'RESIDUALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to residuals
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect residuals to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of residuals
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning residuals
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about residuals

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
- Accurately solves problems involving residuals
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Residuals' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Two-Way Frequency Tables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Two-Way Frequency Tables' AND grade_level_min = 9),
  'Two-Way Frequency Tables Topic Guide', 'Analyze categorical data',
  'TWO-WAY FREQUENCY TABLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 9 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to two-way frequency tables
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect two-way frequency tables to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of two-way frequency tables
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning two-way frequency tables
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about two-way frequency tables

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
- Accurately solves problems involving two-way frequency tables
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Two-Way Frequency Tables' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

